CREATE DATABASE [ThucHanh]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ThucHanh', FILENAME = N'd:\ThucHanh.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ThucHanh_log', FILENAME = N'd:\ThucHanh_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

CREATE TABLE [dbo].[Company](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[address] [nvarchar](255) NOT NULL,
	[lat] [float] NULL,
	[lng] [float] NULL,
	[phone] [varchar](50) NULL,
	[zalo]  [varchar](100) NULL,
	[del_at] [datetime] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
