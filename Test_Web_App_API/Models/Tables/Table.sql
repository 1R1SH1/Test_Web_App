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
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (2, 'Borophone', 2)
INSERT INTO [dbo].[Products] ([Id], [ProductName], [CategoryId]) VALUES (3, 'Lada', 3)
SET IDENTITY_INSERT [dbo].[Products] OFF

SELECT * FROM [Products]

SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT INTO [dbo].[Categories] ([Id], [Name]) VALUES (1, 'TV')
INSERT INTO [dbo].[Categories] ([Id], [Name]) VALUES (2, 'Smart phones')
INSERT INTO [dbo].[Categories] ([Id], [Name]) VALUES (3, 'Cars')
SET IDENTITY_INSERT [dbo].[Categories] OFF

SELECT * FROM [Categories]
