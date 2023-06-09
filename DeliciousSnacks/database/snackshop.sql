USE [SnackShop]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 4/24/2023 3:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[accID] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](30) NULL,
	[password] [varchar](30) NULL,
	[fullname] [varchar](30) NULL,
	[phone] [varchar](12) NULL,
	[status] [int] NULL,
	[role] [int] NULL,
	[token] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[accID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 4/24/2023 3:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CateID] [int] IDENTITY(1,1) NOT NULL,
	[CateName] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 4/24/2023 3:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[FID] [int] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/24/2023 3:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrdDate] [date] NULL,
	[shipdate] [date] NULL,
	[status] [int] NULL,
	[AccID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Snacks]    Script Date: 4/24/2023 3:27:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Snacks](
	[SID] [int] IDENTITY(1,1) NOT NULL,
	[SName] [varchar](30) NULL,
	[price] [int] NULL,
	[imgPath] [varchar](50) NULL,
	[description] [text] NULL,
	[status] [int] NULL,
	[CateID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([accID], [email], [password], [fullname], [phone], [status], [role], [token]) VALUES (1, N'test@gmail.com', N'test', N'Test', N'111', 1, 0, N'ABC123456')
INSERT [dbo].[Accounts] ([accID], [email], [password], [fullname], [phone], [status], [role], [token]) VALUES (2, N'admin@gmail.com', N'admin', N'Administrator', N'034446', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CateID], [CateName]) VALUES (1, N'Banh Trang')
INSERT [dbo].[Categories] ([CateID], [CateName]) VALUES (2, N'Mon An Man')
INSERT [dbo].[Categories] ([CateID], [CateName]) VALUES (3, N'Nuoc Giai Khat')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [OrdDate], [shipdate], [status], [AccID]) VALUES (1, CAST(N'2023-04-24' AS Date), CAST(N'2023-04-24' AS Date), 2, 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Snacks] ON 

INSERT [dbo].[Snacks] ([SID], [SName], [price], [imgPath], [description], [status], [CateID]) VALUES (1, N'Banh Trang Tron', 20000, N'img/img1.jpg', N'Voi su ket  hop kheo leo, giua vi chua cay man ngot cua topping .Vi dai gion cua banh trang... rat kich thich vi giac nguoi an', 1, 1)
INSERT [dbo].[Snacks] ([SID], [SName], [price], [imgPath], [description], [status], [CateID]) VALUES (2, N'Ga Ran ', 40000, N'img/img2.jpg', N'Mon ga ran voi mau vang bat mat cong them vi gion rum, thom ngon, thi ben trong thi mem ngot tao nen suc hap dan kho cuong.', 1, 2)
INSERT [dbo].[Snacks] ([SID], [SName], [price], [imgPath], [description], [status], [CateID]) VALUES (3, N'Tra Sua', 27000, N'img/img3.jpg', N'Tra sua co nhung topping di kem nhu tran chau trang hoac den, pudding, thach, tao nen huong vi uong hum dau tien co vi ngot, hoi ngay cua sua hoa quyen cung chut chat va thom cua tra.', 1, 3)
INSERT [dbo].[Snacks] ([SID], [SName], [price], [imgPath], [description], [status], [CateID]) VALUES (4, N'Banh Trang Nuong', 15000, N'img/img4.jpg', N'Ban chua tung den Da Lat an banh trang nuong, hoac da tung co co hoi vi vu o day va me man mon an duong pho nay? Dung lo, minh o ngay day, dong hanh voi ban.', 1, 1)
INSERT [dbo].[Snacks] ([SID], [SName], [price], [imgPath], [description], [status], [CateID]) VALUES (5, N'Muc Kho Chien Nuoc Mam', 20000, N'img/img5.jpg', N'Muc kho chien nuoc mam la lua chon tuyet voi cho nhung ngay mua lanh. Vi nuoc mam dam da hoa quyen voi thit muc dai ngot, vo cung cuon mieng.', 1, 2)
INSERT [dbo].[Snacks] ([SID], [SName], [price], [imgPath], [description], [status], [CateID]) VALUES (6, N'Tra Hoa Qua', 22000, N'img/img6.jpg', N'Mua he nong nuc da den roi, nhung coc tra sua, coc kem sua co the se khien nhieu nguoi e ngai vi khong du thanh mat, chinh vi the, luc nay nhung loai tra hoa qua len ngoi. Nhung coc tra hoa qua duoc pha che tu vo va cac loai vi khac nhau khien cho ai cung cam thay sang khoai.', 1, 3)
SET IDENTITY_INSERT [dbo].[Snacks] OFF
GO
