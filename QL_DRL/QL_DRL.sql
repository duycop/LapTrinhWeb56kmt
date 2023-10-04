USE [master]
GO
/****** Object:  Database [QL_DRL]    Script Date: 04/10/2023 20:00:43 ******/
CREATE DATABASE [QL_DRL]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_DRL', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QL_DRL.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QL_DRL_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\QL_DRL_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QL_DRL] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_DRL].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_DRL] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_DRL] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_DRL] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_DRL] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_DRL] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_DRL] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_DRL] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_DRL] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_DRL] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_DRL] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_DRL] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_DRL] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_DRL] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_DRL] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_DRL] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_DRL] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_DRL] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_DRL] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_DRL] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_DRL] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_DRL] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_DRL] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_DRL] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_DRL] SET  MULTI_USER 
GO
ALTER DATABASE [QL_DRL] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_DRL] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_DRL] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_DRL] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QL_DRL] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QL_DRL] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QL_DRL] SET QUERY_STORE = ON
GO
ALTER DATABASE [QL_DRL] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QL_DRL]
GO
/****** Object:  Table [dbo].[Cookie]    Script Date: 04/10/2023 20:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cookie](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masv] [int] NULL,
	[cookie] [varchar](50) NULL,
 CONSTRAINT [PK_Cookie] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 04/10/2023 20:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[idE] [int] NULL,
	[name] [nvarchar](50) NULL,
	[date] [date] NULL,
	[hocki] [int] NULL,
	[DiemTG] [int] NULL,
	[DiemVIP] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Join]    Script Date: 04/10/2023 20:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Join](
	[masv] [int] NOT NULL,
	[idE] [int] NOT NULL,
	[VaiTro] [int] NULL,
 CONSTRAINT [PK_Join] PRIMARY KEY CLUSTERED 
(
	[masv] ASC,
	[idE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SV]    Script Date: 04/10/2023 20:00:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SV](
	[masv] [int] NOT NULL,
	[pw] [nvarchar](50) NULL,
	[hoten] [nvarchar](50) NULL,
	[lop] [nvarchar](50) NULL,
 CONSTRAINT [PK_SV] PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cookie] ON 
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (4, 104, N'3A15146D-3244-4067-BB60-6044A1771751')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (5, 101, N'F59CC944-CEB6-44BA-8059-E3960408DC2A')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (6, 101, N'897872E3-F7C2-4C9C-920B-0D4919A0997C')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (7, 101, N'193B2A3F-D234-48FC-A39D-AD6C938723A8')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (8, 101, N'C2C99FFA-0FF0-4A53-9D0B-B867FE10638A')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (9, 101, N'7D2576D5-4604-4172-A3B6-828E3ADFD21A')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (10, 101, N'AFEE1AAB-75B3-4B25-9C62-903937B5F5E8')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (11, 101, N'A8F2F50A-504B-42D4-BFFC-D05D62150627')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (12, 104, N'F09F77DA-6946-4AB8-B8BC-4CF0F0C2481D')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (13, 101, N'E50A1C6F-CE6D-443C-AFD3-028CC8DF5C45')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (14, 101, N'F075A2E5-13C2-4C40-B160-2EC6C3764E2E')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (15, 102, N'DF8BFED3-5BC0-430A-8E92-08DE7EEE844E')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (16, 101, N'593EDF68-EBFD-4AB6-8C31-3772591CBDFC')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (17, 101, N'9873F8E2-2F53-48AE-B00F-93B93CF4C015')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (18, 101, N'1BA20D40-FEE0-4ED1-B42F-0D06B74F2A28')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (19, 101, N'2393C1CB-67CF-4FD6-A0C0-7370756F1B89')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (20, 101, N'92229438-36CA-4FFB-90B2-58A64E112D6F')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (21, 101, N'1BB3FDE8-AABB-45A2-928F-747DEBD778C8')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (22, 101, N'D2E78552-949A-45ED-9B54-990CEFA6ECCF')
GO
INSERT [dbo].[Cookie] ([id], [masv], [cookie]) VALUES (23, 101, N'57F64EE8-28A4-4CAA-AF34-26FDC506346A')
GO
SET IDENTITY_INSERT [dbo].[Cookie] OFF
GO
INSERT [dbo].[Event] ([idE], [name], [date], [hocki], [DiemTG], [DiemVIP]) VALUES (1, N'Khai giảng', CAST(N'2023-09-05' AS Date), 20231, 10, 20)
GO
INSERT [dbo].[Event] ([idE], [name], [date], [hocki], [DiemTG], [DiemVIP]) VALUES (2, N'Mâm quả đoàn viên', CAST(N'2023-09-06' AS Date), 20231, 10, 15)
GO
INSERT [dbo].[Event] ([idE], [name], [date], [hocki], [DiemTG], [DiemVIP]) VALUES (3, N'Hát cho nhau nghe', CAST(N'2023-09-07' AS Date), 20231, 5, 10)
GO
INSERT [dbo].[Event] ([idE], [name], [date], [hocki], [DiemTG], [DiemVIP]) VALUES (4, N'Kéo co hội', CAST(N'2023-09-08' AS Date), 20231, 5, 10)
GO
INSERT [dbo].[Event] ([idE], [name], [date], [hocki], [DiemTG], [DiemVIP]) VALUES (5, N'Ăn thùng uống vại', CAST(N'2024-04-01' AS Date), 20232, 20, 30)
GO
INSERT [dbo].[Join] ([masv], [idE], [VaiTro]) VALUES (101, 1, 1)
GO
INSERT [dbo].[Join] ([masv], [idE], [VaiTro]) VALUES (101, 2, 1)
GO
INSERT [dbo].[Join] ([masv], [idE], [VaiTro]) VALUES (101, 3, 0)
GO
INSERT [dbo].[Join] ([masv], [idE], [VaiTro]) VALUES (102, 1, 2)
GO
INSERT [dbo].[Join] ([masv], [idE], [VaiTro]) VALUES (102, 2, 2)
GO
INSERT [dbo].[Join] ([masv], [idE], [VaiTro]) VALUES (102, 3, 1)
GO
INSERT [dbo].[Join] ([masv], [idE], [VaiTro]) VALUES (102, 4, 2)
GO
INSERT [dbo].[Join] ([masv], [idE], [VaiTro]) VALUES (103, 1, 0)
GO
INSERT [dbo].[Join] ([masv], [idE], [VaiTro]) VALUES (103, 2, 1)
GO
INSERT [dbo].[Join] ([masv], [idE], [VaiTro]) VALUES (103, 3, 1)
GO
INSERT [dbo].[Join] ([masv], [idE], [VaiTro]) VALUES (104, 1, 0)
GO
INSERT [dbo].[Join] ([masv], [idE], [VaiTro]) VALUES (105, 1, 1)
GO
INSERT [dbo].[Join] ([masv], [idE], [VaiTro]) VALUES (105, 2, 2)
GO
INSERT [dbo].[Join] ([masv], [idE], [VaiTro]) VALUES (105, 5, 2)
GO
INSERT [dbo].[SV] ([masv], [pw], [hoten], [lop]) VALUES (101, N'111a', N'Hiếu', N'56KMT')
GO
INSERT [dbo].[SV] ([masv], [pw], [hoten], [lop]) VALUES (102, N'222A', N'Thảo', N'56KMT')
GO
INSERT [dbo].[SV] ([masv], [pw], [hoten], [lop]) VALUES (103, N'333hello', N'Hoa', N'56KMT')
GO
INSERT [dbo].[SV] ([masv], [pw], [hoten], [lop]) VALUES (104, N'444HELLO', N'Cốp', N'56KMT')
GO
INSERT [dbo].[SV] ([masv], [pw], [hoten], [lop]) VALUES (105, N'555Hello', N'Chung', N'56KMT')
GO
INSERT [dbo].[SV] ([masv], [pw], [hoten], [lop]) VALUES (106, N'666', N'XYZ', N'57KMT')
GO
INSERT [dbo].[SV] ([masv], [pw], [hoten], [lop]) VALUES (107, N'777', N'Tèo', N'56DDK')
GO
ALTER TABLE [dbo].[Cookie]  WITH CHECK ADD  CONSTRAINT [FK_Cookie_SV] FOREIGN KEY([masv])
REFERENCES [dbo].[SV] ([masv])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Cookie] CHECK CONSTRAINT [FK_Cookie_SV]
GO
/****** Object:  StoredProcedure [dbo].[SP_LOGIN]    Script Date: 04/10/2023 20:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_LOGIN]
	@action nvarchar(50),
	@masv int=null,
	@pw nvarchar(50)=null,
	@cc varchar(50)=null
AS BEGIN
	
	if(@action='login')
	begin
	  --kiểm tra xem @masv+@pw có ok ko?
	  --ok:
	    -- đẻ ra 1 cc riêng biệt NEWID()
		-- lưu vào db table Cookie cho @masv
	    -- trả về 1 row chứa thông tin sv này+cc
	  --not ok: trả về NULL (ko row nào cả)
	  if exists(select masv,hoten,lop from SV where masv=@masv and pw=@pw and HASHBYTES('md5', pw)=HASHBYTES('md5', @pw))
	  begin
		set @cc = NewID(); --random, unique
		--delete để chỉ 1 máy cuối cùng đc login hoạt động
		--delete from Cookie where masv=@masv;
		insert into Cookie(masv,cookie)values(@masv,@cc);
		select masv,hoten,lop,@cc as cc from SV where masv=@masv and pw=@pw and HASHBYTES('md5', pw)=HASHBYTES('md5', @pw)
	  end
	end
	else if(@action='check_cc')
	begin
		--input: @masv, @cc
		--output: 1 row nếu cc đúng, empty row nếu cc sai
		if exists(select * from Cookie where masv=@masv and cookie=@cc and HASHBYTES('md5', cookie)=HASHBYTES('md5', @cc))
			select masv,hoten,lop,@cc as cc from SV where masv=@masv;
		else
			select masv,hoten,lop,@cc as cc from SV where 1=0;
	end
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_ThongKe]    Script Date: 04/10/2023 20:00:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_ThongKe]
	@lop nvarchar(50),
	@hocki int
as
BEGIN
	select S.masv,S.hoten,S.Lop,
		isnull(sum(case when J.VaiTro=0 then 0 else 1 end),0) as SoLanThamGiaE,
		isnull(sum(case when J.VaiTro=1 then E.DiemTG 
						when J.VaiTro=2 then E.DiemVIP
						when J.VaiTro=0 then 0
				   end),0) as Diem
	from (SV S left join [join] J on S.masv=J.masv)
		left join [Event] E on E.idE=J.idE and E.hocki=@hocki
	where (@LOP = 'ALL')OR(S.lop like @LOP)
	Group by S.masv,S.hoten,S.Lop;
END;
GO
USE [master]
GO
ALTER DATABASE [QL_DRL] SET  READ_WRITE 
GO
