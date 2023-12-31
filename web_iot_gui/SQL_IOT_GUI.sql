USE [master]
GO
/****** Object:  Database [demo_iot_sensor]    Script Date: 11/10/2023 11:13:51 ******/
CREATE DATABASE [demo_iot_sensor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'demo_iot_sensor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\demo_iot_sensor.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'demo_iot_sensor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\demo_iot_sensor_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [demo_iot_sensor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [demo_iot_sensor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET ARITHABORT OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [demo_iot_sensor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [demo_iot_sensor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET  DISABLE_BROKER 
GO
ALTER DATABASE [demo_iot_sensor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [demo_iot_sensor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [demo_iot_sensor] SET  MULTI_USER 
GO
ALTER DATABASE [demo_iot_sensor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [demo_iot_sensor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [demo_iot_sensor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [demo_iot_sensor] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [demo_iot_sensor] SET DELAYED_DURABILITY = DISABLED 
GO
USE [demo_iot_sensor]
GO
/****** Object:  Table [dbo].[Sensor]    Script Date: 11/10/2023 11:13:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sensor](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[status] [int] NULL,
	[time] [datetime] NULL,
 CONSTRAINT [PK_Sensor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Sensor] ([id], [name], [status], [time]) VALUES (1, N'bơm 1', 0, CAST(N'2023-10-09 15:19:12.853' AS DateTime))
GO
INSERT [dbo].[Sensor] ([id], [name], [status], [time]) VALUES (2, N'bơm 2', 1, CAST(N'2023-10-11 11:06:48.853' AS DateTime))
GO

USE [demo_iot_sensor]
GO
/****** Object:  Trigger [dbo].[TG_SENSOR_Auto_update_time]    Script Date: 11/10/2023 11:14:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		do duy cop
-- Create date: 9.oct.2023
-- Description:	auto change time to NOW when change status
-- =============================================
CREATE TRIGGER [dbo].[TG_SENSOR_Auto_update_time]
   ON  [dbo].[Sensor]
   AFTER INSERT, UPDATE
AS 
BEGIN
	--có bảng tên là INSERTED == cấu trúc với bảng bị trigger
	update Sensor set time=getdate() 
	where id in (select id from INSERTED);
END


USE [master]
GO
ALTER DATABASE [demo_iot_sensor] SET  READ_WRITE 
GO
