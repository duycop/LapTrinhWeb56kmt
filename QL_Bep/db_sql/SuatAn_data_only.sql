USE SuatAn
GO
INSERT [dbo].[Quyen] ([id], [Quyen], [Note]) VALUES (1, N'Member', N'Nhân viên')
GO
INSERT [dbo].[Quyen] ([id], [Quyen], [Note]) VALUES (2, N'Shipper', N'Người giao hàng')
GO
INSERT [dbo].[Quyen] ([id], [Quyen], [Note]) VALUES (3, N'Cooker', N'Đầu bếp')
GO
INSERT [dbo].[Quyen] ([id], [Quyen], [Note]) VALUES (100, N'Admin', N'Quản trị hệ thống')
GO
INSERT [dbo].[NSD] ([uid], [pwd], [name], [role], [lastOnline]) VALUES (N'admin', N'123456', N'Đỗ Duy Cốp', 100, CAST(N'2023-10-28 14:17:49.973' AS DateTime))
GO
INSERT [dbo].[NSD] ([uid], [pwd], [name], [role], [lastOnline]) VALUES (N'nv1', N'123456', N'Nguyễn Văn A', 1, NULL)
GO
INSERT [dbo].[NSD] ([uid], [pwd], [name], [role], [lastOnline]) VALUES (N'nv2', N'123456', N'Trần Thị B', 1, NULL)
GO
INSERT [dbo].[NSD] ([uid], [pwd], [name], [role], [lastOnline]) VALUES (N'trong', N'123456', N'Lèng Văn Trong', 100, NULL)
GO
INSERT [dbo].[Ca] ([id], [name]) VALUES (1, N'Sáng')
GO
INSERT [dbo].[Ca] ([id], [name]) VALUES (2, N'Trưa')
GO
INSERT [dbo].[Ca] ([id], [name]) VALUES (3, N'Tối')
GO
INSERT [dbo].[Ca] ([id], [name]) VALUES (4, N'Đêm')
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (1, N'ET SoLar', N'Bắc Giang', 21.583412170410156, 105.79526519775391, N'0986.516.375', NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (2, N'XYC', N'Yên Phong', NULL, NULL, N'', NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (3, N'BET', N'Yên Phong', NULL, NULL, N'113', NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (4, N'NLX', N'Đại Đồng', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (5, N'LING Yi', N'Yên Phong', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (6, N'VESOGO', N'Đại Đồng', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (7, N'TOMO', N'Khắc Niệm', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (8, N'TIA SÁNG', N'Quế Võ', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (9, N'THONOVA', N'Quế Võ 2', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (10, N'NVC', N'Yên Phong', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (11, N'GW', N'Quế Võ 3', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (12, N'GEP', N'Quế Võ 3', NULL, NULL, N'null', NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (13, N'PRIMETECH', N'Quế Võ 3', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (14, N'MOATECH', N'MĨ Á', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (15, N'ETS', N'MĨ Á', NULL, NULL, N'null', NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (16, N'SCRUM', N'MĨ Á', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (17, N'TRC', N'MĨ Á', NULL, NULL, N'null', NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (18, N'GMAX', N'MĨ Á', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (19, N'ECT', N'somewhere1', NULL, NULL, N'null', NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (20, N'SUNRISE', N'somewhere', NULL, NULL, N'null', NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (21, N'WING FAT', N'Quế Võ 3', NULL, NULL, N'null', NULL)
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (22, N'ABC', N'TN', NULL, NULL, N'114', CAST(N'2023-10-25 14:29:29.067' AS DateTime))
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (23, N'xxx', N'yyy', NULL, NULL, N'zzzz', CAST(N'2023-10-25 14:29:39.393' AS DateTime))
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (24, N'TNUT', N'Tích lương TN', NULL, NULL, N'0912345678', CAST(N'2023-10-28 00:53:51.110' AS DateTime))
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (25, N'', N'', NULL, NULL, N'', CAST(N'2023-10-28 13:28:22.567' AS DateTime))
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (26, N'', N'', NULL, NULL, N'', CAST(N'2023-10-28 13:28:53.243' AS DateTime))
GO
INSERT [dbo].[Company] ([id], [name], [address], [lat], [lng], [phone], [del_at]) VALUES (27, N'xx', N'xx', 1, 2, N'xx', CAST(N'2023-10-28 13:31:50.637' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
INSERT [dbo].[Loai] ([id], [name]) VALUES (1, N'Ăn sáng')
GO
INSERT [dbo].[Loai] ([id], [name]) VALUES (2, N'Ăn suất')
GO
INSERT [dbo].[Loai] ([id], [name]) VALUES (3, N'Hoa Quả')
GO
INSERT [dbo].[Loai] ([id], [name]) VALUES (4, N'Sữa chua')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1, CAST(N'2023-10-28' AS Date), 1, 1, 1, 10, CAST(N'2023-10-28 13:15:33.447' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (2, CAST(N'2023-10-28' AS Date), 1, 2, 2, 20, CAST(N'2023-10-28 13:15:33.447' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (3, CAST(N'2023-10-28' AS Date), 1, 3, 3, 30, CAST(N'2023-10-28 13:15:33.447' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (4, CAST(N'2023-10-28' AS Date), 1, 4, 4, 35, CAST(N'2023-10-28 13:15:33.447' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (5, CAST(N'2023-10-28' AS Date), 2, 1, 1, 25, CAST(N'2023-10-28 13:15:33.447' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (6, CAST(N'2023-10-28' AS Date), 2, 2, 3, 20, CAST(N'2023-10-28 13:15:33.447' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (7, CAST(N'2023-10-28' AS Date), 2, 3, 3, 20, CAST(N'2023-10-28 13:15:33.447' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (8, CAST(N'2023-10-28' AS Date), 2, 4, 4, 20, CAST(N'2023-10-28 13:15:33.447' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (9, CAST(N'2023-10-28' AS Date), 2, 2, 2, 2, CAST(N'2023-10-28 13:15:33.447' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (10, CAST(N'2023-10-28' AS Date), 2, 3, 5, 3, CAST(N'2023-10-28 13:15:33.447' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (11, CAST(N'2023-10-28' AS Date), 1, 3, 5, 7, CAST(N'2023-10-28 13:15:33.447' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (16, CAST(N'2023-10-28' AS Date), 3, 1, 1, 5, CAST(N'2023-10-28 13:33:47.420' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (17, CAST(N'2023-10-28' AS Date), 4, 1, 1, 6, CAST(N'2023-10-28 13:33:49.733' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (18, CAST(N'2023-10-28' AS Date), 5, 1, 1, 7, CAST(N'2023-10-28 13:33:51.470' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (19, CAST(N'2023-10-28' AS Date), 6, 1, 1, 8, CAST(N'2023-10-28 13:33:53.253' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (20, CAST(N'2023-10-28' AS Date), 7, 1, 1, 9, CAST(N'2023-10-28 13:33:55.070' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (21, CAST(N'2023-10-28' AS Date), 8, 1, 1, 10, CAST(N'2023-10-28 13:33:58.087' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (22, CAST(N'2023-10-28' AS Date), 9, 1, 1, 11, CAST(N'2023-10-28 13:34:00.950' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (23, CAST(N'2023-10-28' AS Date), 10, 1, 1, 12, CAST(N'2023-10-28 13:34:02.957' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (24, CAST(N'2023-10-28' AS Date), 11, 1, 1, 50, CAST(N'2023-10-28 13:34:05.460' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (25, CAST(N'2023-10-28' AS Date), 12, 1, 1, 60, CAST(N'2023-10-28 13:34:08.380' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (26, CAST(N'2023-10-28' AS Date), 13, 1, 1, 70, CAST(N'2023-10-28 13:34:10.860' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (27, CAST(N'2023-10-28' AS Date), 14, 1, 1, 80, CAST(N'2023-10-28 13:34:13.207' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (28, CAST(N'2023-10-28' AS Date), 15, 1, 1, 90, CAST(N'2023-10-28 13:34:15.687' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (29, CAST(N'2023-10-28' AS Date), 15, 1, 2, 5, CAST(N'2023-10-28 13:34:20.940' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (30, CAST(N'2023-10-28' AS Date), 16, 1, 8, 10, CAST(N'2023-10-28 13:34:50.360' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (31, CAST(N'2023-10-28' AS Date), 17, 1, 8, 20, CAST(N'2023-10-28 13:34:55.310' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (32, CAST(N'2023-10-28' AS Date), 18, 1, 1, 5, CAST(N'2023-10-28 13:34:58.330' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (33, CAST(N'2023-10-28' AS Date), 20, 1, 1, 55, CAST(N'2023-10-28 13:35:00.650' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (34, CAST(N'2023-10-28' AS Date), 19, 1, 8, 10, CAST(N'2023-10-28 13:35:06.203' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (35, CAST(N'2023-10-28' AS Date), 21, 1, 1, 7, CAST(N'2023-10-28 13:35:09.983' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (36, CAST(N'2023-10-28' AS Date), 20, 2, 8, 10, CAST(N'2023-10-28 13:35:45.703' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (37, CAST(N'2023-10-28' AS Date), 5, 2, 2, 4, CAST(N'2023-10-28 13:49:01.083' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (38, CAST(N'2023-10-28' AS Date), 10, 4, 1, 5, CAST(N'2023-10-28 14:13:20.937' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (39, CAST(N'2023-10-28' AS Date), 9, 2, 1, 81, CAST(N'2023-10-28 14:14:40.410' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (3, N'app_sologan', N'An toàn, đa dạng, hợp lý!', N'Sologan của trang web', CAST(N'2023-10-28 13:43:12.753' AS DateTime), 1)
GO
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (2, N'app_title', N'Suất ăn Công nghiệp', N'Header trang web', CAST(N'2023-10-28 13:43:12.753' AS DateTime), 1)
GO
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (9, N'monitor_interval', N'1', N'Thời gian (giây) cập nhật lại trang', CAST(N'2023-10-28 13:43:12.753' AS DateTime), 1)
GO
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (1, N'tab_title', N'Suất Ăn', N'Tiêu đề trên tab trình duyệt', CAST(N'2023-10-28 13:43:12.753' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[SuatAn] ON 

GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at]) VALUES (1, N'Xôi sáng', N'Xôi', 15000, 1, CAST(N'2023-10-28 12:29:45.187' AS DateTime), NULL)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at]) VALUES (2, N'Cơm Cá', N'Cá', 25000, 1, CAST(N'2023-10-28 11:00:34.907' AS DateTime), NULL)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at]) VALUES (3, N'Cơm Trứng', N'Trứng', 28000, 1, CAST(N'2023-10-28 10:58:49.497' AS DateTime), NULL)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at]) VALUES (4, N'Cơm Thịt', N'Thịt', 25000, 1, CAST(N'2023-10-28 10:59:42.877' AS DateTime), NULL)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at]) VALUES (5, N'Cơm Sườn', N'Sườn', 28000, 1, CAST(N'2023-10-28 12:31:38.157' AS DateTime), NULL)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at]) VALUES (6, N'xx', N'xx', 123, 0, CAST(N'2023-10-28 11:10:44.843' AS DateTime), CAST(N'2023-10-28 11:13:03.923' AS DateTime))
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at]) VALUES (7, N'Mì xào', N'Mì', 15000, 1, CAST(N'2023-10-28 12:31:36.423' AS DateTime), NULL)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at]) VALUES (8, N'Bún Riêu', N'Bún', 10000, 1, CAST(N'2023-10-28 13:34:41.470' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[SuatAn] OFF
GO
