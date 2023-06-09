USE [master]
GO
/****** Object:  Database [Bakkal]    Script Date: 5/11/2023 2:55:21 PM ******/
CREATE DATABASE [Bakkal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bakkal', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Bakkal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bakkal_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Bakkal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Bakkal] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bakkal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bakkal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bakkal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bakkal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bakkal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bakkal] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bakkal] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Bakkal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bakkal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bakkal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bakkal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bakkal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bakkal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bakkal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bakkal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bakkal] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Bakkal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bakkal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bakkal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bakkal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bakkal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bakkal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bakkal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bakkal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Bakkal] SET  MULTI_USER 
GO
ALTER DATABASE [Bakkal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bakkal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bakkal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bakkal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Bakkal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Bakkal] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Bakkal] SET QUERY_STORE = OFF
GO
USE [Bakkal]
GO
/****** Object:  Table [dbo].[GeneralView]    Script Date: 5/11/2023 2:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneralView](
	[NumberOfOperations] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[TotalQuantity] [int] NULL,
	[TotalSalePrice] [money] NULL,
	[TotalPurchasePrice] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciBilgileri]    Script Date: 5/11/2023 2:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciBilgileri](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nchar](12) NULL,
	[Password] [nchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/11/2023 2:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductCode] [int] IDENTITY(1000,1) NOT NULL,
	[ProductName] [nchar](25) NULL,
	[NumberOfProducts] [int] NULL,
	[PurchasePrice] [money] NULL,
	[SalePrice] [money] NULL,
	[ProductImage] [varchar](100) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GeneralView] ON 

INSERT [dbo].[GeneralView] ([NumberOfOperations], [Date], [TotalQuantity], [TotalSalePrice], [TotalPurchasePrice]) VALUES (56, CAST(N'2023-03-12' AS Date), 307, 108.0000, 86.0000)
INSERT [dbo].[GeneralView] ([NumberOfOperations], [Date], [TotalQuantity], [TotalSalePrice], [TotalPurchasePrice]) VALUES (55, CAST(N'2023-03-22' AS Date), 204, 58.0000, 46.0000)
INSERT [dbo].[GeneralView] ([NumberOfOperations], [Date], [TotalQuantity], [TotalSalePrice], [TotalPurchasePrice]) VALUES (1055, CAST(N'2023-03-22' AS Date), 360, 228.0000, 186.0000)
SET IDENTITY_INSERT [dbo].[GeneralView] OFF
GO
SET IDENTITY_INSERT [dbo].[KullaniciBilgileri] ON 

INSERT [dbo].[KullaniciBilgileri] ([id], [Username], [Password]) VALUES (1, N'admin       ', N'123             ')
SET IDENTITY_INSERT [dbo].[KullaniciBilgileri] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductCode], [ProductName], [NumberOfProducts], [PurchasePrice], [SalePrice], [ProductImage]) VALUES (1000, N'Ulker gofret             ', 76, 1.0000, 2.0000, NULL)
INSERT [dbo].[Products] ([ProductCode], [ProductName], [NumberOfProducts], [PurchasePrice], [SalePrice], [ProductImage]) VALUES (1001, N'Bisküvi                  ', 45, 3.0000, 5.0000, NULL)
INSERT [dbo].[Products] ([ProductCode], [ProductName], [NumberOfProducts], [PurchasePrice], [SalePrice], [ProductImage]) VALUES (1002, N'Ayran                    ', 54, 32.0000, 35.0000, NULL)
INSERT [dbo].[Products] ([ProductCode], [ProductName], [NumberOfProducts], [PurchasePrice], [SalePrice], [ProductImage]) VALUES (4006, N'Kahve                    ', 50, 20.0000, 25.0000, N'C:\Users\ahmet\Documents\Lightshot\C# Dosya türü kontrolü.png')
INSERT [dbo].[Products] ([ProductCode], [ProductName], [NumberOfProducts], [PurchasePrice], [SalePrice], [ProductImage]) VALUES (3005, N'Oreo                     ', 60, 10.0000, 16.0000, N'C:\Users\ahmet\Desktop\Projeler\07020070-9b5824-1650x1650.jpg')
INSERT [dbo].[Products] ([ProductCode], [ProductName], [NumberOfProducts], [PurchasePrice], [SalePrice], [ProductImage]) VALUES (4007, N'Pilav                    ', 22, 20.0000, 25.0000, NULL)
INSERT [dbo].[Products] ([ProductCode], [ProductName], [NumberOfProducts], [PurchasePrice], [SalePrice], [ProductImage]) VALUES (5004, N'Gainer                   ', 53, 100.0000, 120.0000, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
USE [master]
GO
ALTER DATABASE [Bakkal] SET  READ_WRITE 
GO
