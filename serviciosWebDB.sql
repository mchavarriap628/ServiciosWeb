USE [master]
GO
/****** Object:  Database [serviciosWebDB]    Script Date: 4/27/2022 8:44:29 PM ******/
CREATE DATABASE [serviciosWebDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'serviciosWebDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\serviciosWebDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'serviciosWebDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\serviciosWebDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [serviciosWebDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [serviciosWebDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [serviciosWebDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [serviciosWebDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [serviciosWebDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [serviciosWebDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [serviciosWebDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [serviciosWebDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [serviciosWebDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [serviciosWebDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [serviciosWebDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [serviciosWebDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [serviciosWebDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [serviciosWebDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [serviciosWebDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [serviciosWebDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [serviciosWebDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [serviciosWebDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [serviciosWebDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [serviciosWebDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [serviciosWebDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [serviciosWebDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [serviciosWebDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [serviciosWebDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [serviciosWebDB] SET RECOVERY FULL 
GO
ALTER DATABASE [serviciosWebDB] SET  MULTI_USER 
GO
ALTER DATABASE [serviciosWebDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [serviciosWebDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [serviciosWebDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [serviciosWebDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [serviciosWebDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [serviciosWebDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'serviciosWebDB', N'ON'
GO
ALTER DATABASE [serviciosWebDB] SET QUERY_STORE = OFF
GO
USE [serviciosWebDB]
GO
/****** Object:  Table [dbo].[facturas]    Script Date: 4/27/2022 8:44:29 PM ******/
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
/****** Object:  Table [dbo].[salarios]    Script Date: 4/27/2022 8:44:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[salarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[correo_empleado] [varchar](50) NOT NULL,
	[salario] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 4/27/2022 8:44:29 PM ******/
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

INSERT [dbo].[facturas] ([id], [numeroFactura], [nombreCliente], [estadoFactura], [descripcionFactura], [monto]) VALUES (1, 0, N'N/A', N'N/A', N'N/A', 0)
INSERT [dbo].[facturas] ([id], [numeroFactura], [nombreCliente], [estadoFactura], [descripcionFactura], [monto]) VALUES (4, 1856938792, N'Sykes', N'pendiente', N'Servicios de soporte a redes', 300000)
INSERT [dbo].[facturas] ([id], [numeroFactura], [nombreCliente], [estadoFactura], [descripcionFactura], [monto]) VALUES (5, 1986830018, N'UCIMED', N'pendiente', N'Cobro por asesoria de IT', 645000)
INSERT [dbo].[facturas] ([id], [numeroFactura], [nombreCliente], [estadoFactura], [descripcionFactura], [monto]) VALUES (6, 2107395267, N'ULACIT', N'cancelado', N'Mensualidad por administración IT', 887000000)
INSERT [dbo].[facturas] ([id], [numeroFactura], [nombreCliente], [estadoFactura], [descripcionFactura], [monto]) VALUES (7, 213303568, N'Allienware', N'pendiente', N'Mensualidad por administración de departamento de IT', 456000)
SET IDENTITY_INSERT [dbo].[facturas] OFF
GO
SET IDENTITY_INSERT [dbo].[salarios] ON 

INSERT [dbo].[salarios] ([id], [correo_empleado], [salario]) VALUES (2, N'manuel@ya.com', 0)
INSERT [dbo].[salarios] ([id], [correo_empleado], [salario]) VALUES (3, N'irvin@ya.com', 540000)
INSERT [dbo].[salarios] ([id], [correo_empleado], [salario]) VALUES (6, N'sindy@ya.com', 550000)
INSERT [dbo].[salarios] ([id], [correo_empleado], [salario]) VALUES (23, N'rafa@ya.com', 50000)
SET IDENTITY_INSERT [dbo].[salarios] OFF
GO
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([id], [nombre], [correo], [contra], [rol]) VALUES (1, N'Manuel', N'manuel@ya.com', N'1qaz', N'contador')
INSERT [dbo].[usuarios] ([id], [nombre], [correo], [contra], [rol]) VALUES (2, N'Irvin Mesén', N'irvin@ya.com', N'1qaz', N'admin')
INSERT [dbo].[usuarios] ([id], [nombre], [correo], [contra], [rol]) VALUES (9, N'Sindy', N'sindy@ya.com', N'sindy123', N'admin')
INSERT [dbo].[usuarios] ([id], [nombre], [correo], [contra], [rol]) VALUES (26, N'Rafa', N'rafa@ya.com', N'hola', N'empleado')
SET IDENTITY_INSERT [dbo].[usuarios] OFF
GO
USE [master]
GO
ALTER DATABASE [serviciosWebDB] SET  READ_WRITE 
GO
