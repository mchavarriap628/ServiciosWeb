USE [serviciosWebDB]
GO
/****** Object:  Table [dbo].[facturas]    Script Date: 28/4/2022 22:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facturas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[numeroFactura] [int] NULL,
	[nombreCliente] [varchar](100) NULL,
	[estadoFactura] [varchar](10) NULL,
	[descripcionFactura] [varchar](100) NULL,
	[monto] [int] NULL,
 CONSTRAINT [PK_facturas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[salarios]    Script Date: 28/4/2022 22:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[correo_empleado] [varchar](50) NOT NULL,
	[salario] [int] NOT NULL,
	[bono] [int] NULL,
	[pension] [int] NULL,
	[seguro] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 28/4/2022 22:40:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[correo] [varchar](50) NULL,
	[contra] [varchar](50) NULL,
	[rol] [varchar](50) NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[facturas] ON 
GO
INSERT [dbo].[facturas] ([id], [numeroFactura], [nombreCliente], [estadoFactura], [descripcionFactura], [monto]) VALUES (1, 0, N'N/A', N'N/A', N'N/A', 0)
GO
INSERT [dbo].[facturas] ([id], [numeroFactura], [nombreCliente], [estadoFactura], [descripcionFactura], [monto]) VALUES (4, 1856938792, N'Sykes', N'pendiente', N'Servicios de soporte a redes', 300000)
GO
INSERT [dbo].[facturas] ([id], [numeroFactura], [nombreCliente], [estadoFactura], [descripcionFactura], [monto]) VALUES (5, 1986830018, N'UCIMED', N'pendiente', N'Cobro por asesoria de IT', 645000)
GO
INSERT [dbo].[facturas] ([id], [numeroFactura], [nombreCliente], [estadoFactura], [descripcionFactura], [monto]) VALUES (6, 2107395267, N'ULACIT', N'cancelado', N'Mensualidad por administración IT', 887000000)
GO
INSERT [dbo].[facturas] ([id], [numeroFactura], [nombreCliente], [estadoFactura], [descripcionFactura], [monto]) VALUES (7, 213303568, N'Allienware', N'pendiente', N'Mensualidad por administración de departamento de IT', 456000)
GO
SET IDENTITY_INSERT [dbo].[facturas] OFF
GO
SET IDENTITY_INSERT [dbo].[salarios] ON 
GO
INSERT [dbo].[salarios] ([id], [correo_empleado], [salario], [bono], [pension], [seguro]) VALUES (2, N'manuel@ya.com', 135431, 10, 12, 54)
GO
INSERT [dbo].[salarios] ([id], [correo_empleado], [salario], [bono], [pension], [seguro]) VALUES (3, N'irvin@ya.com', 540000, 120, 17, 54)
GO
INSERT [dbo].[salarios] ([id], [correo_empleado], [salario], [bono], [pension], [seguro]) VALUES (6, N'sindy@ya.com', 550000, 651, 54, 54)
GO
INSERT [dbo].[salarios] ([id], [correo_empleado], [salario], [bono], [pension], [seguro]) VALUES (23, N'rafa@ya.com', 50000, 65, 54, NULL)
GO
SET IDENTITY_INSERT [dbo].[salarios] OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios] ON 
GO
INSERT [dbo].[usuarios] ([id], [nombre], [correo], [contra], [rol]) VALUES (1, N'Manuel', N'manuel@ya.com', N'123', N'contador')
GO
INSERT [dbo].[usuarios] ([id], [nombre], [correo], [contra], [rol]) VALUES (2, N'Irvin Mesén', N'irvin@ya.com', N'1qaz', N'admin')
GO
INSERT [dbo].[usuarios] ([id], [nombre], [correo], [contra], [rol]) VALUES (9, N'Sindy', N'sindy@ya.com', N'sindy123', N'admin')
GO
INSERT [dbo].[usuarios] ([id], [nombre], [correo], [contra], [rol]) VALUES (26, N'Rafa', N'rafa@ya.com', N'hola', N'empleado')
GO
SET IDENTITY_INSERT [dbo].[usuarios] OFF
GO
