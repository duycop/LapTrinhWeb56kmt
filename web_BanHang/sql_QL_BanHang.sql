USE [master]
GO
/****** Object:  Database [QL_BH]    Script Date: 16/09/2023 00:13:20 ******/
CREATE DATABASE [QL_BH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QL_BH', FILENAME = N'D:\SQL2014\56KMT\QL_BH.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QL_BH_log', FILENAME = N'D:\SQL2014\56KMT\QL_BH_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QL_BH] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_BH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_BH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_BH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_BH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_BH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_BH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_BH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QL_BH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_BH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_BH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_BH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_BH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_BH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_BH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_BH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_BH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QL_BH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_BH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_BH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_BH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_BH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_BH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_BH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_BH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_BH] SET  MULTI_USER 
GO
ALTER DATABASE [QL_BH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_BH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QL_BH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QL_BH] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QL_BH] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QL_BH]
GO
/****** Object:  Table [dbo].[ChiTietHDB]    Script Date: 16/09/2023 00:13:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHDB](
	[maHDB] [int] NOT NULL,
	[maHH] [int] NOT NULL,
	[SoLuongBan] [int] NULL,
	[DonGiaBan] [money] NULL,
 CONSTRAINT [PK_ChiTietHDB] PRIMARY KEY CLUSTERED 
(
	[maHDB] ASC,
	[maHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 16/09/2023 00:13:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[maHH] [int] NOT NULL,
	[TenHH] [nvarchar](50) NULL,
	[DonGia] [money] NULL,
	[DVT] [nvarchar](50) NULL,
 CONSTRAINT [PK_HangHOa] PRIMARY KEY CLUSTERED 
(
	[maHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 16/09/2023 00:13:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[maHDB] [int] IDENTITY(1,1) NOT NULL,
	[NgayBan] [datetime] NULL CONSTRAINT [DF_HoaDonBan_NgayBan]  DEFAULT (getdate()),
	[MaKH] [int] NULL,
	[MaNV] [int] NULL,
 CONSTRAINT [PK_HoaDonBan] PRIMARY KEY CLUSTERED 
(
	[maHDB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 16/09/2023 00:13:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKH] [int] NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[maKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 16/09/2023 00:13:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNV] [int] NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[ChiTietHDB] ([maHDB], [maHH], [SoLuongBan], [DonGiaBan]) VALUES (1, 2, 1, 4000.0000)
GO
INSERT [dbo].[ChiTietHDB] ([maHDB], [maHH], [SoLuongBan], [DonGiaBan]) VALUES (1, 3, 2, 3000.0000)
GO
INSERT [dbo].[ChiTietHDB] ([maHDB], [maHH], [SoLuongBan], [DonGiaBan]) VALUES (6, 1, 10, 8000.0000)
GO
INSERT [dbo].[ChiTietHDB] ([maHDB], [maHH], [SoLuongBan], [DonGiaBan]) VALUES (6, 2, 20, 9000.0000)
GO
INSERT [dbo].[ChiTietHDB] ([maHDB], [maHH], [SoLuongBan], [DonGiaBan]) VALUES (7, 1, 10, 8000.0000)
GO
INSERT [dbo].[ChiTietHDB] ([maHDB], [maHH], [SoLuongBan], [DonGiaBan]) VALUES (7, 2, 20, 9000.0000)
GO
INSERT [dbo].[ChiTietHDB] ([maHDB], [maHH], [SoLuongBan], [DonGiaBan]) VALUES (8, 1, 10, 8000.0000)
GO
INSERT [dbo].[ChiTietHDB] ([maHDB], [maHH], [SoLuongBan], [DonGiaBan]) VALUES (8, 2, 20, 9000.0000)
GO
INSERT [dbo].[ChiTietHDB] ([maHDB], [maHH], [SoLuongBan], [DonGiaBan]) VALUES (13, 1, 10, 8000.0000)
GO
INSERT [dbo].[ChiTietHDB] ([maHDB], [maHH], [SoLuongBan], [DonGiaBan]) VALUES (13, 3, 33, 333000.0000)
GO
INSERT [dbo].[ChiTietHDB] ([maHDB], [maHH], [SoLuongBan], [DonGiaBan]) VALUES (14, 1, 10, 8000.0000)
GO
INSERT [dbo].[ChiTietHDB] ([maHDB], [maHH], [SoLuongBan], [DonGiaBan]) VALUES (14, 3, 44, 333000.0000)
GO
INSERT [dbo].[ChiTietHDB] ([maHDB], [maHH], [SoLuongBan], [DonGiaBan]) VALUES (18, 1, 10, 8000.0000)
GO
INSERT [dbo].[ChiTietHDB] ([maHDB], [maHH], [SoLuongBan], [DonGiaBan]) VALUES (18, 3, 55, 333000.0000)
GO
INSERT [dbo].[HangHoa] ([maHH], [TenHH], [DonGia], [DVT]) VALUES (1, N'Bim Bim', 5000.0000, N'Gói')
GO
INSERT [dbo].[HangHoa] ([maHH], [TenHH], [DonGia], [DVT]) VALUES (2, N'Mì Tôm Hảo Hảo', 4000.0000, N'Gói')
GO
INSERT [dbo].[HangHoa] ([maHH], [TenHH], [DonGia], [DVT]) VALUES (3, N'Trứng gà', 3000.0000, N'Quả')
GO
SET IDENTITY_INSERT [dbo].[HoaDonBan] ON 

GO
INSERT [dbo].[HoaDonBan] ([maHDB], [NgayBan], [MaKH], [MaNV]) VALUES (1, CAST(N'2023-09-15 13:17:53.323' AS DateTime), 2, 1)
GO
INSERT [dbo].[HoaDonBan] ([maHDB], [NgayBan], [MaKH], [MaNV]) VALUES (6, CAST(N'2023-09-15 14:07:04.750' AS DateTime), 1, 1)
GO
INSERT [dbo].[HoaDonBan] ([maHDB], [NgayBan], [MaKH], [MaNV]) VALUES (7, CAST(N'2023-09-15 14:18:53.610' AS DateTime), 1, 1)
GO
INSERT [dbo].[HoaDonBan] ([maHDB], [NgayBan], [MaKH], [MaNV]) VALUES (8, CAST(N'2023-09-15 14:19:50.510' AS DateTime), 1, 1)
GO
INSERT [dbo].[HoaDonBan] ([maHDB], [NgayBan], [MaKH], [MaNV]) VALUES (13, CAST(N'2023-09-15 14:30:05.203' AS DateTime), 1, 1)
GO
INSERT [dbo].[HoaDonBan] ([maHDB], [NgayBan], [MaKH], [MaNV]) VALUES (14, CAST(N'2023-09-15 14:31:18.947' AS DateTime), 1, 1)
GO
INSERT [dbo].[HoaDonBan] ([maHDB], [NgayBan], [MaKH], [MaNV]) VALUES (18, CAST(N'2023-09-15 14:35:50.913' AS DateTime), 1, 1)
GO
SET IDENTITY_INSERT [dbo].[HoaDonBan] OFF
GO
INSERT [dbo].[KhachHang] ([maKH], [TenKH], [SDT]) VALUES (1, N'Khách lẻ', N'ko có')
GO
INSERT [dbo].[KhachHang] ([maKH], [TenKH], [SDT]) VALUES (2, N'mr Cốp', N'0986543')
GO
INSERT [dbo].[NhanVien] ([maNV], [TenNV], [SDT]) VALUES (1, N'Nguyễn Văn A', N'0987654321')
GO
ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHDB_HangHoa] FOREIGN KEY([maHH])
REFERENCES [dbo].[HangHoa] ([maHH])
GO
ALTER TABLE [dbo].[ChiTietHDB] CHECK CONSTRAINT [FK_ChiTietHDB_HangHoa]
GO
ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHDB_HoaDonBan] FOREIGN KEY([maHDB])
REFERENCES [dbo].[HoaDonBan] ([maHDB])
GO
ALTER TABLE [dbo].[ChiTietHDB] CHECK CONSTRAINT [FK_ChiTietHDB_HoaDonBan]
GO
ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD  CONSTRAINT [CK_ChiTietHDB_GIA_BAN_AM] CHECK  (([DonGiaBan]>=(0)))
GO
ALTER TABLE [dbo].[ChiTietHDB] CHECK CONSTRAINT [CK_ChiTietHDB_GIA_BAN_AM]
GO
ALTER TABLE [dbo].[ChiTietHDB]  WITH CHECK ADD  CONSTRAINT [CK_ChiTietHDB_SO_LUONG_AM] CHECK  (([SoLuongBan]>(0)))
GO
ALTER TABLE [dbo].[ChiTietHDB] CHECK CONSTRAINT [CK_ChiTietHDB_SO_LUONG_AM]
GO
/****** Object:  StoredProcedure [dbo].[SP_BanHang]    Script Date: 16/09/2023 00:13:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Do Duy Cop
-- Create date: 15.9.2023
-- Description:	Xử lý các nghiệp vụ của việc mua hàng
-- =============================================
CREATE PROCEDURE [dbo].[SP_BanHang]
	@action		Nvarchar(50),
	@maKH		int		= null,
	@maHDB		int		= null,
	@MaHH		int		= null,
	@SoLuongBan	int		= null,
	@DonGiaBan	MONEY	= null
AS
BEGIN
	IF(@action='add_hoa_don_ban')
	BEGIN
	  -- thêm 1 row vào bảng HoaDonBan
	  INSERT INTO HoaDonBan(MaKH)VALUES(@maKH);
	  -- lấy mã Hóa đơn bán vừa tự sinh để trả về
	  SELECT IDENT_CURRENT('HoaDonBan') as ID;
	END
	ELSE IF(@action='add_chi_tiet_ban')
	BEGIN
	  IF EXISTS(SELECT * FROM ChiTietHDB WHERE maHDB=@maHDB AND MaHH=@MaHH)
	  BEGIN
		RaisError(N'Trùng mã hàng %d của hóa đơn %d',16,1,@maHH, @maHDB)
		RETURN;
	  END;
	  -- thêm 1 row vào bảng ChiTietHDB
	  INSERT INTO ChiTietHDB(maHDB, MaHH, SoLuongBan, DonGiaBan)
	  VALUES(@maHDB, @MaHH, @SoLuongBan, @DonGiaBan);
	END
	ELSE IF(@action='get_ds_hoa_don_ban')
	BEGIN
		SELECT top 100 H.maHDB, H.MaNV, V.TenNV, V.SDT as SDTNV, H.MaKH, K.TenKH, K.SDT as SDTKH, H.NgayBan, 
			(select sum(SoLuongBan*DonGiaBan) from ChiTietHDB C where C.maHDB=H.maHDB) as TongTien
		FROM HoaDonBan H 
		     join KhachHang K on H.maHDB=K.maKH
			 join NhanVien  V on H.MaNV =V.maNV
		WHERE maHDB in(select distinct maHDB from ChiTietHDB)
		ORDER BY maHDB desc;
	END
	ELSE IF(@action='get_chitiet_hoa_don_ban')
	BEGIN
		SELECT C.maHH, H.TenHH, H.DVT, C.DonGiaBan, C.SoLuongBan, C.DonGiaBan * C.SoLuongBan as ThanhTien
		FROM ChiTietHDB C join HangHoa H on H.maHH=C.maHH
		WHERE maHDB = @maHDB
		ORDER BY maHH;
	END
	
END

GO
/****** Object:  StoredProcedure [dbo].[SP_KhachHang]    Script Date: 16/09/2023 00:13:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		do duy cop
-- Create date: 15.09.2023
-- Description:	xử lý bảng khách hàng
-- =============================================
CREATE PROCEDURE [dbo].[SP_KhachHang]
	@action nvarchar(50)
AS
BEGIN
	IF(@action='get_ds_kh')
	BEGIN
		SELECT *
		FROM KhachHang
		ORDER BY maKH;
	END
END

GO
/****** Object:  StoredProcedure [dbo].[SP_NhanVien]    Script Date: 16/09/2023 00:13:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		do duy cop
-- Create date: 15.09.2023
-- Description:	xử lý bảng Nhân viên
-- =============================================
CREATE PROCEDURE [dbo].[SP_NhanVien]
	@action nvarchar(50)
AS
BEGIN
	IF(@action='get_ds_nv')
	BEGIN
		SELECT *
		FROM NhanVien
		ORDER BY maNV;
	END
END

GO
USE [master]
GO
ALTER DATABASE [QL_BH] SET  READ_WRITE 
GO
