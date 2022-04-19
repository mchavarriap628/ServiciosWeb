USE [master]
GO
/****** Object:  Database [serviciosWebDB]    Script Date: 4/18/2022 9:57:39 PM ******/
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
/****** Object:  Table [dbo].[usuarios]    Script Date: 4/18/2022 9:57:40 PM ******/
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
SET IDENTITY_INSERT [dbo].[usuarios] ON 

INSERT [dbo].[usuarios] ([id], [nombre], [correo], [contra], [rol]) VALUES (1, N'Manuel', N'manuel@ya.com', N'123', N'contador')
INSERT [dbo].[usuarios] ([id], [nombre], [correo], [contra], [rol]) VALUES (2, N'Irvin Mesén', N'irvin@ya.com', N'1qaz', N'admin')
INSERT [dbo].[usuarios] ([id], [nombre], [correo], [contra], [rol]) VALUES (3, N'Levi', N'levi@ya.com', N'2wsx', N'empleado')
SET IDENTITY_INSERT [dbo].[usuarios] OFF
GO
USE [master]
GO
ALTER DATABASE [serviciosWebDB] SET  READ_WRITE 
GO
