CREATE TABLE [dbo].[Categories] (
    [Id]            INT primary key IDENTITY (1, 1) NOT NULL,
    [Name]          NVARCHAR (50) NULL
);

CREATE TABLE [dbo].[Products] (
    [Id]          INT primary key IDENTITY (1, 1) NOT NULL,
    [ProductName] NVARCHAR (50) NULL,
    [CategoryId]  INT NULL
);

SET IDENTITY_INSERT [dbo].[Products] ON
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (1, 'Vostok FHD', 1)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (4, 'LG 4K', 1)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (5, 'Xiaomi 8K', 1)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (6, 'Samsung FHD', 1)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (7, 'Viewsonic 4K', 1)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (2, 'Borophone', 2)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (8, 'Honor', 2)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (9, 'Iphone', 2)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (10, 'LG', 2)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (11, 'Nokia', 2)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (12, 'Samsung', 2)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (3, 'Lada', 3)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (13, 'BMW', 3)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (14, 'Toyota', 3)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (15, 'Land Rover', 3)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (16, 'Cadillac', 3)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (17, 'Ford', 3)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (18, 'Lamborgini', 3)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (19, 'Rolce Royce', 3)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (20, 'Tesla', 3)
SET IDENTITY_INSERT [dbo].[Products] OFF

SELECT * FROM [Products]

SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT INTO [dbo].[Categories] ([Id], [Name]) VALUES (1, 'TV')
INSERT INTO [dbo].[Categories] ([Id], [Name]) VALUES (2, 'Smart phones')
INSERT INTO [dbo].[Categories] ([Id], [Name]) VALUES (3, 'Cars')
SET IDENTITY_INSERT [dbo].[Categories] OFF

SELECT * FROM [Categories]
