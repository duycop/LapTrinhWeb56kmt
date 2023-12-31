USE [HotBath]
GO
INSERT [dbo].[Quyen] ([id], [Quyen], [Note]) VALUES (1, N'Guest', N'View only')
GO
INSERT [dbo].[Quyen] ([id], [Quyen], [Note]) VALUES (2, N'Member', N'View and Count')
GO
INSERT [dbo].[Quyen] ([id], [Quyen], [Note]) VALUES (3, N'Manager', N'Control system')
GO
INSERT [dbo].[Quyen] ([id], [Quyen], [Note]) VALUES (100, N'Admin', N'Full Roles')
GO
INSERT [dbo].[NSD] ([uid], [pwd], [name], [role], [lastOnline]) VALUES (N'56kmt', N'123456', N'SV 56KMT', 3, NULL)
GO
INSERT [dbo].[NSD] ([uid], [pwd], [name], [role], [lastOnline]) VALUES (N'admin', N'123456', N'Nhân viên điều phối', 3, CAST(N'2023-10-21 13:42:48.680' AS DateTime))
GO
INSERT [dbo].[NSD] ([uid], [pwd], [name], [role], [lastOnline]) VALUES (N'cuongtd', N'123456', N'Tôn Đức Cường', 100, CAST(N'2023-10-22 02:54:54.283' AS DateTime))
GO
INSERT [dbo].[NSD] ([uid], [pwd], [name], [role], [lastOnline]) VALUES (N'mrBean', N'123456', N'ông Bin', 2, CAST(N'2023-10-21 23:30:19.817' AS DateTime))
GO
INSERT [dbo].[NSD] ([uid], [pwd], [name], [role], [lastOnline]) VALUES (N'mrcop', N'123456', N'Đỗ Duy Cốp', 100, CAST(N'2023-10-22 02:53:39.813' AS DateTime))
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
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (8, 1, 0)
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
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (16, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (17, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (18, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (19, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (20, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (21, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (22, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (23, 1, 0)
GO
INSERT [dbo].[Phong] ([id], [loai], [trangthai]) VALUES (24, 0, 0)
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
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (3, N'app_sologan', N'Siêu nóng, nhanh chóng, chi phí thì hợp lý!', N'Sologan của trang web', CAST(N'2023-10-22 02:54:32.693' AS DateTime), 1)
GO
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (2, N'app_title', N'Hệ thống quản lý tắm nóng lạnh', N'Header trang web', CAST(N'2023-10-22 02:54:32.677' AS DateTime), 1)
GO
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (5, N'dong_cua', N'Phòng tắm đóng cửa, tất cả về thôi', N'Thông báo đóng cửa để mọi phòng đều ra về', CAST(N'2023-10-22 02:54:32.693' AS DateTime), 1)
GO
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (4, N'het_gio', N'Hết giờ phòng tắm ', N'Lời nhắc khi 1 phòng tắm hết giờ (+ số phòng)', CAST(N'2023-10-22 02:54:32.693' AS DateTime), 1)
GO
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (7, N'huy_delay', N'120', N'Thời gian (giây) cho phép HỦY nếu đặt sai', CAST(N'2023-10-22 02:54:32.743' AS DateTime), 1)
GO
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (9, N'monitor_interval', N'1', N'Thời gian (giây) truy vấn database để cập nhật số giây', CAST(N'2023-10-22 02:54:32.777' AS DateTime), 1)
GO
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (1, N'tab_title', N'Tắm Tiên', N'Tiêu đề trên tab trình duyệt', CAST(N'2023-10-22 02:54:32.693' AS DateTime), 1)
GO
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (8, N'time_tam', N'15', N'Thời gian tắm tối đa (tính bằng phút)', CAST(N'2023-10-22 02:54:32.743' AS DateTime), 1)
GO
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (6, N'tts_delay', N'30', N'Thời gian nghỉ (giây) sau khi nói', CAST(N'2023-10-22 02:54:32.693' AS DateTime), 1)
GO
