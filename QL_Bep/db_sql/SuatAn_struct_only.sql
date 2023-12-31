USE [master]
GO
/****** Object:  Database [XuatAn]    Script Date: 11/18/2023 10:53:20 PM ******/
CREATE DATABASE [XuatAn]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'XuatAn', FILENAME = N'C:\www\XuatAn\db\XuatAn.mdf' , SIZE = 6848KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'XuatAn_log', FILENAME = N'C:\www\XuatAn\db\XuatAn_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [XuatAn] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [XuatAn].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [XuatAn] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [XuatAn] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [XuatAn] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [XuatAn] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [XuatAn] SET ARITHABORT OFF 
GO
ALTER DATABASE [XuatAn] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [XuatAn] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [XuatAn] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [XuatAn] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [XuatAn] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [XuatAn] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [XuatAn] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [XuatAn] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [XuatAn] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [XuatAn] SET  DISABLE_BROKER 
GO
ALTER DATABASE [XuatAn] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [XuatAn] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [XuatAn] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [XuatAn] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [XuatAn] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [XuatAn] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [XuatAn] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [XuatAn] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [XuatAn] SET  MULTI_USER 
GO
ALTER DATABASE [XuatAn] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [XuatAn] SET DB_CHAINING OFF 
GO
ALTER DATABASE [XuatAn] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [XuatAn] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [XuatAn] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [XuatAn] SET QUERY_STORE = OFF
GO
USE [XuatAn]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [XuatAn]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_Combo]    Script Date: 11/18/2023 10:53:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		do duy cop
-- Create date: 03-11-2023
-- Description:	gen json combo
-- =============================================
CREATE FUNCTION [dbo].[FN_Combo]
(
	@ids int
)
RETURNS Nvarchar(max)
AS
BEGIN
	declare @json nvarchar(max)='';

	select @json+=FORMATMESSAGE(N'{"id":%d,"name":"%s","des":"%s","sl":%d},',D.[id],D.[name],D.[des],C.[sl])
	from [Combo] C inner join [DonNguyen] D on C.[idn]=D.[id]
	where C.[ids]=@ids
	order by D.[id];

	if((@json is null)or(@json=''))
		set @json='[]';
	else
	begin		
		set @json='['+left(@json,len(@json)-1)+']';
	end;
	return @json;
END
GO
/****** Object:  UserDefinedFunction [dbo].[FN_Combo_KV]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		do duy cop
-- Create date: 03-11-2023
-- Description:	gen json combo
-- =============================================
CREATE FUNCTION [dbo].[FN_Combo_KV]
(
	@ids int
)
RETURNS Nvarchar(max)
AS
BEGIN
	declare @json nvarchar(max)='';

	select @json+=FORMATMESSAGE(N'"%d":{"id":%d,"name":"%s","des":"%s","sl":%d},',D.[id],D.[id],D.[name],D.[des],C.[sl])
	from [Combo] C inner join [DonNguyen] D on C.[idn]=D.[id]
	where C.[ids]=@ids
	order by D.[id];

	if((@json is null)or(@json=''))
		set @json=N'null';
	else
	begin		
		set @json=N'{'+left(@json,len(@json)-1)+N'}';
	end;
	return @json;
END
GO
/****** Object:  UserDefinedFunction [dbo].[FN_COUNT_ORDER]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		do duy cop
-- Create date: 15.11.2023
-- Description:	Dem so lan edit Order
-- =============================================
CREATE FUNCTION [dbo].[FN_COUNT_ORDER]
(
	@ngay date,
	@idCompany int,
	@ca int
)
RETURNS int
AS
BEGIN	
	DECLARE @Dem int=0;
	
	SELECT @Dem = [Dem]
	from [DemOrder] 
	where [idCompany]=@idCompany and [idCa]=@ca and [ngay]=@ngay;

	if(@Dem is null) set @Dem=0;

	RETURN @Dem;
END
GO
/****** Object:  UserDefinedFunction [dbo].[FN_COUNT_SuatAn]    Script Date: 11/18/2023 10:53:21 PM ******/
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
RETURNS nvarchar(max)
AS
BEGIN
	
	DECLARE @kq nvarchar(max)=''

	if(@idCompany>0)
		select @kq+=FormatMessage('{"ca":%d,"id":%d,"sl":%d},',[idCa],[idSuat],[SL]) 
		from [Order] A
		where ([ngay]=@ngay)and([idCompany]=@idCompany)and([idCa]=@Ca)and(idSuat in (select id from SuatAn where del_at is null and [enable]=1))
		Order by (select [name] from [SuatAn] where id=[A].idSuat) ;
	else if(@idCompany=0)
		select @kq+=FormatMessage('{"ca":%d,"id":%d,"sl":%d},',[idCa],[idSuat],sum([SL])) 
		from [Order] A
		where ([ngay]=@ngay)and([idCa]=@Ca)and(idSuat in (select id from SuatAn where del_at is null and [enable]=1))
		group by [ngay],[idCa],[idSuat]
		order by (select [name] from [SuatAn] where id=[A].idSuat);
	else if(@idCompany=-1)
		select @kq+=FormatMessage(N'{"id":%d,"name":"%s","sl":%d},',S.Loai,L.name,Sum(SL))
		from [Order] O inner join [SuatAn] S on O.idSuat=S.id and S.del_at is null and S.[enable]=1
					   inner join [Loai] L on L.id=S.loai
		where ([ngay]=@ngay)and([idCa]=@Ca)
		group by S.loai,L.name
		order by L.Name;
	else if(@idCompany=-2)
		with T1 as(
			select idSuat,sum(SL) As SL
			from [Order] O 
			where ([ngay]=@ngay)and([idCa]=@Ca)
			group by idSuat
		), T2 as(
			select D.id,D.name,sum(T1.SL*C.SL) as SL
			from T1 join Combo C on T1.idSuat=C.ids join DonNguyen D on D.id=C.idn
			group by D.id,D.name
		)
		select @kq+=FormatMessage(N'{"id":%d,"name":"%s","sl":%d},',id,name,sl)
		from T2
		order by id;

	if(@kq != '')
	  begin
		set @kq=left(@kq,len(@kq)-1);
	  end

	set @kq='['+@kq+']';
	
	RETURN @kq;

END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_DateTime2Str]    Script Date: 11/18/2023 10:53:21 PM ******/
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
/****** Object:  UserDefinedFunction [dbo].[FN_DefaultOrder]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[FN_DefaultOrder]
(
	@id int
)
RETURNS varchar(max)
AS
BEGIN	
	DECLARE @json varchar(max)='';
	select @json+=formatmessage(N'{"id":%d,"sl":%s},',ids,sl) 
	from DefaultOrder  D join SuatAn S on D.ids=S.id
	where idc=@id 
	order by S.[name];

	if(@json is null or @json='')
		set @json='[]';
	else
		set @json='['+left(@json,len(@json)-1)+']';
	RETURN @json;
END
GO
/****** Object:  UserDefinedFunction [dbo].[FN_GPS]    Script Date: 11/18/2023 10:53:21 PM ******/
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
/****** Object:  UserDefinedFunction [dbo].[FN_LIST]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Do Duy Cop
-- Create date: 2023 nov 08
-- Description:	liet ke cac du lieu
-- 1.quản lý User: list, add, edit, del, change pw, set pw
-- 2.quản lý Setting: list, add, edit, auto apply
-- 3.quản lý các Suất ăn: list, add, edit, del, disable, enable
-- 4.quản lý Loại suất ăn: list,add,edit,del
-- 5.quản lý các Đơn nguyên: list,add,edit,del
-- 6.quản lý Setup Combo: suất ăn gồm các đơn nguyên nào. List,add,edit,del
-- 7.quản lý Company: list, add, edit, del, món hay ăn vào ngày nào trong tuần (sử dụng kỹ thuật lưu json array để phân tích)
-- 8.quản lý Order đặt hàng cho công ty theo từng ca, nhập số lượng nhanh theo cài đặt hay ăn.
-- 9.tự động Thống kê số lượng suất ăn, loại và đơn nguyên cho cả bếp và cho riêng từng cty theo ca.
-- 10.tự động nhắc ra loa bằng tiếng Việt khi order changed (code python gtts)
-- 11.auto log chi tiết và gửi qua bot telegram 
-- 12.bot telegram cho phép tra cứu nhanh các thống kê (nodered + mssql)
-- 13.tra cứu được lịch sử thay đổi
-- 14.quản lý hẹn giờ nói ra loa câu bất kì.
-- 15.box - thùng đựng thức ăn
-- =============================================
CREATE FUNCTION [dbo].[FN_LIST]
(
	@action nvarchar(50)
)
RETURNS nvarchar(max)
AS
BEGIN
	declare @json nvarchar(max)='';

	if(@action='list_user')--1
	begin
		select @json += FormatMessage(N'"%s":{"uid":%s,"name":"%s","role":%d,"rolename":"%s"},',[uid],[uid],[name],[role],(select Quyen.Quyen from Quyen where Quyen.id=NSD.role))
		from NSD
		order by uid;
	end
	else if(@action='list_setting')--2
	begin
		select @json += FORMATMESSAGE(N'"%d":{"stt":%d,"key":"%s","value":"%s","note":"%s","time":"%s"},',[stt],[stt],[key],[value],[note],dbo.fn_DateTime2Str([time]))
		from Setting
		order by stt;
	end;
	else if(@action='list_suatan')--3
	begin
		with T as(
			select S.id,S.sign,S.name,cast(S.price as varchar) as price,S.loai,L.name as tenloai
			from SuatAn S inner join Loai L on S.loai=L.id and S.enable=1 and S.del_at is null
		)
		select @json+=FormatMessage(N'"%d":{"id":%d,"sign":"%s","name":"%s","price":%s,"loai":%d,"tenloai":"%s"},',
									   id,   id,     sign,       name,       price,     loai,     tenloai)
		from T	
		order by T.[tenloai], T.[name];
	end;
	else if(@action='list_loai')--4
	begin
		select @json += FormatMessage(N'"%d":{"id":%d,"name":"%s","sl":%d},',id,id,name,(select count(*) as sl from SuatAn where SuatAn.loai=Loai.id))
		from Loai
		order by id;
	end
	else if(@action='list_don_nguyen')--5
	begin
		select @json+=FORMATMESSAGE(N'"%d":{"id":%d,"name":"%s","des":"%s","sl":%d},',
						[id],[id],[name],isnull([des],''),(select count(*) from [Combo] where [idn]=[DonNguyen].[id]))
		from [DonNguyen]
		order by [id];
	end;
	else if(@action='list_combo')--6
	begin
		with T as(
			select S.id,S.sign,S.name,cast(S.price as varchar) as price,S.loai,L.name as tenloai, dbo.[FN_Combo_KV](S.id) as combo
			from SuatAn S join Loai L on S.loai=L.id and S.enable=1 and S.del_at is null
		)
		select @json+=FormatMessage(N'"%d":{"id":%d,"sign":"%s","name":"%s","price":%s,"loai":%d,"tenloai":"%s","combo":%s},',
									   id,   id,     sign,       name,       price,     loai,     tenloai,       combo)
		from T	
		order by T.[tenloai], T.[name];
	end;
	else if(@action='list_company')--7
	begin
		select @json += FormatMessage(N'"%d":{"id":%d,"name":"%s"},',id,id,name)
		from Company
		order by id;
	end;	
	else if(@action='list_box')--15
	begin
		select @json += FormatMessage(N'"%d":{"id":%d,"name":"%s","includes":%s},',id,id,name,includes)
		from Box
		order by id;
	end;	

	if(@json is null or @json = '')
		set @json='';
	else 
		set @json=N'{'+left(@json,len(@json)-1)+N'}';	
	
	RETURN @json;
END
GO
/****** Object:  UserDefinedFunction [dbo].[FN_replace]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[FN_replace]
(
	@s nvarchar(max)
)
RETURNS nvarchar(max)
AS
BEGIN
	--declare @kq nvarchar(max)
	set @s = replace(@s,'"','\"');
	return @s;

END
GO
/****** Object:  Table [dbo].[Box]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Box](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[size] [int] NOT NULL,
	[items] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Box] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ca]    Script Date: 11/18/2023 10:53:21 PM ******/
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
/****** Object:  Table [dbo].[Combo]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Combo](
	[ids] [int] NOT NULL,
	[idn] [int] NOT NULL,
	[sl] [int] NOT NULL,
 CONSTRAINT [PK_Combo] PRIMARY KEY CLUSTERED 
(
	[ids] ASC,
	[idn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[tenviet] [nvarchar](255) NOT NULL,
	[address] [nvarchar](255) NOT NULL,
	[lat] [float] NULL,
	[lng] [float] NULL,
	[phone] [varchar](50) NULL,
	[zalo] [varchar](100) NULL,
	[vip] [int] NOT NULL,
	[del_at] [datetime] NULL,
	[data_order] [nvarchar](max) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cookie]    Script Date: 11/18/2023 10:53:21 PM ******/
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
/****** Object:  Table [dbo].[DemOrder]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemOrder](
	[Ngay] [date] NOT NULL,
	[idCompany] [int] NOT NULL,
	[idCa] [int] NOT NULL,
	[Dem] [int] NOT NULL,
 CONSTRAINT [PK_DemOrder] PRIMARY KEY CLUSTERED 
(
	[Ngay] ASC,
	[idCompany] ASC,
	[idCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonNguyen]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonNguyen](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[des] [nvarchar](255) NULL,
	[del_at] [datetime] NULL,
 CONSTRAINT [PK_DonNguyen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[del_at] [datetime] NULL,
 CONSTRAINT [PK_Loai] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOG]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[input] [nvarchar](max) NULL,
	[output] [nvarchar](max) NULL,
	[time] [datetime] NULL,
 CONSTRAINT [PK_LOG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NSD]    Script Date: 11/18/2023 10:53:21 PM ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 11/18/2023 10:53:21 PM ******/
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
	[time] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 11/18/2023 10:53:21 PM ******/
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
/****** Object:  Table [dbo].[Setting]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[stt] [int] NOT NULL,
	[key] [nvarchar](50) NOT NULL,
	[value] [nvarchar](max) NULL,
	[note] [nvarchar](max) NULL,
	[time] [datetime] NULL,
	[active] [bit] NULL,
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuatAn]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuatAn](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1000) NOT NULL,
	[sign] [nvarchar](50) NOT NULL,
	[price] [float] NOT NULL,
	[enable] [bit] NOT NULL,
	[LastModify] [datetime] NOT NULL,
	[del_at] [datetime] NULL,
	[loai] [int] NULL,
 CONSTRAINT [PK_MonAn] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Talk]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Talk](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[time_say] [datetime] NOT NULL,
	[message] [nvarchar](max) NOT NULL,
	[time] [datetime] NOT NULL,
	[uid] [nvarchar](50) NULL,
 CONSTRAINT [PK_Timer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [Order_unique]    Script Date: 11/18/2023 10:53:21 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [Order_unique] ON [dbo].[Order]
(
	[idCompany] ASC,
	[idCa] ASC,
	[idSuat] ASC,
	[ngay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Setting]    Script Date: 11/18/2023 10:53:21 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Setting] ON [dbo].[Setting]
(
	[stt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Box] ADD  CONSTRAINT [DF_Box_items]  DEFAULT ('[]') FOR [items]
GO
ALTER TABLE [dbo].[Combo] ADD  CONSTRAINT [DF_Combo_sl]  DEFAULT ((1)) FOR [sl]
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_vip]  DEFAULT ((0)) FOR [vip]
GO
ALTER TABLE [dbo].[Company] ADD  CONSTRAINT [DF_Company_data_order]  DEFAULT ('[]') FOR [data_order]
GO
ALTER TABLE [dbo].[DemOrder] ADD  CONSTRAINT [DF_DemOrder_Dem]  DEFAULT ((1)) FOR [Dem]
GO
ALTER TABLE [dbo].[LOG] ADD  CONSTRAINT [DF_LOG_time]  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_time]  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [dbo].[Setting] ADD  CONSTRAINT [DF_Setting_time]  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [dbo].[Setting] ADD  CONSTRAINT [DF_Setting_active]  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[SuatAn] ADD  CONSTRAINT [DF_SuatAn_Enable]  DEFAULT ((1)) FOR [enable]
GO
ALTER TABLE [dbo].[SuatAn] ADD  CONSTRAINT [DF_SuatAn_LastModify]  DEFAULT (getdate()) FOR [LastModify]
GO
ALTER TABLE [dbo].[Talk] ADD  CONSTRAINT [DF_Timer_time_create]  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [dbo].[Combo]  WITH CHECK ADD  CONSTRAINT [FK_Combo_DonNguyen] FOREIGN KEY([idn])
REFERENCES [dbo].[DonNguyen] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Combo] CHECK CONSTRAINT [FK_Combo_DonNguyen]
GO
ALTER TABLE [dbo].[Combo]  WITH CHECK ADD  CONSTRAINT [FK_Combo_SuatAn] FOREIGN KEY([ids])
REFERENCES [dbo].[SuatAn] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Combo] CHECK CONSTRAINT [FK_Combo_SuatAn]
GO
ALTER TABLE [dbo].[NSD]  WITH CHECK ADD  CONSTRAINT [FK_NSD_Quyen] FOREIGN KEY([role])
REFERENCES [dbo].[Quyen] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[NSD] CHECK CONSTRAINT [FK_NSD_Quyen]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Ca] FOREIGN KEY([idCa])
REFERENCES [dbo].[Ca] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Ca]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Company] FOREIGN KEY([idCompany])
REFERENCES [dbo].[Company] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Company]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_SuatAn] FOREIGN KEY([idSuat])
REFERENCES [dbo].[SuatAn] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_SuatAn]
GO
ALTER TABLE [dbo].[SuatAn]  WITH CHECK ADD  CONSTRAINT [FK_SuatAn_Loai] FOREIGN KEY([loai])
REFERENCES [dbo].[Loai] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[SuatAn] CHECK CONSTRAINT [FK_SuatAn_Loai]
GO
ALTER TABLE [dbo].[Combo]  WITH CHECK ADD  CONSTRAINT [CK_Combo_SL_DUONG] CHECK  (([sl]>(0)))
GO
ALTER TABLE [dbo].[Combo] CHECK CONSTRAINT [CK_Combo_SL_DUONG]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [CK_Company] CHECK  ((isjson([data_order])=(1)))
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [CK_Company]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [CK_Order] CHECK  (([sl]>(0)))
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [CK_Order]
GO
/****** Object:  StoredProcedure [dbo].[SP_Auth]    Script Date: 11/18/2023 10:53:21 PM ******/
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
	@uid    nvarchar(50) = null,
	@cookie nvarchar(50) = null,
	@allow3 int=1,
	@allow100 int=1,
	@gioi_han_gio int=0
AS
BEGIN
	declare @role int=null;
	select @role = [role]
	from [NSD]
	where [uid]=@uid;

	declare @ok int;
	
	SELECT @OK=COUNT(*) FROM Cookie Where uid=@uid and cookie=@cookie and DATEDIFF(dd, time, GETDATE()) <= 30;
	if(@ok=1)
	begin
		select @role = NSD.role
		from NSD inner join Quyen on NSD.role=Quyen.id
		where uid=@uid;	

		if (@role is null)or(@allow3=0 and @role=3)or(@role<3)or(@allow100=0 and @role=100)
		begin
			raiserror(N'Bạn không có quyền!!!',16,1)
			return -1;
		end

		if(@gioi_han_gio=1 and @role=3)
		begin
			declare @hh int = datepart(hour,getdate());
			if(@hh>=11)
			begin
				raiserror(N'Đã quá giờ thay đổi<br>(Chỉ được thay đổi trước 11h am)<br>Liên hệ Admin để xử lý',16,1)
				return -1;
			end
		end

		return 0;
	end;
	
	raiserror(N'Hãy đăng nhập',16,1)
	return -1;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_BOX]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		do duy cop
-- Create date: 15/11/2023
-- Description:	lưu cấu hình
-- =============================================
CREATE PROCEDURE [dbo].[SP_BOX]
	@action		nvarchar(50) = 'list_box',

	@uid		nvarchar(50) = null,
	@cookie		nvarchar(50) = null,

	@id			int = null,
	@name		nvarchar(50) = null,
	@size		int = null,
	@items		nvarchar(max) = null
AS
BEGIN
	declare @json nvarchar(max)='', @auth int;
	if(@action='add_box' or @action='edit_box' or @action='del_box')
	begin
		exec @auth = SP_Auth @uid,@cookie,1,1;
		if(@auth!=0)return;
	end;

	if(@action='add_box' or @action='edit_box')
	begin
		select @name=REPLACE(@name,'"','\"')
		select @name=REPLACE(@name,char(10),' ')
		select @name=REPLACE(@name,char(13),' ')
		select @name=REPLACE(@name,'  ',' ')

		if (len(@name)<3)
		begin
			raiserror(N'Tên "%s" quá ngắn',16,1,@name);
			return;
		end

		if (len(@items)<3)
		begin
			raiserror(N'Chưa chọn Các suất ăn mà hộp có thể đựng: %s',16,1,@items);
			return;
		end
	end;

	if(@action='list_box')
	begin
		select @json += FormatMessage(N'"%d":{"id":%d,"name":"%s","size":%d,"items":%s},',[id],[id],[name],[size],[items])
		from [Box]
		order by [id];

		if(@json is null or @json = '')
			set @json='';
		else 
			set @json=N'{'+left(@json,len(@json)-1)+N'}';	

		if(@json='')
			set @json=N'{"ok":0,"msg":"Không có dữ liệu Box","data":{}}'
		else
			set @json=FormatMessage(N'{"ok":1,"msg":"Đã tải dữ liệu Box thành công","data":%s}',@json);
		select @json as json;
	end
	else
	if(@action='add_box')
	begin
		INSERT INTO [box]([name],[size],[items]) VALUES (@name,@size,@items);
		select @json=FormatMessage(N'{"ok":1,"msg":"Đã thêm thành công"}');
		select @json as json;
	end
	else
	if(@action='edit_box')
	begin
		update [box] set [name]=@name,[size]=@size,[items]=@items where [id]=@id;
		select @json=FormatMessage(N'{"ok":1,"msg":"Đã sửa thành công!"}');
		select @json as json;
	end
	else
	if(@action='del_box')
	begin
		delete from [box] where [id]=@id;
		set @json=FormatMessage(N'{"ok":1,"msg":"Đã xóa thành công"}');
		select @json as json;
	end;
	
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_Combo]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		do duy cop
-- Create date: 03-11-2023
-- Description:	xử lý bảng Combo
-- =============================================
CREATE PROCEDURE [dbo].[SP_Combo]
	@action nvarchar(50) = 'list_combo',

	@uid    nvarchar(50) = null,
	@cookie nvarchar(50) = null,

	@ids	int = null,
	@idn	int = null,
	@sl		int = null
AS
BEGIN
	declare @json nvarchar(max)='', @auth int;	

	if(@action='edit_combo')
	begin
		exec @auth = SP_Auth @uid,@cookie,0,1;
		if(@auth!=0)return;		

		update Combo set [sl]=@sl where ids=@ids and idn=@idn;

		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã cập nhật số lượng của đơn nguyên trong combo thành công!"}');
		select @json as json;
	end	
	else 
	if(@action='add_combo')
	begin
		exec @auth = SP_Auth @uid,@cookie,0,1;
		if(@auth!=0)return;		

		if(exists(select * from combo where ids=@ids and idn=@idn))
		begin
			update Combo set [sl]=@sl where ids=@ids and idn=@idn;
		end
		else
		begin
			INSERT INTO combo([ids],[idn],[sl])
			VALUES (@ids,@idn,@sl);
		end

		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã thêm đơn nguyên vào combo thành công"}');
		select @json as json;
	end;
	else
	if(@action='del_combo')
	begin
		exec @auth = SP_Auth @uid,@cookie,0,1;
		if(@auth!=0)return;		

		delete from Combo where [ids]=@ids and [idn]=@idn;

		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã xóa đơn nguyên khỏi combo thành công"}');		
		select @json as json;
	end;
	if(@action='list_combo')
	begin
		with T as(
			select S.id,S.sign,S.name,cast(S.price as varchar) as price,S.loai,L.name as tenloai, dbo.FN_Combo(S.id) as combo
			from SuatAn S inner join Loai L on S.loai=L.id
			where S.enable=1 and S.del_at is null
		)
		select @json+=FORMATMESSAGE(N'{"id":%d,"sign":"%s","name":"%s","price":%s,"loai":%d,"tenloai":"%s","combo":%s},',
										id,     sign,       name,       price,     loai,     tenloai,       combo)
		from T	
		order by T.[name];
		
		if((@json is null)or(@json=''))
			select N'{"ok":0,"msg":"Không có dữ liệu","data":[]}' as json;
		else
		  begin			
			select @json=REPLACE(@json,'(null)','null')
			select N'{"ok":1,"msg":"Đã tải danh sách setup các đơn nguyên cho từng combo","data":['+left(@json,len(@json)-1)+']}' as json;
		  end;
	end;	
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_Company]    Script Date: 11/18/2023 10:53:21 PM ******/
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
	@tenviet	nvarchar(255) = null,
	@address	nvarchar(255) = null,
	@lat		float=null,
	@lng		float=null,
	@phone		varchar(50)=null,
	@zalo		varchar(100)=null,

	@ids        int=null, --dành cho action=add_default_order 
	@data_order nvarchar(max)=null
AS
BEGIN
	declare @json nvarchar(max)='', @auth int;	
	declare @suat Nvarchar(max)='';

	if(@action='edit_company')
	begin
		exec @auth = SP_Auth @uid,@cookie,0,1;
		if(@auth!=0)return;

		if(len(@name)<1)
		begin
			raisError(N'Độ dài tên=%s là quá ngắn',16,1,@name)
			return;
		end

		if(len(@tenviet)<1)
		begin
			raisError(N'Độ dài tên=%s là quá ngắn',16,1,@name)
			return;
		end

		if(len(@address)<1)
		begin
			raisError(N'Độ dài địa chỉ=%s là quá ngắn',16,1,@address)
			return;
		end

		select @name=REPLACE(@name,'"','\"')   ,@tenviet=REPLACE(@tenviet,'"','\"'), @address=REPLACE(@address,'"','\"')   ,@phone=REPLACE(@phone,'"','\"'),@zalo=REPLACE(@zalo,'"','\"');
		select @name=REPLACE(@name,char(10),''),@tenviet=REPLACE(@tenviet,char(10),''),@address=REPLACE(@address,char(10),''),@phone=REPLACE(@phone,char(10),''),@zalo=REPLACE(@zalo,char(10),'');
		select @name=REPLACE(@name,char(13),''),@tenviet=REPLACE(@tenviet,char(13),''),@address=REPLACE(@address,char(13),''),@phone=REPLACE(@phone,char(13),''),@zalo=REPLACE(@zalo,char(13),'');
		
		if(exists(select * from [Company] where [id]!=@id and name=@name))
		begin
			raisError(N'Trùng tên rồi, nhập tên khác',16,1)
			return;
		end

		if(exists(select * from [Company] where [id]!=@id and tenviet=@tenviet))
		begin
			raisError(N'Trùng tên việt rồi, nhập tên khác',16,1)
			return;
		end

		if(exists(select * from [Company] where [id]=@id))
			update [Company] set [name]=@name, [tenviet]=@tenviet, [address]=@address,[lat]=@lat,[lng]=@lng,[phone]=@phone,[zalo]=@zalo,[data_order]=@data_order where [id]=@id;
		else
		begin
			raisError(N'Không có công ty %d',16,1,@id)
			return;
		end;

		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã sửa thông tin công ty thành công!"}');
		select @json as json;
	end	
	else 
	if(@action='add_company')
	begin
		exec @auth = SP_Auth @uid,@cookie,0,1;
		if(@auth!=0)return;

		if(len(@name)<1)
		begin
			raisError(N'Độ dài tên=%s là quá ngắn',16,1,@name)
			return;
		end;

		if(len(@tenviet)<1)
		begin
			raisError(N'Độ dài tên=%s là quá ngắn',16,1,@name)
			return;
		end

		if(len(@address)<1)
		begin
			raisError(N'Độ dài địa chỉ=%s là quá ngắn',16,1,@address)
			return;
		end;

		select @name=REPLACE(@name,'"','\"')   ,@tenviet=REPLACE(@tenviet,'"','\"'), @address=REPLACE(@address,'"','\"')   ,@phone=REPLACE(@phone,'"','\"'),@zalo=REPLACE(@zalo,'"','\"');
		select @name=REPLACE(@name,char(10),''),@tenviet=REPLACE(@tenviet,char(10),''),@address=REPLACE(@address,char(10),''),@phone=REPLACE(@phone,char(10),''),@zalo=REPLACE(@zalo,char(10),'');
		select @name=REPLACE(@name,char(13),''),@tenviet=REPLACE(@tenviet,char(13),''),@address=REPLACE(@address,char(13),''),@phone=REPLACE(@phone,char(13),''),@zalo=REPLACE(@zalo,char(13),'');
		
		if(exists(select * from [Company] where name=@name))
		begin
			raisError(N'Trùng tên rồi, nhập tên khác',16,1)
			return;
		end;

		if(exists(select * from [Company] where tenviet=@tenviet))
		begin
			raisError(N'Trùng tên việt rồi, nhập tên khác',16,1)
			return;
		end

		INSERT INTO [Company]([name],[tenviet],[address],[lat],[lng],[phone],[zalo])
		VALUES (@name,@tenviet,@address,@lat,@lng,@phone,@zalo);

		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã thêm công ty thành công"}');
		select @json as json;
	end;
	else
	if(@action='get_company')
	begin
		set @suat='';
		select @suat += FORMATMESSAGE(N'{"id":%d,"sign":"%s","name":"%s","price":%s},',[id],[sign],[name],cast(isnull([price],0) as varchar))
		from SuatAn
		where ([del_at] is null)and([enable]=1)
		order by [name];

		if(@suat <> '') set @suat='['+left(@suat,len(@suat)-1)+']'; else set @suat='null';

		select @json=FORMATMESSAGE(N'[{"id":%d,"name":"%s","tenviet":"%s","address":"%s",%s,"phone":"%s","zalo":"%s","vip":%d,"default":%s}]',
						[id],[name],[tenviet],isnull([address],''),dbo.FN_GPS([lat],[lng]),[phone],[zalo],[vip],[data_order],@suat)
		from [Company]
		where (del_at is null) and (id=@id)
		order by [id];

		set @json=N'{"ok":1,"msg":"ok","data":'+@json+',"suat":'+@suat+'}';

		select @json as json;
	end;
	else
	if(@action='delete_company')
	begin
		exec @auth = SP_Auth @uid,@cookie,0,1;
		if(@auth!=0)return;

		if(@id<=21)  --21 công ty làm ăn lâu dài, ko đc xóa
		begin
			select N'{"ok":0,"msg":"21 công ty này không xóa được nhé"}' as json
			return;
		end;

		update company set del_at=getdate() where id=@id;

		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã xóa thành công công ty "}')
		from [Company]
		where id=@id;

		select @json as json;
	end;
	if(@action='list_company')
	begin
		select @json+=FORMATMESSAGE(N'{"id":%d,"name":"%s","tenviet":"%s","address":"%s",%s,"phone":"%s","zalo":"%s","vip":%d,"default":%s},',
						[id],[name],[tenviet],isnull([address],''),dbo.FN_GPS([lat],[lng]),[phone],[zalo],[vip],isnull([data_order],'[]'))
		from [Company]
		where del_at is null
		order by [id];

		
		if((@json is null)or(@json=''))
			select N'{"ok":0,"msg":"Không có dữ liệu","data":[]}' as json;
		else
		  begin
			
			--CÓ TỔNG THÌ MỚI THÊM DỮ LIỆU SUẤT ĂN
			set @suat ='';
			select @suat += FORMATMESSAGE(N'{"id":%d,"sign":"%s","name":"%s","price":%s},',[id],[sign],[name],cast(isnull([price],0) as varchar))
			from SuatAn
			where ([del_at] is null)and([enable]=1)
			order by [name];

			if(@suat <> '') set @suat='['+left(@suat,len(@suat)-1)+']'; else set @suat='null';

			select @json=REPLACE(@json,'(null)','null')
			select N'{"ok":1,"msg":"Đã tải danh sách công ty","data":['+left(@json,len(@json)-1)+'],"suat":'+@suat+'}' as json;
		  end;
	end;
	--else if(@action='delele_all_default_order')
	--begin
	--	delete from defaultOrder where idc=@id;
	--end
	--else if(@action='add_default_order')
	--begin
	--	insert into defaultOrder(idc,ids,[thu])values(@id,@ids,'2,3,4,5,6,7,8');
	--end
	else if(@action='update_default_order')
	begin
		update [Company] set data_order=@data_order where id=@id;
	end
	
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_COOKIE]    Script Date: 11/18/2023 10:53:21 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DonNguyen]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		do duy cop
-- Create date: 02-11-2023
-- Description:	xử lý bảng DonNguyen
-- =============================================
CREATE PROCEDURE [dbo].[SP_DonNguyen]
	@action nvarchar(50) = 'list_don_nguyen',

	@uid    nvarchar(50) = null,
	@cookie nvarchar(50) = null,

	@id			int = null,
	@id_old		int = null,
	@name		nvarchar(255) = null,
	@des  	    nvarchar(255) = null
AS
BEGIN
	declare @json nvarchar(max)='', @auth int;	

	if(@action='edit_don_nguyen')
	begin
		exec @auth = SP_Auth @uid,@cookie,0,1;
		if(@auth!=0)return;

		if(len(@name)<1)
		begin
			raisError(N'Độ dài tên=%s là quá ngắn',16,1,@name)
			return;
		end		

		select @name=REPLACE(@name,'"','\"')   ,@des=REPLACE(@des,'"','\"')   
		select @name=REPLACE(@name,char(10),''),@des=REPLACE(@des,char(10),'')
		select @name=REPLACE(@name,char(13),''),@des=REPLACE(@des,char(13),'')
		
		if(exists(select * from DonNguyen where [id]=@id and [id]!=@id_old))
		begin
			raisError(N'Trùng id, nhập id khác',16,1)
			return;
		end

		if(exists(select * from DonNguyen where [id]!=@id_old and name=@name))
		begin
			raisError(N'Trùng tên rồi, nhập tên khác',16,1)
			return;
		end

		if(exists(select * from DonNguyen where [id]=@id_old))
			update DonNguyen set [id]=@id,[name]=@name, [des]=@des where [id]=@id_old;
		else
		begin
			raisError(N'Không có đơn nguyên %d',16,1,@id_old)
			return;
		end;

		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã sửa Đơn nguyên thành công!"}');
		select @json as json;
	end	
	else 
	if(@action='add_don_nguyen')
	begin
		exec @auth = SP_Auth @uid,@cookie,0,1;
		if(@auth!=0)return;

		if(len(@name)<1)
		begin
			raisError(N'Độ dài tên=%s là quá ngắn',16,1,@name)
			return;
		end;

		select @name=REPLACE(@name,'"','\"')   ,@des=REPLACE(@des,'"','\"')   
		select @name=REPLACE(@name,char(10),''),@des=REPLACE(@des,char(10),'')
		select @name=REPLACE(@name,char(13),''),@des=REPLACE(@des,char(13),'')

		if(exists(select * from DonNguyen where name=@name))
		begin
			raisError(N'Trùng tên rồi, nhập tên khác',16,1)
			return;
		end;

		INSERT INTO DonNguyen([id],[name],[des])
		VALUES (@id,@name,@des);

		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã thêm Đơn nguyên thành công"}');
		select @json as json;
	end;
	else
	if(@action='del_don_nguyen')
	begin
		exec @auth = SP_Auth @uid,@cookie,0,1;
		if(@auth!=0)return;

		delete from [DonNguyen] where id=@id;

		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã xóa Đơn nguyên thành công"}');		
		select @json as json;
	end;
	else
	if(@action='list_don_nguyen')
	begin
		select @json+=FORMATMESSAGE(N'{"id":%d,"name":"%s","des":"%s","sl":%d},',
						[id],[name],isnull([des],''),(select count(*) from [Combo] where [idn]=[DonNguyen].[id]))
		from [DonNguyen]
		order by [id];
		
		if((@json is null)or(@json=''))
			select N'{"ok":0,"msg":"Không có dữ liệu","data":[]}' as json;
		else
		  begin			
			select @json=REPLACE(@json,'(null)','null')
			select N'{"ok":1,"msg":"Đã tải danh sách Đơn nguyên thành công","data":['+left(@json,len(@json)-1)+']}' as json;
		  end;
	end;	
	else
	if(@action='dem_don_nguyen')
	begin
		select @json+=FORMATMESSAGE(N'{"id":%d,"name":"%s","price":"%s","don_nguyen":%s},',[id],[sign],cast([price] as varchar),dbo.[FN_Combo]([id]))
		from [SuatAn] 
		where [id] in(select [ids] from [Combo] where [idn]=@id)
		order by [sign];

		if((@json is null)or(@json=''))
			select N'{"ok":0,"msg":"Không có dữ liệu","data":[]}' as json;
		else
		  begin			
			select @json=REPLACE(@json,'(null)','null');
			select @name = name from DonNguyen where id=@id;
			select N'{"ok":1,"msg":"Đã tải danh sách Combo (suất ăn) có sử dụng Đơn nguyên '+@name+N'","data":['+left(@json,len(@json)-1)+']}' as json;
		  end;
	end
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_LIST]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Do Duy Cop
-- Create date: 2023 nov 08
-- Description:	liet ke cac du lieu
-- 1.quản lý User: list, add, edit, del, change pw, set pw
-- 2.quản lý Setting: list, add, edit, auto apply
-- 3.quản lý các Suất ăn: list, add, edit, del, disable, enable
-- 4.quản lý Loại suất ăn: list,add,edit,del
-- 5.quản lý các Đơn nguyên: list,add,edit,del
-- 6.quản lý Setup Combo: suất ăn gồm các đơn nguyên nào. List,add,edit,del
-- 7.quản lý Company: list, add, edit, del, món hay ăn vào ngày nào trong tuần (sử dụng kỹ thuật lưu json array để phân tích)
-- 8.quản lý Order đặt hàng cho công ty theo từng ca, nhập số lượng nhanh theo cài đặt hay ăn.
-- 9.tự động Thống kê số lượng suất ăn, loại và đơn nguyên cho cả bếp và cho riêng từng cty theo ca.
-- 10.tự động nhắc ra loa bằng tiếng Việt khi order changed (code python gtts)
-- 11.auto log chi tiết và gửi qua bot telegram 
-- 12.bot telegram cho phép tra cứu nhanh các thống kê (nodered + mssql)
-- 13.tra cứu được lịch sử thay đổi
-- 14.quản lý hẹn giờ nói ra loa câu bất kì.
-- 15.box - thùng đựng thức ăn
-- =============================================
CREATE PROCEDURE [dbo].[SP_LIST]
	@action nvarchar(50)='list_box'
AS
BEGIN	
    declare @json nvarchar(max)='', @ten nvarchar(50)='';
	if(@action='list_user')--1
	begin
		set @ten=N'User';
	end
	else if(@action='list_setting')--2
	begin
		set @ten=N'Setting';
	end;
	else if(@action='list_suatan')--3
	begin
		set @ten=N'Suất ăn';		
	end;
	else if(@action='list_loai')--4
	begin
		set @ten=N'Loại suất ăn';
	end
	else if(@action='list_don_nguyen')--5
	begin
		set @ten=N'Đơn nguyên';		
	end;
	else if(@action='list_combo')--6
	begin
		set @ten=N'Setup Combo';
	end;
	else if(@action='list_company')--7
	begin
		set @ten=N'Công ty';
	end
	else if(@action='list_box')--15
	begin
		set @ten=N'Thùng đựng';
	end
	
	set @json=dbo.FN_LIST(@action);	

	if(@json='')
		set @json=FormatMessage(N'{"ok":0,"msg":"Không có dữ liệu %s","data":{}}',@ten);
	else
		set @json=FormatMessage(N'{"ok":1,"msg":"Đã tải dữ liệu %s thành công","data":%s}',@ten,@json);
	select @json as json;
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Loai]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		do duy cop
-- Create date: 1/11/2023
-- Description:	lưu cấu hình
-- =============================================
CREATE PROCEDURE [dbo].[SP_Loai]
	@action nvarchar(50) = 'list_loai',

	@uid    nvarchar(50) = null,
	@cookie nvarchar(50) = null,

	@id			int = null,
	@id_old		int = null,
	@name		nvarchar(255) = null
AS
BEGIN
	declare @json nvarchar(max)='', @auth int;	

	if(@action='edit_loai')
	begin
		exec @auth = SP_Auth @uid,@cookie,0,1;
		if(@auth!=0)return;

		if(exists(select * from [Loai] where [id]=@id and [id]!=@id_old))
		begin
			raisError(N'Trùng id, nhập id khác',16,1)
			return;
		end

		if(len(@name)<1)
		begin
			raisError(N'Độ dài tên=%s là quá ngắn',16,1,@name)
			return;
		end;

		select @name=REPLACE(@name,'"','\"') 
		select @name=REPLACE(@name,char(10),'')
		select @name=REPLACE(@name,char(13),'')
		
		if(exists(select * from [Loai] where [id]!=@id_old and name=@name and del_at is null))
		begin
			raisError(N'Trùng tên rồi, nhập tên khác',16,1)
			return;
		end

		if(exists(select * from [Loai] where [id]=@id_old))
			update [Loai] set [id]=@id,[name]=@name where [id]=@id_old;
		else
		begin
			raisError(N'Không có loại id=%d',16,1,@id_old)
			return;
		end;

		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã sửa LOẠI suất ăn thành công!"}');
		select @json as json;
	end	
	else 
	if(@action='add_loai')
	begin
		exec @auth = SP_Auth @uid,@cookie,0,1;
		if(@auth!=0)return;
		if(exists(select * from [loai] where id=@id))
		begin
			raisError(N'Tên %s có rồi, hãy chọn tên khác!',16,1,@name)
			return;
		end;

		if(len(@name)<1)
		begin
			raisError(N'Độ dài tên=%s là quá ngắn',16,1,@name)
			return;
		end;

		select @name=REPLACE(@name,'"','\"') 
		select @name=REPLACE(@name,char(10),'')
		select @name=REPLACE(@name,char(13),'')

		if(exists(select * from [Loai] where name=@name))
		begin
			raisError(N'Trùng tên rồi, nhập tên khác',16,1)
			return;
		end


		INSERT INTO [Loai]([id],[name])
		VALUES (@id,@name);

		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã thêm LOẠI suất ăn thành công"}');
		select @json as json;
	end;
	else
	if(@action='del_loai')
	begin
		exec @auth = SP_Auth @uid,@cookie,0,1;
		if(@auth!=0)return;
				
		--update [loai] set del_at=getdate() where id=@id;
		delete from [loai] where [id]=@id;

		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã xóa LOẠI suất ăn thành công"}')

		select @json as json;
	end;
	if(@action='list_loai')
	begin
		select @json+=FORMATMESSAGE(N'{"id":%d,"name":"%s","sl":%d},',[id],[name],(select count(*) from SuatAn where SuatAn.del_at is null and SuatAn.loai=[loai].id))
		from [loai]
		where del_at is null
		order by [id];
				
		if((@json is null)or(@json=''))
			select N'{"ok":0,"msg":"Không có dữ liệu","data":[]}' as json;
		else
		  begin			
			select @json=REPLACE(@json,'(null)','null')
			select N'{"ok":1,"msg":"Đã tải dữ liệu LOẠI suất ăn","data":['+left(@json,len(@json)-1)+']}' as json;
		  end;
	end;
	
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_LOG]    Script Date: 11/18/2023 10:53:21 PM ******/
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
	set @output=replace(@output,char(10),' ');
	set @output=replace(@output,char(13),' ');
	set @output=replace(@output,'"','\"');
	insert into log([input],[output])values(@input,@output);
END



GO
/****** Object:  StoredProcedure [dbo].[SP_LOGIN]    Script Date: 11/18/2023 10:53:21 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_NSD]    Script Date: 11/18/2023 10:53:21 PM ******/
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
				set @json=N'{"ok":1,"msg":"Đã tải danh sách user","data":['+left(@json,len(@json)-1)+'],"quyen":['+left(@quyen,len(@quyen)-1)+']}';

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
/****** Object:  StoredProcedure [dbo].[SP_Report]    Script Date: 11/18/2023 10:53:21 PM ******/
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
	@action nvarchar(50) = 'monitor',
	@ngay date = null,
	@last_log_id int = null,
	@last_talk_id int=null,
	@id int=null,

	@id_ca int=null,
	@id_car int=null,
	@ids_congty nvarchar(max)=null
AS
BEGIN
	declare @json nvarchar(max)='',@suat nvarchar(max)='',@loai nvarchar(max)='',@don nvarchar(max)='', @t nvarchar(max)='',@ca int;
	declare @time datetime=getdate();
	if(@ngay is null)set @ngay=getdate();

	if(@action='monitor')
	begin
		--CHI TIẾT @TODAY
		select @json+=FORMATMESSAGE(N'{"id":%d,"name":"%s","tenviet":"%s","address":"%s",%s,"phone":"%s","vip":%d,"zalo":"%s","default":%s,"c1":%s,"c2":%s,"c3":%s,"c4":%s,"d1":%d,"d2":%d,"d3":%d,"d4":%d},',
						[id],[name],[tenviet],isnull([address],''),dbo.FN_GPS([lat],[lng]),[phone],[vip],[zalo],isnull([data_order],'[]'),		
						dbo.FN_COUNT_SuatAn(@ngay,[id],1),
						dbo.FN_COUNT_SuatAn(@ngay,[id],2),
						dbo.FN_COUNT_SuatAn(@ngay,[id],3),
						dbo.FN_COUNT_SuatAn(@ngay,[id],4),
						dbo.FN_COUNT_ORDER(@ngay,[id],1),
						dbo.FN_COUNT_ORDER(@ngay,[id],2),
						dbo.FN_COUNT_ORDER(@ngay,[id],3),
						dbo.FN_COUNT_ORDER(@ngay,[id],4)
						)
		from [Company]
		where [Company].del_at is null
		order by [id];

		
		
		if((@json is null)or(@json=''))
			select N'{"ok":0,"msg":"không có dữ liệu","data":[]}' as json;
		else
		  begin

		  --TỔNG @TODAY
			select @json+=FORMATMESSAGE(N'{"id":0,"name":"Tổng suất ăn:","c1":%s,"c2":%s,"c3":%s,"c4":%s},',						
							dbo.FN_COUNT_SuatAn(@ngay,0,1),
							dbo.FN_COUNT_SuatAn(@ngay,0,2),
							dbo.FN_COUNT_SuatAn(@ngay,0,3),
							dbo.FN_COUNT_SuatAn(@ngay,0,4));
							
			select @json+=FORMATMESSAGE(N'{"id":-1,"name":"Tổng suất ăn theo loại:","c1":%s,"c2":%s,"c3":%s,"c4":%s},',						
							dbo.FN_COUNT_SuatAn(@ngay,-1,1),
							dbo.FN_COUNT_SuatAn(@ngay,-1,2),
							dbo.FN_COUNT_SuatAn(@ngay,-1,3),
							dbo.FN_COUNT_SuatAn(@ngay,-1,4));
							
			select @json+=FORMATMESSAGE(N'{"id":-2,"name":"Thống kê đơn nguyên:","c1":%s,"c2":%s,"c3":%s,"c4":%s},',						
							dbo.FN_COUNT_SuatAn(@ngay,-2,1),
							dbo.FN_COUNT_SuatAn(@ngay,-2,2),
							dbo.FN_COUNT_SuatAn(@ngay,-2,3),
							dbo.FN_COUNT_SuatAn(@ngay,-2,4));
			
			if(@json!='')set @json=left(@json,len(@json)-1)
			
			--CÓ TỔNG THÌ MỚI THÊM DỮ LIỆU SUẤT ĂN			
			select @suat += FORMATMESSAGE(N'{"id":%d,"sign":"%s","name":"%s","price":%s,"loai":%d,"tenloai":"%s"},',
											S.[id],S.[sign],S.[name],cast(isnull([price],0) as varchar),S.[loai],L.[name])
			from [SuatAn] S left join [Loai] L on S.loai=L.id and S.[del_at] is null
			where (S.[del_at] is null)and(S.[enable]=1)
			order by S.[name];

			if(@suat <> '') set @suat=N'['+left(@suat,len(@suat)-1)+N']'; else set @suat='null';
			
			
			--CÓ TỔNG THÌ MỚI THÊM DỮ LIỆU Loai			
			select @loai += FORMATMESSAGE(N'{"id":%d,"name":"%s"},',[id],[name])
			from [Loai] 
			order by id;

			if(@loai <> '') set @loai='['+left(@loai,len(@loai)-1)+']'; else set @loai='null';
			
			
			--GHÉP CHÚNG LẠI THÀNH JSON HOÀN CHỈNH
			select @json = REPLACE(@json,'(null)','null');
			
			declare @xxx nvarchar(max)
			select @xxx = N'{"ok":1,"msg":"Đã tải xong dữ liệu báo cáo<br>Ngày: '+convert(varchar,@ngay,120)+N'","ngay":"'+convert(varchar,@ngay,120)+'","data":[';
			select @xxx+= @json;
			select @xxx+= N'],"suat":'+@suat+N',"loai":'+@loai+'}';
			select @xxx AS json;
		  end
	end	
	else if(@action='report_1_congty')
	begin
			set @ca=1;
			while(@ca<=4)
			begin
				set @t='';
				select @t+=FormatMessage('{"name":"%s","sl":%d},',S.[name],sum([SL])) 
				from [Order] O join [SuatAn] S on O.[idSuat]=S.[id] and S.[del_at] is null and S.[enable]=1
				where (O.[ngay]=@ngay)and(O.[idCa]=@Ca)and(O.idCompany=@id)
				group by O.[ngay],O.[idCa],O.[idSuat],S.[name]
				order by S.[name];
				if (@t='') set @t='null'; else set @t='['+left(@t,len(@t)-1)+']';
				set @suat+=FormatMessage(N'{"ca":%d,"data":%s},',@ca,@t);
				set @ca=@ca+1;
			end;
			if (@suat='') set @suat='null'; else set @suat='['+left(@suat,len(@suat)-1)+']';
			
			set @ca=1;
			while(@ca<=4)
			begin
				set @t='';
				select @t+=FormatMessage(N'{"name":"%s","sl":%d},',L.[name],Sum(SL))
				from [Order] O inner join [SuatAn] S on O.[idSuat]=S.[id] and S.[del_at] is null and S.[enable]=1
							   inner join [Loai] L on L.[id]=S.[loai]
				where (O.[ngay]=@ngay)and(O.[idCa]=@ca)and(O.idCompany=@id)
				group by L.[name]
				order by L.[Name];
				if (@t='') set @t='null'; else set @t='['+left(@t,len(@t)-1)+']';
				set @loai+=FormatMessage(N'{"ca":%d,"data":%s},',@ca,@t);
				select @ca=@ca+1;
			end;
			if (@loai='') set @loai='null'; else set @loai='['+left(@loai,len(@loai)-1)+']';

			set @ca=1;
			while(@ca<=4)
			begin
				set @t='';
				with T1 as(
					select idSuat,SL
					from [Order] O 
					where ([ngay]=@ngay)and([idCa]=@Ca)and([idCompany]=@id)
					--group by idSuat
				), T2 as(
					select D.id,D.name,sum(T1.SL*C.SL) as SL
					from T1 join Combo C on T1.idSuat=C.ids join DonNguyen D on D.id=C.idn
					group by D.id,D.name
				)
				select @t+=FormatMessage(N'{"id":%d,"name":"%s","sl":%d},',id,name,sl)
				from T2
				order by id;
				if (@t='') set @t='null'; else set @t='['+left(@t,len(@t)-1)+']';
				set @don+=FormatMessage(N'{"ca":%d,"data":%s},',@ca,@t);
				set @ca=@ca+1;
			end;
			if (@don='') set @don='null'; else set @don='['+left(@don,len(@don)-1)+']';

			set @json=FormatMessage(N'{"ok":1,"msg":"Đã tải thống kê chi tiết công ty %d %s","suat":%s,"loai":%s,"don":%s}',@id,(select name from company where id=@id),@suat,@loai,@don);
			select @json as json;
	end
	else if(@action='get_mp3')
	begin
		
		declare @mp3_short nvarchar(max)='';
		select top 1 @mp3_short += FORMATMESSAGE(N'{"id":%d,"mp3":"%s","time":"%s"},', [id],[output],convert(varchar(19),[time],120)) 
		from log 
		where (input='mp3_short') and (@last_log_id is null or id>@last_log_id)
		order by id desc;

		if(@mp3_short is null or @mp3_short='')
		  set @mp3_short = N'{"ok":0,"msg":"silent"}';
		else
		  set @mp3_short = N'{"ok":1,"msg":"mp3 ok","data":['+left(@mp3_short,len(@mp3_short)-1)+']}';
		

		declare @mp3_talk nvarchar(max)='';
		select top 10 @mp3_talk += FORMATMESSAGE(N'{"id":%d,"message":"%s","time_say":"%s"},',[id],[message],convert(varchar,[time_say],120),convert(varchar,[time],120),[uid])
		from [Talk]
		where [time_say]>=getdate() and [time_say]<=dateadd(second,4,getdate()) --and (@last_talk_id is null or id>@last_talk_id)
		order by [time_say] asc, [time] asc;

		if(@mp3_talk is null or @mp3_talk='')
			set @mp3_talk=FORMATMESSAGE(N'{"ok":0,"msg":"silent", "last_talk_id":%d}',(select isnull(max(id),0) from [talk] where time_say<getdate()));
		else
			set @mp3_talk=N'{"ok":1,"msg":"ok","data":['+left(@mp3_talk,len(@mp3_talk)-1)+']}';

		set @json = FORMATMESSAGE(N'{"ok":1,"msg":"ok","mp3_short":%s,"mp3_talk":%s,"last_talk_id":%d}',@mp3_short,@mp3_talk,(select isnull(max(id),0) from [talk] where time_say<getdate()));
		select @json as json;
	end
	else if (@action='report_oto')
	begin
		DECLARE @Xml_CTY XML;
		SET @Xml_CTY = CAST('<x>' + REPLACE(@ids_congty, ',', '</x><x>') + '</x>' AS XML);		

		set @ca=@id_ca;
		set @t='';
		with [CTY] as (
			SELECT tableID.[id].value('.', 'int') as [id]
			FROM @Xml_CTY.nodes('/x') AS [tableID]([id])
		)
		select @t+=FormatMessage('{"name":"%s","sl":%d},',S.[name],sum([SL])) 
		from [Order] O join [SuatAn] S on O.[idSuat]=S.[id] and S.[del_at] is null and S.[enable]=1
		where (O.[ngay]=@ngay)and(O.[idCa]=@Ca)and(O.idCompany in (select id from CTY))
		group by O.[ngay],O.[idCa],O.[idSuat],S.[name]
		order by S.[name];
		if (@t='') set @t='null'; else set @t='['+left(@t,len(@t)-1)+']';
		set @suat+=FormatMessage(N'{"ca":%d,"data":%s},',@ca,@t);

		if (@suat='') set @suat='null'; else set @suat='['+left(@suat,len(@suat)-1)+']';
			
		set @t='';
		with [CTY] as (
			SELECT tableID.[id].value('.', 'int') as [id]
			FROM @Xml_CTY.nodes('/x') AS [tableID]([id])
		)
		select @t+=FormatMessage(N'{"name":"%s","sl":%d},',L.[name],Sum(SL))
		from [Order] O inner join [SuatAn] S on O.[idSuat]=S.[id] and S.[del_at] is null and S.[enable]=1
						inner join [Loai] L on L.[id]=S.[loai]
		where (O.[ngay]=@ngay)and(O.[idCa]=@ca)and(O.idCompany in (select id from CTY))
		group by L.[name]
		order by L.[Name];
		if (@t='') set @t='null'; else set @t='['+left(@t,len(@t)-1)+']';
		set @loai+=FormatMessage(N'{"ca":%d,"data":%s},',@ca,@t);
		if (@loai='') set @loai='null'; else set @loai='['+left(@loai,len(@loai)-1)+']';

		set @t='';
		with [CTY] as (
			SELECT tableID.[id].value('.', 'int') as [id]
			FROM @Xml_CTY.nodes('/x') AS [tableID]([id])
		),T1 as(
			select idSuat,SL
			from [Order] O 
			where ([ngay]=@ngay)and([idCa]=@Ca)and([idCompany] in (select id from CTY))
			--group by idSuat
		), T2 as(
			select D.id,D.name,sum(T1.SL*C.SL) as SL
			from T1 join Combo C on T1.idSuat=C.ids join DonNguyen D on D.id=C.idn
			group by D.id,D.name
		)
		select @t+=FormatMessage(N'{"id":%d,"name":"%s","sl":%d},',id,name,sl)
		from T2
		order by id;
		if (@t='') set @t='null'; else set @t='['+left(@t,len(@t)-1)+']';
		set @don+=FormatMessage(N'{"ca":%d,"data":%s},',@ca,@t);
		if (@don='') set @don='null'; else set @don='['+left(@don,len(@don)-1)+']';

		set @json=FormatMessage(N'{"ok":1,"msg":"Xe %d","suat":%s,"loai":%s,"don":%s}',@id_car,@suat,@loai,@don);
		select @json as json;
	end
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Setting]    Script Date: 11/18/2023 10:53:21 PM ******/
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
	@value  nvarchar(MAX)= null
AS
BEGIN
	declare @json nvarchar(max)='', @auth int;

	if(@action='edit_setting')
	begin
		exec @auth = SP_Auth @uid,@cookie,0,1;
		if(@auth!=0)return;

		select @value = REPLACE(@value,'"','\"')
		select @value = REPLACE(@value,char(13),'')
		select @value = REPLACE(@value,char(10),'')

		if(exists(select * from [Setting] where [key]=@key))
			update [Setting] set [value]=@value, [time]=getdate() where [key]=@key;
		else
			insert into [Setting]([key],[value])values(@key,@value);
		
		--select @json=FORMATMESSAGE(N'{"ok":1,"key":"%s","value":"%s","note":"%s","time":"%s","msg":"Đã cập nhật setting<br><b>%s</b>=%s"}',
		--				[key],[value],[note],dbo.fn_DateTime2Str([time]),[key],[value])
		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã cập nhật setting<br><b>%s</b>=%s"}',[key],[value])
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
		select @json+=FORMATMESSAGE(N'{"stt":%d,"key":"%s","value":"%s","note":"%s","time":"%s","active":%s},',[stt],[key],[value],[note],dbo.fn_DateTime2Str([time]),cast(active as varchar))
		from [Setting]
		order by [stt];
		
		if((@json is null)or(@json=''))
			select N'{"ok":1,"msg":"Không có dữ liệu","data":[]}' as json;
		else
			select N'{"ok":1,"msg":"Đã tải dữ liệu setting thành công","data":['+left(@json,len(@json)-1)+']}' as json;
	end
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SuatAn]    Script Date: 11/18/2023 10:53:21 PM ******/
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
	@loai   int=null,

	@id_company int=null,
	@id_ca		int=null,
	@id_suat	int=null,
	@so_luong	int=null,
	@ngay		date=null,

	@ngay_new date = null,
	@ngay_old date = null,

	@order_id varchar(max)=null,
	@order_sl varchar(max)=null
AS
BEGIN
	declare @json nvarchar(max)='', @auth int;
	declare @homnay date=getdate();
	declare @hh_homnay int=datepart(Hour,getdate());
	declare @mm_homnay int=datepart(MINUTE,getdate());
	declare @str_homnay varchar(50)=cast(@homnay as varchar);
	declare @like nvarchar(max)='',@pt nvarchar(1)='%';
	declare @dem int=0;

	if(@ngay is null)
	begin
		set @ngay=getdate();
	end;

	if(@action='list_suat_an')
	begin
		select @json+=FORMATMESSAGE(N'{"id":%d,"name":"%s","sign":"%s","price":%s,"loai":%d,"tenloai":"%s","enable":%d},',S.[id],S.[name],S.[sign],cast(S.[price] as varchar),S.[loai],L.[name],cast(S.[enable] as int))
		from [SuatAn] S left join [Loai] L on S.loai=L.id
		where S.[del_at] is null
		order by S.[name];

		if((@json is null)or(@json=''))
			select N'{"ok":0,"msg":"Không có dữ liệu","data":[]}' as json;
		else
		begin
			select @json=REPLACE(@json,'(null)','null')

			--CÓ TỔNG THÌ MỚI THÊM DỮ LIỆU Loai
			declare @jloai Nvarchar(max)='';
			select @jloai += FORMATMESSAGE(N'{"id":%d,"name":"%s"},',[id],[name])
			from [Loai] 
			where [del_at] is null
			order by id;

			if(@jloai <> '') set @jloai='['+left(@jloai,len(@jloai)-1)+']'; else set @jloai='null';

			select N'{"ok":1,"msg":"Đã tải danh sách (combo) suất ăn thành công","data":['+left(@json,len(@json)-1)+'],"loai":'+@jloai+'}' as json;
		end;
	end
	else if(@action='add_suat_an')
	begin
		exec @auth = SP_Auth @uid,@cookie;
		if(@auth!=0)return;

		insert into SuatAn([name],[sign],[price],[loai])values(@name,@sign,@price,@loai);
		select N'{"ok":1,"msg":"Đã thêm (combo) suất ăn thành công"}' as json;
	end
	else if(@action='enable_suat_an')
	begin
		exec @auth = SP_Auth @uid,@cookie;
		if(@auth!=0)return;

		update [SuatAn] set [enable]=1, [name]=@name,[sign]=@sign,[price]=@price,[loai]=@loai,[LastModify]=getdate() where [id]=@id;
		select N'{"ok":1,"msg":"Đã enable (combo) suất ăn  thành công"}' as json;
	end
	else if(@action='disable_suat_an')
	begin
		exec @auth = SP_Auth @uid,@cookie;
		if(@auth!=0)return;

		update [SuatAn] set [enable]=0, [name]=@name,[sign]=@sign,[price]=@price,[loai]=@loai,[LastModify]=getdate() where [id]=@id;
		select N'{"ok":1,"msg":"Đã disable (combo) suất ăn thành công"}' as json;
	end
	else if(@action='delete_suat_an')
	begin
		exec @auth = SP_Auth @uid,@cookie;
		if(@auth!=0)return;

		if(exists(select * from [Order] where idSuat=@id))
		  begin
		    
			select N'{"ok":0,"msg":"Loại này đã order ở chỗ khác. Hãy disable nó thôi, ko xóa được"}' as json;
		  end
		else
		  begin
			update [SuatAn] set del_at=getdate() where [id]=@id;
			select N'{"ok":1,"msg":"Đã delete (combo) suất ăn thành công"}' as json;
		  end
	end
	else if(@action='dem_suat_an')
	begin
		select @dem = SL
		from [Order]
		where ([idCompany]=@id_company)and([idCa]=@id_ca)and(idSuat=@id_suat)and([ngay]=@ngay);
		if(@dem is null)set @dem=0;
		select FORMATMESSAGE(N'{"ok":1,"msg":"Đếm (combo) suất ăn thành công","soluong":%d}',@dem) as json;
	end
	--else if(@action='add_order')
	--begin
	--	exec @auth = SP_Auth @uid,@cookie,1,1,1;
	--	if(@auth!=0)return;

	--	if(exists(select * from [Order] where ([idCompany]=@id_company)and([idCa]=@id_ca)and(idSuat=@id_suat)and([ngay]=@ngay)))
	--	begin
	--		update [Order] set SL=@so_luong where ([idCompany]=@id_company)and([idCa]=@id_ca)and(idSuat=@id_suat)and([ngay]=@ngay)
	--		select FORMATMESSAGE(N'{"ok":1,"msg":"Cập nhật số lượng (combo) suất ăn thành công","soluong":%d}',@so_luong) as json;
	--	end
	--	else
	--	begin
	--		insert into [Order]([ngay],[idCompany],[idCa],[idSuat],[SL])values(@ngay,@id_company,@id_ca,@id_suat,@so_luong);
	--		select FORMATMESSAGE(N'{"ok":1,"msg":"Thêm mới số lượng (combo) suất ăn thành công","soluong":%d}',@so_luong) as json;
	--	end	
	--end

	else if(@action='copy_order')
	begin
		exec @auth = SP_Auth @uid,@cookie,1,1,1;
		if(@auth!=0)return;

		if(@ngay_new is null)set @ngay_new=getdate();
		if(@ngay_old is null)set @ngay_old=dateadd(day,-1,@ngay_new);
		delete from [Order] where ngay=@ngay_new;
		insert into [Order] (idCompany,idCa,idSuat,SL,ngay)select idCompany,idCa,idSuat,SL,@ngay_new as ngay from [Order] where ngay=@ngay_old;
		select FORMATMESSAGE(N'{"ok":1,"msg":"Đã copy (combo) suất ăn giữa 2 ngày thành công"}') as json;
	end

	--else if(@action='delete_order')
	--begin
	--	exec @auth = SP_Auth @uid,@cookie,1,1,1;
	--	if(@auth!=0)return;

	--	delete from [Order] where ([idCompany]=@id_company)and([idCa]=@id_ca)and(idSuat=@id_suat)and([ngay]=@ngay);
	--	select FORMATMESSAGE(N'{"ok":1,"msg":"Đã xóa (combo) suất ăn thành công"}') as json;
	--end
	--else if (@action='remove_order_cty_ca')
	--begin		


	--	delete from [Order] 
	--	where ([idCompany]=@id_company)and([idCa]=@id_ca)and([ngay]=@ngay);
	--end
	--else if (@action='add_order_cty_ca')
	--begin
	--	if(@ngay < @homnay)
	--	begin
	--		RaisError(N'Không được sửa đổi các thông số quá khứ',16,1);
	--		return;
	--	end;
	--	if(@ngay = @homnay)
	--	begin
	--		if(@id_ca = 1 AND @hh_homnay > 8)or(@id_ca = 2 AND @hh_homnay > 14)or(@id_ca = 3 AND @hh_homnay > 20)
	--		begin
	--			RaisError(N'Bây giờ là %d giờ, ngày %s<br>Đã quá giờ sửa đổi rồi!<br>Thời gian được phép sửa đổi:<ol><li>Ca sáng: Trước 9h sáng</li><li>Ca trưa: Trước 15h</li><li>Ca tối: Trước 21h tối</li><li>Ca đêm: Trước 0h đêm</li></ol>',16,1,@hh_homnay,@str_homnay);
	--			return;
	--		end
	--	end;		

	--	IF(@so_luong>0)
	--	begin
	--		insert into [Order]([ngay],[idCompany],[idCa],[idSuat],[SL])values(@ngay,@id_company,@id_ca,@id_suat,@so_luong);
	--	end
	--end
	else if (@action='save_order')
	begin

		if(@ngay < @homnay)
		begin
			RaisError(N'Không được sửa đổi các thông số quá khứ',16,1);
			return;
		end;
		if(@ngay = @homnay)
		begin
			if(@id_ca = 1 AND @hh_homnay >= 9)or(@id_ca = 2 AND @hh_homnay >= 16)or(@id_ca = 3 AND @hh_homnay >= 21)
			begin
				RaisError(N'Bây giờ đã là %d:%d, ngày %s<br>Đã quá giờ sửa đổi rồi!<br>Thời gian được phép sửa đổi:<ol><li>Ca sáng: Trước 9h sáng</li><li>Ca trưa: Trước 16h</li><li>Ca tối: Trước 21h tối</li><li>Ca đêm: Trước 0h đêm</li></ol>MỌI SỬA ĐỔI ĐỀU ĐƯỢC LƯU LẠI!',16,1,@hh_homnay,@mm_homnay,@str_homnay);
				return;
			end
		end;

		DECLARE @Xml_ID XML,@Xml_SL XML;
		SET @Xml_ID = CAST('<x>' + REPLACE(@order_id, ',', '</x><x>') + '</x>' AS XML);
		SET @Xml_SL = CAST('<x>' + REPLACE(@order_sl, ',', '</x><x>') + '</x>' AS XML);		

		declare @mp3_long nvarchar(max)='',@mp3_short nvarchar(max)='',@xoa_het bit=0, @id_mp3 int ;
		declare @tem_sl table (id int, name nvarchar(50), sl int,sl_old int, sl_new int);

		with [T1] as (
			SELECT ROW_NUMBER() over (order by [id]) as [stt], tableID.[id].value('.', 'int') as [id]
			FROM @Xml_ID.nodes('/x') AS [tableID]([id])
		),[T2] as(
			SELECT ROW_NUMBER() over (order by [sl]) as [stt], [tableSL].[sl].value('.', 'int') as [SL]
			FROM @Xml_SL.nodes('/x') AS [tableSL](sl)
		),[T3] as(
			select @ngay as [ngay], @id_company as [idCompany], @id_ca as [idCa], [T1].[id] as [idSuat],[T2].[SL]
			from [T1] inner join [T2] on [T1].[stt]=[T2].[stt]
		)		
		select @mp3_long += FORMATMESSAGE(N'%d suất ăn %s, ', [T3].[SL], S.name)
		from [T3] inner join [SuatAn] [S] on [T3].[idSuat]=[S].[id]
		where [T3].[SL]>0;		

		
		if(@mp3_long is null or @mp3_long='' )
		begin			
			select @xoa_het=1, @mp3_long = FORMATMESSAGE(N'%s đã xóa hết các suất ăn ca %s của công ty %s',
									(select [name] from [NSD]     where [uid]=@uid),
									(select [name] from [Ca]      where  [id]=@id_ca),
									(select [name] from [Company] where  [id]=@id_company)
							   );
		end
		else
		begin
			select @mp3_long = left(@mp3_long,len(@mp3_long)-1);

			select @mp3_long = FORMATMESSAGE(N'%s vừa thêm vào ca %s cho công ty %s: %s', 
								(select [name] from [NSD]     where [uid]=@uid),
								(select [name] from [Ca]      where  [id]=@id_ca),
								(select [name] from [Company] where  [id]=@id_company),
								@mp3_long);
		end;		

		insert into @tem_sl(id, name, sl, sl_old, sl_new)
		select L.id, L.name, 0-sum(O.SL), sum(O.SL), 0
		from [Order] O join [SuatAn] S on O.idSuat=S.id join [Loai] L on L.id=S.loai
		where O.SL>0 and O.idCompany=@id_company and O.idCa=@id_ca and ngay=@ngay
		Group by L.id,L.name
		order by L.id;

		with [T1] as (
			SELECT ROW_NUMBER() over (order by [id]) as [stt], tableID.[id].value('.', 'int') as [id]
			FROM @Xml_ID.nodes('/x') AS [tableID]([id])
		),[T2] as(
			SELECT ROW_NUMBER() over (order by [sl]) as [stt], [tableSL].[sl].value('.', 'int') as [SL]
			FROM @Xml_SL.nodes('/x') AS [tableSL](sl)
		),[T3] as(
			select @ngay as [ngay], @id_company as [idCompany], @id_ca as [idCa], [T1].[id] as [idSuat],[T2].[SL]
			from [T1] inner join [T2] on [T1].[stt]=[T2].[stt]
		)
		insert into @tem_sl(id, name, sl, sl_old,sl_new)
		select  L.id, L.name,sum([T3].[SL]), 0,sum([T3].[SL])
		from [T3] inner join [SuatAn] [S] on [T3].[idSuat]=[S].[id]
					inner join [Loai] [L] on [S].[loai]=[L].[id]
		where [T3].[SL]>0
		Group by L.id,L.name
		order by L.id;

		select @mp3_short+=case 
			when sum(sl_old)=0 then 
				--số lượng cũ == 0 <=> đặt mới
				FORMATMESSAGE(N'Đặt %d suất %s, ',sum(sl), name)
			else 
			    --số lượng cũ <>0  <=> đặt thêm
				FORMATMESSAGE(N'%s %d suất %s %s %d, ',case when sum(sl)>0 then N'Thêm' else N'Giảm' end, sum(sl), name, case when sum(sl)>0 then N'thành' else N'còn' end, sum(sl_new))
			end		
		from @tem_sl
		group by id,name
		having sum(sl)<>0
		order by id;

		if(@mp3_short is not null and @mp3_short <> '')
		begin
			select @mp3_short = left(@mp3_short,len(@mp3_short)-1);

			select @mp3_short=FORMATMESSAGE(N'%s: %s',(select [tenviet] from [Company] where  [id]=@id_company), @mp3_short);			
			if(@xoa_het=1)
				select @mp3_short+=N'. Xóa hết rồi!';
			
			insert into [LOG]([input],[output])values('mp3_long',@mp3_long),('mp3_short',@mp3_short);			


			delete from [Order] where ([idCompany]=@id_company)and([idCa]=@id_ca)and([ngay]=@ngay);

			with [T1] as (
				SELECT ROW_NUMBER() over (order by [id]) as [stt], tableID.[id].value('.', 'int') as [id]
				FROM @Xml_ID.nodes('/x') AS [tableID]([id])
			),[T2] as(
				SELECT ROW_NUMBER() over (order by [sl]) as [stt], [tableSL].[sl].value('.', 'int') as [SL]
				FROM @Xml_SL.nodes('/x') AS [tableSL](sl)
			),[T3] as(
				select @ngay as [ngay], @id_company as [idCompany], @id_ca as [idCa], [T1].[id] as [idSuat],[T2].[SL]
				from [T1] inner join [T2] on [T1].[stt]=[T2].[stt]
			)
			insert into [Order]([ngay],[idCompany],[idCa],[idSuat],[SL])
			select [ngay],[idCompany],[idCa],[idSuat],[SL]
			from [T3]
			where [T3].[SL]>0;

			if(exists(select * from DemOrder where([idCompany]=@id_company)and([idCa]=@id_ca)and([ngay]=@ngay)))
				update DemOrder set [Dem]=[Dem]+1 where([idCompany]=@id_company)and([idCa]=@id_ca)and([ngay]=@ngay);
			else
				insert into DemOrder([ngay],[idCompany],[idCa],[Dem])values(@ngay,@id_company,@id_ca,1);

		end
		else
		begin
			if(@mp3_short is null or @mp3_short='')
				set @mp3_long+=N' => KHÔNG THAY ĐỔI GÌ';
			insert into [LOG]([input],[output])values('mp3_long',@mp3_long);			
		end;

		SELECT @id_mp3=IDENT_CURRENT('LOG');
		

		set @json = N'Đã cập nhật số lượng suất ăn thành công';

		if(@mp3_short is null or @mp3_short='')
			set @json += N'. Không thay đổi gì!';

		select FORMATMESSAGE(N'{"ok":1,"msg":"%s","mp3":"%s", "id":%d}',@json, @mp3_short,@id_mp3) as json;
	end
	else if (@action='goi_y_order')
	begin
		set @json=''
		select @json+=FORMATMESSAGE(N'{"id":%d,"sign":"%s","name":"%s","price":%s,"loai":%d,"tenloai":"%s","enable":%d,"sl":%d},',				
				S.id,S.[sign], S.[name], cast(S.[price] as varchar),S.[loai],L.[name],cast(S.[enable] as int), sum(O.[sl]))
		from [order] O inner join [SuatAn] S on O.idSuat=S.id and S.del_at is null
		               left  join [Loai] L on S.loai=L.id and L.del_at is null
		where ([idCompany]=@id_company)and(S.del_at is null)
		group by S.id,S.sign, S.name, S.price,S.[loai],L.[name],S.[enable]
		order by S.name;		

		if(@json is null or @json='')
			select N'{"ok":0,"msg":"Không có dữ liệu gợi ý, vì công ty này chưa đặt gì bao giờ!"}' as json;
		else
			select N'{"ok":1,"msg":"Đã tải dữ liệu gợi ý thành công","data":['+left(@json,len(@json)-1)+']}' as json;
	end
	else if (@action='list_history_order')
	begin
		set @json='';
		set @like = FORMATMESSAGE(N'%sid_company=%d;id_ca=%d;%sngay=%s%s',@pt,@id_company,@id_ca,@pt,convert(varchar,@ngay,120),@pt)
		SELECT top 100 @json+=FORMATMESSAGE(N'{"id":%d,"input":"%s","log":"%s","time":"%s"},',[id],[input],[output],convert(varchar,[time],120)), @dem=@dem+1
		from log 
		where [input] in ('mp3_long','mp3_short','save_order','copy_order','add_order','delete_order','remove_order_cty_ca') 
		  and [output] like @like
		order by [id] desc;

		if(@json is null or @json='')
			select N'{"ok":0,"msg":"Không có dữ liệu cho truy vấn '+@like+' "}' as json;
		else
			select N'{"ok":1,"msg":"Đã tải toàn bộ '+cast(@dem as varchar)+N' lịch sử sửa đổi theo công ty + ca","data":['+left(@json,len(@json)-1)+']}' as json;
	end
	else if (@action='list_history_company_order')
	begin
		set @json='';
		set @like = FORMATMESSAGE(N'%sid_company=%d;%sngay=%s%s',@pt,@id_company,@pt,convert(varchar,@ngay,120),@pt)
		SELECT top 100 @json+=FORMATMESSAGE(N'{"id":%d,"input":"%s","log":"%s","time":"%s"},',[id],[input],[output],convert(varchar,[time],120)), @dem=@dem+1
		from log 
		where [input] in ('mp3_long','mp3_short','save_order','copy_order','add_order','delete_order','remove_order_cty_ca') 
		  and [output] like @like
		order by [id] desc;

		if(@json is null or @json='')
			select N'{"ok":0,"msg":"Không có dữ liệu cho truy vấn '+@like+' "}' as json;
		else
			select N'{"ok":1,"msg":"Đã tải toàn bộ '+cast(@dem as varchar)+N' lịch sử sửa đổi theo công ty + ca","data":['+left(@json,len(@json)-1)+']}' as json;
	end
	else if (@action='list_all_history_order')
	begin
		select @json='';
		SELECT top 1000 @json+=FORMATMESSAGE(N'{"id":%d,"input":"%s","log":"%s","time":"%s"},',[id],[input],[output],convert(varchar,[time],120)), @dem=@dem+1
		from log 
		where [input] not in ('LOGIN OK','CHECK LOGIN OK','do_login','do_logout')
		  and [input] in ('mp3_long','mp3_short','add_suat_an','enable_suat_an','disable_suat_an','delete_suat_an','save_order','copy_order','edit_setting','get_setting','add_company','edit_company','delete_company','add_loai','edit_loai','del_loai','add_don_nguyen','edit_don_nguyen','del_don_nguyen','add_combo','edit_combo','del_combo','add_talk','edit_talk','del_talk')
		  and time between @ngay and dateadd(day,1, @ngay)
		order by [id] desc;

		set @like = '%;ngay='+cast(@ngay as varchar)+'%'
		if(@json is null or @json='')
			select N'{"ok":0,"msg":"Không có dữ liệu cho truy vấn '+@like+' "}' as json;
		else
			select N'{"ok":1,"msg":"Đã tải toàn bộ '+cast(@dem as varchar)+N' lịch sử sửa đổi ngày '+cast(@ngay as varchar)+'","data":['+left(@json,len(@json)-1)+']}' as json;
	end
END
GO
/****** Object:  StoredProcedure [dbo].[SP_TALK]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		do duy cop
-- Create date: 0:6 6/1/2023
-- Description:	lưu cấu hình
-- =============================================
CREATE PROCEDURE [dbo].[SP_TALK]
	@action		nvarchar(50) = 'list_talk',

	@uid		nvarchar(50) = null,
	@cookie		nvarchar(50) = null,

	@id			int = null,
	@message	nvarchar(4000) = null,
	@time_say	datetime=null	
AS
BEGIN
	declare @json nvarchar(max)='', @auth int;
	if(@action='add_talk' or @action='edit_talk' or @action='del_talk')
	begin
		exec @auth = SP_Auth @uid,@cookie,1,1;
		if(@auth!=0)return;
	end;

	if(@action='add_talk' or @action='edit_talk')
	begin
		select @message=REPLACE(@message,'"','\"')
		select @message=REPLACE(@message,char(10),' ')
		select @message=REPLACE(@message,char(13),' ')
		select @message=REPLACE(@message,'  ',' ')
	end;

	if(@action='list_talk')
	begin
		set @json='';
		select @json += FORMATMESSAGE(N'{"id":%d,"message":"%s","time_say":"%s","time":"%s","uid":"%s","state":"%s"},',
			[id],[message],convert(varchar,[time_say],120),convert(varchar,[time],120),[uid], case when [time_say]>getdate() then 'new' else 'old' end)
		from [Talk]		
		order by [time_say] desc, [time] asc;

		if(@json='')
			set @json=N'{"ok":0,"msg":"Không có dữ liệu"}';
		else
			set @json=N'{"ok":1,"msg":"ok","data":['+left(@json,len(@json)-1)+']}';

		select @json as json;
	end
	else
	if(@action='add_talk')
	begin
		if(@time_say < dateadd(SECOND,10, getdate()))set @time_say = dateadd(SECOND,10, getdate());
		--select @id = max(id)+1 from [talk];
		--if (@id is null or @id<=0)set @id=1;
		--INSERT INTO [Talk]([id],[time_say],[message],[uid]) VALUES (@id,@time_say,@message,@uid);
		INSERT INTO [Talk]([time_say],[message],[uid]) VALUES (@time_say,@message,@uid);
		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã thêm thành công"}');
		select @json as json;
	end
	else
	if(@action='edit_talk')
	begin
		update [Talk] set [time_say]=@time_say,[message]=@message, [time]=getdate(), [uid]=@uid where [id]=@id;
		--delete from [Talk] where [id]=@id;
		--INSERT INTO [Talk]([time_say],[message],[uid]) VALUES (@time_say,@message,@uid);
		select @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã sửa thành công!"}');
		select @json as json;
	end
	else
	if(@action='del_talk')
	begin
		delete from [Talk] where [id]=@id;
		set @json=FORMATMESSAGE(N'{"ok":1,"msg":"Đã xóa thành công"}');
		select @json as json;
	end;
	else if(@action='say_talk')
	begin		
		set @json='';
		select top 10 @json += FORMATMESSAGE(N'{"id":%d,"message":"%s","time_say":"%s"},',[id],[message],convert(varchar,[time_say],120),convert(varchar,[time],120),[uid])
		from [Talk]
		where [time_say]>=getdate() and [time_say]<=dateadd(MINUTE,1,getdate()) and (id>=@id)
		order by [time_say];

		if(@json='')
			set @json=N'{"ok":0,"msg":"Không có dữ liệu"}';
		else
			set @json=N'{"ok":1,"msg":"ok","data":['+left(@json,len(@json)-1)+']}';

		select @json as json;
	end;


	--if (@action='add_talk' or @action='edit_talk' or @action='del_talk')
	--begin
	--  declare @max int;
	--  select @max = max(id) from [talk];
	--  update [talk] set id=id+@max;
	--  declare @talk table(id int, time_say datetime, stt int identity(1,1));
	  
	--  insert into @talk(id,time_say)
	--  select id,time_say
	--  from [talk] order by [time_say];
	  
	--  update [talk] set id=B.stt from [talk] A join @talk B on A.id=B.id;
	--end
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_Telegram]    Script Date: 11/18/2023 10:53:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Do Duy Cop
-- Create date: 02.11.2023
-- Description:	dành cho telegram bot auto answer
-- =============================================
CREATE PROCEDURE [dbo].[SP_Telegram]
	@action nvarchar(50)='loai',
	@ngay date=null,
	@msg nvarchar(max)='',
	@last_log_id int = null,
	@id int = null
AS
BEGIN
	declare @kq nvarchar(max)='', @ca int, @t nvarchar(max)='';
	declare @time datetime=getdate();
	declare @br char(2)=char(13)+char(10);
	if(@ngay is null)set @ngay=getdate();
	if(@action='loai')
	begin		
		set @kq=N'<b>🏁🔆Thống kê theo LOẠI ngày: '+convert(varchar,@ngay,120)+N'</b>'+@br;
		set @ca=1;
		while(@ca<=4)
		begin
			select @kq+=N'👉Ca '+Name+':',@t='' from Ca where id=@ca;
			select @t+=FormatMessage(N'%s %s => %d',@br,L.[name],Sum(SL))
			from [Order] O inner join [SuatAn] S on O.[idSuat]=S.[id] and S.[del_at] is null and S.[enable]=1
						   inner join [Loai] L on L.[id]=S.[loai]
			where (O.[ngay]=@ngay)and(O.[idCa]=@ca)
			group by L.[name]
			order by L.[Name];
			if (@t='') set @kq+=N' 0️⃣'+@br; else set @kq+=@t+@br;
						
			set @ca=@ca+1;
		end;
		select @kq as kq;
	end
	else if(@action='suat')
	begin
		set @kq=N'<b>✅Thống kê theo SUẤT ngày: '+convert(varchar,@ngay,120)+'</b>'+@br;
		set @ca=1;
		while(@ca<=4)
		begin
			select @kq+=N'👉Ca '+Name+':',@t='' from Ca where id=@ca;
			select @t+=FormatMessage('%s %s => %d',@br,S.[name],sum([SL])) 
			from [Order] O join [SuatAn] S on O.[idSuat]=S.[id] and S.[del_at] is null and S.[enable]=1
			where (O.[ngay]=@ngay)and(O.[idCa]=@Ca)
			group by O.[ngay],O.[idCa],O.[idSuat],S.[name]
			order by S.[name];
			if (@t='') set @kq+=N' 0️⃣'+@br; else set @kq+=@t+@br;
			set @ca=@ca+1;
		end;
		select @kq as kq;
	end
	else if(@action='don_nguyen')
	begin
		set @kq=N'<b>✅Thống kê theo ĐƠN NGUYÊN ngày: '+convert(varchar,@ngay,120)+'</b>'+@br;
		set @ca=1;
		while(@ca<=4)
		begin
			select @kq+=N'👉Ca '+Name+':',@t='' from Ca where id=@ca;
			with T1 as(
				select idSuat,sum(SL) As SL
				from [Order] O 
				where ([ngay]=@ngay)and([idCa]=@Ca)
				group by idSuat
			), T2 as(
				select D.id,D.name,sum(T1.SL*C.SL) as SL
				from T1 join Combo C on T1.idSuat=C.ids join DonNguyen D on D.id=C.idn
				group by D.id,D.name
			)
			select @t+=FormatMessage(N'%s [%d] %s => %d',@br,id,name,sl)
			from T2
			order by id;

			if (@t='') set @kq+=N' 0️⃣'+@br; else set @kq+=@t+@br;
			set @ca=@ca+1;
		end;
		select @kq as kq;
	end
	else if(@action='cong_ty')
	begin
		set @kq=''
		if(@id is null or @id=0)
		begin
			--list all cong ty
			set @kq=N'<b>🔆Thống kê Công ty</b>:'+@br;
			select @kq+=FormatMessage(N' [%d] %s'+@br,id,name)
			from company
			order by id;
		end
		else if(@id>0)
		begin
			set @kq=N'<b>✅Công ty: ';

			select @kq+=FormatMessage(N' [%d] 🔆%s🔆</b>'+@br,id,name)
			from company
			where id=@id
			order by id;		  

			set @kq+=N'<b>✅Thống kê theo SUẤT ngày: '+convert(varchar,@ngay,120)+'</b>'+@br;
			set @ca=1;
			while(@ca<=4)
			begin
				select @kq+=N'👉Ca '+Name+':',@t='' from Ca where id=@ca;
				select @t+=FormatMessage('%s %s => %d',@br,S.[name],sum([SL])) 
				from [Order] O join [SuatAn] S on O.[idSuat]=S.[id] and S.[del_at] is null and S.[enable]=1
				where (O.[ngay]=@ngay)and(O.[idCa]=@Ca)and(O.idCompany=@id)
				group by O.[ngay],O.[idCa],O.[idSuat],S.[name]
				order by S.[name];
				if (@t='') set @kq+=N' 0️⃣'+@br; else set @kq+=@t+@br;
				set @ca=@ca+1;
			end;

			set @kq+=N'<b>✅Thống kê theo LOẠI ngày: '+convert(varchar,@ngay,120)+'</b>'+@br;
			set @ca=1;
			while(@ca<=4)
			begin
				select @kq+=N'👉Ca '+Name+':',@t='' from Ca where id=@ca;
				select @t+=FormatMessage(N'%s %s => %d',@br,L.[name],Sum(SL))
				from [Order] O inner join [SuatAn] S on O.[idSuat]=S.[id] and S.[del_at] is null and S.[enable]=1
							   inner join [Loai] L on L.[id]=S.[loai]
				where (O.[ngay]=@ngay)and(O.[idCa]=@ca)and(O.idCompany=@id)
				group by L.[name]
				order by L.[Name];
				if (@t='') set @kq+=N' 0️⃣'+@br; else set @kq+=@t+@br;
						
				set @ca=@ca+1;
			end;

			set @kq+=N'<b>✅Thống kê theo ĐƠN NGUYÊN ngày: '+convert(varchar,@ngay,120)+'</b>'+@br;
			set @ca=1;
			while(@ca<=4)
			begin
				select @kq+=N'👉Ca '+Name+':',@t='' from Ca where id=@ca;
				with T1 as(
					select idSuat,SL
					from [Order] O 
					where ([ngay]=@ngay)and([idCa]=@Ca)and([idCompany]=@id)
					--group by idSuat
				), T2 as(
					select D.id,D.name,sum(T1.SL*C.SL) as SL
					from T1 join Combo C on T1.idSuat=C.ids join DonNguyen D on D.id=C.idn
					group by D.id,D.name
				)
				select @t+=FormatMessage(N'%s [%d] %s => %d',@br,id,name,sl)
				from T2
				order by id;

				if (@t='') set @kq+=N' 0️⃣'+@br; else set @kq+=@t+@br;
				set @ca=@ca+1;
			end;

		end
		select @kq as kq;
	end
	else if(@action='auto')
	begin
		SELECT top 10 [ID],[input],[output],convert(varchar,[time],120) as [time]
		from log 
		where [input] in ('mp3_short','mp3_long','add_suat_an','disable_suat_an','enable_suat_an','delete_suat_an','save_order','copy_order','edit_combo','add_combo','del_combo','edit_company','add_company','delete_company','update_default_order','edit_don_nguyen','add_don_nguyen','del_don_nguyen','edit_loai','add_loai','del_loai','edit_setting') 
		             and (@last_log_id is null or [id]>@last_log_id)
		order by [id] desc;
	end	
	else
	begin
		select N'Chưa xử lý được: '+@msg as kq;
	end
END
GO
USE [master]
GO
ALTER DATABASE [XuatAn] SET  READ_WRITE 
GO
