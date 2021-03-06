USE [ShopASP]
GO
/****** Object:  Table [dbo].[BRAND]    Script Date: 17/12/2021 10:15:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BRAND](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [nvarchar](50) NULL,
	[ADDRESS] [nvarchar](50) NULL,
	[PHONE] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORIES]    Script Date: 17/12/2021 10:15:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORIES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [nvarchar](50) NULL,
	[PARENT_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDER_DETAILS]    Script Date: 17/12/2021 10:15:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DETAILS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ORDER_ID] [int] NOT NULL,
	[QUANTITY] [int] NULL,
	[PRODUCT_PRICE] [int] NULL,
	[PRODUCT_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDERS]    Script Date: 17/12/2021 10:15:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDERS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[USER_ID] [int] NOT NULL,
	[TOTAL_AMOUNT] [int] NOT NULL,
	[STATUS] [int] NOT NULL,
	[ADDRESS] [nvarchar](50) NULL,
	[PHONE] [char](10) NULL,
	[DATE] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTS]    Script Date: 17/12/2021 10:15:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CATEGORY_ID] [int] NOT NULL,
	[BRAND_ID] [int] NOT NULL,
	[NAME] [nvarchar](50) NULL,
	[PRICE] [int] NULL,
	[DISCOUNT] [float] NULL,
	[COLOR] [nvarchar](50) NULL,
	[SIZE] [float] NULL,
	[DESCRIPTION] [ntext] NULL,
	[AVAILABLE_QUANTITY] [int] NULL,
	[QUANTITY_SOLD] [int] NULL,
	[PRIMARY_IMAGE] [nvarchar](50) NULL,
	[IMPORT_PRICE] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USERS]    Script Date: 17/12/2021 10:15:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [nvarchar](50) NOT NULL,
	[SEX] [bit] NULL,
	[BIRTHDAY] [datetime] NULL,
	[EMAIL] [nvarchar](50) NOT NULL,
	[PASSWORD] [char](50) NOT NULL,
	[ROLE] [int] NULL,
	[STATUS] [int] NULL,
	[AVATAR] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BRAND] ON 

INSERT [dbo].[BRAND] ([ID], [NAME], [ADDRESS], [PHONE]) VALUES (1, N'Gucci', N'HN', N'0123456789')
INSERT [dbo].[BRAND] ([ID], [NAME], [ADDRESS], [PHONE]) VALUES (2, N'LV', N'HCM', N'0147852369')
INSERT [dbo].[BRAND] ([ID], [NAME], [ADDRESS], [PHONE]) VALUES (5, N'Thiên Long', N'HCM', N'0123456789')
INSERT [dbo].[BRAND] ([ID], [NAME], [ADDRESS], [PHONE]) VALUES (6, N'Nintendo', N'HCM', N'0123456789')
INSERT [dbo].[BRAND] ([ID], [NAME], [ADDRESS], [PHONE]) VALUES (7, N'Lego', N'HN', N'0327645879')
INSERT [dbo].[BRAND] ([ID], [NAME], [ADDRESS], [PHONE]) VALUES (8, N'Tranh vẽ', N'HCM', N'0936482752')
INSERT [dbo].[BRAND] ([ID], [NAME], [ADDRESS], [PHONE]) VALUES (9, N'Sổ, vở', N'HN', N'0947632747')
INSERT [dbo].[BRAND] ([ID], [NAME], [ADDRESS], [PHONE]) VALUES (10, N'TLDL', N'HCM', N'0936452843')
INSERT [dbo].[BRAND] ([ID], [NAME], [ADDRESS], [PHONE]) VALUES (11, N'Totoro', N'HCM', N'0936452643')
SET IDENTITY_INSERT [dbo].[BRAND] OFF
GO
SET IDENTITY_INSERT [dbo].[CATEGORIES] ON 

INSERT [dbo].[CATEGORIES] ([ID], [NAME], [PARENT_ID]) VALUES (1, N'Thú Nhồi Bông', NULL)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [PARENT_ID]) VALUES (2, N'Thời Trang & Phụ Kiện', NULL)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [PARENT_ID]) VALUES (4, N'Văn Phòng Phẩm', NULL)
INSERT [dbo].[CATEGORIES] ([ID], [NAME], [PARENT_ID]) VALUES (12, N'Hot Trend', NULL)
SET IDENTITY_INSERT [dbo].[CATEGORIES] OFF
GO
SET IDENTITY_INSERT [dbo].[ORDER_DETAILS] ON 

INSERT [dbo].[ORDER_DETAILS] ([ID], [ORDER_ID], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID]) VALUES (10, 6, 1, 2000, 2)
INSERT [dbo].[ORDER_DETAILS] ([ID], [ORDER_ID], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID]) VALUES (11, 6, 1, 1500, 3)
INSERT [dbo].[ORDER_DETAILS] ([ID], [ORDER_ID], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID]) VALUES (12, 7, 1, 200, 2)
INSERT [dbo].[ORDER_DETAILS] ([ID], [ORDER_ID], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID]) VALUES (13, 7, 3, 79, 25)
INSERT [dbo].[ORDER_DETAILS] ([ID], [ORDER_ID], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID]) VALUES (14, 8, 1, 390, 23)
INSERT [dbo].[ORDER_DETAILS] ([ID], [ORDER_ID], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID]) VALUES (15, 8, 2, 8, 26)
INSERT [dbo].[ORDER_DETAILS] ([ID], [ORDER_ID], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID]) VALUES (16, 9, 1, 400, 43)
INSERT [dbo].[ORDER_DETAILS] ([ID], [ORDER_ID], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID]) VALUES (17, 10, 1, 400, 43)
INSERT [dbo].[ORDER_DETAILS] ([ID], [ORDER_ID], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID]) VALUES (18, 10, 1, 8, 26)
INSERT [dbo].[ORDER_DETAILS] ([ID], [ORDER_ID], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID]) VALUES (19, 11, 1, 390, 23)
INSERT [dbo].[ORDER_DETAILS] ([ID], [ORDER_ID], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID]) VALUES (20, 12, 1, 150, 3)
INSERT [dbo].[ORDER_DETAILS] ([ID], [ORDER_ID], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID]) VALUES (21, 13, 1, 400, 43)
INSERT [dbo].[ORDER_DETAILS] ([ID], [ORDER_ID], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID]) VALUES (22, 14, 1, 200, 1)
INSERT [dbo].[ORDER_DETAILS] ([ID], [ORDER_ID], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID]) VALUES (23, 15, 1, 150, 3)
INSERT [dbo].[ORDER_DETAILS] ([ID], [ORDER_ID], [QUANTITY], [PRODUCT_PRICE], [PRODUCT_ID]) VALUES (24, 16, 1, 400, 43)
SET IDENTITY_INSERT [dbo].[ORDER_DETAILS] OFF
GO
SET IDENTITY_INSERT [dbo].[ORDERS] ON 

INSERT [dbo].[ORDERS] ([ID], [USER_ID], [TOTAL_AMOUNT], [STATUS], [ADDRESS], [PHONE], [DATE]) VALUES (6, 11, 3500, 0, N'chuồng heo', N'113       ', CAST(N'2021-09-01' AS Date))
INSERT [dbo].[ORDERS] ([ID], [USER_ID], [TOTAL_AMOUNT], [STATUS], [ADDRESS], [PHONE], [DATE]) VALUES (7, 1, 437, 0, N'abc', N'123       ', CAST(N'2021-12-11' AS Date))
INSERT [dbo].[ORDERS] ([ID], [USER_ID], [TOTAL_AMOUNT], [STATUS], [ADDRESS], [PHONE], [DATE]) VALUES (8, 13, 11700, 0, N'abc', N'12345     ', CAST(N'2021-12-11' AS Date))
INSERT [dbo].[ORDERS] ([ID], [USER_ID], [TOTAL_AMOUNT], [STATUS], [ADDRESS], [PHONE], [DATE]) VALUES (9, 13, 360000, 0, N'abc', N'123       ', CAST(N'2021-12-11' AS Date))
INSERT [dbo].[ORDERS] ([ID], [USER_ID], [TOTAL_AMOUNT], [STATUS], [ADDRESS], [PHONE], [DATE]) VALUES (10, 13, 368000, 0, N'abc', N'12345     ', CAST(N'2021-12-12' AS Date))
INSERT [dbo].[ORDERS] ([ID], [USER_ID], [TOTAL_AMOUNT], [STATUS], [ADDRESS], [PHONE], [DATE]) VALUES (11, 13, 378300, 0, N'abc', N'12345     ', CAST(N'2021-12-13' AS Date))
INSERT [dbo].[ORDERS] ([ID], [USER_ID], [TOTAL_AMOUNT], [STATUS], [ADDRESS], [PHONE], [DATE]) VALUES (12, 13, 0, 0, N'abc', N'12345     ', CAST(N'2021-12-13' AS Date))
INSERT [dbo].[ORDERS] ([ID], [USER_ID], [TOTAL_AMOUNT], [STATUS], [ADDRESS], [PHONE], [DATE]) VALUES (13, 13, 360000, 0, N'abc', N'123       ', CAST(N'2021-12-13' AS Date))
INSERT [dbo].[ORDERS] ([ID], [USER_ID], [TOTAL_AMOUNT], [STATUS], [ADDRESS], [PHONE], [DATE]) VALUES (14, 13, 180000, 0, N'abc', N'12345     ', CAST(N'2021-12-13' AS Date))
INSERT [dbo].[ORDERS] ([ID], [USER_ID], [TOTAL_AMOUNT], [STATUS], [ADDRESS], [PHONE], [DATE]) VALUES (15, 13, 150000, 0, N'abc', N'12345     ', CAST(N'2021-12-13' AS Date))
INSERT [dbo].[ORDERS] ([ID], [USER_ID], [TOTAL_AMOUNT], [STATUS], [ADDRESS], [PHONE], [DATE]) VALUES (16, 13, 360000, 0, N'abc', N'12345     ', CAST(N'2021-12-13' AS Date))
SET IDENTITY_INSERT [dbo].[ORDERS] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCTS] ON 

INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (1, 1, 1, N'Gucci Dog', 200, 10, N'Pink', 35, N'Notthing', 125, 35, N'~/Assets/User/img/trau-ao-sao-2-copy-300x300.jpg', 50)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (2, 1, 1, N'Gucci Cat', 200, 10, N'Red', 45, N'Notthing', 266, 8, N'/Assets/User/img/teddy-om-tim-love-mau-8.jpg', 100)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (3, 1, 1, N'Gucci Bird', 150, 0, N'Yello', 37, N'Notthing', 101, 10, N'/Assets/User/img/teddy-om-tim-love-mau-8.jpg', 100)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (12, 1, 2, N'Khung long', 250, 0, N'Blue', 37, N'Khung long bao chua', 103, 8, N'/Assets/User/img/teddy-om-tim-love-mau-8.jpg', 100)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (16, 1, 1, N'Pikachu Monster', 120, 0, N'Blue', 5, N'Hàng chất lượng cao', 250, 12, N'/Assets/User/img/teddy-om-tim-love-mau-8.jpg', 50)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (21, 1, 1, N'Quái thú', 123, 0, N'Blue', 5, N'Hàng chất lượng cao', 1231, 123, N'/Assets/User/img/teddy-om-tim-love-mau-8.jpg', 50)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (22, 1, 1, N'Quái thú', 100, NULL, N'Blue', 5, N'Hàng chất lượng cao', 1000, 0, N'/Assets/User/img/teddy-om-tim-love-mau-8.jpg', 50)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (23, 2, 11, N'BỘ ĐỒ LIỀN THÂN HÌNH THÚ KHỦNG LONG', 390, 3, N'Green', 20, N'Hóa thân vào những nhân vật, động vật đáng yêu, ngộ nghĩnh không chỉ còn là mơ ước nữa. Nhà Tô xin trình làng Bộ đồ liền thân phiên bản người lớn đây.

Chất liệu: Vải nhung mịn, mềm mại, cao cấp.

Thiết kế: Nhiều kiểu dáng, màu sắc từ cool ngầu đến ngộ nghĩnh đáng yêu cho bạn thỏa sức lựa chọn.

- Bộ đồ liền thân gồm: Áo, mũ và quần liền nhau. Dép bông hình móng thú, găng tay hình móng thú được bán riêng, các bạn có thể xem/ đặt mua ở đây nha.

- Không gây kích ứng da, an toàn cho người sử dụng.

- Bộ có thiết kế khóa kéo dưới mông tiện lợi.

- Phù hợp cho cả Nam lẫn Nữ.

- Phù hợp khi ở nhà, đi chơi, đi tiệc ngủ,...', 998, 23, N'/Assets/User/img/khunglong_thumb.jpg', 200)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (24, 4, 5, N'TÚI ĐỰNG BÚT TRONG SUỐT GẤU CHĂM HỌC', 75, 2, N'Yellow', 10, N'Chất liệu: vải nhựa trong suốt, dày dặn

Thiết kế: basic

- Chất liệu cao cấp, chuẩn chỉnh trong từng chi tiết, khóa kéo trơn mịn, bền bỉ với thời gian.

- Họa tiết Gấu chăm học vô cùng xinh xắn, ngộ nghĩnh, đáng yêu cho bạn thỏa sức lựa chọn.

- Màu sắc trẻ trung, tươi sáng

- Túi đựng bút rộng rãi, thoải mái để được rất nhiều bút mà không lo hết chỗ.

- Dễ dàng mang theo khi di chuyển.

- Không những để được bút mà có thể làm túi đựng các đồ dùng khác như mỹ phẩm, cọ trang điểm,...

- Đường may chắc chắn, tỉ mỉ, đẹp mắt.', 1000, 20, N'/Assets/User/img/a3_thumb_400x433.jpg', 50)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (25, 4, 11, N'TÚI ĐỰNG BÚT BALO LOVELY ANIMALS', 79, 5, N'Pink', 20, N'Thiết kế: Basic

- Chất liệu cao cấp, chuẩn chỉnh trong từng chi tiết, khóa kéo trơn mịn, bền bỉ với thời gian.

- Nhiều mẫu mã, họa tiết Balo Lovely Animals xinh xắn, ngộ nghĩnh, đáng yêu cho bạn thỏa sức lựa chọn.

- Màu sắc trẻ trung, tươi sáng

- Túi đựng bút rộng rãi, thoải mái để được rất nhiều bút mà không lo hết chỗ.

- Dễ dàng mang theo khi di chuyển.

- Không những để được bút mà có thể làm túi đựng các đồ dùng khác như mỹ phẩm, cọ trang điểm,

- Đường may chắc chắn, tỉ mỉ, đẹp mắt.', 97, 37, N'/Assets/User/img/48_704x704.jpg', 50)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (26, 4, 11, N'BÚT KIM MỰC NƯỚC SẮC MÀU BÒ SỮA MILKY', 8, 0, N'White', 10, N'Chất liệu: Nhựa mica cứng cáp, bền bỉ

Kích thước: 15 cm.

Trọng lượng: 20g.

Ngòi bút: 0.5mm.', 97, 26, N'/Assets/User/img/18_thumb_400x400.jpg', 4)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (42, 2, 11, N'JIBBITZ NÚT TRANG TRÍ SỤC LÒ XO DẠ QUANG FAST FOOD', 15, 0, N'White', 40, N'Dép sục là món đồ mang phong cách đơn giản nhưng vẫn hiện đại, bắt kịp xu hướng thời trang mới. Được biến tấu với nhiều kiểu dáng, mẫu mã và màu sắc, đặc biệt nay còn kết hợp thêm với Jibbitz thì đôi dép sục chắc chắn sẽ trở thành món đồ thời trang thu hút mọi ánh nhìn trên phố, thể hiện cá tính của bạn.

Chất liệu: Cao su/Nhựa tổng hợp.

Kích thước: 1-3cm.

Trọng lượng: 6-8g.', 100, 21, N'/Assets/User/img/39_thumb_400x400.jpg', 10)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (43, 2, 11, N'GIÀY CANVAS CAO CỔ NHÓC BÒ SỮA', 400, 10, N'White', 40, N'Giày Canvas rất được các bạn trẻ ưa chuộng bởi tính thời trang, dễ kết hợp đồ, bền đẹp và thoáng khí. Món đồ này mang phong cách đơn giản nhưng vẫn hiện đại, được biến tấu với nhiều kiểu dáng, mẫu mã và màu sắc, Giày Canvas có thể trở thành món đồ thời trang thu hút mọi ánh nhìn trên phố, thể hiện cá tính, phong cách thời trang của bạn.

Hãy chào đón hè với mẫu giày mới: Giày canvas cao cổ Nhóc Bò Sữa của nhà Tô nha!

Chất liệu: Vải Canvas,

Kích thước: Size 36-40.', 996, 104, N'/Assets/User/img/81_thumb_400x400.jpg', 200)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (46, 12, 11, N'CHẬU CÂY BÔNG NHẢY MÚA CÓ NHẠC', 209, 2, N'Green', 10, N'Siêu xả xì chét với Chậu cây bông nhảy múa có nhạc nhại giọng phát sáng Merry Christmas Giáng Sinh độc đáo của Totoro!!

Chần chừ gì mà không đến Tô sắm ngay iem em Cây thông nhảy nhót theo nhạc lại còn nhái giọng về đi nào!!

Thiết kế:

- Hình cây thông và bánh gừng vô cùng lạ mắt và đáng yêu!

- Màu sắc xinh xắn

- Gia công chắc chắn, tỉ mỉ đẹp mắt

- Sử dụng Pin AA tiện lợi, hết pin thay pin dễ dàng

- Chất liệu:

+ Bên ngoài được may bằng vải mềm mịn tạo cảm giác thoải mái khi sờ, cầm.

+ Bên trong là các sợi bông tự nhiên, đảm bảo an toàn cho người sử dụng', 100, 200, N'/Assets/User/img/7_thumb_400x400.jpg', 100)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (51, 12, 7, N'BỘ ĐỒ CHƠI XẾP HÌNH LEGO PHI HÀNH GIA', 95, 10, N'Yellow', 10, N'Bộ đồ chơi xếp hình Lego phát sáng Phi Hành Gia ngồi trên trăng:

Chất liệu: Được làm từ chất liệu nhựa nguyên sinh ABS cao cấp, chống trầy xước, không nứt vỡ và bền đẹp. Chất liệu không chứa BPA nên an toàn cho sức khỏe.

Kích thước: ~10cm

Thiết kế:

- Họa tiết Phi Hành Gia ngồi trên mặt trăng vô cùng dễ thương và xinh xắn cùng hệ thống đèn led sáng lấp lánh vô cùng huyền diệu

- Sử dụng các viên gạch đầy màu sắc, cùng với sự sáng tạo, tư duy để lắp ráp thành nhân vật đầy ngộ nghĩnh và đáng yêu.

- Màu sắc bắt mắt lôi cuốn', 100, 10, N'/Assets/User/img/26_thumb_400x400.jpg', 50)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (52, 12, 11, N'DÂY TREO HỘP GỖ CÓ ĐÈN TRANG TRÍ GIÁNG SINH NOEL', 90, 10, N'Yellow', 10, N'Thiết kế:

- Hộp gỗ hình tròn và ngôi sao được cột dây treo với các họa tiết mang chủ đề giáng sinh vô cùng dễ thương và lạ mắt: người tuyết, cây thông, ông già noel...cùng ánh đèn ấm áp

- Màu sắc tươi sáng, bắt mắt

- Gia công chắc chắn, tỉ mỉ, đẹp mắt

- Mẫu mã đa dạng cho bạn thoải mái lựa chọn

- Kích thước nhỏ nhắn, vừa vặn, để đâu cũng tiện', 100, 20, N'/Assets/User/img/35_thumb_400x400.jpg', 50)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (53, 2, 11, N'VỚ DÀI HOẠ TIẾT NHIỀU HÌNH NOEL GIÁNG SINH', 40, 10, N'Red', 40, N'Chất liệu: Vải lông xù mềm mại, thấm mồ hôi

Kích thước: Ôm đến bắp chân.

Thiết kế:

- Màu sắc nổi bật, tươi sáng. Họa tiết nhiều hình Noel Giáng Sinh vô cùng ngộ nghĩnh và đáng yêu

- Phù hợp sử dụng cho 4 mùa.

- Vớ thoáng khí, ôm trọn cả bàn chân mang lại sự thoải mái, êm ái tuyệt vời.

- Không gây bí, nóng chân

- Cổ vớ đàn hồi tốt, chắc chắn, ôm tại bắp chân không tuột, không gây khó chịu.

- Phần ống mềm mại và co giãn tốt.

- Thiết kế phần mũi đặc biệt cho các ngón chân cử động thoải mái và linh hoạt.

- Đường may chắc chắn, tinh tế, đẹp mắt.', 1000, 50, N'/Assets/User/img/10_thumb_400x400.jpg', 10)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (54, 4, 8, N'TRANH TÔ MÀU SỐ HÓA PHONG CẢNH', 60, 2, N'None', 20, N'Chất liệu: Giấy vẽ tranh và các loại sơn màu

Kích thước: 20x20 cm

Thiết kế:

- Họa tiết vô cùng xinh xắn và dễ thương

- Màu sắc xinh xắn, đa dạng mẫu mã cho bạn thoải mái lựa chọn

- Gia công chắc chắn, tỉ mỉ, đẹp mắt

- Sử dụng các màu sơn để hoàn thiện bức tranh theo phong cách của bản thân', 200, 10, N'/Assets/User/img/04092021080939_oll.jpg', 20)
INSERT [dbo].[PRODUCTS] ([ID], [CATEGORY_ID], [BRAND_ID], [NAME], [PRICE], [DISCOUNT], [COLOR], [SIZE], [DESCRIPTION], [AVAILABLE_QUANTITY], [QUANTITY_SOLD], [PRIMARY_IMAGE], [IMPORT_PRICE]) VALUES (55, 12, 10, N'TAI NGHE IN-EARPHONE KÈM HỘP NHÓC PHI HÀNH GIA', 80, 10, N'White', 10, N'Notthing', 100, 10, N'/Assets/User/img/1_thumb_400x400.jpg', 50)
SET IDENTITY_INSERT [dbo].[PRODUCTS] OFF
GO
SET IDENTITY_INSERT [dbo].[USERS] ON 

INSERT [dbo].[USERS] ([ID], [NAME], [SEX], [BIRTHDAY], [EMAIL], [PASSWORD], [ROLE], [STATUS], [AVATAR]) VALUES (1, N'admin', 1, CAST(N'2001-08-25T00:00:00.000' AS DateTime), N'admin@gmail.com', N'111                                               ', 1, 1, N'sun.jpg')
INSERT [dbo].[USERS] ([ID], [NAME], [SEX], [BIRTHDAY], [EMAIL], [PASSWORD], [ROLE], [STATUS], [AVATAR]) VALUES (11, N'Vương Đức Hữu Phước', 1, CAST(N'2001-08-25T00:00:00.000' AS DateTime), N'huuphuoc@gmail.com', N'12345                                             ', 0, 1, N'sun.jpg')
INSERT [dbo].[USERS] ([ID], [NAME], [SEX], [BIRTHDAY], [EMAIL], [PASSWORD], [ROLE], [STATUS], [AVATAR]) VALUES (13, N'test', 0, NULL, N'test@gmail.com', N'12345                                             ', 0, 1, N'sun.jpg')
SET IDENTITY_INSERT [dbo].[USERS] OFF
GO
/****** Object:  Index [UQ__BRAND__3214EC26ECAF876E]    Script Date: 17/12/2021 10:15:18 CH ******/
ALTER TABLE [dbo].[BRAND] ADD UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__CATEGORI__3214EC26489DE926]    Script Date: 17/12/2021 10:15:18 CH ******/
ALTER TABLE [dbo].[CATEGORIES] ADD UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__ORDER_DE__3214EC269267C56E]    Script Date: 17/12/2021 10:15:18 CH ******/
ALTER TABLE [dbo].[ORDER_DETAILS] ADD UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__ORDERS__3214EC26265C03F6]    Script Date: 17/12/2021 10:15:18 CH ******/
ALTER TABLE [dbo].[ORDERS] ADD UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__PRODUCTS__3214EC26FCC0E31B]    Script Date: 17/12/2021 10:15:18 CH ******/
ALTER TABLE [dbo].[PRODUCTS] ADD UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__USERS__3214EC2632DB8C68]    Script Date: 17/12/2021 10:15:18 CH ******/
ALTER TABLE [dbo].[USERS] ADD UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ORDER_DETAILS]  WITH CHECK ADD FOREIGN KEY([ORDER_ID])
REFERENCES [dbo].[ORDERS] ([ID])
GO
ALTER TABLE [dbo].[ORDER_DETAILS]  WITH CHECK ADD FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[PRODUCTS] ([ID])
GO
ALTER TABLE [dbo].[ORDERS]  WITH CHECK ADD FOREIGN KEY([USER_ID])
REFERENCES [dbo].[USERS] ([ID])
GO
ALTER TABLE [dbo].[PRODUCTS]  WITH CHECK ADD FOREIGN KEY([BRAND_ID])
REFERENCES [dbo].[BRAND] ([ID])
GO
ALTER TABLE [dbo].[PRODUCTS]  WITH CHECK ADD FOREIGN KEY([CATEGORY_ID])
REFERENCES [dbo].[CATEGORIES] ([ID])
GO
/****** Object:  StoredProcedure [dbo].[Sp_Account_Login]    Script Date: 17/12/2021 10:15:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Sp_Account_Login](
	@EMAIL nvarchar(50),
	@PASSWORD char(50)
)
as
begin
	declare @count int	
	declare @res bit
	select @count = count(*) from USERS where Email = @EMAIL and PASSWORD = @PASSWORD
	if @count > 0 
		set @res =	1
	else 
		set @res = 0

	select @res	
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_CATEGORIES_create]    Script Date: 17/12/2021 10:15:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_CATEGORIES_create]
(
	@TenDanhMuc Nvarchar(50),
	@DanhMucChaID int
)
as
begin
	insert into CATEGORIES values (@TenDanhMuc, @DanhMucChaID)
end
GO
/****** Object:  StoredProcedure [dbo].[Sp_CATEGORIES_ListAll]    Script Date: 17/12/2021 10:15:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_CATEGORIES_ListAll]
as
begin
	select * from CATEGORIES
end	
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetOrderDetails]    Script Date: 17/12/2021 10:15:18 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sp_GetOrderDetails](
	@ORDER_ID Integer

)
as
begin
	select * from ORDER_DETAILS
	where ORDER_ID = @ORDER_ID
end
GO
