USE [master]
GO
/****** Object:  Database [XuatAn]    Script Date: 06/11/2023 20:31:48 ******/

/****** Object:  Database [XuatAn]    Script Date: 06/11/2023 20:31:48 ******/
CREATE DATABASE [XuatAn]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'XuatAn', FILENAME = N'C:\www\XuatAn\db\XuatAn.mdf' , SIZE = 4800KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'XuatAn_log', FILENAME = N'C:\www\XuatAn\db\XuatAn_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
USE [XuatAn]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_Combo]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  UserDefinedFunction [dbo].[FN_COUNT_SuatAn]    Script Date: 06/11/2023 20:31:48 ******/
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
		from [Order] 
		where ([ngay]=@ngay)and([idCompany]=@idCompany)and([idCa]=@Ca)and(idSuat in (select id from SuatAn where del_at is null and [enable]=1))
		Order by (select name from SuatAn where id=[Order].idSuat) ;
	else if(@idCompany=0)
		select @kq+=FormatMessage('{"ca":%d,"id":%d,"sl":%d},',[idCa],[idSuat],sum([SL])) 
		from [Order] 
		where ([ngay]=@ngay)and([idCa]=@Ca)and(idSuat in (select id from SuatAn where del_at is null and [enable]=1))
		group by [ngay],[idCa],[idSuat]
		order by (select name from SuatAn where id=[Order].idSuat);
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
/****** Object:  UserDefinedFunction [dbo].[fn_DateTime2Str]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  UserDefinedFunction [dbo].[FN_DefaultOrder]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  UserDefinedFunction [dbo].[FN_GPS]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  UserDefinedFunction [dbo].[FN_replace]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  Table [dbo].[Ca]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  Table [dbo].[ChiTietNhap]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  Table [dbo].[Combo]    Script Date: 06/11/2023 20:31:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Combo](
	[ids] [int] NOT NULL,
	[idn] [int] NOT NULL,
	[sl] [int] NOT NULL CONSTRAINT [DF_Combo_sl]  DEFAULT ((1)),
 CONSTRAINT [PK_Combo] PRIMARY KEY CLUSTERED 
(
	[ids] ASC,
	[idn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 06/11/2023 20:31:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
	[vip] [int] NOT NULL CONSTRAINT [DF_Company_vip]  DEFAULT ((0)),
	[del_at] [datetime] NULL,
	[data_order] [nvarchar](max) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cookie]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  Table [dbo].[DefaultOrder]    Script Date: 06/11/2023 20:31:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DefaultOrder](
	[idC] [int] NOT NULL,
	[idS] [int] NOT NULL,
	[SL] [int] NULL,
	[thu] [varchar](14) NULL,
 CONSTRAINT [PK_DefaultOrder] PRIMARY KEY CLUSTERED 
(
	[idC] ASC,
	[idS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonNguyen]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  Table [dbo].[Loai]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  Table [dbo].[LOG]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  Table [dbo].[NguyenLieu]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  Table [dbo].[Nhap]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  Table [dbo].[NSD]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  Table [dbo].[Quyen]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  Table [dbo].[Setting]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  Table [dbo].[SuatAn]    Script Date: 06/11/2023 20:31:48 ******/
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
	[loai] [int] NULL,
 CONSTRAINT [PK_MonAn] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [Order_unique]    Script Date: 06/11/2023 20:31:48 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Order_unique] ON [dbo].[Order]
(
	[idCompany] ASC,
	[idCa] ASC,
	[idSuat] ASC,
	[ngay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
ALTER TABLE [dbo].[DefaultOrder]  WITH CHECK ADD  CONSTRAINT [FK_DefaultOrder_Company] FOREIGN KEY([idC])
REFERENCES [dbo].[Company] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DefaultOrder] CHECK CONSTRAINT [FK_DefaultOrder_Company]
GO
ALTER TABLE [dbo].[DefaultOrder]  WITH CHECK ADD  CONSTRAINT [FK_DefaultOrder_SuatAn] FOREIGN KEY([idS])
REFERENCES [dbo].[SuatAn] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DefaultOrder] CHECK CONSTRAINT [FK_DefaultOrder_SuatAn]
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
ON DELETE CASCADE
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
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [CK_Order] CHECK  (([sl]>(0)))
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [CK_Order]
GO
/****** Object:  StoredProcedure [dbo].[SP_Auth]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Combo]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Company]    Script Date: 06/11/2023 20:31:48 ******/
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
						[id],[name],[tenviet],isnull([address],''),dbo.FN_GPS([lat],[lng]),[phone],[zalo],[vip],[data_order])
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
/****** Object:  StoredProcedure [dbo].[SP_COOKIE]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_DonNguyen]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Loai]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LOG]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_LOGIN]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_NSD]    Script Date: 06/11/2023 20:31:48 ******/
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
/****** Object:  StoredProcedure [dbo].[SP_Report]    Script Date: 06/11/2023 20:31:48 ******/
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
	@last_log_id int = null
AS
BEGIN
	declare @json nvarchar(max)='';	

	if(@action='monitor')
	begin
		if(@ngay is null)set @ngay = getdate();

		--CHI TIẾT @TODAY
		select @json+=FORMATMESSAGE(N'{"id":%d,"name":"%s","tenviet":"%s","address":"%s",%s,"phone":"%s","vip":%d,"zalo":"%s","default":%s,"c1":%s,"c2":%s,"c3":%s,"c4":%s},',
						[id],[name],[tenviet],isnull([address],''),dbo.FN_GPS([lat],[lng]),[phone],[vip],[zalo],[data_order],
						dbo.FN_COUNT_SuatAn(@ngay,[id],1),
						dbo.FN_COUNT_SuatAn(@ngay,[id],2),
						dbo.FN_COUNT_SuatAn(@ngay,[id],3),
						dbo.FN_COUNT_SuatAn(@ngay,[id],4)
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
			declare @suat Nvarchar(max)='';
			select @suat += FORMATMESSAGE(N'{"id":%d,"sign":"%s","name":"%s","price":%s,"loai":%d,"tenloai":"%s"},',
											S.[id],S.[sign],S.[name],cast(isnull([price],0) as varchar),S.[loai],L.[name])
			from [SuatAn] S left join [Loai] L on S.loai=L.id and S.[del_at] is null
			where (S.[del_at] is null)and(S.[enable]=1)
			order by S.[name];

			if(@suat <> '') set @suat='['+left(@suat,len(@suat)-1)+']'; else set @suat='null';

			--CÓ TỔNG THÌ MỚI THÊM DỮ LIỆU Loai
			declare @loai Nvarchar(max)='';
			select @loai += FORMATMESSAGE(N'{"id":%d,"name":"%s"},',[id],[name])
			from [Loai] 
			order by id;

			if(@loai <> '') set @loai='['+left(@loai,len(@loai)-1)+']'; else set @loai='null';


			--GHÉP CHÚNG LẠI THÀNH JSON HOÀN CHỈNH
			select @json=REPLACE(@json,'(null)','null')
			select N'{"ok":1,"msg":"Đã tải xong dữ liệu báo cáo<br>Ngày: '+convert(varchar,@ngay,120)+N'","ngay":"'+convert(varchar,@ngay,120)+'","data":['+@json+'],"suat":'+@suat+',"loai":'+@loai+'}' as json;
		  end
	end
	else if(@action='get_mp3')
	begin
		set @json='';
		select top 1 @json += FORMATMESSAGE(N'{"id":%d,"mp3":"%s"},', [id],[output]) 
		from log 
		where (input='mp3_short') and (@last_log_id=null or id>@last_log_id)
		order by id desc;

		if(@json='')
		  set @json = N'{"ok":0,"msg":"silent"}';
		else
		  set @json = N'{"ok":1,"msg":"mp3 ok","data":['+left(@json,len(@json)-1)+']}';
		select @json as json;
	end
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Setting]    Script Date: 06/11/2023 20:31:48 ******/
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
	declare @json nvarchar(max)='', @auth int;

	if(@action='edit_setting')
	begin
		exec @auth = SP_Auth @uid,@cookie,0,1;
		if(@auth!=0)return;

		select @value = REPLACE(@value,'"','\"'),@note= REPLACE(@note,'"','\"');
		select @value = REPLACE(@value,char(13),''),@note= REPLACE(@note,char(13),'');
		select @value = REPLACE(@value,char(10),''),@note= REPLACE(@note,char(10),'');

		if(exists(select * from [Setting] where [key]=@key))
			update [Setting] set [value]=@value, [time]=getdate() where [key]=@key;
		else
			insert into [Setting]([key],[value])values(@key,@value);
		
		select @json=FORMATMESSAGE(N'{"ok":1,"key":"%s","value":"%s","note":"%s","time":"%s","msg":"Đã cập nhật setting<br><b>%s</b>=%s"}',
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
			select N'{"ok":1,"msg":"Không có dữ liệu","data":[]}' as json;
		else
			select N'{"ok":1,"msg":"Đã tải dữ liệu setting thành công","data":['+left(@json,len(@json)-1)+']}' as json;
	end
END

GO
/****** Object:  StoredProcedure [dbo].[SP_SuatAn]    Script Date: 06/11/2023 20:31:48 ******/
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
	@today		date=null,

	@ngay_new date = null,
	@ngay_old date = null,

	@order_id varchar(max)=null,
	@order_sl varchar(max)=null
AS
BEGIN
	declare @json nvarchar(max)='', @auth int;
	declare @homnay date=getdate();
	declare @hh_homnay int=datepart(Hour,getdate());
	declare @str_homnay varchar(50)=cast(@homnay as varchar);
	declare @like nvarchar(max)='',@pt nvarchar(1)='%';
	declare @dem int=0;

	if(@today is null)
	begin
		set @today=getdate();
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
		where ([idCompany]=@id_company)and([idCa]=@id_ca)and(idSuat=@id_suat)and([ngay]=@today);
		if(@dem is null)set @dem=0;
		select FORMATMESSAGE(N'{"ok":1,"msg":"Đếm (combo) suất ăn thành công","soluong":%d}',@dem) as json;
	end
	--else if(@action='add_order')
	--begin
	--	exec @auth = SP_Auth @uid,@cookie,1,1,1;
	--	if(@auth!=0)return;

	--	if(exists(select * from [Order] where ([idCompany]=@id_company)and([idCa]=@id_ca)and(idSuat=@id_suat)and([ngay]=@today)))
	--	begin
	--		update [Order] set SL=@so_luong where ([idCompany]=@id_company)and([idCa]=@id_ca)and(idSuat=@id_suat)and([ngay]=@today)
	--		select FORMATMESSAGE(N'{"ok":1,"msg":"Cập nhật số lượng (combo) suất ăn thành công","soluong":%d}',@so_luong) as json;
	--	end
	--	else
	--	begin
	--		insert into [Order]([ngay],[idCompany],[idCa],[idSuat],[SL])values(@today,@id_company,@id_ca,@id_suat,@so_luong);
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

	--	delete from [Order] where ([idCompany]=@id_company)and([idCa]=@id_ca)and(idSuat=@id_suat)and([ngay]=@today);
	--	select FORMATMESSAGE(N'{"ok":1,"msg":"Đã xóa (combo) suất ăn thành công"}') as json;
	--end
	--else if (@action='remove_order_cty_ca')
	--begin		
	--	if(@today < @homnay)
	--	begin
	--		RaisError(N'Không được sửa đổi các thông số quá khứ',16,1);
	--		return;
	--	end;
	--	if(@today = @homnay)
	--	begin
	--		if(@id_ca = 1 AND @hh_homnay > 8)or(@id_ca = 2 AND @hh_homnay > 14)or(@id_ca = 3 AND @hh_homnay > 20)
	--		begin
	--			RaisError(N'Bây giờ là %d giờ, ngày %s<br>Đã quá giờ sửa đổi rồi!<br>Thời gian được phép sửa đổi:<ol><li>Ca sáng: Trước 9h sáng</li><li>Ca trưa: Trước 15h</li><li>Ca tối: Trước 21h tối</li><li>Ca đêm: Trước 0h đêm</li></ol>',16,1,@hh_homnay,@str_homnay);
	--			return;
	--		end
	--	end;

	--	delete from [Order] 
	--	where ([idCompany]=@id_company)and([idCa]=@id_ca)and([ngay]=@today);
	--end
	--else if (@action='add_order_cty_ca')
	--begin
	--	if(@today < @homnay)
	--	begin
	--		RaisError(N'Không được sửa đổi các thông số quá khứ',16,1);
	--		return;
	--	end;
	--	if(@today = @homnay)
	--	begin
	--		if(@id_ca = 1 AND @hh_homnay > 8)or(@id_ca = 2 AND @hh_homnay > 14)or(@id_ca = 3 AND @hh_homnay > 20)
	--		begin
	--			RaisError(N'Bây giờ là %d giờ, ngày %s<br>Đã quá giờ sửa đổi rồi!<br>Thời gian được phép sửa đổi:<ol><li>Ca sáng: Trước 9h sáng</li><li>Ca trưa: Trước 15h</li><li>Ca tối: Trước 21h tối</li><li>Ca đêm: Trước 0h đêm</li></ol>',16,1,@hh_homnay,@str_homnay);
	--			return;
	--		end
	--	end;		

	--	IF(@so_luong>0)
	--	begin
	--		insert into [Order]([ngay],[idCompany],[idCa],[idSuat],[SL])values(@today,@id_company,@id_ca,@id_suat,@so_luong);
	--	end
	--end
	else if (@action='save_order')
	begin
		DECLARE @Xml_ID XML,@Xml_SL XML;
		SET @Xml_ID = CAST('<x>' + REPLACE(@order_id, ',', '</x><x>') + '</x>' AS XML);
		SET @Xml_SL = CAST('<x>' + REPLACE(@order_sl, ',', '</x><x>') + '</x>' AS XML);		

		declare @mp3_long nvarchar(max)='',@mp3_short nvarchar(max)='',@xoa_het bit=0, @id_mp3 int ;
		declare @tem_sl table (id int, name nvarchar(50), sl int, loai varchar(10));

		with [T1] as (
			SELECT ROW_NUMBER() over (order by [id]) as [stt], tableID.[id].value('.', 'int') as [id]
			FROM @Xml_ID.nodes('/x') AS [tableID]([id])
		),[T2] as(
			SELECT ROW_NUMBER() over (order by [sl]) as [stt], [tableSL].[sl].value('.', 'int') as [SL]
			FROM @Xml_SL.nodes('/x') AS [tableSL](sl)
		),[T3] as(
			select @today as [ngay], @id_company as [idCompany], @id_ca as [idCa], [T1].[id] as [idSuat],[T2].[SL]
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

		insert into @tem_sl(id, name, sl, loai)
		select L.id, L.name, 0-sum(O.SL), 'old'
		from [Order] O join [SuatAn] S on O.idSuat=S.id join [Loai] L on L.id=S.loai
		where O.SL>0 and O.idCompany=@id_company and O.idCa=@id_ca and ngay=@today
		Group by L.id,L.name
		order by L.id;

		with [T1] as (
			SELECT ROW_NUMBER() over (order by [id]) as [stt], tableID.[id].value('.', 'int') as [id]
			FROM @Xml_ID.nodes('/x') AS [tableID]([id])
		),[T2] as(
			SELECT ROW_NUMBER() over (order by [sl]) as [stt], [tableSL].[sl].value('.', 'int') as [SL]
			FROM @Xml_SL.nodes('/x') AS [tableSL](sl)
		),[T3] as(
			select @today as [ngay], @id_company as [idCompany], @id_ca as [idCa], [T1].[id] as [idSuat],[T2].[SL]
			from [T1] inner join [T2] on [T1].[stt]=[T2].[stt]
		)
		insert into @tem_sl(id, name, sl, loai)
		select  L.id, L.name,sum([T3].[SL]), 'new'
		from [T3] inner join [SuatAn] [S] on [T3].[idSuat]=[S].[id]
					inner join [Loai] [L] on [S].[loai]=[L].[id]
		where [T3].[SL]>0
		Group by L.id,L.name
		order by L.id;

		select @mp3_short+=FORMATMESSAGE(N'%s %d suất %s, ',case when sum(sl)>0 then N'Thêm' else N'Giảm' end, sum(sl), name)
		from @tem_sl
		group by id,name
		having sum(sl)<>0
		order by id;

		if(@mp3_short is not null and @mp3_short <> '')
		begin
			select @mp3_short = left(@mp3_short,len(@mp3_short)-1);

			select @mp3_short=FORMATMESSAGE(N'Công ty %s: %s',(select [tenviet] from [Company] where  [id]=@id_company), @mp3_short);			
			if(@xoa_het=1)
				select @mp3_short+=N'. Xóa hết rồi!';
			
			insert into [LOG]([input],[output])values('mp3_long',@mp3_long),('mp3_short',@mp3_short);			
		end
		else
		begin
			if(@mp3_short is null or @mp3_short='')
				set @mp3_long+=N' => KHÔNG THAY ĐỔI GÌ';
			insert into [LOG]([input],[output])values('mp3_long',@mp3_long);			
		end;

		SELECT @id_mp3=IDENT_CURRENT('LOG');

		delete from [Order] where ([idCompany]=@id_company)and([idCa]=@id_ca)and([ngay]=@today);

		with [T1] as (
			SELECT ROW_NUMBER() over (order by [id]) as [stt], tableID.[id].value('.', 'int') as [id]
			FROM @Xml_ID.nodes('/x') AS [tableID]([id])
		),[T2] as(
			SELECT ROW_NUMBER() over (order by [sl]) as [stt], [tableSL].[sl].value('.', 'int') as [SL]
			FROM @Xml_SL.nodes('/x') AS [tableSL](sl)
		),[T3] as(
			select @today as [ngay], @id_company as [idCompany], @id_ca as [idCa], [T1].[id] as [idSuat],[T2].[SL]
			from [T1] inner join [T2] on [T1].[stt]=[T2].[stt]
		)
		insert into [Order]([ngay],[idCompany],[idCa],[idSuat],[SL])
		select [ngay],[idCompany],[idCa],[idSuat],[SL]
		from [T3]
		where [T3].[SL]>0;

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
		set @like = FORMATMESSAGE(N'%sid_company=%d;id_ca=%d;%s',@pt,@id_company,@id_ca,@pt,@pt)
		SELECT top 100 @json+=FORMATMESSAGE(N'{"id":%d,"input":"%s","log":"%s","time":"%s"},',[id],replace([input],'"','\"'),replace([output],'"','\"'),convert(varchar,[time],120)), @dem=@dem+1
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
		SELECT top 1000 @json+=FORMATMESSAGE(N'{"id":%d,"input":"%s","log":"%s","time":"%s"},',[id],replace([input],'"','\"'),replace([output],'"','\"'),convert(varchar,[time],120)), @dem=@dem+1
		from log 
		where [input] in ('mp3_long','mp3_short','add_suat_an','disable_suat_an','enable_suat_an','delete_suat_an','save_order','copy_order','edit_combo','add_combo','del_combo','edit_company','add_company','delete_company','update_default_order','edit_don_nguyen','add_don_nguyen','del_don_nguyen','edit_loai','add_loai','del_loai','edit_setting') 
		and time between @today and dateadd(day,1, @today)
		order by [id] desc;

		set @like = '%;today='+cast(@today as varchar)+'%'
		if(@json is null or @json='')
			select N'{"ok":0,"msg":"Không có dữ liệu cho truy vấn '+@like+' "}' as json;
		else
			select N'{"ok":1,"msg":"Đã tải toàn bộ '+cast(@dem as varchar)+N' lịch sử sửa đổi ngày '+cast(@today as varchar)+'","data":['+left(@json,len(@json)-1)+']}' as json;
	end
END

GO
/****** Object:  StoredProcedure [dbo].[SP_Telegram]    Script Date: 06/11/2023 20:31:48 ******/
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
		SELECT top 10 ID,input,output,convert(varchar,time,120) as time
		from log 
		where [input] in ('mp3_short','mp3_long','add_suat_an','disable_suat_an','enable_suat_an','delete_suat_an','save_order','copy_order','edit_combo','add_combo','del_combo','edit_company','add_company','delete_company','update_default_order','edit_don_nguyen','add_don_nguyen','del_don_nguyen','edit_loai','add_loai','del_loai','edit_setting') 
		and (id>@last_log_id or @last_log_id=null)
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
