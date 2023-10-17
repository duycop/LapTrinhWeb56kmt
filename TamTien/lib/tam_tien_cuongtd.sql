USE [HotBath]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_ss]    Script Date: 16/10/2023 00:47:11 ******/
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
/****** Object:  Table [dbo].[Phong]    Script Date: 16/10/2023 00:47:11 ******/
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
/****** Object:  Table [dbo].[Tam]    Script Date: 16/10/2023 00:47:11 ******/
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
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (1, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (2, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (3, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (4, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (5, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (6, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (7, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (8, 1, 1)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (9, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (10, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (11, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (12, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (13, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (14, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (15, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (16, 0, 1)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (17, 0, 1)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (18, 0, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (19, 0, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (20, 0, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (21, 0, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (22, 0, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (23, 0, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (24, 0, 1)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (25, 0, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (26, 0, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (27, 0, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (28, 0, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (29, 0, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (30, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Tam] ON 

GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (1, 1, CAST(N'2023-10-15 15:32:21.017' AS DateTime), CAST(N'2023-10-15 23:20:05.457' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (2, 2, CAST(N'2023-10-15 15:40:53.900' AS DateTime), CAST(N'2023-10-15 23:09:16.957' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (3, 3, CAST(N'2023-10-15 15:41:01.390' AS DateTime), CAST(N'2023-10-16 00:19:27.563' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (4, 4, CAST(N'2023-10-15 15:41:06.403' AS DateTime), CAST(N'2023-10-15 23:29:52.320' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (5, 18, CAST(N'2023-10-15 15:43:29.857' AS DateTime), CAST(N'2023-10-15 23:47:33.267' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (6, 17, CAST(N'2023-10-15 15:43:29.857' AS DateTime), CAST(N'2023-10-16 00:19:29.670' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (7, 16, CAST(N'2023-10-15 15:43:29.857' AS DateTime), CAST(N'2023-10-16 00:05:29.043' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (8, 18, CAST(N'2023-10-15 16:01:54.930' AS DateTime), CAST(N'2023-10-15 23:47:33.267' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (9, 17, CAST(N'2023-10-15 16:01:54.930' AS DateTime), CAST(N'2023-10-16 00:19:29.670' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (10, 16, CAST(N'2023-10-15 16:01:54.930' AS DateTime), CAST(N'2023-10-16 00:05:29.043' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (11, 1, CAST(N'2023-10-15 16:10:36.667' AS DateTime), CAST(N'2023-10-15 23:20:05.457' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (12, 3, CAST(N'2023-10-15 16:10:44.460' AS DateTime), CAST(N'2023-10-16 00:19:27.563' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (13, 2, CAST(N'2023-10-15 16:10:51.350' AS DateTime), CAST(N'2023-10-15 23:09:16.957' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (14, 19, CAST(N'2023-10-15 16:10:59.090' AS DateTime), CAST(N'2023-10-15 23:35:46.567' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (15, 6, CAST(N'2023-10-15 16:11:03.507' AS DateTime), CAST(N'2023-10-15 23:47:36.210' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (16, 20, CAST(N'2023-10-15 16:11:08.347' AS DateTime), CAST(N'2023-10-16 00:12:58.593' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (17, 4, CAST(N'2023-10-15 16:11:11.890' AS DateTime), CAST(N'2023-10-15 23:29:52.320' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (18, 21, CAST(N'2023-10-15 16:11:19.360' AS DateTime), CAST(N'2023-10-15 23:53:08.037' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (19, 5, CAST(N'2023-10-15 16:11:21.183' AS DateTime), CAST(N'2023-10-15 23:07:39.787' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (20, 7, CAST(N'2023-10-15 16:11:28.977' AS DateTime), CAST(N'2023-10-16 00:19:45.770' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (21, 1, CAST(N'2023-10-15 16:43:11.967' AS DateTime), CAST(N'2023-10-15 23:20:05.457' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (22, 16, CAST(N'2023-10-15 17:04:32.173' AS DateTime), CAST(N'2023-10-16 00:05:29.043' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (23, 2, CAST(N'2023-10-15 17:04:35.827' AS DateTime), CAST(N'2023-10-15 23:09:16.957' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (24, 1, CAST(N'2023-10-15 19:07:40.723' AS DateTime), CAST(N'2023-10-15 23:20:05.457' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (25, 2, CAST(N'2023-10-15 19:07:45.347' AS DateTime), CAST(N'2023-10-15 23:09:16.957' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (26, 17, CAST(N'2023-10-15 19:07:55.300' AS DateTime), CAST(N'2023-10-16 00:19:29.670' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (27, 16, CAST(N'2023-10-15 19:07:55.300' AS DateTime), CAST(N'2023-10-16 00:05:29.043' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (28, 3, CAST(N'2023-10-15 19:08:05.883' AS DateTime), CAST(N'2023-10-16 00:19:27.563' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (29, 2, CAST(N'2023-10-15 19:24:56.320' AS DateTime), CAST(N'2023-10-15 23:09:16.957' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (30, 1, CAST(N'2023-10-15 19:24:56.320' AS DateTime), CAST(N'2023-10-15 23:20:05.457' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (31, 2, CAST(N'2023-10-15 19:27:48.013' AS DateTime), CAST(N'2023-10-15 23:09:16.957' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (32, 3, CAST(N'2023-10-15 19:27:50.323' AS DateTime), CAST(N'2023-10-16 00:19:27.563' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (33, 16, CAST(N'2023-10-15 19:27:56.753' AS DateTime), CAST(N'2023-10-16 00:05:29.043' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (34, 17, CAST(N'2023-10-15 19:27:58.977' AS DateTime), CAST(N'2023-10-16 00:19:29.670' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (35, 18, CAST(N'2023-10-15 19:28:01.540' AS DateTime), CAST(N'2023-10-15 23:47:33.267' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (36, 19, CAST(N'2023-10-15 19:28:05.873' AS DateTime), CAST(N'2023-10-15 23:35:46.567' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (37, 3, CAST(N'2023-10-15 19:41:54.550' AS DateTime), CAST(N'2023-10-16 00:19:27.563' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (38, 18, CAST(N'2023-10-15 19:42:20.243' AS DateTime), CAST(N'2023-10-15 23:47:33.267' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (39, 16, CAST(N'2023-10-15 19:42:22.203' AS DateTime), CAST(N'2023-10-16 00:05:29.043' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (40, 1, CAST(N'2023-10-15 19:42:27.710' AS DateTime), CAST(N'2023-10-15 23:20:05.457' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (41, 2, CAST(N'2023-10-15 19:42:50.503' AS DateTime), CAST(N'2023-10-15 23:09:16.957' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (42, 4, CAST(N'2023-10-15 19:42:53.400' AS DateTime), CAST(N'2023-10-15 23:29:52.320' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (43, 4, CAST(N'2023-10-15 19:43:00.353' AS DateTime), CAST(N'2023-10-15 23:29:52.320' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (44, 5, CAST(N'2023-10-15 19:43:05.580' AS DateTime), CAST(N'2023-10-15 23:07:39.787' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (45, 3, CAST(N'2023-10-15 20:05:19.540' AS DateTime), CAST(N'2023-10-16 00:19:27.563' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (46, 23, CAST(N'2023-10-15 20:05:22.417' AS DateTime), CAST(N'2023-10-16 00:19:43.493' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (47, 24, CAST(N'2023-10-15 20:05:28.637' AS DateTime), CAST(N'2023-10-16 00:04:38.323' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (48, 3, CAST(N'2023-10-15 20:05:49.660' AS DateTime), CAST(N'2023-10-16 00:19:27.563' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (49, 4, CAST(N'2023-10-15 20:05:57.040' AS DateTime), CAST(N'2023-10-15 23:29:52.320' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (50, 24, CAST(N'2023-10-15 20:06:04.910' AS DateTime), CAST(N'2023-10-16 00:04:38.323' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (51, 5, CAST(N'2023-10-15 20:26:09.027' AS DateTime), CAST(N'2023-10-15 23:07:39.787' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (52, 3, CAST(N'2023-10-15 20:26:21.253' AS DateTime), CAST(N'2023-10-16 00:19:27.563' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (53, 17, CAST(N'2023-10-15 20:30:55.100' AS DateTime), CAST(N'2023-10-16 00:19:29.670' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (54, 18, CAST(N'2023-10-15 20:31:00.323' AS DateTime), CAST(N'2023-10-15 23:47:33.267' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (55, 11, CAST(N'2023-10-15 21:16:54.667' AS DateTime), CAST(N'2023-10-15 23:09:04.667' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (56, 4, CAST(N'2023-10-15 21:16:57.467' AS DateTime), CAST(N'2023-10-15 23:29:52.320' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (57, 18, CAST(N'2023-10-15 21:38:33.360' AS DateTime), CAST(N'2023-10-15 23:47:33.267' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (58, 16, CAST(N'2023-10-15 21:44:15.580' AS DateTime), CAST(N'2023-10-16 00:05:29.043' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (59, 17, CAST(N'2023-10-15 21:44:17.870' AS DateTime), CAST(N'2023-10-16 00:19:29.670' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (60, 8, CAST(N'2023-10-15 21:47:30.770' AS DateTime), CAST(N'2023-10-15 23:35:54.830' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (61, 7, CAST(N'2023-10-15 21:47:34.870' AS DateTime), CAST(N'2023-10-16 00:19:45.770' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (62, 15, CAST(N'2023-10-15 21:47:37.000' AS DateTime), CAST(N'2023-10-16 00:19:36.487' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (63, 19, CAST(N'2023-10-15 21:47:39.727' AS DateTime), CAST(N'2023-10-15 23:35:46.567' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (65, 24, CAST(N'2023-10-15 21:58:54.420' AS DateTime), CAST(N'2023-10-16 00:04:38.323' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (66, 24, CAST(N'2023-10-15 22:09:31.160' AS DateTime), CAST(N'2023-10-16 00:04:38.323' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (67, 15, CAST(N'2023-10-15 22:09:33.090' AS DateTime), CAST(N'2023-10-16 00:19:36.487' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (68, 8, CAST(N'2023-10-15 22:09:35.493' AS DateTime), CAST(N'2023-10-15 23:35:54.830' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (69, 16, CAST(N'2023-10-15 22:09:38.177' AS DateTime), CAST(N'2023-10-16 00:05:29.043' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (70, 1, CAST(N'2023-10-15 22:10:42.477' AS DateTime), CAST(N'2023-10-15 23:20:05.457' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (71, 19, CAST(N'2023-10-15 22:10:45.857' AS DateTime), CAST(N'2023-10-15 23:35:46.567' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (72, 27, CAST(N'2023-10-15 22:10:48.060' AS DateTime), CAST(N'2023-10-15 23:53:10.133' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (73, 6, CAST(N'2023-10-15 22:10:53.857' AS DateTime), CAST(N'2023-10-15 23:47:36.210' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (74, 7, CAST(N'2023-10-15 22:10:57.240' AS DateTime), CAST(N'2023-10-16 00:19:45.770' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (75, 14, CAST(N'2023-10-15 22:10:58.667' AS DateTime), CAST(N'2023-10-16 00:19:39.173' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (76, 25, CAST(N'2023-10-15 22:11:00.187' AS DateTime), CAST(N'2023-10-15 23:40:21.683' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (77, 26, CAST(N'2023-10-15 22:11:01.513' AS DateTime), CAST(N'2023-10-15 23:35:51.080' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (78, 17, CAST(N'2023-10-15 22:11:02.680' AS DateTime), CAST(N'2023-10-16 00:19:29.670' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (79, 18, CAST(N'2023-10-15 22:11:03.943' AS DateTime), CAST(N'2023-10-15 23:47:33.267' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (80, 20, CAST(N'2023-10-15 22:11:05.983' AS DateTime), CAST(N'2023-10-16 00:12:58.593' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (81, 28, CAST(N'2023-10-15 22:14:22.900' AS DateTime), CAST(N'2023-10-15 23:54:34.750' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (84, 12, CAST(N'2023-10-15 22:16:44.580' AS DateTime), CAST(N'2023-10-15 23:08:54.687' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (85, 4, CAST(N'2023-10-15 22:16:46.517' AS DateTime), CAST(N'2023-10-15 23:29:52.320' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (86, 5, CAST(N'2023-10-15 22:16:51.710' AS DateTime), CAST(N'2023-10-15 23:07:39.787' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (87, 13, CAST(N'2023-10-15 22:18:22.823' AS DateTime), CAST(N'2023-10-15 23:08:52.780' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (88, 14, CAST(N'2023-10-15 22:18:32.953' AS DateTime), CAST(N'2023-10-16 00:19:39.173' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (89, 13, CAST(N'2023-10-15 22:18:34.857' AS DateTime), CAST(N'2023-10-15 23:08:52.780' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (90, 11, CAST(N'2023-10-15 22:24:46.120' AS DateTime), CAST(N'2023-10-15 23:09:04.667' AS DateTime), 1)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (91, 15, CAST(N'2023-10-15 22:30:56.600' AS DateTime), CAST(N'2023-10-16 00:19:36.487' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (92, 7, CAST(N'2023-10-15 22:30:58.180' AS DateTime), CAST(N'2023-10-16 00:19:45.770' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (93, 8, CAST(N'2023-10-15 22:57:43.260' AS DateTime), CAST(N'2023-10-15 23:35:54.830' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (94, 17, CAST(N'2023-10-15 22:57:55.057' AS DateTime), CAST(N'2023-10-16 00:19:29.670' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (95, 16, CAST(N'2023-10-15 22:57:56.683' AS DateTime), CAST(N'2023-10-16 00:05:29.043' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (96, 18, CAST(N'2023-10-15 23:03:02.300' AS DateTime), CAST(N'2023-10-15 23:47:33.267' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (97, 19, CAST(N'2023-10-15 23:03:05.100' AS DateTime), CAST(N'2023-10-15 23:35:46.567' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (98, 7, CAST(N'2023-10-15 23:03:06.800' AS DateTime), CAST(N'2023-10-16 00:19:45.770' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (99, 24, CAST(N'2023-10-15 23:03:09.013' AS DateTime), CAST(N'2023-10-16 00:04:38.323' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (100, 12, CAST(N'2023-10-15 23:03:11.843' AS DateTime), CAST(N'2023-10-15 23:08:54.687' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (101, 1, CAST(N'2023-10-15 23:04:56.473' AS DateTime), CAST(N'2023-10-15 23:20:05.457' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (102, 25, CAST(N'2023-10-15 23:05:17.617' AS DateTime), CAST(N'2023-10-15 23:40:21.683' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (103, 26, CAST(N'2023-10-15 23:05:21.970' AS DateTime), CAST(N'2023-10-15 23:35:51.080' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (104, 27, CAST(N'2023-10-15 23:05:24.183' AS DateTime), CAST(N'2023-10-15 23:53:10.133' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (105, 28, CAST(N'2023-10-15 23:05:26.183' AS DateTime), CAST(N'2023-10-15 23:54:34.750' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (106, 4, CAST(N'2023-10-15 23:05:27.823' AS DateTime), CAST(N'2023-10-15 23:29:52.320' AS DateTime), 1)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (107, 6, CAST(N'2023-10-15 23:05:29.623' AS DateTime), CAST(N'2023-10-15 23:47:36.210' AS DateTime), 1)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (108, 5, CAST(N'2023-10-15 23:05:31.657' AS DateTime), CAST(N'2023-10-15 23:07:39.787' AS DateTime), 1)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (109, 2, CAST(N'2023-10-15 23:05:52.193' AS DateTime), CAST(N'2023-10-15 23:09:16.957' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (110, 4, CAST(N'2023-10-15 23:05:58.693' AS DateTime), CAST(N'2023-10-15 23:29:52.320' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (111, 3, CAST(N'2023-10-15 23:06:00.817' AS DateTime), CAST(N'2023-10-16 00:19:27.563' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (112, 20, CAST(N'2023-10-15 23:06:04.337' AS DateTime), CAST(N'2023-10-16 00:12:58.593' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (113, 5, CAST(N'2023-10-15 23:06:06.590' AS DateTime), CAST(N'2023-10-15 23:07:39.787' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (114, 6, CAST(N'2023-10-15 23:06:08.700' AS DateTime), CAST(N'2023-10-15 23:47:36.210' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (115, 22, CAST(N'2023-10-15 23:06:11.200' AS DateTime), CAST(N'2023-10-15 23:24:17.413' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (116, 23, CAST(N'2023-10-15 23:06:17.093' AS DateTime), CAST(N'2023-10-16 00:19:43.493' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (117, 21, CAST(N'2023-10-15 23:06:19.747' AS DateTime), CAST(N'2023-10-15 23:53:08.037' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (118, 15, CAST(N'2023-10-15 23:06:22.357' AS DateTime), CAST(N'2023-10-15 23:47:38.693' AS DateTime), 1)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (119, 30, CAST(N'2023-10-15 23:06:26.823' AS DateTime), CAST(N'2023-10-15 23:19:59.853' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (120, 29, CAST(N'2023-10-15 23:06:28.807' AS DateTime), CAST(N'2023-10-15 23:07:23.433' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (121, 11, CAST(N'2023-10-15 23:06:30.253' AS DateTime), CAST(N'2023-10-15 23:09:04.667' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (122, 10, CAST(N'2023-10-15 23:06:31.770' AS DateTime), CAST(N'2023-10-15 23:09:06.547' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (123, 9, CAST(N'2023-10-15 23:06:33.357' AS DateTime), CAST(N'2023-10-16 00:19:32.327' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (124, 13, CAST(N'2023-10-15 23:06:34.833' AS DateTime), CAST(N'2023-10-15 23:08:52.780' AS DateTime), 1)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (125, 14, CAST(N'2023-10-15 23:06:36.520' AS DateTime), CAST(N'2023-10-16 00:19:39.173' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (126, 15, CAST(N'2023-10-15 23:08:27.060' AS DateTime), CAST(N'2023-10-15 23:47:38.693' AS DateTime), 1)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (127, 14, CAST(N'2023-10-15 23:08:32.130' AS DateTime), CAST(N'2023-10-15 23:24:36.820' AS DateTime), 1)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (128, 12, CAST(N'2023-10-15 23:08:36.157' AS DateTime), CAST(N'2023-10-15 23:08:54.687' AS DateTime), 1)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (129, 30, CAST(N'2023-10-15 23:08:43.563' AS DateTime), CAST(N'2023-10-15 23:19:59.853' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (130, 24, CAST(N'2023-10-15 23:09:14.120' AS DateTime), CAST(N'2023-10-16 00:04:38.323' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (131, 14, CAST(N'2023-10-15 23:09:18.560' AS DateTime), CAST(N'2023-10-16 00:19:39.173' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (132, 4, CAST(N'2023-10-15 23:14:40.270' AS DateTime), CAST(N'2023-10-15 23:29:52.320' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (133, 20, CAST(N'2023-10-15 23:23:41.617' AS DateTime), CAST(N'2023-10-16 00:12:58.593' AS DateTime), 1)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (134, 25, CAST(N'2023-10-15 23:24:47.397' AS DateTime), CAST(N'2023-10-15 23:40:21.683' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (135, 19, CAST(N'2023-10-15 23:28:52.803' AS DateTime), CAST(N'2023-10-15 23:35:46.567' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (136, 18, CAST(N'2023-10-15 23:28:58.380' AS DateTime), CAST(N'2023-10-15 23:47:33.267' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (137, 6, CAST(N'2023-10-15 23:29:00.663' AS DateTime), CAST(N'2023-10-15 23:47:36.210' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (138, 8, CAST(N'2023-10-15 23:29:02.620' AS DateTime), CAST(N'2023-10-15 23:35:54.830' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (139, 15, CAST(N'2023-10-15 23:29:08.423' AS DateTime), CAST(N'2023-10-16 00:19:36.487' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (140, 24, CAST(N'2023-10-15 23:33:09.440' AS DateTime), CAST(N'2023-10-16 00:04:38.323' AS DateTime), 1)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (141, 26, CAST(N'2023-10-15 23:35:01.533' AS DateTime), CAST(N'2023-10-15 23:35:51.080' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (142, 27, CAST(N'2023-10-15 23:35:04.450' AS DateTime), CAST(N'2023-10-15 23:53:10.133' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (143, 28, CAST(N'2023-10-15 23:35:07.030' AS DateTime), CAST(N'2023-10-15 23:54:34.750' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (144, 21, CAST(N'2023-10-15 23:35:10.640' AS DateTime), CAST(N'2023-10-15 23:53:08.037' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (145, 7, CAST(N'2023-10-15 23:35:17.897' AS DateTime), CAST(N'2023-10-16 00:19:45.770' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (146, 8, CAST(N'2023-10-15 23:35:21.773' AS DateTime), CAST(N'2023-10-15 23:35:54.830' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (147, 20, CAST(N'2023-10-15 23:35:29.323' AS DateTime), CAST(N'2023-10-16 00:12:58.593' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (148, 17, CAST(N'2023-10-15 23:35:31.737' AS DateTime), CAST(N'2023-10-16 00:19:29.670' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (149, 16, CAST(N'2023-10-15 23:35:33.507' AS DateTime), CAST(N'2023-10-16 00:05:29.043' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (150, 20, CAST(N'2023-10-15 23:57:20.643' AS DateTime), CAST(N'2023-10-16 00:12:58.593' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (151, 9, CAST(N'2023-10-16 00:04:05.180' AS DateTime), CAST(N'2023-10-16 00:19:32.327' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (152, 3, CAST(N'2023-10-16 00:04:07.893' AS DateTime), CAST(N'2023-10-16 00:19:27.563' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (153, 17, CAST(N'2023-10-16 00:04:14.100' AS DateTime), CAST(N'2023-10-16 00:19:29.670' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (154, 24, CAST(N'2023-10-16 00:04:16.520' AS DateTime), CAST(N'2023-10-16 00:04:38.323' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (155, 16, CAST(N'2023-10-16 00:04:27.457' AS DateTime), CAST(N'2023-10-16 00:05:29.043' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (156, 15, CAST(N'2023-10-16 00:04:31.300' AS DateTime), CAST(N'2023-10-16 00:19:36.487' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (157, 14, CAST(N'2023-10-16 00:04:33.473' AS DateTime), CAST(N'2023-10-16 00:19:39.173' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (158, 7, CAST(N'2023-10-16 00:05:24.397' AS DateTime), CAST(N'2023-10-16 00:19:45.770' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (159, 23, CAST(N'2023-10-16 00:05:38.573' AS DateTime), CAST(N'2023-10-16 00:19:43.493' AS DateTime), 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (160, 16, CAST(N'2023-10-16 00:34:45.443' AS DateTime), NULL, 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (161, 24, CAST(N'2023-10-16 00:34:51.280' AS DateTime), NULL, 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (162, 17, CAST(N'2023-10-16 00:34:54.050' AS DateTime), NULL, 0)
GO
INSERT [dbo].[Tam] ([id], [pid], [time_begin], [time_end], [huy]) VALUES (163, 8, CAST(N'2023-10-16 00:34:59.937' AS DateTime), NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[Tam] OFF
GO
ALTER TABLE [dbo].[Tam]  WITH CHECK ADD  CONSTRAINT [FK_Tam_Phong] FOREIGN KEY([pid])
REFERENCES [dbo].[Phong] ([id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Tam] CHECK CONSTRAINT [FK_Tam_Phong]
GO
/****** Object:  StoredProcedure [dbo].[SP_Phong]    Script Date: 16/10/2023 00:47:12 ******/
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
	@action varchar(50)='json_status',
	@id int=null
AS
BEGIN
	declare @time_now datetime=getdate(),@json varchar(max);
	if(@action='monitor')
	begin	
		set @json ='{"ok":1,"msg":"ok","data":[';

		select @json+=FORMATMESSAGE('{"id":%d,"loai":%d,"tt":%d, "ss":%d},',p.[id],p.[loai],p.[trangthai],dbo.fn_ss(p.trangthai,p.id))
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
END

GO
/****** Object:  Trigger [dbo].[TG_Phong_Tam]    Script Date: 16/10/2023 00:47:12 ******/
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
