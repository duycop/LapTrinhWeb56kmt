USE [HotBath]
GO
/****** Object:  Trigger [TG_Phong_Tam]    Script Date: 22/10/2023 02:59:11 ******/
DROP TRIGGER [dbo].[TG_Phong_Tam]
GO
/****** Object:  StoredProcedure [dbo].[SP_Setting]    Script Date: 22/10/2023 02:59:11 ******/
DROP PROCEDURE [dbo].[SP_Setting]
GO
/****** Object:  StoredProcedure [dbo].[SP_Phong]    Script Date: 22/10/2023 02:59:11 ******/
DROP PROCEDURE [dbo].[SP_Phong]
GO
/****** Object:  StoredProcedure [dbo].[SP_NSD]    Script Date: 22/10/2023 02:59:11 ******/
DROP PROCEDURE [dbo].[SP_NSD]
GO
/****** Object:  StoredProcedure [dbo].[SP_LOGIN]    Script Date: 22/10/2023 02:59:11 ******/
DROP PROCEDURE [dbo].[SP_LOGIN]
GO
/****** Object:  StoredProcedure [dbo].[SP_LOG]    Script Date: 22/10/2023 02:59:11 ******/
DROP PROCEDURE [dbo].[SP_LOG]
GO
/****** Object:  StoredProcedure [dbo].[SP_COOKIE]    Script Date: 22/10/2023 02:59:11 ******/
DROP PROCEDURE [dbo].[SP_COOKIE]
GO
ALTER TABLE [dbo].[Tam] DROP CONSTRAINT [FK_Tam_Phong]
GO
ALTER TABLE [dbo].[NSD] DROP CONSTRAINT [FK_NSD_Quyen]
GO
/****** Object:  Table [dbo].[Tam]    Script Date: 22/10/2023 02:59:11 ******/
DROP TABLE [dbo].[Tam]
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 22/10/2023 02:59:11 ******/
DROP TABLE [dbo].[Setting]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 22/10/2023 02:59:11 ******/
DROP TABLE [dbo].[Quyen]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 22/10/2023 02:59:11 ******/
DROP TABLE [dbo].[Phong]
GO
/****** Object:  Table [dbo].[NSD]    Script Date: 22/10/2023 02:59:11 ******/
DROP TABLE [dbo].[NSD]
GO
/****** Object:  Table [dbo].[LOG]    Script Date: 22/10/2023 02:59:11 ******/
DROP TABLE [dbo].[LOG]
GO
/****** Object:  Table [dbo].[Cookie]    Script Date: 22/10/2023 02:59:11 ******/
DROP TABLE [dbo].[Cookie]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_ss]    Script Date: 22/10/2023 02:59:11 ******/
DROP FUNCTION [dbo].[fn_ss]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_DateTime2Str]    Script Date: 22/10/2023 02:59:11 ******/
DROP FUNCTION [dbo].[fn_DateTime2Str]
GO
USE [master]
GO
/****** Object:  Database [HotBath]    Script Date: 22/10/2023 02:59:11 ******/
DROP DATABASE [HotBath]
GO
/****** Object:  Database [HotBath]    Script Date: 22/10/2023 02:59:11 ******/
CREATE DATABASE [HotBath]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HotBath', FILENAME = N'C:\www\HotBath\db\HotBath.mdf' , SIZE = 43008KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HotBath_log', FILENAME = N'C:\www\HotBath\db\HotBath_log.ldf' , SIZE = 5184KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HotBath] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotBath].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotBath] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HotBath] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HotBath] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HotBath] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HotBath] SET ARITHABORT OFF 
GO
ALTER DATABASE [HotBath] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HotBath] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HotBath] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HotBath] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HotBath] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HotBath] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HotBath] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HotBath] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HotBath] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HotBath] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HotBath] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HotBath] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HotBath] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HotBath] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HotBath] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HotBath] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HotBath] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HotBath] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HotBath] SET  MULTI_USER 
GO
ALTER DATABASE [HotBath] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HotBath] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HotBath] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HotBath] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HotBath] SET DELAYED_DURABILITY = DISABLED 
GO
USE [HotBath]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_DateTime2Str]    Script Date: 22/10/2023 02:59:11 ******/
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
/****** Object:  UserDefinedFunction [dbo].[fn_ss]    Script Date: 22/10/2023 02:59:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Do Duy Cop
-- Create date: 15.10.2023
-- Description:	calc ss
-- =============================================
CREATE FUNCTION [dbo].[fn_ss]
(
	@trangthai int, @pid int
)
RETURNS int
AS
BEGIN
	
	DECLARE @ss int=0;

	if (@trangthai=1) 
		SELECT TOP (1) @ss=isnull(datediff(second,time_begin,getdate()),-1) 
		FROM TAM 
		WHERE PID=@pid 
		ORDER BY ID DESC;
	
	RETURN @ss;
END

GO
/****** Object:  Table [dbo].[Cookie]    Script Date: 22/10/2023 02:59:12 ******/
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
/****** Object:  Table [dbo].[LOG]    Script Date: 22/10/2023 02:59:12 ******/
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
/****** Object:  Table [dbo].[NSD]    Script Date: 22/10/2023 02:59:12 ******/
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
/****** Object:  Table [dbo].[Phong]    Script Date: 22/10/2023 02:59:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[id] [int] NOT NULL,
	[loai] [int] NOT NULL,
	[trangthai] [int] NOT NULL,
 CONSTRAINT [PK_Phong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 22/10/2023 02:59:12 ******/
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
/****** Object:  Table [dbo].[Setting]    Script Date: 22/10/2023 02:59:12 ******/
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
/****** Object:  Table [dbo].[Tam]    Script Date: 22/10/2023 02:59:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tam](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NOT NULL,
	[time_begin] [datetime] NOT NULL CONSTRAINT [DF_Tam_time_begin]  DEFAULT (getdate()),
	[time_end] [datetime] NULL,
	[huy] [bit] NOT NULL CONSTRAINT [DF_Tam_huy]  DEFAULT ((0)),
 CONSTRAINT [PK_Tam] PRIMARY KEY CLUSTERED 
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
ALTER TABLE [dbo].[Tam]  WITH CHECK ADD  CONSTRAINT [FK_Tam_Phong] FOREIGN KEY([pid])
REFERENCES [dbo].[Phong] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Tam] CHECK CONSTRAINT [FK_Tam_Phong]
GO
/****** Object:  StoredProcedure [dbo].[SP_COOKIE]    Script Date: 22/10/2023 02:59:12 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LOG]    Script Date: 22/10/2023 02:59:12 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LOGIN]    Script Date: 22/10/2023 02:59:12 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_NSD]    Script Date: 22/10/2023 02:59:12 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Phong]    Script Date: 22/10/2023 02:59:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Do Duy Cop
-- Create date: 15.101.2023
-- Description:	Lấy dữ liệu cho việc monitor
-- =============================================
CREATE PROCEDURE [dbo].[SP_Phong]
	@action varchar(50)='monitor',
	@id int=null,
	@date date=null
AS
BEGIN
	declare @time_now datetime=getdate(),@json varchar(max);
	if(@action='monitor')
	begin	
		set @json ='{"ok":1,"msg":"ok","data":[';

		select @json+=FORMATMESSAGE('{"id":%d,"loai":%d,"tt":%d,"ss":%d},',p.[id],p.[loai],p.[trangthai],dbo.fn_ss(p.trangthai,p.id))
		from [Phong] p 
		order by p.loai desc,p.id;

		if(right(@json,1)=',')select @json=left(@json,len(@json)-1)
		select @json+=']}';

		select @json as json;
	end
	else if(@action='thong_ke')
	begin	
		declare @dem int, @huy int, @today date=getdate();
		declare @dd int=day(@today);
		set @today=dateadd(day,1-@dd,@today);
		set @json ='{"ok":1,"msg":"report","data":[';
		while(@dd>0)
		begin
			select @dem=count(*) from [Tam] where [huy]=0 and CONVERT(date,time_begin)=@today;
			select @huy=count(*) from [Tam] where [huy]=1 and CONVERT(date,time_begin)=@today;
			if(@dem>0 or @huy>0)
				select @json+=FORMATMESSAGE('{"date":"%s","tam":%d,"huy":%d},',convert(varchar,@today,120),@dem,@huy);
			select @today=dateadd(day,1,@today), @dd=@dd-1;
		end
		if(right(@json,1)=',')select @json=left(@json,len(@json)-1)
		select @json+=']}';
		select @json as [json];
	end
	else if(@action='vao_tam')
	begin	
		set @json = '{"ok":1,"msg":"set trang thai = 1"}';
		update [Phong] set [trangthai]=1 where [id]=@id;
		select @json as [json];
	end
	else if(@action='tam_xong')
	begin	
		set @json = '{"ok":1,"msg":"set trang thai = 0"}';
		update [Phong] set [trangthai]=0 where [id]=@id;
		select @json as [json];
	end
	else if(@action='huy_phong')
	begin	
		set @json = '{"ok":1,"msg":"huy phong"}';
		declare @tid int;
		SELECT TOP (1) @tid=[id]
		FROM [Tam]
		WHERE [pid]=@id and [time_end] is null and [huy]=0
		ORDER BY [id] DESC;
		update [Tam] set [huy]=1,[time_end]=getdate() where id=@tid;
		update [Phong] set trangthai=0 where id=@id;
		select @json as [json];
	end
	else if(@action='report_detail')
	begin	
		set @json = '{"ok":1,"msg":"liet ke chi tiet","data":[';
		select @json+=FORMATMESSAGE('{"id":%d,"pid":%d,"loai":%d,"huy":%d,"tin":"%s","tout":"%s","use":%d},',T.id,pid,P.loai,case when huy=1 then 1 else 0 end,convert(varchar,time_begin,120),convert(varchar,time_end,120),isnull(DATEDIFF(minute,time_begin,isnull(time_end,getdate())),0)) 
		from [Tam] T join [Phong] P on T.pid=P.id
		where CONVERT(date,time_begin)=@date;

		if(right(@json,1)=',')select @json=left(@json,len(@json)-1)
		select @json+=']}';
		select @json as [json];
	end
END


GO
/****** Object:  StoredProcedure [dbo].[SP_Setting]    Script Date: 22/10/2023 02:59:12 ******/
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

		declare @fullname nvarchar(50)=null,@roleName nvarchar(50)=null,@role int=null;
		select @fullname=name , @role = NSD.role, @roleName = Quyen.Quyen
		from NSD inner join Quyen on NSD.role=Quyen.id
		where uid=@uid;

		if(not(@role=3 or @role=100))
		begin
			select N'{"ok":0,"msg":"Bạn không có quyền!!!"}' as json
			return;
		end

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
/****** Object:  Trigger [dbo].[TG_Phong_Tam]    Script Date: 22/10/2023 02:59:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		do duy cop
-- Create date: 9.oct.2023
-- Description:	auto change time to NOW when change status
-- =============================================
CREATE TRIGGER [dbo].[TG_Phong_Tam]
   ON  [dbo].[Phong]
   AFTER Update
AS 
BEGIN	
	SET NOCOUNT ON;

	insert into [Tam]([pid]) 
	select A.id from INSERTED A join DELETED B on A.id=B.id where A.trangthai=1 and B.trangthai=0;

	update [Tam] set time_end=getdate() 
	where [huy]=0 
	  and [pid] in (select A.id from INSERTED A join DELETED B on A.id=B.id where A.trangthai=0 and B.trangthai=1);
END

GO
USE [master]
GO
ALTER DATABASE [HotBath] SET  READ_WRITE 
GO
