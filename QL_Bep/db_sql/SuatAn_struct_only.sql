USE [master]
GO
/****** Object:  Database [SuatAn]    Script Date: 28/10/2023 14:59:47 ******/
CREATE DATABASE [SuatAn]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SuatAn', FILENAME = N'C:\www\SuatAn\db\SuatAn.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SuatAn_log', FILENAME = N'C:\www\SuatAn\db\SuatAn_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SuatAn] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SuatAn].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SuatAn] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SuatAn] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SuatAn] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SuatAn] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SuatAn] SET ARITHABORT OFF 
GO
ALTER DATABASE [SuatAn] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SuatAn] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SuatAn] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SuatAn] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SuatAn] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SuatAn] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SuatAn] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SuatAn] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SuatAn] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SuatAn] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SuatAn] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SuatAn] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SuatAn] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SuatAn] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SuatAn] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SuatAn] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SuatAn] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SuatAn] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SuatAn] SET  MULTI_USER 
GO
ALTER DATABASE [SuatAn] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SuatAn] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SuatAn] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SuatAn] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SuatAn] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SuatAn]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_COUNT_SuatAn]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Đỗ Duy Cốp
-- Create date: 25.10.2023
-- Description:	Đếm số suất ăn
-- =============================================
CREATE FUNCTION [dbo].[FN_COUNT_SuatAn]
(
	@ngay date,
	@idCompany int,
	@ca int
)
RETURNS varchar(max)
AS
BEGIN
	
	DECLARE @kq varchar(max)=''

	if(@idCompany>0)
		select @kq+=FormatMessage('{"ca":%d,"id":%d,"sl":%d},',[idCa],[idSuat],[SL]) 
		from [Order] 
		where ([ngay]=@ngay)and([idCompany]=@idCompany)and([idCa]=@Ca)
		Order by [idSuat];
	else
		select @kq+=FormatMessage('{"ca":%d,"id":%d,"sl":%d},',[idCa],[idSuat],sum([SL])) 
		from [Order] 
		where ([ngay]=@ngay)and([idCa]=@Ca)
		group by [ngay],[idCa],[idSuat];


	if(@kq != '')
	  begin
		set @kq=left(@kq,len(@kq)-1);
	  end

	set @kq='['+@kq+']';
	
	RETURN @kq;

END

GO
/****** Object:  UserDefinedFunction [dbo].[fn_DateTime2Str]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		do duy cop
-- Create date: 21h18 01/01/2022
-- Description:	time format
-- -- 2022-12-30 12:34:56
--    12345678901234567890
-- =============================================
CREATE FUNCTION [dbo].[fn_DateTime2Str]
(
	@time datetime
)
RETURNS varchar(20)
AS
BEGIN	
	DECLARE @kq varchar(20);
	if(@time is null)
		select @kq='';
	else
		select @kq=convert(varchar,@time,120);
	return @kq;
END

GO
/****** Object:  UserDefinedFunction [dbo].[FN_GPS]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Do Duy Cop
-- Create date: 25.10.2023
-- Description:	GPS
-- =============================================
CREATE FUNCTION [dbo].[FN_GPS]
(
	@lat float, @lng float
)
RETURNS varchar(50)
AS
BEGIN
	
	DECLARE @kq varchar(50)='';

	if(@lat is null or @lng is null) 
		set @kq = '"lat":null,"lng":null';
	else
		set @kq = FORMATMESSAGE('"lat":%s,"lng":%s',str(@lat,10,10),str(@lng,10,10))
	
	RETURN @kq

END

GO
/****** Object:  Table [dbo].[Ca]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ca](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ca] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ChiTietNhap]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietNhap](
	[idNhap] [int] NOT NULL,
	[idNL] [int] NOT NULL,
	[Quantity] [float] NULL,
	[Price] [money] NULL,
 CONSTRAINT [PK_ChiTietNhap] PRIMARY KEY CLUSTERED 
(
	[idNhap] ASC,
	[idNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[address] [nvarchar](255) NOT NULL,
	[lat] [float] NULL,
	[lng] [float] NULL,
	[phone] [varchar](50) NULL,
	[del_at] [datetime] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cookie]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cookie](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [nvarchar](50) NULL,
	[cookie] [nvarchar](50) NULL,
	[time] [datetime] NULL,
 CONSTRAINT [PK_Cookie] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loai]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOG]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[input] [nvarchar](max) NULL,
	[output] [nvarchar](max) NULL,
	[time] [datetime] NULL CONSTRAINT [DF_LOG_time]  DEFAULT (getdate()),
 CONSTRAINT [PK_LOG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguyenLieu]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenLieu](
	[id] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Unit] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThucPham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nhap]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhap](
	[id] [int] NOT NULL,
	[Time] [datetime] NULL,
	[uid] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nhap] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NSD]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NSD](
	[uid] [nvarchar](17) NOT NULL,
	[pwd] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[role] [int] NOT NULL,
	[lastOnline] [datetime] NULL,
 CONSTRAINT [PK_NSD] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ngay] [date] NOT NULL,
	[idCompany] [int] NOT NULL,
	[idCa] [int] NOT NULL,
	[idSuat] [int] NOT NULL,
	[SL] [int] NOT NULL,
	[time] [datetime] NULL CONSTRAINT [DF_Order_time]  DEFAULT (getdate()),
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[id] [int] NOT NULL,
	[Quyen] [nvarchar](50) NULL,
	[Note] [nvarchar](50) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Setting]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[stt] [int] NOT NULL,
	[key] [nvarchar](50) NOT NULL,
	[value] [nvarchar](500) NULL,
	[note] [nvarchar](500) NULL,
	[time] [datetime] NULL CONSTRAINT [DF_Setting_time]  DEFAULT (getdate()),
	[active] [bit] NULL CONSTRAINT [DF_Setting_active]  DEFAULT ((1)),
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SuatAn]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuatAn](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NOT NULL,
	[sign] [nvarchar](50) NOT NULL,
	[price] [float] NOT NULL,
	[enable] [bit] NOT NULL CONSTRAINT [DF_SuatAn_Enable]  DEFAULT ((1)),
	[LastModify] [datetime] NOT NULL CONSTRAINT [DF_SuatAn_LastModify]  DEFAULT (getdate()),
	[del_at] [datetime] NULL,
 CONSTRAINT [PK_MonAn] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[NSD]  WITH CHECK ADD  CONSTRAINT [FK_NSD_Quyen] FOREIGN KEY([role])
REFERENCES [dbo].[Quyen] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[NSD] CHECK CONSTRAINT [FK_NSD_Quyen]
GO
/****** Object:  StoredProcedure [dbo].[SP_Auth]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Do Duy Cop
-- Create date: 28.10.2023
-- Description:	Check Auth
-- =============================================
CREATE PROCEDURE [dbo].[SP_Auth]
	@action nvarchar(50),
	@uid    nvarchar(50) = null,
	@cookie nvarchar(50) = null
AS
BEGIN
	declare @role int=null;
	select @role = [role]
	from [NSD]
	where [uid]=@uid;

	if(not(@role=3 or @role=100))
	begin
		raiserror(N'Bạn không có quyền!!!',16,1)
		return;
	end
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Company]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		do duy cop
-- Create date: 0:6 6/1/2023
-- Description:	lưu cấu hình
-- =============================================
CREATE PROCEDURE [dbo].[SP_Company]
	@action nvarchar(50) = 'list_company',

	@uid    nvarchar(50) = null,
	@cookie nvarchar(50) = null,

	@id			int = null,
	@name		nvarchar(255) = null,
	@address	nvarchar(255) = null,
	@lat		float=null,
	@lng		float=null,
	@phone		varchar(50)=null
AS
BEGIN
	declare @json nvarchar(max)='';	

	if(@action='edit_company')
	begin
		exec SP_Auth @uid,@cookie;

		if(len(@name)<1)
		begin
			raisError(N'Độ dài tên=%s là quá ngắn',16,1,@name)
			return;
		end

		if(len(@address)<1)
		begin
			raisError(N'Độ dài địa chỉ=%s là quá ngắn',16,1,@address)
			return;
		end

		select @name=REPLACE(@name,'"','\"')   ,@address=REPLACE(@address,'"','\"')   ,@phone=REPLACE(@phone,'"','\"');
		select @name=REPLACE(@name,char(10),''),@address=REPLACE(@address,char(10),''),@phone=REPLACE(@phone,char(10),'');
		select @name=REPLACE(@name,char(13),''),@address=REPLACE(@address,char(13),''),@phone=REPLACE(@phone,char(13),'');

		if(exists(select * from [Company] where [id]=@id))
			update [Company] set [name]=@name, [address]=@address,[lat]=@lat,[lng]=@lng,[phone]=@phone where [id]=@id;
		else
		begin
			raisError(N'Không có công ty %d',16,1,@id)
			return;
		end		
		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã sửa thành công!","id":%d,"name":"%s","address":"%s",%s,"phone":"%s"}',
						[id],[name],isnull([address],''),dbo.FN_GPS([lat],[lng]),[phone])
		from [Company]
		where [id]=@id;

		select @json as json;
	end	
	else if(@action='add_company')
	begin
		exec SP_Auth @uid,@cookie;

		if(len(@name)<1)
		begin
			raisError(N'Độ dài tên=%s là quá ngắn',16,1,@name)
			return;
		end

		if(len(@address)<1)
		begin
			raisError(N'Độ dài địa chỉ=%s là quá ngắn',16,1,@address)
			return;
		end

		select @name=REPLACE(@name,'"','\"')   ,@address=REPLACE(@address,'"','\"')   ,@phone=REPLACE(@phone,'"','\"');
		select @name=REPLACE(@name,char(10),''),@address=REPLACE(@address,char(10),''),@phone=REPLACE(@phone,char(10),'');
		select @name=REPLACE(@name,char(13),''),@address=REPLACE(@address,char(13),''),@phone=REPLACE(@phone,char(13),'');

		INSERT INTO [Company]([name],[address],[lat],[lng],[phone])
		VALUES (@name,@address,@lat,@lng,@phone);

		set @id=@@IDENTITY;

		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã thêm thành công công ty %s!","id":%d,"name":"%s","address":"%s",%s,"phone":"%s"}',
						[name],[id],[name],isnull([address],''),dbo.FN_GPS([lat],[lng]),[phone])
		from [Company]
		where id=@id;

		select @json as json;
	end	

	else
	if(@action='get_company')
	begin
		select @json=FORMATMESSAGE(N'{"ok":1,"id":%d,"name":"%s","address":"%s",%s,"phone":"%s"}',
						[id],[name],isnull([address],''),dbo.FN_GPS([lat],[lng]),[phone])
		from [Company]
		where [id]=@id;

		select @json as json;
	end
	else
	if(@action='delete_company')
	begin
		exec SP_Auth @uid,@cookie;

		if(@id<=21)
		begin
			select N'{"ok":0,"msg":"21 công ty này không xóa được nhé"}' as json
			return;
		end

		update company set del_at=getdate() where id=@id;

		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã xóa thành công công ty %s!","id":%d,"name":"%s","address":"%s",%s,"phone":"%s"}',
						[name],[id],[name],isnull([address],''),dbo.FN_GPS([lat],[lng]),[phone])
		from [Company]
		where id=@id;

		select @json as json;
	end
	if(@action='list_company')
	begin
		select @json+=FORMATMESSAGE(N'{"id":%d,"name":"%s","address":"%s",%s,"phone":"%s"},',
						[id],[name],isnull([address],''),dbo.FN_GPS([lat],[lng]),[phone])
		from [Company]
		where del_at is null
		order by [id];

		
		if((@json is null)or(@json=''))
			select N'{"ok":0,"msg":"không có dữ liệu","data":[]}' as json;
		else
		  begin
			select @json=REPLACE(@json,'(null)','null')
			select N'{"ok":1,"msg":"ok","data":['+left(@json,len(@json)-1)+']}' as json;
		  end
	end
END

GO
/****** Object:  StoredProcedure [dbo].[SP_COOKIE]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Đỗ Duy Cốp
-- Create date: 23.09.2021
-- Description:	tạo cookie để auto login
-- =============================================
CREATE PROCEDURE [dbo].[SP_COOKIE] 
	@action nvarchar(50),
	@uid nvarchar(50)=null,
	@cookie nvarchar(50)=null,
	@ok bit = null output 
AS
BEGIN
	declare @json nvarchar(max)='{"ok":0}'
	declare @fullname nvarchar(50)=null,@role int=null,@roleName nvarchar(50)=null;

	if(@action='INSERT')
	begin		
		insert into Cookie(uid,cookie,time)values(@uid,@cookie,getdate());				
	end
	else if(@action='GET_ROLE')
	begin
		SELECT @OK=COUNT(*) FROM Cookie Where uid=@uid and cookie=@cookie and DATEDIFF(dd, time, GETDATE()) <= 30;
		if(@ok=1)
		  begin
			select role
			from NSD
			where uid=@uid;
		  end
		else 
		  select 0 as role;
	end
	else if(@action='CHECK')
	begin
		SELECT @OK=COUNT(*) FROM Cookie Where uid=@uid and cookie=@cookie and DATEDIFF(dd, time, GETDATE()) <= 30;
		if(@ok=1)
		  begin
		    update NSD set [lastOnline]=getdate() where uid=@uid;
			select @fullname=name , @role = NSD.role, @roleName = Quyen.Quyen
			from NSD inner join Quyen on NSD.role=Quyen.id
			where uid=@uid;

			select @fullname = name from nsd where uid=@uid;
			
			insert into Log([input],[output])values('CHECK LOGIN OK',FORMATMESSAGE(N'%s=%s => %s',@uid,@fullname,@roleName));

		    select @json=FORMATMESSAGE(N'{"ok":1,"uid":"%s","fullname":"%s","role":%d,"rolename":"%s", "cookie":"%s"}',@uid,@fullname,@role,@roleName,@cookie);			
		  end
		select @json as json;
	end
	else if(@action='DELETE')
	begin
		delete from Cookie where uid=@uid and cookie=@cookie;		
		select @json='{"ok":1}'; --xóa thì luôn thành công
		select @json as json;
	end
	else if(@action='DELETE_AUTO')
	begin
		delete from Cookie where DATEDIFF(dd, time, GETDATE()) > 30;		
	end

END



GO
/****** Object:  StoredProcedure [dbo].[SP_LOG]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		do duy cop
-- Create date: 27.07.2022
-- Description:	save log
-- =============================================
CREATE PROCEDURE [dbo].[SP_LOG]
	@input nvarchar(max),
	@output nvarchar(max)
AS
BEGIN
	insert into log([input],[output])values(@input,@output);
END




GO
/****** Object:  StoredProcedure [dbo].[SP_LOGIN]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Do Duy Cop
-- Create date: 17.09.2021
-- Description:	SP check login
-- =============================================
CREATE PROCEDURE [dbo].[SP_LOGIN]
    @action nvarchar(50)='do_login',
	@uid nvarchar(50)=null,
	@pwd nvarchar(50)=null,
	@pwd2 nvarchar(50)=null
AS
BEGIN
	declare @fullname nvarchar(50)=null,@role int=null,@roleName nvarchar(50)=null, @randomString varchar(255);

	select @fullname=name , @role = NSD.role, @roleName = Quyen.Quyen
	from NSD inner join Quyen on NSD.role=Quyen.id
	where uid=@uid and HashBytes('SHA1',uid+'@'+pwd)=HashBytes('SHA1',uid+'@'+@pwd);

	if(@fullname is not null and @role is not null and @roleName is not null)
	begin
		if(@action='do_login')
		begin
			SELECT @randomString = CONVERT(varchar(255), NEWID())
			exec  SP_COOKIE 'INSERT',@uid,@randomString
			insert into Log([input],[output])values('LOGIN OK',FORMATMESSAGE(N'%s=%s => %s',@uid,@fullname,@roleName));
			select FORMATMESSAGE(N'{"ok":1,"uid":"%s","fullname":"%s","role":%d,"rolename":"%s", "cookie":"%s"}',@uid,@fullname,@role,@roleName,@randomString)
		end 
		else if(@action='do_change_pw')
		begin
			update [NSD] set pwd=@pwd2
			where uid=@uid and HashBytes('SHA1',uid+'@'+pwd)=HashBytes('SHA1',uid+'@'+@pwd);
			
			delete from Cookie where uid=@uid;

			SELECT @randomString = CONVERT(varchar(255), NEWID())
			exec  SP_COOKIE 'INSERT',@uid,@randomString

			select FORMATMESSAGE(N'{"ok":1,"msg":"Đã đổi mật khẩu thành công","uid":"%s","fullname":"%s","role":%d,"rolename":"%s", "cookie":"%s"}',@uid,@fullname,@role,@roleName,@randomString)
		end
	end
	else
	begin
		insert into Log([input],[output])values('LOGIN ERROR',FORMATMESSAGE(N'UID=%s PWD=%s',@uid,@pwd));
		select N'{"ok":0,"msg":"Thông tin sai rồi!","fullname":"","role":0,"rolename":""}'
	end
END



GO
/****** Object:  StoredProcedure [dbo].[SP_NSD]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Đỗ Duy Cốp
-- Create date: 06/01/2023
-- Description:	quản lý người dùng
-- =============================================
CREATE PROCEDURE [dbo].[SP_NSD] 
	@action nvarchar(50),
	@uid nvarchar(50)=null,
	@cookie nvarchar(50)=null,

	@adduid nvarchar(50)=null,
	@pw nvarchar(50)=null,
	@name nvarchar(50)=null,
	@loai int=null,

	@edit_uid nvarchar(50)=null,
	@edit_pwd nvarchar(50)=null,

	@deluid nvarchar(50)=null  --dành cho việc xoá
AS
BEGIN
	declare @json nvarchar(max)=''
	declare @ok bit = null;
	SELECT @OK=COUNT(*) FROM Cookie Where uid=@uid and cookie=@cookie and DATEDIFF(dd, time, GETDATE()) <= 30;
	if(@ok=0)
	begin
		select N'{"ok":0,"msg":"Hãy login lại!"}' as json
	end
	else
	begin
		declare @fullname nvarchar(50)=null,@roleName nvarchar(50)=null,@role int=null;
		select @fullname=name , @role = NSD.role, @roleName = Quyen.Quyen
		from NSD inner join Quyen on NSD.role=Quyen.id
		where uid=@uid;

		if(@role is null or @role<3)
		begin
			select N'{"ok":0,"msg":"Bạn không có quyền"}' as json
			return;
		end
		else		
		if(@action='list_user')
		begin
			declare @quyen nvarchar(max)='';
			select @quyen += FORMATMESSAGE(N'{"role":%d,"rolename":"%s => %s"},',id,Quyen,Note)
			from Quyen 
			where id < @role
			order by id;

			select @json += FORMATMESSAGE(N'{"uid":"%s","fullname":"%s","role":%d,"rolename":"%s","last":"%s"},',uid,name,NSD.role,Quyen.Quyen,convert(varchar,lastOnline,120))
			from NSD inner join Quyen on NSD.role=Quyen.id 
			where NSD.role < (@role) or (NSD.role = @role);

			if(@json='')
				set @json=N'{"ok":0,"msg":"Không có dữ liệu","data":[],"quyen":['+left(@quyen,len(@quyen)-1)+']}';
			else
				set @json=N'{"ok":1,"msg":"ok","data":['+left(@json,len(@json)-1)+'],"quyen":['+left(@quyen,len(@quyen)-1)+']}';

			select @json as json;
			return;
		end
		else if(@action='add_user')
		begin
			--check trùng 
			if(exists(select * from NSD where [uid]=@adduid))
			begin
				set @json=N'{"ok":0,"msg":"Trùng uid. Hãy chọn uid khác!"}';
			end
			else
			begin
				if(@loai=100)
				begin
					set @json=N'{"ok":0,"msg":"Đừng hack!"}';
				end
				else
				begin

					if(len(@adduid)<3)
					begin
						RaisError(N'UID "%s" ngắn quá bạn ơi',16,1,@adduid);
						return;
					end

					if(len(@pw)<6)
					begin
						RaisError(N'Mật khẩu ngắn quá bạn ơi',16,1);
						return;
					end

					if(len(@name)<3)
					begin
						RaisError(N'Tên "%s" ngắn quá bạn ơi',16,1,@name);
						return;
					end

					SET NOCOUNT off ;
					insert into NSD([uid],[pwd],[name],[role])values(@adduid,@pw,@name,@loai);				

					declare @dem_add int;
					SELECT @dem_add = @@ROWCOUNT
					if(@dem_add=1)
						set @json=N'{"ok":1,"msg":"OK đã thêm user thành công"}';
					else
						set @json=N'{"ok":0,"msg":"Chưa thêm được, có gì đó sai sai"}';			
				end
			end
			select @json as json;
			return;
		end
		else if(@action='set_pw')
		begin
			if(len(@edit_pwd)<6)
			begin
				RaisError(N'Mật khẩu ngắn quá bạn ơi',16,1);
				return;
			end
			SET NOCOUNT OFF;
			update nsd set pwd=@edit_pwd where uid=@edit_uid and [role]!=100 and role<@role;
			declare @dem_set int;
			SELECT @dem_set = @@ROWCOUNT
			if(@dem_set=1)
				set @json=FORMATMESSAGE(N'{"ok":1,"msg":"OK đã set pw mới thành công cho uid %s"}',@edit_uid);			
			else
				set @json=N'{"ok":0,"msg":"Cấp trên mới set được pw cho cấp dưới"}';
			select @json as json;
		end
		else if(@action='delete_user')
		begin				
			SET NOCOUNT off ; -- bật chế độ đếm
			delete from NSD where [uid]=@deluid and [role]!=100 and role<=@role;
			declare @dem_xoa int;
			SELECT @dem_xoa = @@ROWCOUNT
			if(@dem_xoa=1)
				set @json=N'{"ok":1,"msg":"OK đã xoá user thành công"}';			
			else
				set @json=N'{"ok":0,"msg":"Liên hệ Admin để xóa nhé"}';
			select @json as json;
			return;
		end
	end

	

END



GO
/****** Object:  StoredProcedure [dbo].[SP_Report]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		do duy cop
-- Create date: 0:6 6/1/2023
-- Description:	lưu cấu hình
-- =============================================
CREATE PROCEDURE [dbo].[SP_Report]
	@action nvarchar(50) = 'monitor'
AS
BEGIN
	declare @json nvarchar(max)='';
	
	if(@action='monitor')
	begin
		declare @today date = getdate();
		select @json+=FORMATMESSAGE(N'{"id":%d,"name":"%s","address":"%s",%s,"phone":"%s","c1":%s,"c2":%s,"c3":%s,"c4":%s},',
						[id],[name],isnull([address],''),dbo.FN_GPS([lat],[lng]),[phone],
						dbo.FN_COUNT_SuatAn(@today,[id],1),
						dbo.FN_COUNT_SuatAn(@today,[id],2),
						dbo.FN_COUNT_SuatAn(@today,[id],3),
						dbo.FN_COUNT_SuatAn(@today,[id],4)
						)
		from [Company]
		where del_at is null
		order by [id];

		declare @tong nvarchar(max)='';
		select @tong=FORMATMESSAGE(N'{"id":0,"name":"Tổng:","c1":%s,"c2":%s,"c3":%s,"c4":%s},',						
						dbo.FN_COUNT_SuatAn(@today,0,1),
						dbo.FN_COUNT_SuatAn(@today,0,2),
						dbo.FN_COUNT_SuatAn(@today,0,3),
						dbo.FN_COUNT_SuatAn(@today,0,4)
						);
		
		if((@json is null)or(@json=''))
			select N'{"ok":0,"msg":"không có dữ liệu","data":[]}' as json;
		else
		  begin
			set @json=@json+@tong;
			--set @json=@tong+@json+@tong;
			if(@json!='')set @json=left(@json,len(@json)-1)

			declare @suat Nvarchar(max)='';
			select @suat += FORMATMESSAGE(N'{"id":%d,"sign":"%s","name":"%s","price":%s},',[id],[sign],[name],cast(isnull([price],0) as varchar))
			from SuatAn
			where ([del_at] is null)and([enable]=1)
			order by [id];

			if(@suat <> '') set @suat='['+left(@suat,len(@suat)-1)+']'; else set @suat='null';

			select @json=REPLACE(@json,'(null)','null')
			select N'{"ok":1,"msg":"ok","ngay":"'+convert(varchar,@today,120)+'","suat":'+@suat+',"data":['+@json+']}' as json;
		  end
	end
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Setting]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		do duy cop
-- Create date: 0:6 6/1/2023
-- Description:	lưu cấu hình
-- =============================================
CREATE PROCEDURE [dbo].[SP_Setting]
	@action nvarchar(50) = 'list_setting',

	@uid    nvarchar(50) = null,
	@cookie nvarchar(50) = null,

	@key    nvarchar(50) = null,
	@value  nvarchar(500)= null,
	@note   nvarchar(500)= null,
	@search nvarchar(50) = '%'
AS
BEGIN
	declare @json nvarchar(max)='';

	if(@action='edit_setting')
	begin
		exec SP_Auth @uid,@cookie;

		select @value = REPLACE(@value,'"','\"'),@note= REPLACE(@note,'"','\"');
		select @value = REPLACE(@value,char(13),''),@note= REPLACE(@note,char(13),'');
		select @value = REPLACE(@value,char(10),''),@note= REPLACE(@note,char(10),'');

		if(exists(select * from [Setting] where [key]=@key))
			update [Setting] set [value]=@value, [time]=getdate() where [key]=@key;
		else
			insert into [Setting]([key],[value])values(@key,@value);
		
		select @json=FORMATMESSAGE(N'{"ok":1,"key":"%s","value":"%s","note":"%s","time":"%s","msg":"Đã cập nhật <b>%s</b>:<br>%s"}',
						[key],[value],[note],dbo.fn_DateTime2Str([time]),[key],[value])
		from [Setting]
		where [key]=@key;

		select @json as json;
	end	
	else
	if(@action='get_setting')
	begin
		select @json=FORMATMESSAGE(N'{"key":"%s","value":"%s","note":"%s","time":"%s"}',[key],[value],[note],dbo.fn_DateTime2Str([time]))
		from [Setting]
		where [key]=@key;

		select @json as json;
	end
	else
	if(@action='list_setting')
	begin
		select @json+=FORMATMESSAGE(N'{"stt":%d,"key":"%s","value":"%s","note":"%s","time":"%s"},',[stt],[key],[value],[note],dbo.fn_DateTime2Str([time]))
		from [Setting]
		where ([key] like @search)
		order by [stt];
		
		if((@json is null)or(@json=''))
			select N'{"ok":1,"data":[]}' as json;
		else
			select N'{"ok":1,"data":['+left(@json,len(@json)-1)+']}' as json;
	end
END

GO
/****** Object:  StoredProcedure [dbo].[SP_SuatAn]    Script Date: 28/10/2023 14:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Do Duy Cop
-- Create date: 28.10.2023
-- Description:	quan ly suat an
-- =============================================
CREATE PROCEDURE [dbo].[SP_SuatAn]
	@action nvarchar(50)='list_suat_an',
	@uid    nvarchar(50) = null,
	@cookie nvarchar(50) = null,

	@id		int=null,
	@name	nvarchar(1000)=null,
	@sign	nvarchar(50)=null,
	@price	money=null,

	@id_company int=null,
	@id_ca		int=null,
	@id_suat	int=null,
	@so_luong	int=null
AS
BEGIN
	declare @json nvarchar(max)='', @today date=getdate();
	if(@action='list_suat_an')
	begin
		select @json+=FORMATMESSAGE(N'{"id":%d,"name":"%s","sign":"%s","price":%s,"enable":%d},',[id],[name],[sign],cast(price as varchar),cast([enable] as int))
		from [SuatAn]
		where [del_at] is null
		order by [id];

		if((@json is null)or(@json=''))
			select N'{"ok":0,"msg":"không có dữ liệu","data":[]}' as json;
		else
		begin
			select @json=REPLACE(@json,'(null)','null')
			select N'{"ok":1,"msg":"ok","data":['+left(@json,len(@json)-1)+']}' as json;
		end;
	end
	else if(@action='add_suat_an')
	begin
		exec SP_Auth @uid,@cookie;
		insert into SuatAn([name],[sign],[price])values(@name,@sign,@price);
		select N'{"ok":1,"msg":"Đã thêm thành công"}' as json;
	end
	else if(@action='enable_suat_an')
	begin
		exec SP_Auth @uid,@cookie;
		update [SuatAn] set [enable]=1, [name]=@name,[sign]=@sign,[price]=@price,[LastModify]=getdate() where [id]=@id;
		select N'{"ok":1,"msg":"Đã enable thành công"}' as json;
	end
	else if(@action='disable_suat_an')
	begin
		exec SP_Auth @uid,@cookie;
		update [SuatAn] set [enable]=0, [name]=@name,[sign]=@sign,[price]=@price,[LastModify]=getdate() where [id]=@id;
		select N'{"ok":1,"msg":"Đã disable thành công"}' as json;
	end
	else if(@action='delete_suat_an')
	begin
		exec SP_Auth @uid,@cookie;
		update [SuatAn] set del_at=getdate() where [id]=@id;
		select N'{"ok":1,"msg":"Đã delete thành công"}' as json;
	end
	else if(@action='dem_suat_an')
	begin
		--exec SP_Auth @uid,@cookie;
		declare @dem int = 0;
		select @dem = SL
		from [Order]
		where ([idCompany]=@id_company)and([idCa]=@id_ca)and(idSuat=@id_suat)and([ngay]=@today);
		if(@dem is null)set @dem=0;
		select FORMATMESSAGE(N'{"ok":1,"msg":"ok","soluong":%d}',@dem) as json;
	end
	else if(@action='add_order')
	begin
		exec SP_Auth @uid,@cookie;
		if(exists(select * from [Order] where ([idCompany]=@id_company)and([idCa]=@id_ca)and(idSuat=@id_suat)and([ngay]=@today)))
		begin
			update [Order] set SL=@so_luong where ([idCompany]=@id_company)and([idCa]=@id_ca)and(idSuat=@id_suat)and([ngay]=@today)
			select FORMATMESSAGE(N'{"ok":1,"msg":"Cập nhật số lượng thành công","soluong":%d}',@so_luong) as json;
		end
		else
		begin
			insert into [Order]([ngay],[idCompany],[idCa],[idSuat],[SL])values(@today,@id_company,@id_ca,@id_suat,@so_luong);
			select FORMATMESSAGE(N'{"ok":1,"msg":"Thêm mới số lượng thành công","soluong":%d}',@so_luong) as json;
		end	
	end
END

GO
USE [master]
GO
ALTER DATABASE [SuatAn] SET  READ_WRITE 
GO
