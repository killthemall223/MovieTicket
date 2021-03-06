USE [master]
GO
/****** Object:  Database [TicketMovie]    Script Date: 3/27/2019 4:16:26 PM ******/
CREATE DATABASE [TicketMovie]
 CONTAINMENT = NONE
ALTER DATABASE [TicketMovie] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TicketMovie].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TicketMovie] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TicketMovie] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TicketMovie] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TicketMovie] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TicketMovie] SET ARITHABORT OFF 
GO
ALTER DATABASE [TicketMovie] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TicketMovie] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TicketMovie] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TicketMovie] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TicketMovie] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TicketMovie] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TicketMovie] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TicketMovie] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TicketMovie] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TicketMovie] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TicketMovie] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TicketMovie] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TicketMovie] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TicketMovie] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TicketMovie] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TicketMovie] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TicketMovie] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TicketMovie] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TicketMovie] SET  MULTI_USER 
GO
ALTER DATABASE [TicketMovie] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TicketMovie] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TicketMovie] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TicketMovie] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TicketMovie] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TicketMovie] SET QUERY_STORE = OFF
GO
USE [TicketMovie]
GO
/****** Object:  Table [dbo].[Ghe]    Script Date: 3/27/2019 4:16:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ghe](
	[MaGhe] [nvarchar](10) NOT NULL,
	[MaPhongChieu] [nvarchar](10) NOT NULL,
	[TenGhe] [nvarchar](50) NOT NULL,
	[LoaiGhe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Ghe_1] PRIMARY KEY CLUSTERED 
(
	[MaGhe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoDich]    Script Date: 3/27/2019 4:16:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoDich](
	[MaTK] [nvarchar](50) NOT NULL,
	[MaGiaoDich] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_GiaoDich_1] PRIMARY KEY CLUSTERED 
(
	[MaGiaoDich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTK]    Script Date: 3/27/2019 4:16:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTK](
	[MaLoaiTK] [nvarchar](10) NOT NULL,
	[LoaiTK] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_LoaiTK] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phim]    Script Date: 3/27/2019 4:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phim](
	[MaPhim] [nvarchar](10) NOT NULL,
	[TenPhim] [nvarchar](50) NOT NULL,
	[TheLoai] [nvarchar](50) NOT NULL,
	[ThoiLuong] [nvarchar](50) NOT NULL,
	[TomTat] [nvarchar](2000) NULL,
	[GioiHanTuoi] [bit] NOT NULL,
	[TGBatDau] [datetime] NOT NULL,
	[TGKetThuc] [datetime] NOT NULL,
 CONSTRAINT [PK_Phim] PRIMARY KEY CLUSTERED 
(
	[MaPhim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhongChieu]    Script Date: 3/27/2019 4:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongChieu](
	[MaPhongChieu] [nvarchar](10) NOT NULL,
	[TenPhongChieu] [nvarchar](50) NOT NULL,
	[MaRap] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_PhongChieu_1] PRIMARY KEY CLUSTERED 
(
	[MaPhongChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rap]    Script Date: 3/27/2019 4:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rap](
	[MaRap] [nvarchar](10) NOT NULL,
	[TenRap] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[MaTK] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NULL,
	[ThanhPho] [nvarchar](50) NULL,
	[QuanHuyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rap] PRIMARY KEY CLUSTERED 
(
	[MaRap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuatChieu]    Script Date: 3/27/2019 4:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuatChieu](
	[MaSuatChieu] [nvarchar](10) NOT NULL,
	[TGBatDauChieu] [time](7) NOT NULL,
	[NgayChieu] [datetime] NOT NULL,
	[MaPhongChieu] [nvarchar](10) NOT NULL,
	[MaPhim] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_SuatChieu_1] PRIMARY KEY CLUSTERED 
(
	[MaSuatChieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 3/27/2019 4:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTK] [nvarchar](50) NOT NULL,
	[HoVaTen] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[NgaySinh] [date] NOT NULL,
	[SDT] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](1000) NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[MaLoaiTK] [nvarchar](10) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NguoiDung] PRIMARY KEY CLUSTERED 
(
	[MaTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ve]    Script Date: 3/27/2019 4:16:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ve](
	[MaGhe] [nvarchar](10) NOT NULL,
	[MaVe] [nvarchar](10) NOT NULL,
	[MaSuatChieu] [nvarchar](10) NOT NULL,
	[Gia] [money] NOT NULL,
	[MaGiaoDich] [nvarchar](20) NULL,
 CONSTRAINT [PK_Ve_1] PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-A1', N'C01-01', N'A-1', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-A10', N'C01-01', N'A-10', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-A2', N'C01-01', N'A-2', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-A3', N'C01-01', N'A-3', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-A4', N'C01-01', N'A-4', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-A5', N'C01-01', N'A-5', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-A6', N'C01-01', N'A-6', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-A7', N'C01-01', N'A-7', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-A8', N'C01-01', N'A-8', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-B1', N'C01-01', N'B-1', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-B10', N'C01-01', N'B-10', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-B2', N'C01-01', N'B-2', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-B3', N'C01-01', N'B-3', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-B4', N'C01-01', N'B-4', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-B5', N'C01-01', N'B-5', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-B6', N'C01-01', N'B-6', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-B7', N'C01-01', N'B-7', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-B8', N'C01-01', N'B-8', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-B9', N'C01-01', N'B-9', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-C1', N'C01-01', N'C-1', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-C10', N'C01-01', N'C-10', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-C2', N'C01-01', N'C-2', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-C3', N'C01-01', N'C-3', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-C4', N'C01-01', N'C-4', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-C5', N'C01-01', N'C-5', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-C6', N'C01-01', N'C-6', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-C7', N'C01-01', N'C-7', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-C8', N'C01-01', N'C-8', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-C9', N'C01-01', N'C-9', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-D1', N'C01-01', N'D-1', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-D10', N'C01-01', N'D-10', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-D2', N'C01-01', N'D-2', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-D3', N'C01-01', N'D-3', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-D4', N'C01-01', N'D-4', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-D5', N'C01-01', N'D-5', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-D6', N'C01-01', N'D-6', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-D7', N'C01-01', N'D-7', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-D8', N'C01-01', N'D-8', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-D9', N'C01-01', N'D-9', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-E1', N'C01-01', N'E-1', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-E10', N'C01-01', N'E-10', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-E2', N'C01-01', N'E-2', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-E3', N'C01-01', N'E-3', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-E4', N'C01-01', N'E-4', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-E5', N'C01-01', N'E-5', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-E6', N'C01-01', N'E-6', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-E7', N'C01-01', N'E-7', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-E8', N'C01-01', N'E-8', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-E9', N'C01-01', N'E-9', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-F1', N'C01-01', N'F-1', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-F10', N'C01-01', N'F-10', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-F2', N'C01-01', N'F-2', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-F3', N'C01-01', N'F-3', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-F4', N'C01-01', N'F-4', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-F5', N'C01-01', N'F-5', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-F6', N'C01-01', N'F-6', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-F7', N'C01-01', N'F-7', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-F8', N'C01-01', N'F-8', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-F9', N'C01-01', N'F-9', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-G1', N'C01-01', N'G-1', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-G10', N'C01-01', N'G-10', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-G2', N'C01-01', N'G-2', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-G3', N'C01-01', N'G-3', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-G4', N'C01-01', N'G-4', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-G5', N'C01-01', N'G-5', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-G6', N'C01-01', N'G-6', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-G7', N'C01-01', N'G-7', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-G8', N'C01-01', N'G-8', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-G9', N'C01-01', N'G-9', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-H1', N'C01-01', N'H-1', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-H10', N'C01-01', N'H-10', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-H2', N'C01-01', N'H-2', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-H3', N'C01-01', N'H-3', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-H4', N'C01-01', N'H-4', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-H5', N'C01-01', N'H-5', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-H6', N'C01-01', N'H-6', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-H7', N'C01-01', N'H-7', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-H8', N'C01-01', N'H-8', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-H9', N'C01-01', N'H-9', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-I1', N'C01-01', N'I-1', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-I10', N'C01-01', N'I-10', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-I2', N'C01-01', N'I-2', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-I3', N'C01-01', N'I-3', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-I4', N'C01-01', N'I-4', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-I5', N'C01-01', N'I-5', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-I6', N'C01-01', N'I-6', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-I7', N'C01-01', N'I-7', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-I8', N'C01-01', N'I-8', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-I9', N'C01-01', N'I-9', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-K1', N'C01-01', N'K-1', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-K10', N'C01-01', N'K-10', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-K2', N'C01-01', N'K-2', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-K3', N'C01-01', N'K-3', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-K4', N'C01-01', N'K-4', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-K5', N'C01-01', N'K-5', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-K6', N'C01-01', N'K-6', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-K7', N'C01-01', N'K-7', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-K8', N'C01-01', N'K-8', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-K9', N'C01-01', N'K-9', N'VIP')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-L1', N'C01-01', N'L-1', N'Normal')
GO
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-L10', N'C01-01', N'L-10', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-L2', N'C01-01', N'L-2', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-L3', N'C01-01', N'L-3', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-L4', N'C01-01', N'L-4', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-L5', N'C01-01', N'L-5', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-L6', N'C01-01', N'L-6', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-L7', N'C01-01', N'L-7', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-L8', N'C01-01', N'L-8', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-L9', N'C01-01', N'L-9', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-M1', N'C01-01', N'M-1', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-M10', N'C01-01', N'M-10', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-M2', N'C01-01', N'M-2', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-M3', N'C01-01', N'M-3', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-M4', N'C01-01', N'M-4', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-M5', N'C01-01', N'M-5', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-M6', N'C01-01', N'M-6', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-M7', N'C01-01', N'M-7', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-M8', N'C01-01', N'M-8', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-M9', N'C01-01', N'M-9', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-N1', N'C01-01', N'N-1', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-N10', N'C01-01', N'N-10', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-N2', N'C01-01', N'N-2', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-N3', N'C01-01', N'N-3', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-N4', N'C01-01', N'N-4', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-N5', N'C01-01', N'N-5', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-N6', N'C01-01', N'N-6', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-N7', N'C01-01', N'N-7', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-N8', N'C01-01', N'N-8', N'Normal')
INSERT [dbo].[Ghe] ([MaGhe], [MaPhongChieu], [TenGhe], [LoaiGhe]) VALUES (N'C01-01-N9', N'C01-01', N'N-9', N'Normal')
INSERT [dbo].[LoaiTK] ([MaLoaiTK], [LoaiTK]) VALUES (N'01', N'Nhân viên rạp')
INSERT [dbo].[LoaiTK] ([MaLoaiTK], [LoaiTK]) VALUES (N'02', N'Người dùng')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C01-01', N'01', N'CINEMA01')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C01-02', N'02', N'CINEMA01')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C01-03', N'03', N'CINEMA01')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C01-04', N'04', N'CINEMA01')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C01-05', N'06', N'CINEMA01')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C01-06', N'06', N'CINEMA02')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C01-07', N'07', N'CINEMA01')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C01-08', N'09', N'CINEMA01')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C01-10', N'10', N'CINEMA01')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C02-01', N'01', N'CINEMA02')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C02-02', N'02', N'CINEMA02')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C02-03', N'03', N'CINEMA02')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C02-04', N'04', N'CINEMA02')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C02-05', N'05', N'CINEMA02')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C02-06', N'06', N'CINEMA02')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C02-07', N'07', N'CINEMA02')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C02-08', N'09', N'CINEMA02')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C02-10', N'10', N'CINEMA02')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C03-01', N'01', N'CINEMA03')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C03-02', N'02', N'CINEMA03')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C03-03', N'03', N'CINEMA03')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C03-04', N'04', N'CINEMA03')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C03-05', N'05', N'CINEMA03')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C03-06', N'06', N'CINEMA03')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C03-07', N'07', N'CINEMA03')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C03-08', N'09', N'CINEMA03')
INSERT [dbo].[PhongChieu] ([MaPhongChieu], [TenPhongChieu], [MaRap]) VALUES (N'C03-10', N'10', N'CINEMA03')
INSERT [dbo].[Rap] ([MaRap], [TenRap], [DiaChi], [MaTK], [SDT], [ThanhPho], [QuanHuyen]) VALUES (N'CINEMA01', N'CINEMA', N'Số 222 Trần Duy Hưng', N'cinema01', N'985666666', N'Hà Nội', N'Cầu Giấy')
INSERT [dbo].[Rap] ([MaRap], [TenRap], [DiaChi], [MaTK], [SDT], [ThanhPho], [QuanHuyen]) VALUES (N'CINEMA02', N'CINEMA02', N'Tầng Hầm B1- TTTM The Garden', N'cinema02', N'068566666', N'Hà Nội', N'Từ Liêm')
INSERT [dbo].[Rap] ([MaRap], [TenRap], [DiaChi], [MaTK], [SDT], [ThanhPho], [QuanHuyen]) VALUES (N'CINEMA03', N'CINEMA03', N'số 7-9 Nguyễn Văn Linh', N'cinema03', N'098566666', N'Hà Nội', N'Long Biên')
INSERT [dbo].[TaiKhoan] ([MaTK], [HoVaTen], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MatKhau], [MaLoaiTK], [Email]) VALUES (N'cinema01', N'Cinema01', 0, CAST(N'1998-09-29' AS Date), N'985666666', N'Tầng 2, Rivera Park Saigon - Số 7/28 Thành Thái, P.14, Q.10, TPHCM', N'11223344', N'01', N'a@m.com')
INSERT [dbo].[TaiKhoan] ([MaTK], [HoVaTen], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MatKhau], [MaLoaiTK], [Email]) VALUES (N'cinema02', N'Cinema02', 0, CAST(N'1995-07-25' AS Date), N'098566666', N'Tầng 18, Tháp Quốc tế Hòa Bình, 106 Hoàng Quốc Việt, Phường Nghĩa Đô, Quận Cầu Giấy, Tp.Hà Nội', N'11223344', N'01', N'cinema02@m.com')
INSERT [dbo].[TaiKhoan] ([MaTK], [HoVaTen], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MatKhau], [MaLoaiTK], [Email]) VALUES (N'cinema03', N'Cinema03', 0, CAST(N'1995-07-28' AS Date), N'098444444', N'Đường Trần Phú, Khu đô thị mới Mỗ Lao, Phường Mỗ Lao, Quận Hà Đông, TP. Hà Nội', N'11223344', N'01', N'cinema3@m.xom')
INSERT [dbo].[TaiKhoan] ([MaTK], [HoVaTen], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MatKhau], [MaLoaiTK], [Email]) VALUES (N'user01', N'User01', 1, CAST(N'1995-08-18' AS Date), N'085666666', N'Tầng hầm B1, Tòa nhà Artemis, số 3 Lê Trọng Tấn, Phường Khương Mai, Quận Thanh Xuân, TP. Hà Nội', N'11223344', N'02', N'abc@mo.com')
INSERT [dbo].[TaiKhoan] ([MaTK], [HoVaTen], [GioiTinh], [NgaySinh], [SDT], [DiaChi], [MatKhau], [MaLoaiTK], [Email]) VALUES (N'user02', N'User02', 1, CAST(N'1996-12-01' AS Date), N'098566666', N'Số 7-9 Nguyễn Văn Linh, Tầng Hầm TTTM Savico Megamall, Quận Long Biên, TP. Hà Nội', N'11223344', N'02', N'a@k.com')
ALTER TABLE [dbo].[Ghe]  WITH CHECK ADD  CONSTRAINT [FK_Ghe_PhongChieu] FOREIGN KEY([MaPhongChieu])
REFERENCES [dbo].[PhongChieu] ([MaPhongChieu])
GO
ALTER TABLE [dbo].[Ghe] CHECK CONSTRAINT [FK_Ghe_PhongChieu]
GO
ALTER TABLE [dbo].[GiaoDich]  WITH CHECK ADD  CONSTRAINT [FK_GiaoDich_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[GiaoDich] CHECK CONSTRAINT [FK_GiaoDich_TaiKhoan]
GO
ALTER TABLE [dbo].[PhongChieu]  WITH CHECK ADD  CONSTRAINT [FK_PhongChieu_Rap] FOREIGN KEY([MaRap])
REFERENCES [dbo].[Rap] ([MaRap])
GO
ALTER TABLE [dbo].[PhongChieu] CHECK CONSTRAINT [FK_PhongChieu_Rap]
GO
ALTER TABLE [dbo].[Rap]  WITH CHECK ADD  CONSTRAINT [FK_Rap_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([MaTK])
GO
ALTER TABLE [dbo].[Rap] CHECK CONSTRAINT [FK_Rap_TaiKhoan]
GO
ALTER TABLE [dbo].[SuatChieu]  WITH CHECK ADD  CONSTRAINT [FK_SuatChieu_Phim] FOREIGN KEY([MaPhim])
REFERENCES [dbo].[Phim] ([MaPhim])
GO
ALTER TABLE [dbo].[SuatChieu] CHECK CONSTRAINT [FK_SuatChieu_Phim]
GO
ALTER TABLE [dbo].[SuatChieu]  WITH CHECK ADD  CONSTRAINT [FK_SuatChieu_PhongChieu] FOREIGN KEY([MaPhongChieu])
REFERENCES [dbo].[PhongChieu] ([MaPhongChieu])
GO
ALTER TABLE [dbo].[SuatChieu] CHECK CONSTRAINT [FK_SuatChieu_PhongChieu]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_LoaiTK] FOREIGN KEY([MaLoaiTK])
REFERENCES [dbo].[LoaiTK] ([MaLoaiTK])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_LoaiTK]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_Ghe] FOREIGN KEY([MaGhe])
REFERENCES [dbo].[Ghe] ([MaGhe])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_Ghe]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_GiaoDich] FOREIGN KEY([MaGiaoDich])
REFERENCES [dbo].[GiaoDich] ([MaGiaoDich])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_GiaoDich]
GO
ALTER TABLE [dbo].[Ve]  WITH CHECK ADD  CONSTRAINT [FK_Ve_SuatChieu] FOREIGN KEY([MaSuatChieu])
REFERENCES [dbo].[SuatChieu] ([MaSuatChieu])
GO
ALTER TABLE [dbo].[Ve] CHECK CONSTRAINT [FK_Ve_SuatChieu]
GO
USE [master]
GO
ALTER DATABASE [TicketMovie] SET  READ_WRITE 
GO
