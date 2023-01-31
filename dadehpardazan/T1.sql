USE [RamixTestDB]
GO
/****** Object:  Table [dbo].[T1]    Script Date: 4/6/2020 11:05:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T1](
	[CustomerID] [int] NOT NULL,
	[CustomerName] [nvarchar](1000) NULL,
	[Province] [nvarchar](500) NULL,
	[Quantity] [int] NULL,
	[TotalPrice] [decimal](18, 2) NULL,
	[Profit] [decimal](18, 2) NULL,
	[PresenterCustomerID] [int] NULL,
 CONSTRAINT [PK_T1] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (1, N'مشتری شماره1   ', N'قزوین', 3, CAST(10000000.00 AS Decimal(18, 2)), CAST(200000.00 AS Decimal(18, 2)), 8)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (2, N'مشتری شماره2   ', N'قزوین', 1, CAST(5000000.00 AS Decimal(18, 2)), CAST(110000.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (3, N'مشتری شماره3   ', N'قزوین', 3, CAST(10000000.00 AS Decimal(18, 2)), CAST(150000.00 AS Decimal(18, 2)), 1)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (4, N'مشتری شماره4   ', N'قزوین', 6, CAST(17000000.00 AS Decimal(18, 2)), CAST(200000.00 AS Decimal(18, 2)), 2)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (5, N'مشتری شماره5   ', N'قزوین', 12, CAST(22000000.00 AS Decimal(18, 2)), CAST(100000.00 AS Decimal(18, 2)), 4)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (6, N'مشتری شماره6   ', N'قزوین', 5, CAST(11000000.00 AS Decimal(18, 2)), CAST(180000.00 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (7, N'مشتری شماره7   ', N'تهران', 3, CAST(21000000.00 AS Decimal(18, 2)), CAST(230000.00 AS Decimal(18, 2)), NULL)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (8, N'مشتری شماره8   ', N'تهران', 4, CAST(5000000.00 AS Decimal(18, 2)), CAST(210000.00 AS Decimal(18, 2)), 7)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (9, N'مشتری شماره9   ', N'تهران', 10, CAST(34600000.00 AS Decimal(18, 2)), CAST(190000.00 AS Decimal(18, 2)), 7)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (10, N'مشتری شماره10   ', N'تهران', 2, CAST(10000000.00 AS Decimal(18, 2)), CAST(200000.00 AS Decimal(18, 2)), 9)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (11, N'مشتری شماره11   ', N'تهران', 8, CAST(47300000.00 AS Decimal(18, 2)), CAST(220000.00 AS Decimal(18, 2)), 10)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (12, N'مشتری شماره12   ', N'تهران', 4, CAST(5000000.00 AS Decimal(18, 2)), CAST(200000.00 AS Decimal(18, 2)), 11)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (13, N'مشتری شماره13   ', N'تهران', 16, CAST(54800000.00 AS Decimal(18, 2)), CAST(180000.00 AS Decimal(18, 2)), 12)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (14, N'مشتری شماره14   ', N'شیراز', 15, CAST(78000000.00 AS Decimal(18, 2)), CAST(140000.00 AS Decimal(18, 2)), 7)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (15, N'مشتری شماره15   ', N'شیراز', 7, CAST(10000000.00 AS Decimal(18, 2)), CAST(200000.00 AS Decimal(18, 2)), 14)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (16, N'مشتری شماره16   ', N'شیراز', 1, CAST(3000000.00 AS Decimal(18, 2)), CAST(160000.00 AS Decimal(18, 2)), 14)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (17, N'مشتری شماره17   ', N'شیراز', 2, CAST(10000000.00 AS Decimal(18, 2)), CAST(180000.00 AS Decimal(18, 2)), 15)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (18, N'مشتری شماره18   ', N'شیراز', 9, CAST(38800000.00 AS Decimal(18, 2)), CAST(160000.00 AS Decimal(18, 2)), 16)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (19, N'مشتری شماره19   ', N'شیراز', 3, CAST(9000000.00 AS Decimal(18, 2)), CAST(200000.00 AS Decimal(18, 2)), 17)
GO
INSERT [dbo].[T1] ([CustomerID], [CustomerName], [Province], [Quantity], [TotalPrice], [Profit], [PresenterCustomerID]) VALUES (20, N'مشتری شماره20   ', N'شیراز', 11, CAST(15000000.00 AS Decimal(18, 2)), CAST(190000.00 AS Decimal(18, 2)), 16)
GO
