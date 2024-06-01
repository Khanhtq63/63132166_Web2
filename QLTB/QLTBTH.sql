USE [master]
GO
/****** Object:  Database [QLTBTH]    Script Date: 5/29/2024 7:20:03 PM ******/
CREATE DATABASE [QLTBTH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLTBTH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVERX\MSSQL\DATAQLTBTH.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLTBTH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVERX\MSSQL\DATA\QLTBTH_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLTBTH] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLTBTH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLTBTH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLTBTH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLTBTH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLTBTH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLTBTH] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLTBTH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLTBTH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLTBTH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLTBTH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLTBTH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLTBTH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLTBTH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLTBTH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLTBTH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLTBTH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLTBTH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLTBTH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLTBTH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLTBTH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLTBTH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLTBTH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLTBTH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLTBTH] SET RECOVERY FULL 
GO
ALTER DATABASE [QLTBTH] SET  MULTI_USER 
GO
ALTER DATABASE [QLTBTH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLTBTH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLTBTH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLTBTH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLTBTH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLTBTH] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLTBTH', N'ON'
GO
ALTER DATABASE [QLTBTH] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLTBTH] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 5/29/2024 7:20:03 PM ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 5/29/2024 7:20:03 PM ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY]    Script Date: 5/29/2024 7:20:03 PM ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 5/29/2024 7:20:03 PM ******/
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\MSSQLSERVER]    Script Date: 5/29/2024 7:20:03 PM ******/
CREATE LOGIN [NT SERVICE\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 5/29/2024 7:20:03 PM ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [MYLAPTOP\ASUS]    Script Date: 5/29/2024 7:20:03 PM ******/
CREATE LOGIN [MYLAPTOP\ASUS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 5/29/2024 7:20:03 PM ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'Xw9YPRbBnf+exk3p2u5blbWwxDK5q1L7KlJSNJXf6go=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 5/29/2024 7:20:03 PM ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'pMILHxl3ZNN/zk31GN1W4zAjJedDBUmRv/hGsK4XqsI=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[QLTBTH] TO [MYLAPTOP\ASUS]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\MSSQLSERVER]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [MYLAPTOP\ASUS]
GO
USE [QLTBTH]
GO
GRANT VIEW ANY COLUMN ENCRYPTION KEY DEFINITION TO [public] AS [dbo]
GO
GRANT VIEW ANY COLUMN MASTER KEY DEFINITION TO [public] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[Tong]    Script Date: 5/29/2024 7:20:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Tong] (@a int, @b int)
RETURNS int
AS
BEGIN
return @a+@b
END
GO
ALTER AUTHORIZATION ON [dbo].[Tong] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[PHIEUMUON]    Script Date: 5/29/2024 7:20:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PHIEUMUON](
	[MAPHIEUMUON] [bigint] IDENTITY(1,1) NOT NULL,
	[MAPHONG] [nvarchar](20) NOT NULL,
	[LOP] [nvarchar](20) NOT NULL,
	[TDMUON] [smalldatetime] NOT NULL,
	[HANTRA] [smalldatetime] NOT NULL,
	[TDTRA] [smalldatetime] NULL,
	[NGUOILAP] [varchar](20) NULL,
 CONSTRAINT [PK_PHIEUMUON] PRIMARY KEY CLUSTERED 
(
	[MAPHIEUMUON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[PHIEUMUON] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[dsPhieuMuonQuaHan]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[dsPhieuMuonQuaHan]
as
select * from PHIEUMUON 
where TDTRA is null and hanTra <GETDATE()
GO
ALTER AUTHORIZATION ON [dbo].[dsPhieuMuonQuaHan] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[CTPHIEUMUON]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPHIEUMUON](
	[MACHITIETPM] [bigint] IDENTITY(1,1) NOT NULL,
	[MAPHIEUMUON] [bigint] NOT NULL,
	[MATHIETBI] [int] NOT NULL,
	[NGUOIMUON] [nvarchar](15) NOT NULL,
	[TRANGTHAI] [tinyint] NOT NULL,
 CONSTRAINT [PK_CTPHIEUMUON] PRIMARY KEY CLUSTERED 
(
	[MACHITIETPM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[CTPHIEUMUON] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[LOAITHIETBI]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITHIETBI](
	[MALOAI] [int] IDENTITY(1,1) NOT NULL,
	[TENLOAI] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_LOAITHIETBI_1] PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[LOAITHIETBI] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOP](
	[MALOP] [nvarchar](20) NOT NULL,
	[SISO] [tinyint] NOT NULL,
	[HOTENGVCN] [nvarchar](30) NOT NULL,
	[MAGIAOVIEN] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_LOP] PRIMARY KEY CLUSTERED 
(
	[MALOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[LOP] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[NGUOIMUON]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIMUON](
	[MANGUOIMUON] [nvarchar](15) NOT NULL,
	[TENNGUOIMUON] [nvarchar](50) NOT NULL,
	[EMAIL] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NGUOIMUON] PRIMARY KEY CLUSTERED 
(
	[MANGUOIMUON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[NGUOIMUON] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [varchar](20) NOT NULL,
	[HOTENNV] [nvarchar](50) NOT NULL,
	[CMND] [varchar](15) NOT NULL,
	[EMAIL] [nvarchar](50) NOT NULL,
	[SDT] [varchar](15) NOT NULL,
	[TAIKHOAN] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[NHANVIEN] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[PHONG]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHONG](
	[MAPHONG] [nvarchar](20) NOT NULL,
	[TRANGTHAI] [tinyint] NOT NULL,
 CONSTRAINT [PK_PHONG] PRIMARY KEY CLUSTERED 
(
	[MAPHONG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[PHONG] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[TENTAIKHOAN] [nvarchar](30) NOT NULL,
	[MATKHAU] [varchar](100) NOT NULL,
	[LOAITAIKHOAN] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TAIKHOAN] PRIMARY KEY CLUSTERED 
(
	[TENTAIKHOAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[TAIKHOAN] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[THIETBI]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THIETBI](
	[MATHIETBI] [int] IDENTITY(1,1) NOT NULL,
	[TENTHIETBI] [nvarchar](30) NOT NULL,
	[LOAITHIETBI] [int] NOT NULL,
	[MAPHONG] [nvarchar](50) NULL,
	[TINHTRANGTB] [tinyint] NOT NULL,
 CONSTRAINT [PK_THIETBI] PRIMARY KEY CLUSTERED 
(
	[MATHIETBI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[THIETBI] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[TRANGTHAI]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANGTHAI](
	[MATINHTRANG] [tinyint] IDENTITY(1,1) NOT NULL,
	[TINHTRANG] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_TRANGTHAI] PRIMARY KEY CLUSTERED 
(
	[MATINHTRANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[TRANGTHAI] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[CTPHIEUMUON] ON 

INSERT [dbo].[CTPHIEUMUON] ([MACHITIETPM], [MAPHIEUMUON], [MATHIETBI], [NGUOIMUON], [TRANGTHAI]) VALUES (1, 2, 1, N'63135353', 5)
INSERT [dbo].[CTPHIEUMUON] ([MACHITIETPM], [MAPHIEUMUON], [MATHIETBI], [NGUOIMUON], [TRANGTHAI]) VALUES (2, 2, 3, N'63135353', 5)
INSERT [dbo].[CTPHIEUMUON] ([MACHITIETPM], [MAPHIEUMUON], [MATHIETBI], [NGUOIMUON], [TRANGTHAI]) VALUES (3, 2, 1, N'63135353', 4)
INSERT [dbo].[CTPHIEUMUON] ([MACHITIETPM], [MAPHIEUMUON], [MATHIETBI], [NGUOIMUON], [TRANGTHAI]) VALUES (4, 2, 5, N'63135353', 4)
SET IDENTITY_INSERT [dbo].[CTPHIEUMUON] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAITHIETBI] ON 

INSERT [dbo].[LOAITHIETBI] ([MALOAI], [TENLOAI]) VALUES (1, N'HDMI')
SET IDENTITY_INSERT [dbo].[LOAITHIETBI] OFF
GO
INSERT [dbo].[LOP] ([MALOP], [SISO], [HOTENGVCN], [MAGIAOVIEN]) VALUES (N'6/1', 45, N'Quang Huy', N'1231241244')
INSERT [dbo].[LOP] ([MALOP], [SISO], [HOTENGVCN], [MAGIAOVIEN]) VALUES (N'6/11', 45, N'Thánh Nguyễn', N'1242352355')
INSERT [dbo].[LOP] ([MALOP], [SISO], [HOTENGVCN], [MAGIAOVIEN]) VALUES (N'6/5', 45, N'Phan Thị Lý', N'1234567890')
INSERT [dbo].[LOP] ([MALOP], [SISO], [HOTENGVCN], [MAGIAOVIEN]) VALUES (N'7/5', 45, N'Trần Huyền', N'0987654321')
INSERT [dbo].[LOP] ([MALOP], [SISO], [HOTENGVCN], [MAGIAOVIEN]) VALUES (N'7/8', 34, N'Trọng Thần', N'1235425345')
INSERT [dbo].[LOP] ([MALOP], [SISO], [HOTENGVCN], [MAGIAOVIEN]) VALUES (N'8/4', 40, N'Nguyễn Thắng', N'1213144534')
INSERT [dbo].[LOP] ([MALOP], [SISO], [HOTENGVCN], [MAGIAOVIEN]) VALUES (N'8/5', 45, N'Giáp Văn Tài', N'1234554321')
INSERT [dbo].[LOP] ([MALOP], [SISO], [HOTENGVCN], [MAGIAOVIEN]) VALUES (N'9/1', 45, N'Phúc Nguyễn', N'1543534563')
INSERT [dbo].[LOP] ([MALOP], [SISO], [HOTENGVCN], [MAGIAOVIEN]) VALUES (N'9/5', 45, N'Quốc Khánh', N'1233432453')
GO
INSERT [dbo].[NGUOIMUON] ([MANGUOIMUON], [TENNGUOIMUON], [EMAIL]) VALUES (N'63135353', N'Giáp Văn Tài', N'vantaigiap01@gmail.com')
INSERT [dbo].[NGUOIMUON] ([MANGUOIMUON], [TENNGUOIMUON], [EMAIL]) VALUES (N'63135359', N'Quốc Khánh', N'khanh.tq.63cntt@ntu.edu.vn')
GO
INSERT [dbo].[NHANVIEN] ([MANV], [HOTENNV], [CMND], [EMAIL], [SDT], [TAIKHOAN]) VALUES (N'NV02', N'Giáp Văn Tài', N'056203000926', N'vantaigiap01@gmail.com', N'0773753848', N'gvt293')
INSERT [dbo].[NHANVIEN] ([MANV], [HOTENNV], [CMND], [EMAIL], [SDT], [TAIKHOAN]) VALUES (N'NV03', N'Trần Quốc Khánh', N'0987654321', N'khanh.tq.63cntt@ntu.edu.vn', N'1234567890', N'khanhmap')
GO
SET IDENTITY_INSERT [dbo].[PHIEUMUON] ON 

INSERT [dbo].[PHIEUMUON] ([MAPHIEUMUON], [MAPHONG], [LOP], [TDMUON], [HANTRA], [TDTRA], [NGUOILAP]) VALUES (2, N'101', N'6/1', CAST(N'2024-05-28T23:22:00' AS SmallDateTime), CAST(N'2024-05-28T23:25:00' AS SmallDateTime), NULL, N'NV02')
SET IDENTITY_INSERT [dbo].[PHIEUMUON] OFF
GO
INSERT [dbo].[PHONG] ([MAPHONG], [TRANGTHAI]) VALUES (N'101', 2)
INSERT [dbo].[PHONG] ([MAPHONG], [TRANGTHAI]) VALUES (N'102', 1)
INSERT [dbo].[PHONG] ([MAPHONG], [TRANGTHAI]) VALUES (N'103', 3)
INSERT [dbo].[PHONG] ([MAPHONG], [TRANGTHAI]) VALUES (N'105', 1)
INSERT [dbo].[PHONG] ([MAPHONG], [TRANGTHAI]) VALUES (N'CSVC', 1)
GO
INSERT [dbo].[TAIKHOAN] ([TENTAIKHOAN], [MATKHAU], [LOAITAIKHOAN]) VALUES (N'admin', N'   ðñž”UHCT®¶A%î¥Èa¶iNƒìQD…EC', N'admin')
INSERT [dbo].[TAIKHOAN] ([TENTAIKHOAN], [MATKHAU], [LOAITAIKHOAN]) VALUES (N'gvt293', N'   ¹#pªK»yS	Uxábüg}wø#	­‘¦D¾\', N'user')
INSERT [dbo].[TAIKHOAN] ([TENTAIKHOAN], [MATKHAU], [LOAITAIKHOAN]) VALUES (N'khanhmap', N'   yŸniœrh šU“uªdöy}ÿ_—aãéf¦EâúŽ', N'user')
GO
SET IDENTITY_INSERT [dbo].[THIETBI] ON 

INSERT [dbo].[THIETBI] ([MATHIETBI], [TENTHIETBI], [LOAITHIETBI], [MAPHONG], [TINHTRANGTB]) VALUES (1, N'HDMI Samsung', 1, N'101', 2)
INSERT [dbo].[THIETBI] ([MATHIETBI], [TENTHIETBI], [LOAITHIETBI], [MAPHONG], [TINHTRANGTB]) VALUES (2, N'HDMI Samsung', 1, N'102', 1)
INSERT [dbo].[THIETBI] ([MATHIETBI], [TENTHIETBI], [LOAITHIETBI], [MAPHONG], [TINHTRANGTB]) VALUES (3, N'HDMI Anker', 1, N'101', 1)
INSERT [dbo].[THIETBI] ([MATHIETBI], [TENTHIETBI], [LOAITHIETBI], [MAPHONG], [TINHTRANGTB]) VALUES (4, N'HDMI Anker', 1, N'103', 1)
INSERT [dbo].[THIETBI] ([MATHIETBI], [TENTHIETBI], [LOAITHIETBI], [MAPHONG], [TINHTRANGTB]) VALUES (5, N'HDMI Xiaomi', 1, N'101', 2)
INSERT [dbo].[THIETBI] ([MATHIETBI], [TENTHIETBI], [LOAITHIETBI], [MAPHONG], [TINHTRANGTB]) VALUES (6, N'HDMI Xiaomi', 1, NULL, 1)
INSERT [dbo].[THIETBI] ([MATHIETBI], [TENTHIETBI], [LOAITHIETBI], [MAPHONG], [TINHTRANGTB]) VALUES (7, N'HDMI Baseus', 1, NULL, 1)
INSERT [dbo].[THIETBI] ([MATHIETBI], [TENTHIETBI], [LOAITHIETBI], [MAPHONG], [TINHTRANGTB]) VALUES (8, N'HDMI Baseus', 1, NULL, 1)
INSERT [dbo].[THIETBI] ([MATHIETBI], [TENTHIETBI], [LOAITHIETBI], [MAPHONG], [TINHTRANGTB]) VALUES (9, N'HDMI Baseus', 1, NULL, 1)
INSERT [dbo].[THIETBI] ([MATHIETBI], [TENTHIETBI], [LOAITHIETBI], [MAPHONG], [TINHTRANGTB]) VALUES (10, N'HDMI Baseus', 1, NULL, 1)
INSERT [dbo].[THIETBI] ([MATHIETBI], [TENTHIETBI], [LOAITHIETBI], [MAPHONG], [TINHTRANGTB]) VALUES (11, N'HDMI Baseus', 1, NULL, 1)
INSERT [dbo].[THIETBI] ([MATHIETBI], [TENTHIETBI], [LOAITHIETBI], [MAPHONG], [TINHTRANGTB]) VALUES (12, N'HDMI Anker', 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[THIETBI] OFF
GO
SET IDENTITY_INSERT [dbo].[TRANGTHAI] ON 

INSERT [dbo].[TRANGTHAI] ([MATINHTRANG], [TINHTRANG]) VALUES (1, N'Sẵn Sàng Cho Mượn')
INSERT [dbo].[TRANGTHAI] ([MATINHTRANG], [TINHTRANG]) VALUES (2, N'Đang Cho Mượn')
INSERT [dbo].[TRANGTHAI] ([MATINHTRANG], [TINHTRANG]) VALUES (3, N'Bảo Trì')
INSERT [dbo].[TRANGTHAI] ([MATINHTRANG], [TINHTRANG]) VALUES (4, N'Chưa Trả')
INSERT [dbo].[TRANGTHAI] ([MATINHTRANG], [TINHTRANG]) VALUES (5, N'Đã Trả')
INSERT [dbo].[TRANGTHAI] ([MATINHTRANG], [TINHTRANG]) VALUES (6, N'Mất')
INSERT [dbo].[TRANGTHAI] ([MATINHTRANG], [TINHTRANG]) VALUES (7, N'Hư hỏng')
INSERT [dbo].[TRANGTHAI] ([MATINHTRANG], [TINHTRANG]) VALUES (8, N'Có PM Chưa Trả')
SET IDENTITY_INSERT [dbo].[TRANGTHAI] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_NHANVIEN]    Script Date: 5/29/2024 7:20:04 PM ******/
ALTER TABLE [dbo].[NHANVIEN] ADD  CONSTRAINT [UK_NHANVIEN] UNIQUE NONCLUSTERED 
(
	[SDT] ASC,
	[CMND] ASC,
	[EMAIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NHANVIEN__8C5E6104210655B0]    Script Date: 5/29/2024 7:20:04 PM ******/
ALTER TABLE [dbo].[NHANVIEN] ADD  CONSTRAINT [UQ__NHANVIEN__8C5E6104210655B0] UNIQUE NONCLUSTERED 
(
	[TAIKHOAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CTPHIEUMUON] ADD  CONSTRAINT [DF_CTPHIEUMUON_TRANGTHAI]  DEFAULT ((4)) FOR [TRANGTHAI]
GO
ALTER TABLE [dbo].[PHONG] ADD  CONSTRAINT [DF_PHONG_TRANGTHAI]  DEFAULT ((1)) FOR [TRANGTHAI]
GO
ALTER TABLE [dbo].[THIETBI] ADD  CONSTRAINT [DF_CTTHIETBI_TINHTRANGTB]  DEFAULT ((1)) FOR [TINHTRANGTB]
GO
ALTER TABLE [dbo].[CTPHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_CTPHIEUMUON_NGUOIMUON] FOREIGN KEY([NGUOIMUON])
REFERENCES [dbo].[NGUOIMUON] ([MANGUOIMUON])
GO
ALTER TABLE [dbo].[CTPHIEUMUON] CHECK CONSTRAINT [FK_CTPHIEUMUON_NGUOIMUON]
GO
ALTER TABLE [dbo].[CTPHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_CTPHIEUMUON_PHIEUMUON] FOREIGN KEY([MAPHIEUMUON])
REFERENCES [dbo].[PHIEUMUON] ([MAPHIEUMUON])
GO
ALTER TABLE [dbo].[CTPHIEUMUON] CHECK CONSTRAINT [FK_CTPHIEUMUON_PHIEUMUON]
GO
ALTER TABLE [dbo].[CTPHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_CTPHIEUMUON_THIETBI] FOREIGN KEY([MATHIETBI])
REFERENCES [dbo].[THIETBI] ([MATHIETBI])
GO
ALTER TABLE [dbo].[CTPHIEUMUON] CHECK CONSTRAINT [FK_CTPHIEUMUON_THIETBI]
GO
ALTER TABLE [dbo].[CTPHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_CTPHIEUMUON_TRANGTHAI] FOREIGN KEY([TRANGTHAI])
REFERENCES [dbo].[TRANGTHAI] ([MATINHTRANG])
GO
ALTER TABLE [dbo].[CTPHIEUMUON] CHECK CONSTRAINT [FK_CTPHIEUMUON_TRANGTHAI]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_TAIKHOAN] FOREIGN KEY([TAIKHOAN])
REFERENCES [dbo].[TAIKHOAN] ([TENTAIKHOAN])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_TAIKHOAN]
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUMUON_LOP] FOREIGN KEY([LOP])
REFERENCES [dbo].[LOP] ([MALOP])
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [FK_PHIEUMUON_LOP]
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUMUON_NHANVIEN] FOREIGN KEY([NGUOILAP])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [FK_PHIEUMUON_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [FK_PHIEUMUON_PHONG] FOREIGN KEY([MAPHONG])
REFERENCES [dbo].[PHONG] ([MAPHONG])
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [FK_PHIEUMUON_PHONG]
GO
ALTER TABLE [dbo].[PHONG]  WITH CHECK ADD  CONSTRAINT [FK_PHONG_TRANGTHAI] FOREIGN KEY([TRANGTHAI])
REFERENCES [dbo].[TRANGTHAI] ([MATINHTRANG])
GO
ALTER TABLE [dbo].[PHONG] CHECK CONSTRAINT [FK_PHONG_TRANGTHAI]
GO
ALTER TABLE [dbo].[THIETBI]  WITH CHECK ADD  CONSTRAINT [FK_THIETBI_LOAITHIETBI] FOREIGN KEY([LOAITHIETBI])
REFERENCES [dbo].[LOAITHIETBI] ([MALOAI])
GO
ALTER TABLE [dbo].[THIETBI] CHECK CONSTRAINT [FK_THIETBI_LOAITHIETBI]
GO
ALTER TABLE [dbo].[THIETBI]  WITH CHECK ADD  CONSTRAINT [FK_THIETBI_TRANGTHAI] FOREIGN KEY([TINHTRANGTB])
REFERENCES [dbo].[TRANGTHAI] ([MATINHTRANG])
GO
ALTER TABLE [dbo].[THIETBI] CHECK CONSTRAINT [FK_THIETBI_TRANGTHAI]
GO
ALTER TABLE [dbo].[CTPHIEUMUON]  WITH CHECK ADD  CONSTRAINT [CK_TRANGTHAI_CTPHIEUMUON] CHECK  (([TRANGTHAI]='6' OR [TRANGTHAI]='5' OR [TRANGTHAI]='4'))
GO
ALTER TABLE [dbo].[CTPHIEUMUON] CHECK CONSTRAINT [CK_TRANGTHAI_CTPHIEUMUON]
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [CK_PHIEUMUON_HANTRA] CHECK  (([HANTRA]>[TDMUON]))
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [CK_PHIEUMUON_HANTRA]
GO
ALTER TABLE [dbo].[PHIEUMUON]  WITH CHECK ADD  CONSTRAINT [CK_PHIEUMUON_TDTRA] CHECK  (([TDTRA]>[TDMUON]))
GO
ALTER TABLE [dbo].[PHIEUMUON] CHECK CONSTRAINT [CK_PHIEUMUON_TDTRA]
GO
ALTER TABLE [dbo].[PHONG]  WITH CHECK ADD  CONSTRAINT [CK_TRANGTHAI_PHONG] CHECK  (([TRANGTHAI]='8' OR [TRANGTHAI]='3' OR [TRANGTHAI]='2' OR [TRANGTHAI]='1'))
GO
ALTER TABLE [dbo].[PHONG] CHECK CONSTRAINT [CK_TRANGTHAI_PHONG]
GO
ALTER TABLE [dbo].[THIETBI]  WITH CHECK ADD  CONSTRAINT [CK_TINHTRANG_THIETBI] CHECK  (([TINHTRANGTB]='6' OR [TINHTRANGTB]='3' OR [TINHTRANGTB]='2' OR [TINHTRANGTB]='1'))
GO
ALTER TABLE [dbo].[THIETBI] CHECK CONSTRAINT [CK_TINHTRANG_THIETBI]
GO
/****** Object:  StoredProcedure [dbo].[sp_ac]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ac]
as
declare @ma_next char(30)
set @ma_next='5vadvvavva'
select @ma_next
GO
ALTER AUTHORIZATION ON [dbo].[sp_ac] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_baomatthietbi]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_baomatthietbi] (@MaTB nvarchar(30))
as  

	/* SP Thông báo mất thiết bị
	Cập nhật lại trạng thái thiết= 6(mất)
	*/
	 begin
			update THIETBI
			set TINHTRANGTB='6'
		  where THIETBI.MATHIETBI=@MaTB
	end
GO
ALTER AUTHORIZATION ON [dbo].[sp_baomatthietbi] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_baotriphong]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_baotriphong] (@Phong nvarchar(20))
as  

	/* SP Bảo Trì Phòng
	Cập nhật lại trạng thái phòng = 3(bảo trì)
	*/
  
	 begin
			update PHONG
			set TRANGTHAI='3'
		  where PHONG.MAPHONG=@Phong
	end
GO
ALTER AUTHORIZATION ON [dbo].[sp_baotriphong] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_baotrithietbi]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_baotrithietbi] (@MaTB nvarchar(30))
as  

	/* SP Thông báo bảo trì thiết bị
	Cập nhật lại trạng thái thiết= 3(bảo trì)
	Chỉ có thể bảo trì những thiết bị đang ở trong kho (trạng thai 1)
	*/
  if exists(select * from THIETBI where THIETBI.MATHIETBI=@MaTB and TINHTRANGTB='1')
	 begin
			update THIETBI
			set TINHTRANGTB='3'
		  where THIETBI.MATHIETBI=@MaTB
	end
GO
ALTER AUTHORIZATION ON [dbo].[sp_baotrithietbi] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_changepass]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_changepass] @UserName varchar(30), @PassOld varchar(100),@PassNew varchar(100),@Result bit output
	 as

		set @UserName=CAST(@UserName AS varchar(30))
		set @PassOld=CAST(@PassOld as varchar(100))
		set @PassNew=CAST(@PassNew AS varchar(100))
		Declare @KhoaMaHoa varchar(100)
		set @KhoaMaHoa =(select MATKHAU from TAIKHOAN
					where TENTAIKHOAN=@UserName)
	
		Declare @KhoaGiaiMa varchar(100)
		set @KhoaGiaiMa =(select convert(varchar(100),DecryptByPassPhrase('qltbthcs', @KhoaMaHoa)))
		 if(@PassOld = @KhoaGiaiMa)
		 begin
			update TaiKhoan
			set MATKHAU=@PassNew
			where TENTAIKHOAN=@UserName
			set @Result=1;
		 end
		else 
		set @Result=0;
GO
ALTER AUTHORIZATION ON [dbo].[sp_changepass] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_getThietBiTrong_Phong]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_getThietBiTrong_Phong]
as
select LOAITHIETBI, MAPHONG, count(MATHIETBI) as SoLuong
  from THIETBI 
group by LOAITHIETBI, MAPHONG,TINHTRANGTB
having MAPHONG='P.8' and TINHTRANGTB='1'
GO
ALTER AUTHORIZATION ON [dbo].[sp_getThietBiTrong_Phong] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_hoantatbaotriphong]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[sp_hoantatbaotriphong] (@Phong nvarchar(20))
as  
	/* SP Ghi  Nhận Hoàn Tất Bảo Trì Phòng
	Nếu phòng đang ở trạng thái 3 (bảo trì) thì tiến hành cập nhật
	Tiến hành tìm lại trạng thái hiện tại của phòng
	*/
    if exists(select * from PHONG where PHONG.MAPHONG=@Phong  and PHONG.TRANGTHAI='3')
	 begin 
					   /* nếu tất cả phiếu mượn của phòng vừa cập nhật chưa trả hết thì tiếp tục kiểm tra
									nếu tồn tại 1 phiếu mượn chưa hết hạn trả thì set lại trang thái phòng = 2(đang cho mượn)
									nếu tất cả phiếu mượn đều đã quá hạn trả thì sset lại trang thái phòng = 8(có PM chưa trả)
						*/
					   if exists ( select * from PHIEUMUON where PHIEUMUON.MAPHONG=@Phong and PHIEUMUON.TDTRA is null )
							 begin
								if exists ( select * from PHIEUMUON where PHIEUMUON.MAPHONG=@Phong and PHIEUMUON.TDTRA is null and PHIEUMUON.HANTRA > CURRENT_TIMESTAMP)
									  begin 
											update PHONG
										set PHONG.TRANGTHAI='2'
										where PHONG.MAPHONG=(@Phong)
									  end
				
								 else 
									begin 
											update PHONG
										set PHONG.TRANGTHAI='8'
										where PHONG.MAPHONG=@Phong
									  end

							 end
					  else
					   /*còn không nếu tất cả phiếu mượn của phòng vừa cập nhật đã được trả hết thì set lại trang thái phòng =1(sẵn sàng cho mượn)*/
						begin
							update PHONG
							set PHONG.TRANGTHAI='1'
							where PHONG.MAPHONG=@Phong
						end
			
		end
	else
	   print(N'Phòng này hiện đang không bảo trì')
	
GO
ALTER AUTHORIZATION ON [dbo].[sp_hoantatbaotriphong] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_hoantatbaotrithietbi]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_hoantatbaotrithietbi] (@MaTB nvarchar(30))
as  

	/* SP Thông báo hoàn thành bảo trì thiết bị
	Cập nhật lại trạng thái thiết= 1(sẵn sàng cho mượn)
	
	*/
  if exists(select * from THIETBI where THIETBI.MATHIETBI=@MaTB and TINHTRANGTB='3')
	 begin
			update THIETBI
			set TINHTRANGTB='1'
		  where THIETBI.MATHIETBI=@MaTB
	end
GO
ALTER AUTHORIZATION ON [dbo].[sp_hoantatbaotrithietbi] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_kiemTraDangNhap]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_kiemTraDangNhap] @UserName char(30), @Pass char(100),@Result bit output
	 as

     
		Declare @KhoaMaHoa varchar(100)
		set @KhoaMaHoa =(select MATKHAU from TAIKHOAN
					where TENTAIKHOAN=@UserName)
	
		Declare @KhoaGiaiMa varchar(100)
		set @KhoaGiaiMa =(select convert(varchar(100),DecryptByPassPhrase('qltbthcs', @KhoaMaHoa)))
		
	    if exists (select * from TAIKHOAN
					where TENTAIKHOAN=@UserName and  @Pass=@KhoaGiaiMa
		) 
		 begin 
			set @Result=1;
			end
		else 
		set @Result=0;
GO
ALTER AUTHORIZATION ON [dbo].[sp_kiemTraDangNhap] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_listChoPhepMuon]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_listChoPhepMuon]
as
select PHONG.MAPHONG, LOAITHIETBI.TENLOAI, count(MATHIETBI),LOAITHIETBI.MALOAI FROM THIETBI,PHONG,LOAITHIETBI
where THIETBI.MAPHONG= PHONG.MAPHONG and THIETBI.MATHIETBI=LOAITHIETBI.MALOAI
				group by PHONG.MAPHONG,LOAITHIETBI.TENLOAI, TINHTRANGTB,LOAITHIETBI.MALOAI  
				having (PHONG.MAPHONG = 'P.8' or PHONG.MAPHONG= 'CSVC') and TINHTRANGTB= '2'
				order by PHONG.MAPHONG
GO
ALTER AUTHORIZATION ON [dbo].[sp_listChoPhepMuon] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_phong]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_phong]
as
update PHONG
set TRANGTHAI='2'
where MAPHONG='P.16'
GO
ALTER AUTHORIZATION ON [dbo].[sp_phong] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_resetPass]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_resetPass] @MaNV varchar(20)
as

 /*  sp reset pass nhan vien*/

    update TAIKHOAN
	set MATKHAU='1'
	where TENTAIKHOAN=(select TENTAIKHOAN from TAIKHOAN a join NHANVIEN b on a.TENTAIKHOAN=b.TAIKHOAN where b.MANV=@MaNV)
GO
ALTER AUTHORIZATION ON [dbo].[sp_resetPass] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_SinhID_CTThietBi]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_SinhID_CTThietBi] @LoaiTB nvarchar(20)
as
begin
declare @ma_next varchar(30)
declare @max int
select @max=COUNT(MATHIETBI)+1 from THIETBI
							where LOAITHIETBI =@LoaiTB 
set @ma_next = UPPER(@LoaiTB)+CAST(@max as nvarchar(20))

while ( exists (select MATHIETBI from THIETBI where MATHIETBI=@ma_next))
begin
 set @max=@max+1
 set @ma_next=  UPPER(@LoaiTB)+CAST(@max as nvarchar(20))
 end
 select @ma_next
 end
GO
ALTER AUTHORIZATION ON [dbo].[sp_SinhID_CTThietBi] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[sp_test]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_test] 
as
begin
declare @ma_next char(30)
declare @max int
select @max=COUNT(MATHIETBI)+1 from THIETBI
							where LOAITHIETBI ='Key' and MAPHONG ='P.8'

set @ma_next = UPPER('P.8'+'Key')+RIGHT(CAST(@max as nvarchar(20)),20)

while ( exists (select MATHIETBI from THIETBI where MATHIETBI=@ma_next))
begin
 set @max=@max+1
 set @ma_next=  UPPER('P.8'+'Key')+RIGHT(CAST(@max as nvarchar(20)),20)
 end
 select @ma_next
 end
GO
ALTER AUTHORIZATION ON [dbo].[sp_test] TO  SCHEMA OWNER 
GO
/****** Object:  Trigger [dbo].[tg_checktrangthai_ThietBi]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_checktrangthai_ThietBi]
ON [dbo].[CTPHIEUMUON]
AFTER  insert
AS   
     /*trigger kiểm tra xem thiết bị có sẵn sàng cho mượn ko*/
	 /*Nếu thiết bị muốn mượn đang ở trạng thái = 1(sẵn sàng cho mượn) thì cho phép mượn 
						và cập nhật lại tình trạng thiết bị đó = 2(đang cho mượn)
	   Còn không thì không cho mượn tiến hành rollback lại*/
    IF  exists(select *
     From THIETBI a Inner Join INSERTED b On a.MATHIETBI = b.MATHIETBI
	 where a.TINHTRANGTB='1')
        begin
				update THIETBI
				set TINHTRANGTB='2'
				where THIETBI.MATHIETBI=(select MATHIETBI from inserted)
		end
	else

		begin
			Print 'Không thể mượn thiết bị này'
			RollBack Tran
		End
GO
ALTER TABLE [dbo].[CTPHIEUMUON] ENABLE TRIGGER [tg_checktrangthai_ThietBi]
GO
/****** Object:  Trigger [dbo].[tg_TraThietBi]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_TraThietBi]
ON [dbo].[CTPHIEUMUON]
AFTER  update
AS 
		/* trigger cập nhật lại trạng thái thiết bị khi trả thiết bị*/

		/* Nếu thiết bị được trả (5) thì cập nhật lại tình trang thiết bị = 1 (sẵn sàng cho mượn)
			Nếu thiết bị bị mất (6) thì cập nhật lại tình trang thiết bị = 6 (đã mất)
		*/
    if exists( select * From  INSERTED b where b.TRANGTHAI='5')
		begin
			update THIETBI
			set THIETBI.TINHTRANGTB='1'
			where THIETBI.MATHIETBI=(select MATHIETBI from inserted)
		end
	else 
		 begin
		update THIETBI
		set THIETBI.TINHTRANGTB='6'
		where THIETBI.MATHIETBI=(select MATHIETBI from inserted)
		end
GO
ALTER TABLE [dbo].[CTPHIEUMUON] ENABLE TRIGGER [tg_TraThietBi]
GO
/****** Object:  Trigger [dbo].[tg_update_thoigiantra]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_update_thoigiantra]
ON [dbo].[CTPHIEUMUON]
AFTER  update
AS 
    /* Trigger update thời gian trả của phiếu mươn
		Thời gian trả sẽ được cập nhật khi phiếu mượn không còn field nào đang ở trạng thái 4 (chưa trả)
	 */
	update PHIEUMUON
	set PHIEUMUON.TDTRA=(SELECT CAST(GETDATE() AS SMALLDATETIME))
	where PHIEUMUON.MAPHIEUMUON=(select MAPHIEUMUON from inserted)
			and  PHIEUMUON.MAPHIEUMUON not in (select MAPHIEUMUON from CTPHIEUMUON where CTPHIEUMUON.TRANGTHAI='4')
GO
ALTER TABLE [dbo].[CTPHIEUMUON] ENABLE TRIGGER [tg_update_thoigiantra]
GO
/****** Object:  Trigger [dbo].[tg_FormatMaNV]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[tg_FormatMaNV]
on [dbo].[NHANVIEN]
after insert
as
    declare @ma_next varchar(20)
	declare @max int
	select @max=COUNT(MANV)+1 from NHANVIEN

set @ma_next = 'NV0'+CAST(@max as varchar(20))

while ( exists (select MANV from NhanVien where MANV=@ma_next))
begin
 set @max=@max+1
 set @ma_next=  'NV0'+CAST(@max as varchar(20))
 end
     update NHANVIEN
	 set MANV=@ma_next 
	 where MANV= (select MANV from inserted)
	
GO
ALTER TABLE [dbo].[NHANVIEN] ENABLE TRIGGER [tg_FormatMaNV]
GO
/****** Object:  Trigger [dbo].[tg_checkupdate_thoidiemtra]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_checkupdate_thoidiemtra]
ON [dbo].[PHIEUMUON]
AFTER  update
AS   
    /*Nếu thông tin hạn trả được cập nhập và chi tiết của phiếu mượn đó có 1 thiết bị chưa trả thì không cho phép cập nhật thời gian trả*/
    IF  exists(select *
     From deleted a Inner Join INSERTED b On a.MAPHIEUMUON= b.MAPHIEUMUON
	 where a.TDTRA is null and b.TDTRA is not null)
		begin
		  
		     IF  exists(select *
				From CTPHIEUMUON a Inner Join INSERTED b On a.MAPHIEUMUON = b.MAPHIEUMUON
				where a.TRANGTHAI ='4')
				  begin
					Print 'Thiết bị chưa được trả hết !!'
					RollBack Tran
				end
		End
GO
ALTER TABLE [dbo].[PHIEUMUON] ENABLE TRIGGER [tg_checkupdate_thoidiemtra]
GO
/****** Object:  Trigger [dbo].[tg_disableupdate_thoigianmuontra]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [dbo].[tg_disableupdate_thoigianmuontra]
ON [dbo].[PHIEUMUON]
AFTER  update
AS   
    /*Nếu thông tin hạn trả được cập nhập và chi tiết của phiếu mượn đó có 1 thiết bị chưa trả thì không cho phép cập nhật thời gian trả*/
    IF  exists(select *
     From deleted a Inner Join INSERTED b On a.MAPHIEUMUON= b.MAPHIEUMUON
	 where (a.TDMUON is not null and a.TDMUON != b.TDMUON ) or (a.TDTRA is not null and a.TDTRA != b.TDTRA ))
	 begin
					Print 'Không Thể sửa thời gian mượn trả  !!'
					RollBack Tran
				end
GO
ALTER TABLE [dbo].[PHIEUMUON] ENABLE TRIGGER [tg_disableupdate_thoigianmuontra]
GO
/****** Object:  Trigger [dbo].[tg_thoigianmuon_insert]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_thoigianmuon_insert]
ON [dbo].[PHIEUMUON]
AFTER  INSERT
AS
  /* set thời điểm mượn thành thời gian thực*/
   update PhieuMuon
   set TDMUON=(SELECT CAST(GETDATE() AS SMALLDATETIME))
   where PHIEUMUON.MAPHIEUMUON=(select MAPHIEUMUON from inserted)
GO
ALTER TABLE [dbo].[PHIEUMUON] ENABLE TRIGGER [tg_thoigianmuon_insert]
GO
/****** Object:  Trigger [dbo].[tg_trangthaiPhong]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_trangthaiPhong]
ON [dbo].[PHIEUMUON]
AFTER  insert
AS   
    /*kiểm tra khi thêm phiếu mượn mới
	nếu trạng thái phòng mượn là 3 (đang bảo trì) thì ko cho phép mượn rollback lại
	còn không thì cho mượn  và set lại trạng thái phòng = 2(đã cho mượn)
	*/
    IF  exists(select *
     From Phong a Inner Join INSERTED b On a.MAPHONG = b.MAPHONG
	 where a.TRANGTHAI='3')
        begin
			Print 'Phòng đang bảo trì không thể mượn'
			RollBack Tran
		End
	else
		begin
				update Phong
				set Phong.TRANGTHAI='2'
				where PHONG.MAPHONG=(select MAPHONG from inserted)
		end
GO
ALTER TABLE [dbo].[PHIEUMUON] ENABLE TRIGGER [tg_trangthaiPhong]
GO
/****** Object:  Trigger [dbo].[tg_traPhong]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[tg_traPhong]
ON [dbo].[PHIEUMUON]
AFTER  update
AS 
  /*   set trạng thái phòng khi trả phiếu mượn
		nếu:  trạng thái phòng đang =3 (bảo trì) thì ghi nhận trả phiếu mượn nhưng không set lại trạng thái phòng
  */
   if exists(select *
			From Phong a Inner Join INSERTED b On a.MAPHONG= b.MAPHONG
			where a.TRANGTHAI ='3')
		begin
			Print 'Phòng đang bảo trì !!'
		end
	else
		begin
		   /* Nếu việc update thay đổi thời điểm trả thì tiếp tục kiểm tra*/
			IF  exists(select *
						From deleted a Inner Join INSERTED b On a.MAPHIEUMUON= b.MAPHIEUMUON
						where a.TDTRA is null and b.TDTRA is not null)

					 begin
					   /* nếu tất cả phiếu mượn của phòng vừa cập nhật chưa trả hết thì tiếp tục kiểm tra
									nếu tồn tại 1 phiếu mượn chưa hết hạn trả thì sset lại trang thái phòng = 2(đang cho mượn)
									nếu tất cả phiếu mượn đều đã quá hạn trả thì sset lại trang thái phòng = 8(có PM chưa trả)
						*/
					   if exists ( select * from PHIEUMUON where PHIEUMUON.MAPHONG=(select MAPHONG from inserted) and PHIEUMUON.TDTRA is null )
							 begin
								if exists ( select * from PHIEUMUON where PHIEUMUON.MAPHONG=(select MAPHONG from inserted)and PHIEUMUON.TDTRA is null and PHIEUMUON.HANTRA > CURRENT_TIMESTAMP)
									  begin 
											update Phong
										set Phong.TRANGTHAI='2'
										where PHONG.MAPHONG=(select MAPHONG from inserted)
									  end
				
							 else 
							  begin 
											update Phong
										set Phong.TRANGTHAI='8'
										where PHONG.MAPHONG=(select MAPHONG from inserted)
									  end

									  end
					  else
					   /*còn không nếu tất cả phiếu mượn của phòng vừa cập nhật đã được trả hết thì set lại trang thái phòng =1(sẵn sàng cho mượn)*/
						begin
							update Phong
							set Phong.TRANGTHAI='1'
							where PHONG.MAPHONG=(select MAPHONG from inserted)
						end
			
					end
					end
GO
ALTER TABLE [dbo].[PHIEUMUON] ENABLE TRIGGER [tg_traPhong]
GO
/****** Object:  Trigger [dbo].[mahoakhoa]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[mahoakhoa]
on [dbo].[TAIKHOAN]
after insert,update
  as
     Declare @Khoa varchar(100)
	 set @Khoa =(select a.MATKHAU from inserted a)
	 print(@Khoa)
	 update TaiKhoan
	set MATKHAU =  (select  EncryptByPassPhrase('qltbthcs', @Khoa) )
    where TAIKHOAN.TENTAIKHOAN = (select TENTAIKHOAN from inserted)
GO
ALTER TABLE [dbo].[TAIKHOAN] ENABLE TRIGGER [mahoakhoa]
GO
/****** Object:  Trigger [dbo].[tg_disable_update]    Script Date: 5/29/2024 7:20:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[tg_disable_update]
on [dbo].[TRANGTHAI]
after update
as
  begin
			Print 'Không thể sửa tình trạng'
			RollBack Tran
		End
		
GO
ALTER TABLE [dbo].[TRANGTHAI] ENABLE TRIGGER [tg_disable_update]
GO
/****** Object:  Statistic [_WA_Sys_00000002_4F47C5E3]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000002_4F47C5E3] ON [dbo].[CTPHIEUMUON]([MAPHIEUMUON]) WITH STATS_STREAM = 0x01000000010000000000000000000000970A9B72000000003702000000000000F7010000000000007F0300007F000000080013000000000000000000000000000700000051CF1B017EB1000009000000000000000900000000000000000000000000803F00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000001000000010000001800000000000041000010410000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019040000000000000000000000000000230000000000000073000000000000007B00000000000000830000000000000008000000000000001000180000001041000000000000803F100000000000000004000001000000664407017DB10000000000000000F03F030000000000000001000000000000000000F03F00000000000022400000000000000000000000000000044000000000000016C0000000000000F03F09000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [_WA_Sys_00000003_4F47C5E3]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000003_4F47C5E3] ON [dbo].[CTPHIEUMUON]([MATHIETBI]) WITH STATS_STREAM = 0x010000000100000000000000000000000DA5B1660000000071020000000000003102000000000000380300003800000004000A000000000000000000000000000700000050CF1B017EB100000900000000000000090000000000000000000000ABAAAA3E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000030000000100000014000000000080400000104100000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000190400000000000000000000000000005D00000000000000AD00000000000000B500000000000000BD0000000000000018000000000000002F000000000000004600000000000000100014000000C040000000000000803F010000000400001000140000000040000000000000803F04000000040000100014000000803F000000000000803F0500000004000001000000664407017DB10000000000000000F03F030000000000000001000000000000000000F03F00000000000008400000000000000000000000000000044000000000000016C0C1F0620F8D8ADB3F09000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [_WA_Sys_00000004_4F47C5E3]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000004_4F47C5E3] ON [dbo].[CTPHIEUMUON]([NGUOIMUON]) WITH STATS_STREAM = 0x010000000100000000000000000000009012448E000000008F020000000000004F02000000000000E7030000E70000001E0000000000000008D00034000000000700000050CF1B017EB1000009000000000000000900000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000100000000000804100001041000000000000804100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001B0400000000000000000000000000002F000000000000007300000000000000C300000000000000CB00000000000000D30000000000000008000000000000003000100000001041000000000000803F0400000100270036003300310033003500330035003300FF0100000000000000090000000100000028000000280000000000000000000000080000003600330031003300350033003500330002000000400000000009080000000001000000664407017DB10000000000000000F03F030000000000000001000000000000000000F03F00000000000000000000000000000000000000000000044000000000000016C0000000000000000009000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [_WA_Sys_00000005_4F47C5E3]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000005_4F47C5E3] ON [dbo].[CTPHIEUMUON]([TRANGTHAI]) WITH STATS_STREAM = 0x010000000100000000000000000000001507055D000000004C020000000000000C020000000000003003000030000000010003000000000000000000000000000700000052CF1B017EB1000009000000000000000900000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000110000000000803F00001041000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000190400000000000000000000000000003800000000000000880000000000000090000000000000009800000000000000100000000000000024000000000000001000110000004040000000000000803F04040000100011000000C040000000000000803F0504000001000000664407017DB10000000000000000F03F030000000000000001000000000000000000F03F00000000000018400000000000000000000000000000044000000000000016C065FAFEDD7D2BEE3F09000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [PK_CTPHIEUMUON]    Script Date: 5/29/2024 7:20:04 PM ******/
UPDATE STATISTICS [dbo].[CTPHIEUMUON]([PK_CTPHIEUMUON]) WITH STATS_STREAM = 0x01000000010000000000000000000000506B5BC600000000E602000000000000A6020000000000007F0300007F000000080013000000000000000000000000000700000073934C017EB10000090000000000000009000000000000000000803F398EE33D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000600000006000000010000001800000000000041000010410000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019040000000000000000000000000000D20000000000000022010000000000002A01000000000000320100000000000030000000000000004B00000000000000660000000000000081000000000000009C00000000000000B700000000000000100018000000803F000000000000803F1000000000000000040000100018000000803F0000803F0000803F1200000000000000040000100018000000803F000000000000803F1800000000000000040000100018000000803F0000803F0000803F1A00000000000000040000100018000000803F0000803F0000803F1C00000000000000040000100018000000803F000000000000803F1D0000000000000004000001000000FCDA0F017DB10000000000000000F03F030000000000000001000000000000000000F03F00000000000022400000000000000000000000000000044000000000000016C0E23C3C2790DDF03F09000000000000000000000000000000,ROWCOUNT = 4,PAGECOUNT = 1,AUTO_DROP = OFF
GO
/****** Object:  Statistic [_WA_Sys_00000002_3E1D39E1]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000002_3E1D39E1] ON [dbo].[LOAITHIETBI]([TENLOAI]) WITH STATS_STREAM = 0x01000000010000000000000000000000B0744702000000007F020000000000003F02000000000000E7030000E70000003C0000000000000008D00034000000000700000039B24C017EB1000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000010000000000000410000803F000000000000004100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001B04000000000000000000000000000027000000000000006300000000000000B300000000000000BB00000000000000C3000000000000000800000000000000300010000000803F000000000000803F04000001001F00480044004D004900FF010000000000000001000000010000002800000028000000000000000000000004000000480044004D00490002000000400000000001040000000001000000C67041017BB10000000000000000F03F010000000000000001000000000000000000F03F00000000000000000000000000000000000000000000E0BF000000000000E0BF000000000000000001000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [PK_LOAITHIETBI_1]    Script Date: 5/29/2024 7:20:04 PM ******/
UPDATE STATISTICS [dbo].[LOAITHIETBI]([PK_LOAITHIETBI_1]) WITH STATS_STREAM = 0x01000000010000000000000000000000EEE9F529000000003302000000000000F301000000000000380300003800000004000A000000000000000000000000000700000055BA72017BB1000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000190400000000000000000000000000001F000000000000006F0000000000000077000000000000007F000000000000000800000000000000100014000000803F000000000000803F0100000004000001000000651B42017BB10000000000000000F03F010000000000000001000000000000000000F03F00000000000000000000000000000000000000000000E0BF000000000000E0BF000000000000000001000000000000000000000000000000,ROWCOUNT = 1,PAGECOUNT = 1,AUTO_DROP = OFF
GO
/****** Object:  Statistic [_WA_Sys_00000002_46E78A0C]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000002_46E78A0C] ON [dbo].[LOP]([SISO]) WITH STATS_STREAM = 0x01000000010000000000000000000000DA7922BC00000000D801000000000000980100000000000030030000300000000100030000000000000000000000000007000000EECE6C017EB1000005000000000000000500000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000110000000000803F0000A040000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110400000000000000000000000000001C0000000000000024000000000000002C000000000000000800000000000000100011000000A040000000000000803F2D04000005000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [_WA_Sys_00000003_46E78A0C]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000003_46E78A0C] ON [dbo].[LOP]([HOTENGVCN]) WITH STATS_STREAM = 0x01000000010000000000000000000000B205E87300000000DB020000000000009B02000000000000E7030000E70000003C0000000000000008D000340000000007000000EFCE6C017EB100000500000000000000050000000000000000000000ABAAAA3E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000300000001000000100000003333A3410000A040000000003333A3410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000130400000000000000000000000000009B0000000000000017010000000000001F0100000000000027010000000000001800000000000000430000000000000070000000000000003000100000004040000000000000803F04000001002B004E00670075007900C51E6E002000540068007500300010000000803F000000000000803F04000001002D005000680061006E00200054006800CB1E20004C00FD00300010000000803F000000000000803F04000001002B0054007200A71E6E002000480075007900C11E6E00FF01000000000000000500000003000000280000002800000000000000000000001F0000004E00670075007900C51E6E0020005400680075005000680061006E00200054006800CB1E20004C00FD0054007200A71E6E002000480075007900C11E6E00040000004000000000830A000000810B0A0000010A1500000005000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [_WA_Sys_00000004_46E78A0C]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000004_46E78A0C] ON [dbo].[LOP]([MAGIAOVIEN]) WITH STATS_STREAM = 0x010000000100000000000000000000003E6DBCE300000000D2020000000000009202000000000000E7030000E70000001E0000000000000008D000340000000007000000F0CE6C017EB100000500000000000000050000000000000000000000ABAAAA3E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000030000000300000001000000100000000000A0410000A040000000000000A04100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001304000000000000000000000000000099000000000000000E0100000000000016010000000000001E01000000000000180000000000000043000000000000006E00000000000000300010000000803F000000000000803F04000001002B0030003900380037003600350034003300320031003000100000004040000000000000803F04000001002B003100320033003400350035003400330032003100300010000000803F000000000000803F04000001002B003100320033003400350036003700380039003000FF0100000000000000050000000300000028000000280000000000000000000000190000003000390038003700360035003400330032003100310032003300340035003500340033003200310036003700380039003000050000004000000000810A00000040050A000083050F000001051400000005000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [PK_LOP]    Script Date: 5/29/2024 7:20:04 PM ******/
UPDATE STATISTICS [dbo].[LOP]([PK_LOP]) WITH STATS_STREAM = 0x01000000010000000000000000000000E5E0905B000000002302000000000000E301000000000000E7030000E7000000280000000000000008D0003400000000070000000D9A9E007CB1000001000000000000000100000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000100000000000C0400000803F000000000000C04000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001304000000000000000000000000000025000000000000005F0000000000000067000000000000006F000000000000000800000000000000300010000000803F000000000000803F04000001001D0036002F003500FF01000000000000000100000001000000280000002800000000000000000000000300000036002F00350002000000400000000001030000000001000000000000000000000000000000,ROWCOUNT = 9,PAGECOUNT = 1,AUTO_DROP = OFF
GO
/****** Object:  Statistic [_WA_Sys_00000002_412EB0B6]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000002_412EB0B6] ON [dbo].[NGUOIMUON]([TENNGUOIMUON]) WITH STATS_STREAM = 0x01000000010000000000000000000000267BBDB20000000047020000000000000702000000000000E7030000E7000000640000000000000008D000340000000007000000C56ABC007DB1000001000000000000000100000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000100000000000C0410000803F000000000000C041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000013040000000000000000000000000000370000000000000083000000000000008B0000000000000093000000000000000800000000000000300010000000803F000000000000803F04000001002F0047006900E10070002000560003016E0020005400E0006900FF01000000000000000100000001000000280000002800000000000000000000000C00000047006900E10070002000560003016E0020005400E0006900020000004000000000010C0000000001000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [_WA_Sys_00000003_412EB0B6]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000003_412EB0B6] ON [dbo].[NGUOIMUON]([EMAIL]) WITH STATS_STREAM = 0x01000000010000000000000000000000FBE467ED000000006F020000000000002F02000000000000E7030000E7000000640000000000000008D000340000000007000000C66ABC007DB1000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000010000000000030420000803F00000000000030420000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000130400000000000000000000000000004B00000000000000AB00000000000000B300000000000000BB000000000000000800000000000000300010000000803F000000000000803F04000001004300760061006E00740061006900670069006100700030003100400067006D00610069006C002E0063006F006D00FF010000000000000001000000010000002800000028000000000000000000000016000000760061006E00740061006900670069006100700030003100400067006D00610069006C002E0063006F006D0002000000400000000001160000000001000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [PK_NGUOIMUON]    Script Date: 5/29/2024 7:20:04 PM ******/
UPDATE STATISTICS [dbo].[NGUOIMUON]([PK_NGUOIMUON]) WITH STATS_STREAM = 0x010000000100000000000000000000001CD878B900000000CA020000000000008A02000000000000E7030000E70000001E0000000000000008D00034000000000700000050CF1B017EB1000002000000000000000200000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000100000000000804100000040000000000000804100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001B0400000000000000000000000000005E00000000000000AE00000000000000FE0000000000000006010000000000000E0100000000000010000000000000003700000000000000300010000000803F000000000000803F0400000100270036003300310033003500330035003300300010000000803F000000000000803F0400000100270036003300310033003500330035003900FF01000000000000000200000002000000280000002800000000000000000000000900000036003300310033003500330035003300390004000000400000000040070000008101070000010108000000010000004F29BB007DB10000000000000000F03F010000000000000001000000000000000000F03F000000000000F03F00000000000000000000000000000000000000000000F0BFCD3B7F669EA0E63F02000000000000000000000000000000,ROWCOUNT = 2,PAGECOUNT = 1,AUTO_DROP = OFF
GO
/****** Object:  Statistic [PK_NHANVIEN]    Script Date: 5/29/2024 7:20:04 PM ******/
UPDATE STATISTICS [dbo].[NHANVIEN]([PK_NHANVIEN]) WITH STATS_STREAM = 0x010000000100000000000000000000005B3930E9000000001902000000000000D901000000000000A7030000A7000000140000000000000008D000340000000007000000A32C79017BB1000001000000000000000100000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000100000000000803F0000803F000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000013040000000000000000000000000000200000000000000055000000000000005D0000000000000065000000000000000800000000000000300010000000803F000000000000803F0400000100180031FF0100000000000000010000000100000028000000280000000000000000000000010000003102000000400000000001010000000001000000000000000000000000000000,ROWCOUNT = 2,PAGECOUNT = 1,AUTO_DROP = OFF
GO
/****** Object:  Statistic [UK_NHANVIEN]    Script Date: 5/29/2024 7:20:04 PM ******/
UPDATE STATISTICS [dbo].[NHANVIEN]([UK_NHANVIEN]) WITH STATS_STREAM = 0x0100000004000000000000000000000077AE5EC10000000088000000000000000000000000000000A7030000A70000000F0000000000000008D0003400000000A7030000A70000000F0000000000000008D0003400000000E7030000E7000000640000000000000008D0003400000000A7030000A7000000140000000000000008D0003400000000,ROWCOUNT = 2,PAGECOUNT = 1,AUTO_DROP = OFF
GO
/****** Object:  Statistic [UQ__NHANVIEN__8C5E6104210655B0]    Script Date: 5/29/2024 7:20:04 PM ******/
UPDATE STATISTICS [dbo].[NHANVIEN]([UQ__NHANVIEN__8C5E6104210655B0]) WITH STATS_STREAM = 0x01000000020000000000000000000000BB46AF80000000004702000000000000EF01000000000000E7030000E70000003C0000000000000008D0003400000000A7030000A7000000140000000000000008D000347102000007000000670698007CB1000001000000000000000100000000000000000000000000803F0000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000200000010000000000080410000803F00000000000040410000804000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000130400000000000000000000000000002B000000000000006B0000000000000073000000000000007B000000000000000800000000000000300010000000803F000000000000803F04000001002300670076007400320039003300FF01000000000000000100000001000000280000002800000000000000000000000600000067007600740032003900330002000000400000000001060000000001000000000000000000000000000000,ROWCOUNT = 2,PAGECOUNT = 1,AUTO_DROP = OFF
GO
/****** Object:  Statistic [_WA_Sys_00000002_607251E5]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000002_607251E5] ON [dbo].[PHIEUMUON]([MAPHONG]) WITH STATS_STREAM = 0x01000000010000000000000000000000BEFCA3FB000000007B020000000000003B02000000000000E7030000E7000000280000000000000008D0003400000000070000004ACF1B017EB1000001000000000000000100000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000100000000000C0400000803F000000000000C04000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001B04000000000000000000000000000025000000000000005F00000000000000AF00000000000000B700000000000000BF000000000000000800000000000000300010000000803F000000000000803F04000001001D00310030003100FF010000000000000001000000010000002800000028000000000000000000000003000000310030003100020000004000000000010300000000010000006ECEE8007DB10000000000000000F03F010000000000000001000000000000000000F03F00000000000000000000000000000000000000000000E0BF000000000000E0BF000000000000000001000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [_WA_Sys_00000003_607251E5]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000003_607251E5] ON [dbo].[PHIEUMUON]([LOP]) WITH STATS_STREAM = 0x010000000100000000000000000000006C73FE41000000007B020000000000003B02000000000000E7030000E7000000280000000000000008D0003400000000070000004BCF1B017EB1000001000000000000000100000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000100000000000C0400000803F000000000000C04000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001B04000000000000000000000000000025000000000000005F00000000000000AF00000000000000B700000000000000BF000000000000000800000000000000300010000000803F000000000000803F04000001001D0036002F003500FF01000000000000000100000001000000280000002800000000000000000000000300000036002F003500020000004000000000010300000000010000006D06E9007DB10000000000000000F03F010000000000000001000000000000000000F03F00000000000000000000000000000000000000000000E0BF000000000000E0BF000000000000000001000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [_WA_Sys_00000004_607251E5]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000004_607251E5] ON [dbo].[PHIEUMUON]([TDMUON]) WITH STATS_STREAM = 0x01000000010000000000000000000000A544A5A0000000003302000000000000F3010000000000003A0300003A0000000400100000000000000000000000000007000000009E4C017EB1000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000190400000000000000000000000000001F000000000000006F0000000000000077000000000000007F000000000000000800000000000000100014000000803F000000000000803FF7037DB1040000010000000368E9007DB100000000000000000040040000000000000001000000000000000000F03F000000000000F03F000000000000000000000000000004C0000000000000F8BF000000000000F03F01000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [_WA_Sys_00000005_607251E5]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000005_607251E5] ON [dbo].[PHIEUMUON]([HANTRA]) WITH STATS_STREAM = 0x0100000001000000000000000000000076E6F8F6000000003302000000000000F3010000000000003A0300003A0000000400100000000000000000000000000007000000009E4C017EB1000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000190400000000000000000000000000001F000000000000006F0000000000000077000000000000007F000000000000000800000000000000100014000000803F000000000000803FFC037DB1040000010000006FCEE8007DB10000000000000000F03F010000000000000001000000000000000000F03F00000000000000000000000000000000000000000000E0BF000000000000E0BF000000000000000001000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [_WA_Sys_00000006_607251E5]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000006_607251E5] ON [dbo].[PHIEUMUON]([TDTRA]) WITH STATS_STREAM = 0x01000000010000000000000000000000316DF34500000000B40100000000000074010000000000003A0200003A000000040010000000000000000000000000000700000066CF1B017EB1000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000014000000000000000000803F0000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100400000000000000000000000000000800000000000000100000000000000001000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [_WA_Sys_00000007_607251E5]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000007_607251E5] ON [dbo].[PHIEUMUON]([NGUOILAP]) WITH STATS_STREAM = 0x01000000010000000000000000000000E5E944F30000000077020000000000003702000000000000A7020000A7000000140000000000000008D0003400000000070000004BCF1B017EB1000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000010000000000080400000803F000000000000804000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001B04000000000000000000000000000023000000000000005B00000000000000AB00000000000000B300000000000000BB000000000000000800000000000000300010000000803F000000000000803F04000001001B004E563032FF0100000000000000010000000100000028000000280000000000000000000000040000004E563032020000004000000000010400000000010000006E06E9007DB10000000000000000F03F010000000000000001000000000000000000F03F00000000000000000000000000000000000000000000E0BF000000000000E0BF000000000000000001000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [PK_PHIEUMUON]    Script Date: 5/29/2024 7:20:04 PM ******/
UPDATE STATISTICS [dbo].[PHIEUMUON]([PK_PHIEUMUON]) WITH STATS_STREAM = 0x01000000010000000000000000000000A6CBB148000000003702000000000000F7010000000000007F0300007F000000080013000000000000000000000000000700000051CF1B017EB1000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000018000000000000410000803F0000000000000041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019040000000000000000000000000000230000000000000073000000000000007B0000000000000083000000000000000800000000000000100018000000803F000000000000803F1000000000000000040000010000000268E9007DB100000000000000000040020000000000000002000000000000000000E03F000000000000F03F0000000000000000000000000000F8BF000000000000E0BF000000000000F03F01000000000000000000000000000000,ROWCOUNT = 1,PAGECOUNT = 1,AUTO_DROP = OFF
GO
/****** Object:  Statistic [_WA_Sys_00000002_398D8EEE]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000002_398D8EEE] ON [dbo].[PHONG]([TRANGTHAI]) WITH STATS_STREAM = 0x01000000010000000000000000000000F4E58497000000003002000000000000F0010000000000003003000030000000010003000000000000000000000000000700000059BA72017BB1000002000000000000000200000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000110000000000803F00000040000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000190400000000000000000000000000001C000000000000006C0000000000000074000000000000007C0000000000000008000000000000001000110000000040000000000000803F0104000001000000681B42017BB10000000000000000F03F010000000000000001000000000000000000F03F000000000000000000000000000000000000000000000000000000000000F0BF000000000000000002000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [PK_PHONG]    Script Date: 5/29/2024 7:20:04 PM ******/
UPDATE STATISTICS [dbo].[PHONG]([PK_PHONG]) WITH STATS_STREAM = 0x01000000010000000000000000000000A811B09800000000AF020000000000006F02000000000000E7030000E7000000280000000000000008D00034000000000700000059BA72017BB1000002000000000000000200000000000000000000000000003F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020000000200000001000000100000000000E04000000040000000000000E04000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001B0400000000000000000000000000004C000000000000009300000000000000E300000000000000EB00000000000000F30000000000000010000000000000002D00000000000000300010000000803F000000000000803F04000001001D00310030003100300010000000803F000000000000803F04000001001F004300530056004300FF0100000000000000020000000200000028000000280000000000000000000000070000003100300031004300530056004300030000004000000000810300000001040300000001000000860342017BB10000000000000000F03F010000000000000001000000000000000000F03F000000000000F03F00000000000000000000000000000000000000000000F0BFCD3B7F669EA0E63F02000000000000000000000000000000,ROWCOUNT = 5,PAGECOUNT = 1,AUTO_DROP = OFF
GO
/****** Object:  Statistic [_WA_Sys_00000003_6D0D32F4]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000003_6D0D32F4] ON [dbo].[TAIKHOAN]([LOAITAIKHOAN]) WITH STATS_STREAM = 0x010000000100000000000000000000002C6A380B000000002B02000000000000EB01000000000000E7030000E7000000280000000000000008D000340000000007000000BA69730178B1000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000010000000000020410000803F0000000000002041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000013040000000000000000000000000000290000000000000067000000000000006F0000000000000077000000000000000800000000000000300010000000803F000000000000803F04000001002100610064006D0069006E00FF010000000000000001000000010000002800000028000000000000000000000005000000610064006D0069006E0002000000400000000001050000000001000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [PK_TAIKHOAN]    Script Date: 5/29/2024 7:20:04 PM ******/
UPDATE STATISTICS [dbo].[TAIKHOAN]([PK_TAIKHOAN]) WITH STATS_STREAM = 0x0100000001000000000000000000000066A3D35C000000002B02000000000000EB01000000000000E7030000E70000003C0000000000000008D000340000000007000000A261730178B1000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000010000000000020410000803F0000000000002041000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000013040000000000000000000000000000290000000000000067000000000000006F0000000000000077000000000000000800000000000000300010000000803F000000000000803F04000001002100610064006D0069006E00FF010000000000000001000000010000002800000028000000000000000000000005000000610064006D0069006E0002000000400000000001050000000001000000000000000000000000000000,ROWCOUNT = 3,PAGECOUNT = 1,AUTO_DROP = OFF
GO
/****** Object:  Statistic [_WA_Sys_00000002_489AC854]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000002_489AC854] ON [dbo].[THIETBI]([TENTHIETBI]) WITH STATS_STREAM = 0x010000000100000000000000000000001BC6415E0000000043020000000000000302000000000000E7030000E70000003C0000000000000008D000340000000007000000E3B541017BB1000001000000000000000100000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000100000000000B0410000803F000000000000B04100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001304000000000000000000000000000035000000000000007F0000000000000087000000000000008F000000000000000800000000000000300010000000803F000000000000803F04000001002D00480044004D0049002000550067007200650065006E00FF01000000000000000100000001000000280000002800000000000000000000000B000000480044004D0049002000550067007200650065006E00020000004000000000010B0000000001000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [_WA_Sys_00000003_489AC854]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000003_489AC854] ON [dbo].[THIETBI]([LOAITHIETBI]) WITH STATS_STREAM = 0x0100000001000000000000000000000047E596AF000000003302000000000000F301000000000000380300003800000004000A000000000000000000000000000700000055BA72017BB1000001000000000000000100000000000000000000000000803F000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000010000000100000014000000000080400000803F00000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000190400000000000000000000000000001F000000000000006F0000000000000077000000000000007F000000000000000800000000000000100014000000803F000000000000803F0100000004000001000000E3B541017BB10000000000000000F03F010000000000000001000000000000000000F03F00000000000000000000000000000000000000000000E0BF000000000000E0BF000000000000000001000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [_WA_Sys_00000004_489AC854]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000004_489AC854] ON [dbo].[THIETBI]([MAPHONG]) WITH STATS_STREAM = 0x01000000010000000000000000000000B4C212D8000000007B020000000000003B02000000000000E7020000E7000000640000000000000008D00034000000000700000054BA72017BB1000001000000000000000100000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000100000000000C0400000803F000000000000C04000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001B04000000000000000000000000000025000000000000005F00000000000000AF00000000000000B700000000000000BF000000000000000800000000000000300010000000803F000000000000803F04000001001D00310030003100FF01000000000000000100000001000000280000002800000000000000000000000300000031003000310002000000400000000001030000000001000000E3B541017BB10000000000000000F03F010000000000000001000000000000000000F03F00000000000000000000000000000000000000000000E0BF000000000000E0BF000000000000000001000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [_WA_Sys_00000005_489AC854]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000005_489AC854] ON [dbo].[THIETBI]([TINHTRANGTB]) WITH STATS_STREAM = 0x01000000010000000000000000000000182C5904000000003002000000000000F0010000000000003003000030000000010003000000000000000000000000000700000056BA72017BB1000001000000000000000100000000000000000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000100000001000000110000000000803F0000803F000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000190400000000000000000000000000001C000000000000006C0000000000000074000000000000007C000000000000000800000000000000100011000000803F000000000000803F0104000001000000E2B541017BB10000000000000000F03F010000000000000001000000000000000000F03F00000000000000000000000000000000000000000000E0BF000000000000E0BF000000000000000001000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [PK_THIETBI]    Script Date: 5/29/2024 7:20:04 PM ******/
UPDATE STATISTICS [dbo].[THIETBI]([PK_THIETBI]) WITH STATS_STREAM = 0x0100000001000000000000000000000059F5D5EB0000000090020000000000005002000000000000380300003800000004000A000000000000000000000000000700000057CF1B017EB10000060000000000000006000000000000000000803FABAA2A3E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004000000040000000100000014000000000080400000C04000000000000080400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000190400000000000000000000000000007C00000000000000CC00000000000000D400000000000000DC00000000000000200000000000000037000000000000004E000000000000006500000000000000100014000000803F000000000000803F01000000040000100014000000803F000000000000803F04000000040000100014000000803F0000803F0000803F06000000040000100014000000803F0000803F0000803F08000000040000010000000D4AA3007CB100000000000000000040050000000000000002000000000000000000E03F00000000000010400000000000000000000000000000E0BF00000000000012C066FAFEDD7D2BEE3F06000000000000000000000000000000,ROWCOUNT = 12,PAGECOUNT = 1,AUTO_DROP = OFF
GO
/****** Object:  Statistic [_WA_Sys_00000002_02FC7413]    Script Date: 5/29/2024 7:20:04 PM ******/
CREATE STATISTICS [_WA_Sys_00000002_02FC7413] ON [dbo].[TRANGTHAI]([TINHTRANG]) WITH STATS_STREAM = 0x010000000100000000000000000000008C3EAC510000000041040000000000000104000000000000E7030000E7000000280000000000000008D0003400000000070000000F2247017EB1000008000000000000000800000000000000000000000000003E000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000080000000100000010000000000094410000004100000000000094410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000130400000000000000000000000000008C010000000000007D0200000000000085020000000000008D02000000000000400000000000000065000000000000008C00000000000000BF00000000000000E200000000000000130100000000000038010000000000005501000000000000300010000000803F000000000000803F040000010025004200A31E6F00200054007200EC00300010000000803F000000000000803F0400000100270043006800B0016100200054007200A31E300010000000803F000000000000803F040000010033004300F300200050004D00200043006800B0016100200054007200A31E300010000000803F000000000000803F040000010023001001E300200054007200A31E300010000000803F000000000000803F04000001003100100161006E0067002000430068006F0020004D00B001E31E6E00300010000000803F000000000000803F040000010025004800B00120006800CF1E6E006700300010000000803F000000000000803F04000001001D004D00A51E7400300010000000803F000000000000803F040000010037005300B51E6E0020005300E0006E0067002000430068006F0020004D00B001E31EFF0100000000000000080000000800000028000000280000000000000000000000480000004200A31E6F00200054007200EC0043006800B0016100200054007200A31EF300200050004D00200043006800B0016100200054007200A31E1001E300200054007200A31E61006E0067002000430068006F0020004D00B001E31E6E004800B00120006800CF1E6E0067004D00A51E74005300B51E6E0020005300E0006E0067002000430068006F0020004D00B001E31E0B00000040000000008107000000C0010700008107080000010D0F0000C0011C0000810C22000001051D000081072E0000810335000001103800000008000000000000000000000000000000,AUTO_DROP = ON
GO
/****** Object:  Statistic [PK_TRANGTHAI]    Script Date: 5/29/2024 7:20:04 PM ******/
UPDATE STATISTICS [dbo].[TRANGTHAI]([PK_TRANGTHAI]) WITH STATS_STREAM = 0x010000000100000000000000000000007C3CF04A000000004802000000000000080200000000000030030000300000000100030000000000000000000000000007000000631B42017BB10000080000000000000008000000000000000000803F0000003E0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050000000500000001000000110000000000803F00000041000000000000803F0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110400000000000000000000000000008C0000000000000094000000000000009C0000000000000028000000000000003C00000000000000500000000000000064000000000000007800000000000000100011000000803F000000000000803F01040000100011000000803F0000803F0000803F03040000100011000000803F0000803F0000803F05040000100011000000803F0000803F0000803F07040000100011000000803F000000000000803F0804000008000000000000000000000000000000,ROWCOUNT = 8,PAGECOUNT = 1,AUTO_DROP = OFF
GO
USE [master]
GO
ALTER DATABASE [QLTBTH] SET  READ_WRITE 
GO
