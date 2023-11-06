USE [XuatAn]
GO
INSERT [dbo].[DonNguyen] ([id], [name], [des], [del_at]) VALUES (1, N'MT cô cô mi (Cốc)', N'Mì tôm cốc cô cô mi', NULL)
GO
INSERT [dbo].[DonNguyen] ([id], [name], [des], [del_at]) VALUES (2, N'Bánh Mỳ Dứa', N'Bánh Mỳ Dứa ', NULL)
GO
INSERT [dbo].[DonNguyen] ([id], [name], [des], [del_at]) VALUES (3, N'Sữa Nuti', N'NutriBoost 200ml', NULL)
GO
INSERT [dbo].[DonNguyen] ([id], [name], [des], [del_at]) VALUES (4, N'Thạch Long Hải', N'Thạch Long Hải 100g', NULL)
GO
INSERT [dbo].[DonNguyen] ([id], [name], [des], [del_at]) VALUES (5, N'Sữa Chua Elovi', N'Sữa Chua Elovi 70g', NULL)
GO
INSERT [dbo].[DonNguyen] ([id], [name], [des], [del_at]) VALUES (6, N'Sữa Fami', N'Sữa Fami 200ml', NULL)
GO
INSERT [dbo].[DonNguyen] ([id], [name], [des], [del_at]) VALUES (7, N'Sữa Izzi Cacao', N'Sữa Izzi Cacao 180', NULL)
GO
INSERT [dbo].[DonNguyen] ([id], [name], [des], [del_at]) VALUES (8, N'Sữa Mộc Châu dừa', N'Sữa Mộc Châu dừa 180ml', NULL)
GO
INSERT [dbo].[DonNguyen] ([id], [name], [des], [del_at]) VALUES (9, N'Bánh Mỳ Ruốc ', N'Bánh Mỳ Ruốc Hải Châu', NULL)
GO
INSERT [dbo].[DonNguyen] ([id], [name], [des], [del_at]) VALUES (10, N'Mỳ Omachi Cốc', N'Mỳ Omachi Cốc', NULL)
GO
INSERT [dbo].[DonNguyen] ([id], [name], [des], [del_at]) VALUES (11, N'TH True Milk có đường', N'Sữa TH True Milk 180ml', NULL)
GO
INSERT [dbo].[DonNguyen] ([id], [name], [des], [del_at]) VALUES (12, N'Cocacola Lon 250ml', N'Cocacola Lon 250ml', NULL)
GO
INSERT [dbo].[DonNguyen] ([id], [name], [des], [del_at]) VALUES (13, N'Nước Cam Lon', N'Nước Cam Lon 320ml', NULL)
GO
INSERT [dbo].[DonNguyen] ([id], [name], [des], [del_at]) VALUES (14, N'Sữa Vinamilk 180ml', N'Sữa Vinamilk 180ml', NULL)
GO
INSERT [dbo].[DonNguyen] ([id], [name], [des], [del_at]) VALUES (15, N'Sữa chua Vinamilk', N'Sữa chua', NULL)
GO
INSERT [dbo].[Loai] ([id], [name], [del_at]) VALUES (1, N'Trung Quốc', NULL)
GO
INSERT [dbo].[Loai] ([id], [name], [del_at]) VALUES (2, N'Việt Nam', NULL)
GO
INSERT [dbo].[Loai] ([id], [name], [del_at]) VALUES (3, N'Khác', NULL)
GO
INSERT [dbo].[Loai] ([id], [name], [del_at]) VALUES (4, N'Bún', NULL)
GO
SET IDENTITY_INSERT [dbo].[SuatAn] ON 

GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (1, N'Xôi sáng', N'Xôi', 15000, 0, CAST(N'2023-11-02 10:51:30.843' AS DateTime), NULL, 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (9, N'Việt Nam 30k', N'VN30', 30000, 1, CAST(N'2023-11-06 09:12:31.457' AS DateTime), NULL, 2)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (10, N'Việt Nam 28k', N'VN28', 28000, 1, CAST(N'2023-11-06 09:12:19.653' AS DateTime), NULL, 2)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (11, N'Sữa chua', N'Sữa', 10000, 1, CAST(N'2023-11-02 08:43:16.947' AS DateTime), NULL, 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (12, N'TQ40', N'TQ40', 40000, 1, CAST(N'2023-10-30 09:19:40.897' AS DateTime), NULL, 1)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (13, N'Việt Nam 25k', N'VN25', 25000, 1, CAST(N'2023-11-06 09:12:04.057' AS DateTime), NULL, 2)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (14, N'TQ25', N'TQ25', 25000, 1, CAST(N'2023-10-30 13:52:12.537' AS DateTime), NULL, 1)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (15, N'TQ70', N'TQ70', 70000, 1, CAST(N'2023-10-30 09:37:21.863' AS DateTime), NULL, 1)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (16, N'Sữa Fami Tia Sáng 25', N'SuaFamiTiaSang25', 25000, 1, CAST(N'2023-11-04 15:19:53.590' AS DateTime), NULL, 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (17, N'Bánh Sữa Thornova 25', N'BsThornova25', 25000, 1, CAST(N'2023-11-03 14:44:13.123' AS DateTime), NULL, 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (18, N'TQ35', N'TQ35', 35000, 1, CAST(N'2023-10-30 10:01:45.247' AS DateTime), NULL, 1)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (19, N'TQ BET 50', N'TQBET50', 50000, 1, CAST(N'2023-11-03 16:38:21.643' AS DateTime), NULL, 1)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (20, N'TQ K Cay GEP 40', N'TQKCayGEP40', 40000, 1, CAST(N'2023-11-03 16:39:33.023' AS DateTime), NULL, 1)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (21, N'MỳBET25', N'MỳBET25', 25000, 1, CAST(N'2023-11-03 14:22:42.533' AS DateTime), NULL, 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (22, N'THtrueMilkNaxin30', N'THtrueMilkNaxin30', 30000, 1, CAST(N'2023-11-03 16:23:24.960' AS DateTime), NULL, 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (23, N'SuaFamiSCR30', N'SuaFamiSCR30', 30000, 1, CAST(N'2023-11-03 16:18:43.207' AS DateTime), NULL, 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (24, N'TQ30', N'TQ30', 30000, 1, CAST(N'2023-10-30 13:32:53.340' AS DateTime), NULL, 1)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (25, N'BunChieu25', N'Bun25', 25000, 1, CAST(N'2023-11-04 11:41:35.737' AS DateTime), NULL, 4)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (26, N'MocChauSCR30', N'MocChauSCR30', 30000, 1, CAST(N'2023-11-03 16:18:59.097' AS DateTime), NULL, 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (27, N'Việt Nam 40k', N'VN40', 40000, 1, CAST(N'2023-11-06 09:12:41.837' AS DateTime), NULL, 2)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (28, N'Đá Lạnh 10', N'Đá Lạnh 10', 10000, 1, CAST(N'2023-11-02 14:33:20.780' AS DateTime), NULL, 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (29, N'Bánh Sữa GEP Cacao 25', N'BsCacaoGEP25', 25000, 1, CAST(N'2023-11-03 16:03:46.887' AS DateTime), NULL, 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (30, N'BsMocChauGEP25', N'BsMocChauGEP25', 25000, 1, CAST(N'2023-11-03 16:04:16.807' AS DateTime), NULL, 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (31, N'Mỳ PrimeTech T25', N'MỳPrimeT25', 25000, 1, CAST(N'2023-11-03 16:16:33.833' AS DateTime), NULL, 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (32, N'Fami Naxin 30', N'FamiNaxin30', 30000, 1, CAST(N'2023-11-03 16:21:07.340' AS DateTime), NULL, 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (33, N'THtrueMilkNaxin30', N'THtrueMilkNaxin30', 30000, 1, CAST(N'2023-11-03 16:21:45.090' AS DateTime), CAST(N'2023-11-03 16:23:13.683' AS DateTime), 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (34, N'TQGEP50', N'TQGEP50', 50000, 1, CAST(N'2023-11-03 16:40:07.080' AS DateTime), NULL, 1)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (35, N'TQGEP50', N'TQGEP50', 50000, 1, CAST(N'2023-11-03 16:41:39.090' AS DateTime), CAST(N'2023-11-04 08:42:44.577' AS DateTime), 1)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (36, N'TQ_GW_TH40', N'TQ_GW_TH40', 40000, 1, CAST(N'2023-11-03 16:56:32.973' AS DateTime), NULL, 1)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (37, N'TQ GW Nước Cam40', N'TQ_GW_NCam40', 40000, 1, CAST(N'2023-11-03 16:57:28.130' AS DateTime), NULL, 1)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (38, N'TQ GW Cocacola 40', N'TQ_GW_Cocacola40', 40000, 1, CAST(N'2023-11-03 16:58:14.660' AS DateTime), NULL, 1)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (39, N'TQ NLX SuaChua 40', N'TQ_NLX_SuaChua40', 40000, 1, CAST(N'2023-11-03 17:08:09.230' AS DateTime), NULL, 1)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (40, N'TQ NLX Vinamik 40', N'TQ NLX Vinamik 40', 40000, 1, CAST(N'2023-11-03 17:08:52.113' AS DateTime), NULL, 1)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (41, N'TQ NLX TH true milk 40', N'TQ_NLX_THtrue40', 40000, 1, CAST(N'2023-11-03 17:09:31.950' AS DateTime), NULL, 1)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (42, N'BunChieuECT25', N'34', 25000, 1, CAST(N'2023-11-04 08:18:19.090' AS DateTime), CAST(N'2023-11-04 08:20:57.003' AS DateTime), 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (43, N'BunChieuVSG20', N'BunChieuVSG20', 20000, 1, CAST(N'2023-11-04 11:41:45.577' AS DateTime), NULL, 4)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (44, N'SuaMocChauTiaSang25', N'SuaMocChauTiaSang25', 25000, 1, CAST(N'2023-11-04 15:20:53.093' AS DateTime), NULL, 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (45, N'Sữa ETS25', N'SữaETS25', 25000, 1, CAST(N'2023-11-06 09:07:24.253' AS DateTime), NULL, 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (46, N'Sữa Chua Elovi', N'SC_Elovi_Bonus', 0, 1, CAST(N'2023-11-06 12:10:41.637' AS DateTime), CAST(N'2023-11-06 12:11:13.120' AS DateTime), 3)
GO
INSERT [dbo].[SuatAn] ([id], [name], [sign], [price], [enable], [LastModify], [del_at], [loai]) VALUES (47, N'Sữa Chua Elovi', N'Elovi_bonus', 0, 1, CAST(N'2023-11-06 12:11:46.143' AS DateTime), NULL, 3)
GO
SET IDENTITY_INSERT [dbo].[SuatAn] OFF
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (16, 6, 4)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (17, 2, 2)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (17, 3, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (17, 5, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (17, 6, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (19, 12, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (20, 12, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (21, 1, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (21, 2, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (21, 3, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (21, 4, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (22, 6, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (22, 11, 2)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (23, 6, 6)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (26, 8, 4)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (29, 2, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (29, 7, 2)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (29, 9, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (30, 2, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (30, 8, 2)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (30, 9, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (31, 5, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (31, 7, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (31, 10, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (32, 6, 5)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (34, 12, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (36, 11, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (37, 13, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (38, 12, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (39, 5, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (40, 14, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (40, 15, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (41, 11, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (44, 7, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (44, 8, 2)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (45, 5, 1)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (45, 14, 2)
GO
INSERT [dbo].[Combo] ([ids], [idn], [sl]) VALUES (47, 5, 1)
GO
INSERT [dbo].[Quyen] ([id], [Quyen], [Note]) VALUES (1, N'Member', N'Nhân viên')
GO
INSERT [dbo].[Quyen] ([id], [Quyen], [Note]) VALUES (2, N'Shipper', N'Người giao hàng')
GO
INSERT [dbo].[Quyen] ([id], [Quyen], [Note]) VALUES (3, N'CSKH', N'Người nhận số lượng suất ăn')
GO
INSERT [dbo].[Quyen] ([id], [Quyen], [Note]) VALUES (100, N'Admin', N'Quản trị hệ thống')
GO
INSERT [dbo].[NSD] ([uid], [pwd], [name], [role], [lastOnline]) VALUES (N'admin', N'123456', N'Đỗ Duy Cốp', 100, CAST(N'2023-11-06 18:10:11.200' AS DateTime))
GO
INSERT [dbo].[NSD] ([uid], [pwd], [name], [role], [lastOnline]) VALUES (N'cskh', N'123456', N'CSKH', 3, CAST(N'2023-11-03 20:49:00.397' AS DateTime))
GO
INSERT [dbo].[NSD] ([uid], [pwd], [name], [role], [lastOnline]) VALUES (N'Hoa', N'123456', N'Sếp Hòa', 3, CAST(N'2023-11-06 15:24:57.513' AS DateTime))
GO
INSERT [dbo].[NSD] ([uid], [pwd], [name], [role], [lastOnline]) VALUES (N'Luong', N'123456', N'A Lượng', 3, NULL)
GO
INSERT [dbo].[NSD] ([uid], [pwd], [name], [role], [lastOnline]) VALUES (N'trong', N'123456', N'Lèng Văn Trong', 100, CAST(N'2023-11-06 17:14:21.757' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (1, N'ET SoLar 30', N'E T Sô La', N'Bắc Giang', 21.222673416137695, 106.11419677734375, N'0986.516.375', N'', 0, NULL, N'[{"id":9,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (2, N'XYC 28', N'X Y C', N'Yên Phong', NULL, NULL, N'', N'', 0, NULL, N'[{"id":13,"thu":[2,3,4,5,6,7,8]},{"id":10,"thu":[2,3,4,5,6,7,8]},{"id":27,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (3, N'BET 25,50', N'Bét', N'Yên Phong', NULL, NULL, N'113', N'', 0, NULL, N'[{"id":21,"thu":[2,3,4,5,6,7,8]},{"id":19,"thu":[2,3,4,5,6,7,8]},{"id":14,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (4, N'NLX 25,40', N'Năng Lượng Xanh', N'Đại Đồng', NULL, NULL, N'null', N'', 0, NULL, N'[{"id":39,"thu":[]},{"id":41,"thu":[3,5,7,8]},{"id":40,"thu":[2,4,6,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (5, N'LING Yi 25,70', N'LING Y', N'Yên Phong', 21.227443695068359, 106.00557708740234, N'null', N'', 1, NULL, N'[{"id":25,"thu":[2,3,4,5,6,7,8]},{"id":15,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (6, N'VESOGO 25', N'Ve Sô Gâu', N'Đại Đồng', NULL, NULL, N'null', N'', 0, NULL, N'[{"id":43,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (7, N'TOMO 25', N'Tô Mô', N'Khắc Niệm', NULL, NULL, N'null', N'Zz', 0, NULL, N'[{"id":13,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (8, N'TIA SÁNG 25', N'Tia Sáng', N'Quế Võ', NULL, NULL, N'null', N'', 0, NULL, N'[{"id":16,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (9, N'THONOVA 25,40', N'Thô Nô Va', N'Quế Võ 2', NULL, NULL, N'null', N'', 0, NULL, N'[{"id":17,"thu":[2,3,4,5,6,7,8]},{"id":12,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (10, N'NVC 25,35', N'Nờ Vê Xê', N'Yên Phong', NULL, NULL, N'null', N'', 0, NULL, N'[{"id":25,"thu":[2,3,4,5,6,7,8]},{"id":28,"thu":[2,3,4,5,6,7,8]},{"id":18,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (11, N'GW 25,(25,40)', N'Green Wing', N'Quế Võ 3', NULL, NULL, N'null', N'undefined', 0, NULL, N'[{"id":38,"thu":[7,8]},{"id":37,"thu":[6,8]},{"id":36,"thu":[2,3,4,5,6,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (12, N'GEP 25,(50,40)', N'Gờ e Pê', N'Quế Võ 3', NULL, NULL, N'null', N'', 0, NULL, N'[{"id":30,"thu":[2,3,4,5,6,7,8]},{"id":20,"thu":[2,3,4,5,6,7,8]},{"id":34,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (13, N'PRIMETECH 25', N'Pờ RI ME TECH', N'Quế Võ 3', NULL, NULL, N'null', N'', 0, NULL, N'[{"id":31,"thu":[2,3,4,5,6,7,8]},{"id":47,"thu":[2]},{"id":13,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (14, N'MOATECH 30', N'Mô A Tếch', N'MĨ Á', NULL, NULL, N'null', N'', 0, NULL, N'[{"id":9,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (15, N'ETS 25', N'E  tê ét', N'MĨ Á', NULL, NULL, N'null', N'', 0, NULL, N'[{"id":45,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (16, N'SCR 30', N'Ét Cờ Rum', N'MĨ Á', NULL, NULL, N'null', N'', 0, NULL, N'[{"id":26,"thu":[2,3,4,5,6,7,8]},{"id":23,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (17, N'TRC 30', N'Tê rờ cê', N'MĨ Á', NULL, NULL, N'null', N'', 0, NULL, N'[{"id":9,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (18, N'GMAX 25', N'gờ mắc', N'MĨ Á', NULL, NULL, N'null', N'', 0, NULL, N'[{"id":13,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (19, N'ECT 30', N'E C T', N'somewhere1', NULL, NULL, N'null', N'', 0, NULL, N'[{"id":25,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (20, N'SUNRISE 40', N'SUNRISE', N'somewhere', NULL, NULL, N'null', N'', 0, NULL, N'[{"id":27,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (21, N'WING FAT 25', N'WING phát', N'Quế Võ 3', NULL, NULL, N'null', N'', 0, NULL, N'[{"id":13,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (28, N'MAXIN 30,30', N'Ma Xin', N'Quế Võ 2', NULL, NULL, N'', N'', 0, NULL, N'[{"id":32,"thu":[2,3,4,5,6,7,8]},{"id":22,"thu":[2,3,4,5,6,7,8]},{"id":24,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (29, N'ILKWANG 30', N'I Lờ K Wang', N'Quế Võ 2', NULL, NULL, N'', N'', 0, NULL, N'[{"id":9,"thu":[2,3,4,5,6,7,8]}]')
GO
INSERT [dbo].[Company] ([id], [name], [tenviet], [address], [lat], [lng], [phone], [zalo], [vip], [del_at], [data_order]) VALUES (30, N'LIM', N'LIM', N'Quế Võ 3', NULL, NULL, N'', N'', 0, NULL, N'[{"id":9,"thu":[2,3,4,5,6,7,8]}]')
GO
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
INSERT [dbo].[Ca] ([id], [name]) VALUES (1, N'Sáng')
GO
INSERT [dbo].[Ca] ([id], [name]) VALUES (2, N'Trưa')
GO
INSERT [dbo].[Ca] ([id], [name]) VALUES (3, N'Tối')
GO
INSERT [dbo].[Ca] ([id], [name]) VALUES (4, N'Đêm')
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1, CAST(N'2023-10-28' AS Date), 1, 1, 1, 10, CAST(N'2023-10-28 13:15:33.447' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (5, CAST(N'2023-10-28' AS Date), 2, 1, 1, 25, CAST(N'2023-10-28 13:15:33.447' AS DateTime))
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
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (32, CAST(N'2023-10-28' AS Date), 18, 1, 1, 5, CAST(N'2023-10-28 13:34:58.330' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (33, CAST(N'2023-10-28' AS Date), 20, 1, 1, 55, CAST(N'2023-10-28 13:35:00.650' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (35, CAST(N'2023-10-28' AS Date), 21, 1, 1, 7, CAST(N'2023-10-28 13:35:09.983' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (38, CAST(N'2023-10-28' AS Date), 10, 4, 1, 5, CAST(N'2023-10-28 14:13:20.937' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (39, CAST(N'2023-10-28' AS Date), 9, 2, 1, 81, CAST(N'2023-10-28 14:14:40.410' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (40, CAST(N'2023-10-28' AS Date), 3, 2, 9, 200, CAST(N'2023-10-28 21:20:32.960' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (41, CAST(N'2023-10-28' AS Date), 16, 1, 1, 66, CAST(N'2023-10-28 22:52:37.603' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (42, CAST(N'2023-10-28' AS Date), 17, 1, 1, 77, CAST(N'2023-10-28 22:52:40.883' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (43, CAST(N'2023-10-28' AS Date), 19, 1, 1, 88, CAST(N'2023-10-28 22:52:46.030' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (44, CAST(N'2023-10-29' AS Date), 2, 1, 11, 1, CAST(N'2023-10-29 15:29:02.257' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (45, CAST(N'2023-10-29' AS Date), 1, 1, 1, 2, CAST(N'2023-10-29 15:29:17.337' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (46, CAST(N'2023-10-29' AS Date), 1, 1, 9, 1, CAST(N'2023-10-29 16:00:55.883' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (47, CAST(N'2023-10-30' AS Date), 1, 2, 9, 170, CAST(N'2023-10-30 08:47:28.823' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (48, CAST(N'2023-10-30' AS Date), 2, 2, 10, 53, CAST(N'2023-10-30 08:57:26.097' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (49, CAST(N'2023-10-30' AS Date), 2, 2, 12, 10, CAST(N'2023-10-30 08:57:36.713' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (50, CAST(N'2023-10-30' AS Date), 3, 2, 13, 176, CAST(N'2023-10-30 09:12:29.280' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (51, CAST(N'2023-10-30' AS Date), 3, 2, 14, 10, CAST(N'2023-10-30 09:12:44.493' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (52, CAST(N'2023-10-30' AS Date), 4, 2, 13, 176, CAST(N'2023-10-30 09:13:29.070' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (53, CAST(N'2023-10-30' AS Date), 4, 2, 14, 10, CAST(N'2023-10-30 09:13:35.593' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (54, CAST(N'2023-10-30' AS Date), 5, 2, 13, 330, CAST(N'2023-10-30 09:33:17.373' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (55, CAST(N'2023-10-30' AS Date), 5, 2, 15, 155, CAST(N'2023-10-30 09:37:38.360' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (56, CAST(N'2023-10-30' AS Date), 6, 2, 13, 93, CAST(N'2023-10-30 09:37:53.963' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (57, CAST(N'2023-10-30' AS Date), 7, 2, 13, 36, CAST(N'2023-10-30 09:39:28.450' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (58, CAST(N'2023-10-30' AS Date), 8, 2, 13, 36, CAST(N'2023-10-30 09:43:37.387' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (59, CAST(N'2023-10-30' AS Date), 8, 2, 16, 7, CAST(N'2023-10-30 09:46:50.910' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (60, CAST(N'2023-10-30' AS Date), 9, 2, 13, 39, CAST(N'2023-10-30 09:48:41.147' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (61, CAST(N'2023-10-30' AS Date), 9, 2, 12, 8, CAST(N'2023-10-30 09:54:05.820' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (62, CAST(N'2023-10-30' AS Date), 9, 2, 17, 7, CAST(N'2023-10-30 09:59:30.593' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (63, CAST(N'2023-10-30' AS Date), 10, 2, 13, 71, CAST(N'2023-10-30 09:59:52.283' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (64, CAST(N'2023-10-30' AS Date), 10, 2, 18, 16, CAST(N'2023-10-30 10:02:00.740' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (65, CAST(N'2023-10-30' AS Date), 11, 2, 13, 85, CAST(N'2023-10-30 10:04:51.847' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (66, CAST(N'2023-10-30' AS Date), 11, 2, 14, 17, CAST(N'2023-10-30 10:06:45.193' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (67, CAST(N'2023-10-30' AS Date), 11, 2, 19, 7, CAST(N'2023-10-30 10:07:30.193' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (68, CAST(N'2023-10-30' AS Date), 12, 2, 13, 85, CAST(N'2023-10-30 10:17:16.590' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (197, CAST(N'2023-10-30' AS Date), 12, 2, 20, 1, CAST(N'2023-10-30 10:30:30.400' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (565, CAST(N'2023-10-30' AS Date), 12, 2, 19, 9, CAST(N'2023-10-30 10:32:07.993' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (590, CAST(N'2023-10-30' AS Date), 12, 2, 17, 4, CAST(N'2023-10-30 10:32:19.247' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (666, CAST(N'2023-10-30' AS Date), 13, 2, 13, 57, CAST(N'2023-10-30 10:32:35.310' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (720, CAST(N'2023-10-31' AS Date), 2, 2, 10, 50, CAST(N'2023-10-30 10:32:45.733' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (721, CAST(N'2023-10-31' AS Date), 2, 2, 12, 10, CAST(N'2023-10-30 10:32:45.733' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (729, CAST(N'2023-10-31' AS Date), 7, 2, 13, 39, CAST(N'2023-10-30 10:32:45.733' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (732, CAST(N'2023-10-31' AS Date), 9, 2, 13, 37, CAST(N'2023-10-30 10:32:45.733' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (733, CAST(N'2023-10-31' AS Date), 9, 2, 12, 8, CAST(N'2023-10-30 10:32:45.733' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (734, CAST(N'2023-10-31' AS Date), 9, 2, 17, 7, CAST(N'2023-10-30 10:32:45.733' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (744, CAST(N'2023-10-31' AS Date), 13, 2, 13, 57, CAST(N'2023-10-30 10:32:45.733' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (746, CAST(N'2023-10-30' AS Date), 13, 2, 21, 13, CAST(N'2023-10-30 10:34:00.617' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (747, CAST(N'2023-10-30' AS Date), 14, 2, 9, 8, CAST(N'2023-10-30 10:36:02.700' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (748, CAST(N'2023-10-30' AS Date), 15, 2, 13, 55, CAST(N'2023-10-30 10:36:23.130' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (749, CAST(N'2023-10-30' AS Date), 16, 2, 9, 14, CAST(N'2023-10-30 10:36:57.870' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (750, CAST(N'2023-10-30' AS Date), 17, 2, 9, 10, CAST(N'2023-10-30 10:38:11.807' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (753, CAST(N'2023-10-30' AS Date), 18, 2, 13, 40, CAST(N'2023-10-30 10:54:34.900' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (754, CAST(N'2023-10-30' AS Date), 19, 2, 13, 175, CAST(N'2023-10-30 10:54:55.757' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (755, CAST(N'2023-10-30' AS Date), 28, 2, 9, 9, CAST(N'2023-10-30 13:29:14.780' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (756, CAST(N'2023-10-30' AS Date), 28, 2, 24, 4, CAST(N'2023-10-30 13:33:06.753' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (757, CAST(N'2023-10-30' AS Date), 28, 2, 22, 10, CAST(N'2023-10-30 13:33:23.187' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (758, CAST(N'2023-10-30' AS Date), 28, 2, 23, 6, CAST(N'2023-10-30 13:33:35.540' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (759, CAST(N'2023-10-30' AS Date), 29, 2, 9, 36, CAST(N'2023-10-30 13:34:44.373' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (760, CAST(N'2023-10-30' AS Date), 2, 3, 10, 11, CAST(N'2023-10-30 13:37:46.950' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (761, CAST(N'2023-10-30' AS Date), 13, 3, 13, 11, CAST(N'2023-10-30 13:38:31.910' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (762, CAST(N'2023-10-30' AS Date), 13, 3, 21, 4, CAST(N'2023-10-30 13:38:42.347' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (763, CAST(N'2023-10-30' AS Date), 9, 3, 12, 7, CAST(N'2023-10-30 13:39:28.987' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (764, CAST(N'2023-10-30' AS Date), 29, 3, 9, 16, CAST(N'2023-10-30 13:48:11.527' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (766, CAST(N'2023-10-30' AS Date), 11, 3, 14, 93, CAST(N'2023-10-30 13:52:41.253' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (767, CAST(N'2023-10-30' AS Date), 11, 3, 19, 1, CAST(N'2023-10-30 13:53:11.450' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (768, CAST(N'2023-10-30' AS Date), 5, 3, 13, 270, CAST(N'2023-10-30 13:58:21.417' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (769, CAST(N'2023-10-30' AS Date), 5, 4, 13, 140, CAST(N'2023-10-30 14:03:19.000' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (770, CAST(N'2023-10-30' AS Date), 5, 3, 15, 115, CAST(N'2023-10-30 14:04:15.550' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (771, CAST(N'2023-10-30' AS Date), 5, 4, 15, 35, CAST(N'2023-10-30 14:04:57.767' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (772, CAST(N'2023-10-30' AS Date), 10, 3, 13, 28, CAST(N'2023-10-30 14:19:08.030' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (773, CAST(N'2023-10-30' AS Date), 19, 3, 25, 52, CAST(N'2023-10-30 14:22:44.650' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (774, CAST(N'2023-10-30' AS Date), 19, 4, 13, 40, CAST(N'2023-10-30 14:22:58.037' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (775, CAST(N'2023-10-30' AS Date), 4, 3, 13, 156, CAST(N'2023-10-30 14:24:16.550' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (776, CAST(N'2023-10-30' AS Date), 16, 3, 9, 7, CAST(N'2023-10-30 14:26:08.143' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (777, CAST(N'2023-10-30' AS Date), 16, 3, 26, 2, CAST(N'2023-10-30 14:27:30.640' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (778, CAST(N'2023-10-30' AS Date), 3, 3, 13, 52, CAST(N'2023-10-30 14:33:22.250' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (779, CAST(N'2023-10-30' AS Date), 3, 3, 21, 16, CAST(N'2023-10-30 14:34:06.907' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (780, CAST(N'2023-10-30' AS Date), 6, 3, 25, 79, CAST(N'2023-10-30 14:35:03.067' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (781, CAST(N'2023-10-30' AS Date), 1, 3, 9, 169, CAST(N'2023-10-30 14:45:08.507' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (782, CAST(N'2023-10-30' AS Date), 7, 3, 13, 13, CAST(N'2023-10-30 14:45:33.410' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (783, CAST(N'2023-10-30' AS Date), 8, 3, 13, 14, CAST(N'2023-10-30 14:46:56.733' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (784, CAST(N'2023-10-30' AS Date), 12, 3, 13, 9, CAST(N'2023-10-30 14:48:41.067' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (785, CAST(N'2023-10-30' AS Date), 12, 3, 17, 16, CAST(N'2023-10-30 14:49:01.390' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (786, CAST(N'2023-10-30' AS Date), 12, 3, 19, 7, CAST(N'2023-10-30 14:51:43.587' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (787, CAST(N'2023-10-30' AS Date), 18, 3, 13, 17, CAST(N'2023-10-30 14:53:50.760' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (788, CAST(N'2023-10-30' AS Date), 15, 3, 13, 7, CAST(N'2023-10-30 15:07:54.163' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (821, CAST(N'2023-10-30' AS Date), 1, 4, 13, 30, CAST(N'2023-10-30 21:32:24.660' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (826, CAST(N'2023-10-30' AS Date), 2, 4, 13, 10, CAST(N'2023-10-30 21:44:28.960' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (827, CAST(N'2023-10-30' AS Date), 2, 4, 21, 20, CAST(N'2023-10-30 21:47:57.557' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (828, CAST(N'2023-10-31' AS Date), 14, 2, 9, 8, CAST(N'2023-10-31 08:24:21.263' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (829, CAST(N'2023-10-31' AS Date), 29, 2, 9, 33, CAST(N'2023-10-31 08:29:11.990' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (830, CAST(N'2023-10-31' AS Date), 29, 3, 9, 16, CAST(N'2023-10-31 08:29:34.393' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (831, CAST(N'2023-10-31' AS Date), 13, 2, 21, 23, CAST(N'2023-10-31 08:33:43.900' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (832, CAST(N'2023-10-31' AS Date), 8, 2, 13, 36, CAST(N'2023-10-31 08:38:16.963' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (833, CAST(N'2023-10-31' AS Date), 8, 2, 16, 8, CAST(N'2023-10-31 08:38:27.500' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (834, CAST(N'2023-10-31' AS Date), 28, 2, 9, 8, CAST(N'2023-10-31 08:43:44.170' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (835, CAST(N'2023-10-31' AS Date), 28, 2, 24, 3, CAST(N'2023-10-31 08:44:31.140' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (836, CAST(N'2023-10-31' AS Date), 28, 2, 22, 14, CAST(N'2023-10-31 08:44:45.300' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (837, CAST(N'2023-10-31' AS Date), 28, 2, 23, 5, CAST(N'2023-10-31 08:44:55.577' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (838, CAST(N'2023-10-31' AS Date), 11, 2, 13, 89, CAST(N'2023-10-31 08:46:12.010' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (839, CAST(N'2023-10-31' AS Date), 1, 2, 9, 177, CAST(N'2023-10-31 08:47:25.183' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (840, CAST(N'2023-10-31' AS Date), 3, 2, 13, 92, CAST(N'2023-10-31 08:55:40.237' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (841, CAST(N'2023-10-31' AS Date), 4, 2, 13, 177, CAST(N'2023-10-31 08:56:39.390' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (842, CAST(N'2023-10-31' AS Date), 5, 2, 13, 290, CAST(N'2023-10-31 09:44:36.003' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (843, CAST(N'2023-10-31' AS Date), 5, 2, 15, 170, CAST(N'2023-10-31 09:44:51.120' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (844, CAST(N'2023-10-31' AS Date), 6, 2, 17, 4, CAST(N'2023-10-31 09:46:52.547' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (845, CAST(N'2023-10-31' AS Date), 6, 2, 13, 3, CAST(N'2023-10-31 09:47:10.300' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (846, CAST(N'2023-10-31' AS Date), 10, 2, 13, 70, CAST(N'2023-10-31 09:47:56.873' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (847, CAST(N'2023-10-31' AS Date), 10, 2, 18, 16, CAST(N'2023-10-31 09:48:13.297' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (848, CAST(N'2023-10-31' AS Date), 12, 2, 13, 81, CAST(N'2023-10-31 09:49:03.160' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (849, CAST(N'2023-10-31' AS Date), 12, 2, 17, 5, CAST(N'2023-10-31 09:49:29.760' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (850, CAST(N'2023-10-31' AS Date), 12, 2, 20, 1, CAST(N'2023-10-31 09:49:54.840' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (851, CAST(N'2023-10-31' AS Date), 12, 2, 19, 9, CAST(N'2023-10-31 09:50:22.433' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (852, CAST(N'2023-10-31' AS Date), 15, 2, 13, 67, CAST(N'2023-10-31 09:51:35.853' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (853, CAST(N'2023-10-31' AS Date), 15, 2, 16, 2, CAST(N'2023-10-31 09:52:02.257' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (854, CAST(N'2023-10-31' AS Date), 16, 2, 9, 12, CAST(N'2023-10-31 09:52:36.730' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (855, CAST(N'2023-10-31' AS Date), 16, 2, 26, 2, CAST(N'2023-10-31 09:52:50.193' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (856, CAST(N'2023-10-31' AS Date), 16, 2, 23, 1, CAST(N'2023-10-31 09:53:01.480' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (857, CAST(N'2023-10-31' AS Date), 17, 2, 9, 10, CAST(N'2023-10-31 09:53:25.137' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (858, CAST(N'2023-10-31' AS Date), 19, 2, 9, 177, CAST(N'2023-10-31 09:54:18.633' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (859, CAST(N'2023-10-31' AS Date), 1, 3, 9, 171, CAST(N'2023-10-31 09:58:26.807' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (860, CAST(N'2023-10-31' AS Date), 18, 2, 13, 37, CAST(N'2023-10-31 10:05:18.613' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (861, CAST(N'2023-10-31' AS Date), 3, 2, 14, 10, CAST(N'2023-10-31 10:26:44.807' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (862, CAST(N'2023-10-31' AS Date), 2, 3, 10, 9, CAST(N'2023-10-31 13:56:12.203' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (864, CAST(N'2023-10-31' AS Date), 9, 3, 19, 7, CAST(N'2023-10-31 13:57:44.033' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (865, CAST(N'2023-10-31' AS Date), 11, 3, 13, 96, CAST(N'2023-10-31 13:58:29.957' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (867, CAST(N'2023-10-31' AS Date), 11, 3, 12, 1, CAST(N'2023-10-31 14:01:13.403' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (868, CAST(N'2023-10-31' AS Date), 13, 3, 13, 9, CAST(N'2023-10-31 14:01:50.603' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (869, CAST(N'2023-10-31' AS Date), 13, 3, 21, 12, CAST(N'2023-10-31 14:02:01.490' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (870, CAST(N'2023-10-31' AS Date), 19, 3, 9, 88, CAST(N'2023-10-31 14:02:47.250' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (871, CAST(N'2023-10-31' AS Date), 3, 3, 13, 57, CAST(N'2023-10-31 14:06:22.550' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (872, CAST(N'2023-10-31' AS Date), 3, 3, 21, 11, CAST(N'2023-10-31 14:06:33.490' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (873, CAST(N'2023-10-31' AS Date), 16, 3, 9, 7, CAST(N'2023-10-31 14:09:12.160' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (874, CAST(N'2023-10-31' AS Date), 16, 3, 26, 2, CAST(N'2023-10-31 14:09:26.957' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (875, CAST(N'2023-10-31' AS Date), 5, 3, 13, 180, CAST(N'2023-10-31 14:21:18.840' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (876, CAST(N'2023-10-31' AS Date), 5, 3, 15, 180, CAST(N'2023-10-31 14:21:53.400' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (877, CAST(N'2023-10-31' AS Date), 12, 3, 13, 23, CAST(N'2023-10-31 14:28:45.830' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (878, CAST(N'2023-10-31' AS Date), 12, 3, 17, 47, CAST(N'2023-10-31 14:28:58.000' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (879, CAST(N'2023-10-31' AS Date), 12, 3, 19, 7, CAST(N'2023-10-31 14:29:34.397' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (880, CAST(N'2023-10-31' AS Date), 4, 3, 13, 166, CAST(N'2023-10-31 15:08:20.743' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (881, CAST(N'2023-10-31' AS Date), 4, 3, 12, 1, CAST(N'2023-10-31 15:10:29.277' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (882, CAST(N'2023-10-31' AS Date), 13, 2, 19, 99, CAST(N'2023-10-31 15:29:51.853' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (885, CAST(N'2023-10-31' AS Date), 8, 3, 13, 15, CAST(N'2023-10-31 16:10:31.673' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (886, CAST(N'2023-10-31' AS Date), 10, 3, 13, 3, CAST(N'2023-10-31 16:10:55.490' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (888, CAST(N'2023-11-01' AS Date), 2, 2, 10, 49, CAST(N'2023-11-01 08:36:41.723' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (890, CAST(N'2023-11-01' AS Date), 2, 2, 27, 11, CAST(N'2023-11-01 08:59:50.937' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (893, CAST(N'2023-11-01' AS Date), 6, 2, 13, 93, CAST(N'2023-11-01 09:00:47.770' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (894, CAST(N'2023-11-01' AS Date), 4, 2, 13, 168, CAST(N'2023-11-01 09:01:11.933' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (895, CAST(N'2023-11-01' AS Date), 4, 2, 12, 8, CAST(N'2023-11-01 09:01:36.780' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (896, CAST(N'2023-11-01' AS Date), 3, 2, 13, 88, CAST(N'2023-11-01 09:01:56.477' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (897, CAST(N'2023-11-01' AS Date), 3, 2, 14, 10, CAST(N'2023-11-01 09:02:14.027' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (898, CAST(N'2023-11-01' AS Date), 3, 2, 21, 7, CAST(N'2023-11-01 09:02:21.320' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (899, CAST(N'2023-11-01' AS Date), 9, 2, 13, 38, CAST(N'2023-11-01 09:02:43.020' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (900, CAST(N'2023-11-01' AS Date), 9, 2, 12, 8, CAST(N'2023-11-01 09:02:56.677' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (901, CAST(N'2023-11-01' AS Date), 9, 2, 17, 8, CAST(N'2023-11-01 09:03:14.820' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (902, CAST(N'2023-11-01' AS Date), 11, 2, 13, 89, CAST(N'2023-11-01 09:04:06.773' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (903, CAST(N'2023-11-01' AS Date), 11, 2, 14, 17, CAST(N'2023-11-01 09:04:19.050' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (904, CAST(N'2023-11-01' AS Date), 11, 2, 12, 7, CAST(N'2023-11-01 09:04:38.660' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (905, CAST(N'2023-11-01' AS Date), 10, 2, 13, 297, CAST(N'2023-11-01 09:04:59.107' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (906, CAST(N'2023-11-01' AS Date), 10, 2, 18, 19, CAST(N'2023-11-01 09:05:39.793' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (907, CAST(N'2023-11-01' AS Date), 12, 2, 13, 85, CAST(N'2023-11-01 09:06:03.480' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (908, CAST(N'2023-11-01' AS Date), 12, 2, 20, 1, CAST(N'2023-11-01 09:06:25.463' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (909, CAST(N'2023-11-01' AS Date), 12, 2, 19, 8, CAST(N'2023-11-01 09:06:39.793' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (910, CAST(N'2023-11-01' AS Date), 12, 2, 17, 3, CAST(N'2023-11-01 09:06:54.403' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (911, CAST(N'2023-11-01' AS Date), 13, 2, 13, 61, CAST(N'2023-11-01 09:07:14.360' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (912, CAST(N'2023-11-01' AS Date), 13, 2, 21, 16, CAST(N'2023-11-01 09:07:24.950' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (913, CAST(N'2023-11-01' AS Date), 14, 2, 9, 8, CAST(N'2023-11-01 09:07:42.980' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (914, CAST(N'2023-11-01' AS Date), 15, 2, 13, 55, CAST(N'2023-11-01 09:07:58.123' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (915, CAST(N'2023-11-01' AS Date), 16, 2, 9, 15, CAST(N'2023-11-01 09:08:11.227' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (916, CAST(N'2023-11-01' AS Date), 16, 2, 26, 2, CAST(N'2023-11-01 09:08:22.067' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (917, CAST(N'2023-11-01' AS Date), 7, 2, 13, 34, CAST(N'2023-11-01 09:08:49.093' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (918, CAST(N'2023-11-01' AS Date), 28, 2, 9, 7, CAST(N'2023-11-01 09:24:27.983' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (919, CAST(N'2023-11-01' AS Date), 29, 2, 9, 38, CAST(N'2023-11-01 09:25:33.173' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (920, CAST(N'2023-11-01' AS Date), 29, 3, 9, 15, CAST(N'2023-11-01 09:25:54.390' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (921, CAST(N'2023-11-01' AS Date), 28, 2, 22, 14, CAST(N'2023-11-01 09:26:37.427' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (922, CAST(N'2023-11-01' AS Date), 28, 2, 23, 5, CAST(N'2023-11-01 09:26:45.303' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (923, CAST(N'2023-11-01' AS Date), 28, 2, 24, 3, CAST(N'2023-11-01 09:27:54.343' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (924, CAST(N'2023-11-01' AS Date), 17, 2, 9, 11, CAST(N'2023-11-01 09:28:28.000' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (947, CAST(N'2023-11-01' AS Date), 1, 3, 10, 1, CAST(N'2023-11-01 15:09:56.793' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (948, CAST(N'2023-11-01' AS Date), 1, 3, 9, 2, CAST(N'2023-11-01 15:09:56.867' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (949, CAST(N'2023-11-01' AS Date), 2, 3, 12, 1, CAST(N'2023-11-01 15:10:03.197' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (950, CAST(N'2023-11-01' AS Date), 2, 3, 10, 2, CAST(N'2023-11-01 15:10:03.277' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (951, CAST(N'2023-11-01' AS Date), 2, 3, 27, 3, CAST(N'2023-11-01 15:10:03.353' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (952, CAST(N'2023-11-01' AS Date), 3, 3, 14, 5, CAST(N'2023-11-01 15:10:08.237' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (953, CAST(N'2023-11-01' AS Date), 3, 3, 13, 66, CAST(N'2023-11-01 15:10:08.313' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (954, CAST(N'2023-11-01' AS Date), 4, 3, 25, 6, CAST(N'2023-11-01 15:11:31.447' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (955, CAST(N'2023-11-01' AS Date), 4, 3, 26, 7, CAST(N'2023-11-01 15:11:31.523' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (956, CAST(N'2023-11-01' AS Date), 5, 3, 15, 8, CAST(N'2023-11-01 15:11:36.557' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (957, CAST(N'2023-11-01' AS Date), 5, 3, 13, 9, CAST(N'2023-11-01 15:11:36.633' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (969, CAST(N'2023-11-01' AS Date), 6, 3, 11, 90, CAST(N'2023-11-01 15:40:39.340' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1019, CAST(N'2023-11-01' AS Date), 5, 2, 14, 370, CAST(N'2023-11-01 18:02:01.203' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1020, CAST(N'2023-11-01' AS Date), 5, 2, 15, 110, CAST(N'2023-11-01 18:02:01.203' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1021, CAST(N'2023-11-01' AS Date), 1, 2, 9, 165, CAST(N'2023-11-01 18:45:18.237' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1022, CAST(N'2023-11-02' AS Date), 14, 2, 9, 7, CAST(N'2023-11-02 08:01:53.270' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1023, CAST(N'2023-11-02' AS Date), 11, 2, 14, 17, CAST(N'2023-11-02 08:24:28.037' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1024, CAST(N'2023-11-02' AS Date), 11, 2, 12, 7, CAST(N'2023-11-02 08:24:28.037' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1025, CAST(N'2023-11-02' AS Date), 11, 2, 13, 90, CAST(N'2023-11-02 08:24:28.037' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1027, CAST(N'2023-11-02' AS Date), 29, 3, 9, 14, CAST(N'2023-11-02 08:25:32.587' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1028, CAST(N'2023-11-02' AS Date), 13, 2, 21, 18, CAST(N'2023-11-02 08:26:13.337' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1029, CAST(N'2023-11-02' AS Date), 13, 2, 13, 59, CAST(N'2023-11-02 08:26:13.337' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1030, CAST(N'2023-11-02' AS Date), 6, 2, 13, 94, CAST(N'2023-11-02 08:32:09.710' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1031, CAST(N'2023-11-02' AS Date), 9, 2, 17, 6, CAST(N'2023-11-02 08:37:00.120' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1032, CAST(N'2023-11-02' AS Date), 9, 2, 12, 8, CAST(N'2023-11-02 08:37:00.137' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1033, CAST(N'2023-11-02' AS Date), 9, 2, 13, 40, CAST(N'2023-11-02 08:37:00.140' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1034, CAST(N'2023-11-02' AS Date), 16, 2, 26, 2, CAST(N'2023-11-02 08:44:32.167' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1035, CAST(N'2023-11-02' AS Date), 16, 2, 9, 14, CAST(N'2023-11-02 08:44:32.167' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1036, CAST(N'2023-11-02' AS Date), 1, 2, 9, 166, CAST(N'2023-11-02 08:44:58.253' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1039, CAST(N'2023-11-02' AS Date), 4, 2, 12, 9, CAST(N'2023-11-02 08:53:53.523' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1040, CAST(N'2023-11-02' AS Date), 4, 2, 13, 106, CAST(N'2023-11-02 08:53:53.523' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1044, CAST(N'2023-11-02' AS Date), 8, 2, 16, 8, CAST(N'2023-11-02 08:55:55.033' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1045, CAST(N'2023-11-02' AS Date), 8, 2, 13, 38, CAST(N'2023-11-02 08:55:55.033' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1050, CAST(N'2023-11-02' AS Date), 19, 2, 9, 202, CAST(N'2023-11-02 09:00:37.873' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1052, CAST(N'2023-11-02' AS Date), 19, 4, 9, 44, CAST(N'2023-11-02 09:01:12.020' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1053, CAST(N'2023-11-02' AS Date), 12, 2, 17, 6, CAST(N'2023-11-02 09:02:02.787' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1054, CAST(N'2023-11-02' AS Date), 12, 2, 19, 7, CAST(N'2023-11-02 09:02:02.787' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1055, CAST(N'2023-11-02' AS Date), 12, 2, 20, 1, CAST(N'2023-11-02 09:02:02.803' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1056, CAST(N'2023-11-02' AS Date), 12, 2, 13, 81, CAST(N'2023-11-02 09:02:02.803' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1057, CAST(N'2023-11-02' AS Date), 7, 2, 13, 35, CAST(N'2023-11-02 09:08:29.700' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1059, CAST(N'2023-11-02' AS Date), 15, 2, 16, 2, CAST(N'2023-11-02 09:10:40.943' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1060, CAST(N'2023-11-02' AS Date), 15, 2, 13, 61, CAST(N'2023-11-02 09:10:40.943' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1061, CAST(N'2023-11-02' AS Date), 3, 2, 21, 6, CAST(N'2023-11-02 09:11:37.610' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1062, CAST(N'2023-11-02' AS Date), 3, 2, 14, 10, CAST(N'2023-11-02 09:11:37.610' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1063, CAST(N'2023-11-02' AS Date), 3, 2, 13, 90, CAST(N'2023-11-02 09:11:37.623' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1064, CAST(N'2023-11-02' AS Date), 5, 2, 15, 115, CAST(N'2023-11-02 09:18:20.867' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1065, CAST(N'2023-11-02' AS Date), 5, 2, 13, 370, CAST(N'2023-11-02 09:18:20.867' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1066, CAST(N'2023-11-02' AS Date), 17, 2, 9, 10, CAST(N'2023-11-02 09:19:30.803' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1067, CAST(N'2023-11-02' AS Date), 28, 2, 23, 4, CAST(N'2023-11-02 09:20:04.223' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1068, CAST(N'2023-11-02' AS Date), 28, 2, 22, 13, CAST(N'2023-11-02 09:20:04.223' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1069, CAST(N'2023-11-02' AS Date), 28, 2, 24, 3, CAST(N'2023-11-02 09:20:04.223' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1070, CAST(N'2023-11-02' AS Date), 28, 2, 9, 7, CAST(N'2023-11-02 09:20:04.223' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1072, CAST(N'2023-11-02' AS Date), 29, 2, 9, 35, CAST(N'2023-11-02 09:24:44.837' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1073, CAST(N'2023-11-02' AS Date), 30, 2, 9, 2, CAST(N'2023-11-02 09:24:49.940' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1074, CAST(N'2023-11-02' AS Date), 11, 3, 12, 1, CAST(N'2023-11-02 09:27:23.317' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1075, CAST(N'2023-11-02' AS Date), 11, 3, 13, 98, CAST(N'2023-11-02 09:27:23.317' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1076, CAST(N'2023-11-02' AS Date), 2, 2, 10, 46, CAST(N'2023-11-02 09:31:50.537' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1077, CAST(N'2023-11-02' AS Date), 2, 2, 27, 12, CAST(N'2023-11-02 09:31:50.537' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1078, CAST(N'2023-11-02' AS Date), 18, 2, 13, 42, CAST(N'2023-11-02 11:05:47.410' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1079, CAST(N'2023-11-02' AS Date), 2, 3, 10, 10, CAST(N'2023-11-02 13:53:18.257' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1080, CAST(N'2023-11-02' AS Date), 13, 3, 21, 12, CAST(N'2023-11-02 13:53:47.417' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1081, CAST(N'2023-11-02' AS Date), 13, 3, 13, 8, CAST(N'2023-11-02 13:53:47.430' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1082, CAST(N'2023-11-02' AS Date), 30, 3, 9, 2, CAST(N'2023-11-02 13:53:55.560' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1083, CAST(N'2023-11-02' AS Date), 9, 3, 12, 7, CAST(N'2023-11-02 13:59:42.247' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1085, CAST(N'2023-11-02' AS Date), 7, 3, 13, 15, CAST(N'2023-11-02 14:07:18.610' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1089, CAST(N'2023-11-02' AS Date), 6, 3, 17, 1, CAST(N'2023-11-02 14:10:31.763' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1090, CAST(N'2023-11-02' AS Date), 6, 3, 13, 80, CAST(N'2023-11-02 14:10:31.780' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1091, CAST(N'2023-11-02' AS Date), 8, 3, 13, 14, CAST(N'2023-11-02 14:13:28.090' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1092, CAST(N'2023-11-02' AS Date), 3, 3, 21, 13, CAST(N'2023-11-02 14:16:21.690' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1093, CAST(N'2023-11-02' AS Date), 3, 3, 13, 55, CAST(N'2023-11-02 14:16:21.690' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1094, CAST(N'2023-11-02' AS Date), 12, 3, 17, 52, CAST(N'2023-11-02 14:19:25.163' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1095, CAST(N'2023-11-02' AS Date), 12, 3, 19, 7, CAST(N'2023-11-02 14:19:25.163' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1096, CAST(N'2023-11-02' AS Date), 12, 3, 13, 21, CAST(N'2023-11-02 14:19:25.163' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1097, CAST(N'2023-11-02' AS Date), 4, 3, 13, 146, CAST(N'2023-11-02 14:20:29.823' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1098, CAST(N'2023-11-02' AS Date), 5, 3, 15, 90, CAST(N'2023-11-02 14:22:07.567' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1099, CAST(N'2023-11-02' AS Date), 5, 3, 13, 260, CAST(N'2023-11-02 14:22:07.567' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1100, CAST(N'2023-11-02' AS Date), 19, 3, 9, 86, CAST(N'2023-11-02 14:22:36.283' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1101, CAST(N'2023-11-02' AS Date), 10, 2, 28, 4, CAST(N'2023-11-02 14:35:02.870' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1102, CAST(N'2023-11-02' AS Date), 10, 2, 18, 19, CAST(N'2023-11-02 14:35:02.870' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1103, CAST(N'2023-11-02' AS Date), 10, 2, 13, 305, CAST(N'2023-11-02 14:35:02.887' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1104, CAST(N'2023-11-02' AS Date), 18, 3, 13, 20, CAST(N'2023-11-02 14:41:20.773' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1105, CAST(N'2023-11-02' AS Date), 16, 3, 26, 3, CAST(N'2023-11-02 14:45:42.407' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1106, CAST(N'2023-11-02' AS Date), 16, 3, 9, 8, CAST(N'2023-11-02 14:45:42.423' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1107, CAST(N'2023-11-02' AS Date), 10, 3, 13, 40, CAST(N'2023-11-02 15:03:08.770' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1108, CAST(N'2023-11-02' AS Date), 1, 3, 9, 161, CAST(N'2023-11-02 15:29:56.270' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1109, CAST(N'2023-11-02' AS Date), 15, 3, 13, 13, CAST(N'2023-11-02 15:36:56.667' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1110, CAST(N'2023-11-03' AS Date), 14, 2, 9, 8, CAST(N'2023-11-03 07:36:22.903' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1113, CAST(N'2023-11-03' AS Date), 1, 2, 9, 162, CAST(N'2023-11-03 08:49:47.940' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1114, CAST(N'2023-11-03' AS Date), 2, 2, 13, 40, CAST(N'2023-11-03 08:50:10.507' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1115, CAST(N'2023-11-03' AS Date), 2, 2, 27, 10, CAST(N'2023-11-03 08:50:10.507' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1116, CAST(N'2023-11-03' AS Date), 9, 2, 17, 7, CAST(N'2023-11-03 08:51:14.980' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1117, CAST(N'2023-11-03' AS Date), 9, 2, 12, 8, CAST(N'2023-11-03 08:51:14.980' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1118, CAST(N'2023-11-03' AS Date), 9, 2, 13, 39, CAST(N'2023-11-03 08:51:14.980' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1120, CAST(N'2023-11-03' AS Date), 11, 2, 14, 17, CAST(N'2023-11-03 08:51:55.813' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1121, CAST(N'2023-11-03' AS Date), 11, 2, 12, 7, CAST(N'2023-11-03 08:51:55.813' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1122, CAST(N'2023-11-03' AS Date), 11, 2, 13, 90, CAST(N'2023-11-03 08:51:55.813' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1129, CAST(N'2023-11-03' AS Date), 13, 2, 21, 16, CAST(N'2023-11-03 08:53:18.413' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1130, CAST(N'2023-11-03' AS Date), 13, 2, 13, 59, CAST(N'2023-11-03 08:53:18.413' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1131, CAST(N'2023-11-03' AS Date), 16, 2, 26, 2, CAST(N'2023-11-03 09:00:00.990' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1132, CAST(N'2023-11-03' AS Date), 16, 2, 9, 14, CAST(N'2023-11-03 09:00:00.990' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1133, CAST(N'2023-11-03' AS Date), 3, 2, 21, 6, CAST(N'2023-11-03 09:11:57.000' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1134, CAST(N'2023-11-03' AS Date), 3, 2, 14, 10, CAST(N'2023-11-03 09:11:57.000' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1135, CAST(N'2023-11-03' AS Date), 3, 2, 13, 83, CAST(N'2023-11-03 09:11:57.000' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1136, CAST(N'2023-11-03' AS Date), 4, 2, 12, 9, CAST(N'2023-11-03 09:12:23.500' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1137, CAST(N'2023-11-03' AS Date), 4, 2, 13, 121, CAST(N'2023-11-03 09:12:23.500' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1138, CAST(N'2023-11-03' AS Date), 5, 2, 15, 115, CAST(N'2023-11-03 09:12:59.243' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1139, CAST(N'2023-11-03' AS Date), 5, 2, 13, 360, CAST(N'2023-11-03 09:12:59.243' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1140, CAST(N'2023-11-03' AS Date), 6, 2, 13, 23, CAST(N'2023-11-03 09:13:06.183' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1141, CAST(N'2023-11-03' AS Date), 7, 2, 13, 38, CAST(N'2023-11-03 09:13:21.280' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1142, CAST(N'2023-11-03' AS Date), 8, 2, 16, 10, CAST(N'2023-11-03 09:13:40.573' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1143, CAST(N'2023-11-03' AS Date), 8, 2, 13, 38, CAST(N'2023-11-03 09:13:40.573' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1144, CAST(N'2023-11-03' AS Date), 10, 2, 28, 10, CAST(N'2023-11-03 09:14:09.330' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1145, CAST(N'2023-11-03' AS Date), 10, 2, 18, 17, CAST(N'2023-11-03 09:14:09.343' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1146, CAST(N'2023-11-03' AS Date), 10, 2, 13, 307, CAST(N'2023-11-03 09:14:09.343' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1147, CAST(N'2023-11-03' AS Date), 12, 2, 17, 4, CAST(N'2023-11-03 09:15:38.697' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1148, CAST(N'2023-11-03' AS Date), 12, 2, 19, 8, CAST(N'2023-11-03 09:15:38.697' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1149, CAST(N'2023-11-03' AS Date), 12, 2, 20, 1, CAST(N'2023-11-03 09:15:38.713' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1150, CAST(N'2023-11-03' AS Date), 12, 2, 13, 81, CAST(N'2023-11-03 09:15:38.713' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1151, CAST(N'2023-11-03' AS Date), 17, 2, 9, 10, CAST(N'2023-11-03 09:16:05.757' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1152, CAST(N'2023-11-03' AS Date), 19, 2, 9, 213, CAST(N'2023-11-03 09:16:19.350' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1153, CAST(N'2023-11-03' AS Date), 28, 2, 23, 4, CAST(N'2023-11-03 09:16:57.453' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1154, CAST(N'2023-11-03' AS Date), 28, 2, 22, 15, CAST(N'2023-11-03 09:16:57.453' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1155, CAST(N'2023-11-03' AS Date), 28, 2, 24, 3, CAST(N'2023-11-03 09:16:57.470' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1156, CAST(N'2023-11-03' AS Date), 28, 2, 9, 6, CAST(N'2023-11-03 09:16:57.470' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1157, CAST(N'2023-11-03' AS Date), 30, 2, 9, 1, CAST(N'2023-11-03 09:17:47.353' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1158, CAST(N'2023-11-03' AS Date), 29, 2, 9, 33, CAST(N'2023-11-03 09:21:17.730' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1159, CAST(N'2023-11-03' AS Date), 15, 2, 16, 2, CAST(N'2023-11-03 09:31:41.847' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1160, CAST(N'2023-11-03' AS Date), 15, 2, 13, 61, CAST(N'2023-11-03 09:31:41.847' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1161, CAST(N'2023-11-03' AS Date), 18, 2, 13, 39, CAST(N'2023-11-03 10:23:20.363' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1162, CAST(N'2023-11-03' AS Date), 1, 3, 9, 157, CAST(N'2023-11-03 11:04:02.960' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1163, CAST(N'2023-11-03' AS Date), 9, 3, 12, 7, CAST(N'2023-11-03 13:14:44.200' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1164, CAST(N'2023-11-03' AS Date), 2, 3, 10, 10, CAST(N'2023-11-03 13:15:47.167' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1165, CAST(N'2023-11-03' AS Date), 30, 3, 9, 1, CAST(N'2023-11-03 13:32:08.580' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1166, CAST(N'2023-11-03' AS Date), 13, 3, 21, 14, CAST(N'2023-11-03 13:32:28.447' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1167, CAST(N'2023-11-03' AS Date), 13, 3, 13, 7, CAST(N'2023-11-03 13:32:28.447' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1168, CAST(N'2023-11-03' AS Date), 10, 3, 13, 227, CAST(N'2023-11-03 13:33:17.057' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1169, CAST(N'2023-11-03' AS Date), 11, 3, 12, 1, CAST(N'2023-11-03 13:41:21.037' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1170, CAST(N'2023-11-03' AS Date), 11, 3, 13, 97, CAST(N'2023-11-03 13:41:21.053' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1172, CAST(N'2023-11-03' AS Date), 29, 3, 9, 14, CAST(N'2023-11-03 13:43:14.790' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1174, CAST(N'2023-11-03' AS Date), 6, 3, 13, 79, CAST(N'2023-11-03 14:03:47.393' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1175, CAST(N'2023-11-03' AS Date), 19, 3, 9, 102, CAST(N'2023-11-03 14:05:13.407' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1178, CAST(N'2023-11-03' AS Date), 3, 3, 21, 7, CAST(N'2023-11-03 14:07:53.033' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1179, CAST(N'2023-11-03' AS Date), 3, 3, 13, 55, CAST(N'2023-11-03 14:07:53.033' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1180, CAST(N'2023-11-03' AS Date), 5, 3, 13, 250, CAST(N'2023-11-03 14:08:09.963' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1184, CAST(N'2023-11-03' AS Date), 8, 3, 16, 2, CAST(N'2023-11-03 14:11:52.990' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1185, CAST(N'2023-11-03' AS Date), 8, 3, 13, 14, CAST(N'2023-11-03 14:11:52.990' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1192, CAST(N'2023-11-03' AS Date), 7, 3, 13, 23, CAST(N'2023-11-03 14:31:50.203' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1193, CAST(N'2023-11-03' AS Date), 4, 3, 13, 59, CAST(N'2023-11-03 14:32:16.500' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1194, CAST(N'2023-11-03' AS Date), 12, 3, 17, 28, CAST(N'2023-11-03 14:32:31.337' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1195, CAST(N'2023-11-03' AS Date), 12, 3, 19, 8, CAST(N'2023-11-03 14:32:31.337' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1196, CAST(N'2023-11-03' AS Date), 12, 3, 13, 10, CAST(N'2023-11-03 14:32:31.337' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1197, CAST(N'2023-11-03' AS Date), 19, 4, 9, 44, CAST(N'2023-11-03 14:33:46.003' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1198, CAST(N'2023-11-03' AS Date), 18, 3, 13, 29, CAST(N'2023-11-03 14:39:41.733' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1199, CAST(N'2023-11-03' AS Date), 15, 3, 13, 16, CAST(N'2023-11-03 15:46:40.137' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1213, CAST(N'2023-11-04' AS Date), 29, 3, 9, 12, CAST(N'2023-11-04 08:21:52.227' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1214, CAST(N'2023-11-04' AS Date), 11, 2, 38, 7, CAST(N'2023-11-04 08:26:45.560' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1215, CAST(N'2023-11-04' AS Date), 11, 2, 14, 17, CAST(N'2023-11-04 08:26:45.560' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1216, CAST(N'2023-11-04' AS Date), 11, 2, 13, 89, CAST(N'2023-11-04 08:26:45.560' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1217, CAST(N'2023-11-04' AS Date), 2, 2, 10, 47, CAST(N'2023-11-04 08:27:42.670' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1218, CAST(N'2023-11-04' AS Date), 2, 2, 27, 5, CAST(N'2023-11-04 08:27:42.670' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1219, CAST(N'2023-11-04' AS Date), 30, 2, 9, 1, CAST(N'2023-11-04 08:28:11.797' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1220, CAST(N'2023-11-04' AS Date), 13, 2, 31, 20, CAST(N'2023-11-04 08:28:35.177' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1221, CAST(N'2023-11-04' AS Date), 13, 2, 13, 56, CAST(N'2023-11-04 08:28:35.190' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1222, CAST(N'2023-11-04' AS Date), 28, 2, 32, 2, CAST(N'2023-11-04 08:36:16.707' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1223, CAST(N'2023-11-04' AS Date), 28, 2, 22, 7, CAST(N'2023-11-04 08:36:16.707' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1224, CAST(N'2023-11-04' AS Date), 28, 2, 24, 1, CAST(N'2023-11-04 08:36:16.707' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1225, CAST(N'2023-11-04' AS Date), 28, 2, 9, 2, CAST(N'2023-11-04 08:36:16.707' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1227, CAST(N'2023-11-04' AS Date), 8, 2, 16, 8, CAST(N'2023-11-04 08:39:00.483' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1228, CAST(N'2023-11-04' AS Date), 8, 2, 13, 41, CAST(N'2023-11-04 08:39:00.483' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1232, CAST(N'2023-11-04' AS Date), 12, 2, 30, 10, CAST(N'2023-11-04 08:46:23.297' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1233, CAST(N'2023-11-04' AS Date), 12, 2, 20, 1, CAST(N'2023-11-04 08:46:23.297' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1234, CAST(N'2023-11-04' AS Date), 12, 2, 34, 7, CAST(N'2023-11-04 08:46:23.297' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1235, CAST(N'2023-11-04' AS Date), 12, 2, 13, 13, CAST(N'2023-11-04 08:46:23.297' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1236, CAST(N'2023-11-04' AS Date), 3, 2, 21, 9, CAST(N'2023-11-04 08:47:00.107' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1237, CAST(N'2023-11-04' AS Date), 3, 2, 14, 10, CAST(N'2023-11-04 08:47:00.107' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1238, CAST(N'2023-11-04' AS Date), 3, 2, 13, 82, CAST(N'2023-11-04 08:47:00.123' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1244, CAST(N'2023-11-04' AS Date), 19, 2, 9, 213, CAST(N'2023-11-04 08:53:45.240' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1246, CAST(N'2023-11-04' AS Date), 19, 4, 9, 44, CAST(N'2023-11-04 08:54:16.320' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1247, CAST(N'2023-11-04' AS Date), 15, 2, 16, 3, CAST(N'2023-11-04 08:54:43.700' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1248, CAST(N'2023-11-04' AS Date), 15, 2, 13, 62, CAST(N'2023-11-04 08:54:43.700' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1249, CAST(N'2023-11-04' AS Date), 10, 2, 18, 15, CAST(N'2023-11-04 08:55:57.370' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1250, CAST(N'2023-11-04' AS Date), 10, 2, 13, 297, CAST(N'2023-11-04 08:55:57.370' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1252, CAST(N'2023-11-04' AS Date), 17, 2, 9, 10, CAST(N'2023-11-04 09:04:04.370' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1253, CAST(N'2023-11-04' AS Date), 5, 2, 15, 105, CAST(N'2023-11-04 09:05:35.093' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1254, CAST(N'2023-11-04' AS Date), 5, 2, 13, 390, CAST(N'2023-11-04 09:05:35.093' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1258, CAST(N'2023-11-04' AS Date), 18, 2, 13, 37, CAST(N'2023-11-04 09:23:05.427' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1259, CAST(N'2023-11-04' AS Date), 29, 2, 9, 33, CAST(N'2023-11-04 09:30:26.010' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1260, CAST(N'2023-11-04' AS Date), 4, 2, 39, 9, CAST(N'2023-11-04 09:30:37.333' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1261, CAST(N'2023-11-04' AS Date), 4, 2, 13, 165, CAST(N'2023-11-04 09:30:37.333' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1265, CAST(N'2023-11-04' AS Date), 1, 3, 9, 150, CAST(N'2023-11-04 15:05:04.630' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1266, CAST(N'2023-11-04' AS Date), 2, 3, 10, 10, CAST(N'2023-11-04 15:05:20.807' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1267, CAST(N'2023-11-04' AS Date), 3, 3, 21, 11, CAST(N'2023-11-04 15:05:49.857' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1268, CAST(N'2023-11-04' AS Date), 3, 3, 13, 53, CAST(N'2023-11-04 15:05:49.857' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1269, CAST(N'2023-11-04' AS Date), 4, 3, 40, 2, CAST(N'2023-11-04 15:06:26.940' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1270, CAST(N'2023-11-04' AS Date), 4, 3, 13, 147, CAST(N'2023-11-04 15:06:26.940' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1271, CAST(N'2023-11-04' AS Date), 5, 3, 25, 80, CAST(N'2023-11-04 15:10:00.173' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1272, CAST(N'2023-11-04' AS Date), 5, 3, 13, 240, CAST(N'2023-11-04 15:10:00.173' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1273, CAST(N'2023-11-04' AS Date), 6, 3, 43, 77, CAST(N'2023-11-04 15:10:52.780' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1274, CAST(N'2023-11-04' AS Date), 7, 3, 13, 20, CAST(N'2023-11-04 15:11:18.100' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1275, CAST(N'2023-11-04' AS Date), 10, 3, 13, 58, CAST(N'2023-11-04 15:12:27.390' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1276, CAST(N'2023-11-04' AS Date), 11, 3, 12, 1, CAST(N'2023-11-04 15:13:00.790' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1277, CAST(N'2023-11-04' AS Date), 11, 3, 13, 95, CAST(N'2023-11-04 15:13:00.790' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1278, CAST(N'2023-11-04' AS Date), 12, 3, 34, 3, CAST(N'2023-11-04 15:13:32.560' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1279, CAST(N'2023-11-04' AS Date), 13, 3, 31, 11, CAST(N'2023-11-04 15:14:01.897' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1280, CAST(N'2023-11-04' AS Date), 13, 3, 13, 8, CAST(N'2023-11-04 15:14:01.897' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1281, CAST(N'2023-11-04' AS Date), 15, 3, 13, 14, CAST(N'2023-11-04 15:15:03.287' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1282, CAST(N'2023-11-04' AS Date), 19, 3, 25, 109, CAST(N'2023-11-04 15:16:51.493' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1283, CAST(N'2023-11-04' AS Date), 16, 3, 26, 3, CAST(N'2023-11-04 15:24:24.923' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1284, CAST(N'2023-11-04' AS Date), 16, 3, 9, 8, CAST(N'2023-11-04 15:24:24.923' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1287, CAST(N'2023-11-04' AS Date), 6, 2, 13, 91, CAST(N'2023-11-04 20:58:25.030' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1289, CAST(N'2023-11-04' AS Date), 7, 2, 13, 39, CAST(N'2023-11-04 20:58:35.777' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1290, CAST(N'2023-11-04' AS Date), 1, 2, 9, 157, CAST(N'2023-11-04 20:58:40.140' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1330, CAST(N'2023-11-06' AS Date), 1, 2, 9, 166, CAST(N'2023-11-06 08:20:50.820' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1331, CAST(N'2023-11-06' AS Date), 2, 2, 10, 49, CAST(N'2023-11-06 08:21:21.250' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1332, CAST(N'2023-11-06' AS Date), 2, 2, 27, 10, CAST(N'2023-11-06 08:21:21.250' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1341, CAST(N'2023-11-06' AS Date), 30, 2, 9, 1, CAST(N'2023-11-06 08:26:32.553' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1342, CAST(N'2023-11-06' AS Date), 28, 2, 32, 4, CAST(N'2023-11-06 08:35:00.780' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1343, CAST(N'2023-11-06' AS Date), 28, 2, 22, 11, CAST(N'2023-11-06 08:35:00.780' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1344, CAST(N'2023-11-06' AS Date), 28, 2, 24, 5, CAST(N'2023-11-06 08:35:00.780' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1345, CAST(N'2023-11-06' AS Date), 28, 2, 9, 7, CAST(N'2023-11-06 08:35:00.780' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1512, CAST(N'2023-11-06' AS Date), 3, 2, 21, 6, CAST(N'2023-11-06 09:12:43.537' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1513, CAST(N'2023-11-06' AS Date), 3, 2, 19, 10, CAST(N'2023-11-06 09:12:43.537' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1514, CAST(N'2023-11-06' AS Date), 3, 2, 13, 90, CAST(N'2023-11-06 09:12:43.537' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1521, CAST(N'2023-11-06' AS Date), 6, 2, 13, 87, CAST(N'2023-11-06 09:26:25.030' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1525, CAST(N'2023-11-06' AS Date), 16, 2, 26, 3, CAST(N'2023-11-06 09:28:12.803' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1526, CAST(N'2023-11-06' AS Date), 16, 2, 9, 12, CAST(N'2023-11-06 09:28:12.803' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1527, CAST(N'2023-11-06' AS Date), 17, 2, 9, 9, CAST(N'2023-11-06 09:28:25.317' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1528, CAST(N'2023-11-06' AS Date), 19, 2, 9, 249, CAST(N'2023-11-06 09:28:34.077' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1533, CAST(N'2023-11-06' AS Date), 20, 2, 27, 10, CAST(N'2023-11-06 09:47:53.573' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1534, CAST(N'2023-11-06' AS Date), 21, 2, 13, 1, CAST(N'2023-11-06 09:48:20.643' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1535, CAST(N'2023-11-06' AS Date), 2, 1, 27, 40, CAST(N'2023-11-06 09:53:58.920' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1545, CAST(N'2023-11-06' AS Date), 29, 2, 9, 34, CAST(N'2023-11-06 10:03:16.880' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1549, CAST(N'2023-11-06' AS Date), 3, 1, 21, 4, CAST(N'2023-11-06 10:15:42.720' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1550, CAST(N'2023-11-06' AS Date), 3, 1, 19, 2, CAST(N'2023-11-06 10:15:42.720' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1551, CAST(N'2023-11-06' AS Date), 1, 1, 9, 2, CAST(N'2023-11-06 10:19:49.870' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1552, CAST(N'2023-11-06' AS Date), 4, 1, 40, 2, CAST(N'2023-11-06 10:20:11.443' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1553, CAST(N'2023-11-06' AS Date), 7, 1, 13, 4, CAST(N'2023-11-06 10:20:29.160' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1554, CAST(N'2023-11-06' AS Date), 10, 1, 25, 4, CAST(N'2023-11-06 10:20:45.130' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1555, CAST(N'2023-11-06' AS Date), 9, 1, 17, 4, CAST(N'2023-11-06 10:21:30.387' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1556, CAST(N'2023-11-06' AS Date), 9, 1, 12, 5, CAST(N'2023-11-06 10:21:30.387' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1557, CAST(N'2023-11-06' AS Date), 9, 1, 13, 2, CAST(N'2023-11-06 10:21:30.387' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1593, CAST(N'2023-11-06' AS Date), 5, 1, 25, 4, CAST(N'2023-11-06 11:45:31.850' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1594, CAST(N'2023-11-06' AS Date), 6, 1, 43, 5, CAST(N'2023-11-06 11:45:41.920' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1595, CAST(N'2023-11-06' AS Date), 11, 1, 13, 4, CAST(N'2023-11-06 11:46:00.400' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1596, CAST(N'2023-11-06' AS Date), 8, 1, 16, 5, CAST(N'2023-11-06 11:46:11.423' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1597, CAST(N'2023-11-06' AS Date), 12, 1, 30, 5, CAST(N'2023-11-06 11:46:20.957' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1598, CAST(N'2023-11-06' AS Date), 13, 1, 31, 5, CAST(N'2023-11-06 11:46:39.270' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1600, CAST(N'2023-11-06' AS Date), 16, 1, 26, 4, CAST(N'2023-11-06 11:47:01.867' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1601, CAST(N'2023-11-06' AS Date), 4, 2, 40, 10, CAST(N'2023-11-06 11:48:13.090' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1602, CAST(N'2023-11-06' AS Date), 4, 2, 13, 160, CAST(N'2023-11-06 11:48:13.090' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1603, CAST(N'2023-11-06' AS Date), 5, 2, 15, 105, CAST(N'2023-11-06 11:48:26.147' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1604, CAST(N'2023-11-06' AS Date), 5, 2, 13, 370, CAST(N'2023-11-06 11:48:26.147' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1606, CAST(N'2023-11-06' AS Date), 8, 2, 16, 10, CAST(N'2023-11-06 11:48:57.480' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1607, CAST(N'2023-11-06' AS Date), 8, 2, 13, 36, CAST(N'2023-11-06 11:48:57.480' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1608, CAST(N'2023-11-06' AS Date), 9, 2, 17, 6, CAST(N'2023-11-06 11:49:08.797' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1609, CAST(N'2023-11-06' AS Date), 9, 2, 12, 8, CAST(N'2023-11-06 11:49:08.797' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1610, CAST(N'2023-11-06' AS Date), 9, 2, 13, 46, CAST(N'2023-11-06 11:49:08.797' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1613, CAST(N'2023-11-06' AS Date), 10, 2, 18, 16, CAST(N'2023-11-06 11:49:29.280' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1614, CAST(N'2023-11-06' AS Date), 10, 2, 13, 302, CAST(N'2023-11-06 11:49:29.280' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1615, CAST(N'2023-11-06' AS Date), 11, 2, 36, 7, CAST(N'2023-11-06 11:49:54.103' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1616, CAST(N'2023-11-06' AS Date), 11, 2, 14, 17, CAST(N'2023-11-06 11:49:54.103' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1617, CAST(N'2023-11-06' AS Date), 11, 2, 13, 86, CAST(N'2023-11-06 11:49:54.103' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1618, CAST(N'2023-11-06' AS Date), 12, 2, 30, 3, CAST(N'2023-11-06 11:50:53.730' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1619, CAST(N'2023-11-06' AS Date), 12, 2, 20, 1, CAST(N'2023-11-06 11:50:53.730' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1620, CAST(N'2023-11-06' AS Date), 12, 2, 34, 8, CAST(N'2023-11-06 11:50:53.730' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1621, CAST(N'2023-11-06' AS Date), 12, 2, 13, 85, CAST(N'2023-11-06 11:50:53.730' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1624, CAST(N'2023-11-06' AS Date), 14, 2, 9, 9, CAST(N'2023-11-06 11:51:14.903' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1625, CAST(N'2023-11-06' AS Date), 15, 2, 13, 50, CAST(N'2023-11-06 11:51:29.840' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1626, CAST(N'2023-11-06' AS Date), 18, 2, 13, 33, CAST(N'2023-11-06 11:51:48.590' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1628, CAST(N'2023-11-06' AS Date), 7, 2, 13, 36, CAST(N'2023-11-06 12:28:01.403' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1649, CAST(N'2023-11-06' AS Date), 29, 3, 9, 13, CAST(N'2023-11-06 13:11:50.827' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1662, CAST(N'2023-11-06' AS Date), 13, 3, 31, 3, CAST(N'2023-11-06 13:38:51.603' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1663, CAST(N'2023-11-06' AS Date), 13, 2, 31, 21, CAST(N'2023-11-06 13:39:09.967' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1664, CAST(N'2023-11-06' AS Date), 13, 2, 47, 73, CAST(N'2023-11-06 13:39:09.967' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1665, CAST(N'2023-11-06' AS Date), 13, 2, 13, 52, CAST(N'2023-11-06 13:39:09.967' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1672, CAST(N'2023-11-06' AS Date), 2, 3, 10, 11, CAST(N'2023-11-06 13:44:31.793' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1687, CAST(N'2023-11-06' AS Date), 11, 3, 36, 1, CAST(N'2023-11-06 13:57:08.903' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1688, CAST(N'2023-11-06' AS Date), 11, 3, 13, 93, CAST(N'2023-11-06 13:57:08.903' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1691, CAST(N'2023-11-06' AS Date), 6, 3, 43, 73, CAST(N'2023-11-06 13:57:32.973' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1693, CAST(N'2023-11-06' AS Date), 9, 3, 12, 6, CAST(N'2023-11-06 13:59:17.333' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1698, CAST(N'2023-11-06' AS Date), 5, 3, 25, 160, CAST(N'2023-11-06 14:04:27.593' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1699, CAST(N'2023-11-06' AS Date), 5, 3, 15, 100, CAST(N'2023-11-06 14:04:27.593' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1700, CAST(N'2023-11-06' AS Date), 5, 3, 13, 100, CAST(N'2023-11-06 14:04:27.593' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1702, CAST(N'2023-11-06' AS Date), 3, 3, 21, 7, CAST(N'2023-11-06 14:06:27.980' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1703, CAST(N'2023-11-06' AS Date), 3, 3, 13, 60, CAST(N'2023-11-06 14:06:27.980' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1704, CAST(N'2023-11-06' AS Date), 19, 3, 25, 205, CAST(N'2023-11-06 14:08:41.830' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1706, CAST(N'2023-11-06' AS Date), 7, 3, 13, 19, CAST(N'2023-11-06 14:11:55.110' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1710, CAST(N'2023-11-06' AS Date), 4, 3, 40, 3, CAST(N'2023-11-06 14:22:01.530' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1711, CAST(N'2023-11-06' AS Date), 4, 3, 13, 140, CAST(N'2023-11-06 14:22:01.530' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1713, CAST(N'2023-11-06' AS Date), 15, 3, 13, 19, CAST(N'2023-11-06 14:55:22.223' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1715, CAST(N'2023-11-06' AS Date), 17, 3, 9, 7, CAST(N'2023-11-06 14:58:39.890' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1716, CAST(N'2023-11-06' AS Date), 1, 3, 9, 148, CAST(N'2023-11-06 15:04:36.480' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1717, CAST(N'2023-11-06' AS Date), 10, 3, 25, 24, CAST(N'2023-11-06 15:50:40.760' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1718, CAST(N'2023-11-06' AS Date), 12, 3, 34, 9, CAST(N'2023-11-06 15:51:04.103' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1719, CAST(N'2023-11-06' AS Date), 16, 3, 26, 3, CAST(N'2023-11-06 15:51:29.523' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1720, CAST(N'2023-11-06' AS Date), 16, 3, 9, 6, CAST(N'2023-11-06 15:51:29.523' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1721, CAST(N'2023-11-06' AS Date), 18, 3, 13, 30, CAST(N'2023-11-06 15:51:44.837' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1753, CAST(N'2023-11-06' AS Date), 2, 4, 27, 8, CAST(N'2023-11-06 17:09:59.687' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1754, CAST(N'2023-11-06' AS Date), 1, 4, 9, 120, CAST(N'2023-11-06 17:10:10.067' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1755, CAST(N'2023-11-06' AS Date), 3, 4, 19, 56, CAST(N'2023-11-06 17:10:27.460' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1756, CAST(N'2023-11-06' AS Date), 11, 4, 36, 89, CAST(N'2023-11-06 17:10:49.840' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1757, CAST(N'2023-11-06' AS Date), 4, 4, 40, 2, CAST(N'2023-11-06 17:15:14.220' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1763, CAST(N'2023-11-06' AS Date), 5, 4, 25, 2, CAST(N'2023-11-06 17:17:36.553' AS DateTime))
GO
INSERT [dbo].[Order] ([id], [ngay], [idCompany], [idCa], [idSuat], [SL], [time]) VALUES (1764, CAST(N'2023-11-06' AS Date), 5, 4, 15, 2, CAST(N'2023-11-06 17:17:36.553' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[Cookie] ON 

GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (3, N'admin', N'4C01117B-D0EB-44B9-AB94-0295B47B60E6', CAST(N'2023-10-25 12:20:49.510' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (4, N'admin', N'62F344D0-4D8A-44B3-B4BF-EE3B1B227377', CAST(N'2023-10-25 13:10:59.213' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (6, N'Admin', N'604A789A-BA28-48B0-A59E-59901622C2DE', CAST(N'2023-10-25 17:47:23.820' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (9, N'admin', N'39F206D8-1CFE-4E24-9B94-1AB416D48BA5', CAST(N'2023-10-27 23:22:57.377' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (10, N'admin', N'247E092A-E1F9-406E-BA99-29F9DE98078A', CAST(N'2023-10-28 00:05:29.880' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (11, N'admin', N'24509509-68F7-49C3-B737-2A46050A8CAD', CAST(N'2023-10-28 00:05:35.497' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (12, N'admin', N'760F4003-3844-4CF4-A786-FB4D21CA2A39', CAST(N'2023-10-28 00:05:41.910' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (14, N'ADMIN', N'3CC50860-5840-4A6F-AB6E-D884860A6E28', CAST(N'2023-10-28 09:41:55.067' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (19, N'trong', N'5B1A678D-3B5C-4638-A276-5FB7D85CF4F3', CAST(N'2023-10-30 09:55:56.277' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (21, N'admin', N'3A018DB8-AA24-4241-AE62-7756B07269E0', CAST(N'2023-10-30 16:52:00.330' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (24, N'trong', N'E2AB073E-8855-4179-8B66-FB491F1D2FC9', CAST(N'2023-10-30 17:36:37.967' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (25, N'admin', N'42846224-AA53-4C69-BC93-1CDB95713B13', CAST(N'2023-10-30 18:20:21.950' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (26, N'trong', N'B477530A-6570-4691-B7F6-F07B9BF486D5', CAST(N'2023-10-30 18:23:02.170' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (27, N'admin', N'E84EFC16-8533-40AB-98E4-BD430841B6AC', CAST(N'2023-10-30 21:28:20.723' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (29, N'Trong', N'69897328-F8E0-46DE-A4D5-D5C8375BADB5', CAST(N'2023-10-30 21:49:27.223' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (31, N'Trong', N'70E052B0-FAFD-45FC-9922-BD7A93EFAACB', CAST(N'2023-10-31 07:26:31.343' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (33, N'Trong', N'E871E00A-DBC9-4E3A-AF73-0BD3728854C0', CAST(N'2023-11-01 06:43:16.793' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (38, N'admin', N'75FDA4FD-91C4-444E-8EFB-D36B46A941C7', CAST(N'2023-11-01 13:32:16.353' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (39, N'admin', N'02DD6EBE-2DB1-407F-8979-D5B4B3292445', CAST(N'2023-11-01 13:32:16.673' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (47, N'Trong', N'21F93833-C62C-4726-B875-65C0F4C51E7A', CAST(N'2023-11-01 20:31:54.007' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (52, N'Hoa', N'5B8D8428-B503-401E-A5C5-F0FBE6F97E78', CAST(N'2023-11-03 13:48:24.637' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (53, N'Trong', N'2526E625-230F-4CFA-9E04-A3182A3F6E8C', CAST(N'2023-11-03 13:53:03.570' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (54, N'Trong', N'CEE4C73B-329A-4A14-852F-1B5F2C6DAE86', CAST(N'2023-11-03 14:03:26.760' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (60, N'admin', N'29E83576-CD3C-41EF-97EC-6695E14D1F98', CAST(N'2023-11-03 20:51:12.637' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (63, N'Trong', N'12F5E040-FE3C-4D4F-8846-BE574D934171', CAST(N'2023-11-04 10:04:24.223' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (64, N'hoa', N'B4009D55-CBCA-442F-AA54-BF31CF1BC6F4', CAST(N'2023-11-04 10:21:57.760' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (68, N'trong', N'2B9ACABF-6691-4250-9EB9-291D104937B5', CAST(N'2023-11-04 11:51:27.137' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (69, N'Trong', N'E84FDC00-33A3-41A1-81FF-D55FA3562C0D', CAST(N'2023-11-04 13:30:19.927' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (70, N'Trong', N'BC1ADEDD-593B-4C34-AE70-1BC45A04739F', CAST(N'2023-11-06 07:55:07.453' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (71, N'hoa', N'FFFE9024-E2A6-4336-B149-E2CAB65824A2', CAST(N'2023-11-06 09:23:56.943' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (72, N'Trong', N'F0197B33-95B6-46D9-8862-9EFAAE36028E', CAST(N'2023-11-06 09:47:08.087' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (76, N'Admin', N'557F0823-8E10-449E-8D36-7894AE2DA9C6', CAST(N'2023-11-06 18:02:33.460' AS DateTime))
GO
INSERT [dbo].[Cookie] ([id], [uid], [cookie], [time]) VALUES (77, N'Admin', N'1051A097-5624-405A-B6B1-DB174397C4AA', CAST(N'2023-11-06 18:03:35.847' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Cookie] OFF
GO
SET IDENTITY_INSERT [dbo].[LOG] ON 

GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1828, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=2;order_id[]=13,10,9;order_sl[]=0,0,165;uid=Admin;today=2023-11-01;', CAST(N'2023-11-01 18:45:18.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1865, N'edit_company', N'ip=171.255.122.215;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.5834122, 105.795265;phone=0986.516.375;zalo=xxx;default_order[]=9;today=2023-11-02;uid=Trong;', CAST(N'2023-11-01 20:32:20.723' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1871, N'edit_company', N'ip=171.255.122.215;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=10;uid=Trong;today=2023-11-01;', CAST(N'2023-11-01 20:36:25.807' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1874, N'edit_company', N'ip=171.255.122.215;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=10,27;uid=Trong;today=2023-11-01;', CAST(N'2023-11-01 20:37:32.573' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1877, N'edit_company', N'ip=171.255.122.215;action=edit_company;id=3;name=BET 25,25;address=Yên Phong;gps=null, null;phone=113;zalo=null;default_order[]=21,14,13;uid=Trong;today=2023-11-01;', CAST(N'2023-11-01 20:38:13.977' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1881, N'enable_suat_an', N'ip=171.255.122.215;action=enable_suat_an;id=21;name=Mỳ25;sign=Mỳ25;price=25000;uid=Trong;today=2023-11-01;', CAST(N'2023-11-01 20:38:54.243' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1886, N'edit_company', N'ip=171.255.122.215;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=12,13;uid=Trong;today=2023-11-01;', CAST(N'2023-11-01 20:41:09.267' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1889, N'edit_company', N'ip=171.255.122.215;action=edit_company;id=5;name=LING Yi 25,70;address=Yên Phong;gps=null, null;phone=null;zalo=null;default_order[]=15,13;uid=Trong;today=2023-11-01;', CAST(N'2023-11-01 20:41:39.003' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1892, N'edit_company', N'ip=171.255.122.215;action=edit_company;id=6;name=VESOGO 25;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=13;uid=Trong;today=2023-11-01;', CAST(N'2023-11-01 20:42:13.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1895, N'edit_company', N'ip=171.255.122.215;action=edit_company;id=7;name=TOMO 25;address=Khắc Niệm;gps=null, null;phone=null;zalo=null;default_order[]=13;uid=Trong;today=2023-11-01;', CAST(N'2023-11-01 20:42:27.757' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1900, N'edit_company', N'ip=171.255.122.215;action=edit_company;id=8;name=TIA SÁNG 25;address=Quế Võ;gps=null, null;phone=null;zalo=null;default_order[]=13;uid=Trong;today=2023-11-01;', CAST(N'2023-11-01 20:44:02.037' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1905, N'edit_company', N'ip=171.255.122.215;action=edit_company;id=9;name=THONOVA 25,40;address=Quế Võ 2;gps=null, null;phone=null;zalo=null;default_order[]=17,12,13;uid=Trong;today=2023-11-01;', CAST(N'2023-11-01 20:45:00.830' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1910, N'edit_company', N'ip=171.255.122.215;action=edit_company;id=11;name=GW 25,(25,40);address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=14,12,13;uid=Trong;today=2023-11-01;', CAST(N'2023-11-01 20:46:17.960' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1915, N'edit_company', N'ip=171.255.122.215;action=edit_company;id=12;name=GEP 25,(50,40);address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=17,19,20,13;uid=Trong;today=2023-11-01;', CAST(N'2023-11-01 20:47:08.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1919, N'enable_suat_an', N'ip=171.255.122.215;action=enable_suat_an;id=17;name=Bánh Sữa 25;sign=BanhSua25;price=25000;uid=Trong;today=2023-11-01;', CAST(N'2023-11-01 20:47:27.800' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1924, N'edit_company', N'ip=171.255.122.215;action=edit_company;id=13;name=PRIMETECH 25;address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=21,13;uid=Trong;today=2023-11-01;', CAST(N'2023-11-01 20:48:10.600' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1931, N'edit_company', N'ip=171.255.122.215;action=edit_company;id=15;name=ETS 25;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=13;uid=Trong;today=2023-11-01;', CAST(N'2023-11-01 20:49:08.263' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (1940, N'edit_company', N'ip=171.255.122.215;action=edit_company;id=19;name=ECT 30;address=somewhere1;gps=null, null;phone=null;zalo=null;default_order[]=9;uid=Trong;today=2023-11-01;', CAST(N'2023-11-01 20:50:43.080' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2125, N'add_loai', N'ip=127.0.0.1;action=add_loai;id=4;name=xxx;uid=admin;today=2023-11-01;', CAST(N'2023-11-01 23:27:04.813' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2126, N'add_loai', N'ip=127.0.0.1;action=add_loai;id=4;name=xxx;uid=admin;today=2023-11-01;', CAST(N'2023-11-01 23:27:09.140' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2127, N'add_loai', N'ip=127.0.0.1;action=add_loai;id=4;name=xxx;uid=admin;today=2023-11-01;', CAST(N'2023-11-01 23:27:59.180' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2128, N'add_loai', N'ip=127.0.0.1;action=add_loai;id=4;name=44;uid=admin;today=2023-11-01;', CAST(N'2023-11-01 23:29:14.640' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2129, N'enable_suat_an', N'ip=127.0.0.1;action=enable_suat_an;id=16;name=Sữa25;sign=Sữa25;price=25000;loai=1;uid=admin;today=2023-11-01;', CAST(N'2023-11-01 23:29:35.490' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2132, N'add_loai', N'ip=127.0.0.1;action=add_loai;id=4;name=5;uid=admin;today=2023-11-01;', CAST(N'2023-11-01 23:29:43.333' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2133, N'add_loai', N'ip=127.0.0.1;action=add_loai;id=4;name=5;uid=admin;today=2023-11-01;', CAST(N'2023-11-01 23:30:49.427' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2134, N'add_loai', N'ip=127.0.0.1;action=add_loai;id=4;name=5;uid=admin;today=2023-11-01;', CAST(N'2023-11-01 23:32:06.587' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2135, N'add_loai', N'ip=127.0.0.1;action=add_loai;id=4;name=5;uid=admin;today=2023-11-01;', CAST(N'2023-11-01 23:32:11.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2136, N'add_loai', N'ip=127.0.0.1;action=add_loai;id=4;name=5;uid=admin;today=2023-11-01;', CAST(N'2023-11-01 23:36:05.800' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2138, N'add_loai', N'ip=127.0.0.1;action=add_loai;id=4;name=55;uid=admin;today=2023-11-01;', CAST(N'2023-11-01 23:36:16.863' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2139, N'add_loai', N'ip=127.0.0.1;action=add_loai;id=44;name=5;uid=admin;today=2023-11-01;', CAST(N'2023-11-01 23:36:31.413' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2140, N'add_loai', N'ip=127.0.0.1;action=add_loai;id=44;name=5;uid=admin;today=2023-11-01;', CAST(N'2023-11-01 23:36:34.527' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2141, N'add_loai', N'ip=127.0.0.1;action=add_loai;id=44;name=5;uid=admin;today=2023-11-01;', CAST(N'2023-11-01 23:37:52.777' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2190, N'save_order', N'ip=27.67.176.160;action=save_order;id_company=14;id_ca=2;order_id[]=9;order_sl[]=7;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 08:01:53.270' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2204, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=11;id_ca=2;order_id[]=14,12,13;order_sl[]=17,7,90;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 08:24:28.037' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2206, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=29;id_ca=2;order_id[]=9;order_sl[]=35;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 08:25:25.903' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2208, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=29;id_ca=3;order_id[]=9;order_sl[]=14;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 08:25:32.457' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2210, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=13;id_ca=2;order_id[]=21,13;order_sl[]=18,59;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 08:26:13.320' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2212, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=6;id_ca=2;order_id[]=13;order_sl[]=94;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 08:32:09.710' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2214, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=9;id_ca=2;order_id[]=17,12,13;order_sl[]=6,8,40;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 08:37:00.120' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2238, N'edit_loai', N'ip=127.0.0.1;action=edit_loai;id=4;name=5ss;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:39:20.403' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2239, N'edit_loai', N'ip=127.0.0.1;action=edit_loai;id=4;name=5ss;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:39:22.937' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2241, N'edit_loai', N'ip=127.0.0.1;action=edit_loai;id=4;name=5xxx;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:39:33.240' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2242, N'edit_loai', N'ip=127.0.0.1;action=edit_loai;id=4;name=5xxx;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:40:25.633' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2244, N'edit_loai', N'ip=127.0.0.1;action=edit_loai;id=4;name=5xxx;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:40:30.673' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2246, N'edit_loai', N'ip=127.0.0.1;action=edit_loai;id=4;name=xx;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:40:33.590' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2254, N'del_loai', N'ip=127.0.0.1;action=del_loai;id=4;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:42:15.803' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2256, N'edit_loai', N'ip=127.0.0.1;action=edit_loai;id=1;name=TQ;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:42:26.573' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2257, N'edit_loai', N'ip=127.0.0.1;action=edit_loai;id=3;name=TQxxx;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:42:30.933' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2259, N'edit_loai', N'ip=127.0.0.1;action=edit_loai;id=2;name=VNxxx;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:42:33.053' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2261, N'edit_loai', N'ip=127.0.0.1;action=edit_loai;id=1;name=TQ;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:42:38.577' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2263, N'edit_loai', N'ip=127.0.0.1;action=edit_loai;id=2;name=VN;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:42:42.813' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2265, N'edit_loai', N'ip=127.0.0.1;action=edit_loai;id=3;name=Khác;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:42:47.077' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2273, N'enable_suat_an', N'ip=127.0.0.1;action=enable_suat_an;id=17;name=Bánh Sữa 25;sign=BanhSua25;price=25000;loai=3;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:43:01.837' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2275, N'enable_suat_an', N'ip=127.0.0.1;action=enable_suat_an;id=25;name=Bun25;sign=Bun25;price=25000;loai=3;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:43:05.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2277, N'enable_suat_an', N'ip=127.0.0.1;action=enable_suat_an;id=26;name=MocChau30;sign=MocChau30;price=30000;loai=3;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:43:09.290' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2279, N'enable_suat_an', N'ip=127.0.0.1;action=enable_suat_an;id=21;name=Mỳ25;sign=Mỳ25;price=25000;loai=3;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:43:13.347' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2281, N'enable_suat_an', N'ip=127.0.0.1;action=enable_suat_an;id=11;name=Sữa chua;sign=Sữa;price=10000;loai=3;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:43:16.817' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2283, N'enable_suat_an', N'ip=127.0.0.1;action=enable_suat_an;id=16;name=Sữa25;sign=Sữa25;price=25000;loai=3;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:43:20.803' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2285, N'enable_suat_an', N'ip=127.0.0.1;action=enable_suat_an;id=23;name=SuaFami30;sign=SuaFami30;price=30000;loai=3;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:43:23.843' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2287, N'enable_suat_an', N'ip=127.0.0.1;action=enable_suat_an;id=22;name=SuaTH30;sign=SuaTH30;price=30000;loai=3;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:43:27.817' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2289, N'enable_suat_an', N'ip=127.0.0.1;action=enable_suat_an;id=13;name=VN25;sign=VN25;price=25000;loai=2;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:43:34.587' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2291, N'enable_suat_an', N'ip=127.0.0.1;action=enable_suat_an;id=10;name=VN28;sign=VN28;price=28000;loai=2;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:43:39.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2293, N'enable_suat_an', N'ip=127.0.0.1;action=enable_suat_an;id=9;name=VN30;sign=VN30;price=30000;loai=2;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:43:42.333' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2295, N'enable_suat_an', N'ip=127.0.0.1;action=enable_suat_an;id=27;name=VN40;sign=VN40;price=40000;loai=2;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:43:45.763' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2297, N'enable_suat_an', N'ip=127.0.0.1;action=enable_suat_an;id=1;name=Xôi sáng;sign=Xôi;price=15000;loai=3;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:43:51.797' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2299, N'disable_suat_an', N'ip=127.0.0.1;action=disable_suat_an;id=1;name=Xôi sáng;sign=Xôi;price=15000;uid=admin;today=2023-11-01;', CAST(N'2023-11-02 08:43:54.320' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2301, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=16;id_ca=2;order_id[]=26,23,9;order_sl[]=2,0,14;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 08:44:32.153' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2303, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=1;id_ca=2;order_id[]=9;order_sl[]=166;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 08:44:58.253' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2318, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=2;id_ca=2;order_id[]=10,27;order_sl[]=46,11;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 08:53:11.970' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2320, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=4;id_ca=2;order_id[]=12,13;order_sl[]=9,106;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 08:53:53.513' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2322, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=10;id_ca=2;order_id[]=18,13;order_sl[]=19,305;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 08:54:50.393' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2324, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=8;id_ca=2;order_id[]=13;order_sl[]=38;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 08:55:21.370' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2328, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=8;name=TIA SÁNG 25;address=Quế Võ;gps=null, null;phone=null;zalo=null;default_order[]=16,13;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 08:55:41.990' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2331, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=8,38;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 08:55:55.033' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2333, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=12;id_ca=2;order_id[]=17,19,20,13;order_sl[]=5,7,1,82;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 08:56:55.940' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2339, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=19;id_ca=2;order_id[]=9;order_sl[]=202;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:00:37.873' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2341, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=19;id_ca=3;order_id[]=9;order_sl[]=26;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:01:03.757' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2343, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=19;id_ca=4;order_id[]=9;order_sl[]=44;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:01:12.020' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2345, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=12;id_ca=2;order_id[]=17,19,20,13;order_sl[]=6,7,1,81;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:02:02.713' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2395, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=7;id_ca=2;order_id[]=13;order_sl[]=35;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:08:29.700' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2400, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=15;id_ca=2;order_id[]=13;order_sl[]=61;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:09:50.257' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2404, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=15;name=ETS 25;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=16,13;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:10:18.750' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2411, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=15;id_ca=2;order_id[]=16,13;order_sl[]=2,61;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:10:40.943' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2414, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=3;id_ca=2;order_id[]=21,14,13;order_sl[]=6,10,90;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:11:37.610' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2427, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=5;id_ca=2;order_id[]=15,13;order_sl[]=115,370;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:18:20.867' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2445, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=17;id_ca=2;order_id[]=9;order_sl[]=10;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:19:30.803' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2455, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=28;id_ca=2;order_id[]=23,22,24,9;order_sl[]=4,13,3,7;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:20:04.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2473, N'add_company', N'ip=171.240.28.123;action=add_company;name=LIM;address=Quế Võ 3;gps=;phone=;zalo=;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:23:02.397' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2474, N'add_company', N'ip=171.240.28.123;action=add_company;name=LIM;address=Quế Võ 3;gps=;phone=;zalo=;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:23:12.923' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2475, N'add_company', N'ip=171.240.28.123;action=add_company;name=LIM;address=Quế Võ 3;gps=;phone=;zalo=;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:23:15.263' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2486, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=30;name=LIM;address=Quế Võ 3;gps=null, null;phone=;zalo=null;default_order[]=9;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:24:00.860' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2489, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=29;id_ca=2;order_id[]=9;order_sl[]=2;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:24:34.600' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2491, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=29;id_ca=2;order_id[]=9;order_sl[]=35;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:24:44.820' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2493, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=30;id_ca=2;order_id[]=9;order_sl[]=2;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:24:49.940' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2499, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=11;id_ca=3;order_id[]=14,12,13;order_sl[]=0,1,98;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:27:23.317' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2511, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=2;id_ca=2;order_id[]=10,27;order_sl[]=46,12;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 09:31:50.520' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2579, N'enable_suat_an', N'ip=113.186.3.221;action=enable_suat_an;id=1;name=Xôi sáng;sign=Xôi;price=15000;loai=3;uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 10:51:22.967' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2581, N'disable_suat_an', N'ip=113.186.3.221;action=disable_suat_an;id=1;name=Xôi sáng;sign=Xôi;price=15000;loai=1;uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 10:51:26.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2583, N'disable_suat_an', N'ip=113.186.3.221;action=disable_suat_an;id=1;name=Xôi sáng;sign=Xôi;price=15000;loai=3;uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 10:51:30.843' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2630, N'save_order', N'ip=171.255.127.253;action=save_order;id_company=18;id_ca=2;order_id[]=13;order_sl[]=42;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 11:05:47.410' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2660, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=2;id_ca=3;order_id[]=10,27;order_sl[]=10,0;uid=Trong;', CAST(N'2023-11-02 13:53:18.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2662, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=13;id_ca=3;order_id[]=21,13;order_sl[]=12,8;uid=Trong;', CAST(N'2023-11-02 13:53:47.370' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2664, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=30;id_ca=3;order_id[]=9;order_sl[]=2;uid=Trong;', CAST(N'2023-11-02 13:53:55.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2666, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=9;id_ca=3;order_id[]=17,12,13;order_sl[]=0,7,0;uid=Trong;', CAST(N'2023-11-02 13:59:42.247' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2668, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=6;id_ca=3;order_id[]=13;order_sl[]=78;uid=Trong;', CAST(N'2023-11-02 14:06:26.460' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2670, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=7;id_ca=3;order_id[]=13;order_sl[]=15;uid=Trong;', CAST(N'2023-11-02 14:07:18.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2672, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=6;id_ca=3;order_id[]=13;order_sl[]=80;uid=Trong;', CAST(N'2023-11-02 14:09:00.517' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2677, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=6;name=VESOGO 25;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=17,13;uid=Trong;', CAST(N'2023-11-02 14:09:53.313' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2680, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=6;id_ca=3;order_id[]=17,13;order_sl[]=1,79;uid=Trong;', CAST(N'2023-11-02 14:10:06.873' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2682, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=6;id_ca=3;order_id[]=17,13;order_sl[]=1,80;uid=Trong;', CAST(N'2023-11-02 14:10:31.733' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2684, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=8;id_ca=3;order_id[]=16,13;order_sl[]=0,14;uid=Trong;', CAST(N'2023-11-02 14:13:28.070' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2686, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=3;id_ca=3;order_id[]=21,14,13;order_sl[]=13,0,55;uid=Trong;', CAST(N'2023-11-02 14:16:21.690' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2691, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=1;uid=Trong;', CAST(N'2023-11-02 14:17:27.513' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2694, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=12;id_ca=3;order_id[]=17,19,20,13;order_sl[]=52,7,0,21;uid=Trong;', CAST(N'2023-11-02 14:19:25.163' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2696, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=4;id_ca=3;order_id[]=12,13;order_sl[]=0,146;uid=Trong;', CAST(N'2023-11-02 14:20:29.823' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2698, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=5;id_ca=3;order_id[]=15,13;order_sl[]=90,260;uid=Trong;', CAST(N'2023-11-02 14:22:07.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2700, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=19;id_ca=3;order_id[]=9;order_sl[]=86;uid=Trong;', CAST(N'2023-11-02 14:22:36.283' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2705, N'add_suat_an', N'ip=171.240.28.123;action=add_suat_an;name=Đá Lạnh 10;sign=Đá Lạnh 10;price=10000;loai=3;uid=Trong;', CAST(N'2023-11-02 14:33:20.763' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2713, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=10;name=NVC 25,35;address=Yên Phong;gps=null, null;phone=null;zalo=null;default_order[]=28,18,13;uid=Trong;', CAST(N'2023-11-02 14:34:42.660' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2716, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=10;id_ca=2;order_id[]=28,18,13;order_sl[]=4,19,305;uid=Trong;', CAST(N'2023-11-02 14:35:02.823' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2718, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=18;id_ca=3;order_id[]=13;order_sl[]=20;uid=Trong;', CAST(N'2023-11-02 14:41:20.773' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2727, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=16;id_ca=3;order_id[]=26,23,9;order_sl[]=3,0,8;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 14:45:42.407' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2733, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=10;id_ca=3;order_id[]=28,18,13;order_sl[]=0,0,40;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 15:03:08.770' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2735, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=161;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 15:29:56.253' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2741, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=15;id_ca=3;order_id[]=16,13;order_sl[]=0,13;uid=Trong;today=2023-11-02;', CAST(N'2023-11-02 15:36:56.633' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (2888, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=3;name=BET 25,25;address=Yên Phong;gps=null, null;phone=113;zalo=null;default_order[]=21,14,13;uid=admin;', CAST(N'2023-11-02 20:52:23.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3062, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.5834122, 105.795265;phone=0986.516.375;zalo=xxx;default_order[]=9;data_order=[{"id":"9","ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:05:53.557' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3065, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=10,27;data_order=[{"id":"10","ngay":["2","3","4","5","6","7","8"]},{"id":"27","ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:05:56.877' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3068, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=3;name=BET 25,25;address=Yên Phong;gps=null, null;phone=113;zalo=null;default_order[]=21,14,13;data_order=[{"id":"21","ngay":["2","3","4","5","6","7","8"]},{"id":"14","ngay":["2","3","4","5","6","7","8"]},{"id":"13","ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:06:00.133' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3071, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=13,12,13;data_order=[{"id":"13","ngay":["2","3","4","5","6","7","8"]},{"id":"12","ngay":["2","3","4","5","6","7","8"]},{"id":"13","ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:06:02.910' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3072, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=13,12,13;data_order=[{"id":"13","ngay":["2","3","4","5","6","7","8"]},{"id":"12","ngay":["2","3","4","5","6","7","8"]},{"id":"13","ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:06:09.570' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3073, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=13,12,13;data_order=[{"id":"13","ngay":["2","3","4","5","6","7","8"]},{"id":"12","ngay":["2","3","4","5","6","7","8"]},{"id":"13","ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:06:34.370' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3074, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=5;name=LING Yi 25,70;address=Yên Phong;gps=null, null;phone=null;zalo=null;default_order[]=13,15,13;data_order=[{"id":"13","ngay":["2","3","4","5","6","7","8"]},{"id":"15","ngay":["2","3","4","5","6","7","8"]},{"id":"13","ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:07:21.923' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3075, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=6;name=VESOGO 25;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=13,13;data_order=[{"id":"13","ngay":["2","3","4","5","6","7","8"]},{"id":"13","ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:07:27.680' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3076, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=6;name=VESOGO 25;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=13,13;data_order=[{"id":"13","ngay":["2","3","4","5","6","7","8"]},{"id":"13","ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:07:32.390' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3077, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=6;name=VESOGO 25;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=13,13;data_order=[{"id":"13","ngay":["2","3","4","5","6","7","8"]},{"id":"13","ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:07:36.090' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3078, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=6;name=VESOGO 25;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=13,13;data_order=[{"id":"13","ngay":["2","3","4","5","6","7","8"]},{"id":"13","ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:08:02.680' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3079, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=6;name=VESOGO 25;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=13,13;data_order=[{"id":"13","ngay":["2","3","4","5","6","7","8"]},{"id":"13","ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:08:08.510' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3080, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=9;name=THONOVA 25,40;address=Quế Võ 2;gps=null, null;phone=null;zalo=null;default_order[]=13,12,13;data_order=[{"id":"13","ngay":["2","3","4","5","6","7","8"]},{"id":"12","ngay":["2","3","4","5","6","7","8"]},{"id":"13","ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:08:32.310' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3109, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.5834122, 105.795265;phone=0986.516.375;zalo=xxx;default_order[]=9;data_order=[{"id":9,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:15:57.073' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3112, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=10,27;data_order=[{"id":10,"ngay":["2","3","4","5","6","7","8"]},{"id":27,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:00.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3115, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=3;name=BET 25,25;address=Yên Phong;gps=null, null;phone=113;zalo=null;default_order[]=21,14,13;data_order=[{"id":21,"ngay":["2","3","4","5","6","7","8"]},{"id":14,"ngay":["2","3","4","5","6","7","8"]},{"id":13,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:04.643' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3118, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=12,13;data_order=[{"id":12,"ngay":["2","3","4","5","6","7","8"]},{"id":13,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:08.310' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3121, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=5;name=LING Yi 25,70;address=Yên Phong;gps=null, null;phone=null;zalo=null;default_order[]=15,13;data_order=[{"id":15,"ngay":["2","3","4","5","6","7","8"]},{"id":13,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:11.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3124, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=6;name=VESOGO 25;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:14.597' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3127, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=7;name=TOMO 25;address=Khắc Niệm;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:18.040' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3130, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=8;name=TIA SÁNG 25;address=Quế Võ;gps=null, null;phone=null;zalo=null;default_order[]=16,13;data_order=[{"id":16,"ngay":["2","3","4","5","6","7","8"]},{"id":13,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:21.450' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3133, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=9;name=THONOVA 25,40;address=Quế Võ 2;gps=null, null;phone=null;zalo=null;default_order[]=12,13;data_order=[{"id":12,"ngay":["2","3","4","5","6","7","8"]},{"id":13,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:24.997' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3136, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=10;name=NVC 25,35;address=Yên Phong;gps=null, null;phone=null;zalo=null;default_order[]=28,18,13;data_order=[{"id":28,"ngay":["2","3","4","5","6","7","8"]},{"id":18,"ngay":["2","3","4","5","6","7","8"]},{"id":13,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:28.707' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3139, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=11;name=GW 25,(25,40);address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=14,12,13;data_order=[{"id":14,"ngay":["2","3","4","5","6","7","8"]},{"id":12,"ngay":["2","3","4","5","6","7","8"]},{"id":13,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:32.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3142, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=12;name=GEP 25,(50,40);address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=17,19,20,13;data_order=[{"id":17,"ngay":["2","3","4","5","6","7","8"]},{"id":19,"ngay":["2","3","4","5","6","7","8"]},{"id":20,"ngay":["2","3","4","5","6","7","8"]},{"id":13,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:35.940' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3145, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=13;name=PRIMETECH 25;address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=21,13;data_order=[{"id":21,"ngay":["2","3","4","5","6","7","8"]},{"id":13,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:39.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3148, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=14;name=MOATECH 30;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=9;data_order=[{"id":9,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:41.983' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3151, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=15;name=ETS 25;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=16,13;data_order=[{"id":16,"ngay":["2","3","4","5","6","7","8"]},{"id":13,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:44.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3154, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=16;name=SCR 30;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=26,23,9;data_order=[{"id":26,"ngay":["2","3","4","5","6","7","8"]},{"id":23,"ngay":["2","3","4","5","6","7","8"]},{"id":9,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:48.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3157, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=17;name=TRC 30;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=9;data_order=[{"id":9,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:52.430' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3160, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=18;name=GMAX 25;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:55.653' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3163, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=19;name=ECT 30;address=somewhere1;gps=null, null;phone=null;zalo=null;default_order[]=9;data_order=[{"id":9,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:16:59.633' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3166, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=18;name=GMAX 25;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:17:03.083' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3169, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=20;name=SUNRISE 40;address=somewhere;gps=null, null;phone=null;zalo=null;default_order[]=27;data_order=[{"id":27,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:17:07.630' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3172, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=21;name=WING FAT 25;address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:17:10.917' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3175, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=28;name=MAXIN 30,30;address=Quế Võ 2;gps=null, null;phone=;zalo=null;default_order[]=23,22,24,9;data_order=[{"id":23,"ngay":["2","3","4","5","6","7","8"]},{"id":22,"ngay":["2","3","4","5","6","7","8"]},{"id":24,"ngay":["2","3","4","5","6","7","8"]},{"id":9,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:17:14.873' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3178, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=29;name=ILKWANG 30;address=Quế Võ 2;gps=null, null;phone=;zalo=null;default_order[]=9;data_order=[{"id":9,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:17:18.040' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3181, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=30;name=LIM;address=Quế Võ 3;gps=null, null;phone=;zalo=null;default_order[]=9;data_order=[{"id":9,"ngay":["2","3","4","5","6","7","8"]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:17:21.803' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3192, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.5834122, 105.795265;phone=0986.516.375;zalo=xxx;default_order[]=9;data_order=[{"id":9,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:18:35.047' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3195, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=10,27;data_order=[{"id":10,"ngay":[2,3,4,5,6,7,8]},{"id":27,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:18:37.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3198, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=3;name=BET 25,25;address=Yên Phong;gps=null, null;phone=113;zalo=null;default_order[]=21,14,13;data_order=[{"id":21,"ngay":[2,3,4,5,6,7,8]},{"id":14,"ngay":[2,3,4,5,6,7,8]},{"id":13,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:18:39.923' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3201, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=12,13;data_order=[{"id":12,"ngay":[2,3,4,5,6,7,8]},{"id":13,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:18:42.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3204, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=5;name=LING Yi 25,70;address=Yên Phong;gps=null, null;phone=null;zalo=null;default_order[]=15,13;data_order=[{"id":15,"ngay":[2,3,4,5,6,7,8]},{"id":13,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:18:45.183' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3207, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=6;name=VESOGO 25;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:18:48.033' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3210, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=7;name=TOMO 25;address=Khắc Niệm;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:18:51.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3213, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=8;name=TIA SÁNG 25;address=Quế Võ;gps=null, null;phone=null;zalo=null;default_order[]=16,13;data_order=[{"id":16,"ngay":[2,3,4,5,6,7,8]},{"id":13,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:18:54.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3216, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=9;name=THONOVA 25,40;address=Quế Võ 2;gps=null, null;phone=null;zalo=null;default_order[]=12,13;data_order=[{"id":12,"ngay":[2,3,4,5,6,7,8]},{"id":13,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:18:56.963' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3219, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=10;name=NVC 25,35;address=Yên Phong;gps=null, null;phone=null;zalo=null;default_order[]=28,18,13;data_order=[{"id":28,"ngay":[2,3,4,5,6,7,8]},{"id":18,"ngay":[2,3,4,5,6,7,8]},{"id":13,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:18:59.700' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3222, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=11;name=GW 25,(25,40);address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=14,12,13;data_order=[{"id":14,"ngay":[2,3,4,5,6,7,8]},{"id":12,"ngay":[2,3,4,5,6,7,8]},{"id":13,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:19:03.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3225, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=12;name=GEP 25,(50,40);address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=17,19,20,13;data_order=[{"id":17,"ngay":[2,3,4,5,6,7,8]},{"id":19,"ngay":[2,3,4,5,6,7,8]},{"id":20,"ngay":[2,3,4,5,6,7,8]},{"id":13,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:19:06.717' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3228, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=13;name=PRIMETECH 25;address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=21,13;data_order=[{"id":21,"ngay":[2,3,4,5,6,7,8]},{"id":13,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:19:09.743' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3231, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=14;name=MOATECH 30;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=9;data_order=[{"id":9,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:19:12.873' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3234, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=15;name=ETS 25;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=16,13;data_order=[{"id":16,"ngay":[2,3,4,5,6,7,8]},{"id":13,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:19:15.240' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3237, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=16;name=SCR 30;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=26,23,9;data_order=[{"id":26,"ngay":[2,3,4,5,6,7,8]},{"id":23,"ngay":[2,3,4,5,6,7,8]},{"id":9,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:19:18.617' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3240, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=17;name=TRC 30;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=9;data_order=[{"id":9,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:19:21.013' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3243, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=18;name=GMAX 25;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:19:23.547' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3246, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=19;name=ECT 30;address=somewhere1;gps=null, null;phone=null;zalo=null;default_order[]=9;data_order=[{"id":9,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:19:26.483' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3249, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=20;name=SUNRISE 40;address=somewhere;gps=null, null;phone=null;zalo=null;default_order[]=27;data_order=[{"id":27,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:19:29.260' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3252, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=21;name=WING FAT 25;address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:19:32.500' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3255, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=28;name=MAXIN 30,30;address=Quế Võ 2;gps=null, null;phone=;zalo=null;default_order[]=23,22,24,9;data_order=[{"id":23,"ngay":[2,3,4,5,6,7,8]},{"id":22,"ngay":[2,3,4,5,6,7,8]},{"id":24,"ngay":[2,3,4,5,6,7,8]},{"id":9,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:19:36.087' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3258, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=29;name=ILKWANG 30;address=Quế Võ 2;gps=null, null;phone=;zalo=null;default_order[]=9;data_order=[{"id":9,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:19:38.790' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3261, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=30;name=LIM;address=Quế Võ 3;gps=null, null;phone=;zalo=null;default_order[]=9;data_order=[{"id":9,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-02 22:19:41.873' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3283, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=21,11,12,13,10,27;data_order=[{"id":21,"ngay":[2,3,4,5,6,7,8]},{"id":11,"ngay":[2,3,4,5,6,7,8]},{"id":12,"ngay":[2,3,4,5,6,7,8]},{"id":13,"ngay":[2,3,4,5,6,7,8]},{"id":10,"ngay":[2,3,4,5,6,7,8]},{"id":27,"ngay":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:25:49.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3292, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.5834122, 105.795265;phone=0986.516.375;zalo=xxx;default_order[]=9;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:27:43.547' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3301, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.5834122, 105.795265;phone=0986.516.375;zalo=xxx;default_order[]=9;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:28:22.670' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3304, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=21,11,12,13,10,27;data_order=[{"id":21,"thu":[2,3,4,5,6,7,8]},{"id":11,"thu":[2,3,4,5,6,7,8]},{"id":12,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]},{"id":10,"thu":[2,3,4,5,6,7,8]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:28:25.280' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3307, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=3;name=BET 25,25;address=Yên Phong;gps=null, null;phone=113;zalo=null;default_order[]=21,14,13;data_order=[{"id":21,"thu":[2,3,4,5,6,7,8]},{"id":14,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:28:27.317' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3310, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=12,13;data_order=[{"id":12,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:28:29.763' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3313, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=5;name=LING Yi 25,70;address=Yên Phong;gps=null, null;phone=null;zalo=null;default_order[]=15,13;data_order=[{"id":15,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:28:32.077' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3316, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=6;name=VESOGO 25;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:28:34.170' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3319, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=6;name=VESOGO 25;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:28:37.327' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3322, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=7;name=TOMO 25;address=Khắc Niệm;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:28:39.303' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3325, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=8;name=TIA SÁNG 25;address=Quế Võ;gps=null, null;phone=null;zalo=null;default_order[]=16,13;data_order=[{"id":16,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:28:42.150' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3328, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=9;name=THONOVA 25,40;address=Quế Võ 2;gps=null, null;phone=null;zalo=null;default_order[]=12,13;data_order=[{"id":12,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:28:43.473' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3331, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=10;name=NVC 25,35;address=Yên Phong;gps=null, null;phone=null;zalo=null;default_order[]=28,18,13;data_order=[{"id":28,"thu":[2,3,4,5,6,7,8]},{"id":18,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:28:46.347' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3334, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=11;name=GW 25,(25,40);address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=14,12,13;data_order=[{"id":14,"thu":[2,3,4,5,6,7,8]},{"id":12,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:28:48.587' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3337, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=12;name=GEP 25,(50,40);address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=17,19,20,13;data_order=[{"id":17,"thu":[2,3,4,5,6,7,8]},{"id":19,"thu":[2,3,4,5,6,7,8]},{"id":20,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:28:51.990' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3340, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=13;name=PRIMETECH 25;address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=21,13;data_order=[{"id":21,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:28:54.987' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3343, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=14;name=MOATECH 30;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=9;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:28:57.667' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3346, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=15;name=ETS 25;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=16,13;data_order=[{"id":16,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:29:00.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3349, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=16;name=SCR 30;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=26,23,9;data_order=[{"id":26,"thu":[2,3,4,5,6,7,8]},{"id":23,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:29:02.503' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3352, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=17;name=TRC 30;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=9;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:29:04.490' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3355, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=18;name=GMAX 25;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:29:07.107' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3358, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=19;name=ECT 30;address=somewhere1;gps=null, null;phone=null;zalo=null;default_order[]=9;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:29:09.693' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3361, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=20;name=SUNRISE 40;address=somewhere;gps=null, null;phone=null;zalo=null;default_order[]=27;data_order=[{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:29:11.270' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3364, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=21;name=WING FAT 25;address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:29:13.680' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3367, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=28;name=MAXIN 30,30;address=Quế Võ 2;gps=null, null;phone=;zalo=null;default_order[]=23,22,24,9;data_order=[{"id":23,"thu":[2,3,4,5,6,7,8]},{"id":22,"thu":[2,3,4,5,6,7,8]},{"id":24,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:29:16.383' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3370, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=29;name=ILKWANG 30;address=Quế Võ 2;gps=null, null;phone=;zalo=null;default_order[]=9;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:29:18.730' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3373, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=30;name=LIM;address=Quế Võ 3;gps=null, null;phone=;zalo=null;default_order[]=9;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:29:20.590' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3380, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.5834122, 105.795265;phone=0986.516.375;zalo=xxx;default_order[]=9,27;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-02 22:31:03.323' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3392, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=21,11,12,13,10,27;data_order=[{"id":21,"thu":[2,3]},{"id":11,"thu":[2,3,4]},{"id":12,"thu":[2,3,4,5]},{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[2,3,4,5,6,7]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:34:29.007' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3420, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.5834122, 105.795265;phone=0986.516.375;zalo=xxx;default_order[]=9,27;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]},{"id":27,"thu":[2,3,4,5,6,7]}];uid=admin;', CAST(N'2023-11-02 22:43:23.053' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3423, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=27,21,11,12,13,10,27;data_order=[{"id":27,"thu":[2,3,4,5,6,7,8]},{"id":21,"thu":[2,3]},{"id":11,"thu":[2,3,4]},{"id":12,"thu":[2,3,4,5]},{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[2,3,4,5,6,7]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:43:50.333' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3426, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=21,11,12,13,10,27;data_order=[{"id":21,"thu":[2,3]},{"id":11,"thu":[2,3,4]},{"id":12,"thu":[2,3,4,5]},{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[2,3,4,5,6,7]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:43:56.787' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3429, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=21,11,12,13,10,27;data_order=[{"id":21,"thu":[2,3]},{"id":11,"thu":[2,3,4]},{"id":12,"thu":[2,3,4,5]},{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[2,3,4,5,6,7]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:44:00.617' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3432, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.5834122, 105.795265;phone=0986.516.375;zalo=xxx;default_order[]=9,27;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]},{"id":27,"thu":[2,3,4,5,6,7]}];uid=admin;', CAST(N'2023-11-02 22:44:05.427' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3435, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=21,11,12,13,10,27;data_order=[{"id":21,"thu":[2,3]},{"id":11,"thu":[2,3,4]},{"id":12,"thu":[2,3,4,5]},{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[2,3,4,5,6,7]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:44:10.087' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3438, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=3;name=BET 25,25;address=Yên Phong;gps=null, null;phone=113;zalo=null;default_order[]=21,14,13;data_order=[{"id":21,"thu":[2,3,4,5,6,7,8]},{"id":14,"thu":[2,3,4,5,6,7]},{"id":13,"thu":[2,3,4,5,6]}];uid=admin;', CAST(N'2023-11-02 22:44:16.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3441, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=3;name=BET 25,25;address=Yên Phong;gps=null, null;phone=113;zalo=null;default_order[]=21,14,13;data_order=[{"id":21,"thu":[2,3,4,5,6,7,8]},{"id":14,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:44:21.177' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3444, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=12,13;data_order=[{"id":12,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7]}];uid=admin;', CAST(N'2023-11-02 22:44:25.563' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3447, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=13,12,13;data_order=[{"id":13,"thu":[2,3,4,5,6,7]},{"id":12,"thu":[2,3,4,5,6,7]},{"id":13,"thu":[2,3,4,5,6,7]}];uid=admin;', CAST(N'2023-11-02 22:44:32.420' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3450, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=3;name=BET 25,25;address=Yên Phong;gps=null, null;phone=113;zalo=null;default_order[]=13,21,14,13;data_order=[{"id":13,"thu":[3,4,5,6,7,8]},{"id":21,"thu":[4,5,6,7,8]},{"id":14,"thu":[5,6,7,8]},{"id":13,"thu":[3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:44:47.387' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3453, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=12,13;data_order=[{"id":12,"thu":[2,3,4,5,6,7]},{"id":13,"thu":[2,3,4,5,6,7]}];uid=admin;', CAST(N'2023-11-02 22:44:51.610' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3462, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=3;name=BET 25,25;address=Yên Phong;gps=null, null;phone=113;zalo=null;default_order[]=21,14,13;data_order=[{"id":21,"thu":[4,5,6,7,8]},{"id":14,"thu":[5,6,7,8]},{"id":13,"thu":[3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:45:24.877' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3465, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=3;name=BET 25,25;address=Yên Phong;gps=null, null;phone=113;zalo=null;default_order[]=21,14,13;data_order=[{"id":21,"thu":[4,5,6,7,8]},{"id":14,"thu":[5,6,7,8]},{"id":13,"thu":[3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:45:28.383' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3468, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=21,11,12,13,10,27;data_order=[{"id":21,"thu":[2,3]},{"id":11,"thu":[2,3,4]},{"id":12,"thu":[2,3,4,5]},{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[2,3,4,5,6,7]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:45:39.320' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3472, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=27,21,11,12,13,10,27;data_order=[{"id":27,"thu":[2,3,4,5,6,7,8]},{"id":21,"thu":[2,3]},{"id":11,"thu":[2,3,4]},{"id":12,"thu":[2,3,4,5]},{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[2,3,4,5,6,7]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:46:01.000' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3475, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.5834122, 105.795265;phone=0986.516.375;zalo=xxx;default_order[]=27,9,27;data_order=[{"id":27,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:46:23.950' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3478, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=21,11,12,13,10,27;data_order=[{"id":21,"thu":[2,3,4,5,6,7,8]},{"id":11,"thu":[2,3,4,5,6,7,8]},{"id":12,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]},{"id":10,"thu":[2,3,4,5,6,7]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:46:34.427' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3481, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=3;name=BET 25,25;address=Yên Phong;gps=null, null;phone=113;zalo=null;default_order[]=21,14,13;data_order=[{"id":21,"thu":[2,3,4,5,6,7,8]},{"id":14,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:46:39.407' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3484, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=12,13;data_order=[{"id":12,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:46:42.783' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3487, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=5;name=LING Yi 25,70;address=Yên Phong;gps=null, null;phone=null;zalo=null;default_order[]=15,13;data_order=[{"id":15,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:46:45.750' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3490, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=10;name=NVC 25,35;address=Yên Phong;gps=null, null;phone=null;zalo=null;default_order[]=13,28,18,13;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]},{"id":28,"thu":[2,3,4,5,6,7,8]},{"id":18,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:46:57.523' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3493, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.5834122, 105.795265;phone=0986.516.375;zalo=xxx;default_order[]=9,27;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]},{"id":27,"thu":[2,3,4,6,7,8]}];uid=admin;', CAST(N'2023-11-02 22:47:08.520' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3747, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=1;name=Thịt lợn;des=abc;today=2023-11-02;uid=cskh;', CAST(N'2023-11-03 00:11:19.407' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3756, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=1;name=Cá;des=xx;today=2023-11-02;uid=admin;', CAST(N'2023-11-03 00:12:00.510' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3757, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=1;name=Cá;des=xx;today=2023-11-02;uid=admin;', CAST(N'2023-11-03 00:12:09.643' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3758, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=1;name=Cá;des=xx;today=2023-11-02;uid=admin;', CAST(N'2023-11-03 00:12:26.490' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3759, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=1;name=Cá;des=xx;today=2023-11-02;uid=admin;', CAST(N'2023-11-03 00:12:56.750' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3760, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=1;name=Cá;des=xx;today=2023-11-02;uid=admin;', CAST(N'2023-11-03 00:13:03.260' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3761, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=1;name=Cá;des=xx;today=2023-11-02;uid=admin;', CAST(N'2023-11-03 00:13:50.173' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3765, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=1;name=xx;des=xx;today=2023-11-02;uid=admin;', CAST(N'2023-11-03 00:14:35.607' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3766, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=1;name=Thịt;des=abc;today=2023-11-02;uid=admin;', CAST(N'2023-11-03 00:15:09.393' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3789, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=1;name=Thịt;des=xxx;today=2023-11-02;uid=admin;', CAST(N'2023-11-03 00:25:23.800' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3832, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=2;name=Trứng;des=Trứng vịt;today=2023-11-02;uid=admin;', CAST(N'2023-11-03 00:29:43.573' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3834, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=2;name=Trứng;des=Trứng gà/vịt;today=2023-11-02;uid=admin;', CAST(N'2023-11-03 00:29:55.850' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (3836, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=3;name=Sữa;des=xx;today=2023-11-02;uid=admin;', CAST(N'2023-11-03 00:30:05.750' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4003, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=14;id_ca=2;order_id[]=9;order_sl[]=8;', CAST(N'2023-11-03 07:36:00.250' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4006, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=14;id_ca=2;order_id[]=9;order_sl[]=8;uid=Trong;', CAST(N'2023-11-03 07:36:22.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4012, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=9;id_ca=2;order_id[]=12,13;order_sl[]=8,39;uid=Trong;', CAST(N'2023-11-03 08:11:17.647' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4014, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=1;id_ca=2;order_id[]=9,27;order_sl[]=162,0;uid=Trong;', CAST(N'2023-11-03 08:49:47.927' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4016, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=2;id_ca=2;order_id[]=21,11,12,13,10,27;order_sl[]=0,0,0,40,0,10;uid=Trong;', CAST(N'2023-11-03 08:50:10.507' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4020, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=9;name=THONOVA 25,40;address=Quế Võ 2;gps=null, null;phone=null;zalo=null;default_order[]=17,12,13;data_order=[{"id":17,"thu":[2,3,4,5,6,7,8]},{"id":12,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-03 08:50:48.733' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4027, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=9;id_ca=2;order_id[]=17,12,13;order_sl[]=7,8,39;uid=Trong;', CAST(N'2023-11-03 08:51:14.963' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4029, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=11;id_ca=2;order_id[]=14,12,13;order_sl[]=0,0,90;uid=Trong;', CAST(N'2023-11-03 08:51:36.507' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4031, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=11;id_ca=2;order_id[]=14,12,13;order_sl[]=17,7,90;uid=Trong;', CAST(N'2023-11-03 08:51:55.800' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4033, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=12;id_ca=2;order_id[]=17,19,20,13;order_sl[]=0,8,1,25;uid=Trong;', CAST(N'2023-11-03 08:52:35.830' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4035, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=12;id_ca=2;order_id[]=17,19,20,13;order_sl[]=0,8,1,81;uid=Trong;', CAST(N'2023-11-03 08:53:00.610' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4037, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=13;id_ca=2;order_id[]=21,13;order_sl[]=16,59;uid=Trong;', CAST(N'2023-11-03 08:53:18.413' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4046, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=16;id_ca=2;order_id[]=26,23,9;order_sl[]=2,0,14;uid=Trong;', CAST(N'2023-11-03 09:00:00.977' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4107, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=3;id_ca=2;order_id[]=21,14,13;order_sl[]=6,10,83;uid=Trong;', CAST(N'2023-11-03 09:11:56.983' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4116, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=4;id_ca=2;order_id[]=12,13;order_sl[]=9,121;uid=Trong;', CAST(N'2023-11-03 09:12:23.347' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4118, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=5;id_ca=2;order_id[]=15,13;order_sl[]=115,360;uid=Trong;', CAST(N'2023-11-03 09:12:59.243' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4120, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=6;id_ca=2;order_id[]=13;order_sl[]=23;uid=Trong;', CAST(N'2023-11-03 09:13:06.167' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4122, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=7;id_ca=2;order_id[]=13;order_sl[]=38;uid=Trong;', CAST(N'2023-11-03 09:13:21.280' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4124, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=10,38;uid=Trong;', CAST(N'2023-11-03 09:13:40.573' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4133, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=10;id_ca=2;order_id[]=13,28,18,13;order_sl[]=0,10,17,307;uid=Trong;', CAST(N'2023-11-03 09:14:09.330' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4164, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=12;id_ca=2;order_id[]=17,19,20,13;order_sl[]=4,8,1,81;uid=Trong;', CAST(N'2023-11-03 09:15:38.697' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4170, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=17;id_ca=2;order_id[]=9;order_sl[]=10;uid=Trong;', CAST(N'2023-11-03 09:16:05.740' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4179, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=19;id_ca=2;order_id[]=9;order_sl[]=213;uid=Trong;', CAST(N'2023-11-03 09:16:19.350' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4184, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=28;id_ca=2;order_id[]=23,22,24,9;order_sl[]=4,15,3,6;uid=Trong;', CAST(N'2023-11-03 09:16:57.453' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4190, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=30;id_ca=2;order_id[]=9;order_sl[]=1;uid=Trong;', CAST(N'2023-11-03 09:17:47.350' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4203, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=29;id_ca=2;order_id[]=9;order_sl[]=33;uid=Trong;', CAST(N'2023-11-03 09:21:17.730' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4272, N'save_order', N'ip=171.255.116.92;action=save_order;id_company=15;id_ca=2;order_id[]=16,13;order_sl[]=2,61;uid=Trong;', CAST(N'2023-11-03 09:31:41.847' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4485, N'edit_company', N'ip=171.255.116.92;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.222674,106.1141974;phone=0986.516.375;zalo=xxx;default_order[]=9,27;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]},{"id":27,"thu":[2,3,4,6,7,8]}];uid=Trong;', CAST(N'2023-11-03 09:58:59.607' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4535, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=3;name=Sữa;des=xx;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:06:42.707' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4568, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=4;name=xx;des=xx;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:10:01.310' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4570, N'del_don_nguyen', N'ip=127.0.0.1;action=del_don_nguyen;id=4;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:10:06.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4571, N'del_don_nguyen', N'ip=127.0.0.1;action=del_don_nguyen;id=4;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:10:09.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4579, N'del_don_nguyen', N'ip=127.0.0.1;action=del_don_nguyen;id=4;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:10:40.393' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4580, N'del_don_nguyen', N'ip=127.0.0.1;action=del_don_nguyen;id=4;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:11:17.717' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4582, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=1;name=Thịt gà;des=xxx;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:11:37.817' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4584, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=21;name=Trứng;des=Trứng gà/vịt;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:11:43.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4587, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=4;name=Trứng;des=Trứng gà/vịt;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:16:21.270' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4595, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=4;id_old=2;name=Trứng;des=Trứng gà/vịt;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:16:33.180' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4596, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=4;id_old=2;name=Trứng;des=Trứng gà/vịt;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:17:18.177' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4597, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=4;id_old=2;name=Trứng;des=Trứng gà/vịt;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:17:22.067' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4598, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=4;id_old=2;name=Trứng;des=Trứng gà/vịt;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:19:04.453' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4599, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=4;id_old=2;name=Trứng;des=Trứng gà/vịt;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:19:07.277' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4607, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=4;id_old=2;name=Trứng;des=Trứng gà/vịt;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:19:45.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4610, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=2;name=Thịt lợn;des=mán;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:20:00.637' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4612, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=1;id_old=1;name=Thịt gà;des=Gà sạch quê tôi;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:20:14.437' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4614, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=2;id_old=2;name=Thịt lợn;des=Lợn mán cắp nách;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:20:24.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4616, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=3;id_old=3;name=Sữa;des=Sừa bò Ba vì 250 ml;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:20:46.527' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4636, N'save_order', N'ip=171.255.116.92;action=save_order;id_company=18;id_ca=2;order_id[]=13;order_sl[]=39;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 10:23:20.363' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4653, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=5;name=Bánh Sữa;des=;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:24:18.607' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4660, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=5;id_old=5;name=Bánh Sữa;des=1 miếng 6k;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 10:24:36.027' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4737, N'add_don_nguyen', N'ip=171.255.116.92;action=add_don_nguyen;id=;name=Sữa TH True Milk 180ml;des=;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 10:34:10.867' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4738, N'add_don_nguyen', N'ip=171.255.116.92;action=add_don_nguyen;id=15;name=Sữa TH True Milk 180ml;des=;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 10:34:17.400' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4743, N'edit_don_nguyen', N'ip=171.255.116.92;action=edit_don_nguyen;id=15;name=Sữa TH True Milk 180ml;des=Sữa ít đường;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 10:34:39.170' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4747, N'edit_don_nguyen', N'ip=171.255.116.92;action=edit_don_nguyen;id=15;name=Sữa TH True Milk 180ml;des=Sữa ít đường;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 10:34:43.633' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4766, N'add_don_nguyen', N'ip=171.255.116.92;action=add_don_nguyen;id=16;name=Gà móng đỏ;des=Cao 1m65;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 10:35:58.813' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4868, N'add_don_nguyen', N'ip=113.186.3.221;action=add_don_nguyen;id=6;name=Cơm trắng;des=Dẻo thơm;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 10:52:36.303' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4870, N'add_don_nguyen', N'ip=113.186.3.221;action=add_don_nguyen;id=7;name=Canh rau;des=1 bát canh;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 10:53:13.340' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4872, N'edit_don_nguyen', N'ip=113.186.3.221;action=edit_don_nguyen;id=7;id_old=7;name=Canh rau;des=Canh rau muống/dền/...;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 10:53:28.103' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4876, N'edit_don_nguyen', N'ip=113.186.3.221;action=edit_don_nguyen;id=11;id_old=3;name=Sữa;des=Sừa bò Ba vì 250 ml;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 10:54:18.277' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4878, N'edit_don_nguyen', N'ip=113.186.3.221;action=edit_don_nguyen;id=3;id_old=16;name=Gà móng đỏ;des=Cao 1m65;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 10:54:28.133' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4880, N'edit_don_nguyen', N'ip=113.186.3.221;action=edit_don_nguyen;id=101;id_old=1;name=Thịt gà;des=Gà sạch quê tôi;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 10:54:58.680' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4882, N'edit_don_nguyen', N'ip=113.186.3.221;action=edit_don_nguyen;id=102;id_old=2;name=Thịt lợn;des=Lợn mán cắp nách;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 10:55:02.837' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4884, N'edit_don_nguyen', N'ip=113.186.3.221;action=edit_don_nguyen;id=103;id_old=3;name=Gà móng đỏ;des=Cao 1m65;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 10:55:08.950' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4922, N'save_order', N'ip=171.255.116.92;action=save_order;id_company=1;id_ca=3;order_id[]=9,27;order_sl[]=157,0;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 11:04:02.943' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4959, N'add_combo', N'ip=127.0.0.1;action=add_combo;id=5;sl=6;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 11:12:52.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4960, N'add_combo', N'ip=127.0.0.1;action=add_combo;id=5;sl=6;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 11:12:55.263' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4961, N'add_combo', N'ip=127.0.0.1;action=add_combo;id=5;sl=6;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 11:12:59.683' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4969, N'del_don_nguyen', N'ip=171.255.116.92;action=del_don_nguyen;id=15;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 11:13:11.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4972, N'add_combo', N'ip=127.0.0.1;action=add_combo;id=5;sl=6;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 11:13:50.037' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4989, N'add_combo', N'ip=127.0.0.1;action=add_combo;ids=17;idn=5;sl=6;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 11:15:28.650' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4992, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=8;name=Bún;des=bún sợi;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 11:16:01.323' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4995, N'add_combo', N'ip=127.0.0.1;action=add_combo;ids=25;idn=8;sl=1;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 11:16:14.720' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (4998, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=9;name=Chả;des=Chả nướng cho bún;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 11:16:46.977' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5001, N'add_combo', N'ip=127.0.0.1;action=add_combo;ids=25;idn=9;sl=1;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 11:16:57.773' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5037, N'add_combo', N'ip=127.0.0.1;action=add_combo;ids=26;idn=11;sl=2;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 11:52:22.630' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5069, N'add_combo', N'ip=113.186.3.221;action=add_combo;ids=25;idn=9;sl=2;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 11:55:08.963' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5070, N'add_combo', N'ip=113.186.3.221;action=add_combo;ids=25;idn=9;sl=2;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 11:55:12.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5071, N'add_combo', N'ip=113.186.3.221;action=add_combo;ids=25;idn=9;sl=2;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 11:56:45.047' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5072, N'add_combo', N'ip=113.186.3.221;action=add_combo;ids=25;idn=9;sl=2;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 11:56:48.647' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5073, N'add_combo', N'ip=113.186.3.221;action=add_combo;ids=25;idn=9;sl=2;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 11:56:50.850' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5074, N'add_combo', N'ip=113.186.3.221;action=add_combo;ids=25;idn=9;sl=2;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 11:56:55.937' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5075, N'add_combo', N'ip=113.186.3.221;action=add_combo;ids=25;idn=9;sl=2;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 11:57:50.100' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5076, N'add_combo', N'ip=113.186.3.221;action=add_combo;ids=25;idn=9;sl=2;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 11:57:52.987' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5077, N'add_combo', N'ip=113.186.3.221;action=add_combo;ids=25;idn=9;sl=2;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 11:57:56.000' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5078, N'add_combo', N'ip=113.186.3.221;action=add_combo;ids=25;idn=9;sl=1;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 11:58:34.700' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5105, N'edit_combo', N'ip=127.0.0.1;action=edit_combo;ids=25;idn=9;sl=2;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 12:03:22.697' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5106, N'edit_combo', N'ip=127.0.0.1;action=edit_combo;ids=25;idn=9;sl=2;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 12:03:27.423' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5107, N'edit_combo', N'ip=127.0.0.1;action=edit_combo;ids=25;idn=9;sl=2;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 12:03:31.093' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5108, N'edit_combo', N'ip=127.0.0.1;action=edit_combo;ids=25;idn=9;sl=2;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 12:03:57.150' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5191, N'edit_company', N'ip=113.185.43.225;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=xxx;default_order[]=27,9,27;data_order=[{"id":27,"thu":[]},{"id":9,"thu":[]},{"id":27,"thu":[]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-03 13:01:08.633' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5194, N'edit_company', N'ip=113.185.43.225;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=xxx;default_order[]=27,9,27;data_order=[{"id":27,"thu":[]},{"id":9,"thu":[]},{"id":27,"thu":[]}];uid=Admin;today=2023-11-02;', CAST(N'2023-11-03 13:02:00.087' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5219, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=9;id_ca=3;order_id[]=17,12,13;order_sl[]=0,7,0;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 13:14:44.170' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5221, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=2;id_ca=3;order_id[]=21,11,12,13,10,27;order_sl[]=0,0,0,0,10,0;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 13:15:47.167' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5234, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=30;id_ca=3;order_id[]=9;order_sl[]=1;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 13:32:08.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5236, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=13;id_ca=3;order_id[]=21,13;order_sl[]=14,7;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 13:32:28.447' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5238, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=10;id_ca=3;order_id[]=13,28,18,13;order_sl[]=0,0,0,227;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 13:33:17.040' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5250, N'edit_combo', N'ip=127.0.0.1;action=edit_combo;ids=25;idn=9;sl=3;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 13:34:32.700' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5252, N'add_combo', N'ip=127.0.0.1;action=add_combo;ids=13;idn=6;sl=1;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 13:34:56.877' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5254, N'add_combo', N'ip=127.0.0.1;action=add_combo;ids=13;idn=101;sl=1;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 13:35:06.390' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5256, N'add_combo', N'ip=127.0.0.1;action=add_combo;ids=13;idn=7;sl=1;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 13:35:20.077' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5259, N'add_don_nguyen', N'ip=127.0.0.1;action=add_don_nguyen;id=99;name=Khay inok;des=khăn ăn;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 13:35:39.027' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5262, N'add_combo', N'ip=127.0.0.1;action=add_combo;ids=13;idn=99;sl=1;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 13:35:53.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5268, N'edit_combo', N'ip=127.0.0.1;action=edit_combo;ids=13;idn=101;sl=2;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 13:38:22.400' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5270, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=11;id_ca=3;order_id[]=14,12,13;order_sl[]=0,1,97;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 13:41:21.037' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5272, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=19;id_ca=3;order_id[]=9;order_sl[]=29;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 13:41:47.730' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5277, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=29;id_ca=3;order_id[]=9;order_sl[]=14;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 13:43:14.773' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5279, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=29;id_ca=4;order_id[]=9;order_sl[]=44;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 13:43:39.430' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5284, N'add_user', N'ip=171.240.28.123;action=add_user;adduid=Hoa;pw=12345;name=;role=3;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 13:46:26.810' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5285, N'add_user', N'ip=171.240.28.123;action=add_user;adduid=Hoa;pw=123456;name=;role=3;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 13:46:35.160' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5286, N'add_user', N'ip=171.240.28.123;action=add_user;adduid=anhhoa;pw=123456;name=;role=3;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 13:47:00.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5287, N'add_user', N'ip=171.240.28.123;action=add_user;adduid=Hoa;pw=123456;name=Sếp Hòa;role=3;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 13:47:26.877' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5314, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=xxx;default_order[]=9,27;data_order=[{"id":9,"thu":[]},{"id":27,"thu":[]}];uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 13:53:45.003' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5326, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=xxx;default_order[]=13,10,9;data_order=[{"id":13,"thu":[]},{"id":10,"thu":[]},{"id":9,"thu":[]}];uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 13:54:45.840' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5331, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=xxx;default_order[]=13,10,9;data_order=[{"id":13,"thu":[]},{"id":10,"thu":[]},{"id":9,"thu":[]}];uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 13:55:20.597' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5348, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=xxx;default_order[]=13,10,9;data_order=[{"id":13,"thu":[]},{"id":10,"thu":[]},{"id":9,"thu":[]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 14:03:43.510' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5351, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=6;id_ca=3;order_id[]=13;order_sl[]=79;uid=Trong;', CAST(N'2023-11-03 14:03:47.393' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5356, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=xxx;default_order[]=13,10,9;data_order=[{"id":13,"thu":[]},{"id":10,"thu":[]},{"id":9,"thu":[]}];uid=Trong;', CAST(N'2023-11-03 14:04:42.247' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5359, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=19;id_ca=3;order_id[]=9;order_sl[]=102;uid=Trong;', CAST(N'2023-11-03 14:05:13.390' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5366, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=3;id_ca=3;order_id[]=21,14,13;order_sl[]=7,0,55;uid=Trong;', CAST(N'2023-11-03 14:07:15.140' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5368, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=3;id_ca=3;order_id[]=21,14,13;order_sl[]=7,0,55;', CAST(N'2023-11-03 14:07:16.240' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5371, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=3;name=BET 25,25;address=Yên Phong;gps=null, null;phone=113;zalo=null;default_order[]=13,21,14,13;data_order=[{"id":13,"thu":[]},{"id":21,"thu":[]},{"id":14,"thu":[]},{"id":13,"thu":[]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 14:07:45.617' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5374, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=3;id_ca=3;order_id[]=21,14,13;order_sl[]=7,0,55;uid=hoa;', CAST(N'2023-11-03 14:07:53.033' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5376, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=5;id_ca=3;order_id[]=15,13;order_sl[]=0,250;uid=hoa;', CAST(N'2023-11-03 14:08:09.957' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5378, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=12;id_ca=3;order_id[]=17,19,20,13;order_sl[]=26,8,0,10;uid=Trong;', CAST(N'2023-11-03 14:08:56.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5391, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=xxx;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 14:09:37.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5404, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=8;id_ca=3;order_id[]=16,13;order_sl[]=2,14;uid=Trong;', CAST(N'2023-11-03 14:11:52.973' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5415, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=12;id_ca=3;order_id[]=17,19,20,13;order_sl[]=26,8,0,10;uid=hoa;', CAST(N'2023-11-03 14:15:04.013' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5425, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=19;name=ECT 30;address=somewhere1;gps=null, null;phone=null;zalo=null;default_order[]=13,9;data_order=[{"id":13,"thu":[]},{"id":9,"thu":[]}];uid=Trong;', CAST(N'2023-11-03 14:17:21.927' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5434, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=19;name=ECT 30;address=somewhere1;gps=null, null;phone=null;zalo=null;default_order[]=13,9;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-03 14:18:09.243' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5441, N'enable_suat_an', N'ip=171.240.28.123;action=enable_suat_an;id=21;name=MỳBET25;sign=MỳBET25;price=25000;loai=3;uid=Trong;', CAST(N'2023-11-03 14:22:42.533' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5446, N'del_don_nguyen', N'ip=171.240.28.123;action=del_don_nguyen;id=4;uid=Trong;', CAST(N'2023-11-03 14:22:58.907' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5448, N'del_don_nguyen', N'ip=171.240.28.123;action=del_don_nguyen;id=6;uid=Trong;', CAST(N'2023-11-03 14:23:00.743' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5450, N'del_don_nguyen', N'ip=171.240.28.123;action=del_don_nguyen;id=5;uid=Trong;', CAST(N'2023-11-03 14:23:03.010' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5452, N'del_don_nguyen', N'ip=171.240.28.123;action=del_don_nguyen;id=7;uid=Trong;', CAST(N'2023-11-03 14:23:04.620' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5454, N'del_don_nguyen', N'ip=171.240.28.123;action=del_don_nguyen;id=8;uid=Trong;', CAST(N'2023-11-03 14:23:06.237' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5456, N'del_don_nguyen', N'ip=171.240.28.123;action=del_don_nguyen;id=9;uid=Trong;', CAST(N'2023-11-03 14:23:08.117' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5458, N'del_don_nguyen', N'ip=171.240.28.123;action=del_don_nguyen;id=99;uid=Trong;', CAST(N'2023-11-03 14:23:09.520' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5460, N'del_don_nguyen', N'ip=171.240.28.123;action=del_don_nguyen;id=101;uid=Trong;', CAST(N'2023-11-03 14:23:10.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5462, N'del_don_nguyen', N'ip=171.240.28.123;action=del_don_nguyen;id=103;uid=Trong;', CAST(N'2023-11-03 14:23:13.043' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5464, N'del_don_nguyen', N'ip=171.240.28.123;action=del_don_nguyen;id=11;uid=Trong;', CAST(N'2023-11-03 14:23:14.940' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5466, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=4;id_ca=3;order_id[]=12,13;order_sl[]=0,63;uid=Trong;', CAST(N'2023-11-03 14:23:37.853' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5471, N'del_don_nguyen', N'ip=171.240.28.123;action=del_don_nguyen;id=102;uid=Trong;', CAST(N'2023-11-03 14:24:02.483' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5473, N'add_don_nguyen', N'ip=171.240.28.123;action=add_don_nguyen;id=1;name=MT cô cô mi (Cốc);des=Mì tôm cốc cô cô mi;uid=Trong;', CAST(N'2023-11-03 14:25:54.753' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5475, N'add_don_nguyen', N'ip=171.240.28.123;action=add_don_nguyen;id=2;name=Bánh Mỳ Dứa;des=Bánh Mỳ Dứa ;uid=Trong;', CAST(N'2023-11-03 14:26:24.630' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5477, N'add_don_nguyen', N'ip=171.240.28.123;action=add_don_nguyen;id=3;name=Sữa Nuti;des=NutriBoost 200ml;uid=Trong;', CAST(N'2023-11-03 14:28:37.663' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5479, N'add_don_nguyen', N'ip=171.240.28.123;action=add_don_nguyen;id=4;name=Thạch Long Hai;des=Thạch Long Hai 100g;uid=Trong;', CAST(N'2023-11-03 14:29:08.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5481, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=4;id_ca=3;order_id[]=12,13;order_sl[]=0,54;uid=hoa;', CAST(N'2023-11-03 14:30:27.057' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5483, N'add_don_nguyen', N'ip=171.240.28.123;action=add_don_nguyen;id=5;name=Sữa Chua Elovi;des=Sữa Chua Elovi 70g;uid=Trong;', CAST(N'2023-11-03 14:30:33.770' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5485, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=4;id_ca=3;order_id[]=12,13;order_sl[]=0,59;uid=hoa;', CAST(N'2023-11-03 14:31:07.170' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5487, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=7;id_ca=3;order_id[]=13;order_sl[]=23;uid=hoa;', CAST(N'2023-11-03 14:31:50.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5489, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=4;id_ca=3;order_id[]=12,13;order_sl[]=0,59;uid=Trong;', CAST(N'2023-11-03 14:32:16.500' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5491, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=12;id_ca=3;order_id[]=17,19,20,13;order_sl[]=28,8,0,10;uid=hoa;', CAST(N'2023-11-03 14:32:31.323' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5503, N'add_don_nguyen', N'ip=171.240.28.123;action=add_don_nguyen;id=6;name=Sữa Fami;des=Sữa Fami 200ml;uid=Trong;', CAST(N'2023-11-03 14:33:24.727' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5505, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=29;id_ca=4;order_id[]=9;order_sl[]=NaN;uid=hoa;', CAST(N'2023-11-03 14:33:37.097' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5507, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=19;id_ca=4;order_id[]=13,9;order_sl[]=0,44;uid=hoa;', CAST(N'2023-11-03 14:33:46.003' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5509, N'add_don_nguyen', N'ip=171.240.28.123;action=add_don_nguyen;id=7;name=Sữa Izzi Cacao;des=Sữa Izzi Cacao 180;uid=Trong;', CAST(N'2023-11-03 14:35:10.990' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5511, N'add_don_nguyen', N'ip=171.240.28.123;action=add_don_nguyen;id=8;name=Sữa Mộc Châu dừa;des=Sữa Mộc Châu dừa 180ml;uid=Trong;', CAST(N'2023-11-03 14:36:13.710' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5513, N'add_don_nguyen', N'ip=171.240.28.123;action=add_don_nguyen;id=9;name=Bánh Mỳ Ruốc ;des=Bánh Mỳ Ruốc Hải Châu;uid=Trong;', CAST(N'2023-11-03 14:37:03.863' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5522, N'add_combo', N'ip=127.0.0.1;action=add_combo;ids=17;idn=6;sl=1;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 14:37:24.237' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5524, N'add_don_nguyen', N'ip=171.240.28.123;action=add_don_nguyen;id=10;name=Mỳ Omachi Cốc;des=Mỳ Omachi Cốc;uid=Trong;', CAST(N'2023-11-03 14:37:42.460' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5535, N'add_don_nguyen', N'ip=171.240.28.123;action=add_don_nguyen;id=11;name=Sữa TH True Milk;des=Sữa TH True Milk 180ml;uid=Trong;', CAST(N'2023-11-03 14:38:39.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5540, N'edit_don_nguyen', N'ip=171.240.28.123;action=edit_don_nguyen;id=11;id_old=11;name=TH True Milk có đường;des=Sữa TH True Milk 180ml;uid=Trong;', CAST(N'2023-11-03 14:39:38.270' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5542, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=18;id_ca=3;order_id[]=13;order_sl[]=29;uid=hoa;', CAST(N'2023-11-03 14:39:41.720' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5552, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=21;idn=1;sl=1;uid=Trong;', CAST(N'2023-11-03 14:40:23.740' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5554, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=17;idn=2;sl=;uid=Trong;', CAST(N'2023-11-03 14:40:44.460' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5555, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=17;idn=2;sl=1;uid=Trong;', CAST(N'2023-11-03 14:40:47.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5561, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=21;idn=2;sl=1;uid=Trong;', CAST(N'2023-11-03 14:42:24.150' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5563, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=21;idn=3;sl=1;uid=Trong;', CAST(N'2023-11-03 14:42:39.640' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5565, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=21;idn=4;sl=1;uid=Trong;', CAST(N'2023-11-03 14:42:48.313' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5568, N'enable_suat_an', N'ip=171.240.28.123;action=enable_suat_an;id=17;name=Bánh Sữa Thornova 25;sign=BsThornova25;price=25000;loai=3;uid=Trong;', CAST(N'2023-11-03 14:44:13.113' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5572, N'edit_combo', N'ip=171.240.28.123;action=edit_combo;ids=17;idn=2;sl=2;uid=Trong;', CAST(N'2023-11-03 14:44:43.847' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5574, N'edit_combo', N'ip=171.240.28.123;action=edit_combo;ids=17;idn=6;sl=0;uid=Trong;', CAST(N'2023-11-03 14:44:49.050' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5575, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=17;idn=3;sl=1;uid=Trong;', CAST(N'2023-11-03 14:45:18.517' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5577, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=17;idn=5;sl=1;uid=Trong;', CAST(N'2023-11-03 14:45:36.357' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5582, N'enable_suat_an', N'ip=171.240.28.123;action=enable_suat_an;id=16;name=Sữa Tia Sáng 25;sign=SuaTiaSang25;price=25000;loai=3;uid=Trong;', CAST(N'2023-11-03 14:46:16.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5585, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=16;idn=6;sl=4;uid=Trong;', CAST(N'2023-11-03 14:46:53.923' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5588, N'add_suat_an', N'ip=171.240.28.123;action=add_suat_an;name=Bánh Sữa GEP 25;sign=BsGEP25;price=25000;loai=3;uid=Trong;', CAST(N'2023-11-03 14:47:49.330' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5623, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=15;id_ca=3;order_id[]=16,13;order_sl[]=0,16;uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 15:46:40.137' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5634, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=xxx;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 15:57:47.527' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5638, N'enable_suat_an', N'ip=171.240.28.123;action=enable_suat_an;id=29;name=Bánh Sữa GEP Cacao 25;sign=BsCacaoGEP25;price=25000;loai=3;uid=Trong;', CAST(N'2023-11-03 16:03:46.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5640, N'add_suat_an', N'ip=171.240.28.123;action=add_suat_an;name=BsMocChauGEP25;sign=BsMocChauGEP25;price=25000;loai=3;uid=Trong;', CAST(N'2023-11-03 16:04:16.807' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5644, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=29;idn=7;sl=2;uid=Trong;', CAST(N'2023-11-03 16:04:46.990' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5646, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=29;idn=2;sl=1;uid=Trong;', CAST(N'2023-11-03 16:12:02.920' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5648, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=29;idn=9;sl=1;uid=Trong;', CAST(N'2023-11-03 16:12:19.660' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5650, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=30;idn=8;sl=2;uid=Trong;', CAST(N'2023-11-03 16:12:40.073' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5652, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=30;idn=2;sl=1;uid=Trong;', CAST(N'2023-11-03 16:13:01.343' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5654, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=30;idn=9;sl=1;uid=Trong;', CAST(N'2023-11-03 16:13:29.847' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5661, N'add_suat_an', N'ip=171.240.28.123;action=add_suat_an;name=Mỳ PrimeTech T25;sign=MỳPrimeT25;price=25000;loai=3;uid=Trong;', CAST(N'2023-11-03 16:16:33.833' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5664, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=31;idn=10;sl=1;uid=Trong;', CAST(N'2023-11-03 16:16:55.697' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5666, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=31;idn=7;sl=1;uid=Trong;', CAST(N'2023-11-03 16:17:13.727' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5668, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=31;idn=5;sl=1;uid=Trong;', CAST(N'2023-11-03 16:17:25.780' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5671, N'enable_suat_an', N'ip=171.240.28.123;action=enable_suat_an;id=23;name=SuaFamiSCR30;sign=SuaFamiSCR30;price=30000;loai=3;uid=Trong;', CAST(N'2023-11-03 16:18:43.180' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5673, N'enable_suat_an', N'ip=171.240.28.123;action=enable_suat_an;id=26;name=MocChauSCR30;sign=MocChauSCR30;price=30000;loai=3;uid=Trong;', CAST(N'2023-11-03 16:18:59.097' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5676, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=26;idn=8;sl=4;uid=Trong;', CAST(N'2023-11-03 16:19:23.820' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5678, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=23;idn=6;sl=6;uid=Trong;', CAST(N'2023-11-03 16:19:47.140' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5681, N'add_suat_an', N'ip=171.240.28.123;action=add_suat_an;name=Fami Naxin 30;sign=FamiNaxin30;price=30000;loai=3;uid=Trong;', CAST(N'2023-11-03 16:21:07.340' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5683, N'add_suat_an', N'ip=171.240.28.123;action=add_suat_an;name=THtrueMilkNaxin30;sign=THtrueMilkNaxin30;price=30000;loai=3;uid=Trong;', CAST(N'2023-11-03 16:21:45.090' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5687, N'delete_suat_an', N'ip=171.240.28.123;action=delete_suat_an;id=33;uid=Trong;', CAST(N'2023-11-03 16:23:13.683' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5689, N'enable_suat_an', N'ip=171.240.28.123;action=enable_suat_an;id=22;name=THtrueMilkNaxin30;sign=THtrueMilkNaxin30;price=30000;loai=3;uid=Trong;', CAST(N'2023-11-03 16:23:24.960' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5692, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=22;idn=11;sl=2;uid=Trong;', CAST(N'2023-11-03 16:23:57.180' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5694, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=22;idn=6;sl=1;uid=Trong;', CAST(N'2023-11-03 16:24:09.377' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5696, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=32;idn=6;sl=5;uid=Trong;', CAST(N'2023-11-03 16:24:36.783' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5700, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=3;name=BET 25,25;address=Yên Phong;gps=null, null;phone=113;zalo=null;default_order[]=21,14,13;data_order=[{"id":21,"thu":[2,3,4,5,6,7,8]},{"id":14,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-03 16:28:12.100' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5716, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=3;name=BET 25,25;address=Yên Phong;gps=null, null;phone=113;zalo=null;default_order[]=21,19,13;data_order=[{"id":21,"thu":[2,3,4,5,6,7,8]},{"id":19,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-03 16:30:57.343' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5728, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=3;name=BET 25,50;address=Yên Phong;gps=null, null;phone=113;zalo=null;default_order[]=21,19,13;data_order=[{"id":21,"thu":[2,3,4,5,6,7,8]},{"id":19,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-03 16:31:39.800' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5740, N'enable_suat_an', N'ip=171.240.28.123;action=enable_suat_an;id=19;name=TQ BET 50;sign=TQBET50;price=50000;loai=1;uid=Trong;', CAST(N'2023-11-03 16:38:21.643' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5742, N'enable_suat_an', N'ip=171.240.28.123;action=enable_suat_an;id=20;name=TQ K Cay GEP 40;sign=TQKCayGEP40;price=40000;loai=1;uid=Trong;', CAST(N'2023-11-03 16:39:33.023' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5744, N'add_suat_an', N'ip=171.240.28.123;action=add_suat_an;name=TQGEP50;sign=TQGEP50;price=50000;loai=1;uid=Trong;', CAST(N'2023-11-03 16:40:07.080' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5752, N'add_suat_an', N'ip=171.240.28.123;action=add_suat_an;name=TQGEP50;sign=TQGEP50;price=50000;loai=1;uid=Trong;', CAST(N'2023-11-03 16:41:39.090' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5773, N'add_don_nguyen', N'ip=171.240.28.123;action=add_don_nguyen;id=12;name=Cocacola Lon 250ml;des=Cocacola Lon 250ml;uid=Trong;', CAST(N'2023-11-03 16:45:54.713' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5786, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=19;idn=12;sl=1;uid=Trong;', CAST(N'2023-11-03 16:51:13.647' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5802, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=20;idn=12;sl=1;uid=Trong;', CAST(N'2023-11-03 16:53:35.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5810, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=34;idn=12;sl=1;uid=Trong;', CAST(N'2023-11-03 16:54:51.237' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5819, N'add_suat_an', N'ip=171.240.28.123;action=add_suat_an;name=TQ_GW_TH40;sign=TQ_GW_TH40;price=40000;loai=1;uid=Trong;', CAST(N'2023-11-03 16:56:32.973' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5827, N'add_suat_an', N'ip=171.240.28.123;action=add_suat_an;name=TQ GW Nước Cam40;sign=TQ_GW_NCam40;price=40000;loai=1;uid=Trong;', CAST(N'2023-11-03 16:57:28.113' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5835, N'add_suat_an', N'ip=171.240.28.123;action=add_suat_an;name=TQ GW Cocacola 40;sign=TQ_GW_Cocacola40;price=40000;loai=1;uid=Trong;', CAST(N'2023-11-03 16:58:14.660' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5873, N'add_suat_an', N'ip=171.240.28.123;action=add_suat_an;name=TQ NLX SuaChua 40;sign=TQ_NLX_SuaChua40;price=40000;loai=1;uid=Trong;', CAST(N'2023-11-03 17:08:09.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5875, N'add_suat_an', N'ip=171.240.28.123;action=add_suat_an;name=TQ NLX Vinamik 40;sign=TQ NLX Vinamik 40;price=40000;loai=1;uid=Trong;', CAST(N'2023-11-03 17:08:52.113' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5877, N'add_suat_an', N'ip=171.240.28.123;action=add_suat_an;name=TQ NLX TH true milk 40;sign=TQ_NLX_THtrue40;price=40000;loai=1;uid=Trong;', CAST(N'2023-11-03 17:09:31.950' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5888, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=36;idn=11;sl=1;uid=Trong;', CAST(N'2023-11-03 17:11:37.583' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5891, N'add_don_nguyen', N'ip=171.240.28.123;action=add_don_nguyen;id=13;name=Nước Cam Lon;des=Nước Cam Lon 320ml;uid=Trong;', CAST(N'2023-11-03 17:12:43.033' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5894, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=37;idn=13;sl=1;uid=Trong;', CAST(N'2023-11-03 17:13:25.333' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5896, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=38;idn=12;sl=;uid=Trong;', CAST(N'2023-11-03 17:13:41.000' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5897, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=38;idn=12;sl=1;uid=Trong;', CAST(N'2023-11-03 17:13:44.520' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5899, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=39;idn=5;sl=1;uid=Trong;', CAST(N'2023-11-03 17:14:11.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5901, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=41;idn=11;sl=1;uid=Trong;', CAST(N'2023-11-03 17:14:20.253' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5904, N'add_don_nguyen', N'ip=171.240.28.123;action=add_don_nguyen;id=14;name=Sữa Vinamilk 180ml;des=Sữa Vinamilk 180ml;uid=Trong;', CAST(N'2023-11-03 17:15:23.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5907, N'add_combo', N'ip=171.240.28.123;action=add_combo;ids=40;idn=14;sl=1;uid=Trong;', CAST(N'2023-11-03 17:15:39.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5918, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=10,27;data_order=[{"id":10,"thu":[2,3,4,5,6,7]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-03 17:18:14.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5921, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=10,27;data_order=[{"id":10,"thu":[2,3,4,5,6,7]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-03 17:18:22.450' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5924, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=null;default_order[]=39,41,40,13;data_order=[{"id":39,"thu":[2,3,4,5,6,7,8]},{"id":41,"thu":[2,3,4,5,6,7,8]},{"id":40,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-03 17:20:04.783' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5927, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=5;name=LING Yi 25,70;address=Yên Phong;gps=null, null;phone=null;zalo=null;default_order[]=15,13;data_order=[{"id":15,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-03 17:20:49.320' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5930, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=11;name=GW 25,(25,40);address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=38,37,36,13;data_order=[{"id":38,"thu":[2,3,4,5,6,7,8]},{"id":37,"thu":[2,3,4,5,6,7,8]},{"id":36,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-03 17:22:26.800' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5933, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=11;name=GW 25,(25,40);address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=38,37,36,13;data_order=[{"id":38,"thu":[7,8]},{"id":37,"thu":[6,8]},{"id":36,"thu":[2,3,4,5,6,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-03 17:24:13.030' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5936, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=13;name=PRIMETECH 25;address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=31,13;data_order=[{"id":31,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-03 17:24:56.257' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5939, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=15;name=ETS 25;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-03 17:25:14.533' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5942, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=16;name=SCR 30;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=26,23,9;data_order=[{"id":26,"thu":[2,3,4,5,6,7,8]},{"id":23,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-03 17:25:32.570' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (5945, N'edit_company', N'ip=171.240.28.123;action=edit_company;id=28;name=MAXIN 30,30;address=Quế Võ 2;gps=null, null;phone=;zalo=null;default_order[]=32,22,24,9;data_order=[{"id":32,"thu":[2,3,4,5,6,7,8]},{"id":22,"thu":[2,3,4,5,6,7,8]},{"id":24,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-03 17:27:10.083' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6018, N'edit_company', N'ip=42.117.168.209;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=10,27;data_order=[{"id":10,"thu":[2,3,4,5,6,7]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 17:37:22.643' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6021, N'edit_company', N'ip=42.117.168.209;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=xxx;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 17:37:29.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6125, N'save_order', N'ip=42.117.168.209;action=save_order;id_company=1;id_ca=1;order_id[]=10,9;order_sl[]=1,0;uid=Admin;today=2023-11-04;', CAST(N'2023-11-03 18:12:12.513' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6128, N'save_order', N'ip=42.117.168.209;action=save_order;id_company=1;id_ca=1;order_id[]=13,9;order_sl[]=0,0;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 18:12:30.100' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6131, N'save_order', N'ip=42.117.168.209;action=save_order;id_company=1;id_ca=1;order_id[]=10,9;order_sl[]=1,2;uid=Admin;today=2023-11-04;', CAST(N'2023-11-03 18:12:51.080' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6134, N'save_order', N'ip=42.117.168.209;action=save_order;id_company=1;id_ca=1;order_id[]=13,9;order_sl[]=1,2;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 18:13:25.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6136, N'save_order', N'ip=42.117.168.209;action=save_order;id_company=1;id_ca=1;order_id[]=13,9;order_sl[]=0,0;uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 18:13:30.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6139, N'save_order', N'ip=42.117.168.209;action=save_order;id_company=1;id_ca=1;order_id[]=10,9;order_sl[]=1,2;uid=Admin;today=2023-11-04;', CAST(N'2023-11-03 18:13:41.040' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6195, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=13,9;order_sl[]=1,2;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 18:26:33.640' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6197, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=13,9;order_sl[]=1,2;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 18:26:36.673' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6200, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=13,9;order_sl[]=0,0;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 18:26:50.553' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6213, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=2;name=XYC 28;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=13,10,27;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]},{"id":10,"thu":[2,3,4,5,6,7,8]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 18:30:35.497' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6254, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=3;name=BET 25,50;address=Yên Phong;gps=null, null;phone=113;zalo=undefined;default_order[]=21,19,14,13;data_order=[{"id":21,"thu":[2,3,4,5,6,7,8]},{"id":19,"thu":[2,3,4,5,6,7,8]},{"id":14,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 18:40:39.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6258, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=undefined;default_order[]=39,41,40,12,13;data_order=[{"id":39,"thu":[2,3,4,5,6,7,8]},{"id":41,"thu":[2,3,4,5,6,7,8]},{"id":40,"thu":[2,3,4,5,6,7,8]},{"id":12,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 18:41:02.403' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6267, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=11;name=GW 25,(25,40);address=Quế Võ 3;gps=null, null;phone=null;zalo=undefined;default_order[]=38,37,36,14,13;data_order=[{"id":38,"thu":[7,8]},{"id":37,"thu":[6,8]},{"id":36,"thu":[2,3,4,5,6,8]},{"id":14,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 18:42:43.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6271, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=15;name=ETS 25;address=MĨ Á;gps=null, null;phone=null;zalo=undefined;default_order[]=16,13;data_order=[{"id":16,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 18:43:09.470' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6274, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=13;name=PRIMETECH 25;address=Quế Võ 3;gps=null, null;phone=null;zalo=undefined;default_order[]=31,21,13;data_order=[{"id":31,"thu":[2,3,4,5,6,7,8]},{"id":21,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 18:43:33.343' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6277, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=11;name=GW 25,(25,40);address=Quế Võ 3;gps=null, null;phone=null;zalo=undefined;default_order[]=38,37,36,14,12,13;data_order=[{"id":38,"thu":[7,8]},{"id":37,"thu":[6,8]},{"id":36,"thu":[2,3,4,5,6,8]},{"id":14,"thu":[2,3,4,5,6,7,8]},{"id":12,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 18:43:59.997' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6281, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=28;name=MAXIN 30,30;address=Quế Võ 2;gps=null, null;phone=;zalo=undefined;default_order[]=32,23,22,24,9;data_order=[{"id":32,"thu":[2,3,4,5,6,7,8]},{"id":23,"thu":[2,3,4,5,6,7,8]},{"id":22,"thu":[2,3,4,5,6,7,8]},{"id":24,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 18:45:14.677' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6336, N'edit_company', N'ip=42.117.168.209;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 20:02:01.350' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6337, N'edit_company', N'ip=42.117.168.209;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 20:02:07.327' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6342, N'edit_company', N'ip=42.117.168.209;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[2,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 20:02:37.503' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6345, N'edit_company', N'ip=42.117.168.209;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[2,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 20:02:42.677' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6349, N'edit_company', N'ip=42.117.168.209;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[2,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 20:02:47.340' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6367, N'edit_company', N'ip=42.117.168.209;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 20:03:12.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6382, N'edit_company', N'ip=42.117.168.209;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 20:16:24.713' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6383, N'edit_company', N'ip=42.117.168.209;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 20:16:35.013' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6384, N'edit_company', N'ip=42.117.168.209;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 20:16:36.777' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6385, N'edit_company', N'ip=42.117.168.209;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 20:16:38.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6386, N'edit_company', N'ip=42.117.168.209;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 20:16:39.473' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6387, N'edit_company', N'ip=42.117.168.209;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 20:16:40.500' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6388, N'edit_company', N'ip=42.117.168.209;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-03;', CAST(N'2023-11-03 20:16:41.620' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6396, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=13,9;order_sl[]=0,0;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 20:19:21.603' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6398, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 20:19:24.780' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6399, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 20:19:29.917' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6400, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 20:19:51.877' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6401, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 20:20:02.337' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6402, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 20:23:54.857' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6403, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 20:23:59.400' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6414, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=undefined;default_order[]=39,41,40,12,13;data_order=[{"id":39,"thu":[2,3,4,5,6,7,8]},{"id":41,"thu":[2,3,4,5,6,7,8]},{"id":40,"thu":[2,3,4,5,6,7,8]},{"id":12,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 20:27:09.447' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6416, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=undefined;default_order[]=39,41,40,12,13;data_order=[{"id":39,"thu":[2,3,4,5,6,7,8]},{"id":41,"thu":[2,3,4,5,6,7,8]},{"id":40,"thu":[2,3,4,5,6,7,8]},{"id":12,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 20:27:16.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6417, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=2;order_id[]=13,9;order_sl[]=0,162;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 20:27:25.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6422, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=;default_order[]=13,10,9;data_order=[{"id":13,"thu":[2,3,4,5,6]},{"id":10,"thu":[7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-03;', CAST(N'2023-11-03 20:27:46.960' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6425, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=13,9;order_sl[]=0,0;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 20:28:37.860' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6426, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=13,9;order_sl[]=1,2;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 20:28:43.880' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6431, N'copy_order', N'ip=127.0.0.1;action=copy_order;ngay_from=2023-11-03;ngay_to=2023-11-04;uid=admin;today=2023-11-03;', CAST(N'2023-11-03 20:32:15.080' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6558, N'add_combo', N'ip=127.0.0.1;action=add_combo;ids=25;idn=2;sl=1;today=2023-11-03;uid=cskh;', CAST(N'2023-11-03 20:50:30.720' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6559, N'add_combo', N'ip=127.0.0.1;action=add_combo;ids=25;idn=2;sl=1;today=2023-11-03;uid=cskh;', CAST(N'2023-11-03 20:50:39.690' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6560, N'add_combo', N'ip=127.0.0.1;action=add_combo;ids=25;idn=2;sl=1;today=2023-11-03;uid=cskh;', CAST(N'2023-11-03 20:50:58.647' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6571, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=1;id_old=1;name=MT cô cô mi (Cốc);des=Mì tôm cốc cô cô mi;today=2023-11-03;uid=admin;', CAST(N'2023-11-03 20:51:33.487' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6574, N'add_combo', N'ip=127.0.0.1;action=add_combo;ids=28;idn=1;sl=;today=2023-11-03;uid=admin;', CAST(N'2023-11-03 20:51:46.927' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6575, N'add_combo', N'ip=127.0.0.1;action=add_combo;ids=28;idn=1;sl=;today=2023-11-03;uid=admin;', CAST(N'2023-11-03 20:51:49.477' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6633, N'edit_company', N'ip=171.255.116.20;action=edit_company;id=5;name=LING Yi 25,70;address=Yên Phong;gps=21.2274442,106.0055765;phone=null;zalo=null;default_order[]=15,13;data_order=[{"id":15,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 23:39:07.063' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6643, N'edit_company', N'ip=171.255.116.20;action=edit_company;id=1;name=ET SoLar 30;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=9;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Trong;today=2023-11-03;', CAST(N'2023-11-03 23:55:49.453' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6666, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=1;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 07:35:23.520' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6668, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 07:35:31.387' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6677, N'add_suat_an', N'ip=27.67.176.20;action=add_suat_an;name=BunChieuECT25;sign=34;price=25000;loai=3;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:18:19.090' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6679, N'add_suat_an', N'ip=27.67.176.20;action=add_suat_an;name=BunChieuVSG20;sign=35;price=20000;loai=3;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:19:52.330' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6681, N'enable_suat_an', N'ip=27.67.176.20;action=enable_suat_an;id=25;name=BunChieu25;sign=Bun25;price=25000;loai=3;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:20:42.097' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6683, N'delete_suat_an', N'ip=27.67.176.20;action=delete_suat_an;id=42;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:20:57.003' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6685, N'save_order', N'ip=27.67.176.20;action=save_order;id_company=29;id_ca=2;order_id[]=9;order_sl[]=33;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:21:42.983' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6687, N'save_order', N'ip=27.67.176.20;action=save_order;id_company=29;id_ca=3;order_id[]=9;order_sl[]=12;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:21:52.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6690, N'edit_company', N'ip=27.67.176.20;action=edit_company;id=6;name=VESOGO 25;address=Đại Đồng;gps=null, null;phone=null;zalo=undefined;default_order[]=43,13;data_order=[{"id":43,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:23:13.077' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6698, N'edit_company', N'ip=27.67.176.20;action=edit_company;id=19;name=ECT 30;address=somewhere1;gps=null, null;phone=null;zalo=undefined;default_order[]=25,13,9;data_order=[{"id":25,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:24:03.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6706, N'edit_company', N'ip=27.67.176.20;action=edit_company;id=5;name=LING Yi 25,70;address=Yên Phong;gps=21.2274437, 106.005577;phone=null;zalo=undefined;default_order[]=25,15,13;data_order=[{"id":25,"thu":[2,3,4,5,6,7,8]},{"id":15,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:24:47.637' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6710, N'edit_company', N'ip=27.67.176.20;action=edit_company;id=10;name=NVC 25,35;address=Yên Phong;gps=null, null;phone=null;zalo=undefined;default_order[]=25,28,18,13;data_order=[{"id":25,"thu":[2,3,4,5,6,7,8]},{"id":28,"thu":[2,3,4,5,6,7,8]},{"id":18,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:25:15.773' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6717, N'save_order', N'ip=27.67.176.20;action=save_order;id_company=11;id_ca=2;order_id[]=38,14,12,13;order_sl[]=7,17,0,89;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:26:45.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6719, N'save_order', N'ip=27.67.176.20;action=save_order;id_company=2;id_ca=2;order_id[]=13,10,27;order_sl[]=0,47,5;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:27:42.670' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6721, N'save_order', N'ip=27.67.176.20;action=save_order;id_company=30;id_ca=2;order_id[]=9;order_sl[]=1;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:28:11.797' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6723, N'save_order', N'ip=27.67.176.20;action=save_order;id_company=13;id_ca=2;order_id[]=31,21,13;order_sl[]=20,0,56;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:28:35.160' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6726, N'edit_company', N'ip=27.67.176.20;action=edit_company;id=13;name=PRIMETECH 25;address=Quế Võ 3;gps=null, null;phone=null;zalo=undefined;default_order[]=31,13;data_order=[{"id":31,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:28:47.017' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6730, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=28;id_ca=2;order_id[]=32,23,22,24,9;order_sl[]=2,0,7,1,2;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:36:16.690' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6733, N'edit_company', N'ip=171.246.9.62;action=edit_company;id=28;name=MAXIN 30,30;address=Quế Võ 2;gps=null, null;phone=;zalo=undefined;default_order[]=32,22,24,9;data_order=[{"id":32,"thu":[2,3,4,5,6,7,8]},{"id":22,"thu":[2,3,4,5,6,7,8]},{"id":24,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:36:26.253' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6740, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=1;id_ca=2;order_id[]=9;order_sl[]=157;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:38:28.753' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6742, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=8,41;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:39:00.483' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6750, N'edit_company', N'ip=171.246.9.62;action=edit_company;id=12;name=GEP 25,(50,40);address=Quế Võ 3;gps=null, null;phone=null;zalo=undefined;default_order[]=20,34,13;data_order=[{"id":20,"thu":[2,3,4,5,6,7,8]},{"id":34,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:42:22.100' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6757, N'delete_suat_an', N'ip=171.246.9.62;action=delete_suat_an;id=35;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:42:44.577' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6763, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=12;id_ca=2;order_id[]=20,34,13;order_sl[]=1,7,13;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:43:19.303' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6766, N'edit_company', N'ip=171.246.9.62;action=edit_company;id=12;name=GEP 25,(50,40);address=Quế Võ 3;gps=null, null;phone=null;zalo=undefined;default_order[]=30,20,13;data_order=[{"id":30,"thu":[2,3,4,5,6,7,8]},{"id":20,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:43:54.657' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6773, N'edit_company', N'ip=171.246.9.62;action=edit_company;id=12;name=GEP 25,(50,40);address=Quế Võ 3;gps=null, null;phone=null;zalo=undefined;default_order[]=30,20,34,13;data_order=[{"id":30,"thu":[2,3,4,5,6,7,8]},{"id":20,"thu":[2,3,4,5,6,7,8]},{"id":34,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:45:58.147' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6780, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=12;id_ca=2;order_id[]=30,20,34,13;order_sl[]=10,1,7,13;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:46:23.280' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6782, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=9,0,10,82;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:47:00.107' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6784, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=6;id_ca=2;order_id[]=43,13;order_sl[]=0,91;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:47:44.053' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6786, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=6;id_ca=2;order_id[]=43,13;order_sl[]=0,91;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:47:52.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6788, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=4;id_ca=2;order_id[]=39,41,40,12,13;order_sl[]=9,0,0,0,165;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:50:03.357' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6791, N'edit_company', N'ip=171.246.9.62;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=undefined;default_order[]=39,41,40,13;data_order=[{"id":39,"thu":[2,3,4,5,6,7,8]},{"id":41,"thu":[2,3,4,5,6,7,8]},{"id":40,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:50:37.780' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6798, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=19;id_ca=2;order_id[]=25,13,9;order_sl[]=0,0,213;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:53:20.387' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6806, N'edit_company', N'ip=171.246.9.62;action=edit_company;id=19;name=ECT 30;address=somewhere1;gps=null, null;phone=null;zalo=undefined;default_order[]=25,9;data_order=[{"id":25,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:53:43.477' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6809, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=19;id_ca=2;order_id[]=25,13,9;order_sl[]=0,0,213;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:53:45.240' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6811, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=19;id_ca=3;order_id[]=25,9;order_sl[]=28,0;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:54:07.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6813, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=19;id_ca=4;order_id[]=25,9;order_sl[]=0,44;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:54:16.320' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6815, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=15;id_ca=2;order_id[]=16,13;order_sl[]=3,62;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:54:43.683' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6817, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=10;id_ca=2;order_id[]=25,28,18,13;order_sl[]=0,0,15,297;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 08:55:57.370' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6823, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=7;id_ca=2;order_id[]=13;order_sl[]=39;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 09:03:28.703' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6825, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=17;id_ca=2;order_id[]=9;order_sl[]=10;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 09:04:04.370' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6827, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=5;id_ca=2;order_id[]=25,15,13;order_sl[]=0,105,390;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 09:05:35.077' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6841, N'save_order', N'ip=14.241.82.64;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=1;uid=Admin;today=2023-11-05;', CAST(N'2023-11-04 09:08:07.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6848, N'save_order', N'ip=14.241.82.64;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 09:08:19.807' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6850, N'save_order', N'ip=14.241.82.64;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 09:10:44.947' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6852, N'save_order', N'ip=14.241.82.64;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 09:10:55.167' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6866, N'save_order', N'ip=14.241.82.64;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-05;', CAST(N'2023-11-04 09:17:30.650' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6873, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 09:20:32.117' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6876, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=1;uid=admin;today=2023-11-05;', CAST(N'2023-11-04 09:20:43.990' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6879, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 09:20:58.273' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6882, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=1;uid=admin;today=2023-11-05;', CAST(N'2023-11-04 09:22:37.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6884, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-04 09:22:41.677' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6886, N'save_order', N'ip=171.246.9.62;action=save_order;id_company=18;id_ca=2;order_id[]=13;order_sl[]=37;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 09:23:05.410' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6905, N'enable_suat_an', N'ip=27.67.95.64;action=enable_suat_an;id=43;name=BunChieuVSG20;sign=BunChieuVSG20;price=20000;loai=3;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 09:27:25.700' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6916, N'save_order', N'ip=27.67.95.64;action=save_order;id_company=29;id_ca=2;order_id[]=9;order_sl[]=33;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 09:30:26.010' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6918, N'save_order', N'ip=27.67.95.64;action=save_order;id_company=4;id_ca=2;order_id[]=39,41,40,13;order_sl[]=9,0,0,165;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 09:30:37.333' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6921, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-03;', CAST(N'2023-11-04 09:33:20.860' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6922, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-03;', CAST(N'2023-11-04 09:33:23.987' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6924, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 09:33:33.793' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6930, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 09:37:57.793' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6935, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 09:40:11.763' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6936, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 09:40:31.643' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6937, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 09:40:37.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6938, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 09:42:47.780' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6939, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 09:43:31.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6940, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 09:43:36.913' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6941, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 09:43:41.380' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6942, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 09:43:47.753' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6943, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 09:43:52.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6944, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 09:43:58.557' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (6945, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 09:47:31.000' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7009, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=6;id_ca=2;order_id[]=43,13;order_sl[]=0,91;uid=hoa;', CAST(N'2023-11-04 10:10:07.450' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7018, N'save_order', N'ip=171.240.28.123;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=9,10,NaN,82;uid=hoa;', CAST(N'2023-11-04 10:11:00.467' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7147, N'edit_don_nguyen', N'ip=14.241.82.64;action=edit_don_nguyen;id=4;id_old=4;name=Thạch Long Hải;des=Thạch Long Hải 100g;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 10:47:27.440' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7318, N'add_loai', N'ip=116.97.109.166;action=add_loai;id=4;name=Bún;uid=trong;', CAST(N'2023-11-04 11:15:55.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7339, N'add_loai', N'ip=116.97.109.166;action=add_loai;id=4;name=BunChieu;uid=trong;', CAST(N'2023-11-04 11:16:41.850' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7340, N'add_loai', N'ip=116.97.109.166;action=add_loai;id=4;name=BunChieu1;uid=trong;', CAST(N'2023-11-04 11:17:04.573' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7341, N'add_loai', N'ip=116.97.109.166;action=add_loai;id=4;name=BunChieu123;uid=trong;', CAST(N'2023-11-04 11:17:10.023' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7342, N'add_loai', N'ip=116.97.109.166;action=add_loai;id=4;name=BunChieu123;uid=trong;', CAST(N'2023-11-04 11:17:25.097' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7352, N'edit_loai', N'ip=116.97.109.166;action=edit_loai;id=3;name=Bún;uid=trong;', CAST(N'2023-11-04 11:38:48.883' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7354, N'add_loai', N'ip=116.97.109.166;action=add_loai;id=9;name=Khác;uid=trong;', CAST(N'2023-11-04 11:39:10.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7356, N'edit_loai', N'ip=116.97.109.166;action=edit_loai;id=9;name=Khác1;uid=trong;', CAST(N'2023-11-04 11:39:22.867' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7358, N'edit_loai', N'ip=116.97.109.166;action=edit_loai;id=3;name=khác;uid=trong;', CAST(N'2023-11-04 11:39:28.820' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7360, N'edit_loai', N'ip=116.97.109.166;action=edit_loai;id=9;name=BunChieu;uid=trong;', CAST(N'2023-11-04 11:39:43.427' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7368, N'enable_suat_an', N'ip=116.97.109.166;action=enable_suat_an;id=25;name=BunChieu25;sign=Bun25;price=25000;loai=9;uid=trong;', CAST(N'2023-11-04 11:41:35.720' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7370, N'enable_suat_an', N'ip=116.97.109.166;action=enable_suat_an;id=43;name=BunChieuVSG20;sign=BunChieuVSG20;price=20000;loai=9;uid=trong;', CAST(N'2023-11-04 11:41:45.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7376, N'save_order', N'ip=116.97.109.166;action=save_order;id_company=6;id_ca=3;order_id[]=43,13;order_sl[]=34,0;uid=trong;', CAST(N'2023-11-04 11:43:42.850' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7377, N'save_order', N'ip=116.97.109.166;action=save_order;id_company=6;id_ca=3;order_id[]=43,13;order_sl[]=34,0;uid=trong;', CAST(N'2023-11-04 11:43:48.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7378, N'save_order', N'ip=116.97.109.166;action=save_order;id_company=6;id_ca=3;order_id[]=43,13;order_sl[]=33,0;uid=trong;', CAST(N'2023-11-04 11:43:57.533' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7379, N'save_order', N'ip=116.97.109.166;action=save_order;id_company=6;id_ca=3;order_id[]=43,13;order_sl[]=33,0;uid=trong;', CAST(N'2023-11-04 11:44:04.100' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7385, N'save_order', N'ip=116.97.109.166;action=save_order;id_company=20;id_ca=2;order_id[]=27;order_sl[]=2;uid=trong;', CAST(N'2023-11-04 11:44:25.563' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7386, N'save_order', N'ip=116.97.109.166;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=3;uid=trong;', CAST(N'2023-11-04 11:45:51.617' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7391, N'save_order', N'ip=27.67.95.64;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=2;uid=Trong;', CAST(N'2023-11-04 11:46:05.850' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7392, N'save_order', N'ip=116.97.109.166;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=3;uid=trong;', CAST(N'2023-11-04 11:46:14.050' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7397, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 11:48:10.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7398, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=9;id_ca=2;order_id[]=17,12,13;order_sl[]=0,0,0;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 11:48:15.797' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7402, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=9;id_ca=3;order_id[]=17,12,13;order_sl[]=0,0,0;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 11:48:20.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7404, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=9;id_ca=3;order_id[]=17,12,13;order_sl[]=0,0,0;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 11:48:23.317' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7415, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=1;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 11:50:56.100' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7416, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=1;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 11:51:10.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7418, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=NaN;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 11:51:15.577' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7424, N'save_order', N'ip=116.97.109.166;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=2;uid=trong;', CAST(N'2023-11-04 12:00:06.780' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7432, N'save_order', N'ip=116.97.109.166;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=3;uid=Trong;', CAST(N'2023-11-04 13:17:22.390' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7437, N'save_order', N'ip=116.97.109.166;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=0,10,0;uid=Trong;', CAST(N'2023-11-04 13:20:24.720' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7453, N'edit_loai', N'ip=14.241.82.64;action=edit_loai;id=3;name=Khác;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 13:25:27.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7455, N'edit_loai', N'ip=14.241.82.64;action=edit_loai;id=4;name=BúnChieu;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 13:25:39.117' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7457, N'edit_loai', N'ip=14.241.82.64;action=edit_loai;id=4;name=BúnChieu;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 13:25:46.257' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7468, N'save_order', N'ip=116.97.109.166;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=2;uid=Trong;', CAST(N'2023-11-04 13:30:32.263' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7506, N'edit_loai', N'ip=14.241.82.64;action=edit_loai;id_old=4;id=5;name=BúnChieu;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 13:38:11.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7507, N'edit_loai', N'ip=14.241.82.64;action=edit_loai;id_old=4;id=5;name=BúnChieu;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 13:38:14.517' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7508, N'edit_loai', N'ip=14.241.82.64;action=edit_loai;id_old=4;id=5;name=BúnChieu;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 13:38:43.483' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7510, N'edit_loai', N'ip=14.241.82.64;action=edit_loai;id_old=5;id=4;name=BúnChieu;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 13:38:46.477' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7512, N'edit_loai', N'ip=14.241.82.64;action=edit_loai;id_old=4;id=2;name=BúnChieu;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 13:38:49.123' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7525, N'edit_don_nguyen', N'ip=14.241.82.64;action=edit_don_nguyen;id=1;id_old=1;name=MT cô cô mi (Cốc);des=Mì tôm cốc cô cô mi;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 13:43:29.043' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7542, N'edit_combo', N'ip=14.241.82.64;action=edit_combo;ids=29;idn=2;sl=1;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 13:45:44.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7544, N'edit_combo', N'ip=14.241.82.64;action=edit_combo;ids=29;idn=7;sl=2;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 13:45:50.917' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7615, N'edit_don_nguyen', N'ip=127.0.0.1;action=edit_don_nguyen;id=2;id_old=2;name=Bánh Mỳ Dứa;des=Bánh Mỳ Dứa ;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:02:19.600' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7626, N'edit_company', N'ip=127.0.0.1;action=edit_company;id=6;name=VESOGO 25;address=Đại Đồng;gps=null, null;phone=null;zalo=undefined;default_order[]=43,13;data_order=[{"id":43,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:06:27.050' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7634, N'edit_combo', N'ip=127.0.0.1;action=edit_combo;ids=29;idn=2;sl=1;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:08:39.637' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7664, N'edit_setting', N'ip=127.0.0.1;action=edit_setting;key=monitor_interval;value=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:10:28.477' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7735, N'save_order', N'ip=116.97.109.166;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=12;uid=Trong;', CAST(N'2023-11-04 14:18:57.657' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7769, N'save_order', N'ip=14.241.82.64;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 14:21:36.160' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7770, N'save_order', N'ip=14.241.82.64;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 14:21:41.163' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7771, N'save_order', N'ip=14.241.82.64;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 14:21:47.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7773, N'monitor', N'ip=14.241.82.64;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 14:45:35.433' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7774, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:53:52.450' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7775, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:53:52.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7776, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:53:52.577' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7777, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 14:53:52.730' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7778, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:53:55.357' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7779, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:54:02.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7780, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:56:14.273' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7781, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:56:44.050' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7782, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:56:47.807' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7783, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:57:21.633' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7784, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:57:28.050' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7785, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:58:01.347' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7786, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:58:43.327' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7787, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:58:49.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7788, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:59:28.447' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7789, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:59:28.477' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7790, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:59:28.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7791, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 14:59:28.583' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7792, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:59:31.727' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7793, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:59:40.467' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7794, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:59:48.047' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7795, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:59:48.060' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7796, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 14:59:48.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7797, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 14:59:48.310' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7798, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:00:15.703' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7799, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:00:15.720' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7800, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:00:15.720' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7801, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:00:15.787' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7802, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:00:19.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7803, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:00:24.303' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7804, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:01:22.963' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7805, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:01:30.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7806, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:01:33.600' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7807, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:01:51.177' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7808, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:01:51.177' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7809, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:01:51.177' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7810, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:01:51.263' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7811, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:01:54.077' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7812, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:02:02.847' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7813, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:02:02.847' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7814, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:02:02.847' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7815, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:02:02.927' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7816, N'list_don_nguyen', N'ip=127.0.0.1;action=list_don_nguyen;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:02:04.597' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7817, N'list_suat_an', N'ip=127.0.0.1;action=list_suat_an;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:02:04.597' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7818, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:02:05.793' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7819, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=4;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:02:07.973' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7820, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=1;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:02:24.007' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7821, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=1;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:02:27.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7822, N'list_setting', N'ip=116.97.109.166;action=list_setting;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:04:00.680' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7823, N'monitor', N'ip=116.97.109.166;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:04:00.713' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7824, N'check_logined', N'ip=116.97.109.166;action=check_logined;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:04:00.743' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7825, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-04 15:04:00.743' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7826, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=4;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:04:11.517' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7827, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:04:11.720' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7828, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=4;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:04:11.767' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7829, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:04:11.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7830, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=1;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:04:59.303' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7831, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=150;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:05:04.613' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7832, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:05:04.703' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7833, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:05:06.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7834, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=0,10,0;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:05:20.807' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7835, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:05:20.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7836, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=2;order_id[]=9;order_sl[]=157;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:05:30.037' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7837, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:05:32.547' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7838, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:05:42.173' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7839, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=2;order_id[]=9;order_sl[]=157;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:05:43.520' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7840, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:05:45.880' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7841, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=3;id_ca=3;order_id[]=21,19,14,13;order_sl[]=11,0,0,53;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:05:49.840' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7842, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:05:49.920' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7843, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:06:03.960' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7844, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:06:03.973' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7845, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:06:03.973' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7846, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:06:04.050' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7847, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=5;id_ca=1;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:06:06.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7848, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=4;id_ca=3;order_id[]=39,41,40,13;order_sl[]=0,0,2,147;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:06:26.940' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7849, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:06:27.173' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7850, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=5;id_ca=1;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:06:52.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7851, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:06:55.063' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7852, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:06:55.097' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7853, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:06:55.173' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7854, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:06:55.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7855, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=5;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:06:57.447' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7856, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=4;id_ca=3;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:07:02.737' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7857, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=5;id_ca=3;order_id[]=25,15,13;order_sl[]=0,0,NaN;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:09:12.390' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7858, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:09:12.437' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7859, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:09:12.437' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7860, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:09:12.483' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7861, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:09:12.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7862, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:09:12.643' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7863, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=3;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:09:15.520' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7864, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=15;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:09:21.950' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7865, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=19;id_ca=3;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:09:26.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7866, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=4;id_ca=3;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:09:31.777' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7867, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=4;id_ca=3;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:09:43.780' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7868, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=5;id_ca=3;order_id[]=25,15,13;order_sl[]=80,0,240;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:10:00.173' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7869, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:10:00.270' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7870, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=4;id_ca=3;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:10:04.310' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7871, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=4;id_ca=3;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:10:47.427' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7872, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=6;id_ca=3;order_id[]=43,13;order_sl[]=77,0;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:10:52.780' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7873, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:10:52.873' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7874, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=7;id_ca=3;order_id[]=13;order_sl[]=20;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:11:18.090' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7875, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:11:18.177' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7876, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=10;id_ca=3;order_id[]=25,28,18,13;order_sl[]=0,0,0,58;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:12:27.390' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7877, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:12:27.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7878, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=11;id_ca=3;order_id[]=38,14,12,13;order_sl[]=0,0,1,95;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:13:00.790' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7879, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:13:00.883' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7880, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=4;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:13:14.777' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7881, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=4;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:13:17.797' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7882, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=4;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:13:26.677' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7883, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=12;id_ca=3;order_id[]=30,20,34,13;order_sl[]=0,0,3,0;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:13:32.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7884, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:13:32.653' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7885, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=4;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:13:34.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7886, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=18;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:13:50.753' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7887, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=18;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:13:55.310' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7888, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=13;id_ca=3;order_id[]=31,13;order_sl[]=11,8;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:14:01.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7889, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:14:01.983' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7890, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=29;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:14:02.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7891, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=15;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:14:07.803' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7892, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=19;id_ca=4;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:14:12.863' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7893, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=1;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:14:18.270' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7894, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:14:26.333' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7895, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=9;id_ca=2;order_id[]=17,12,13;order_sl[]=0,0,0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:14:31.643' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7896, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=9;id_ca=2;order_id[]=17,12,13;order_sl[]=0,0,0;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:14:34.690' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7897, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=15;id_ca=3;order_id[]=16,13;order_sl[]=0,14;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:15:03.287' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7898, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:15:03.363' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7899, N'list_company', N'ip=27.67.129.59;action=list_company;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:15:14.127' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7900, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=30;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:15:14.127' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7901, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=29;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:15:19.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7902, N'edit_company', N'ip=27.67.129.59;action=edit_company;id=15;name=ETS 25;address=MĨ Á;gps=null, null;phone=null;zalo=undefined;default_order[]=13;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:15:20.577' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7903, N'list_company', N'ip=27.67.129.59;action=list_company;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:15:20.653' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7904, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:15:20.670' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7905, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=28;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:15:23.733' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7906, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=29;id_ca=3;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:15:28.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7907, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=30;id_ca=3;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:15:38.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7908, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=28;id_ca=4;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:15:47.170' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7909, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=20;id_ca=4;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:15:52.350' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7910, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=19;id_ca=3;order_id[]=25,9;order_sl[]=109,0;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:16:51.483' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7911, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:16:51.570' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7912, N'list_setting', N'ip=27.67.129.59;action=list_setting;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:17:57.443' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7913, N'check_logined', N'ip=27.67.129.59;action=check_logined;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:17:57.443' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7914, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:17:57.443' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7915, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-04 15:17:57.460' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7916, N'list_suat_an', N'ip=27.67.129.59;action=list_suat_an;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:18:55.237' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7917, N'list_don_nguyen', N'ip=27.67.129.59;action=list_don_nguyen;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:18:55.237' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7918, N'enable_suat_an', N'ip=27.67.129.59;action=enable_suat_an;id=16;name=Sữa Fami Tia Sáng 25;sign=SuaFamiTiaSang25;price=25000;loai=3;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:19:53.590' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7919, N'list_suat_an', N'ip=27.67.129.59;action=list_suat_an;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:19:53.683' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7920, N'add_suat_an', N'ip=27.67.129.59;action=add_suat_an;name=SuaMocChauTiaSang25;sign=SuaMocChauTiaSang25;price=25000;loai=3;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:20:53.093' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7921, N'list_suat_an', N'ip=27.67.129.59;action=list_suat_an;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:20:53.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7922, N'list_combo', N'ip=27.67.129.59;action=list_combo;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:20:59.250' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7923, N'add_combo', N'ip=27.67.129.59;action=add_combo;ids=44;idn=8;sl=2;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:21:56.577' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7924, N'list_combo', N'ip=27.67.129.59;action=list_combo;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:21:56.667' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7925, N'add_combo', N'ip=27.67.129.59;action=add_combo;ids=44;idn=7;sl=1;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:22:25.723' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7926, N'list_combo', N'ip=27.67.129.59;action=list_combo;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:22:25.820' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7927, N'list_company', N'ip=27.67.129.59;action=list_company;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:22:40.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7928, N'list_setting', N'ip=27.67.129.59;action=list_setting;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:23:09.533' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7929, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:23:09.533' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7930, N'check_logined', N'ip=27.67.129.59;action=check_logined;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:23:09.533' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7931, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-04 15:23:09.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7932, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=16;id_ca=3;order_id[]=26,23,9;order_sl[]=3,0,8;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:24:24.923' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7933, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:24:25.003' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7934, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=16;id_ca=2;order_id[]=26,23,9;order_sl[]=3,1,9;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:25:08.140' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7935, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=16;id_ca=2;order_id[]=26,23,9;order_sl[]=3,1,9;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:25:13.117' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7936, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=16;id_ca=2;order_id[]=26,23,9;order_sl[]=3,1,9;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:25:18.777' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7937, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=16;id_ca=2;order_id[]=26,23,9;order_sl[]=3,1,9;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:25:23.823' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7938, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:25:55.647' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7939, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:25:55.677' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7940, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:25:55.770' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7941, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:25:55.833' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7942, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=2;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:25:58.147' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7943, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:25:59.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7944, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=2;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:26:00.673' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7945, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:26:12.387' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7946, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:26:12.387' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7947, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:26:12.517' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7948, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:26:12.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7949, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=2;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:26:14.880' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7950, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:26:15.757' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7951, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:26:17.547' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7952, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=2;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:26:19.337' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7953, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:26:20.257' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7954, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:26:41.173' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7955, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:27:10.683' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7956, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:27:10.683' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7957, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:27:10.683' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7958, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:27:10.777' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7959, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:27:13.340' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7960, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:27:14.260' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7961, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:27:15.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7962, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:27:15.570' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7963, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:27:15.783' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7964, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:28:12.850' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7965, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:28:18.403' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7966, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:28:22.437' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7967, N'list_setting', N'ip=27.67.129.59;action=list_setting;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:28:32.470' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7968, N'check_logined', N'ip=27.67.129.59;action=check_logined;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:28:32.470' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7969, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:28:32.470' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7970, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-04 15:28:32.470' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7971, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:29:41.003' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7972, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:29:43.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7973, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:31:34.993' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7974, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:32:14.973' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7975, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:32:33.943' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7976, N'list_setting', N'ip=27.67.129.59;action=list_setting;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:35:42.720' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7977, N'check_logined', N'ip=27.67.129.59;action=check_logined;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:35:42.737' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7978, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:35:42.737' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7979, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-04 15:35:42.737' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7980, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:38:49.930' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7981, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:39:00.330' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7982, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:39:37.820' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7983, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=17;id_ca=3;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:39:50.477' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7984, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=15;id_ca=3;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:39:54.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7985, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=29;id_ca=3;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:39:59.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7986, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=1;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:40:03.957' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7987, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:40:26.113' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7988, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:41:33.987' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7989, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:41:34.020' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7990, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:41:34.097' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7991, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:41:34.130' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7992, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=2;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:41:36.950' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7993, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:41:38.847' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7994, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:42:12.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7995, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:42:12.910' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7996, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:42:13.050' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7997, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:42:13.130' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7998, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:42:19.817' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (7999, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:42:24.287' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8000, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:43:06.877' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8001, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:43:06.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8002, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:43:06.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8003, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:43:06.940' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8004, N'list_setting', N'ip=14.241.82.64;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 15:43:09.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8005, N'check_logined', N'ip=14.241.82.64;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 15:43:09.907' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8006, N'monitor', N'ip=14.241.82.64;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 15:43:09.907' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8007, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:43:09.907' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8008, N'list_history_order', N'ip=14.241.82.64;action=list_history_order;id_company=3;id_ca=1;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 15:43:13.103' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8009, N'list_history_order', N'ip=14.241.82.64;action=list_history_order;id_company=3;id_ca=1;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 15:43:30.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8010, N'list_all_history_order', N'ip=14.241.82.64;action=list_all_history_order;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 15:43:32.920' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8011, N'list_all_history_order', N'ip=14.241.82.64;action=list_all_history_order;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 15:44:08.653' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8012, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=20;id_ca=3;order_id[]=27;order_sl[]=1;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:45:46.130' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8013, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:45:46.460' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8014, N'list_setting', N'ip=27.67.129.59;action=list_setting;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:46:12.623' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8015, N'check_logined', N'ip=27.67.129.59;action=check_logined;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:46:12.623' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8016, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:46:12.640' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8017, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-04 15:46:12.640' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8018, N'list_setting', N'ip=14.241.82.64;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 15:47:19.120' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8019, N'check_logined', N'ip=14.241.82.64;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 15:47:19.120' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8020, N'monitor', N'ip=14.241.82.64;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 15:47:19.120' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8021, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:47:19.120' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8022, N'list_history_order', N'ip=14.241.82.64;action=list_history_order;id_company=9;id_ca=2;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 15:47:29.413' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8023, N'list_all_history_order', N'ip=14.241.82.64;action=list_all_history_order;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 15:47:36.430' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8024, N'monitor', N'ip=14.241.82.64;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-04 15:48:02.993' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8025, N'save_order', N'ip=27.67.129.59;action=save_order;id_company=20;id_ca=3;order_id[]=27;order_sl[]=0;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:48:04.680' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8026, N'monitor', N'ip=27.67.129.59;action=monitor;uid=Trong;today=2023-11-04;', CAST(N'2023-11-04 15:48:04.790' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8027, N'list_history_order', N'ip=14.241.82.64;action=list_history_order;id_company=3;id_ca=2;uid=Admin;today=2023-11-05;', CAST(N'2023-11-04 15:48:05.107' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8028, N'list_all_history_order', N'ip=14.241.82.64;action=list_all_history_order;uid=Admin;today=2023-11-05;', CAST(N'2023-11-04 15:48:06.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8029, N'monitor', N'ip=14.241.82.64;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-04 15:48:30.810' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8030, N'list_history_order', N'ip=14.241.82.64;action=list_history_order;id_company=6;id_ca=2;uid=Admin;today=2023-11-06;', CAST(N'2023-11-04 15:48:37.513' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8031, N'list_all_history_order', N'ip=14.241.82.64;action=list_all_history_order;uid=Admin;today=2023-11-06;', CAST(N'2023-11-04 15:48:40.367' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8032, N'list_all_history_order', N'ip=14.241.82.64;action=list_all_history_order;uid=Admin;today=2023-11-06;', CAST(N'2023-11-04 15:48:41.310' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8033, N'list_history_order', N'ip=14.241.82.64;action=list_history_order;id_company=1;id_ca=1;uid=Admin;today=2023-11-06;', CAST(N'2023-11-04 15:48:58.957' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8034, N'list_history_order', N'ip=14.241.82.64;action=list_history_order;id_company=1;id_ca=1;uid=Admin;today=2023-11-06;', CAST(N'2023-11-04 15:49:01.147' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8035, N'list_history_order', N'ip=14.241.82.64;action=list_history_order;id_company=1;id_ca=1;uid=Admin;today=2023-11-06;', CAST(N'2023-11-04 15:49:02.637' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8036, N'list_setting', N'ip=14.241.82.64;action=list_setting;uid=Admin;today=2023-11-06;', CAST(N'2023-11-04 15:56:12.993' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8037, N'monitor', N'ip=14.241.82.64;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-04 15:56:12.993' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8038, N'check_logined', N'ip=14.241.82.64;action=check_logined;uid=Admin;today=2023-11-06;', CAST(N'2023-11-04 15:56:12.993' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8039, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:56:12.993' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8040, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:56:19.840' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8041, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:56:19.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8042, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:56:19.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8043, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:56:19.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8044, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:56:33.527' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8045, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:56:33.527' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8046, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:56:33.650' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8047, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:56:33.713' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8048, N'list_don_nguyen', N'ip=127.0.0.1;action=list_don_nguyen;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:56:34.970' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8049, N'list_suat_an', N'ip=127.0.0.1;action=list_suat_an;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:56:34.987' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8050, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:56:35.430' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8051, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:56:38.710' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8052, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:56:42.477' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8053, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:56:49.040' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8054, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:56:57.877' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8055, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:57:00.507' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8056, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:57:22.610' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8057, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:57:30.117' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8058, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:57:37.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8059, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:59:54.350' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8060, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:59:54.383' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8061, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:59:54.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8062, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 15:59:54.660' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8063, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=4;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 15:59:58.020' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8064, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=4;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:00:05.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8065, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:00:06.583' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8066, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=4;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:00:25.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8067, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:00:26.450' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8068, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=4;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:04:13.000' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8069, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:04:16.640' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8070, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:04:19.927' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8071, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:04:20.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8072, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:04:21.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8073, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:04:21.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8074, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:04:21.827' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8075, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:04:22.070' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8076, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:04:22.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8077, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:04:22.610' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8078, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:04:26.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8079, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=4;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:04:37.683' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8080, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:04:54.043' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8081, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:04:56.847' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8082, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:05:05.983' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8083, N'list_suat_an', N'ip=127.0.0.1;action=list_suat_an;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:06:56.417' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8084, N'list_don_nguyen', N'ip=127.0.0.1;action=list_don_nguyen;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:06:56.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8085, N'list_don_nguyen', N'ip=127.0.0.1;action=list_don_nguyen;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:06:57.370' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8086, N'list_combo', N'ip=127.0.0.1;action=list_combo;uid=admin;today=2023-11-04;', CAST(N'2023-11-04 16:07:00.123' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8087, N'check_logined', N'ip=14.241.82.64;action=check_logined;uid=Admin;today=2023-11-06;', CAST(N'2023-11-04 16:12:05.167' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8088, N'list_setting', N'ip=14.241.82.64;action=list_setting;uid=Admin;today=2023-11-06;', CAST(N'2023-11-04 16:12:05.167' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8089, N'monitor', N'ip=14.241.82.64;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-04 16:12:05.167' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8090, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 16:12:05.167' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8091, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 16:41:04.737' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8092, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 16:41:04.753' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8093, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 16:41:04.767' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8094, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 16:41:04.767' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8095, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 16:43:40.283' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8096, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 16:43:40.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8097, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 16:43:40.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8098, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 16:43:40.313' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8099, N'list_suat_an', N'ip=113.186.3.221;action=list_suat_an;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 16:43:48.587' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8100, N'list_don_nguyen', N'ip=113.186.3.221;action=list_don_nguyen;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 16:43:48.603' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8101, N'list_don_nguyen', N'ip=113.186.3.221;action=list_don_nguyen;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 16:43:55.020' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8102, N'list_combo', N'ip=113.186.3.221;action=list_combo;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 16:44:01.523' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8103, N'list_all_history_order', N'ip=113.186.3.221;action=list_all_history_order;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 16:44:40.287' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8104, N'list_all_history_order', N'ip=113.186.3.221;action=list_all_history_order;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 16:44:47.090' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8105, N'list_all_history_order', N'ip=113.186.3.221;action=list_all_history_order;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 16:44:48.000' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8106, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:11:39.317' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8107, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:11:39.353' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8108, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:11:39.357' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8109, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:11:39.357' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8110, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:11:47.407' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8111, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:11:47.423' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8112, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:11:47.440' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8113, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:11:47.453' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8114, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:11:48.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8115, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:11:48.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8116, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:11:48.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8117, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:11:48.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8118, N'list_user', N'ip=113.185.41.247;action=list_user;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:11:49.983' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8119, N'list_user', N'ip=113.185.41.247;action=list_user;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:11:54.750' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8120, N'list_user', N'ip=113.185.41.247;action=list_user;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:11:58.867' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8121, N'list_user', N'ip=113.185.41.247;action=list_user;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:12:03.507' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8122, N'list_company', N'ip=113.185.41.247;action=list_company;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:12:05.873' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8123, N'list_company', N'ip=113.185.41.247;action=list_company;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:12:24.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8124, N'list_company', N'ip=113.185.41.247;action=list_company;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:12:31.710' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8125, N'goi_y_order', N'ip=113.185.41.247;action=goi_y_order;id_company=7;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:12:33.803' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8126, N'goi_y_order', N'ip=113.185.41.247;action=goi_y_order;id_company=7;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:12:37.433' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8127, N'goi_y_order', N'ip=113.185.41.247;action=goi_y_order;id_company=7;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:12:40.443' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8128, N'list_suat_an', N'ip=113.185.41.247;action=list_suat_an;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:12:47.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8129, N'list_don_nguyen', N'ip=113.185.41.247;action=list_don_nguyen;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:12:47.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8130, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:12:52.037' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8131, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:20.757' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8132, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:20.757' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8133, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:20.757' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8134, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:13:20.757' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8135, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:21.393' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8136, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:21.393' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8137, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:21.393' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8138, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:13:21.410' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8139, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:22.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8140, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:22.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8141, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:22.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8142, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:13:22.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8143, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:26.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8144, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:26.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8145, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:26.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8146, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:13:26.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8147, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:44.853' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8148, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:44.867' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8149, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:44.867' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8150, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:13:44.883' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8151, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:46.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8152, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:46.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8153, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:46.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8154, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:13:46.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8155, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:47.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8156, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:47.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8157, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:47.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8158, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:13:47.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8159, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:49.073' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8160, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:49.073' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8161, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:49.073' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8162, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:13:49.090' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8163, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:50.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8164, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:50.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8165, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:50.623' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8166, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:13:50.640' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8167, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:52.117' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8168, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:52.117' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8169, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:52.117' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8170, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:13:52.150' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8171, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:53.363' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8172, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:53.363' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8173, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:53.363' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8174, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:13:53.363' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8175, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:54.603' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8176, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:54.603' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8177, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:54.620' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8178, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:13:54.620' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8179, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:55.767' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8180, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:55.767' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8181, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:55.780' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8182, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:13:55.780' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8183, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:56.860' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8184, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:56.860' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8185, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:56.877' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8186, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:13:56.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8187, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:58.020' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8188, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:58.020' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8189, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:58.020' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8190, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:13:58.033' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8191, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:59.087' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8192, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:59.087' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8193, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:13:59.087' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8194, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:13:59.103' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8195, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:14:00.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8196, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:14:00.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8197, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:14:00.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8198, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:14:00.237' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8199, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:14:01.423' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8200, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:14:01.423' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8201, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:14:01.440' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8202, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:14:01.453' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8203, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:14:02.807' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8204, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:14:02.807' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8205, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:14:02.823' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8206, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:14:02.840' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8207, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:14:04.087' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8208, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:14:04.103' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8209, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:14:04.103' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8210, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:14:04.797' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8211, N'list_setting', N'ip=113.185.41.247;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:14:05.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8212, N'monitor', N'ip=113.185.41.247;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:14:05.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8213, N'check_logined', N'ip=113.185.41.247;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:14:05.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8214, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:14:05.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8215, N'list_setting', N'ip=113.184.38.20;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:27:03.727' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8216, N'monitor', N'ip=113.184.38.20;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:27:03.727' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8217, N'check_logined', N'ip=113.184.38.20;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 17:27:03.727' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8218, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 17:27:03.743' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8219, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:56:34.150' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8220, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:56:34.163' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8221, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:56:34.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8222, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 20:56:34.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8223, N'list_don_nguyen', N'ip=113.186.3.221;action=list_don_nguyen;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:56:35.670' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8224, N'list_suat_an', N'ip=113.186.3.221;action=list_suat_an;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:56:35.670' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8225, N'list_don_nguyen', N'ip=113.186.3.221;action=list_don_nguyen;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:56:38.903' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8226, N'dem_don_nguyen', N'ip=113.186.3.221;action=dem_don_nguyen;id=1;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:56:42.470' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8227, N'dem_don_nguyen', N'ip=113.186.3.221;action=dem_don_nguyen;id=2;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:56:44.827' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8228, N'dem_don_nguyen', N'ip=113.186.3.221;action=dem_don_nguyen;id=6;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:56:48.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8229, N'dem_don_nguyen', N'ip=113.186.3.221;action=dem_don_nguyen;id=11;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:56:55.147' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8230, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:56:59.877' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8231, N'list_all_history_order', N'ip=113.186.3.221;action=list_all_history_order;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:57:12.453' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8232, N'list_all_history_order', N'ip=113.186.3.221;action=list_all_history_order;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:57:19.067' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8233, N'list_all_history_order', N'ip=113.186.3.221;action=list_all_history_order;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:57:27.910' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8234, N'list_history_order', N'ip=113.186.3.221;action=list_history_order;id_company=7;id_ca=2;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:58:15.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8235, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=7;id_ca=2;order_id[]=13;order_sl[]=39;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:58:17.067' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8236, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:58:17.403' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8237, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=6;id_ca=2;order_id[]=43,13;order_sl[]=0,91;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:58:25.013' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8238, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:58:25.077' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8239, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=7;id_ca=2;order_id[]=13;order_sl[]=39;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:58:30.100' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8240, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:58:30.160' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8241, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=7;id_ca=2;order_id[]=13;order_sl[]=39;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:58:35.777' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8242, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:58:35.823' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8243, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=2;order_id[]=9;order_sl[]=157;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:58:40.123' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8244, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:58:40.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8245, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:58:47.320' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8246, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:58:47.320' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8247, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 20:58:47.320' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8248, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 20:58:47.320' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8249, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;', CAST(N'2023-11-04 21:37:29.523' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8250, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;', CAST(N'2023-11-04 21:37:29.540' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8251, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;', CAST(N'2023-11-04 21:37:29.540' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8252, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 21:37:29.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8253, N'list_all_history_order', N'ip=113.186.3.221;action=list_all_history_order;uid=Admin;', CAST(N'2023-11-04 21:37:40.423' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8254, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:01:21.813' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8255, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:01:21.830' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8256, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:01:21.877' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8257, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 22:01:21.877' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8258, N'list_company', N'ip=113.186.3.221;action=list_company;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:01:47.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8259, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:01:56.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8260, N'list_history_order', N'ip=113.186.3.221;action=list_history_order;id_company=10;id_ca=2;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:02:01.960' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8261, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:18:32.820' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8262, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:18:32.820' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8263, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:18:32.820' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8264, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 22:18:32.837' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8265, N'list_history_order', N'ip=113.186.3.221;action=list_history_order;id_company=1;id_ca=2;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:18:39.800' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8266, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:35:58.003' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8267, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:35:58.003' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8268, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:35:58.003' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8269, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 22:35:58.020' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8270, N'list_user', N'ip=113.186.3.221;action=list_user;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:36:17.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8271, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:38:47.440' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8272, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:38:47.457' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8273, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-04 22:38:47.470' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8274, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-04 22:38:47.487' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8275, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-05 00:11:11.933' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8276, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-05 00:11:11.933' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8277, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-05 00:11:11.933' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8278, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 00:11:11.967' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8279, N'monitor', N'ip=113.185.47.248;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-05 10:35:48.810' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8280, N'check_logined', N'ip=113.185.47.248;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-05 10:35:48.827' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8281, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 10:35:48.847' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8282, N'list_setting', N'ip=113.185.47.248;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-05 10:35:48.877' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8283, N'monitor', N'ip=113.185.47.248;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 10:36:00.407' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8284, N'list_all_history_order', N'ip=113.185.47.248;action=list_all_history_order;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 10:36:04.100' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8285, N'monitor', N'ip=58.187.83.193;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:02:35.033' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8286, N'list_don_nguyen', N'ip=58.187.83.193;action=list_don_nguyen;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:02:55.820' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8287, N'list_suat_an', N'ip=58.187.83.193;action=list_suat_an;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:02:55.833' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8288, N'list_don_nguyen', N'ip=58.187.83.193;action=list_don_nguyen;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:02:57.907' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8289, N'list_combo', N'ip=58.187.83.193;action=list_combo;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:03:02.273' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8290, N'edit_combo', N'ip=58.187.83.193;action=edit_combo;ids=29;idn=2;sl=1;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:03:08.970' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8291, N'list_combo', N'ip=58.187.83.193;action=list_combo;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:03:09.030' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8292, N'monitor', N'ip=58.187.83.193;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:03:13.073' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8293, N'list_all_history_order', N'ip=58.187.83.193;action=list_all_history_order;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:03:17.683' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8294, N'list_all_history_order', N'ip=58.187.83.193;action=list_all_history_order;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:03:25.610' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8295, N'list_suat_an', N'ip=58.187.83.193;action=list_suat_an;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:03:36.590' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8296, N'list_don_nguyen', N'ip=58.187.83.193;action=list_don_nguyen;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:03:36.590' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8297, N'list_loai', N'ip=58.187.83.193;action=list_loai;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:03:38.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8298, N'list_loai', N'ip=58.187.83.193;action=list_loai;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:03:42.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8299, N'list_don_nguyen', N'ip=58.187.83.193;action=list_don_nguyen;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:03:51.507' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8300, N'list_suat_an', N'ip=58.187.83.193;action=list_suat_an;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:03:53.317' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8301, N'list_don_nguyen', N'ip=58.187.83.193;action=list_don_nguyen;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:03:57.513' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8302, N'dem_don_nguyen', N'ip=58.187.83.193;action=dem_don_nguyen;id=1;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:04:00.123' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8303, N'list_suat_an', N'ip=58.187.83.193;action=list_suat_an;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:04:02.033' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8304, N'list_combo', N'ip=58.187.83.193;action=list_combo;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:04:07.363' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8305, N'list_don_nguyen', N'ip=58.187.83.193;action=list_don_nguyen;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:04:14.497' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8306, N'list_suat_an', N'ip=58.187.83.193;action=list_suat_an;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:04:15.370' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8307, N'list_loai', N'ip=58.187.83.193;action=list_loai;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:04:25.157' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8308, N'monitor', N'ip=58.187.83.193;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:04:39.730' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8309, N'monitor', N'ip=58.187.83.193;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:24:01.270' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8310, N'check_logined', N'ip=58.187.83.193;action=check_logined;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:24:01.283' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8311, N'list_setting', N'ip=58.187.83.193;action=list_setting;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:24:01.283' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8312, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 11:24:01.283' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8313, N'list_user', N'ip=58.187.83.193;action=list_user;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:24:10.247' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8314, N'list_user', N'ip=58.187.83.193;action=list_user;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:24:17.000' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8315, N'list_user', N'ip=58.187.83.193;action=list_user;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 11:24:23.147' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8316, N'list_setting', N'ip=58.187.83.193;action=list_setting;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 15:29:49.610' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8317, N'monitor', N'ip=58.187.83.193;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 15:29:49.627' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8318, N'check_logined', N'ip=58.187.83.193;action=check_logined;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 15:29:49.640' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8319, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 15:29:49.670' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8320, N'monitor', N'ip=112.197.9.6;action=monitor;', CAST(N'2023-11-05 15:30:02.013' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8321, N'list_setting', N'ip=112.197.9.6;action=list_setting;', CAST(N'2023-11-05 15:30:02.060' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8322, N'save_order', N'ip=58.187.83.193;action=save_order;id_company=3;id_ca=1;order_id[]=21,19,14,13;order_sl[]=0,0,0,0;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 15:30:06.727' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8323, N'monitor', N'ip=58.187.83.193;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 15:30:07.063' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8324, N'monitor', N'ip=58.187.83.193;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-05 15:30:17.743' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8325, N'save_order', N'ip=58.187.83.193;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-04;', CAST(N'2023-11-05 15:30:20.383' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8326, N'monitor', N'ip=58.187.83.193;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-05 15:30:20.430' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8327, N'monitor', N'ip=172.58.208.53;action=monitor;', CAST(N'2023-11-05 15:30:26.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8328, N'list_setting', N'ip=172.58.208.200;action=list_setting;', CAST(N'2023-11-05 15:30:26.993' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8329, N'monitor', N'ip=58.187.83.193;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 15:30:33.690' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8330, N'check_logined', N'ip=58.187.83.193;action=check_logined;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 15:30:33.690' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8331, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 15:30:33.707' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8332, N'list_setting', N'ip=58.187.83.193;action=list_setting;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 15:30:33.707' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8333, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 15:35:03.280' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8334, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 15:35:15.950' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8335, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 15:35:16.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8336, N'list_setting', N'ip=58.187.83.193;action=list_setting;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 15:39:53.387' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8337, N'monitor', N'ip=58.187.83.193;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 15:39:53.387' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8338, N'check_logined', N'ip=58.187.83.193;action=check_logined;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 15:39:53.387' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8339, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 15:39:53.400' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8340, N'list_user', N'ip=58.187.83.193;action=list_user;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 15:39:54.823' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8341, N'save_order', N'ip=58.187.83.193;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 15:40:00.950' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8342, N'monitor', N'ip=58.187.83.193;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 15:40:01.030' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8343, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 15:42:08.983' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8344, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=2;id_ca=2;order_id[]=13,10,27;order_sl[]=0,47,5;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 15:57:51.797' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8345, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 15:57:57.740' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8346, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=3;id_ca=1;order_id[]=21,19,14,13;order_sl[]=0,0,0,0;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 15:58:00.443' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8347, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=1;id_ca=2;order_id[]=9;order_sl[]=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 15:58:06.120' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8348, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=1,2,3;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 15:58:21.153' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8349, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 15:58:21.353' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8350, N'list_setting', N'ip=125.235.62.61;action=list_setting;', CAST(N'2023-11-05 16:03:15.383' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8351, N'monitor', N'ip=125.235.62.61;action=monitor;', CAST(N'2023-11-05 16:03:15.400' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8352, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=1,0,3;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:03:19.957' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8353, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:03:20.113' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8354, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=0,0,0;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:08:21.913' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8355, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:08:22.037' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8356, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:13:53.047' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8357, N'list_suat_an', N'ip=127.0.0.1;action=list_suat_an;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:14:03.920' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8358, N'list_don_nguyen', N'ip=127.0.0.1;action=list_don_nguyen;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:14:04.060' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8359, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:14:05.093' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8360, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:14:06.700' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8361, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:14:06.700' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8362, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:14:06.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8363, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 16:14:06.950' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8364, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=NaN,NaN,NaN;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:14:17.033' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8365, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:14:17.153' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8366, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:16:01.827' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8367, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:16:01.827' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8368, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:16:01.827' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8369, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 16:16:01.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8370, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=11,22,33;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:16:13.827' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8371, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:16:14.047' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8372, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=11,NaN,NaN;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:16:21.860' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8373, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:16:22.017' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8374, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:16:44.607' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8375, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:16:44.607' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8376, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:16:44.607' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8377, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 16:16:44.683' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8378, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=11,NaN,NaN;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:16:51.973' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8379, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:16:52.130' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8380, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:18:05.937' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8381, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:18:05.937' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8382, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:18:05.937' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8383, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 16:18:05.993' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8384, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=11,0,0;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:18:11.090' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8385, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:18:11.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8386, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=0,22,0;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:18:22.740' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8387, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:18:22.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8388, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=1,22,0;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:27:04.663' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8389, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:27:04.840' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8390, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=1,22,3;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:27:07.930' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8391, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:27:08.050' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8392, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=1,0,3;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:27:16.150' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8393, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:27:16.243' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8394, N'save_order', N'ip=127.0.0.1;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=0,0,0;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:27:20.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8395, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:27:21.023' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8396, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:30:53.393' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8397, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:30:53.427' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8398, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 16:30:53.520' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8399, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 16:30:53.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8400, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:34:04.690' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8401, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:37:45.617' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8402, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:37:45.650' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8403, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 16:37:45.740' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8404, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:37:45.767' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8405, N'list_company', N'ip=127.0.0.1;action=list_company;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:37:51.683' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8406, N'list_company', N'ip=127.0.0.1;action=list_company;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:37:53.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8407, N'list_company', N'ip=127.0.0.1;action=list_company;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:37:56.957' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8408, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:39:05.987' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8409, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:39:05.987' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8410, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:39:06.127' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8411, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 16:39:06.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8412, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:39:09.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8413, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:39:14.167' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8414, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:39:16.987' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8415, N'list_company', N'ip=127.0.0.1;action=list_company;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:39:19.173' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8416, N'list_company', N'ip=127.0.0.1;action=list_company;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:39:23.317' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8417, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:42:53.730' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8418, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:42:53.760' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8419, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:42:53.853' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8420, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 16:42:53.853' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8421, N'get_company', N'ip=127.0.0.1;action=get_company;id=6;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:42:57.083' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8422, N'get_company', N'ip=127.0.0.1;action=get_company;id=6;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:43:12.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8423, N'get_company', N'ip=127.0.0.1;action=get_company;id=6;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:43:19.250' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8424, N'get_company', N'ip=127.0.0.1;action=get_company;id=6;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:45:24.010' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8425, N'get_company', N'ip=127.0.0.1;action=get_company;id=6;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:46:00.397' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8426, N'get_company', N'ip=127.0.0.1;action=get_company;id=6;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:46:20.457' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8427, N'get_company', N'ip=127.0.0.1;action=get_company;id=6;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:48:15.773' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8428, N'get_company', N'ip=127.0.0.1;action=get_company;id=6;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:48:17.540' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8429, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:48:21.750' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8430, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:48:21.750' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8431, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:48:21.877' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8432, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 16:48:21.940' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8433, N'get_company', N'ip=127.0.0.1;action=get_company;id=1;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:48:24.753' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8434, N'get_company', N'ip=127.0.0.1;action=get_company;id=1;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:48:29.503' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8435, N'get_company', N'ip=127.0.0.1;action=get_company;id=1;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:51:16.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8436, N'get_company', N'ip=127.0.0.1;action=get_company;id=1;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:51:29.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8437, N'get_company', N'ip=127.0.0.1;action=get_company;id=1;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:54:10.477' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8438, N'get_company', N'ip=127.0.0.1;action=get_company;id=1;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:54:15.110' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8439, N'get_company', N'ip=127.0.0.1;action=get_company;id=1;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:54:35.793' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8440, N'get_company', N'ip=127.0.0.1;action=get_company;id=1;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:54:39.460' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8441, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:54:59.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8442, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:55:27.557' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8443, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:55:29.947' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8444, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 16:57:02.710' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8445, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:01:18.073' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8446, N'list_suat_an', N'ip=127.0.0.1;action=list_suat_an;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:01:26.157' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8447, N'list_don_nguyen', N'ip=127.0.0.1;action=list_don_nguyen;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:01:26.263' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8448, N'list_loai', N'ip=127.0.0.1;action=list_loai;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:01:27.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8449, N'edit_loai', N'ip=127.0.0.1;action=edit_loai;id_old=4;id=4;name=BúnChiều;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:01:33.880' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8450, N'list_loai', N'ip=127.0.0.1;action=list_loai;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:01:33.990' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8451, N'edit_loai', N'ip=127.0.0.1;action=edit_loai;id_old=4;id=4;name=BúnChiêu;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:01:39.030' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8452, N'list_loai', N'ip=127.0.0.1;action=list_loai;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:01:39.143' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8453, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:01:41.703' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8454, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=2;id_ca=2;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:01:44.810' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8455, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:01:45.853' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8456, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:01:47.147' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8457, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:01:50.413' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8458, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 17:02:11.153' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8459, N'list_history_order', N'ip=127.0.0.1;action=list_history_order;id_company=1;id_ca=1;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 17:02:19.287' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8460, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 17:02:20.633' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8461, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:03:32.547' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8462, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:03:37.050' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8463, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:03:42.023' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8464, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:04:03.850' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8465, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:04:25.973' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8466, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:04:39.917' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8467, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:04:43.707' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8468, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:04:53.310' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8469, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:05:02.807' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8470, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:05:08.590' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8471, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:05:14.100' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8472, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:05:47.990' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8473, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:06:24.620' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8474, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:06:41.063' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8475, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:07:24.253' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8476, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:07:24.287' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8477, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:07:24.377' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8478, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 17:07:24.380' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8479, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:07:29.113' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8480, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-04;', CAST(N'2023-11-05 17:15:22.540' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8481, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 17:17:06.123' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8482, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 17:17:09.510' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8483, N'list_all_history_order', N'ip=127.0.0.1;action=list_all_history_order;uid=admin;today=2023-11-05;', CAST(N'2023-11-05 17:17:42.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8484, N'list_setting', N'ip=58.187.83.193;action=list_setting;uid=Admin;today=2023-11-06;', CAST(N'2023-11-05 17:20:05.067' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8485, N'monitor', N'ip=58.187.83.193;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-05 17:20:05.080' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8486, N'check_logined', N'ip=58.187.83.193;action=check_logined;uid=Admin;today=2023-11-06;', CAST(N'2023-11-05 17:20:05.080' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8487, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 17:20:05.113' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8488, N'list_history_order', N'ip=58.187.83.193;action=list_history_order;id_company=1;id_ca=1;uid=Admin;today=2023-11-06;', CAST(N'2023-11-05 17:20:08.127' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8489, N'monitor', N'ip=58.187.83.193;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 17:20:16.537' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8490, N'list_history_order', N'ip=58.187.83.193;action=list_history_order;id_company=1;id_ca=1;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 17:20:19.393' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8491, N'list_all_history_order', N'ip=58.187.83.193;action=list_all_history_order;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 17:20:25.700' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8492, N'list_setting', N'ip=58.187.83.193;action=list_setting;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 17:20:50.453' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8493, N'monitor', N'ip=58.187.83.193;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 17:20:50.453' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8494, N'check_logined', N'ip=58.187.83.193;action=check_logined;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 17:20:50.470' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8495, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 17:20:50.487' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8496, N'save_order', N'ip=58.187.83.193;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=5;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 17:51:25.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8497, N'monitor', N'ip=58.187.83.193;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 17:51:25.297' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8498, N'save_order', N'ip=58.187.83.193;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 17:53:31.467' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8499, N'monitor', N'ip=58.187.83.193;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 17:53:31.513' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8500, N'list_setting', N'ip=113.185.78.246;action=list_setting;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 19:47:12.647' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8501, N'check_logined', N'ip=113.185.78.246;action=check_logined;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 19:47:12.663' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8502, N'monitor', N'ip=113.185.78.246;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-05 19:47:12.663' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8503, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 19:47:12.680' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8504, N'monitor', N'ip=113.185.78.246;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-05 19:47:19.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8505, N'monitor', N'ip=113.185.78.246;action=monitor;uid=Admin;today=2023-11-04;', CAST(N'2023-11-05 19:48:26.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8506, N'list_setting', N'ip=113.185.78.246;action=list_setting;uid=Admin;today=2023-11-04;', CAST(N'2023-11-05 19:48:26.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8507, N'check_logined', N'ip=113.185.78.246;action=check_logined;uid=Admin;today=2023-11-04;', CAST(N'2023-11-05 19:48:26.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8508, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 19:48:26.563' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8509, N'monitor', N'ip=113.185.78.246;action=monitor;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 19:48:37.583' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8510, N'list_suat_an', N'ip=113.185.78.246;action=list_suat_an;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 19:48:53.430' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8511, N'list_don_nguyen', N'ip=113.185.78.246;action=list_don_nguyen;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 19:48:53.430' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8512, N'list_don_nguyen', N'ip=113.185.78.246;action=list_don_nguyen;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 19:48:57.033' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8513, N'list_combo', N'ip=113.185.78.246;action=list_combo;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 19:49:01.653' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8514, N'monitor', N'ip=113.185.78.246;action=monitor;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 19:49:23.937' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8515, N'list_setting', N'ip=113.185.79.73;action=list_setting;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 21:17:29.030' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8516, N'monitor', N'ip=113.185.79.73;action=monitor;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 21:17:29.063' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8517, N'check_logined', N'ip=113.185.79.73;action=check_logined;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 21:17:29.093' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8518, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 21:17:29.110' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8519, N'monitor', N'ip=113.185.79.73;action=monitor;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 21:32:39.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8520, N'check_logined', N'ip=113.185.79.73;action=check_logined;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 21:32:39.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8521, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 21:32:39.510' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8522, N'list_setting', N'ip=113.185.79.73;action=list_setting;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 21:32:39.510' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8523, N'list_suat_an', N'ip=113.185.79.73;action=list_suat_an;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 21:32:42.050' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8524, N'list_don_nguyen', N'ip=113.185.79.73;action=list_don_nguyen;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 21:32:42.050' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8525, N'list_loai', N'ip=113.185.79.73;action=list_loai;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 21:33:06.330' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8526, N'list_don_nguyen', N'ip=113.185.79.73;action=list_don_nguyen;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 21:33:14.543' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8527, N'dem_don_nguyen', N'ip=113.185.79.73;action=dem_don_nguyen;id=3;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 21:33:18.667' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8528, N'dem_don_nguyen', N'ip=113.185.79.73;action=dem_don_nguyen;id=2;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 21:33:23.490' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8529, N'monitor', N'ip=113.185.79.73;action=monitor;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 21:33:30.740' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8530, N'list_suat_an', N'ip=113.185.79.73;action=list_suat_an;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 21:33:35.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8531, N'list_don_nguyen', N'ip=113.185.79.73;action=list_don_nguyen;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 21:33:35.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8532, N'list_combo', N'ip=113.185.79.73;action=list_combo;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 21:33:36.433' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8533, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 22:12:35.907' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8534, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 22:12:35.907' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8535, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 22:12:35.947' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8536, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-05 22:12:35.963' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8537, N'list_user', N'ip=113.186.3.221;action=list_user;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 22:12:41.110' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8538, N'list_company', N'ip=113.186.3.221;action=list_company;uid=Admin;today=2023-11-03;', CAST(N'2023-11-05 22:12:46.427' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8539, N'check_logined', N'ip=171.240.70.135;action=check_logined;uid=Trong;', CAST(N'2023-11-06 07:28:40.537' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8540, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 07:28:40.537' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8541, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 07:28:40.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8542, N'list_setting', N'ip=171.240.70.135;action=list_setting;uid=Trong;', CAST(N'2023-11-06 07:28:40.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8543, N'list_setting', N'ip=171.240.70.135;action=list_setting;', CAST(N'2023-11-06 07:54:53.913' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8544, N'monitor', N'ip=171.240.70.135;action=monitor;', CAST(N'2023-11-06 07:54:53.930' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8545, N'do_login', N'ip=171.240.70.135;action=do_login;uid=Trong;pwd=123456;', CAST(N'2023-11-06 07:55:07.420' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8546, N'LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 07:55:07.453' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8547, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=14;id_ca=2;order_id[]=9;order_sl[]=9;uid=Trong;', CAST(N'2023-11-06 07:55:15.423' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8548, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 07:55:15.490' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8549, N'list_setting', N'ip=113.185.74.244;action=list_setting;uid=Admin;today=2023-11-03;', CAST(N'2023-11-06 07:56:13.730' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8550, N'monitor', N'ip=113.185.74.244;action=monitor;uid=Admin;today=2023-11-03;', CAST(N'2023-11-06 07:56:13.747' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8551, N'check_logined', N'ip=113.185.74.244;action=check_logined;uid=Admin;today=2023-11-03;', CAST(N'2023-11-06 07:56:13.747' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8552, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 07:56:13.747' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8553, N'monitor', N'ip=113.185.74.244;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 07:56:19.573' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8554, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:13:23.447' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8555, N'list_setting', N'ip=171.240.70.135;action=list_setting;uid=Trong;', CAST(N'2023-11-06 08:13:23.447' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8556, N'check_logined', N'ip=171.240.70.135;action=check_logined;uid=Trong;', CAST(N'2023-11-06 08:13:23.447' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8557, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 08:13:23.460' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8558, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=29;id_ca=2;order_id[]=9;order_sl[]=34;uid=Trong;', CAST(N'2023-11-06 08:13:31.393' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8559, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:13:31.457' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8560, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=29;id_ca=3;order_id[]=9;order_sl[]=13;uid=Trong;', CAST(N'2023-11-06 08:13:43.723' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8561, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:13:43.783' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8562, N'monitor', N'ip=113.185.74.244;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:20:22.827' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8563, N'check_logined', N'ip=113.185.74.244;action=check_logined;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:20:22.843' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8564, N'list_setting', N'ip=113.185.74.244;action=list_setting;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:20:22.843' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8565, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 08:20:22.843' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8566, N'get_company', N'ip=171.240.70.135;action=get_company;id=1;uid=Trong;', CAST(N'2023-11-06 08:20:47.163' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8567, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=1;id_ca=2;order_id[]=9;order_sl[]=166;uid=Trong;', CAST(N'2023-11-06 08:20:50.820' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8568, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:20:50.867' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8569, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=2;id_ca=2;order_id[]=13,10,27;order_sl[]=0,49,10;uid=Trong;', CAST(N'2023-11-06 08:21:21.250' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8570, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:21:21.310' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8571, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=9;id_ca=2;order_id[]=17,12,13;order_sl[]=6,8,44;uid=Trong;', CAST(N'2023-11-06 08:22:01.253' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8572, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:22:01.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8573, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=9;id_ca=2;order_id[]=17,12,13;order_sl[]=6,8,46;uid=Trong;', CAST(N'2023-11-06 08:23:23.157' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8574, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:23:23.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8575, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=13;id_ca=2;order_id[]=31,13;order_sl[]=21,53;uid=Trong;', CAST(N'2023-11-06 08:26:25.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8576, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:26:25.947' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8577, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=30;id_ca=2;order_id[]=9;order_sl[]=1;uid=Trong;', CAST(N'2023-11-06 08:26:32.553' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8578, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:26:32.600' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8579, N'list_setting', N'ip=171.240.70.135;action=list_setting;uid=Trong;', CAST(N'2023-11-06 08:33:55.417' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8580, N'check_logined', N'ip=171.240.70.135;action=check_logined;uid=Trong;', CAST(N'2023-11-06 08:33:55.417' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8581, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:33:55.417' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8582, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 08:33:55.417' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8583, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=28;id_ca=2;order_id[]=32,22,24,9;order_sl[]=4,11,5,7;uid=Trong;', CAST(N'2023-11-06 08:35:00.780' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8584, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:35:00.827' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8585, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=13;id_ca=2;order_id[]=31,13;order_sl[]=21,52;uid=Trong;', CAST(N'2023-11-06 08:38:45.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8586, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:38:46.027' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8587, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=10,36;uid=Trong;', CAST(N'2023-11-06 08:43:06.597' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8588, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=10,36;uid=Trong;', CAST(N'2023-11-06 08:43:06.613' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8589, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=10,36;uid=Trong;', CAST(N'2023-11-06 08:43:06.613' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8590, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=18;id_ca=2;order_id[]=13;order_sl[]=1;uid=Trong;', CAST(N'2023-11-06 08:43:06.613' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8591, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:43:06.613' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8592, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=0,36;uid=Trong;', CAST(N'2023-11-06 08:43:06.643' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8593, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=0,36;uid=Trong;', CAST(N'2023-11-06 08:43:06.660' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8594, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=0,36;uid=Trong;', CAST(N'2023-11-06 08:43:06.723' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8595, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=0,36;uid=Trong;', CAST(N'2023-11-06 08:43:06.723' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8596, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:43:06.737' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8597, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:43:06.737' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8598, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=10,36;uid=Trong;', CAST(N'2023-11-06 08:43:06.817' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8599, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=0,36;uid=Trong;', CAST(N'2023-11-06 08:43:06.863' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8600, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=0,36;uid=Trong;', CAST(N'2023-11-06 08:43:06.880' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8601, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=0,36;uid=Trong;', CAST(N'2023-11-06 08:43:06.910' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8602, N'get_company', N'ip=171.240.70.135;action=get_company;id=8;uid=Trong;', CAST(N'2023-11-06 08:43:06.927' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8603, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=18;id_ca=2;order_id[]=13;order_sl[]=1;uid=Trong;', CAST(N'2023-11-06 08:43:06.940' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8604, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=18;id_ca=2;order_id[]=13;order_sl[]=1;uid=Trong;', CAST(N'2023-11-06 08:43:06.983' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8605, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=10,36;uid=Trong;', CAST(N'2023-11-06 08:43:06.983' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8606, N'list_history_order', N'ip=171.240.70.135;action=list_history_order;id_company=8;id_ca=2;uid=Trong;', CAST(N'2023-11-06 08:43:07.000' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8607, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=0,36;uid=Trong;', CAST(N'2023-11-06 08:43:07.060' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8608, N'list_setting', N'ip=171.240.70.135;action=list_setting;uid=Trong;', CAST(N'2023-11-06 08:43:07.110' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8609, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:43:07.123' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8610, N'check_logined', N'ip=171.240.70.135;action=check_logined;uid=Trong;', CAST(N'2023-11-06 08:43:07.123' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8611, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 08:43:07.153' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8612, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-05;', CAST(N'2023-11-06 08:45:35.390' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8613, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-05;', CAST(N'2023-11-06 08:45:35.390' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8614, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-05;', CAST(N'2023-11-06 08:45:35.390' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8615, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 08:45:35.403' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8616, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:45:39.583' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8617, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=12;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:45:57.103' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8618, N'mp3', N'Đỗ Duy Cốp vừa thêm vào ca Sáng cho công ty Sáng : 12 suất ăn VN30, ', CAST(N'2023-11-06 08:45:57.180' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8619, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:45:57.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8620, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=10;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:48:07.483' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8621, N'mp3', N'Đỗ Duy Cốp vừa thêm vào ca Sáng cho công ty ET SoLar 30 : 10 suất ăn VN30, ', CAST(N'2023-11-06 08:48:07.603' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8622, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:48:07.667' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8623, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:50:04.833' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8624, N'mp3', N'Đỗ Duy Cốp vừa thêm vào ca Sáng cho công ty ET SoLar 30 : ', CAST(N'2023-11-06 08:50:04.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8625, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:50:04.943' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8626, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=1;order_id[]=13,10,27;order_sl[]=1,2,3;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:53:25.720' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8627, N'mp3', N'Đỗ Duy Cốp vừa thêm vào ca Sáng cho công ty XYC 28 : 1 suất ăn VN25, 2 suất ăn VN28, 3 suất ăn VN40, ', CAST(N'2023-11-06 08:53:25.797' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8628, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:53:25.860' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8629, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=1;order_id[]=13,10,27;order_sl[]=1,2,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:53:40.133' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8630, N'mp3', N'Đỗ Duy Cốp vừa thêm vào ca Sáng cho công ty XYC 28 : 1 suất ăn VN25, 2 suất ăn VN28, ', CAST(N'2023-11-06 08:53:40.133' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8631, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:53:40.180' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8632, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=1;order_id[]=13,10,27;order_sl[]=1,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:53:47.963' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8633, N'mp3', N'Đỗ Duy Cốp vừa thêm vào ca Sáng cho công ty XYC 28 : 1 suất ăn VN25, ', CAST(N'2023-11-06 08:53:47.963' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8634, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:53:48.010' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8635, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=1;order_id[]=13,10,27;order_sl[]=0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:53:53.853' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8636, N'mp3', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Sáng của công ty XYC 28', CAST(N'2023-11-06 08:53:53.853' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8637, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 08:53:53.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8638, N'check_logined', N'ip=171.240.70.135;action=check_logined;uid=Trong;', CAST(N'2023-11-06 08:56:14.143' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8639, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 08:56:14.143' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8640, N'list_setting', N'ip=171.240.70.135;action=list_setting;uid=Trong;', CAST(N'2023-11-06 08:56:14.160' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8641, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:56:14.160' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8642, N'check_logined', N'ip=171.240.70.135;action=check_logined;uid=Trong;', CAST(N'2023-11-06 08:56:14.313' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8643, N'list_setting', N'ip=171.240.70.135;action=list_setting;uid=Trong;', CAST(N'2023-11-06 08:56:14.313' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8644, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 08:56:14.330' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8645, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:56:14.330' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8646, N'list_history_order', N'ip=171.240.70.135;action=list_history_order;id_company=4;id_ca=2;uid=Trong;', CAST(N'2023-11-06 08:57:02.990' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8647, N'get_company', N'ip=171.240.70.135;action=get_company;id=4;uid=Trong;', CAST(N'2023-11-06 08:57:06.140' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8648, N'edit_company', N'ip=171.240.70.135;action=edit_company;id=4;name=NLX 25,40;address=Đại Đồng;gps=null, null;phone=null;zalo=undefined;default_order[]=39,41,40,13;data_order=[{"id":39,"thu":[]},{"id":41,"thu":[3,5,7,8]},{"id":40,"thu":[2,4,6,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-06 08:59:41.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8649, N'list_company', N'ip=171.240.70.135;action=list_company;uid=Trong;', CAST(N'2023-11-06 08:59:41.603' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8650, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 08:59:41.620' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8651, N'list_don_nguyen', N'ip=171.240.70.135;action=list_don_nguyen;uid=Trong;', CAST(N'2023-11-06 08:59:48.273' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8652, N'list_suat_an', N'ip=171.240.70.135;action=list_suat_an;uid=Trong;', CAST(N'2023-11-06 08:59:48.273' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8653, N'list_combo', N'ip=171.240.70.135;action=list_combo;uid=Trong;', CAST(N'2023-11-06 08:59:51.447' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8654, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=1;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:00:03.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8655, N'mp3', N'Đỗ Duy Cốp vừa thêm vào ca Sáng cho công ty ET SoLar 30 : 1 suất ăn VN30, ', CAST(N'2023-11-06 09:00:03.993' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8656, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:00:04.040' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8657, N'list_don_nguyen', N'ip=171.240.70.135;action=list_don_nguyen;uid=Trong;', CAST(N'2023-11-06 09:00:17.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8658, N'add_don_nguyen', N'ip=171.240.70.135;action=add_don_nguyen;id=15;name=Sữa chua Vinamilk;des=Sữa chua;uid=Trong;', CAST(N'2023-11-06 09:00:49.650' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8659, N'list_don_nguyen', N'ip=171.240.70.135;action=list_don_nguyen;uid=Trong;', CAST(N'2023-11-06 09:00:49.700' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8660, N'list_setting', N'ip=171.240.70.135;action=list_setting;uid=Trong;', CAST(N'2023-11-06 09:00:55.420' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8661, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:00:55.420' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8662, N'check_logined', N'ip=171.240.70.135;action=check_logined;uid=Trong;', CAST(N'2023-11-06 09:00:55.437' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8663, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 09:00:55.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8664, N'list_suat_an', N'ip=171.240.70.135;action=list_suat_an;uid=Trong;', CAST(N'2023-11-06 09:00:57.330' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8665, N'list_don_nguyen', N'ip=171.240.70.135;action=list_don_nguyen;uid=Trong;', CAST(N'2023-11-06 09:00:57.330' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8666, N'list_combo', N'ip=171.240.70.135;action=list_combo;uid=Trong;', CAST(N'2023-11-06 09:00:58.613' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8667, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:01:02.907' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8668, N'mp3', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Sáng của công ty ET SoLar 30', CAST(N'2023-11-06 09:01:02.923' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8669, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:01:02.967' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8670, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=1;order_id[]=13,10,27;order_sl[]=11,22,33;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:01:11.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8671, N'mp3', N'Đỗ Duy Cốp vừa thêm vào ca Sáng cho công ty XYC 28 : 11 suất ăn VN25, 22 suất ăn VN28, 33 suất ăn VN40, ', CAST(N'2023-11-06 09:01:11.997' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8672, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:01:12.027' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8673, N'add_combo', N'ip=171.240.70.135;action=add_combo;ids=40;idn=15;sl=1;uid=Trong;', CAST(N'2023-11-06 09:01:28.477' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8674, N'list_combo', N'ip=171.240.70.135;action=list_combo;uid=Trong;', CAST(N'2023-11-06 09:01:28.527' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8675, N'edit_combo', N'ip=171.240.70.135;action=edit_combo;ids=40;idn=14;sl=1;uid=Trong;', CAST(N'2023-11-06 09:01:40.403' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8676, N'list_combo', N'ip=171.240.70.135;action=list_combo;uid=Trong;', CAST(N'2023-11-06 09:01:40.470' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8677, N'del_combo', N'ip=171.240.70.135;action=del_combo;uid=Trong;', CAST(N'2023-11-06 09:02:05.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8678, N'list_combo', N'ip=171.240.70.135;action=list_combo;uid=Trong;', CAST(N'2023-11-06 09:02:05.260' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8679, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:02:07.903' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8680, N'list_setting', N'ip=171.240.70.135;action=list_setting;uid=Trong;', CAST(N'2023-11-06 09:02:09.240' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8681, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:02:09.240' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8682, N'check_logined', N'ip=171.240.70.135;action=check_logined;uid=Trong;', CAST(N'2023-11-06 09:02:09.240' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8683, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 09:02:09.240' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8684, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=4;id_ca=2;order_id[]=40,13;order_sl[]=10,160;uid=Trong;', CAST(N'2023-11-06 09:02:45.697' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8685, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty NLX 25,40 : 10 suất ăn TQ NLX Vinamik 40, 160 suất ăn VN25, ', CAST(N'2023-11-06 09:02:45.697' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8686, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:02:45.770' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8687, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=12;id_ca=2;order_id[]=30,20,34,13;order_sl[]=3,1,3,85;uid=Trong;', CAST(N'2023-11-06 09:03:41.760' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8688, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty GEP 25,(50,40) : 3 suất ăn BsMocChauGEP25, 1 suất ăn TQ K Cay GEP 40, 3 suất ăn TQGEP50, 85 suất ăn VN25, ', CAST(N'2023-11-06 09:03:41.760' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8689, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:03:41.807' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8690, N'get_company', N'ip=171.240.70.135;action=get_company;id=12;uid=Trong;', CAST(N'2023-11-06 09:04:13.123' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8691, N'get_company', N'ip=171.240.70.135;action=get_company;id=12;uid=Trong;', CAST(N'2023-11-06 09:04:39.403' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8692, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=12;id_ca=2;order_id[]=30,20,34,13;order_sl[]=3,1,3,85;uid=Trong;', CAST(N'2023-11-06 09:04:50.807' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8693, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty GEP 25,(50,40) : 3 suất ăn BsMocChauGEP25, 1 suất ăn TQ K Cay GEP 40, 3 suất ăn TQGEP50, 85 suất ăn VN25, ', CAST(N'2023-11-06 09:04:50.807' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8694, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:04:50.853' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8695, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=15;id_ca=2;order_id[]=13;order_sl[]=62;uid=Trong;', CAST(N'2023-11-06 09:05:58.373' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8696, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty ETS 25 : 62 suất ăn VN25, ', CAST(N'2023-11-06 09:05:58.373' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8697, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:05:58.420' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8698, N'get_company', N'ip=171.240.70.135;action=get_company;id=15;uid=Trong;', CAST(N'2023-11-06 09:06:19.513' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8699, N'list_suat_an', N'ip=171.240.70.135;action=list_suat_an;uid=Trong;', CAST(N'2023-11-06 09:06:43.657' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8700, N'list_don_nguyen', N'ip=171.240.70.135;action=list_don_nguyen;uid=Trong;', CAST(N'2023-11-06 09:06:43.673' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8701, N'add_suat_an', N'ip=171.240.70.135;action=add_suat_an;name=Sữa ETS25;sign=SữaETS25;price=25000;loai=3;uid=Trong;', CAST(N'2023-11-06 09:07:24.253' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8702, N'list_suat_an', N'ip=171.240.70.135;action=list_suat_an;uid=Trong;', CAST(N'2023-11-06 09:07:24.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8703, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:07:26.680' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8704, N'list_suat_an', N'ip=171.240.70.135;action=list_suat_an;uid=Trong;', CAST(N'2023-11-06 09:07:29.103' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8705, N'list_don_nguyen', N'ip=171.240.70.135;action=list_don_nguyen;uid=Trong;', CAST(N'2023-11-06 09:07:29.103' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8706, N'list_combo', N'ip=171.240.70.135;action=list_combo;uid=Trong;', CAST(N'2023-11-06 09:07:30.727' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8707, N'add_combo', N'ip=171.240.70.135;action=add_combo;ids=45;idn=14;sl=2;uid=Trong;', CAST(N'2023-11-06 09:08:38.947' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8708, N'list_combo', N'ip=171.240.70.135;action=list_combo;uid=Trong;', CAST(N'2023-11-06 09:08:39.110' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8709, N'add_combo', N'ip=171.240.70.135;action=add_combo;ids=45;idn=5;sl=1;uid=Trong;', CAST(N'2023-11-06 09:08:51.290' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8710, N'list_combo', N'ip=171.240.70.135;action=list_combo;uid=Trong;', CAST(N'2023-11-06 09:08:51.337' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8711, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:08:55.150' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8712, N'list_setting', N'ip=171.240.70.135;action=list_setting;uid=Trong;', CAST(N'2023-11-06 09:08:57.113' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8713, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:08:57.113' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8714, N'check_logined', N'ip=171.240.70.135;action=check_logined;uid=Trong;', CAST(N'2023-11-06 09:08:57.130' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8715, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 09:08:57.130' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8716, N'get_company', N'ip=171.240.70.135;action=get_company;id=15;uid=Trong;', CAST(N'2023-11-06 09:09:25.327' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8717, N'edit_company', N'ip=171.240.70.135;action=edit_company;id=15;name=ETS 25;address=MĨ Á;gps=null, null;phone=null;zalo=undefined;default_order[]=45,13;data_order=[{"id":45,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-06 09:09:35.960' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8718, N'list_company', N'ip=171.240.70.135;action=list_company;uid=Trong;', CAST(N'2023-11-06 09:09:36.023' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8719, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:09:36.023' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8720, N'list_setting', N'ip=171.240.70.135;action=list_setting;uid=Trong;', CAST(N'2023-11-06 09:09:39.040' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8721, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:09:39.040' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8722, N'check_logined', N'ip=171.240.70.135;action=check_logined;uid=Trong;', CAST(N'2023-11-06 09:09:39.057' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8723, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 09:09:39.070' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8724, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:37.610' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8725, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:37.703' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8726, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:40.533' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8727, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:40.547' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8728, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:41.640' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8729, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:41.640' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8730, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:42.470' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8731, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:42.470' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8732, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:42.827' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8733, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:42.827' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8734, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:43.017' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8735, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:43.030' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8736, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:43.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8737, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:43.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8738, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:43.377' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8739, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:43.390' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8740, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:43.547' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8741, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:43.547' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8742, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:43.690' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8743, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:43.703' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8744, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:45.120' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8745, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:45.120' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8746, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:45.303' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8747, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:45.320' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8748, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:45.507' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8749, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:45.507' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8750, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:45.687' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8751, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:45.687' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8752, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:45.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8753, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:45.920' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8754, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:46.043' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8755, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:46.043' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8756, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:46.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8757, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:46.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8758, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:46.380' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8759, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:46.380' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8760, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:46.537' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8761, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:46.553' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8762, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:46.710' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8763, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:46.723' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8764, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:46.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8765, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:46.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8766, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:47.120' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8767, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:47.120' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8768, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:47.357' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8769, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:47.370' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8770, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:47.817' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8771, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:47.830' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8772, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:49.823' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8773, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:49.823' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8774, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:49.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8775, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:49.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8776, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:50.183' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8777, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:50.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8778, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:50.357' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8779, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:50.357' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8780, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:50.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8781, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:50.543' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8782, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:50.687' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8783, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:50.700' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8784, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:50.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8785, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:50.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8786, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:51.043' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8787, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:51.060' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8788, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:51.260' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8789, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:51.277' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8790, N'list_history_order', N'ip=171.240.70.135;action=list_history_order;id_company=3;id_ca=2;uid=Trong;', CAST(N'2023-11-06 09:10:52.277' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8791, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:10:54.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8792, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn VN2', CAST(N'2023-11-06 09:10:54.243' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8793, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:11:28.710' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8794, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:11:28.710' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8795, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 09:11:28.710' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8796, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:11:28.710' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8797, N'list_don_nguyen', N'ip=113.186.3.221;action=list_don_nguyen;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:11:29.863' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8798, N'list_suat_an', N'ip=113.186.3.221;action=list_suat_an;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:11:29.863' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8799, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:11:39.590' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8800, N'list_don_nguyen', N'ip=113.186.3.221;action=list_don_nguyen;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:11:42.137' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8801, N'list_suat_an', N'ip=113.186.3.221;action=list_suat_an;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:11:42.137' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8802, N'enable_suat_an', N'ip=113.186.3.221;action=enable_suat_an;id=13;name=Việt Nam 25k;sign=VN25;price=25000;loai=2;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:12:04.057' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8803, N'list_suat_an', N'ip=113.186.3.221;action=list_suat_an;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:12:04.103' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8804, N'list_setting', N'ip=171.240.70.135;action=list_setting;uid=hoa;', CAST(N'2023-11-06 09:12:08.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8805, N'monitor', N'ip=171.240.70.135;action=monitor;uid=hoa;', CAST(N'2023-11-06 09:12:08.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8806, N'check_logined', N'ip=171.240.70.135;action=check_logined;uid=hoa;', CAST(N'2023-11-06 09:12:08.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8807, N'CHECK LOGIN OK', N'hoa=Sếp Hòa => CSKH', CAST(N'2023-11-06 09:12:08.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8808, N'enable_suat_an', N'ip=113.186.3.221;action=enable_suat_an;id=10;name=Việt Nam 28k;sign=VN28;price=28000;loai=2;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:12:19.640' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8809, N'list_suat_an', N'ip=113.186.3.221;action=list_suat_an;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:12:19.687' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8810, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:12:24.370' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8811, N'list_setting', N'ip=171.240.70.135;action=list_setting;uid=Trong;', CAST(N'2023-11-06 09:12:24.370' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8812, N'check_logined', N'ip=171.240.70.135;action=check_logined;uid=Trong;', CAST(N'2023-11-06 09:12:24.370' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8813, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 09:12:24.387' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8814, N'monitor', N'ip=171.240.70.135;action=monitor;uid=hoa;', CAST(N'2023-11-06 09:12:27.150' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8815, N'list_setting', N'ip=171.240.70.135;action=list_setting;uid=hoa;', CAST(N'2023-11-06 09:12:27.150' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8816, N'check_logined', N'ip=171.240.70.135;action=check_logined;uid=hoa;', CAST(N'2023-11-06 09:12:27.167' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8817, N'CHECK LOGIN OK', N'hoa=Sếp Hòa => CSKH', CAST(N'2023-11-06 09:12:27.167' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8818, N'enable_suat_an', N'ip=113.186.3.221;action=enable_suat_an;id=9;name=Việt Nam 30k;sign=VN30;price=30000;loai=2;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:12:31.440' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8819, N'list_suat_an', N'ip=113.186.3.221;action=list_suat_an;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:12:31.490' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8820, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:12:41.443' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8821, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn Việt Nam 25', CAST(N'2023-11-06 09:12:41.443' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8822, N'enable_suat_an', N'ip=113.186.3.221;action=enable_suat_an;id=27;name=Việt Nam 40k;sign=VN40;price=40000;loai=2;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:12:41.837' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8823, N'list_suat_an', N'ip=113.186.3.221;action=list_suat_an;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:12:41.883' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8824, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:12:42.440' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8825, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn Việt Nam 25', CAST(N'2023-11-06 09:12:42.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8826, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:12:42.837' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8827, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn Việt Nam 25', CAST(N'2023-11-06 09:12:42.943' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8828, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:12:43.033' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8829, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn Việt Nam 25', CAST(N'2023-11-06 09:12:43.173' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8830, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:12:43.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8831, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn Việt Nam 25', CAST(N'2023-11-06 09:12:43.267' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8832, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:12:43.347' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8833, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn Việt Nam 25', CAST(N'2023-11-06 09:12:43.410' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8834, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=2;order_id[]=21,19,14,13;order_sl[]=6,10,0,90;uid=Trong;', CAST(N'2023-11-06 09:12:43.537' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8835, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty BET 25,50 : 6 suất ăn MỳBET25, 10 suất ăn TQ BET 50, 90 suất ăn Việt Nam 25', CAST(N'2023-11-06 09:12:43.537' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8836, N'list_setting', N'ip=171.240.70.135;action=list_setting;uid=Trong;', CAST(N'2023-11-06 09:12:55.507' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8837, N'monitor', N'ip=171.240.70.135;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:12:55.523' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8838, N'check_logined', N'ip=171.240.70.135;action=check_logined;uid=Trong;', CAST(N'2023-11-06 09:12:55.523' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8839, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 09:12:55.523' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8840, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:13:10.783' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8841, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:13:10.783' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8842, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:13:10.783' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8843, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 09:13:10.800' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8844, N'list_don_nguyen', N'ip=113.186.3.221;action=list_don_nguyen;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:13:16.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8845, N'list_suat_an', N'ip=113.186.3.221;action=list_suat_an;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:13:16.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8846, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:13:34.760' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8847, N'list_suat_an', N'ip=113.186.3.221;action=list_suat_an;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:13:49.400' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8848, N'list_don_nguyen', N'ip=113.186.3.221;action=list_don_nguyen;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:13:49.400' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8849, N'list_don_nguyen', N'ip=113.186.3.221;action=list_don_nguyen;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:13:50.317' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8850, N'list_suat_an', N'ip=113.186.3.221;action=list_suat_an;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:13:51.393' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8851, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:14:21.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8852, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=1;order_id[]=13,10,27;order_sl[]=0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:14:35.267' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8853, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=1;order_id[]=13,10,27;order_sl[]=0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:14:50.683' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8854, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=1;order_id[]=13,10,27;order_sl[]=0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:15:19.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8855, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:15:19.350' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8856, N'monitor', N'ip=171.240.70.135;action=monitor;', CAST(N'2023-11-06 09:23:37.853' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8857, N'list_setting', N'ip=171.240.70.135;action=list_setting;', CAST(N'2023-11-06 09:23:37.853' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8858, N'list_setting', N'ip=171.240.70.135;action=list_setting;', CAST(N'2023-11-06 09:23:41.813' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8859, N'monitor', N'ip=171.240.70.135;action=monitor;', CAST(N'2023-11-06 09:23:41.813' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8860, N'do_login', N'ip=171.240.70.135;action=do_login;uid=hoa;pwd=123456;', CAST(N'2023-11-06 09:23:56.930' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8861, N'LOGIN OK', N'hoa=Sếp Hòa => CSKH', CAST(N'2023-11-06 09:23:56.943' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8862, N'list_setting', N'ip=171.240.70.135;action=list_setting;uid=hoa;', CAST(N'2023-11-06 09:24:13.487' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8863, N'monitor', N'ip=171.240.70.135;action=monitor;uid=hoa;', CAST(N'2023-11-06 09:24:13.487' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8864, N'check_logined', N'ip=171.240.70.135;action=check_logined;uid=hoa;', CAST(N'2023-11-06 09:24:13.520' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8865, N'CHECK LOGIN OK', N'hoa=Sếp Hòa => CSKH', CAST(N'2023-11-06 09:24:13.533' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8866, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=10;id_ca=2;order_id[]=25,28,18,13;order_sl[]=0,0,16,0;uid=hoa;', CAST(N'2023-11-06 09:24:43.017' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8867, N'mp3', N'Sếp Hòa vừa thêm vào ca Trưa cho công ty NVC 25,35 : 16 suất ăn TQ35', CAST(N'2023-11-06 09:24:43.110' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8868, N'monitor', N'ip=171.240.70.135;action=monitor;uid=hoa;', CAST(N'2023-11-06 09:24:43.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8869, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=10;id_ca=2;order_id[]=25,28,18,13;order_sl[]=0,0,16,302;uid=hoa;', CAST(N'2023-11-06 09:25:34.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8870, N'mp3', N'Sếp Hòa vừa thêm vào ca Trưa cho công ty NVC 25,35 : 16 suất ăn TQ35, 302 suất ăn Việt Nam 25k', CAST(N'2023-11-06 09:25:34.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8871, N'monitor', N'ip=171.240.70.135;action=monitor;uid=hoa;', CAST(N'2023-11-06 09:25:34.260' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8872, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=5;id_ca=2;order_id[]=25,15,13;order_sl[]=0,105,370;uid=hoa;', CAST(N'2023-11-06 09:25:54.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8873, N'mp3', N'Sếp Hòa vừa thêm vào ca Trưa cho công ty LING Yi 25,70 : 105 suất ăn TQ70, 370 suất ăn Việt Nam 25k', CAST(N'2023-11-06 09:25:54.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8874, N'monitor', N'ip=171.240.70.135;action=monitor;uid=hoa;', CAST(N'2023-11-06 09:25:54.280' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8875, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=7;id_ca=2;order_id[]=13;order_sl[]=36;uid=hoa;', CAST(N'2023-11-06 09:26:14.487' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8876, N'mp3', N'Sếp Hòa vừa thêm vào ca Trưa cho công ty TOMO 25 : 36 suất ăn Việt Nam 25k', CAST(N'2023-11-06 09:26:14.487' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8877, N'monitor', N'ip=171.240.70.135;action=monitor;uid=hoa;', CAST(N'2023-11-06 09:26:14.533' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8878, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=6;id_ca=2;order_id[]=43,13;order_sl[]=0,87;uid=hoa;', CAST(N'2023-11-06 09:26:25.030' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8879, N'mp3', N'Sếp Hòa vừa thêm vào ca Trưa cho công ty VESOGO 25 : 87 suất ăn Việt Nam 25k', CAST(N'2023-11-06 09:26:25.030' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8880, N'monitor', N'ip=171.240.70.135;action=monitor;uid=hoa;', CAST(N'2023-11-06 09:26:25.077' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8881, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:27:22.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8882, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:27:22.557' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8883, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:27:22.683' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8884, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 09:27:22.867' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8885, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=11;id_ca=2;order_id[]=36,14,12,13;order_sl[]=0,17,7,86;uid=hoa;', CAST(N'2023-11-06 09:27:23.430' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8886, N'mp3', N'Sếp Hòa vừa thêm vào ca Trưa cho công ty GW 25,(25,40) : 17 suất ăn TQ25, 7 suất ăn TQ40, 86 suất ăn Việt Nam 25k', CAST(N'2023-11-06 09:27:23.447' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8887, N'monitor', N'ip=171.240.70.135;action=monitor;uid=hoa;', CAST(N'2023-11-06 09:27:23.487' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8925, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:05.160' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8926, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:05.160' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8927, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:05.177' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8928, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 09:28:05.253' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8929, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:06.180' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8930, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:07.167' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8931, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:08.177' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8932, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:09.180' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8933, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:10.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8934, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:11.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8935, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:12.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8936, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=16;id_ca=2;order_id[]=26,23,9;order_sl[]=3,0,12;uid=hoa;', CAST(N'2023-11-06 09:28:12.790' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8937, N'mp3', N'Sếp Hòa vừa thêm vào ca Trưa cho công ty SCR 30 : 3 suất ăn MocChauSCR30, 12 suất ăn Việt Nam 30k', CAST(N'2023-11-06 09:28:12.803' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8938, N'monitor', N'ip=171.240.70.135;action=monitor;uid=hoa;', CAST(N'2023-11-06 09:28:12.850' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8939, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:13.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8940, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:14.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8941, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:15.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8942, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:16.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8943, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:17.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8944, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:18.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8945, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:19.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8946, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:20.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8947, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:21.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8948, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:22.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8949, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:23.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8950, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:24.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8951, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:25.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8952, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=17;id_ca=2;order_id[]=9;order_sl[]=9;uid=hoa;', CAST(N'2023-11-06 09:28:25.317' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8953, N'mp3', N'Sếp Hòa vừa thêm vào ca Trưa cho công ty TRC 30 : 9 suất ăn Việt Nam 30k', CAST(N'2023-11-06 09:28:25.317' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8954, N'monitor', N'ip=171.240.70.135;action=monitor;uid=hoa;', CAST(N'2023-11-06 09:28:25.363' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8955, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:26.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8956, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:27.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8957, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:28.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8958, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:29.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8959, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:30.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8960, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:31.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8961, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:32.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8962, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:33.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8963, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=19;id_ca=2;order_id[]=25,9;order_sl[]=0,249;uid=hoa;', CAST(N'2023-11-06 09:28:34.077' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8964, N'mp3', N'Sếp Hòa vừa thêm vào ca Trưa cho công ty ECT 30 : 249 suất ăn Việt Nam 30k', CAST(N'2023-11-06 09:28:34.077' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8965, N'monitor', N'ip=171.240.70.135;action=monitor;uid=hoa;', CAST(N'2023-11-06 09:28:34.120' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8966, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:34.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8967, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:35.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8968, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:36.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8969, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:37.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8970, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:38.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8971, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:39.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8972, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:40.170' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8973, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:41.180' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8974, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:42.170' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8975, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:43.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8976, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:44.170' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8977, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:45.173' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8978, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:46.170' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8979, N'monitor', N'ip=127.0.0.1;action=monitor;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:46.780' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8980, N'check_logined', N'ip=127.0.0.1;action=check_logined;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:46.797' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8981, N'list_setting', N'ip=127.0.0.1;action=list_setting;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:46.797' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8982, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 09:28:46.867' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8983, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:47.793' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8984, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:49.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8985, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:50.183' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8986, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:51.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8987, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:52.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8988, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:53.183' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8989, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:54.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8990, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:55.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8991, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:56.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8992, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:57.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8993, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:58.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8994, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:28:59.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8995, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:00.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8996, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:01.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8997, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:02.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8998, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:03.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (8999, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:04.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9000, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:05.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9001, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:06.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9002, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:07.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9003, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:08.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9004, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:09.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9005, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:10.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9006, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:11.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9007, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:12.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9008, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:13.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9009, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:14.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9010, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:15.180' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9011, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:16.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9012, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:17.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9013, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:18.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9014, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:19.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9015, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:20.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9016, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:21.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9017, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:22.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9018, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:23.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9019, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:24.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9020, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:25.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9021, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:26.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9022, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:27.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9023, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:28.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9024, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:29.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9025, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:30.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9026, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:31.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9027, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:32.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9028, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:33.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9029, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:34.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9030, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:35.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9031, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:36.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9032, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:37.183' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9033, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:38.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9034, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:39.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9035, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:40.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9036, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:41.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9037, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:42.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9038, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:43.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9039, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:44.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9040, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:45.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9041, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:46.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9042, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:47.183' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9043, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:29:48.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9044, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:30:41.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9045, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:31:41.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9046, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=18;id_ca=2;order_id[]=13;order_sl[]=40;uid=hoa;', CAST(N'2023-11-06 09:31:43.113' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9047, N'mp3', N'Sếp Hòa vừa thêm vào ca Trưa cho công ty GMAX 25 : 40 suất ăn Việt Nam 25k', CAST(N'2023-11-06 09:31:43.113' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9048, N'monitor', N'ip=171.240.70.135;action=monitor;uid=hoa;', CAST(N'2023-11-06 09:31:43.160' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9049, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:32:41.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9050, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:15.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9051, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:16.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9052, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:17.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9053, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:18.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9054, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:19.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9055, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:20.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9056, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:21.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9057, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:22.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9058, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:23.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9059, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:24.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9060, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:25.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9061, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:26.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9062, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:27.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9063, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:28.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9064, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:29.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9065, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:30.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9066, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:31.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9067, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:32.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9068, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:33.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9069, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:34.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9070, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:35.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9071, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:36.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9072, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:37.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9073, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:38.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9074, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:39.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9075, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:40.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9076, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:41.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9077, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:42.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9078, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:43.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9079, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:44.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9080, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:45.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9081, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:46.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9082, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:47.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9083, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:48.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9084, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:49.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9085, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:50.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9086, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:51.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9087, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:52.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9088, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:53.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9089, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:54.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9090, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:55.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9091, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:56.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9092, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:57.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9093, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:58.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9094, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:33:59.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9095, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:00.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9096, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:01.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9097, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:02.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9098, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:03.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9099, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:04.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9100, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:05.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9101, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:06.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9102, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:07.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9103, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:08.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9104, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:09.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9105, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:10.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9106, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:11.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9107, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:12.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9108, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:13.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9109, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:14.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9110, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:15.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9111, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:15.797' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9112, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:17.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9113, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:18.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9114, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:19.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9115, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:20.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9116, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:20.793' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9117, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:22.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9118, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:23.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9119, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:24.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9120, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:25.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9121, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:26.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9122, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:27.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9123, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:28.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9124, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:29.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9125, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:30.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9126, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:31.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9127, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:32.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9128, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:33.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9129, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:34.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9130, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:35.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9131, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:36.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9132, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:37.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9133, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:38.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9134, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:39.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9135, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:40.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9136, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:41.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9137, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:42.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9138, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:43.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9139, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:44.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9140, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:45.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9141, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:46.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9142, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:47.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9143, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:48.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9144, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:49.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9145, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:50.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9146, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:51.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9147, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:52.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9148, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:53.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9149, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:54.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9150, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:55.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9151, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:56.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9152, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:57.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9153, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:58.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9154, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:34:59.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9155, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:00.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9156, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:01.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9157, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:02.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9158, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:03.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9159, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:04.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9160, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:05.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9161, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:06.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9162, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:07.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9163, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:08.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9164, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:09.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9165, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:10.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9166, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:11.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9167, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:12.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9168, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:13.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9169, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:14.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9170, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:15.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9171, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:16.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9172, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:17.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9173, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:18.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9174, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:19.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9175, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:20.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9176, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:35:41.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9177, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:36:41.607' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9178, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:36:42.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9179, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:36:43.803' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9180, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:36:44.787' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9181, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:36:45.823' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9182, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:36:46.793' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9183, N'get_mp3', N'ip=127.0.0.1;action=get_mp3;last_mp3_id=0;uid=admin;today=2023-11-05;', CAST(N'2023-11-06 09:36:47.793' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9184, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:36:49.383' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9185, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:36:49.383' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9186, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:36:49.383' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9187, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 09:36:49.400' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9188, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:36:50.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9189, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:36:50.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9190, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:36:50.240' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9191, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 09:36:50.257' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9192, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:36:51.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9193, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:36:52.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9194, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:36:53.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9195, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:36:54.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9196, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:36:55.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9197, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:36:56.237' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9198, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:36:57.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9199, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:36:58.247' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9200, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:36:59.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9201, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:00.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9202, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:01.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9203, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:02.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9204, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:03.237' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9205, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:05.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9206, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:07.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9207, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:09.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9208, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:11.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9209, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:13.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9210, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:15.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9211, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:16.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9212, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:17.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9213, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:18.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9214, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:19.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9215, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:20.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9216, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:21.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9217, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:22.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9218, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:23.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9219, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:25.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9220, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:27.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9221, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:29.157' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9222, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:29.250' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9223, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:30.240' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9224, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:30.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9225, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:30.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9226, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:30.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9227, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 09:37:30.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9228, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:31.570' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9229, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:32.553' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9230, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:33.557' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9231, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:34.563' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9232, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:35.557' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9233, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:36.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9234, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:38.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9235, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:39.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9236, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:40.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9237, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:41.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9238, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:42.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9239, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:43.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9240, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:44.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9241, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:45.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9242, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:46.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9243, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:47.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9244, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:48.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9245, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:49.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9246, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:50.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9247, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:51.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9248, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:52.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9249, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:53.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9250, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:54.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9251, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:55.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9252, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:56.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9253, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:57.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9254, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:58.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9255, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:37:59.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9256, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:00.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9257, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:01.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9258, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:02.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9259, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:03.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9260, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:04.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9261, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:05.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9262, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:06.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9263, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:06.643' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9264, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:07.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9265, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:08.557' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9266, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:09.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9267, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:10.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9268, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:10.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9269, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:10.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9270, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 09:38:10.310' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9271, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:11.307' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9272, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:12.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9273, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:13.297' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9274, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:14.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9275, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:15.297' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9276, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:16.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9277, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:17.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9278, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:18.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9279, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:19.283' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9280, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:20.307' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9281, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:21.287' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9282, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:22.283' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9283, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:23.310' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9284, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:24.290' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9285, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:25.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9286, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:26.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9287, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:27.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9288, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:29.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9289, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:30.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9290, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:31.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9291, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:32.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9292, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:33.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9293, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:34.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9294, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:35.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9295, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:36.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9296, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:37.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9297, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:38.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9298, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:39.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9299, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:40.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9300, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:41.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9301, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:42.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9302, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:43.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9303, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:43.430' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9304, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:44.297' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9305, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:45.290' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9306, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:46.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9307, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:47.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9308, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:48.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9309, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:50.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9310, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:51.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9311, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:52.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9312, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:53.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9313, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:54.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9314, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:55.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9315, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:56.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9316, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:57.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9317, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:58.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9318, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:38:59.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9319, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:00.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9320, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:01.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9321, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:02.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9322, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:03.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9323, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:04.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9324, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:05.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9325, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:06.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9326, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:07.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9327, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:08.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9328, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:09.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9329, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:10.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9330, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:11.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9331, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:11.920' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9332, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:12.297' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9333, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:13.297' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9334, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:14.290' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9335, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:15.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9336, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:16.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9337, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:17.290' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9338, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:18.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9339, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:19.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9340, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:20.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9341, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:21.290' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9342, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:22.297' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9343, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:23.290' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9344, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:24.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9345, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:25.297' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9346, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:26.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9347, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:27.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9348, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:28.283' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9349, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:29.297' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9350, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:30.290' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9351, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:32.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9352, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:33.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9353, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:34.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9354, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:34.467' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9355, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:35.297' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9356, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:36.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9357, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:37.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9358, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:38.297' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9359, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:40.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9360, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:41.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9361, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:42.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9362, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:43.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9363, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:44.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9364, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:45.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9365, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:46.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9366, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:47.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9367, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:48.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9368, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:49.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9369, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:50.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9370, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:51.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9371, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:52.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9372, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:53.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9373, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:54.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9374, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:55.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9375, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:56.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9376, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:57.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9377, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:58.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9378, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:39:59.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9379, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:00.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9380, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:01.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9381, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:02.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9382, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:03.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9383, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:04.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9384, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:05.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9385, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:06.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9386, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:07.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9387, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:08.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9388, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:09.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9389, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:10.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9390, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:11.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9391, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:12.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9392, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:13.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9393, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:14.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9394, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:15.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9395, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:16.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9396, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:17.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9397, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:18.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9398, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:19.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9399, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:20.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9400, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:21.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9401, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:22.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9402, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:23.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9403, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:24.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9404, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:25.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9405, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:26.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9406, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:27.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9407, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:28.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9408, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:29.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9409, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:30.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9410, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:31.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9411, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:32.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9412, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:33.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9413, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:34.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9414, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:35.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9415, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:36.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9416, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:37.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9417, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:38.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9418, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:40:41.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9419, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:06.717' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9420, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:07.297' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9421, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:08.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9422, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:08.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9423, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:08.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9424, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:08.947' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9425, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 09:41:08.947' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9426, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:09.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9427, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:10.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9428, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:11.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9429, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:12.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9430, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:13.883' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9431, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:14.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9432, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:15.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9433, N'list_setting', N'ip=171.255.77.178;action=list_setting;uid=Trong;', CAST(N'2023-11-06 09:41:16.447' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9434, N'monitor', N'ip=171.255.77.178;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:41:16.447' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9435, N'check_logined', N'ip=171.255.77.178;action=check_logined;uid=Trong;', CAST(N'2023-11-06 09:41:16.460' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9436, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 09:41:16.477' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9437, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:16.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9438, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=0;uid=Trong;', CAST(N'2023-11-06 09:41:17.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9439, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:17.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9440, N'list_setting', N'ip=171.255.77.178;action=list_setting;uid=Trong;', CAST(N'2023-11-06 09:41:18.183' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9441, N'monitor', N'ip=171.255.77.178;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:41:18.183' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9442, N'check_logined', N'ip=171.255.77.178;action=check_logined;uid=Trong;', CAST(N'2023-11-06 09:41:18.183' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9443, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 09:41:18.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9444, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:18.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9445, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=0;uid=Trong;', CAST(N'2023-11-06 09:41:19.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9446, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:19.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9447, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9047;uid=Trong;', CAST(N'2023-11-06 09:41:20.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9448, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:20.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9449, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9047;uid=Trong;', CAST(N'2023-11-06 09:41:21.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9450, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:21.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9451, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9047;uid=Trong;', CAST(N'2023-11-06 09:41:22.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9452, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:22.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9453, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9047;uid=Trong;', CAST(N'2023-11-06 09:41:23.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9454, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:23.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9455, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9047;uid=Trong;', CAST(N'2023-11-06 09:41:24.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9456, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:24.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9457, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9047;uid=Trong;', CAST(N'2023-11-06 09:41:25.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9458, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:25.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9459, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9047;uid=Trong;', CAST(N'2023-11-06 09:41:26.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9460, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:26.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9461, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9047;uid=Trong;', CAST(N'2023-11-06 09:41:27.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9462, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:27.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9463, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9047;uid=Trong;', CAST(N'2023-11-06 09:41:28.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9464, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:28.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9465, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9047;uid=Trong;', CAST(N'2023-11-06 09:41:29.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9466, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:29.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9467, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9047;uid=Trong;', CAST(N'2023-11-06 09:41:30.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9468, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:30.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9469, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9047;uid=Trong;', CAST(N'2023-11-06 09:41:31.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9470, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:31.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9471, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9047;uid=Trong;', CAST(N'2023-11-06 09:41:32.240' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9472, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:32.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9473, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9047;uid=Trong;', CAST(N'2023-11-06 09:41:33.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9474, N'save_order', N'ip=171.255.77.178;action=save_order;id_company=20;id_ca=2;order_id[]=27;order_sl[]=10;uid=Trong;', CAST(N'2023-11-06 09:41:33.430' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9475, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty SUNRISE 40 : 10 suất ăn Việt Nam 40k', CAST(N'2023-11-06 09:41:33.447' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9476, N'monitor', N'ip=171.255.77.178;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:41:33.523' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9477, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9047;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:33.903' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9478, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9475;uid=Trong;', CAST(N'2023-11-06 09:41:34.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9479, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9475;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:34.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9480, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9475;uid=Trong;', CAST(N'2023-11-06 09:41:35.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9481, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9475;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:35.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9482, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9475;uid=Trong;', CAST(N'2023-11-06 09:41:36.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9483, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9475;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:36.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9484, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9475;uid=Trong;', CAST(N'2023-11-06 09:41:37.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9485, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9475;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:37.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9486, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9475;uid=Trong;', CAST(N'2023-11-06 09:41:38.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9487, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9475;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:38.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9488, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9475;uid=Trong;', CAST(N'2023-11-06 09:41:39.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9489, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9475;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:39.910' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9490, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9475;uid=Trong;', CAST(N'2023-11-06 09:41:40.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9491, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9475;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:40.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9492, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9475;uid=Trong;', CAST(N'2023-11-06 09:41:41.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9493, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9475;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:41.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9494, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9475;uid=Trong;', CAST(N'2023-11-06 09:41:42.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9495, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9475;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:42.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9496, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9475;uid=Trong;', CAST(N'2023-11-06 09:41:43.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9497, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9475;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:43.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9498, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9475;uid=Trong;', CAST(N'2023-11-06 09:41:44.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9499, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9475;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:44.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9500, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9475;uid=Trong;', CAST(N'2023-11-06 09:41:45.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9501, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9475;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:45.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9502, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9475;uid=Trong;', CAST(N'2023-11-06 09:41:46.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9503, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9475;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:46.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9504, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9475;uid=Trong;', CAST(N'2023-11-06 09:41:47.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9505, N'save_order', N'ip=171.255.77.178;action=save_order;id_company=20;id_ca=2;order_id[]=27;order_sl[]=10;uid=Trong;', CAST(N'2023-11-06 09:41:47.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9506, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty SUNRISE 40 : 10 suất ăn Việt Nam 40k', CAST(N'2023-11-06 09:41:47.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9507, N'monitor', N'ip=171.255.77.178;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:41:47.297' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9508, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9475;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:47.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9509, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:41:48.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9510, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:48.883' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9511, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:41:49.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9512, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:49.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9513, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:41:50.267' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9514, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:51.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9515, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:41:51.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9516, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:52.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9517, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:41:52.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9518, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:52.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9519, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:41:53.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9520, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:53.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9521, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:41:54.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9522, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:54.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9523, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:41:55.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9524, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:55.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9525, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:41:56.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9526, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:56.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9527, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:41:57.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9528, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:57.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9529, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:41:58.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9530, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:58.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9531, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:41:59.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9532, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:41:59.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9533, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:00.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9534, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:00.880' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9535, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:01.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9536, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:01.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9537, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:02.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9538, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:02.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9539, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:03.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9540, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:03.883' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9541, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:04.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9542, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:04.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9543, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:05.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9544, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:05.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9545, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:06.257' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9546, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:06.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9547, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:07.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9548, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:07.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9549, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:08.237' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9550, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:08.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9551, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:09.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9552, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:09.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9553, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:10.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9554, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:10.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9555, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:11.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9556, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:11.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9557, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:12.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9558, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:12.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9559, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:13.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9560, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:13.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9561, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:14.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9562, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:14.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9563, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:15.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9564, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:15.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9565, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:16.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9566, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:16.883' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9567, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9506;uid=Trong;', CAST(N'2023-11-06 09:42:17.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9568, N'save_order', N'ip=171.255.77.178;action=save_order;id_company=20;id_ca=2;order_id[]=27;order_sl[]=0;uid=Trong;', CAST(N'2023-11-06 09:42:17.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9569, N'mp3', N'Lèng Văn Trong đã xóa hết các suất ăn ca Trưa của công ty SUNRISE 40', CAST(N'2023-11-06 09:42:17.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9570, N'monitor', N'ip=171.255.77.178;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:42:17.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9571, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9506;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:17.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9572, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:18.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9573, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:18.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9574, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:19.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9575, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:19.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9576, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:20.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9577, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:20.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9578, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:21.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9579, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:21.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9580, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:22.263' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9581, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:22.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9582, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:23.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9583, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:23.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9584, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:24.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9585, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:24.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9586, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:25.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9587, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:25.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9588, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:26.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9589, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:26.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9590, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:27.423' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9591, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:27.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9592, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:28.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9593, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:28.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9594, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:29.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9595, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:29.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9596, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:30.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9597, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:30.883' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9598, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:31.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9599, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:31.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9600, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:32.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9601, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:32.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9602, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:33.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9603, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:33.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9604, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:34.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9605, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:35.080' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9606, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:35.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9607, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:35.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9608, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:36.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9609, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:36.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9610, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:37.247' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9611, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:37.883' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9612, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:38.257' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9613, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:38.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9614, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:39.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9615, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:39.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9616, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:40.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9617, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:40.933' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9618, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:41.243' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9619, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:41.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9620, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:42.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9621, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:42.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9622, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:43.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9623, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:43.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9624, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:44.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9625, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:44.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9626, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:45.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9627, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:45.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9628, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:46.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9629, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:46.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9630, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:47.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9631, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:47.907' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9632, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:48.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9633, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:48.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9634, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:49.237' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9635, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:49.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9636, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:50.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9637, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:50.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9638, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:51.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9639, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:51.883' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9640, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:52.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9641, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:52.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9642, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:53.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9643, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:53.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9644, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:54.250' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9645, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:54.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9646, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:55.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9647, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:55.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9648, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:56.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9649, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:56.987' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9650, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:57.240' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9651, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:57.940' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9652, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:58.247' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9653, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:58.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9654, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:42:59.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9655, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:42:59.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9656, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:00.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9657, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:00.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9658, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:01.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9659, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:01.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9660, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:02.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9661, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:02.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9662, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:03.220' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9663, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:03.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9664, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:04.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9665, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:04.900' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9666, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:05.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9667, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:05.903' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9668, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:06.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9669, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:06.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9670, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:07.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9671, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:08.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9672, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:08.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9673, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:08.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9674, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:09.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9675, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:09.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9676, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:10.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9677, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:10.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9678, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:11.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9679, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:11.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9680, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:12.237' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9681, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:12.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9682, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:13.243' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9683, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:13.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9684, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:14.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9685, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:14.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9686, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:15.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9687, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:15.883' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9688, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:16.357' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9689, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:16.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9690, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:17.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9691, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:17.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9692, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:18.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9693, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:18.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9694, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:19.240' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9695, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:19.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9696, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:20.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9697, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:20.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9698, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:21.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9699, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:22.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9700, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:23.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9701, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:24.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9702, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:25.903' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9703, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:26.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9704, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:27.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9705, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:28.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9706, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:29.187' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9707, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:29.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9708, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:30.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9709, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:30.927' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9710, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:31.893' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9711, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:32.030' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9712, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:32.883' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9713, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:32.957' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9714, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:33.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9715, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:33.947' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9716, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:34.903' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9717, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:35.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9718, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:36.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9719, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:37.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9720, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:38.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9721, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:39.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9722, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:40.643' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9723, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:40.883' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9724, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:41.390' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9725, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:41.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9726, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:41.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9727, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:41.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9728, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 09:43:41.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9729, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:42.397' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9730, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:42.537' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9731, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:43.543' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9732, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:43.860' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9733, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:44.543' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9734, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:45.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9735, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:46.540' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9736, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:47.543' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9737, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:48.543' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9738, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:49.547' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9739, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:49.823' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9740, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:50.553' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9741, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:50.803' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9742, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:51.537' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9743, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:51.853' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9744, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:52.537' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9745, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:43:52.817' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9746, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:53.547' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9747, N'list_setting', N'ip=113.186.3.221;action=list_setting;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:54.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9748, N'monitor', N'ip=113.186.3.221;action=monitor;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:54.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9749, N'check_logined', N'ip=113.186.3.221;action=check_logined;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:54.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9750, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 09:43:54.577' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9751, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:55.563' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9752, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:56.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9753, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:57.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9754, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:58.563' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9755, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:43:59.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9756, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:00.570' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9757, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:01.563' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9758, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:02.563' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9759, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:03.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9760, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:04.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9761, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:05.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9762, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:06.563' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9763, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:07.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9764, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:08.563' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9765, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:09.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9766, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:44:09.607' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9767, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:10.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9768, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:11.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9769, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:12.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9770, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:13.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9771, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:14.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9772, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:15.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9773, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:16.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9774, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:17.570' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9775, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:18.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9776, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:19.570' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9777, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:20.557' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9778, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:21.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9779, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:22.570' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9780, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:23.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9781, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:24.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9782, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:25.570' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9783, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:26.553' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9784, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:27.563' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9785, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:28.570' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9786, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:29.557' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9787, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:30.557' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9788, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:31.570' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9789, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:32.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9790, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:33.563' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9791, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:34.557' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9792, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:36.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9793, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:37.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9794, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:38.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9795, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:39.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9796, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:40.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9797, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:41.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9798, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:42.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9799, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:43.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9800, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:44.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9801, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:45.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9802, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:46.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9803, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:47.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9804, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:48.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9805, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:49.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9806, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:50.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9807, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:51.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9808, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:52.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9809, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:53.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9810, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:54.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9811, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:55.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9812, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:56.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9813, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:57.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9814, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:58.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9815, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:44:59.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9816, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:00.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9817, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:01.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9818, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:02.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9819, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:03.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9820, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:04.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9821, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:05.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9822, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:06.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9823, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:07.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9824, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:08.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9825, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:09.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9826, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:10.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9827, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:11.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9828, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:12.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9829, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:13.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9830, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:14.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9831, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:15.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9832, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:16.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9833, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:17.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9834, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:18.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9835, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:19.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9836, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:20.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9837, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:21.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9838, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:22.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9839, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:23.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9840, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:24.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9841, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:25.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9842, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:26.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9843, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:27.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9844, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:28.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9845, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:29.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9846, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:30.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9847, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:31.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9848, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:31.617' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9849, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:33.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9850, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:34.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9851, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:35.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9852, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:36.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9853, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:37.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9854, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:38.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9855, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:39.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9856, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:40.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9857, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:41.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9858, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:42.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9859, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:43.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9860, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:44.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9861, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:45.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9862, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:46.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9863, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:47.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9864, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:48.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9865, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:49.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9866, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:50.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9867, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:51.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9868, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:52.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9869, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:53.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9870, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:54.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9871, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:55.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9872, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:56.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9873, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:57.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9874, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:58.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9875, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:45:59.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9876, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:00.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9877, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:01.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9878, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:02.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9879, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:03.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9880, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:04.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9881, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:05.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9882, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:06.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9883, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:07.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9884, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:08.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9885, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:09.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9886, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:10.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9887, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:11.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9888, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:12.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9889, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:46:12.753' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9890, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:46:13.053' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9891, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:13.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9892, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:46:14.070' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9893, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:14.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9894, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:46:15.040' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9895, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:15.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9896, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:16.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9897, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:46:16.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9898, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:17.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9899, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:18.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9900, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:19.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9901, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:20.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9902, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:21.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9903, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:22.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9904, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:23.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9905, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:24.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9906, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:25.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9907, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:26.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9908, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:27.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9909, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:28.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9910, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:29.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9911, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:30.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9912, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:31.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9913, N'get_mp3', N'ip=113.186.3.221;action=get_mp3;last_mp3_id=9569;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:46:41.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9914, N'list_setting', N'ip=171.255.77.178;action=list_setting;', CAST(N'2023-11-06 09:46:59.180' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9915, N'monitor', N'ip=171.255.77.178;action=monitor;', CAST(N'2023-11-06 09:46:59.180' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9916, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=0;', CAST(N'2023-11-06 09:47:00.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9917, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;', CAST(N'2023-11-06 09:47:01.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9918, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;', CAST(N'2023-11-06 09:47:02.260' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9919, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;', CAST(N'2023-11-06 09:47:03.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9920, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;', CAST(N'2023-11-06 09:47:04.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9921, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;', CAST(N'2023-11-06 09:47:05.240' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9922, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;', CAST(N'2023-11-06 09:47:06.543' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9923, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;', CAST(N'2023-11-06 09:47:07.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9924, N'do_login', N'ip=171.255.77.178;action=do_login;uid=Trong;pwd=123456;', CAST(N'2023-11-06 09:47:08.070' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9925, N'LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 09:47:08.087' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9926, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:08.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9927, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:09.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9928, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:10.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9929, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:11.237' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9930, N'list_setting', N'ip=171.255.77.178;action=list_setting;uid=Trong;', CAST(N'2023-11-06 09:47:11.950' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9931, N'monitor', N'ip=171.255.77.178;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:47:11.950' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9932, N'check_logined', N'ip=171.255.77.178;action=check_logined;uid=Trong;', CAST(N'2023-11-06 09:47:11.950' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9933, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 09:47:11.967' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9934, N'list_setting', N'ip=171.255.77.178;action=list_setting;uid=Trong;', CAST(N'2023-11-06 09:47:12.563' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9935, N'monitor', N'ip=171.255.77.178;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:47:12.563' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9936, N'check_logined', N'ip=171.255.77.178;action=check_logined;uid=Trong;', CAST(N'2023-11-06 09:47:12.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9937, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 09:47:12.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9938, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=0;uid=Trong;', CAST(N'2023-11-06 09:47:13.587' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9939, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:14.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9940, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:15.583' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9941, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:16.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9942, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:17.600' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9943, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:18.680' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9944, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:19.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9945, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:20.603' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9946, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:21.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9947, N'list_don_nguyen', N'ip=171.255.77.178;action=list_don_nguyen;uid=Trong;', CAST(N'2023-11-06 09:47:21.990' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9948, N'list_suat_an', N'ip=171.255.77.178;action=list_suat_an;uid=Trong;', CAST(N'2023-11-06 09:47:21.990' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9949, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:22.570' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9950, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:23.610' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9951, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:24.640' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9952, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:25.583' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9953, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:26.600' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9954, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:27.633' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9955, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:28.603' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9956, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:29.597' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9957, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:30.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9958, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:31.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9959, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:32.583' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9960, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:33.567' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9961, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:34.690' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9962, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:35.597' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9963, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:36.607' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9964, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:37.603' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9965, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9569;uid=Trong;', CAST(N'2023-11-06 09:47:38.607' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9966, N'save_order', N'ip=171.255.77.178;action=save_order;id_company=7;id_ca=2;order_id[]=13;order_sl[]=136;uid=Trong;', CAST(N'2023-11-06 09:47:38.740' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9967, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty TOMO 25 : 136 suất ăn Việt Nam 25k', CAST(N'2023-11-06 09:47:38.740' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9968, N'monitor', N'ip=171.255.77.178;action=monitor;uid=Trong;', CAST(N'2023-11-06 09:47:38.830' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9969, N'get_mp3', N'ip=171.255.77.178;action=get_mp3;last_mp3_id=9967;uid=Trong;', CAST(N'2023-11-06 09:47:39.607' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9970, N'save_order', N'ip=171.255.77.178;action=save_order;id_company=20;id_ca=2;order_id[]=27;order_sl[]=10;uid=Trong;', CAST(N'2023-11-06 09:47:53.573' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9971, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty SUNRISE 40 : 10 suất ăn Việt Nam 40k', CAST(N'2023-11-06 09:47:53.573' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9972, N'save_order', N'ip=171.255.77.178;action=save_order;id_company=21;id_ca=2;order_id[]=13;order_sl[]=1;uid=Trong;', CAST(N'2023-11-06 09:48:20.643' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9973, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty WING FAT 25 : 1 suất ăn Việt Nam 25k', CAST(N'2023-11-06 09:48:20.643' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9974, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 09:50:20.990' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9975, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 09:53:40.433' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9976, N'save_order', N'ip=171.255.77.178;action=save_order;id_company=2;id_ca=1;order_id[]=13,10,27;order_sl[]=0,0,40;uid=Trong;', CAST(N'2023-11-06 09:53:58.920' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9977, N'mp3', N'Lèng Văn Trong vừa thêm vào ca Sáng cho công ty XYC 28 : 40 suất ăn Việt Nam 40k', CAST(N'2023-11-06 09:53:58.920' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9978, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=1,2,3;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 09:58:18.180' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9979, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty XYC 28: 1 suất ăn Việt Nam 25k, 2 suất ăn Việt Nam 28k, 3 suất ăn Việt Nam 40k', CAST(N'2023-11-06 09:58:18.260' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9980, N'mp3_long', N'Công ty XYC 28 vừa thêm: 1 suất ăn VN, 2 suất ăn VN, 3 suất ăn VN, ', CAST(N'2023-11-06 09:58:18.260' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9981, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 10:00:58.523' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9982, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=1,2,4;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:01:49.290' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9983, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty XYC 28: 1 suất ăn Việt Nam 25k, 2 suất ăn Việt Nam 28k, 4 suất ăn Việt Nam 40k', CAST(N'2023-11-06 10:01:49.400' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9984, N'mp3_long', N'Công ty XYC 28 vừa thêm: 7 suất ăn VN', CAST(N'2023-11-06 10:01:49.400' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9985, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=10,20,40;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:02:13.527' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9986, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty XYC 28: 10 suất ăn Việt Nam 25k, 20 suất ăn Việt Nam 28k, 40 suất ăn Việt Nam 40k', CAST(N'2023-11-06 10:02:13.543' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9987, N'mp3_long', N'Công ty XYC 28 vừa thêm: 70 suất ăn VN', CAST(N'2023-11-06 10:02:13.543' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9988, N'save_order', N'ip=171.255.77.178;action=save_order;id_company=29;id_ca=2;order_id[]=9;order_sl[]=34;uid=Trong;', CAST(N'2023-11-06 10:03:16.880' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9989, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty ILKWANG 30: 34 suất ăn Việt Nam 30k', CAST(N'2023-11-06 10:03:16.880' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9990, N'mp3_long', N'Công ty ILKWANG 30 vừa thêm: 34 suất ăn VN', CAST(N'2023-11-06 10:03:16.880' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9991, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 10:05:10.553' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9992, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 10:05:59.210' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9993, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:06:06.990' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9994, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Tối của công ty XYC 28', CAST(N'2023-11-06 10:06:07.007' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9995, N'mp3_long', N'Công ty XYC 28 : đã xóa hết', CAST(N'2023-11-06 10:06:07.007' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9996, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=10,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:06:17.097' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9997, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty XYC 28: 10 suất ăn Việt Nam 25k', CAST(N'2023-11-06 10:06:17.097' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9998, N'mp3_long', N'Công ty XYC 28 vừa thêm: 10 suất ăn VN', CAST(N'2023-11-06 10:06:17.097' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (9999, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=22,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:06:25.047' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10000, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty XYC 28: 22 suất ăn Việt Nam 25k', CAST(N'2023-11-06 10:06:25.047' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10001, N'mp3_long', N'Công ty XYC 28 vừa thêm: 22 suất ăn VN', CAST(N'2023-11-06 10:06:25.047' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10002, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:06:36.453' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10003, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Tối của công ty XYC 28', CAST(N'2023-11-06 10:06:36.470' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10004, N'mp3_long', N'Công ty XYC 28 : đã xóa hết', CAST(N'2023-11-06 10:06:36.470' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10005, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 10:15:15.843' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10006, N'save_order', N'ip=171.255.77.178;action=save_order;id_company=3;id_ca=1;order_id[]=21,19,14,13;order_sl[]=4,0,0,0;uid=Trong;', CAST(N'2023-11-06 10:15:25.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10007, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Sáng cho công ty BET 25,50: 4 suất ăn MỳBET25', CAST(N'2023-11-06 10:15:25.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10008, N'mp3_long', N'Công ty BET 25,50 vừa thêm: 4 suất ăn Khác', CAST(N'2023-11-06 10:15:25.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10009, N'save_order', N'ip=171.255.77.178;action=save_order;id_company=3;id_ca=1;order_id[]=21,19,14,13;order_sl[]=4,2,0,0;uid=Trong;', CAST(N'2023-11-06 10:15:42.720' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10010, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Sáng cho công ty BET 25,50: 4 suất ăn MỳBET25, 2 suất ăn TQ BET 50', CAST(N'2023-11-06 10:15:42.720' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10011, N'mp3_long', N'Công ty BET 25,50 vừa thêm: 4 suất ăn Khác, 2 suất ăn TQ', CAST(N'2023-11-06 10:15:42.720' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10012, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 10:16:50.057' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10013, N'edit_loai', N'ip=113.186.3.221;action=edit_loai;id_old=2;id=2;name=Việt Nam;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:17:26.667' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10014, N'edit_loai', N'ip=113.186.3.221;action=edit_loai;id_old=1;id=1;name=Trung Quốc;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:17:33.073' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10015, N'edit_loai', N'ip=171.255.77.178;action=edit_loai;id_old=4;id=4;name=Bún;uid=Trong;', CAST(N'2023-11-06 10:17:34.493' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10016, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 10:17:37.383' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10017, N'save_order', N'ip=171.255.77.178;action=save_order;id_company=1;id_ca=1;order_id[]=9;order_sl[]=2;uid=Trong;', CAST(N'2023-11-06 10:19:49.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10018, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Sáng cho công ty ET SoLar 30: 2 suất ăn Việt Nam 30k', CAST(N'2023-11-06 10:19:49.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10019, N'mp3_long', N'Công ty ET SoLar 30 vừa thêm: 2 suất ăn Việt Nam', CAST(N'2023-11-06 10:19:49.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10020, N'save_order', N'ip=171.255.77.178;action=save_order;id_company=4;id_ca=1;order_id[]=40,13;order_sl[]=2,0;uid=Trong;', CAST(N'2023-11-06 10:20:11.427' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10021, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Sáng cho công ty NLX 25,40: 2 suất ăn TQ NLX Vinamik 40', CAST(N'2023-11-06 10:20:11.443' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10022, N'mp3_long', N'Công ty NLX 25,40 vừa thêm: 2 suất ăn Trung Quốc', CAST(N'2023-11-06 10:20:11.443' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10023, N'save_order', N'ip=171.255.77.178;action=save_order;id_company=7;id_ca=1;order_id[]=13;order_sl[]=4;uid=Trong;', CAST(N'2023-11-06 10:20:29.160' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10024, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Sáng cho công ty TOMO 25: 4 suất ăn Việt Nam 25k', CAST(N'2023-11-06 10:20:29.160' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10025, N'mp3_long', N'Công ty TOMO 25 vừa thêm: 4 suất ăn Việt Nam', CAST(N'2023-11-06 10:20:29.160' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10026, N'save_order', N'ip=171.255.77.178;action=save_order;id_company=10;id_ca=1;order_id[]=25,28,18,13;order_sl[]=4,0,0,0;uid=Trong;', CAST(N'2023-11-06 10:20:45.130' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10027, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Sáng cho công ty NVC 25,35: 4 suất ăn BunChieu25', CAST(N'2023-11-06 10:20:45.130' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10028, N'mp3_long', N'Công ty NVC 25,35 vừa thêm: 4 suất ăn Bún', CAST(N'2023-11-06 10:20:45.130' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10029, N'save_order', N'ip=171.255.77.178;action=save_order;id_company=9;id_ca=1;order_id[]=17,12,13;order_sl[]=4,5,2;uid=Trong;', CAST(N'2023-11-06 10:21:30.387' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10030, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Sáng cho công ty THONOVA 25,40: 4 suất ăn Bánh Sữa Thornova 25, 5 suất ăn TQ40, 2 suất ăn Việt Nam 25k', CAST(N'2023-11-06 10:21:30.387' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10031, N'mp3_long', N'Công ty THONOVA 25,40 vừa thêm: 4 suất ăn Khác, 5 suất ăn Trung Quốc, 2 suất ăn Việt Nam', CAST(N'2023-11-06 10:21:30.387' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10032, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 10:30:39.250' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10033, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 10:35:50.760' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10034, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=3;id_ca=3;order_id[]=21,19,14,13;order_sl[]=1,2,3,4;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:44:45.020' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10035, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty BET 25,50: 1 suất ăn MỳBET25, 2 suất ăn TQ BET 50, 3 suất ăn TQ25, 4 suất ăn Việt Nam 25k', CAST(N'2023-11-06 10:44:45.163' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10036, N'mp3_long', N'Công ty BET 25,50: Giảm -334 suất Việt Nam, Giảm -57 suất Khác', CAST(N'2023-11-06 10:44:45.163' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10037, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=3;id_ca=3;order_id[]=21,19,14,13;order_sl[]=1,2,3,5;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:45:24.617' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10038, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty BET 25,50: 1 suất ăn MỳBET25, 2 suất ăn TQ BET 50, 3 suất ăn TQ25, 5 suất ăn Việt Nam 25k', CAST(N'2023-11-06 10:45:24.757' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10039, N'mp3_long', N'Công ty BET 25,50: Thêm 5 suất Trung Quốc, Thêm 5 suất Việt Nam, Thêm 1 suất Khác', CAST(N'2023-11-06 10:45:24.757' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10040, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=3;id_ca=3;order_id[]=21,19,14,13;order_sl[]=1,2,3,6;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:45:41.833' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10041, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty BET 25,50: 1 suất ăn MỳBET25, 2 suất ăn TQ BET 50, 3 suất ăn TQ25, 6 suất ăn Việt Nam 25k', CAST(N'2023-11-06 10:45:41.863' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10042, N'mp3_long', N'Công ty BET 25,50: Thêm 5 suất Trung Quốc, Thêm 6 suất Việt Nam, Thêm 1 suất Khác', CAST(N'2023-11-06 10:45:41.863' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10043, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=3;id_ca=3;order_id[]=21,19,14,13;order_sl[]=1,2,3,7;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:46:37.483' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10044, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty BET 25,50: 1 suất ăn MỳBET25, 2 suất ăn TQ BET 50, 3 suất ăn TQ25, 7 suất ăn Việt Nam 25k', CAST(N'2023-11-06 10:46:37.623' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10045, N'mp3_long', N'Công ty BET 25,50: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 10:46:37.623' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10046, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=3;id_ca=3;order_id[]=21,19,14,13;order_sl[]=1,2,3,6;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:46:46.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10047, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty BET 25,50: 1 suất ăn MỳBET25, 2 suất ăn TQ BET 50, 3 suất ăn TQ25, 6 suất ăn Việt Nam 25k', CAST(N'2023-11-06 10:46:46.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10048, N'mp3_long', N'Công ty BET 25,50: Giảm -1 suất Việt Nam', CAST(N'2023-11-06 10:46:46.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10049, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=3;id_ca=3;order_id[]=21,19,14,13;order_sl[]=1,2,0,6;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:47:10.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10050, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty BET 25,50: 1 suất ăn MỳBET25, 2 suất ăn TQ BET 50, 6 suất ăn Việt Nam 25k', CAST(N'2023-11-06 10:47:10.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10051, N'mp3_long', N'Công ty BET 25,50: Giảm -3 suất Trung Quốc', CAST(N'2023-11-06 10:47:10.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10052, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=3;id_ca=3;order_id[]=21,19,14,13;order_sl[]=0,0,0,6;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:47:23.457' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10053, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty BET 25,50: 6 suất ăn Việt Nam 25k', CAST(N'2023-11-06 10:47:23.470' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10054, N'mp3_long', N'Công ty BET 25,50: Giảm -2 suất Trung Quốc, Giảm -1 suất Khác', CAST(N'2023-11-06 10:47:23.470' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10055, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=3;id_ca=3;order_id[]=21,19,14,13;order_sl[]=0,0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:47:36.497' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10056, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Tối của công ty BET 25,50', CAST(N'2023-11-06 10:47:36.513' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10057, N'mp3_long', N'Công ty BET 25,50 : đã xóa hết', CAST(N'2023-11-06 10:47:36.513' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10058, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=1,2,3;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:51:29.553' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10059, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty XYC 28: 1 suất ăn Việt Nam 25k, 2 suất ăn Việt Nam 28k, 3 suất ăn Việt Nam 40k', CAST(N'2023-11-06 10:51:29.723' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10060, N'mp3_long', N'Công ty XYC 28: Thêm 6 suất Việt Nam', CAST(N'2023-11-06 10:51:29.723' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10061, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 10:51:47.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10062, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=2;name=X Y C;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=13,10,27;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]},{"id":10,"thu":[2,3,4,5,6,7,8]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:52:06.860' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10063, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 10:53:30.500' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10064, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 10:53:43.150' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10065, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=2;name=XYC 28;tenviet=X Y C;address=Yên Phong;gps=null, null;phone=;zalo=null;default_order[]=13,10,27;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]},{"id":10,"thu":[2,3,4,5,6,7,8]},{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:53:53.443' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10066, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=1;name=ET SoLar 30;tenviet=E T SoLar;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=9;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:54:01.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10067, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=3;name=BET 25,50;tenviet=BET;address=Yên Phong;gps=null, null;phone=113;zalo=undefined;default_order[]=21,19,14,13;data_order=[{"id":21,"thu":[2,3,4,5,6,7,8]},{"id":19,"thu":[2,3,4,5,6,7,8]},{"id":14,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:54:07.077' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10068, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=4;name=NLX 25,40;tenviet=N L X;address=Đại Đồng;gps=null, null;phone=null;zalo=undefined;default_order[]=39,41,40,13;data_order=[{"id":39,"thu":[]},{"id":41,"thu":[3,5,7,8]},{"id":40,"thu":[2,4,6,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:54:15.003' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10069, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=5;name=LING Yi 25,70;tenviet=LING Y;address=Yên Phong;gps=21.2274437, 106.005577;phone=null;zalo=undefined;default_order[]=25,15,13;data_order=[{"id":25,"thu":[2,3,4,5,6,7,8]},{"id":15,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:54:28.883' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10070, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=6;name=VESOGO 25;tenviet=Ve Sô Gâu;address=Đại Đồng;gps=null, null;phone=null;zalo=undefined;default_order[]=43,13;data_order=[{"id":43,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:54:52.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10071, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=7;name=TOMO 25;tenviet=Tô Mô;address=Khắc Niệm;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:54:59.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10072, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=3;name=BET 25,50;tenviet=Bét;address=Yên Phong;gps=null, null;phone=113;zalo=undefined;default_order[]=21,19,14,13;data_order=[{"id":21,"thu":[2,3,4,5,6,7,8]},{"id":19,"thu":[2,3,4,5,6,7,8]},{"id":14,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:55:05.453' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10073, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=4;name=NLX 25,40;tenviet=Nờ Lờ Ích;address=Đại Đồng;gps=null, null;phone=null;zalo=undefined;default_order[]=39,41,40,13;data_order=[{"id":39,"thu":[]},{"id":41,"thu":[3,5,7,8]},{"id":40,"thu":[2,4,6,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:55:19.663' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10074, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=9;name=THONOVA 25,40;tenviet=Thô Nô Va;address=Quế Võ 2;gps=null, null;phone=null;zalo=null;default_order[]=17,12,13;data_order=[{"id":17,"thu":[2,3,4,5,6,7,8]},{"id":12,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:55:32.653' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10075, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=8;name=TIA SÁNG 25;tenviet=Tia Sáng;address=Quế Võ;gps=null, null;phone=null;zalo=null;default_order[]=16,13;data_order=[{"id":16,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:55:40.307' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10076, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=10;name=NVC 25,35;tenviet=Nờ Vê Xê;address=Yên Phong;gps=null, null;phone=null;zalo=undefined;default_order[]=25,28,18,13;data_order=[{"id":25,"thu":[2,3,4,5,6,7,8]},{"id":28,"thu":[2,3,4,5,6,7,8]},{"id":18,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:55:52.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10077, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=11;name=GW 25,(25,40);tenviet=Gờ Vê Kép;address=Quế Võ 3;gps=null, null;phone=null;zalo=undefined;default_order[]=38,37,36,14,12,13;data_order=[{"id":38,"thu":[7,8]},{"id":37,"thu":[6,8]},{"id":36,"thu":[2,3,4,5,6,8]},{"id":14,"thu":[2,3,4,5,6,7,8]},{"id":12,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:56:08.477' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10078, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=12;name=GEP 25,(50,40);tenviet=Gép;address=Quế Võ 3;gps=null, null;phone=null;zalo=undefined;default_order[]=30,20,34,13;data_order=[{"id":30,"thu":[2,3,4,5,6,7,8]},{"id":20,"thu":[2,3,4,5,6,7,8]},{"id":34,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:56:15.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10079, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=13;name=PRIMETECH 25;tenviet=Pờ ri mê tếch;address=Quế Võ 3;gps=null, null;phone=null;zalo=undefined;default_order[]=31,13;data_order=[{"id":31,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:56:35.000' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10080, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=14;name=MOATECH 30;tenviet=Mô A Tếch;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=9;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:56:44.720' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10081, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=15;name=ETS 25;tenviet=E  tê ét;address=MĨ Á;gps=null, null;phone=null;zalo=undefined;default_order[]=45,13;data_order=[{"id":45,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:56:53.857' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10082, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=16;name=SCR 30;tenviet=ét cê rờ;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=26,23,9;data_order=[{"id":26,"thu":[2,3,4,5,6,7,8]},{"id":23,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:57:07.457' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10083, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=17;name=TRC 30;tenviet=Tê rờ cê;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=9;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:57:15.147' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10084, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=18;name=GMAX 25;tenviet=gờ mắc;address=MĨ Á;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:57:27.657' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10085, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=19;name=ECT 30;tenviet=e cê tê;address=somewhere1;gps=null, null;phone=null;zalo=undefined;default_order[]=25,9;data_order=[{"id":25,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:57:36.023' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10086, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=20;name=SUNRISE 40;tenviet=sun raise;address=somewhere;gps=null, null;phone=null;zalo=null;default_order[]=27;data_order=[{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:57:47.003' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10087, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=21;name=WING FAT 25;tenviet=WING phát;address=Quế Võ 3;gps=null, null;phone=null;zalo=null;default_order[]=13;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 10:58:36.040' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10088, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=29;name=ILKWANG 30;tenviet=i lờ k wang;address=Quế Võ 2;gps=null, null;phone=;zalo=null;default_order[]=9;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 11:00:21.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10089, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=28;name=MAXIN 30,30;tenviet=MAX IN;address=Quế Võ 2;gps=null, null;phone=;zalo=undefined;default_order[]=32,22,24,9;data_order=[{"id":32,"thu":[2,3,4,5,6,7,8]},{"id":22,"thu":[2,3,4,5,6,7,8]},{"id":24,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 11:00:30.120' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10090, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=1;name=ET SoLar 30;tenviet=E T Sô La;address=Bắc Giang;gps=21.2226734, 106.114197;phone=0986.516.375;zalo=undefined;default_order[]=9;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 11:01:07.663' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10091, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=4;name=NLX 25,40;tenviet=Nờ Lờ X;address=Đại Đồng;gps=null, null;phone=null;zalo=undefined;default_order[]=39,41,40,13;data_order=[{"id":39,"thu":[]},{"id":41,"thu":[3,5,7,8]},{"id":40,"thu":[2,4,6,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 11:02:08.363' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10092, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=19;name=ECT 30;tenviet=E C T;address=somewhere1;gps=null, null;phone=null;zalo=undefined;default_order[]=25,9;data_order=[{"id":25,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 11:02:26.910' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10093, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=20;name=SUNRISE 40;tenviet=SUNRISE;address=somewhere;gps=null, null;phone=null;zalo=null;default_order[]=27;data_order=[{"id":27,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 11:02:41.483' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10094, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=29;name=ILKWANG 30;tenviet=I Lờ K Wang;address=Quế Võ 2;gps=null, null;phone=;zalo=null;default_order[]=9;data_order=[{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 11:03:00.213' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10095, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:05:59.927' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10096, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:06:59.987' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10097, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:07:05.987' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10098, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:07:44.100' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10099, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:08:03.757' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10100, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:09:23.503' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10101, N'CHECK LOGIN OK', N'admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:09:41.273' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10102, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:10:37.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10103, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:10:38.990' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10104, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:12:02.523' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10105, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:13:52.923' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10106, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:13:56.030' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10107, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 11:14:17.330' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10108, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Tối của công ty XYC 28', CAST(N'2023-11-06 11:14:17.330' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10109, N'mp3_long', N'Công ty XYC 28: Giảm -6 suất Việt Nam. Xóa h?t r?i!', CAST(N'2023-11-06 11:14:17.330' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10110, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 11:14:51.427' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10111, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Tối của công ty XYC 28', CAST(N'2023-11-06 11:14:51.563' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10112, N'mp3_long', N'Công ty XYC 28: . Xóa hết rồi!', CAST(N'2023-11-06 11:14:51.563' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10113, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=3;id_ca=3;order_id[]=21,19,14,13;order_sl[]=0,0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 11:16:28.450' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10114, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Tối của công ty BET 25,50', CAST(N'2023-11-06 11:16:28.600' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10115, N'mp3_short', N'Công ty Bét: . Xóa hết rồi!', CAST(N'2023-11-06 11:16:28.600' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10116, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:18:27.313' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10117, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=3;id_ca=3;order_id[]=21,19,14,13;order_sl[]=0,10,20,30;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 11:18:41.463' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10118, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty BET 25,50: 10 suất ăn TQ BET 50, 20 suất ăn TQ25, 30 suất ăn Việt Nam 25k', CAST(N'2023-11-06 11:18:41.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10119, N'mp3_short', N'Công ty Bét: Thêm 30 suất Trung Quốc, Thêm 30 suất Việt Nam', CAST(N'2023-11-06 11:18:41.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10120, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=3;id_ca=3;order_id[]=21,19,14,13;order_sl[]=0,10,20,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 11:18:52.473' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10121, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty BET 25,50: 10 suất ăn TQ BET 50, 20 suất ăn TQ25', CAST(N'2023-11-06 11:18:52.490' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10122, N'mp3_short', N'Công ty Bét: Giảm -30 suất Việt Nam', CAST(N'2023-11-06 11:18:52.490' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10123, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=3;id_ca=3;order_id[]=21,19,14,13;order_sl[]=0,10,0,10;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 11:19:01.950' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10124, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty BET 25,50: 10 suất ăn TQ BET 50, 10 suất ăn Việt Nam 25k', CAST(N'2023-11-06 11:19:01.967' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10125, N'mp3_short', N'Công ty Bét: Giảm -20 suất Trung Quốc, Thêm 10 suất Việt Nam', CAST(N'2023-11-06 11:19:01.967' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10126, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=3;id_ca=3;order_id[]=21,19,14,13;order_sl[]=0,10,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 11:20:20.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10127, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty BET 25,50: 10 suất ăn TQ BET 50', CAST(N'2023-11-06 11:20:20.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10128, N'mp3_short', N'Công ty Bét: Giảm -10 suất Việt Nam', CAST(N'2023-11-06 11:20:20.197' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10129, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=3;id_ca=3;order_id[]=21,19,14,13;order_sl[]=0,0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 11:20:24.620' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10130, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Tối của công ty BET 25,50', CAST(N'2023-11-06 11:20:24.620' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10131, N'mp3_short', N'Công ty Bét: Giảm -10 suất Trung Quốc. Xóa hết rồi!', CAST(N'2023-11-06 11:20:24.620' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10132, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:40:23.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10133, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:40:27.137' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10134, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:40:36.303' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10135, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 11:40:45.343' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10136, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 11:44:51.263' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10137, N'CHECK LOGIN OK', N'hoa=Sếp Hòa => CSKH', CAST(N'2023-11-06 11:45:25.483' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10138, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=5;id_ca=1;order_id[]=25,15,13;order_sl[]=4,0,0;uid=Trong;', CAST(N'2023-11-06 11:45:31.850' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10139, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Sáng cho công ty LING Yi 25,70: 4 suất ăn BunChieu25', CAST(N'2023-11-06 11:45:31.850' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10140, N'mp3_short', N'Công ty LING Y: Thêm 4 suất Bún', CAST(N'2023-11-06 11:45:31.850' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10141, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=6;id_ca=1;order_id[]=43,13;order_sl[]=5,0;uid=Trong;', CAST(N'2023-11-06 11:45:41.920' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10142, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Sáng cho công ty VESOGO 25: 5 suất ăn BunChieuVSG20', CAST(N'2023-11-06 11:45:41.920' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10143, N'mp3_short', N'Công ty Ve Sô Gâu: Thêm 5 suất Bún', CAST(N'2023-11-06 11:45:41.920' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10144, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=11;id_ca=1;order_id[]=36,14,12,13;order_sl[]=0,0,0,4;uid=Trong;', CAST(N'2023-11-06 11:46:00.400' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10145, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Sáng cho công ty GW 25,(25,40): 4 suất ăn Việt Nam 25k', CAST(N'2023-11-06 11:46:00.400' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10146, N'mp3_short', N'Công ty Gờ Vê Kép: Thêm 4 suất Việt Nam', CAST(N'2023-11-06 11:46:00.400' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10147, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=8;id_ca=1;order_id[]=16,13;order_sl[]=5,0;uid=Trong;', CAST(N'2023-11-06 11:46:11.423' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10148, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Sáng cho công ty TIA SÁNG 25: 5 suất ăn Sữa Fami Tia Sáng 25', CAST(N'2023-11-06 11:46:11.423' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10149, N'mp3_short', N'Công ty Tia Sáng: Thêm 5 suất Khác', CAST(N'2023-11-06 11:46:11.423' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10150, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=12;id_ca=1;order_id[]=30,20,34,13;order_sl[]=5,0,0,0;uid=Trong;', CAST(N'2023-11-06 11:46:20.940' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10151, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Sáng cho công ty GEP 25,(50,40): 5 suất ăn BsMocChauGEP25', CAST(N'2023-11-06 11:46:20.957' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10152, N'mp3_short', N'Công ty Gép: Thêm 5 suất Khác', CAST(N'2023-11-06 11:46:20.957' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10153, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=13;id_ca=1;order_id[]=31,13;order_sl[]=5,0;uid=Trong;', CAST(N'2023-11-06 11:46:39.270' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10154, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Sáng cho công ty PRIMETECH 25: 5 suất ăn Mỳ PrimeTech T25', CAST(N'2023-11-06 11:46:39.270' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10155, N'mp3_short', N'Công ty Pờ ri mê tếch: Thêm 5 suất Khác', CAST(N'2023-11-06 11:46:39.270' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10156, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=16;id_ca=1;order_id[]=26,23,9;order_sl[]=456,0,0;uid=Trong;', CAST(N'2023-11-06 11:46:50.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10157, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Sáng cho công ty SCR 30: 456 suất ăn MocChauSCR30', CAST(N'2023-11-06 11:46:50.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10158, N'mp3_short', N'Công ty ét cê rờ: Thêm 456 suất Khác', CAST(N'2023-11-06 11:46:50.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10159, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=16;id_ca=1;order_id[]=26,23,9;order_sl[]=4,0,0;uid=Trong;', CAST(N'2023-11-06 11:47:01.867' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10160, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Sáng cho công ty SCR 30: 4 suất ăn MocChauSCR30', CAST(N'2023-11-06 11:47:01.867' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10161, N'mp3_short', N'Công ty ét cê rờ: Giảm -452 suất Khác', CAST(N'2023-11-06 11:47:01.867' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10162, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 11:47:23.287' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10163, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=4;id_ca=2;order_id[]=40,13;order_sl[]=10,160;uid=Trong;', CAST(N'2023-11-06 11:48:13.090' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10164, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty NLX 25,40: 10 suất ăn TQ NLX Vinamik 40, 160 suất ăn Việt Nam 25k', CAST(N'2023-11-06 11:48:13.090' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10165, N'mp3_short', N'Công ty Nờ Lờ X: ', CAST(N'2023-11-06 11:48:13.090' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10166, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=5;id_ca=2;order_id[]=25,15,13;order_sl[]=0,105,370;uid=Trong;', CAST(N'2023-11-06 11:48:26.130' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10167, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty LING Yi 25,70: 105 suất ăn TQ70, 370 suất ăn Việt Nam 25k', CAST(N'2023-11-06 11:48:26.147' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10168, N'mp3_short', N'Công ty LING Y: ', CAST(N'2023-11-06 11:48:26.147' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10169, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=7;id_ca=2;order_id[]=13;order_sl[]=36;uid=Trong;', CAST(N'2023-11-06 11:48:44.537' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10170, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty TOMO 25: 36 suất ăn Việt Nam 25k', CAST(N'2023-11-06 11:48:44.537' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10171, N'mp3_short', N'Công ty Tô Mô: Giảm -100 suất Việt Nam', CAST(N'2023-11-06 11:48:44.537' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10172, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=8;id_ca=2;order_id[]=16,13;order_sl[]=10,36;uid=Trong;', CAST(N'2023-11-06 11:48:57.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10173, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty TIA SÁNG 25: 10 suất ăn Sữa Fami Tia Sáng 25, 36 suất ăn Việt Nam 25k', CAST(N'2023-11-06 11:48:57.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10174, N'mp3_short', N'Công ty Tia Sáng: Thêm 10 suất Khác', CAST(N'2023-11-06 11:48:57.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10175, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=9;id_ca=2;order_id[]=17,12,13;order_sl[]=6,8,46;uid=Trong;', CAST(N'2023-11-06 11:49:08.780' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10176, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty THONOVA 25,40: 6 suất ăn Bánh Sữa Thornova 25, 8 suất ăn TQ40, 46 suất ăn Việt Nam 25k', CAST(N'2023-11-06 11:49:08.780' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10177, N'mp3_short', N'Công ty Thô Nô Va: ', CAST(N'2023-11-06 11:49:08.780' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10178, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=10;id_ca=2;order_id[]=25,28,18,13;order_sl[]=0,0,16,302;uid=Trong;', CAST(N'2023-11-06 11:49:17.490' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10179, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty NVC 25,35: 16 suất ăn TQ35, 302 suất ăn Việt Nam 25k', CAST(N'2023-11-06 11:49:17.490' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10180, N'mp3_short', N'Công ty Nờ Vê Xê: ', CAST(N'2023-11-06 11:49:17.490' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10181, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=10;id_ca=2;order_id[]=25,28,18,13;order_sl[]=0,0,16,302;uid=Trong;', CAST(N'2023-11-06 11:49:29.263' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10182, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty NVC 25,35: 16 suất ăn TQ35, 302 suất ăn Việt Nam 25k', CAST(N'2023-11-06 11:49:29.263' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10183, N'mp3_short', N'Công ty Nờ Vê Xê: ', CAST(N'2023-11-06 11:49:29.263' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10184, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=11;id_ca=2;order_id[]=36,14,12,13;order_sl[]=7,17,0,86;uid=Trong;', CAST(N'2023-11-06 11:49:54.087' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10185, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty GW 25,(25,40): 7 suất ăn TQ_GW_TH40, 17 suất ăn TQ25, 86 suất ăn Việt Nam 25k', CAST(N'2023-11-06 11:49:54.103' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10186, N'mp3_short', N'Công ty Gờ Vê Kép: ', CAST(N'2023-11-06 11:49:54.103' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10187, N'edit_company', N'ip=171.240.70.135;action=edit_company;id=11;name=GW 25,(25,40);tenviet=undefined;address=Quế Võ 3;gps=null,null;phone=null;zalo=undefined;default_order[]=38,37,36,14,13;data_order=[{"id":38,"thu":[7,8]},{"id":37,"thu":[6,8]},{"id":36,"thu":[2,3,4,5,6,8]},{"id":14,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-06 11:50:21.987' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10188, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=12;id_ca=2;order_id[]=30,20,34,13;order_sl[]=3,1,8,85;uid=Trong;', CAST(N'2023-11-06 11:50:53.717' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10189, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty GEP 25,(50,40): 3 suất ăn BsMocChauGEP25, 1 suất ăn TQ K Cay GEP 40, 8 suất ăn TQGEP50, 85 suất ăn Việt Nam 25k', CAST(N'2023-11-06 11:50:53.717' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10190, N'mp3_short', N'Công ty Gép: Thêm 5 suất Trung Quốc', CAST(N'2023-11-06 11:50:53.717' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10191, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=13;id_ca=2;order_id[]=31,13;order_sl[]=21,52;uid=Trong;', CAST(N'2023-11-06 11:51:06.240' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10192, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty PRIMETECH 25: 21 suất ăn Mỳ PrimeTech T25, 52 suất ăn Việt Nam 25k', CAST(N'2023-11-06 11:51:06.253' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10193, N'mp3_short', N'Công ty Pờ ri mê tếch: ', CAST(N'2023-11-06 11:51:06.253' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10194, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=14;id_ca=2;order_id[]=9;order_sl[]=9;uid=Trong;', CAST(N'2023-11-06 11:51:14.887' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10195, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty MOATECH 30: 9 suất ăn Việt Nam 30k', CAST(N'2023-11-06 11:51:14.903' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10196, N'mp3_short', N'Công ty Mô A Tếch: ', CAST(N'2023-11-06 11:51:14.903' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10197, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=15;id_ca=2;order_id[]=45,13;order_sl[]=0,50;uid=Trong;', CAST(N'2023-11-06 11:51:29.840' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10198, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty ETS 25: 50 suất ăn Việt Nam 25k', CAST(N'2023-11-06 11:51:29.840' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10199, N'mp3_short', N'Công ty E  tê ét: Giảm -12 suất Việt Nam', CAST(N'2023-11-06 11:51:29.840' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10200, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=18;id_ca=2;order_id[]=13;order_sl[]=33;uid=Trong;', CAST(N'2023-11-06 11:51:48.573' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10201, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty GMAX 25: 33 suất ăn Việt Nam 25k', CAST(N'2023-11-06 11:51:48.573' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10202, N'mp3_short', N'Công ty gờ mắc: Giảm -7 suất Việt Nam', CAST(N'2023-11-06 11:51:48.573' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10203, N'CHECK LOGIN OK', N'hoa=Sếp Hòa => CSKH', CAST(N'2023-11-06 11:52:41.517' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10204, N'add_suat_an', N'ip=113.186.3.221;action=add_suat_an;name=Sữa Chua Elovi;sign=SC_Elovi_Bonus;price=0;loai=1;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 12:10:20.590' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10205, N'enable_suat_an', N'ip=113.186.3.221;action=enable_suat_an;id=46;name=Sữa Chua Elovi;sign=SC_Elovi_Bonus;price=0;loai=3;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 12:10:41.637' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10206, N'delete_suat_an', N'ip=113.186.3.221;action=delete_suat_an;id=46;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 12:11:13.120' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10207, N'add_suat_an', N'ip=113.186.3.221;action=add_suat_an;name=Sữa Chua Elovi;sign=Elovi_bonus;price=0;loai=3;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 12:11:46.127' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10208, N'add_combo', N'ip=113.186.3.221;action=add_combo;ids=47;idn=5;sl=1;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 12:12:25.350' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10209, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=13;name=PRIMETECH 25;tenviet=undefined;address=Quế Võ 3;gps=null,null;phone=null;zalo=undefined;default_order[]=31,47,13;data_order=[{"id":31,"thu":[2,3,4,5,6,7,8]},{"id":47,"thu":[4]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 12:13:55.750' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10210, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=13;name=PRIMETECH 25;tenviet=undefined;address=Quế Võ 3;gps=null,null;phone=null;zalo=undefined;default_order[]=31,47,13;data_order=[{"id":31,"thu":[2,3,4,5,6,7,8]},{"id":47,"thu":[4]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 12:13:59.013' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10211, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=13;name=PRIMETECH 25;tenviet=PRIMETECH;address=Quế Võ 3;gps=null,null;phone=null;zalo=undefined;default_order[]=31,47,13;data_order=[{"id":31,"thu":[2,3,4,5,6,7,8]},{"id":47,"thu":[4]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 12:14:09.770' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10212, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:16:36.543' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10213, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:16:59.060' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10214, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:17:33.117' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10215, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:18:41.733' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10216, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:18:59.203' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10217, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:21:55.007' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10218, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=13;name=PRIMETECH 25;tenviet=Pờ RI ME TECH;address=Quế Võ 3;gps=null,null;phone=null;zalo=undefined;default_order[]=31,47,13;data_order=[{"id":31,"thu":[2,3,4,5,6,7,8]},{"id":47,"thu":[4]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 12:23:10.170' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10219, N'edit_company', N'ip=113.186.3.221;action=edit_company;id=13;name=PRIMETECH 25;tenviet=Pờ RI ME TECH;address=Quế Võ 3;gps=null,null;phone=null;zalo=undefined;default_order[]=31,47,13;data_order=[{"id":31,"thu":[2,3,4,5,6,7,8]},{"id":47,"thu":[2,4]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 12:23:57.467' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10220, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:24:46.000' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10221, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:26:20.043' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10222, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:26:27.043' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10223, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:26:39.070' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10224, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:26:44.940' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10225, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:27:20.120' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10226, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=7;id_ca=2;order_id[]=13;order_sl[]=37;uid=Trong;', CAST(N'2023-11-06 12:27:51.923' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10227, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty TOMO 25: 37 suất ăn Việt Nam 25k', CAST(N'2023-11-06 12:27:51.923' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10228, N'mp3_short', N'Công ty Tô Mô: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 12:27:51.923' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10229, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=7;id_ca=2;order_id[]=13;order_sl[]=36;uid=Trong;', CAST(N'2023-11-06 12:28:01.390' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10230, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty TOMO 25: 36 suất ăn Việt Nam 25k', CAST(N'2023-11-06 12:28:01.403' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10231, N'mp3_short', N'Công ty Tô Mô: Giảm -1 suất Việt Nam', CAST(N'2023-11-06 12:28:01.403' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10232, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:28:07.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10233, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:28:46.850' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10234, N'edit_company', N'ip=171.240.70.135;action=edit_company;id=13;name=PRIMETECH 25;tenviet=Pờ RI ME TECH;address=Quế Võ 3;gps=null,null;phone=null;zalo=undefined;default_order[]=31,47,13;data_order=[{"id":31,"thu":[2,3,4,5,6,7,8]},{"id":47,"thu":[2]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-06 12:28:47.830' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10235, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=13;id_ca=2;order_id[]=31,47,13;order_sl[]=21,0,52;uid=Trong;', CAST(N'2023-11-06 12:28:49.833' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10236, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty PRIMETECH 25: 21 suất ăn Mỳ PrimeTech T25, 52 suất ăn Việt Nam 25k', CAST(N'2023-11-06 12:28:49.833' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10237, N'mp3_short', N'Công ty Pờ RI ME TECH: ', CAST(N'2023-11-06 12:28:49.833' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10238, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:28:54.623' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10239, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:28:57.047' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10240, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:29:41.933' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10241, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:29:59.577' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10242, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:32:41.640' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10243, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=28;id_ca=3;order_id[]=32,22,24,9;order_sl[]=1,2,3,4;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 12:39:07.517' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10244, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty MAXIN 30,30: 1 suất ăn Fami Naxin 30, 2 suất ăn THtrueMilkNaxin30, 3 suất ăn TQ30, 4 suất ăn Việt Nam 30k', CAST(N'2023-11-06 12:39:07.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10245, N'mp3_short', N'Công ty MAX IN: Thêm 3 suất Trung Quốc, Thêm 4 suất Việt Nam, Thêm 3 suất Khác', CAST(N'2023-11-06 12:39:07.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10246, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=28;id_ca=3;order_id[]=32,22,24,9;order_sl[]=1,2,0,4;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 12:39:22.743' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10247, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty MAXIN 30,30: 1 suất ăn Fami Naxin 30, 2 suất ăn THtrueMilkNaxin30, 4 suất ăn Việt Nam 30k', CAST(N'2023-11-06 12:39:22.743' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10248, N'mp3_short', N'Công ty MAX IN: Giảm -3 suất Trung Quốc', CAST(N'2023-11-06 12:39:22.743' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10249, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=28;id_ca=3;order_id[]=32,22,24,9;order_sl[]=0,1,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 12:39:52.790' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10250, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty MAXIN 30,30: 1 suất ăn THtrueMilkNaxin30', CAST(N'2023-11-06 12:39:52.803' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10251, N'mp3_short', N'Công ty MAX IN: Giảm -4 suất Việt Nam, Giảm -2 suất Khác', CAST(N'2023-11-06 12:39:52.803' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10252, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=28;id_ca=3;order_id[]=32,22,24,9;order_sl[]=0,0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 12:40:02.443' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10253, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Tối của công ty MAXIN 30,30', CAST(N'2023-11-06 12:40:02.443' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10254, N'mp3_short', N'Công ty MAX IN: Giảm -1 suất Khác. Xóa hết rồi!', CAST(N'2023-11-06 12:40:02.443' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10255, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:44:18.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10256, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:45:45.150' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10257, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:46:19.540' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10258, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:49:19.730' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10259, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:52:48.067' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10260, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:53:53.443' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10261, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:53:54.340' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10262, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:54:20.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10263, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:54:26.417' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10264, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 12:54:28.390' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10265, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=28;id_ca=3;order_id[]=32,22,24,9;order_sl[]=0,2,3,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 12:59:13.583' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10266, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty MAXIN 30,30: 2 suất ăn THtrueMilkNaxin30, 3 suất ăn TQ30', CAST(N'2023-11-06 12:59:13.583' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10267, N'mp3_short', N'Công ty MAX IN: Thêm 3 suất Trung Quốc, Thêm 2 suất Khác', CAST(N'2023-11-06 12:59:13.583' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10268, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=28;id_ca=3;order_id[]=32,22,24,9;order_sl[]=0,2,3,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:00:02.237' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10269, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty MAXIN 30,30: 2 suất ăn THtrueMilkNaxin30, 3 suất ăn TQ30', CAST(N'2023-11-06 13:00:02.253' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10270, N'mp3_short', N'Công ty MAX IN: ', CAST(N'2023-11-06 13:00:02.253' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10271, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=29;id_ca=3;order_id[]=9;order_sl[]=13;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:03:03.553' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10272, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ILKWANG 30: 13 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:03:03.677' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10273, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=29;id_ca=3;order_id[]=9;order_sl[]=13;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:03:14.670' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10274, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ILKWANG 30: 13 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:03:14.670' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10275, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=29;id_ca=3;order_id[]=9;order_sl[]=13;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:05:28.393' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10276, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ILKWANG 30: 13 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:05:28.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10277, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=29;id_ca=3;order_id[]=9;order_sl[]=13;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:05:34.253' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10278, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ILKWANG 30: 13 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:05:34.270' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10279, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=29;id_ca=3;order_id[]=9;order_sl[]=13;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:09:27.820' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10280, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ILKWANG 30: 13 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:09:27.943' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10281, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=29;id_ca=3;order_id[]=9;order_sl[]=13;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:09:32.680' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10282, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ILKWANG 30: 13 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:09:32.680' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10283, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=29;id_ca=3;order_id[]=9;order_sl[]=13;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:11:50.670' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10284, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ILKWANG 30: 13 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:11:50.827' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10285, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=28;id_ca=3;order_id[]=32,22,24,9;order_sl[]=0,2,3,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:11:57.273' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10286, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty MAXIN 30,30: 2 suất ăn THtrueMilkNaxin30, 3 suất ăn TQ30', CAST(N'2023-11-06 13:11:57.273' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10287, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=28;id_ca=3;order_id[]=32,22,24,9;order_sl[]=0,2,3,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:12:08.727' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10288, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty MAXIN 30,30: 2 suất ăn THtrueMilkNaxin30, 3 suất ăn TQ30', CAST(N'2023-11-06 13:12:08.727' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10289, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 13:14:51.773' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10290, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=28;id_ca=3;order_id[]=32,22,24,9;order_sl[]=0,2,3,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:14:58.473' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10291, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty MAXIN 30,30: 2 suất ăn THtrueMilkNaxin30, 3 suất ăn TQ30', CAST(N'2023-11-06 13:14:58.473' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10292, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 13:15:23.310' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10293, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 13:15:24.920' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10294, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 13:16:57.547' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10295, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=28;id_ca=3;order_id[]=32,22,24,9;order_sl[]=0,2,3,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:17:02.283' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10296, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty MAXIN 30,30: 2 suất ăn THtrueMilkNaxin30, 3 suất ăn TQ30', CAST(N'2023-11-06 13:17:02.283' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10297, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=28;id_ca=3;order_id[]=32,22,24,9;order_sl[]=0,2,1,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:17:10.753' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10298, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty MAXIN 30,30: 2 suất ăn THtrueMilkNaxin30, 1 suất ăn TQ30', CAST(N'2023-11-06 13:17:10.753' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10299, N'mp3_short', N'Công ty MAX IN: Giảm -2 suất Trung Quốc', CAST(N'2023-11-06 13:17:10.753' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10300, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=28;id_ca=3;order_id[]=32,22,24,9;order_sl[]=0,0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:17:19.337' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10301, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Tối của công ty MAXIN 30,30', CAST(N'2023-11-06 13:17:19.337' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10302, N'mp3_short', N'Công ty MAX IN: Giảm -1 suất Trung Quốc, Giảm -2 suất Khác. Xóa hết rồi!', CAST(N'2023-11-06 13:17:19.337' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10303, N'edit_company', N'ip=171.240.70.135;action=edit_company;id=4;name=NLX 25,40;tenviet=Năng Lượng Xanh;address=Đại Đồng;gps=null,null;phone=null;zalo=;default_order[]=39,41,40,13;data_order=[{"id":39,"thu":[]},{"id":41,"thu":[3,5,7,8]},{"id":40,"thu":[2,4,6,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-06 13:18:15.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10304, N'edit_company', N'ip=171.240.70.135;action=edit_company;id=11;name=GW 25,(25,40);tenviet=Green Wing;address=Quế Võ 3;gps=null,null;phone=null;zalo=;default_order[]=38,37,36,14,13;data_order=[{"id":38,"thu":[7,8]},{"id":37,"thu":[6,8]},{"id":36,"thu":[2,3,4,5,6,8]},{"id":14,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-06 13:19:51.400' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10305, N'edit_company', N'ip=171.240.70.135;action=edit_company;id=12;name=GEP 25,(50,40);tenviet=Gờ e Pê;address=Quế Võ 3;gps=null,null;phone=null;zalo=;default_order[]=30,20,34,13;data_order=[{"id":30,"thu":[2,3,4,5,6,7,8]},{"id":20,"thu":[2,3,4,5,6,7,8]},{"id":34,"thu":[2,3,4,5,6,7,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-06 13:20:35.793' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10306, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 13:22:07.467' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10307, N'edit_company', N'ip=171.240.70.135;action=edit_company;id=16;name=SCR 30;tenviet=Ét Cờ Rum;address=MĨ Á;gps=null,null;phone=null;zalo=;default_order[]=26,23,9;data_order=[{"id":26,"thu":[2,3,4,5,6,7,8]},{"id":23,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-06 13:22:22.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10308, N'edit_company', N'ip=171.240.70.135;action=edit_company;id=28;name=MAXIN 30,30;tenviet=Ma Xin;address=Quế Võ 2;gps=null,null;phone=;zalo=;default_order[]=32,22,24,9;data_order=[{"id":32,"thu":[2,3,4,5,6,7,8]},{"id":22,"thu":[2,3,4,5,6,7,8]},{"id":24,"thu":[2,3,4,5,6,7,8]},{"id":9,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-06 13:23:01.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10309, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=13;id_ca=3;order_id[]=31,47,13;order_sl[]=3,3,0;uid=Trong;', CAST(N'2023-11-06 13:36:11.310' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10310, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty PRIMETECH 25: 3 suất ăn Mỳ PrimeTech T25, 3 suất ăn Sữa Chua Elovi', CAST(N'2023-11-06 13:36:11.327' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10311, N'mp3_short', N'Công ty Pờ RI ME TECH: Thêm 6 suất Khác', CAST(N'2023-11-06 13:36:11.327' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10312, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=13;id_ca=3;order_id[]=31,47,13;order_sl[]=3,0,0;uid=Trong;', CAST(N'2023-11-06 13:38:51.587' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10313, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty PRIMETECH 25: 3 suất ăn Mỳ PrimeTech T25', CAST(N'2023-11-06 13:38:51.603' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10314, N'mp3_short', N'Công ty Pờ RI ME TECH: Giảm -3 suất Khác', CAST(N'2023-11-06 13:38:51.603' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10315, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=13;id_ca=2;order_id[]=31,47,13;order_sl[]=21,73,52;uid=Trong;', CAST(N'2023-11-06 13:39:09.967' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10316, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Trưa cho công ty PRIMETECH 25: 21 suất ăn Mỳ PrimeTech T25, 73 suất ăn Sữa Chua Elovi, 52 suất ăn Việt Nam 25k', CAST(N'2023-11-06 13:39:09.967' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10317, N'mp3_short', N'Công ty Pờ RI ME TECH: Thêm 73 suất Khác', CAST(N'2023-11-06 13:39:09.967' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10318, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=1;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:39:50.763' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10319, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 1 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:39:50.763' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10320, N'mp3_short', N'Công ty E T Sô La: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 13:39:50.763' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10321, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=2;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:39:59.250' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10322, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 2 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:39:59.250' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10323, N'mp3_short', N'Công ty E T Sô La: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 13:39:59.250' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10324, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=3;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:40:05.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10325, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 3 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:40:05.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10326, N'mp3_short', N'Công ty E T Sô La: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 13:40:05.870' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10327, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=4;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:41:27.510' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10328, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 4 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:41:27.527' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10329, N'mp3_short', N'Công ty E T Sô La: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 13:41:27.527' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10330, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=1;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:43:03.930' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10331, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 1 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:43:03.930' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10332, N'mp3_short', N'Công ty E T Sô La: Giảm -3 suất Việt Nam', CAST(N'2023-11-06 13:43:03.930' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10333, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=2;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:44:03.740' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10334, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 2 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:44:03.740' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10335, N'mp3_short', N'Công ty E T Sô La: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 13:44:03.740' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10336, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=2;id_ca=3;order_id[]=13,10,27;order_sl[]=0,11,0;uid=Trong;', CAST(N'2023-11-06 13:44:31.773' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10337, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty XYC 28: 11 suất ăn Việt Nam 28k', CAST(N'2023-11-06 13:44:31.790' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10338, N'mp3_short', N'Công ty X Y C: Thêm 11 suất Việt Nam', CAST(N'2023-11-06 13:44:31.790' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10339, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=3;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:45:20.960' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10340, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 3 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:45:20.973' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10341, N'mp3_short', N'Công ty E T Sô La: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 13:45:20.973' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10342, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 13:45:28.653' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10343, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=1;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:52:37.957' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10344, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 1 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:52:37.973' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10345, N'mp3_short', N'Công ty E T Sô La: Giảm -2 suất Việt Nam', CAST(N'2023-11-06 13:52:37.973' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10346, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=2;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:52:44.990' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10347, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 2 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:52:46.060' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10348, N'mp3_short', N'Công ty E T Sô La: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 13:52:46.060' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10349, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=2;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:52:46.183' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10350, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 2 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:52:46.200' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10351, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=160;uid=Trong;', CAST(N'2023-11-06 13:53:33.110' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10352, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty ET SoLar 30: 160 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:53:33.127' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10353, N'mp3_short', N'Công ty E T Sô La: Thêm 158 suất Việt Nam', CAST(N'2023-11-06 13:53:33.127' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10354, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=3;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:54:12.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10355, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 3 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:54:12.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10356, N'mp3_short', N'Công ty E T Sô La: Giảm -157 suất Việt Nam', CAST(N'2023-11-06 13:54:12.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10357, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=4;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:54:20.627' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10358, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 4 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:54:20.643' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10359, N'mp3_short', N'Công ty E T Sô La: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 13:54:20.643' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10360, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=6;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:54:49.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10361, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 6 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:54:49.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10362, N'mp3_short', N'Công ty E T Sô La: Thêm 2 suất Việt Nam', CAST(N'2023-11-06 13:54:49.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10363, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=11;id_ca=3;order_id[]=36,14,13;order_sl[]=1,0,93;uid=Trong;', CAST(N'2023-11-06 13:55:21.813' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10364, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty GW 25,(25,40): 1 suất ăn TQ_GW_TH40, 93 suất ăn Việt Nam 25k', CAST(N'2023-11-06 13:55:21.830' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10365, N'mp3_short', N'Công ty Green Wing: Thêm 1 suất Trung Quốc, Thêm 93 suất Việt Nam', CAST(N'2023-11-06 13:55:21.830' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10366, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=1;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:55:53.180' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10367, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 1 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:55:53.180' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10368, N'mp3_short', N'Công ty E T Sô La: Giảm -5 suất Việt Nam', CAST(N'2023-11-06 13:55:53.180' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10369, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=5;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:56:12.713' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10370, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 5 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:56:12.713' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10371, N'mp3_short', N'Công ty E T Sô La: Thêm 4 suất Việt Nam', CAST(N'2023-11-06 13:56:12.713' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10372, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=2;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:56:23.520' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10373, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 2 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:56:23.520' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10374, N'mp3_short', N'Công ty E T Sô La: Giảm -3 suất Việt Nam', CAST(N'2023-11-06 13:56:23.520' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10375, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=6;id_ca=3;order_id[]=43,13;order_sl[]=73,0;uid=Trong;', CAST(N'2023-11-06 13:56:30.473' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10376, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty VESOGO 25: 73 suất ăn BunChieuVSG20', CAST(N'2023-11-06 13:56:30.473' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10377, N'mp3_short', N'Công ty Ve Sô Gâu: Thêm 73 suất Bún', CAST(N'2023-11-06 13:56:30.473' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10378, N'edit_company', N'ip=171.240.70.135;action=edit_company;id=11;name=GW 25,(25,40);tenviet=Green Wing;address=Quế Võ 3;gps=null,null;phone=null;zalo=undefined;default_order[]=38,37,36,13;data_order=[{"id":38,"thu":[7,8]},{"id":37,"thu":[6,8]},{"id":36,"thu":[2,3,4,5,6,8]},{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Trong;', CAST(N'2023-11-06 13:57:05.663' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10379, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=11;id_ca=3;order_id[]=36,14,13;order_sl[]=1,0,93;uid=Trong;', CAST(N'2023-11-06 13:57:08.903' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10380, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty GW 25,(25,40): 1 suất ăn TQ_GW_TH40, 93 suất ăn Việt Nam 25k', CAST(N'2023-11-06 13:57:08.903' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10381, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=6;id_ca=3;order_id[]=43,13;order_sl[]=73,0;uid=Trong;', CAST(N'2023-11-06 13:57:18.033' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10382, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty VESOGO 25: 73 suất ăn BunChieuVSG20', CAST(N'2023-11-06 13:57:18.040' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10383, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=6;id_ca=3;order_id[]=43,13;order_sl[]=74,0;uid=Trong;', CAST(N'2023-11-06 13:57:26.983' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10384, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty VESOGO 25: 74 suất ăn BunChieuVSG20', CAST(N'2023-11-06 13:57:27.000' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10385, N'mp3_short', N'Công ty Ve Sô Gâu: Thêm 1 suất Bún', CAST(N'2023-11-06 13:57:27.000' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10386, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=6;id_ca=3;order_id[]=43,13;order_sl[]=73,0;uid=Trong;', CAST(N'2023-11-06 13:57:32.960' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10387, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty VESOGO 25: 73 suất ăn BunChieuVSG20', CAST(N'2023-11-06 13:57:32.973' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10388, N'mp3_short', N'Công ty Ve Sô Gâu: Giảm -1 suất Bún', CAST(N'2023-11-06 13:57:32.973' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10389, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=11;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 13:58:46.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10390, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 11 suất ăn Việt Nam 30k', CAST(N'2023-11-06 13:58:46.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10391, N'mp3_short', N'Công ty E T Sô La: Thêm 9 suất Việt Nam', CAST(N'2023-11-06 13:58:46.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10392, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=9;id_ca=3;order_id[]=17,12,13;order_sl[]=0,6,0;uid=Trong;', CAST(N'2023-11-06 13:59:17.333' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10393, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty THONOVA 25,40: 6 suất ăn TQ40', CAST(N'2023-11-06 13:59:17.333' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10394, N'mp3_short', N'Công ty Thô Nô Va: Thêm 6 suất Trung Quốc', CAST(N'2023-11-06 13:59:17.333' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10395, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=3;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 14:01:23.013' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10396, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 3 suất ăn Việt Nam 30k', CAST(N'2023-11-06 14:01:23.030' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10397, N'mp3_short', N'Công ty E T Sô La: Giảm -8 suất Việt Nam', CAST(N'2023-11-06 14:01:23.030' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10398, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=5;id_ca=3;order_id[]=25,15,13;order_sl[]=160,100,100;uid=Trong;', CAST(N'2023-11-06 14:04:11.000' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10399, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty LING Yi 25,70: 160 suất ăn BunChieu25, 100 suất ăn TQ70, 100 suất ăn Việt Nam 25k', CAST(N'2023-11-06 14:04:11.017' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10400, N'mp3_short', N'Công ty LING Y: Thêm 100 suất Trung Quốc, Thêm 100 suất Việt Nam, Thêm 160 suất Bún', CAST(N'2023-11-06 14:04:11.017' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10401, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 14:04:21.907' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10402, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=5;id_ca=3;order_id[]=25,15,13;order_sl[]=160,100,100;uid=Trong;', CAST(N'2023-11-06 14:04:27.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10403, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty LING Yi 25,70: 160 suất ăn BunChieu25, 100 suất ăn TQ70, 100 suất ăn Việt Nam 25k', CAST(N'2023-11-06 14:04:27.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10404, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=44;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 14:04:38.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10405, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 44 suất ăn Việt Nam 30k', CAST(N'2023-11-06 14:04:38.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10406, N'mp3_short', N'Công ty E T Sô La: Thêm 41 suất Việt Nam', CAST(N'2023-11-06 14:04:38.230' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10407, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=3;id_ca=3;order_id[]=21,19,14,13;order_sl[]=7,0,0,60;uid=Trong;', CAST(N'2023-11-06 14:06:27.963' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10408, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty BET 25,50: 7 suất ăn MỳBET25, 60 suất ăn Việt Nam 25k', CAST(N'2023-11-06 14:06:27.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10409, N'mp3_short', N'Công ty Bét: Thêm 60 suất Việt Nam, Thêm 7 suất Khác', CAST(N'2023-11-06 14:06:27.980' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10410, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=19;id_ca=3;order_id[]=25,9;order_sl[]=205,0;uid=Trong;', CAST(N'2023-11-06 14:08:41.797' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10411, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty ECT 30: 205 suất ăn BunChieu25', CAST(N'2023-11-06 14:08:41.830' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10412, N'mp3_short', N'Công ty E C T: Thêm 205 suất Bún', CAST(N'2023-11-06 14:08:41.830' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10413, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=10;id_ca=3;order_id[]=25,28,18,13;order_sl[]=23,0,0,0;uid=Trong;', CAST(N'2023-11-06 14:11:15.827' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10414, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty NVC 25,35: 23 suất ăn BunChieu25', CAST(N'2023-11-06 14:11:15.840' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10415, N'mp3_short', N'Công ty Nờ Vê Xê: Thêm 23 suất Bún', CAST(N'2023-11-06 14:11:15.840' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10416, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=7;id_ca=3;order_id[]=13;order_sl[]=19;uid=Trong;', CAST(N'2023-11-06 14:11:55.110' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10417, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty TOMO 25: 19 suất ăn Việt Nam 25k', CAST(N'2023-11-06 14:11:55.110' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10418, N'mp3_short', N'Công ty Tô Mô: Thêm 19 suất Việt Nam', CAST(N'2023-11-06 14:11:55.110' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10419, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 14:12:28.640' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10420, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Tối của công ty ET SoLar 30', CAST(N'2023-11-06 14:12:28.640' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10421, N'mp3_short', N'Công ty E T Sô La: Giảm -44 suất Việt Nam. Xóa hết rồi!', CAST(N'2023-11-06 14:12:28.640' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10422, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 14:12:39.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10423, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Tối của công ty ET SoLar 30', CAST(N'2023-11-06 14:12:39.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10424, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=1;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 14:12:44.003' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10425, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Tối cho công ty ET SoLar 30: 1 suất ăn Việt Nam 30k', CAST(N'2023-11-06 14:12:44.007' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10426, N'mp3_short', N'Công ty E T Sô La: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 14:12:44.007' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10427, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 14:12:47.847' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10428, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Tối của công ty ET SoLar 30', CAST(N'2023-11-06 14:12:47.847' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10429, N'mp3_short', N'Công ty E T Sô La: Giảm -1 suất Việt Nam. Xóa hết rồi!', CAST(N'2023-11-06 14:12:47.847' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10430, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=160;uid=Trong;', CAST(N'2023-11-06 14:13:20.740' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10431, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty ET SoLar 30: 160 suất ăn Việt Nam 30k', CAST(N'2023-11-06 14:13:20.740' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10432, N'mp3_short', N'Công ty E T Sô La: Thêm 160 suất Việt Nam', CAST(N'2023-11-06 14:13:20.740' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10433, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 14:14:12.060' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10434, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 14:18:41.043' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10435, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 14:20:40.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10436, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 14:20:41.370' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10437, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=1;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 14:20:44.837' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10438, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty ET SoLar 30: 1 suất ăn Việt Nam 30k', CAST(N'2023-11-06 14:20:44.837' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10439, N'mp3_short', N'Công ty E T Sô La: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 14:20:44.837' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10440, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=4;id_ca=3;order_id[]=40,13;order_sl[]=3,140;uid=Trong;', CAST(N'2023-11-06 14:22:01.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10441, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty NLX 25,40: 3 suất ăn TQ NLX Vinamik 40, 140 suất ăn Việt Nam 25k', CAST(N'2023-11-06 14:22:01.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10442, N'mp3_short', N'Công ty Năng Lượng Xanh: Thêm 3 suất Trung Quốc, Thêm 140 suất Việt Nam', CAST(N'2023-11-06 14:22:01.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10443, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=2;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 14:25:03.110' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10444, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty ET SoLar 30: 2 suất ăn Việt Nam 30k', CAST(N'2023-11-06 14:25:03.123' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10445, N'mp3_short', N'Công ty E T Sô La: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 14:25:03.123' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10446, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 14:50:35.570' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10447, N'add_user', N'ip=171.240.70.135;action=add_user;adduid=Lượng;pw=123456;name=A Lượng;role=3;uid=Trong;', CAST(N'2023-11-06 14:51:21.147' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10448, N'add_user', N'ip=171.240.70.135;action=add_user;adduid=Luong;pw=123456;name=A Lượng;role=3;uid=Trong;', CAST(N'2023-11-06 14:51:53.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10449, N'delete_user', N'ip=171.240.70.135;action=delete_user;deluid=Lượng;uid=Trong;', CAST(N'2023-11-06 14:52:00.443' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10450, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=15;id_ca=3;order_id[]=45,13;order_sl[]=0,19;uid=Trong;', CAST(N'2023-11-06 14:55:22.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10451, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty ETS 25: 19 suất ăn Việt Nam 25k', CAST(N'2023-11-06 14:55:22.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10452, N'mp3_short', N'Công ty E  tê ét: Thêm 19 suất Việt Nam', CAST(N'2023-11-06 14:55:22.223' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10453, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=12;id_ca=3;order_id[]=30,20,34,13;order_sl[]=0,0,8,0;uid=Trong;', CAST(N'2023-11-06 14:56:40.080' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10454, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty GEP 25,(50,40): 8 suất ăn TQGEP50', CAST(N'2023-11-06 14:56:40.080' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10455, N'mp3_short', N'Công ty Gờ e Pê: Thêm 8 suất Trung Quốc', CAST(N'2023-11-06 14:56:40.080' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10456, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=17;id_ca=3;order_id[]=9;order_sl[]=7;uid=Trong;', CAST(N'2023-11-06 14:58:39.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10457, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty TRC 30: 7 suất ăn Việt Nam 30k', CAST(N'2023-11-06 14:58:39.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10458, N'mp3_short', N'Công ty Tê rờ cê: Thêm 7 suất Việt Nam', CAST(N'2023-11-06 14:58:39.890' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10459, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=1;id_ca=3;order_id[]=9;order_sl[]=148;uid=Trong;', CAST(N'2023-11-06 15:04:36.463' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10460, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty ET SoLar 30: 148 suất ăn Việt Nam 30k', CAST(N'2023-11-06 15:04:36.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10461, N'mp3_short', N'Công ty E T Sô La: Giảm -12 suất Việt Nam', CAST(N'2023-11-06 15:04:36.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10462, N'CHECK LOGIN OK', N'hoa=Sếp Hòa => CSKH', CAST(N'2023-11-06 15:24:57.513' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10463, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 15:50:24.113' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10464, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=10;id_ca=3;order_id[]=25,28,18,13;order_sl[]=24,0,0,0;uid=Trong;', CAST(N'2023-11-06 15:50:40.590' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10465, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty NVC 25,35: 24 suất ăn BunChieu25', CAST(N'2023-11-06 15:50:40.747' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10466, N'mp3_short', N'Công ty Nờ Vê Xê: Thêm 1 suất Bún', CAST(N'2023-11-06 15:50:40.747' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10467, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=12;id_ca=3;order_id[]=30,20,34,13;order_sl[]=0,0,9,0;uid=Trong;', CAST(N'2023-11-06 15:51:04.103' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10468, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty GEP 25,(50,40): 9 suất ăn TQGEP50', CAST(N'2023-11-06 15:51:04.103' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10469, N'mp3_short', N'Công ty Gờ e Pê: Thêm 1 suất Trung Quốc', CAST(N'2023-11-06 15:51:04.103' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10470, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=16;id_ca=3;order_id[]=26,23,9;order_sl[]=3,0,6;uid=Trong;', CAST(N'2023-11-06 15:51:29.507' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10471, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty SCR 30: 3 suất ăn MocChauSCR30, 6 suất ăn Việt Nam 30k', CAST(N'2023-11-06 15:51:29.523' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10472, N'mp3_short', N'Công ty Ét Cờ Rum: Thêm 6 suất Việt Nam, Thêm 3 suất Khác', CAST(N'2023-11-06 15:51:29.523' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10473, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=18;id_ca=3;order_id[]=13;order_sl[]=30;uid=Trong;', CAST(N'2023-11-06 15:51:44.820' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10474, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Tối cho công ty GMAX 25: 30 suất ăn Việt Nam 25k', CAST(N'2023-11-06 15:51:44.837' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10475, N'mp3_short', N'Công ty gờ mắc: Thêm 30 suất Việt Nam', CAST(N'2023-11-06 15:51:44.837' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10476, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=3;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 15:55:26.587' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10477, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty ET SoLar 30: 3 suất ăn Việt Nam 30k', CAST(N'2023-11-06 15:55:26.587' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10478, N'mp3_short', N'Công ty E T Sô La: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 15:55:26.587' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10479, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 15:56:48.810' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10480, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=2;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 15:56:54.773' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10481, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty ET SoLar 30: 2 suất ăn Việt Nam 30k', CAST(N'2023-11-06 15:56:54.773' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10482, N'mp3_short', N'Công ty E T Sô La: Giảm -1 suất Việt Nam', CAST(N'2023-11-06 15:56:54.773' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10483, N'save_order', N'ip=113.186.3.221;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=33;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 15:58:27.897' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10484, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty ET SoLar 30: 33 suất ăn Việt Nam 30k', CAST(N'2023-11-06 15:58:27.910' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10485, N'mp3_short', N'Công ty E T Sô La: Thêm 31 suất Việt Nam', CAST(N'2023-11-06 15:58:27.910' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10486, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 16:06:41.357' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10487, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 16:11:40.520' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10488, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=11;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:11:45.560' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10489, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty ET SoLar 30: 11 suất ăn Việt Nam 30k', CAST(N'2023-11-06 16:11:45.573' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10490, N'mp3_short', N'Công ty E T Sô La: Giảm -22 suất Việt Nam', CAST(N'2023-11-06 16:11:45.573' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10491, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 16:15:04.457' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10492, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=22;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:15:07.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10493, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty ET SoLar 30: 22 suất ăn Việt Nam 30k', CAST(N'2023-11-06 16:15:07.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10494, N'mp3_short', N'Công ty E T Sô La: Thêm 11 suất Việt Nam', CAST(N'2023-11-06 16:15:07.480' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10495, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 16:15:10.520' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10496, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=43;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:15:28.290' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10497, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty ET SoLar 30: 43 suất ăn Việt Nam 30k', CAST(N'2023-11-06 16:15:28.290' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10498, N'mp3_short', N'Công ty E T Sô La: Thêm 21 suất Việt Nam', CAST(N'2023-11-06 16:15:28.290' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10499, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 16:16:32.760' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10500, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=111;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:16:38.353' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10501, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty ET SoLar 30: 111 suất ăn Việt Nam 30k', CAST(N'2023-11-06 16:16:38.353' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10502, N'mp3_short', N'Công ty E T Sô La: Thêm 68 suất Việt Nam', CAST(N'2023-11-06 16:16:38.353' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10503, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 16:18:00.530' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10504, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=222;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:24:06.700' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10505, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty ET SoLar 30: 222 suất ăn Việt Nam 30k', CAST(N'2023-11-06 16:24:06.720' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10506, N'mp3_short', N'Công ty E T Sô La: Thêm 111 suất Việt Nam', CAST(N'2023-11-06 16:24:06.720' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10507, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=222;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:24:06.953' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10508, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty ET SoLar 30: 222 suất ăn Việt Nam 30k', CAST(N'2023-11-06 16:24:06.967' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10509, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=77;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:26:51.937' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10510, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty ET SoLar 30: 77 suất ăn Việt Nam 30k', CAST(N'2023-11-06 16:26:52.120' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10511, N'mp3_short', N'Công ty E T Sô La: Giảm -145 suất Việt Nam', CAST(N'2023-11-06 16:26:52.120' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10512, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=55;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:27:21.147' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10513, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty ET SoLar 30: 55 suất ăn Việt Nam 30k', CAST(N'2023-11-06 16:27:21.147' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10514, N'mp3_short', N'Công ty E T Sô La: Giảm -22 suất Việt Nam', CAST(N'2023-11-06 16:27:21.147' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10515, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 16:28:09.043' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10516, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=11;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:28:10.330' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10517, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty ET SoLar 30: 11 suất ăn Việt Nam 30k', CAST(N'2023-11-06 16:28:10.343' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10518, N'mp3_short', N'Công ty E T Sô La: Giảm -44 suất Việt Nam', CAST(N'2023-11-06 16:28:10.343' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10519, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=54;uid=Trong;', CAST(N'2023-11-06 16:28:27.713' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10520, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty ET SoLar 30: 54 suất ăn Việt Nam 30k', CAST(N'2023-11-06 16:28:27.713' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10521, N'mp3_short', N'Công ty E T Sô La: Thêm 43 suất Việt Nam', CAST(N'2023-11-06 16:28:27.713' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10522, N'save_order', N'ip=171.240.70.135;action=save_order;id_company=2;id_ca=4;order_id[]=13,10,27;order_sl[]=0,0,2;uid=Trong;', CAST(N'2023-11-06 16:28:40.850' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10523, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty XYC 28: 2 suất ăn Việt Nam 40k', CAST(N'2023-11-06 16:28:40.880' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10524, N'mp3_short', N'Công ty X Y C: Thêm 2 suất Việt Nam', CAST(N'2023-11-06 16:28:40.880' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10525, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 16:28:42.467' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10526, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=3;id_ca=4;order_id[]=21,19,14,13;order_sl[]=1,2,3,4;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:30:27.127' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10527, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty BET 25,50: 1 suất ăn MỳBET25, 2 suất ăn TQ BET 50, 3 suất ăn TQ25, 4 suất ăn Việt Nam 25k', CAST(N'2023-11-06 16:30:27.127' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10528, N'mp3_short', N'Công ty Bét: Thêm 5 suất Trung Quốc, Thêm 4 suất Việt Nam, Thêm 1 suất Khác', CAST(N'2023-11-06 16:30:27.127' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10529, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=3;id_ca=4;order_id[]=21,19,14,13;order_sl[]=0,0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:30:42.833' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10530, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Đêm của công ty BET 25,50', CAST(N'2023-11-06 16:30:42.840' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10531, N'mp3_short', N'Công ty Bét: Giảm -5 suất Trung Quốc, Giảm -4 suất Việt Nam, Giảm -1 suất Khác. Xóa hết rồi!', CAST(N'2023-11-06 16:30:42.840' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10532, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=3;id_ca=4;order_id[]=21,19,14,13;order_sl[]=0,0,2,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:32:18.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10533, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty BET 25,50: 2 suất ăn TQ25', CAST(N'2023-11-06 16:32:18.590' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10534, N'mp3_short', N'Công ty Bét: Thêm 2 suất Trung Quốc', CAST(N'2023-11-06 16:32:18.590' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10535, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=3;id_ca=4;order_id[]=21,19,14,13;order_sl[]=0,0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:32:30.603' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10536, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Đêm của công ty BET 25,50', CAST(N'2023-11-06 16:32:30.603' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10537, N'mp3_short', N'Công ty Bét: Giảm -2 suất Trung Quốc. Xóa hết rồi!', CAST(N'2023-11-06 16:32:30.603' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10538, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=3;id_ca=4;order_id[]=21,19,14,13;order_sl[]=0,0,11,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:37:45.590' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10539, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty BET 25,50: 11 suất ăn TQ25', CAST(N'2023-11-06 16:37:45.607' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10540, N'mp3_short', N'Công ty Bét: Thêm 11 suất Trung Quốc', CAST(N'2023-11-06 16:37:45.607' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10541, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=3;id_ca=4;order_id[]=21,19,14,13;order_sl[]=0,0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:37:55.753' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10542, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Đêm của công ty BET 25,50', CAST(N'2023-11-06 16:37:55.753' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10543, N'mp3_short', N'Công ty Bét: Giảm -11 suất Trung Quốc. Xóa hết rồi!', CAST(N'2023-11-06 16:37:55.753' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10544, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 16:40:05.007' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10545, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 16:58:36.847' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10546, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=3;id_ca=4;order_id[]=21,19,14,13;order_sl[]=1,0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:58:45.727' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10547, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty BET 25,50: 1 suất ăn MỳBET25', CAST(N'2023-11-06 16:58:45.727' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10548, N'mp3_short', N'Công ty Bét: Thêm 1 suất Khác', CAST(N'2023-11-06 16:58:45.727' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10549, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 16:59:06.237' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10550, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=3;id_ca=4;order_id[]=21,19,14,13;order_sl[]=0,0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 16:59:10.073' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10551, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Đêm của công ty BET 25,50', CAST(N'2023-11-06 16:59:10.073' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10552, N'mp3_short', N'Công ty Bét: Giảm -1 suất Khác. Xóa hết rồi!', CAST(N'2023-11-06 16:59:10.073' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10553, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:00:55.637' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10554, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=3;id_ca=4;order_id[]=21,19,14,13;order_sl[]=0,0,0,1;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 17:00:58.873' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10555, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty BET 25,50: 1 suất ăn Việt Nam 25k', CAST(N'2023-11-06 17:00:58.873' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10556, N'mp3_short', N'Công ty Bét: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 17:00:58.873' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10557, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=3;id_ca=4;order_id[]=21,19,14,13;order_sl[]=0,0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 17:01:13.057' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10558, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Đêm của công ty BET 25,50', CAST(N'2023-11-06 17:01:13.057' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10559, N'mp3_short', N'Công ty Bét: Giảm -1 suất Việt Nam. Xóa hết rồi!', CAST(N'2023-11-06 17:01:13.057' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10560, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 17:04:19.703' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10561, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:05:09.593' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10562, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=3;id_ca=4;order_id[]=21,19,14,13;order_sl[]=0,0,0,1;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 17:05:24.157' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10563, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty BET 25,50: 1 suất ăn Việt Nam 25k', CAST(N'2023-11-06 17:05:24.157' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10564, N'mp3_short', N'Công ty Bét: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 17:05:24.157' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10565, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:06:16.550' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10566, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=3;id_ca=4;order_id[]=21,19,14,13;order_sl[]=0,0,0,0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 17:06:20.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10567, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Đêm của công ty BET 25,50', CAST(N'2023-11-06 17:06:20.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10568, N'mp3_short', N'Công ty Bét: Giảm -1 suất Việt Nam. Xóa hết rồi!', CAST(N'2023-11-06 17:06:20.233' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10569, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 17:06:25.600' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10570, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=3;id_ca=4;order_id[]=21,19,14,13;order_sl[]=0,0,1,0;uid=Trong;', CAST(N'2023-11-06 17:06:59.937' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10571, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty BET 25,50: 1 suất ăn TQ25', CAST(N'2023-11-06 17:06:59.937' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10572, N'mp3_short', N'Công ty Bét: Thêm 1 suất Trung Quốc', CAST(N'2023-11-06 17:06:59.937' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10573, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=3;id_ca=4;order_id[]=21,19,14,13;order_sl[]=0,0,0,0;uid=Trong;', CAST(N'2023-11-06 17:07:16.517' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10574, N'mp3_long', N'Lèng Văn Trong đã xóa hết các suất ăn ca Đêm của công ty BET 25,50', CAST(N'2023-11-06 17:07:16.517' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10575, N'mp3_short', N'Công ty Bét: Giảm -1 suất Trung Quốc. Xóa hết rồi!', CAST(N'2023-11-06 17:07:16.517' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10576, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=52;uid=Trong;', CAST(N'2023-11-06 17:07:29.993' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10577, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty ET SoLar 30: 52 suất ăn Việt Nam 30k', CAST(N'2023-11-06 17:07:29.993' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10578, N'mp3_short', N'Công ty E T Sô La: Giảm -2 suất Việt Nam', CAST(N'2023-11-06 17:07:29.993' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10579, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=1;uid=Trong;', CAST(N'2023-11-06 17:07:58.117' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10580, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty ET SoLar 30: 1 suất ăn Việt Nam 30k', CAST(N'2023-11-06 17:07:58.117' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10581, N'mp3_short', N'Công ty E T Sô La: Giảm -51 suất Việt Nam', CAST(N'2023-11-06 17:07:58.117' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10582, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=10;uid=Trong;', CAST(N'2023-11-06 17:08:13.253' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10583, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty ET SoLar 30: 10 suất ăn Việt Nam 30k', CAST(N'2023-11-06 17:08:13.270' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10584, N'mp3_short', N'Công ty E T Sô La: Thêm 9 suất Việt Nam', CAST(N'2023-11-06 17:08:13.270' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10585, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=6;uid=Trong;', CAST(N'2023-11-06 17:09:07.087' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10586, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty ET SoLar 30: 6 suất ăn Việt Nam 30k', CAST(N'2023-11-06 17:09:07.103' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10587, N'mp3_short', N'Công ty E T Sô La: Giảm -4 suất Việt Nam', CAST(N'2023-11-06 17:09:07.103' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10588, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:09:13.107' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10589, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=2;id_ca=4;order_id[]=13,10,27;order_sl[]=0,0,5;uid=Trong;', CAST(N'2023-11-06 17:09:23.283' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10590, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty XYC 28: 5 suất ăn Việt Nam 40k', CAST(N'2023-11-06 17:09:23.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10591, N'mp3_short', N'Công ty X Y C: Thêm 3 suất Việt Nam', CAST(N'2023-11-06 17:09:23.300' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10592, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=10;uid=Trong;', CAST(N'2023-11-06 17:09:31.617' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10593, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty ET SoLar 30: 10 suất ăn Việt Nam 30k', CAST(N'2023-11-06 17:09:31.617' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10594, N'mp3_short', N'Công ty E T Sô La: Thêm 4 suất Việt Nam', CAST(N'2023-11-06 17:09:31.617' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10595, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 17:09:36.370' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10596, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=12;uid=Trong;', CAST(N'2023-11-06 17:09:42.070' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10597, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty ET SoLar 30: 12 suất ăn Việt Nam 30k', CAST(N'2023-11-06 17:09:42.087' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10598, N'mp3_short', N'Công ty E T Sô La: Thêm 2 suất Việt Nam', CAST(N'2023-11-06 17:09:42.087' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10599, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=2;id_ca=4;order_id[]=13,10,27;order_sl[]=0,0,8;uid=Trong;', CAST(N'2023-11-06 17:09:59.677' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10600, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty XYC 28: 8 suất ăn Việt Nam 40k', CAST(N'2023-11-06 17:09:59.687' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10601, N'mp3_short', N'Công ty X Y C: Thêm 3 suất Việt Nam', CAST(N'2023-11-06 17:09:59.687' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10602, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=1;id_ca=4;order_id[]=9;order_sl[]=120;uid=Trong;', CAST(N'2023-11-06 17:10:10.060' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10603, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty ET SoLar 30: 120 suất ăn Việt Nam 30k', CAST(N'2023-11-06 17:10:10.067' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10604, N'mp3_short', N'Công ty E T Sô La: Thêm 108 suất Việt Nam', CAST(N'2023-11-06 17:10:10.067' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10605, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=3;id_ca=4;order_id[]=21,19,14,13;order_sl[]=0,56,0,0;uid=Trong;', CAST(N'2023-11-06 17:10:27.460' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10606, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty BET 25,50: 56 suất ăn TQ BET 50', CAST(N'2023-11-06 17:10:27.460' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10607, N'mp3_short', N'Công ty Bét: Thêm 56 suất Trung Quốc', CAST(N'2023-11-06 17:10:27.460' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10608, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=11;id_ca=4;order_id[]=36,13;order_sl[]=89,0;uid=Trong;', CAST(N'2023-11-06 17:10:49.823' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10609, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty GW 25,(25,40): 89 suất ăn TQ_GW_TH40', CAST(N'2023-11-06 17:10:49.840' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10610, N'mp3_short', N'Công ty Green Wing: Thêm 89 suất Trung Quốc', CAST(N'2023-11-06 17:10:49.840' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10611, N'CHECK LOGIN OK', N'Trong=Lèng Văn Trong => Admin', CAST(N'2023-11-06 17:14:21.757' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10612, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=4;id_ca=4;order_id[]=40,13;order_sl[]=2,0;uid=Trong;', CAST(N'2023-11-06 17:15:14.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10613, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty NLX 25,40: 2 suất ăn TQ NLX Vinamik 40', CAST(N'2023-11-06 17:15:14.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10614, N'mp3_short', N'Công ty Năng Lượng Xanh: Thêm 2 suất Trung Quốc', CAST(N'2023-11-06 17:15:14.207' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10615, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=5;id_ca=4;order_id[]=25,15,13;order_sl[]=2,0,0;uid=Trong;', CAST(N'2023-11-06 17:15:30.510' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10616, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty LING Yi 25,70: 2 suất ăn BunChieu25', CAST(N'2023-11-06 17:15:30.527' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10617, N'mp3_short', N'Công ty LING Y: Thêm 2 suất Bún', CAST(N'2023-11-06 17:15:30.527' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10618, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=5;id_ca=4;order_id[]=25,15,13;order_sl[]=2,23,0;uid=Trong;', CAST(N'2023-11-06 17:15:49.077' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10619, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty LING Yi 25,70: 2 suất ăn BunChieu25, 23 suất ăn TQ70', CAST(N'2023-11-06 17:15:49.077' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10620, N'mp3_short', N'Công ty LING Y: Thêm 23 suất Trung Quốc', CAST(N'2023-11-06 17:15:49.077' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10621, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:17:23.237' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10622, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=5;id_ca=4;order_id[]=25,15,13;order_sl[]=2,230,0;uid=Trong;', CAST(N'2023-11-06 17:17:24.800' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10623, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty LING Yi 25,70: 2 suất ăn BunChieu25, 230 suất ăn TQ70', CAST(N'2023-11-06 17:17:24.800' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10624, N'mp3_short', N'Công ty LING Y: Thêm 207 suất Trung Quốc', CAST(N'2023-11-06 17:17:24.800' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10625, N'save_order', N'ip=171.255.70.63;action=save_order;id_company=5;id_ca=4;order_id[]=25,15,13;order_sl[]=2,2,0;uid=Trong;', CAST(N'2023-11-06 17:17:36.537' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10626, N'mp3_long', N'Lèng Văn Trong vừa thêm vào ca Đêm cho công ty LING Yi 25,70: 2 suất ăn BunChieu25, 2 suất ăn TQ70', CAST(N'2023-11-06 17:17:36.537' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10627, N'mp3_short', N'Công ty LING Y: Giảm -228 suất Trung Quốc', CAST(N'2023-11-06 17:17:36.537' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10628, N'do_logout', N'ip=113.185.42.185;action=do_logout;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 17:20:22.953' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10629, N'do_login', N'ip=113.185.42.185;action=do_login;uid=Admin;pwd=123456;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 17:20:25.793' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10630, N'LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:20:25.793' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10631, N'do_logout', N'ip=113.185.42.185;action=do_logout;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 17:20:41.763' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10632, N'do_login', N'ip=113.185.42.185;action=do_login;uid=Admin;pwd=123456;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 17:20:54.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10633, N'LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:20:54.217' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10634, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:25:35.353' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10635, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:25:42.857' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10636, N'do_logout', N'ip=113.185.42.185;action=do_logout;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 17:25:51.403' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10637, N'do_login', N'ip=113.185.42.185;action=do_login;uid=Admin;pwd=123456;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 17:25:58.497' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10638, N'LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:25:58.510' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10639, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:27:14.193' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10640, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:28:39.483' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10641, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=30;id_ca=4;order_id[]=9;order_sl[]=1;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 17:28:50.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10642, N'mp3_long', N'Đỗ Duy Cốp vừa thêm vào ca Đêm cho công ty LIM: 1 suất ăn Việt Nam 30k', CAST(N'2023-11-06 17:28:50.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10643, N'mp3_short', N'Công ty LIM: Thêm 1 suất Việt Nam', CAST(N'2023-11-06 17:28:50.190' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10644, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=30;id_ca=4;order_id[]=9;order_sl[]=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 17:29:00.613' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10645, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Đêm của công ty LIM', CAST(N'2023-11-06 17:29:00.630' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10646, N'mp3_short', N'Công ty LIM: Giảm -1 suất Việt Nam. Xóa hết rồi!', CAST(N'2023-11-06 17:29:00.630' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10647, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:39:50.443' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10648, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:40:19.783' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10649, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:43:01.227' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10650, N'edit_company', N'ip=113.185.42.185;action=edit_company;id=7;name=TOMO 25;tenviet=Tô Mô;address=Khắc Niệm;gps=null,null;phone=null;zalo=;default_order[]=13;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 17:43:23.470' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10651, N'edit_company', N'ip=113.185.42.185;action=edit_company;id=7;name=TOMO 25;tenviet=Tô Mô;address=Khắc Niệm;gps=null,null;phone=null;zalo=xx;default_order[]=13;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 17:43:30.643' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10652, N'edit_company', N'ip=113.185.42.185;action=edit_company;id=7;name=TOMO 25;tenviet=Tô Mô;address=Khắc Niệm;gps=null,null;phone=null;zalo=Zz;default_order[]=13;data_order=[{"id":13,"thu":[2,3,4,5,6,7,8]}];uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 17:43:37.087' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10653, N'save_order', N'ip=113.185.42.185;action=save_order;id_company=7;id_ca=4;order_id[]=13;order_sl[]=0;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 17:43:38.843' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10654, N'mp3_long', N'Đỗ Duy Cốp đã xóa hết các suất ăn ca Đêm của công ty TOMO 25', CAST(N'2023-11-06 17:43:38.843' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10655, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:49:54.557' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10656, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 17:56:27.753' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10657, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 18:01:56.580' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10658, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 18:01:57.883' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10659, N'do_logout', N'ip=113.179.59.6;action=do_logout;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 18:02:08.957' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10660, N'do_login', N'ip=113.179.59.6;action=do_login;uid=Admin;pwd=123456;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 18:02:33.447' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10661, N'LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 18:02:33.460' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10662, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 18:03:27.293' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10663, N'do_logout', N'ip=113.185.42.185;action=do_logout;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 18:03:28.703' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10664, N'do_login', N'ip=113.185.42.185;action=do_login;uid=Admin;pwd=123456;uid=Admin;today=2023-11-06;', CAST(N'2023-11-06 18:03:35.847' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10665, N'LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 18:03:35.847' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10666, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 18:06:28.970' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10667, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 18:08:30.237' AS DateTime))
GO
INSERT [dbo].[LOG] ([ID], [input], [output], [time]) VALUES (10668, N'CHECK LOGIN OK', N'Admin=Đỗ Duy Cốp => Admin', CAST(N'2023-11-06 18:10:11.217' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[LOG] OFF
GO
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (3, N'app_sologan', N'An toàn, đa dạng, hợp lý!', N'Sologan của trang web', CAST(N'2023-10-28 13:43:12.753' AS DateTime), 1)
GO
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (2, N'app_title', N'MAI FOOD VN, Co. Ltd', N'Header trang web', CAST(N'2023-10-31 00:04:48.040' AS DateTime), 1)
GO
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (9, N'monitor_interval', N'2', N'Thời gian (giây) cập nhật lại trang', CAST(N'2023-11-04 14:10:28.517' AS DateTime), 1)
GO
INSERT [dbo].[Setting] ([stt], [key], [value], [note], [time], [active]) VALUES (1, N'tab_title', N'MAI FOOD VN', N'Tiêu đề trên tab trình duyệt', CAST(N'2023-10-30 16:31:07.593' AS DateTime), 1)
GO
