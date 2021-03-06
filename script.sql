USE [master]
GO
/****** Object:  Database [agtabanli]    Script Date: 12.01.2022 22:31:33 ******/
CREATE DATABASE [agtabanli]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'agtabanli', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\agtabanli.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'agtabanli_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\agtabanli_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [agtabanli] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [agtabanli].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [agtabanli] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [agtabanli] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [agtabanli] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [agtabanli] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [agtabanli] SET ARITHABORT OFF 
GO
ALTER DATABASE [agtabanli] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [agtabanli] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [agtabanli] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [agtabanli] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [agtabanli] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [agtabanli] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [agtabanli] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [agtabanli] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [agtabanli] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [agtabanli] SET  DISABLE_BROKER 
GO
ALTER DATABASE [agtabanli] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [agtabanli] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [agtabanli] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [agtabanli] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [agtabanli] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [agtabanli] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [agtabanli] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [agtabanli] SET RECOVERY FULL 
GO
ALTER DATABASE [agtabanli] SET  MULTI_USER 
GO
ALTER DATABASE [agtabanli] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [agtabanli] SET DB_CHAINING OFF 
GO
ALTER DATABASE [agtabanli] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [agtabanli] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [agtabanli] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [agtabanli] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'agtabanli', N'ON'
GO
ALTER DATABASE [agtabanli] SET QUERY_STORE = OFF
GO
USE [agtabanli]
GO
/****** Object:  Table [dbo].[tblAraba]    Script Date: 12.01.2022 22:31:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAraba](
	[arabaID] [int] IDENTITY(1,1) NOT NULL,
	[resim] [nvarchar](50) NULL,
	[seri] [nvarchar](50) NULL,
	[model] [nvarchar](50) NULL,
	[yil] [int] NULL,
	[yakit] [nvarchar](50) NULL,
	[vites] [nvarchar](50) NULL,
	[km] [nvarchar](50) NULL,
	[kasaTipi] [nvarchar](50) NULL,
	[motorGucu] [nvarchar](50) NULL,
	[motorHacmi] [nvarchar](50) NULL,
	[cekis] [nvarchar](50) NULL,
	[renk] [nvarchar](50) NULL,
	[plaka] [nvarchar](50) NULL,
	[durumu] [nvarchar](50) NULL,
	[fiyat] [int] NULL,
	[markaID] [int] NULL,
 CONSTRAINT [PK_tblAraba] PRIMARY KEY CLUSTERED 
(
	[arabaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblHakkimizda]    Script Date: 12.01.2022 22:31:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHakkimizda](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[hakkimizda1] [nvarchar](max) NULL,
	[image1] [nvarchar](50) NULL,
	[hakkimizda2] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblHakkimizda] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKampanya]    Script Date: 12.01.2022 22:31:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKampanya](
	[kampanyaID] [int] IDENTITY(1,1) NOT NULL,
	[marka] [nvarchar](50) NULL,
	[seri] [nvarchar](50) NULL,
	[model] [nvarchar](50) NULL,
	[yil] [int] NULL,
	[km] [int] NULL,
	[renk] [nvarchar](50) NULL,
	[fiyat] [int] NULL,
	[kampanyaFiyat] [int] NULL,
	[resim] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblKampanya] PRIMARY KEY CLUSTERED 
(
	[kampanyaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMarka]    Script Date: 12.01.2022 22:31:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMarka](
	[markaID] [int] IDENTITY(1,1) NOT NULL,
	[marka] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblMarka] PRIMARY KEY CLUSTERED 
(
	[markaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMesaj]    Script Date: 12.01.2022 22:31:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMesaj](
	[mesajID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[mail] [nvarchar](50) NULL,
	[konu] [nvarchar](50) NULL,
	[mesaj] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblMesaj] PRIMARY KEY CLUSTERED 
(
	[mesajID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblYonetici]    Script Date: 12.01.2022 22:31:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblYonetici](
	[adminID] [int] IDENTITY(1,1) NOT NULL,
	[admin] [nvarchar](50) NULL,
	[sifre] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblYonetici] PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblYorumlar]    Script Date: 12.01.2022 22:31:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblYorumlar](
	[yorumID] [int] IDENTITY(1,1) NOT NULL,
	[yorumAd] [nvarchar](50) NULL,
	[yorumSoyad] [nvarchar](50) NULL,
	[yorumTarih] [smalldatetime] NULL,
	[onay] [bit] NULL,
	[icerik] [nvarchar](500) NULL,
	[arabaID] [int] NULL,
 CONSTRAINT [PK_tblYorumlar] PRIMARY KEY CLUSTERED 
(
	[yorumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblAraba] ON 

INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2028, N'~/resimler/Araba (1).jpg', N'S', N'580', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 1)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2029, N'~/resimler/Araba (1).png', N'Giulietta', N'1.4 TB', 2020, N'Elektrik', N'Düz', N'10', N'Sedan', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 2)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2030, N'~/resimler/Araba (2).jpg', N'A', N'A2 SL', 2019, N'Elektrik', N'Otomatik', N'20', N'Sedan', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Sarı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 3)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2031, N'~/resimler/Araba (2).png', N'Vantage ', N'V8 Vantage S', 2018, N'Elektrik', N'Düz', N'30', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Mavi', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 4)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2032, N'~/resimler/Araba (3).png', N'A4', N'A4 Cabrio', 2017, N'Elektrik', N'Otomatik', N'40', N'Sedan', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 5)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2033, N'~/resimler/Araba (4).jpg', N'Continental', N'Flying Spur', 2016, N'Dİzel', N'Düz', N'50', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Turuncu', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 6)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2034, N'~/resimler/Araba (4).png', N'5 Serisi', N'520d', 2015, N'Dizel', N'Otomatik', N'60', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Mavi', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 7)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2035, N'~/resimler/Araba (5).jpg', N'Chiron', N'8.0', 2014, N'Dizel', N'Düz', N'70', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Siyah', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 8)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2036, N'~/resimler/Araba (5).png', N'Le Sabre', N'3.8', 2013, N'Dizel', N'Otomatik', N'80', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Beyaz', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 9)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2037, N'~/resimler/Araba (6).jpg', N'Seville', N'4.6 STS', 2012, N'Dizel', N'Düz', N'90', N'Cabrio', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 10)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2038, N'~/resimler/Araba (6).png', N'Alia', N'Acteco Norma', 2011, N'LPG', N'Otomatik', N'100', N'Coupe', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 11)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2039, N'~/resimler/Araba (7).jpg', N'Cruze', N'1.6', 2010, N'LPG', N'Düz', N'110', N'Coupe', N'126 - 150 HP', N'1.5', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 250000, 12)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2040, N'~/resimler/Araba (7).png', N'300C', N'3.0 CRD', 2009, N'LPG', N'Otomatik', N'120', N'Coupe', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 350000, 13)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2041, N'~/resimler/Araba (8).jpg', N'C-Elysée', N'1.6 HDi', 2008, N'LPG', N'Düz', N'130', N'Coupe', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 450000, 14)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2042, N'~/resimler/Araba (8).png', N'Sandero', N'1.5 dCi', 2007, N'LPG', N'Otomatik', N'140', N'Coupe', N'126 - 150 HP', N'1.6', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 550000, 15)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2043, N'~/resimler/Araba (9).jpg', N'Nubira', N'1.6', 2006, N'Benzin', N'Düz', N'150', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'İkinci El', 650000, 16)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2044, N'~/resimler/Araba (10).jpg', N'Cuore', N'1.0', 2005, N'Benzin', N'Otomatik', N'160', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 750000, 17)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2045, N'~/resimler/Araba (11).jpg', N'Challenger', N'GT', 2004, N'Benzin', N'Düz', N'170', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 850000, 18)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2046, N'~/resimler/Araba (12).jpg', N'DS 3', N'1.6 e-HDi ', 2003, N'Benzin', N'Otomatik', N'180', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 950000, 19)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2047, N'~/resimler/Araba (13).jpg', N'458', N'Italia', 2002, N'Benzin', N'Düz', N'190', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 20)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2048, N'~/resimler/Araba (14).jpg', N'Egea', N'1.3 Multijet', 2001, N'Elektrik', N'Otomatik', N'200', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 21)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2049, N'~/resimler/Araba (15).jpg', N'Karms', N'2.0', 2001, N'Elektrik', N'Düz', N'210', N'Sedan', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 22)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2050, N'~/resimler/Araba (16).jpg', N'Focus', N'1.5 TDCi', 2002, N'Elektrik', N'Otomatik', N'220', N'Sedan', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 23)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2051, N'~/resimler/Araba (17).jpg', N'Emgrand', N'GSL Premium', 2003, N'Elektrik', N'Düz', N'230', N'Sedan', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 24)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2052, N'~/resimler/Araba (18).jpg', N'Civic', N'1.6i VTEC', 2004, N'Elektrik', N'Otomatik', N'240', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 25)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2053, N'~/resimler/Araba (19).jpg', N'i20', N'1.4 MPI', 2005, N'Dİzel', N'Düz', N'0', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 26)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2054, N'~/resimler/Araba (20).jpg', N'Samand', N'1.6 LX', 2006, N'Dİzel', N'Otomatik', N'55', N'Roadster', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 27)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2055, N'~/resimler/Araba (21).jpg', N'Q50', N'2.2d', 2007, N'Dİzel', N'Düz', N'65', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 28)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2056, N'~/resimler/Araba (22).jpg', N'Gemini', N'1.6', 2008, N'Dİzel', N'Otomatik', N'75', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 29)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2057, N'~/resimler/Araba (23).jpg', N'X-Type', N'2.5', 2009, N'Dİzel', N'Düz', N'85', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 1750000, 30)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2058, N'~/resimler/Araba (24).jpg', N'Ceed', N'1.6', 2010, N'LPG', N'Otomatik', N'95', N'Cabrio', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 250000, 31)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2059, N'~/resimler/Araba (25).jpg', N'Samara', N'1.5', 2011, N'LPG', N'Düz', N'0', N'Cabrio', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 350000, 32)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2060, N'~/resimler/Araba (26).jpg', N'Huracan', N'Evo', 2012, N'LPG', N'Otomatik', N'65', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'Sıfır ', 450000, 33)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2061, N'~/resimler/Araba (27).jpg', N'Delta', N'1.6 Mjet', 2013, N'LPG', N'Düz', N'45', N'Cabrio', N'126 - 150 HP', N'1.8', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 550000, 34)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2062, N'~/resimler/Araba (28).jpg', N'Es', N'Business', 2014, N'LPG', N'Otomatik', N'125', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 650000, 35)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2063, N'~/resimler/Araba (29).jpg', N'Town Car', N'4.6', 2015, N'Benzin', N'Düz', N'145', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 750000, 36)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2064, N'~/resimler/Araba (30).jpg', N'Elise', N'Sport 220', 2016, N'Benzin', N'Otomatik', N'175', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 850000, 37)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2065, N'~/resimler/Araba (31).jpg', N'Mantis', N'4.6', 2017, N'Benzin', N'Düz', N'125', N'Coupe', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 950000, 38)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2066, N'~/resimler/Araba (32).jpg', N'Ghibli', N'3.0', 2018, N'Benzin', N'Otomatik', N'27', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 39)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2067, N'~/resimler/Araba (33).jpg', N'RX', N'RX-8', 2019, N'Benzin', N'Düz', N'45', N'Coupe', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 185000, 40)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2068, N'~/resimler/Araba (34).jpg', N'GT', N'4.0', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 41)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2069, N'~/resimler/Araba (35).jpg', N'C Serisi', N'C 180', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 42)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2070, N'~/resimler/Araba (36).jpg', N'Grand Marquis', N'4.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 43)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2071, N'~/resimler/Araba (37).jpg', N'F', N'1.8', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 44)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2072, N'~/resimler/Araba (38).jpg', N'Cooper', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 45)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2073, N'~/resimler/Araba (39).jpg', N'Lancer', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 46)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2074, N'~/resimler/Araba (40).jpg', N'Aleko', N'2140', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 47)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2075, N'~/resimler/Araba (43).jpg', N'GT-R', N'Black Edition', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 48)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2076, N'~/resimler/Araba (41).jpg', N'Micra', N'1.2', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 49)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2077, N'~/resimler/Araba (44).jpg', N'Astra', N'1.3 CDTI', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 50)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2078, N'~/resimler/Araba (42).jpg', N'301', N'1.6 BlueHDI', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 51)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2083, N'~/resimler/Araba (1).jpg', N'Laser', N'2.0 L', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 52)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2084, N'~/resimler/Araba (1).png', N'Firebird', N'5.7 V8 Formula', 2020, N'Elektrik', N'Düz', N'10', N'Sedan', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 53)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2085, N'~/resimler/Araba (2).jpg', N'911', N'Carrera S', 2019, N'Elektrik', N'Otomatik', N'20', N'Sedan', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Sarı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 54)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2086, N'~/resimler/Araba (2).png', N'415', N'GLSi', 2018, N'Elektrik', N'Düz', N'30', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Mavi', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 55)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2087, N'~/resimler/Araba (3).png', N'Clio', N'1.2 Grandtour', 2017, N'Elektrik', N'Otomatik', N'40', N'Sedan', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 56)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2088, N'~/resimler/Araba (4).jpg', N'Ghost', N'6.6', 2016, N'Dİzel', N'Düz', N'50', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Turuncu', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 57)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2089, N'~/resimler/Araba (4).png', N'214', N'1.6 HDi', 2015, N'Dizel', N'Otomatik', N'60', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Mavi', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 58)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2090, N'~/resimler/Araba (5).jpg', N'9000', N'2.3', 2014, N'Dizel', N'Düz', N'70', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Siyah', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 59)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2091, N'~/resimler/Araba (5).png', N'Ibiza', N'1.2 TSI', 2013, N'Dizel', N'Otomatik', N'80', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Beyaz', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 60)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2092, N'~/resimler/Araba (6).jpg', N'Octavia', N'1.0 e-Tec', 2012, N'Dizel', N'Düz', N'90', N'Cabrio', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 61)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2093, N'~/resimler/Araba (6).png', N'Roadster', N'Roadster', 2011, N'LPG', N'Otomatik', N'100', N'Coupe', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 62)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2094, N'~/resimler/Araba (7).jpg', N'Impreza', N'1.6', 2010, N'LPG', N'Düz', N'110', N'Coupe', N'126 - 150 HP', N'1.5', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 250000, 63)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2095, N'~/resimler/Araba (7).png', N'Alto', N'0.8 GL', 2009, N'LPG', N'Otomatik', N'120', N'Coupe', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 350000, 64)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2096, N'~/resimler/Araba (8).jpg', N'Marina', N'1.4 TDI Comfort', 2008, N'LPG', N'Düz', N'130', N'Coupe', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 450000, 65)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2097, N'~/resimler/Araba (8).png', N'Model 3', N'Long Range', 2007, N'LPG', N'Otomatik', N'140', N'Coupe', N'126 - 150 HP', N'1.6', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 550000, 66)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2098, N'~/resimler/Araba (9).jpg', N'Şahin', N'1.6', 2006, N'Benzin', N'Düz', N'150', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'İkinci El', 650000, 67)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2099, N'~/resimler/Araba (10).jpg', N'Corolla', N'1.4 D-4D', 2005, N'Benzin', N'Otomatik', N'160', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 750000, 68)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2100, N'~/resimler/Araba (11).jpg', N's', N'580', 2004, N'Benzin', N'Düz', N'170', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 850000, 69)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2101, N'~/resimler/Araba (12).jpg', N'S40', N'1.9', 2003, N'Benzin', N'Otomatik', N'180', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 950000, 70)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2102, N'~/resimler/Araba (13).jpg', N'S', N'580', 2002, N'Benzin', N'Düz', N'190', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 1)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2103, N'~/resimler/Araba (14).jpg', N'Giulietta', N'1.4 TB', 2001, N'Elektrik', N'Otomatik', N'200', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 2)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2104, N'~/resimler/Araba (15).jpg', N'A', N'A2 SL', 2001, N'Elektrik', N'Düz', N'210', N'Sedan', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 3)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2105, N'~/resimler/Araba (16).jpg', N'Vantage ', N'V8 Vantage S', 2002, N'Elektrik', N'Otomatik', N'220', N'Sedan', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 4)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2106, N'~/resimler/Araba (17).jpg', N'A4', N'A4 Cabrio', 2003, N'Elektrik', N'Düz', N'230', N'Sedan', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 5)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2107, N'~/resimler/Araba (18).jpg', N'Continental', N'Flying Spur', 2004, N'Elektrik', N'Otomatik', N'240', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 6)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2108, N'~/resimler/Araba (19).jpg', N'5 Serisi', N'520d', 2005, N'Dİzel', N'Düz', N'0', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 7)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2109, N'~/resimler/Araba (20).jpg', N'Chiron', N'8.0', 2006, N'Dİzel', N'Otomatik', N'55', N'Roadster', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 8)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2110, N'~/resimler/Araba (21).jpg', N'Le Sabre', N'3.8', 2007, N'Dİzel', N'Düz', N'65', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 9)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2111, N'~/resimler/Araba (22).jpg', N'Seville', N'4.6 STS', 2008, N'Dİzel', N'Otomatik', N'75', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 10)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2112, N'~/resimler/Araba (23).jpg', N'Alia', N'Acteco Norma', 2009, N'Dİzel', N'Düz', N'85', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 1750000, 11)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2113, N'~/resimler/Araba (24).jpg', N'Cruze', N'1.6', 2010, N'LPG', N'Otomatik', N'95', N'Cabrio', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 250000, 12)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2114, N'~/resimler/Araba (25).jpg', N'300C', N'3.0 CRD', 2011, N'LPG', N'Düz', N'0', N'Cabrio', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 350000, 13)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2115, N'~/resimler/Araba (26).jpg', N'C-Elysée', N'1.6 HDi', 2012, N'LPG', N'Otomatik', N'65', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'Sıfır ', 450000, 14)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2116, N'~/resimler/Araba (27).jpg', N'Sandero', N'1.5 dCi', 2013, N'LPG', N'Düz', N'45', N'Cabrio', N'126 - 150 HP', N'1.8', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 550000, 15)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2117, N'~/resimler/Araba (28).jpg', N'Nubira', N'1.6', 2014, N'LPG', N'Otomatik', N'125', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 650000, 16)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2118, N'~/resimler/Araba (29).jpg', N'Cuore', N'1.0', 2015, N'Benzin', N'Düz', N'145', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 750000, 17)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2119, N'~/resimler/Araba (30).jpg', N'Challenger', N'GT', 2016, N'Benzin', N'Otomatik', N'175', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 850000, 18)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2120, N'~/resimler/Araba (31).jpg', N'DS 3', N'1.6 e-HDi ', 2017, N'Benzin', N'Düz', N'125', N'Coupe', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 950000, 19)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2121, N'~/resimler/Araba (32).jpg', N'458', N'Italia', 2018, N'Benzin', N'Otomatik', N'27', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 20)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2122, N'~/resimler/Araba (33).jpg', N'Egea', N'1.3 Multijet', 2019, N'Benzin', N'Düz', N'45', N'Coupe', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 185000, 21)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2123, N'~/resimler/Araba (34).jpg', N'Karms', N'2.0', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 22)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2124, N'~/resimler/Araba (35).jpg', N'Focus', N'1.5 TDCi', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 23)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2125, N'~/resimler/Araba (36).jpg', N'Emgrand', N'GSL Premium', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 24)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2126, N'~/resimler/Araba (37).jpg', N'Civic', N'1.6i VTEC', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 25)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2127, N'~/resimler/Araba (38).jpg', N'i20', N'1.4 MPI', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 26)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2128, N'~/resimler/Araba (39).jpg', N'Samand', N'1.6 LX', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 27)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2129, N'~/resimler/Araba (40).jpg', N'Q50', N'2.2d', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 28)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2130, N'~/resimler/Araba (43).jpg', N'Gemini', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 29)
GO
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2131, N'~/resimler/Araba (41).jpg', N'X-Type', N'2.5', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 30)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2132, N'~/resimler/Araba (44).jpg', N'Ceed', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 31)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2133, N'~/resimler/Araba (42).jpg', N'Samara', N'1.5', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 32)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2134, N'~/resimler/Araba (1).jpg', N'Huracan', N'Evo', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 33)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2135, N'~/resimler/Araba (1).png', N'Delta', N'1.6 Mjet', 2020, N'Elektrik', N'Düz', N'10', N'Sedan', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 34)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2136, N'~/resimler/Araba (2).jpg', N'Es', N'Business', 2019, N'Elektrik', N'Otomatik', N'20', N'Sedan', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Sarı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 35)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2137, N'~/resimler/Araba (2).png', N'Town Car', N'4.6', 2018, N'Elektrik', N'Düz', N'30', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Mavi', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 36)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2138, N'~/resimler/Araba (3).png', N'Elise', N'Sport 220', 2017, N'Elektrik', N'Otomatik', N'40', N'Sedan', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 37)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2139, N'~/resimler/Araba (4).jpg', N'Mantis', N'4.6', 2016, N'Dİzel', N'Düz', N'50', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Turuncu', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 38)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2140, N'~/resimler/Araba (4).png', N'Ghibli', N'3.0', 2015, N'Dizel', N'Otomatik', N'60', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Mavi', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 39)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2141, N'~/resimler/Araba (5).jpg', N'RX', N'RX-8', 2014, N'Dizel', N'Düz', N'70', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Siyah', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 40)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2142, N'~/resimler/Araba (5).png', N'GT', N'4.0', 2013, N'Dizel', N'Otomatik', N'80', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Beyaz', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 41)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2143, N'~/resimler/Araba (6).jpg', N'C Serisi', N'C 180', 2012, N'Dizel', N'Düz', N'90', N'Cabrio', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 42)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2144, N'~/resimler/Araba (6).png', N'Grand Marquis', N'4.6', 2011, N'LPG', N'Otomatik', N'100', N'Coupe', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 43)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2145, N'~/resimler/Araba (7).jpg', N'F', N'1.8', 2010, N'LPG', N'Düz', N'110', N'Coupe', N'126 - 150 HP', N'1.5', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 250000, 44)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2146, N'~/resimler/Araba (7).png', N'Cooper', N'1.6', 2009, N'LPG', N'Otomatik', N'120', N'Coupe', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 350000, 45)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2147, N'~/resimler/Araba (8).jpg', N'Lancer', N'1.6', 2008, N'LPG', N'Düz', N'130', N'Coupe', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 450000, 46)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2148, N'~/resimler/Araba (8).png', N'Aleko', N'2140', 2007, N'LPG', N'Otomatik', N'140', N'Coupe', N'126 - 150 HP', N'1.6', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 550000, 47)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2149, N'~/resimler/Araba (9).jpg', N'GT-R', N'Black Edition', 2006, N'Benzin', N'Düz', N'150', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'İkinci El', 650000, 48)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2150, N'~/resimler/Araba (10).jpg', N'Micra', N'1.2', 2005, N'Benzin', N'Otomatik', N'160', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 750000, 49)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2151, N'~/resimler/Araba (11).jpg', N'Astra', N'1.3 CDTI', 2004, N'Benzin', N'Düz', N'170', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 850000, 50)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2152, N'~/resimler/Araba (12).jpg', N'301', N'1.6 BlueHDI', 2003, N'Benzin', N'Otomatik', N'180', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 950000, 51)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2153, N'~/resimler/Araba (13).jpg', N'Laser', N'2.0 L', 2002, N'Benzin', N'Düz', N'190', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 52)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2154, N'~/resimler/Araba (14).jpg', N'Firebird', N'5.7 V8 Formula', 2001, N'Elektrik', N'Otomatik', N'200', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 53)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2155, N'~/resimler/Araba (15).jpg', N'911', N'Carrera S', 2001, N'Elektrik', N'Düz', N'210', N'Sedan', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 54)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2156, N'~/resimler/Araba (16).jpg', N'415', N'GLSi', 2002, N'Elektrik', N'Otomatik', N'220', N'Sedan', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 55)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2157, N'~/resimler/Araba (17).jpg', N'Clio', N'1.2 Grandtour', 2003, N'Elektrik', N'Düz', N'230', N'Sedan', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 56)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2158, N'~/resimler/Araba (18).jpg', N'Ghost', N'6.6', 2004, N'Elektrik', N'Otomatik', N'240', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 57)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2159, N'~/resimler/Araba (19).jpg', N'214', N'1.6 HDi', 2005, N'Dİzel', N'Düz', N'0', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 58)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2160, N'~/resimler/Araba (20).jpg', N'9000', N'2.3', 2006, N'Dİzel', N'Otomatik', N'55', N'Roadster', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 59)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2161, N'~/resimler/Araba (21).jpg', N'Ibiza', N'1.2 TSI', 2007, N'Dİzel', N'Düz', N'65', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 60)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2162, N'~/resimler/Araba (22).jpg', N'Octavia', N'1.0 e-Tec', 2008, N'Dİzel', N'Otomatik', N'75', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 61)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2163, N'~/resimler/Araba (23).jpg', N'Roadster', N'Roadster', 2009, N'Dİzel', N'Düz', N'85', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 1750000, 62)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2164, N'~/resimler/Araba (24).jpg', N'Impreza', N'1.6', 2010, N'LPG', N'Otomatik', N'95', N'Cabrio', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 250000, 63)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2165, N'~/resimler/Araba (25).jpg', N'Alto', N'0.8 GL', 2011, N'LPG', N'Düz', N'0', N'Cabrio', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 350000, 64)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2166, N'~/resimler/Araba (26).jpg', N'Marina', N'1.4 TDI Comfort', 2012, N'LPG', N'Otomatik', N'65', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'Sıfır ', 450000, 65)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2167, N'~/resimler/Araba (27).jpg', N'Model 3', N'Long Range', 2013, N'LPG', N'Düz', N'45', N'Cabrio', N'126 - 150 HP', N'1.8', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 550000, 66)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2168, N'~/resimler/Araba (28).jpg', N'Şahin', N'1.6', 2014, N'LPG', N'Otomatik', N'125', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 650000, 67)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2169, N'~/resimler/Araba (29).jpg', N'Corolla', N'1.4 D-4D', 2015, N'Benzin', N'Düz', N'145', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 750000, 68)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2170, N'~/resimler/Araba (30).jpg', N's', N'580', 2016, N'Benzin', N'Otomatik', N'175', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 850000, 69)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2171, N'~/resimler/Araba (31).jpg', N'S40', N'1.9', 2017, N'Benzin', N'Düz', N'125', N'Coupe', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 950000, 70)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2172, N'~/resimler/Araba (32).jpg', N'S', N'580', 2018, N'Benzin', N'Otomatik', N'27', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 1)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2173, N'~/resimler/Araba (33).jpg', N'Giulietta', N'1.4 TB', 2019, N'Benzin', N'Düz', N'45', N'Coupe', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 185000, 2)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2174, N'~/resimler/Araba (34).jpg', N'A', N'A2 SL', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 3)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2175, N'~/resimler/Araba (35).jpg', N'Vantage ', N'V8 Vantage S', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 4)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2176, N'~/resimler/Araba (36).jpg', N'A4', N'A4 Cabrio', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 5)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2177, N'~/resimler/Araba (37).jpg', N'Continental', N'Flying Spur', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 6)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2178, N'~/resimler/Araba (38).jpg', N'5 Serisi', N'520d', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 7)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2179, N'~/resimler/Araba (39).jpg', N'Chiron', N'8.0', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 8)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2180, N'~/resimler/Araba (40).jpg', N'Le Sabre', N'3.8', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 9)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2181, N'~/resimler/Araba (43).jpg', N'Seville', N'4.6 STS', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 10)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2182, N'~/resimler/Araba (41).jpg', N'Alia', N'Acteco Norma', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 11)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2183, N'~/resimler/Araba (44).jpg', N'Cruze', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 12)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2184, N'~/resimler/Araba (42).jpg', N'300C', N'3.0 CRD', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 13)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2185, N'~/resimler/Araba (1).jpg', N'C-Elysée', N'1.6 HDi', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 14)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2186, N'~/resimler/Araba (1).png', N'Sandero', N'1.5 dCi', 2020, N'Elektrik', N'Düz', N'10', N'Sedan', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 15)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2187, N'~/resimler/Araba (2).jpg', N'Nubira', N'1.6', 2019, N'Elektrik', N'Otomatik', N'20', N'Sedan', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Sarı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 16)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2188, N'~/resimler/Araba (2).png', N'Cuore', N'1.0', 2018, N'Elektrik', N'Düz', N'30', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Mavi', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 17)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2189, N'~/resimler/Araba (3).png', N'Challenger', N'GT', 2017, N'Elektrik', N'Otomatik', N'40', N'Sedan', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 18)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2190, N'~/resimler/Araba (4).jpg', N'DS 3', N'1.6 e-HDi ', 2016, N'Dİzel', N'Düz', N'50', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Turuncu', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 19)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2191, N'~/resimler/Araba (4).png', N'458', N'Italia', 2015, N'Dizel', N'Otomatik', N'60', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Mavi', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 20)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2192, N'~/resimler/Araba (5).jpg', N'Egea', N'1.3 Multijet', 2014, N'Dizel', N'Düz', N'70', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Siyah', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 21)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2193, N'~/resimler/Araba (5).png', N'Karms', N'2.0', 2013, N'Dizel', N'Otomatik', N'80', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Beyaz', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 22)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2194, N'~/resimler/Araba (6).jpg', N'Focus', N'1.5 TDCi', 2012, N'Dizel', N'Düz', N'90', N'Cabrio', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 23)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2195, N'~/resimler/Araba (6).png', N'Emgrand', N'GSL Premium', 2011, N'LPG', N'Otomatik', N'100', N'Coupe', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 24)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2196, N'~/resimler/Araba (7).jpg', N'Civic', N'1.6i VTEC', 2010, N'LPG', N'Düz', N'110', N'Coupe', N'126 - 150 HP', N'1.5', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 250000, 25)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2197, N'~/resimler/Araba (7).png', N'i20', N'1.4 MPI', 2009, N'LPG', N'Otomatik', N'120', N'Coupe', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 350000, 26)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2198, N'~/resimler/Araba (8).jpg', N'Samand', N'1.6 LX', 2008, N'LPG', N'Düz', N'130', N'Coupe', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 450000, 27)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2199, N'~/resimler/Araba (8).png', N'Q50', N'2.2d', 2007, N'LPG', N'Otomatik', N'140', N'Coupe', N'126 - 150 HP', N'1.6', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 550000, 28)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2200, N'~/resimler/Araba (9).jpg', N'Gemini', N'1.6', 2006, N'Benzin', N'Düz', N'150', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'İkinci El', 650000, 29)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2201, N'~/resimler/Araba (10).jpg', N'X-Type', N'2.5', 2005, N'Benzin', N'Otomatik', N'160', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 750000, 30)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2202, N'~/resimler/Araba (11).jpg', N'Ceed', N'1.6', 2004, N'Benzin', N'Düz', N'170', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 850000, 31)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2203, N'~/resimler/Araba (12).jpg', N'Samara', N'1.5', 2003, N'Benzin', N'Otomatik', N'180', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 950000, 32)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2204, N'~/resimler/Araba (13).jpg', N'Huracan', N'Evo', 2002, N'Benzin', N'Düz', N'190', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 33)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2205, N'~/resimler/Araba (14).jpg', N'Delta', N'1.6 Mjet', 2001, N'Elektrik', N'Otomatik', N'200', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 34)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2206, N'~/resimler/Araba (15).jpg', N'Es', N'Business', 2001, N'Elektrik', N'Düz', N'210', N'Sedan', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 35)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2207, N'~/resimler/Araba (16).jpg', N'Town Car', N'4.6', 2002, N'Elektrik', N'Otomatik', N'220', N'Sedan', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 36)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2208, N'~/resimler/Araba (17).jpg', N'Elise', N'Sport 220', 2003, N'Elektrik', N'Düz', N'230', N'Sedan', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 37)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2209, N'~/resimler/Araba (18).jpg', N'Mantis', N'4.6', 2004, N'Elektrik', N'Otomatik', N'240', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 38)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2210, N'~/resimler/Araba (19).jpg', N'Ghibli', N'3.0', 2005, N'Dİzel', N'Düz', N'0', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 39)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2211, N'~/resimler/Araba (20).jpg', N'RX', N'RX-8', 2006, N'Dİzel', N'Otomatik', N'55', N'Roadster', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 40)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2212, N'~/resimler/Araba (21).jpg', N'GT', N'4.0', 2007, N'Dİzel', N'Düz', N'65', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 41)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2213, N'~/resimler/Araba (22).jpg', N'C Serisi', N'C 180', 2008, N'Dİzel', N'Otomatik', N'75', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 42)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2214, N'~/resimler/Araba (23).jpg', N'Grand Marquis', N'4.6', 2009, N'Dİzel', N'Düz', N'85', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 1750000, 43)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2215, N'~/resimler/Araba (24).jpg', N'F', N'1.8', 2010, N'LPG', N'Otomatik', N'95', N'Cabrio', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 250000, 44)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2216, N'~/resimler/Araba (25).jpg', N'Cooper', N'1.6', 2011, N'LPG', N'Düz', N'0', N'Cabrio', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 350000, 45)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2217, N'~/resimler/Araba (26).jpg', N'Cooper', N'1.6', 2012, N'LPG', N'Otomatik', N'65', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'Sıfır ', 450000, 45)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2218, N'~/resimler/Araba (27).jpg', N'Aleko', N'2140', 2013, N'LPG', N'Düz', N'45', N'Cabrio', N'126 - 150 HP', N'1.8', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 550000, 47)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2219, N'~/resimler/Araba (28).jpg', N'GT-R', N'Black Edition', 2014, N'LPG', N'Otomatik', N'125', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 650000, 48)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2220, N'~/resimler/Araba (29).jpg', N'Micra', N'1.2', 2015, N'Benzin', N'Düz', N'145', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 750000, 49)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2221, N'~/resimler/Araba (30).jpg', N'Astra', N'1.3 CDTI', 2016, N'Benzin', N'Otomatik', N'175', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 850000, 50)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2222, N'~/resimler/Araba (31).jpg', N'301', N'1.6 BlueHDI', 2017, N'Benzin', N'Düz', N'125', N'Coupe', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 950000, 51)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2223, N'~/resimler/Araba (32).jpg', N'Laser', N'2.0 L', 2018, N'Benzin', N'Otomatik', N'27', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 52)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2224, N'~/resimler/Araba (33).jpg', N'Firebird', N'5.7 V8 Formula', 2019, N'Benzin', N'Düz', N'45', N'Coupe', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 185000, 53)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2225, N'~/resimler/Araba (34).jpg', N'911', N'Carrera S', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 54)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2226, N'~/resimler/Araba (35).jpg', N'415', N'GLSi', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 55)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2227, N'~/resimler/Araba (36).jpg', N'Clio', N'1.2 Grandtour', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 56)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2228, N'~/resimler/Araba (37).jpg', N'Ghost', N'6.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 57)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2229, N'~/resimler/Araba (38).jpg', N'214', N'1.6 HDi', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 58)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2230, N'~/resimler/Araba (39).jpg', N'9000', N'2.3', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 59)
GO
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2231, N'~/resimler/Araba (40).jpg', N'Ibiza', N'1.2 TSI', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 60)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2232, N'~/resimler/Araba (43).jpg', N'Octavia', N'1.0 e-Tec', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 61)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2233, N'~/resimler/Araba (41).jpg', N'Roadster', N'Roadster', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 62)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2234, N'~/resimler/Araba (44).jpg', N'Impreza', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 63)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2235, N'~/resimler/Araba (42).jpg', N'Alto', N'0.8 GL', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 64)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2236, N'~/resimler/Araba (1).jpg', N'Marina', N'1.4 TDI Comfort', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 65)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2237, N'~/resimler/Araba (1).png', N'Model 3', N'Long Range', 2020, N'Elektrik', N'Düz', N'10', N'Sedan', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 66)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2238, N'~/resimler/Araba (2).jpg', N'Şahin', N'1.6', 2019, N'Elektrik', N'Otomatik', N'20', N'Sedan', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Sarı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 67)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2239, N'~/resimler/Araba (2).png', N'Corolla', N'1.4 D-4D', 2018, N'Elektrik', N'Düz', N'30', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Mavi', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 68)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2240, N'~/resimler/Araba (3).png', N's', N'580', 2017, N'Elektrik', N'Otomatik', N'40', N'Sedan', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 69)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2241, N'~/resimler/Araba (4).jpg', N'S40', N'1.9', 2016, N'Dİzel', N'Düz', N'50', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Turuncu', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 70)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2242, N'~/resimler/Araba (4).png', N'S', N'580', 2015, N'Dizel', N'Otomatik', N'60', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Mavi', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 1)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2243, N'~/resimler/Araba (5).jpg', N'Giulietta', N'1.4 TB', 2014, N'Dizel', N'Düz', N'70', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Siyah', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 2)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2244, N'~/resimler/Araba (5).png', N'A', N'A2 SL', 2013, N'Dizel', N'Otomatik', N'80', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Beyaz', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 3)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2245, N'~/resimler/Araba (6).jpg', N'Vantage ', N'V8 Vantage S', 2012, N'Dizel', N'Düz', N'90', N'Cabrio', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 4)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2246, N'~/resimler/Araba (6).png', N'A4', N'A4 Cabrio', 2011, N'LPG', N'Otomatik', N'100', N'Coupe', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 5)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2247, N'~/resimler/Araba (7).jpg', N'Continental', N'Flying Spur', 2010, N'LPG', N'Düz', N'110', N'Coupe', N'126 - 150 HP', N'1.5', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 250000, 6)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2248, N'~/resimler/Araba (7).png', N'5 Serisi', N'520d', 2009, N'LPG', N'Otomatik', N'120', N'Coupe', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 350000, 7)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2249, N'~/resimler/Araba (8).jpg', N'Chiron', N'8.0', 2008, N'LPG', N'Düz', N'130', N'Coupe', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 450000, 8)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2250, N'~/resimler/Araba (8).png', N'Le Sabre', N'3.8', 2007, N'LPG', N'Otomatik', N'140', N'Coupe', N'126 - 150 HP', N'1.6', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 550000, 9)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2251, N'~/resimler/Araba (9).jpg', N'Seville', N'4.6 STS', 2006, N'Benzin', N'Düz', N'150', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'İkinci El', 650000, 10)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2252, N'~/resimler/Araba (10).jpg', N'Alia', N'Acteco Norma', 2005, N'Benzin', N'Otomatik', N'160', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 750000, 11)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2253, N'~/resimler/Araba (11).jpg', N'Cruze', N'1.6', 2004, N'Benzin', N'Düz', N'170', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 850000, 12)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2254, N'~/resimler/Araba (12).jpg', N'300C', N'3.0 CRD', 2003, N'Benzin', N'Otomatik', N'180', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 950000, 13)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2255, N'~/resimler/Araba (13).jpg', N'C-Elysée', N'1.6 HDi', 2002, N'Benzin', N'Düz', N'190', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 14)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2256, N'~/resimler/Araba (14).jpg', N'Sandero', N'1.5 dCi', 2001, N'Elektrik', N'Otomatik', N'200', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 15)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2257, N'~/resimler/Araba (15).jpg', N'Nubira', N'1.6', 2001, N'Elektrik', N'Düz', N'210', N'Sedan', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 16)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2258, N'~/resimler/Araba (16).jpg', N'Cuore', N'1.0', 2002, N'Elektrik', N'Otomatik', N'220', N'Sedan', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 17)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2259, N'~/resimler/Araba (17).jpg', N'Challenger', N'GT', 2003, N'Elektrik', N'Düz', N'230', N'Sedan', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 18)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2260, N'~/resimler/Araba (18).jpg', N'DS 3', N'1.6 e-HDi ', 2004, N'Elektrik', N'Otomatik', N'240', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 19)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2261, N'~/resimler/Araba (19).jpg', N'458', N'Italia', 2005, N'Dİzel', N'Düz', N'0', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 20)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2262, N'~/resimler/Araba (20).jpg', N'Egea', N'1.3 Multijet', 2006, N'Dİzel', N'Otomatik', N'55', N'Roadster', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 21)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2263, N'~/resimler/Araba (21).jpg', N'Karms', N'2.0', 2007, N'Dİzel', N'Düz', N'65', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 22)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2264, N'~/resimler/Araba (22).jpg', N'Focus', N'1.5 TDCi', 2008, N'Dİzel', N'Otomatik', N'75', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 23)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2265, N'~/resimler/Araba (23).jpg', N'Emgrand', N'GSL Premium', 2009, N'Dİzel', N'Düz', N'85', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 1750000, 24)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2266, N'~/resimler/Araba (24).jpg', N'Civic', N'1.6i VTEC', 2010, N'LPG', N'Otomatik', N'95', N'Cabrio', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 250000, 25)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2267, N'~/resimler/Araba (25).jpg', N'i20', N'1.4 MPI', 2011, N'LPG', N'Düz', N'0', N'Cabrio', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 350000, 26)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2268, N'~/resimler/Araba (26).jpg', N'Samand', N'1.6 LX', 2012, N'LPG', N'Otomatik', N'65', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'Sıfır ', 450000, 27)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2269, N'~/resimler/Araba (27).jpg', N'Q50', N'2.2d', 2013, N'LPG', N'Düz', N'45', N'Cabrio', N'126 - 150 HP', N'1.8', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 550000, 28)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2270, N'~/resimler/Araba (28).jpg', N'Gemini', N'1.6', 2014, N'LPG', N'Otomatik', N'125', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 650000, 29)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2271, N'~/resimler/Araba (29).jpg', N'X-Type', N'2.5', 2015, N'Benzin', N'Düz', N'145', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 750000, 30)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2272, N'~/resimler/Araba (30).jpg', N'Ceed', N'1.6', 2016, N'Benzin', N'Otomatik', N'175', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 850000, 31)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2273, N'~/resimler/Araba (31).jpg', N'Samara', N'1.5', 2017, N'Benzin', N'Düz', N'125', N'Coupe', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 950000, 32)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2274, N'~/resimler/Araba (32).jpg', N'Huracan', N'Evo', 2018, N'Benzin', N'Otomatik', N'27', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 33)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2275, N'~/resimler/Araba (33).jpg', N'Delta', N'1.6 Mjet', 2019, N'Benzin', N'Düz', N'45', N'Coupe', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 185000, 34)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2276, N'~/resimler/Araba (34).jpg', N'Es', N'Business', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 35)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2277, N'~/resimler/Araba (35).jpg', N'Town Car', N'4.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 36)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2278, N'~/resimler/Araba (36).jpg', N'Elise', N'Sport 220', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 37)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2279, N'~/resimler/Araba (37).jpg', N'Mantis', N'4.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 38)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2280, N'~/resimler/Araba (38).jpg', N'Ghibli', N'3.0', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 39)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2281, N'~/resimler/Araba (39).jpg', N'RX', N'RX-8', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 40)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2282, N'~/resimler/Araba (40).jpg', N'GT', N'4.0', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 41)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2283, N'~/resimler/Araba (43).jpg', N'C Serisi', N'C 180', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 42)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2284, N'~/resimler/Araba (41).jpg', N'Grand Marquis', N'4.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 43)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2285, N'~/resimler/Araba (44).jpg', N'F', N'1.8', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 44)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2286, N'~/resimler/Araba (42).jpg', N'Cooper', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 45)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2287, N'~/resimler/Araba (1).jpg', N'Lancer', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 46)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2288, N'~/resimler/Araba (1).png', N'Aleko', N'2140', 2020, N'Elektrik', N'Düz', N'10', N'Sedan', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 47)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2289, N'~/resimler/Araba (2).jpg', N'GT-R', N'Black Edition', 2019, N'Elektrik', N'Otomatik', N'20', N'Sedan', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Sarı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 48)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2290, N'~/resimler/Araba (2).png', N'Micra', N'1.2', 2018, N'Elektrik', N'Düz', N'30', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Mavi', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 49)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2291, N'~/resimler/Araba (3).png', N'Astra', N'1.3 CDTI', 2017, N'Elektrik', N'Otomatik', N'40', N'Sedan', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 50)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2292, N'~/resimler/Araba (4).jpg', N'301', N'1.6 BlueHDI', 2016, N'Dİzel', N'Düz', N'50', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Turuncu', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 51)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2293, N'~/resimler/Araba (4).png', N'Laser', N'2.0 L', 2015, N'Dizel', N'Otomatik', N'60', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Mavi', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 52)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2294, N'~/resimler/Araba (5).jpg', N'Firebird', N'5.7 V8 Formula', 2014, N'Dizel', N'Düz', N'70', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Siyah', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 53)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2295, N'~/resimler/Araba (5).png', N'911', N'Carrera S', 2013, N'Dizel', N'Otomatik', N'80', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Beyaz', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 54)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2296, N'~/resimler/Araba (6).jpg', N'415', N'GLSi', 2012, N'Dizel', N'Düz', N'90', N'Cabrio', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 55)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2297, N'~/resimler/Araba (6).png', N'Clio', N'1.2 Grandtour', 2011, N'LPG', N'Otomatik', N'100', N'Coupe', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 56)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2298, N'~/resimler/Araba (7).jpg', N'Ghost', N'6.6', 2010, N'LPG', N'Düz', N'110', N'Coupe', N'126 - 150 HP', N'1.5', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 250000, 57)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2299, N'~/resimler/Araba (7).png', N'214', N'1.6 HDi', 2009, N'LPG', N'Otomatik', N'120', N'Coupe', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 350000, 58)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2300, N'~/resimler/Araba (8).jpg', N'9000', N'2.3', 2008, N'LPG', N'Düz', N'130', N'Coupe', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 450000, 59)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2301, N'~/resimler/Araba (8).png', N'Ibiza', N'1.2 TSI', 2007, N'LPG', N'Otomatik', N'140', N'Coupe', N'126 - 150 HP', N'1.6', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 550000, 60)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2302, N'~/resimler/Araba (9).jpg', N'Octavia', N'1.0 e-Tec', 2006, N'Benzin', N'Düz', N'150', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'İkinci El', 650000, 61)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2303, N'~/resimler/Araba (10).jpg', N'Roadster', N'Roadster', 2005, N'Benzin', N'Otomatik', N'160', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 750000, 62)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2304, N'~/resimler/Araba (11).jpg', N'Impreza', N'1.6', 2004, N'Benzin', N'Düz', N'170', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 850000, 63)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2305, N'~/resimler/Araba (12).jpg', N'Alto', N'0.8 GL', 2003, N'Benzin', N'Otomatik', N'180', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 950000, 64)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2306, N'~/resimler/Araba (13).jpg', N'Marina', N'1.4 TDI Comfort', 2002, N'Benzin', N'Düz', N'190', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 65)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2307, N'~/resimler/Araba (14).jpg', N'Model 3', N'Long Range', 2001, N'Elektrik', N'Otomatik', N'200', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 66)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2308, N'~/resimler/Araba (15).jpg', N'Şahin', N'1.6', 2001, N'Elektrik', N'Düz', N'210', N'Sedan', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 67)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2309, N'~/resimler/Araba (16).jpg', N'Corolla', N'1.4 D-4D', 2002, N'Elektrik', N'Otomatik', N'220', N'Sedan', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 68)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2310, N'~/resimler/Araba (17).jpg', N's', N'580', 2003, N'Elektrik', N'Düz', N'230', N'Sedan', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 69)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2311, N'~/resimler/Araba (18).jpg', N'S40', N'1.9', 2004, N'Elektrik', N'Otomatik', N'240', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 70)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2312, N'~/resimler/Araba (19).jpg', N'S', N'580', 2005, N'Dİzel', N'Düz', N'0', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 1)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2313, N'~/resimler/Araba (20).jpg', N'Giulietta', N'1.4 TB', 2006, N'Dİzel', N'Otomatik', N'55', N'Roadster', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 2)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2314, N'~/resimler/Araba (21).jpg', N'A', N'A2 SL', 2007, N'Dİzel', N'Düz', N'65', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 3)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2315, N'~/resimler/Araba (22).jpg', N'Vantage ', N'V8 Vantage S', 2008, N'Dİzel', N'Otomatik', N'75', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 4)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2316, N'~/resimler/Araba (23).jpg', N'A4', N'A4 Cabrio', 2009, N'Dİzel', N'Düz', N'85', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 1750000, 5)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2317, N'~/resimler/Araba (24).jpg', N'Continental', N'Flying Spur', 2010, N'LPG', N'Otomatik', N'95', N'Cabrio', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 250000, 6)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2318, N'~/resimler/Araba (25).jpg', N'5 Serisi', N'520d', 2011, N'LPG', N'Düz', N'0', N'Cabrio', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 350000, 7)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2319, N'~/resimler/Araba (26).jpg', N'Chiron', N'8.0', 2012, N'LPG', N'Otomatik', N'65', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'Sıfır ', 450000, 8)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2320, N'~/resimler/Araba (27).jpg', N'Le Sabre', N'3.8', 2013, N'LPG', N'Düz', N'45', N'Cabrio', N'126 - 150 HP', N'1.8', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 550000, 9)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2321, N'~/resimler/Araba (28).jpg', N'Seville', N'4.6 STS', 2014, N'LPG', N'Otomatik', N'125', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 650000, 10)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2322, N'~/resimler/Araba (29).jpg', N'Alia', N'Acteco Norma', 2015, N'Benzin', N'Düz', N'145', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 750000, 11)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2323, N'~/resimler/Araba (30).jpg', N'Cruze', N'1.6', 2016, N'Benzin', N'Otomatik', N'175', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 850000, 12)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2324, N'~/resimler/Araba (31).jpg', N'300C', N'3.0 CRD', 2017, N'Benzin', N'Düz', N'125', N'Coupe', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 950000, 13)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2325, N'~/resimler/Araba (32).jpg', N'C-Elysée', N'1.6 HDi', 2018, N'Benzin', N'Otomatik', N'27', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 14)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2326, N'~/resimler/Araba (33).jpg', N'Sandero', N'1.5 dCi', 2019, N'Benzin', N'Düz', N'45', N'Coupe', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 185000, 15)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2327, N'~/resimler/Araba (34).jpg', N'Nubira', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 16)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2328, N'~/resimler/Araba (35).jpg', N'Cuore', N'1.0', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 17)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2329, N'~/resimler/Araba (36).jpg', N'Challenger', N'GT', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 18)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2330, N'~/resimler/Araba (37).jpg', N'DS 3', N'1.6 e-HDi ', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 19)
GO
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2331, N'~/resimler/Araba (38).jpg', N'458', N'Italia', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 20)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2332, N'~/resimler/Araba (39).jpg', N'Egea', N'1.3 Multijet', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 21)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2333, N'~/resimler/Araba (40).jpg', N'Karms', N'2.0', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 22)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2334, N'~/resimler/Araba (43).jpg', N'Focus', N'1.5 TDCi', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 23)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2335, N'~/resimler/Araba (41).jpg', N'Emgrand', N'GSL Premium', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 24)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2336, N'~/resimler/Araba (44).jpg', N'Civic', N'1.6i VTEC', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 25)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2337, N'~/resimler/Araba (42).jpg', N'i20', N'1.4 MPI', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 26)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2338, N'~/resimler/Araba (1).jpg', N'Samand', N'1.6 LX', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 27)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2339, N'~/resimler/Araba (1).png', N'Q50', N'2.2d', 2020, N'Elektrik', N'Düz', N'10', N'Sedan', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 28)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2340, N'~/resimler/Araba (2).jpg', N'Gemini', N'1.6', 2019, N'Elektrik', N'Otomatik', N'20', N'Sedan', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Sarı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 29)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2341, N'~/resimler/Araba (2).png', N'X-Type', N'2.5', 2018, N'Elektrik', N'Düz', N'30', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Mavi', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 30)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2342, N'~/resimler/Araba (3).png', N'Ceed', N'1.6', 2017, N'Elektrik', N'Otomatik', N'40', N'Sedan', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 31)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2343, N'~/resimler/Araba (4).jpg', N'Samara', N'1.5', 2016, N'Dİzel', N'Düz', N'50', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Turuncu', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 32)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2344, N'~/resimler/Araba (4).png', N'Huracan', N'Evo', 2015, N'Dizel', N'Otomatik', N'60', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Mavi', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 33)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2345, N'~/resimler/Araba (5).jpg', N'Delta', N'1.6 Mjet', 2014, N'Dizel', N'Düz', N'70', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Siyah', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 34)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2346, N'~/resimler/Araba (5).png', N'Es', N'Business', 2013, N'Dizel', N'Otomatik', N'80', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Beyaz', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 35)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2347, N'~/resimler/Araba (6).jpg', N'Town Car', N'4.6', 2012, N'Dizel', N'Düz', N'90', N'Cabrio', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 36)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2348, N'~/resimler/Araba (6).png', N'Elise', N'Sport 220', 2011, N'LPG', N'Otomatik', N'100', N'Coupe', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 37)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2349, N'~/resimler/Araba (7).jpg', N'Mantis', N'4.6', 2010, N'LPG', N'Düz', N'110', N'Coupe', N'126 - 150 HP', N'1.5', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 250000, 38)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2350, N'~/resimler/Araba (7).png', N'Ghibli', N'3.0', 2009, N'LPG', N'Otomatik', N'120', N'Coupe', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 350000, 39)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2351, N'~/resimler/Araba (8).jpg', N'RX', N'RX-8', 2008, N'LPG', N'Düz', N'130', N'Coupe', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 450000, 40)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2352, N'~/resimler/Araba (8).png', N'GT', N'4.0', 2007, N'LPG', N'Otomatik', N'140', N'Coupe', N'126 - 150 HP', N'1.6', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 550000, 41)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2353, N'~/resimler/Araba (9).jpg', N'C Serisi', N'C 180', 2006, N'Benzin', N'Düz', N'150', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'İkinci El', 650000, 42)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2354, N'~/resimler/Araba (10).jpg', N'Grand Marquis', N'4.6', 2005, N'Benzin', N'Otomatik', N'160', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 750000, 43)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2355, N'~/resimler/Araba (11).jpg', N'F', N'1.8', 2004, N'Benzin', N'Düz', N'170', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 850000, 44)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2356, N'~/resimler/Araba (12).jpg', N'Cooper', N'1.6', 2003, N'Benzin', N'Otomatik', N'180', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 950000, 45)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2357, N'~/resimler/Araba (13).jpg', N'Lancer', N'1.6', 2002, N'Benzin', N'Düz', N'190', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 46)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2358, N'~/resimler/Araba (14).jpg', N'Aleko', N'2140', 2001, N'Elektrik', N'Otomatik', N'200', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 47)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2359, N'~/resimler/Araba (15).jpg', N'GT-R', N'Black Edition', 2001, N'Elektrik', N'Düz', N'210', N'Sedan', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 48)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2360, N'~/resimler/Araba (16).jpg', N'Micra', N'1.2', 2002, N'Elektrik', N'Otomatik', N'220', N'Sedan', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 49)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2361, N'~/resimler/Araba (17).jpg', N'Astra', N'1.3 CDTI', 2003, N'Elektrik', N'Düz', N'230', N'Sedan', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 50)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2362, N'~/resimler/Araba (18).jpg', N'301', N'1.6 BlueHDI', 2004, N'Elektrik', N'Otomatik', N'240', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 51)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2363, N'~/resimler/Araba (19).jpg', N'Laser', N'2.0 L', 2005, N'Dİzel', N'Düz', N'0', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 52)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2364, N'~/resimler/Araba (20).jpg', N'Firebird', N'5.7 V8 Formula', 2006, N'Dİzel', N'Otomatik', N'55', N'Roadster', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 53)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2365, N'~/resimler/Araba (21).jpg', N'911', N'Carrera S', 2007, N'Dİzel', N'Düz', N'65', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 54)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2366, N'~/resimler/Araba (22).jpg', N'415', N'GLSi', 2008, N'Dİzel', N'Otomatik', N'75', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 55)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2367, N'~/resimler/Araba (23).jpg', N'Clio', N'1.2 Grandtour', 2009, N'Dİzel', N'Düz', N'85', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 1750000, 56)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2368, N'~/resimler/Araba (24).jpg', N'Ghost', N'6.6', 2010, N'LPG', N'Otomatik', N'95', N'Cabrio', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 250000, 57)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2369, N'~/resimler/Araba (25).jpg', N'214', N'1.6 HDi', 2011, N'LPG', N'Düz', N'0', N'Cabrio', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 350000, 58)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2370, N'~/resimler/Araba (26).jpg', N'9000', N'2.3', 2012, N'LPG', N'Otomatik', N'65', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'Sıfır ', 450000, 59)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2371, N'~/resimler/Araba (27).jpg', N'Ibiza', N'1.2 TSI', 2013, N'LPG', N'Düz', N'45', N'Cabrio', N'126 - 150 HP', N'1.8', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 550000, 60)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2372, N'~/resimler/Araba (28).jpg', N'Octavia', N'1.0 e-Tec', 2014, N'LPG', N'Otomatik', N'125', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 650000, 61)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2373, N'~/resimler/Araba (29).jpg', N'Roadster', N'Roadster', 2015, N'Benzin', N'Düz', N'145', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 750000, 62)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2374, N'~/resimler/Araba (30).jpg', N'Impreza', N'1.6', 2016, N'Benzin', N'Otomatik', N'175', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 850000, 63)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2375, N'~/resimler/Araba (31).jpg', N'Alto', N'0.8 GL', 2017, N'Benzin', N'Düz', N'125', N'Coupe', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 950000, 64)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2376, N'~/resimler/Araba (32).jpg', N'Marina', N'1.4 TDI Comfort', 2018, N'Benzin', N'Otomatik', N'27', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 65)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2377, N'~/resimler/Araba (33).jpg', N'Model 3', N'Long Range', 2019, N'Benzin', N'Düz', N'45', N'Coupe', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 185000, 66)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2378, N'~/resimler/Araba (34).jpg', N'Şahin', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 67)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2379, N'~/resimler/Araba (35).jpg', N'Corolla', N'1.4 D-4D', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 68)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2380, N'~/resimler/Araba (36).jpg', N's', N'580', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 69)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2381, N'~/resimler/Araba (37).jpg', N'S40', N'1.9', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 70)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2382, N'~/resimler/Araba (38).jpg', N'S', N'580', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 1)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2383, N'~/resimler/Araba (39).jpg', N'Giulietta', N'1.4 TB', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 2)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2384, N'~/resimler/Araba (40).jpg', N'A', N'A2 SL', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 3)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2385, N'~/resimler/Araba (43).jpg', N'Vantage ', N'V8 Vantage S', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 4)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2386, N'~/resimler/Araba (41).jpg', N'A4', N'A4 Cabrio', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 5)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2387, N'~/resimler/Araba (44).jpg', N'Continental', N'Flying Spur', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 6)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2388, N'~/resimler/Araba (42).jpg', N'5 Serisi', N'520d', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 7)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2389, N'~/resimler/Araba (1).jpg', N'Chiron', N'8.0', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 8)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2390, N'~/resimler/Araba (1).png', N'Le Sabre', N'3.8', 2020, N'Elektrik', N'Düz', N'10', N'Sedan', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 9)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2391, N'~/resimler/Araba (2).jpg', N'Seville', N'4.6 STS', 2019, N'Elektrik', N'Otomatik', N'20', N'Sedan', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Sarı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 10)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2392, N'~/resimler/Araba (2).png', N'Alia', N'Acteco Norma', 2018, N'Elektrik', N'Düz', N'30', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Mavi', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 11)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2393, N'~/resimler/Araba (3).png', N'Cruze', N'1.6', 2017, N'Elektrik', N'Otomatik', N'40', N'Sedan', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 12)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2394, N'~/resimler/Araba (4).jpg', N'300C', N'3.0 CRD', 2016, N'Dİzel', N'Düz', N'50', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Turuncu', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 13)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2395, N'~/resimler/Araba (4).png', N'C-Elysée', N'1.6 HDi', 2015, N'Dizel', N'Otomatik', N'60', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Mavi', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 14)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2396, N'~/resimler/Araba (5).jpg', N'Sandero', N'1.5 dCi', 2014, N'Dizel', N'Düz', N'70', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Siyah', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 15)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2397, N'~/resimler/Araba (5).png', N'Nubira', N'1.6', 2013, N'Dizel', N'Otomatik', N'80', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Beyaz', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 16)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2398, N'~/resimler/Araba (6).jpg', N'Cuore', N'1.0', 2012, N'Dizel', N'Düz', N'90', N'Cabrio', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 17)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2399, N'~/resimler/Araba (6).png', N'Challenger', N'GT', 2011, N'LPG', N'Otomatik', N'100', N'Coupe', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 18)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2400, N'~/resimler/Araba (7).jpg', N'DS 3', N'1.6 e-HDi ', 2010, N'LPG', N'Düz', N'110', N'Coupe', N'126 - 150 HP', N'1.5', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 250000, 19)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2401, N'~/resimler/Araba (7).png', N'458', N'Italia', 2009, N'LPG', N'Otomatik', N'120', N'Coupe', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 350000, 20)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2402, N'~/resimler/Araba (8).jpg', N'Egea', N'1.3 Multijet', 2008, N'LPG', N'Düz', N'130', N'Coupe', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 450000, 21)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2403, N'~/resimler/Araba (8).png', N'Karms', N'2.0', 2007, N'LPG', N'Otomatik', N'140', N'Coupe', N'126 - 150 HP', N'1.6', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 550000, 22)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2404, N'~/resimler/Araba (9).jpg', N'Focus', N'1.5 TDCi', 2006, N'Benzin', N'Düz', N'150', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'İkinci El', 650000, 23)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2405, N'~/resimler/Araba (10).jpg', N'Emgrand', N'GSL Premium', 2005, N'Benzin', N'Otomatik', N'160', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 750000, 24)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2406, N'~/resimler/Araba (11).jpg', N'Civic', N'1.6i VTEC', 2004, N'Benzin', N'Düz', N'170', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 850000, 25)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2407, N'~/resimler/Araba (12).jpg', N'i20', N'1.4 MPI', 2003, N'Benzin', N'Otomatik', N'180', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 950000, 26)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2408, N'~/resimler/Araba (13).jpg', N'Samand', N'1.6 LX', 2002, N'Benzin', N'Düz', N'190', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 27)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2409, N'~/resimler/Araba (14).jpg', N'Q50', N'2.2d', 2001, N'Elektrik', N'Otomatik', N'200', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 28)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2410, N'~/resimler/Araba (15).jpg', N'Gemini', N'1.6', 2001, N'Elektrik', N'Düz', N'210', N'Sedan', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 29)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2411, N'~/resimler/Araba (16).jpg', N'X-Type', N'2.5', 2002, N'Elektrik', N'Otomatik', N'220', N'Sedan', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 30)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2412, N'~/resimler/Araba (17).jpg', N'Ceed', N'1.6', 2003, N'Elektrik', N'Düz', N'230', N'Sedan', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 31)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2413, N'~/resimler/Araba (18).jpg', N'Samara', N'1.5', 2004, N'Elektrik', N'Otomatik', N'240', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 32)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2414, N'~/resimler/Araba (19).jpg', N'Huracan', N'Evo', 2005, N'Dİzel', N'Düz', N'0', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 33)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2415, N'~/resimler/Araba (20).jpg', N'Delta', N'1.6 Mjet', 2006, N'Dİzel', N'Otomatik', N'55', N'Roadster', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 34)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2416, N'~/resimler/Araba (21).jpg', N'Es', N'Business', 2007, N'Dİzel', N'Düz', N'65', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 35)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2417, N'~/resimler/Araba (22).jpg', N'Town Car', N'4.6', 2008, N'Dİzel', N'Otomatik', N'75', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 36)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2418, N'~/resimler/Araba (23).jpg', N'Elise', N'Sport 220', 2009, N'Dİzel', N'Düz', N'85', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 1750000, 37)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2419, N'~/resimler/Araba (24).jpg', N'Mantis', N'4.6', 2010, N'LPG', N'Otomatik', N'95', N'Cabrio', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 250000, 38)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2420, N'~/resimler/Araba (25).jpg', N'Ghibli', N'3.0', 2011, N'LPG', N'Düz', N'0', N'Cabrio', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 350000, 39)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2421, N'~/resimler/Araba (26).jpg', N'RX', N'RX-8', 2012, N'LPG', N'Otomatik', N'65', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'Sıfır ', 450000, 40)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2422, N'~/resimler/Araba (27).jpg', N'GT', N'4.0', 2013, N'LPG', N'Düz', N'45', N'Cabrio', N'126 - 150 HP', N'1.8', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 550000, 41)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2423, N'~/resimler/Araba (28).jpg', N'C Serisi', N'C 180', 2014, N'LPG', N'Otomatik', N'125', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 650000, 42)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2424, N'~/resimler/Araba (29).jpg', N'Grand Marquis', N'4.6', 2015, N'Benzin', N'Düz', N'145', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 750000, 43)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2425, N'~/resimler/Araba (30).jpg', N'Grand Marquis', N'4.6', 2016, N'Benzin', N'Otomatik', N'175', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 850000, 43)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2426, N'~/resimler/Araba (31).jpg', N'Cooper', N'1.6', 2017, N'Benzin', N'Düz', N'125', N'Coupe', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 950000, 45)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2427, N'~/resimler/Araba (32).jpg', N'Lancer', N'1.6', 2018, N'Benzin', N'Otomatik', N'27', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 46)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2428, N'~/resimler/Araba (33).jpg', N'Aleko', N'2140', 2019, N'Benzin', N'Düz', N'45', N'Coupe', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 185000, 47)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2429, N'~/resimler/Araba (34).jpg', N'GT-R', N'Black Edition', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 48)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2430, N'~/resimler/Araba (35).jpg', N'Micra', N'1.2', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 49)
GO
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2431, N'~/resimler/Araba (36).jpg', N'Astra', N'1.3 CDTI', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 50)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2432, N'~/resimler/Araba (37).jpg', N'301', N'1.6 BlueHDI', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 51)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2433, N'~/resimler/Araba (38).jpg', N'Laser', N'2.0 L', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 52)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2434, N'~/resimler/Araba (39).jpg', N'Firebird', N'5.7 V8 Formula', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 53)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2435, N'~/resimler/Araba (40).jpg', N'911', N'Carrera S', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 54)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2436, N'~/resimler/Araba (43).jpg', N'415', N'GLSi', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 55)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2437, N'~/resimler/Araba (41).jpg', N'Clio', N'1.2 Grandtour', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 56)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2438, N'~/resimler/Araba (44).jpg', N'Ghost', N'6.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 57)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2439, N'~/resimler/Araba (42).jpg', N'214', N'1.6 HDi', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 58)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2440, N'~/resimler/Araba (1).jpg', N'9000', N'2.3', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 59)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2441, N'~/resimler/Araba (1).png', N'Ibiza', N'1.2 TSI', 2020, N'Elektrik', N'Düz', N'10', N'Sedan', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 60)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2442, N'~/resimler/Araba (2).jpg', N'Octavia', N'1.0 e-Tec', 2019, N'Elektrik', N'Otomatik', N'20', N'Sedan', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Sarı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 61)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2443, N'~/resimler/Araba (2).png', N'Roadster', N'Roadster', 2018, N'Elektrik', N'Düz', N'30', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Mavi', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 62)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2444, N'~/resimler/Araba (3).png', N'Impreza', N'1.6', 2017, N'Elektrik', N'Otomatik', N'40', N'Sedan', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 63)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2445, N'~/resimler/Araba (4).jpg', N'Alto', N'0.8 GL', 2016, N'Dİzel', N'Düz', N'50', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Turuncu', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 64)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2446, N'~/resimler/Araba (4).png', N'Marina', N'1.4 TDI Comfort', 2015, N'Dizel', N'Otomatik', N'60', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Mavi', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 65)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2447, N'~/resimler/Araba (5).jpg', N'Model 3', N'Long Range', 2014, N'Dizel', N'Düz', N'70', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Siyah', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 66)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2448, N'~/resimler/Araba (5).png', N'Şahin', N'1.6', 2013, N'Dizel', N'Otomatik', N'80', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Beyaz', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 67)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2449, N'~/resimler/Araba (6).jpg', N'Corolla', N'1.4 D-4D', 2012, N'Dizel', N'Düz', N'90', N'Cabrio', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 68)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2450, N'~/resimler/Araba (6).png', N's', N'580', 2011, N'LPG', N'Otomatik', N'100', N'Coupe', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 69)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2451, N'~/resimler/Araba (7).jpg', N'S40', N'1.9', 2010, N'LPG', N'Düz', N'110', N'Coupe', N'126 - 150 HP', N'1.5', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 250000, 70)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2452, N'~/resimler/Araba (7).png', N'S', N'580', 2009, N'LPG', N'Otomatik', N'120', N'Coupe', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 350000, 1)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2453, N'~/resimler/Araba (8).jpg', N'Giulietta', N'1.4 TB', 2008, N'LPG', N'Düz', N'130', N'Coupe', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 450000, 2)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2454, N'~/resimler/Araba (8).png', N'A', N'A2 SL', 2007, N'LPG', N'Otomatik', N'140', N'Coupe', N'126 - 150 HP', N'1.6', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 550000, 3)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2455, N'~/resimler/Araba (9).jpg', N'Vantage ', N'V8 Vantage S', 2006, N'Benzin', N'Düz', N'150', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'İkinci El', 650000, 4)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2456, N'~/resimler/Araba (10).jpg', N'A4', N'A4 Cabrio', 2005, N'Benzin', N'Otomatik', N'160', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 750000, 5)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2457, N'~/resimler/Araba (11).jpg', N'Continental', N'Flying Spur', 2004, N'Benzin', N'Düz', N'170', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 850000, 6)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2458, N'~/resimler/Araba (12).jpg', N'5 Serisi', N'520d', 2003, N'Benzin', N'Otomatik', N'180', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 950000, 7)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2459, N'~/resimler/Araba (13).jpg', N'Chiron', N'8.0', 2002, N'Benzin', N'Düz', N'190', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 8)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2460, N'~/resimler/Araba (14).jpg', N'Le Sabre', N'3.8', 2001, N'Elektrik', N'Otomatik', N'200', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 9)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2461, N'~/resimler/Araba (15).jpg', N'Seville', N'4.6 STS', 2001, N'Elektrik', N'Düz', N'210', N'Sedan', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 10)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2462, N'~/resimler/Araba (16).jpg', N'Alia', N'Acteco Norma', 2002, N'Elektrik', N'Otomatik', N'220', N'Sedan', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 11)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2463, N'~/resimler/Araba (17).jpg', N'Cruze', N'1.6', 2003, N'Elektrik', N'Düz', N'230', N'Sedan', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 12)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2464, N'~/resimler/Araba (18).jpg', N'300C', N'3.0 CRD', 2004, N'Elektrik', N'Otomatik', N'240', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 13)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2465, N'~/resimler/Araba (19).jpg', N'C-Elysée', N'1.6 HDi', 2005, N'Dİzel', N'Düz', N'0', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 14)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2466, N'~/resimler/Araba (20).jpg', N'Sandero', N'1.5 dCi', 2006, N'Dİzel', N'Otomatik', N'55', N'Roadster', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 15)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2467, N'~/resimler/Araba (21).jpg', N'Nubira', N'1.6', 2007, N'Dİzel', N'Düz', N'65', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 16)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2468, N'~/resimler/Araba (22).jpg', N'Cuore', N'1.0', 2008, N'Dİzel', N'Otomatik', N'75', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 17)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2469, N'~/resimler/Araba (23).jpg', N'Challenger', N'GT', 2009, N'Dİzel', N'Düz', N'85', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 1750000, 18)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2470, N'~/resimler/Araba (24).jpg', N'DS 3', N'1.6 e-HDi ', 2010, N'LPG', N'Otomatik', N'95', N'Cabrio', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 250000, 19)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2471, N'~/resimler/Araba (25).jpg', N'458', N'Italia', 2011, N'LPG', N'Düz', N'0', N'Cabrio', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 350000, 20)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2472, N'~/resimler/Araba (26).jpg', N'Egea', N'1.3 Multijet', 2012, N'LPG', N'Otomatik', N'65', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'Sıfır ', 450000, 21)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2473, N'~/resimler/Araba (27).jpg', N'Karms', N'2.0', 2013, N'LPG', N'Düz', N'45', N'Cabrio', N'126 - 150 HP', N'1.8', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 550000, 22)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2474, N'~/resimler/Araba (28).jpg', N'Focus', N'1.5 TDCi', 2014, N'LPG', N'Otomatik', N'125', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 650000, 23)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2475, N'~/resimler/Araba (29).jpg', N'Emgrand', N'GSL Premium', 2015, N'Benzin', N'Düz', N'145', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 750000, 24)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2476, N'~/resimler/Araba (30).jpg', N'Civic', N'1.6i VTEC', 2016, N'Benzin', N'Otomatik', N'175', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 850000, 25)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2477, N'~/resimler/Araba (31).jpg', N'i20', N'1.4 MPI', 2017, N'Benzin', N'Düz', N'125', N'Coupe', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 950000, 26)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2478, N'~/resimler/Araba (32).jpg', N'Samand', N'1.6 LX', 2018, N'Benzin', N'Otomatik', N'27', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 27)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2479, N'~/resimler/Araba (33).jpg', N'Q50', N'2.2d', 2019, N'Benzin', N'Düz', N'45', N'Coupe', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 185000, 28)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2480, N'~/resimler/Araba (34).jpg', N'Gemini', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 29)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2481, N'~/resimler/Araba (35).jpg', N'X-Type', N'2.5', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 30)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2482, N'~/resimler/Araba (36).jpg', N'Ceed', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 31)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2483, N'~/resimler/Araba (37).jpg', N'Samara', N'1.5', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 32)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2484, N'~/resimler/Araba (38).jpg', N'Huracan', N'Evo', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 33)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2485, N'~/resimler/Araba (39).jpg', N'Delta', N'1.6 Mjet', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 34)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2486, N'~/resimler/Araba (40).jpg', N'Es', N'Business', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 35)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2487, N'~/resimler/Araba (43).jpg', N'Town Car', N'4.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 36)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2488, N'~/resimler/Araba (41).jpg', N'Elise', N'Sport 220', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 37)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2489, N'~/resimler/Araba (44).jpg', N'Mantis', N'4.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 38)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2490, N'~/resimler/Araba (42).jpg', N'Ghibli', N'3.0', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 39)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2491, N'~/resimler/Araba (1).jpg', N'RX', N'RX-8', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 40)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2492, N'~/resimler/Araba (1).png', N'GT', N'4.0', 2020, N'Elektrik', N'Düz', N'10', N'Sedan', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 41)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2493, N'~/resimler/Araba (2).jpg', N'C Serisi', N'C 180', 2019, N'Elektrik', N'Otomatik', N'20', N'Sedan', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Sarı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 42)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2494, N'~/resimler/Araba (2).png', N'Grand Marquis', N'4.6', 2018, N'Elektrik', N'Düz', N'30', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Mavi', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 43)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2495, N'~/resimler/Araba (3).png', N'F', N'1.8', 2017, N'Elektrik', N'Otomatik', N'40', N'Sedan', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 44)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2496, N'~/resimler/Araba (4).jpg', N'Cooper', N'1.6', 2016, N'Dİzel', N'Düz', N'50', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Turuncu', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 45)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2497, N'~/resimler/Araba (4).png', N'Lancer', N'1.6', 2015, N'Dizel', N'Otomatik', N'60', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Mavi', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 46)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2498, N'~/resimler/Araba (5).jpg', N'Aleko', N'2140', 2014, N'Dizel', N'Düz', N'70', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Siyah', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 47)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2499, N'~/resimler/Araba (5).png', N'GT-R', N'Black Edition', 2013, N'Dizel', N'Otomatik', N'80', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Beyaz', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 48)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2500, N'~/resimler/Araba (6).jpg', N'Micra', N'1.2', 2012, N'Dizel', N'Düz', N'90', N'Cabrio', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 49)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2501, N'~/resimler/Araba (6).png', N'Astra', N'1.3 CDTI', 2011, N'LPG', N'Otomatik', N'100', N'Coupe', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 50)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2502, N'~/resimler/Araba (7).jpg', N'301', N'1.6 BlueHDI', 2010, N'LPG', N'Düz', N'110', N'Coupe', N'126 - 150 HP', N'1.5', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 250000, 51)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2503, N'~/resimler/Araba (7).png', N'Laser', N'2.0 L', 2009, N'LPG', N'Otomatik', N'120', N'Coupe', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 350000, 52)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2504, N'~/resimler/Araba (8).jpg', N'Firebird', N'5.7 V8 Formula', 2008, N'LPG', N'Düz', N'130', N'Coupe', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 450000, 53)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2505, N'~/resimler/Araba (8).png', N'911', N'Carrera S', 2007, N'LPG', N'Otomatik', N'140', N'Coupe', N'126 - 150 HP', N'1.6', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 550000, 54)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2506, N'~/resimler/Araba (9).jpg', N'415', N'GLSi', 2006, N'Benzin', N'Düz', N'150', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'İkinci El', 650000, 55)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2507, N'~/resimler/Araba (10).jpg', N'Clio', N'1.2 Grandtour', 2005, N'Benzin', N'Otomatik', N'160', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 750000, 56)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2508, N'~/resimler/Araba (11).jpg', N'Ghost', N'6.6', 2004, N'Benzin', N'Düz', N'170', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 850000, 57)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2509, N'~/resimler/Araba (12).jpg', N'214', N'1.6 HDi', 2003, N'Benzin', N'Otomatik', N'180', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 950000, 58)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2510, N'~/resimler/Araba (13).jpg', N'9000', N'2.3', 2002, N'Benzin', N'Düz', N'190', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 59)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2511, N'~/resimler/Araba (14).jpg', N'Ibiza', N'1.2 TSI', 2001, N'Elektrik', N'Otomatik', N'200', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 60)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2512, N'~/resimler/Araba (15).jpg', N'Octavia', N'1.0 e-Tec', 2001, N'Elektrik', N'Düz', N'210', N'Sedan', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 61)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2513, N'~/resimler/Araba (16).jpg', N'Roadster', N'Roadster', 2002, N'Elektrik', N'Otomatik', N'220', N'Sedan', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 62)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2514, N'~/resimler/Araba (17).jpg', N'Impreza', N'1.6', 2003, N'Elektrik', N'Düz', N'230', N'Sedan', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 63)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2515, N'~/resimler/Araba (18).jpg', N'Alto', N'0.8 GL', 2004, N'Elektrik', N'Otomatik', N'240', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 64)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2516, N'~/resimler/Araba (19).jpg', N'Marina', N'1.4 TDI Comfort', 2005, N'Dİzel', N'Düz', N'0', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 65)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2517, N'~/resimler/Araba (20).jpg', N'Model 3', N'Long Range', 2006, N'Dİzel', N'Otomatik', N'55', N'Roadster', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 66)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2518, N'~/resimler/Araba (21).jpg', N'Şahin', N'1.6', 2007, N'Dİzel', N'Düz', N'65', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 67)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2519, N'~/resimler/Araba (22).jpg', N'Corolla', N'1.4 D-4D', 2008, N'Dİzel', N'Otomatik', N'75', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 68)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2520, N'~/resimler/Araba (23).jpg', N's', N'580', 2009, N'Dİzel', N'Düz', N'85', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 1750000, 69)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2521, N'~/resimler/Araba (24).jpg', N'S40', N'1.9', 2010, N'LPG', N'Otomatik', N'95', N'Cabrio', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 250000, 70)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2522, N'~/resimler/Araba (25).jpg', N'S', N'580', 2011, N'LPG', N'Düz', N'0', N'Cabrio', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 350000, 1)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2523, N'~/resimler/Araba (26).jpg', N'Giulietta', N'1.4 TB', 2012, N'LPG', N'Otomatik', N'65', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'Sıfır ', 450000, 2)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2524, N'~/resimler/Araba (27).jpg', N'A', N'A2 SL', 2013, N'LPG', N'Düz', N'45', N'Cabrio', N'126 - 150 HP', N'1.8', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 550000, 3)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2525, N'~/resimler/Araba (28).jpg', N'Vantage ', N'V8 Vantage S', 2014, N'LPG', N'Otomatik', N'125', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 650000, 4)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2526, N'~/resimler/Araba (29).jpg', N'A4', N'A4 Cabrio', 2015, N'Benzin', N'Düz', N'145', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 750000, 5)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2527, N'~/resimler/Araba (30).jpg', N'Continental', N'Flying Spur', 2016, N'Benzin', N'Otomatik', N'175', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 850000, 6)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2528, N'~/resimler/Araba (31).jpg', N'5 Serisi', N'520d', 2017, N'Benzin', N'Düz', N'125', N'Coupe', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 950000, 7)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2529, N'~/resimler/Araba (32).jpg', N'Chiron', N'8.0', 2018, N'Benzin', N'Otomatik', N'27', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 8)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2530, N'~/resimler/Araba (33).jpg', N'Le Sabre', N'3.8', 2019, N'Benzin', N'Düz', N'45', N'Coupe', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 185000, 9)
GO
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2531, N'~/resimler/Araba (34).jpg', N'Seville', N'4.6 STS', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 10)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2532, N'~/resimler/Araba (35).jpg', N'Alia', N'Acteco Norma', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 11)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2533, N'~/resimler/Araba (36).jpg', N'Cruze', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 12)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2534, N'~/resimler/Araba (37).jpg', N'300C', N'3.0 CRD', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 13)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2535, N'~/resimler/Araba (38).jpg', N'C-Elysée', N'1.6 HDi', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 14)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2536, N'~/resimler/Araba (39).jpg', N'Sandero', N'1.5 dCi', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 15)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2537, N'~/resimler/Araba (40).jpg', N'Nubira', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 16)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2538, N'~/resimler/Araba (43).jpg', N'Cuore', N'1.0', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 17)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2539, N'~/resimler/Araba (41).jpg', N'Challenger', N'GT', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 18)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2540, N'~/resimler/Araba (44).jpg', N'DS 3', N'1.6 e-HDi ', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 19)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2541, N'~/resimler/Araba (42).jpg', N'458', N'Italia', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 20)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2542, N'~/resimler/Araba (1).jpg', N'Egea', N'1.3 Multijet', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 21)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2543, N'~/resimler/Araba (1).png', N'Karms', N'2.0', 2020, N'Elektrik', N'Düz', N'10', N'Sedan', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 22)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2544, N'~/resimler/Araba (2).jpg', N'Focus', N'1.5 TDCi', 2019, N'Elektrik', N'Otomatik', N'20', N'Sedan', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Sarı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 23)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2545, N'~/resimler/Araba (2).png', N'Emgrand', N'GSL Premium', 2018, N'Elektrik', N'Düz', N'30', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Mavi', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 24)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2546, N'~/resimler/Araba (3).png', N'Civic', N'1.6i VTEC', 2017, N'Elektrik', N'Otomatik', N'40', N'Sedan', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 25)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2547, N'~/resimler/Araba (4).jpg', N'i20', N'1.4 MPI', 2016, N'Dİzel', N'Düz', N'50', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Turuncu', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 26)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2548, N'~/resimler/Araba (4).png', N'Samand', N'1.6 LX', 2015, N'Dizel', N'Otomatik', N'60', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Mavi', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 27)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2549, N'~/resimler/Araba (5).jpg', N'Q50', N'2.2d', 2014, N'Dizel', N'Düz', N'70', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Siyah', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 28)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2550, N'~/resimler/Araba (5).png', N'Gemini', N'1.6', 2013, N'Dizel', N'Otomatik', N'80', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Beyaz', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 29)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2551, N'~/resimler/Araba (6).jpg', N'X-Type', N'2.5', 2012, N'Dizel', N'Düz', N'90', N'Cabrio', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 30)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2552, N'~/resimler/Araba (6).png', N'Ceed', N'1.6', 2011, N'LPG', N'Otomatik', N'100', N'Coupe', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 31)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2553, N'~/resimler/Araba (7).jpg', N'Samara', N'1.5', 2010, N'LPG', N'Düz', N'110', N'Coupe', N'126 - 150 HP', N'1.5', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 250000, 32)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2554, N'~/resimler/Araba (7).png', N'Huracan', N'Evo', 2009, N'LPG', N'Otomatik', N'120', N'Coupe', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 350000, 33)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2555, N'~/resimler/Araba (8).jpg', N'Delta', N'1.6 Mjet', 2008, N'LPG', N'Düz', N'130', N'Coupe', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 450000, 34)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2556, N'~/resimler/Araba (8).png', N'Es', N'Business', 2007, N'LPG', N'Otomatik', N'140', N'Coupe', N'126 - 150 HP', N'1.6', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 550000, 35)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2557, N'~/resimler/Araba (9).jpg', N'Town Car', N'4.6', 2006, N'Benzin', N'Düz', N'150', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'İkinci El', 650000, 36)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2558, N'~/resimler/Araba (10).jpg', N'Elise', N'Sport 220', 2005, N'Benzin', N'Otomatik', N'160', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 750000, 37)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2559, N'~/resimler/Araba (11).jpg', N'Mantis', N'4.6', 2004, N'Benzin', N'Düz', N'170', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 850000, 38)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2560, N'~/resimler/Araba (12).jpg', N'Ghibli', N'3.0', 2003, N'Benzin', N'Otomatik', N'180', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 950000, 39)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2561, N'~/resimler/Araba (13).jpg', N'RX', N'RX-8', 2002, N'Benzin', N'Düz', N'190', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 40)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2562, N'~/resimler/Araba (14).jpg', N'GT', N'4.0', 2001, N'Elektrik', N'Otomatik', N'200', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 41)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2563, N'~/resimler/Araba (15).jpg', N'C Serisi', N'C 180', 2001, N'Elektrik', N'Düz', N'210', N'Sedan', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 42)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2564, N'~/resimler/Araba (16).jpg', N'Grand Marquis', N'4.6', 2002, N'Elektrik', N'Otomatik', N'220', N'Sedan', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 43)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2565, N'~/resimler/Araba (17).jpg', N'F', N'1.8', 2003, N'Elektrik', N'Düz', N'230', N'Sedan', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 44)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2566, N'~/resimler/Araba (18).jpg', N'Cooper', N'1.6', 2004, N'Elektrik', N'Otomatik', N'240', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 45)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2567, N'~/resimler/Araba (19).jpg', N'Lancer', N'1.6', 2005, N'Dİzel', N'Düz', N'0', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 46)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2568, N'~/resimler/Araba (20).jpg', N'Aleko', N'2140', 2006, N'Dİzel', N'Otomatik', N'55', N'Roadster', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 47)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2569, N'~/resimler/Araba (21).jpg', N'GT-R', N'Black Edition', 2007, N'Dİzel', N'Düz', N'65', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 48)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2570, N'~/resimler/Araba (22).jpg', N'Micra', N'1.2', 2008, N'Dİzel', N'Otomatik', N'75', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 49)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2571, N'~/resimler/Araba (23).jpg', N'Astra', N'1.3 CDTI', 2009, N'Dİzel', N'Düz', N'85', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 1750000, 50)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2572, N'~/resimler/Araba (24).jpg', N'301', N'1.6 BlueHDI', 2010, N'LPG', N'Otomatik', N'95', N'Cabrio', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 250000, 51)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2573, N'~/resimler/Araba (25).jpg', N'Laser', N'2.0 L', 2011, N'LPG', N'Düz', N'0', N'Cabrio', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 350000, 52)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2574, N'~/resimler/Araba (26).jpg', N'Firebird', N'5.7 V8 Formula', 2012, N'LPG', N'Otomatik', N'65', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'Sıfır ', 450000, 53)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2575, N'~/resimler/Araba (27).jpg', N'911', N'Carrera S', 2013, N'LPG', N'Düz', N'45', N'Cabrio', N'126 - 150 HP', N'1.8', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 550000, 54)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2576, N'~/resimler/Araba (28).jpg', N'415', N'GLSi', 2014, N'LPG', N'Otomatik', N'125', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 650000, 55)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2577, N'~/resimler/Araba (29).jpg', N'Clio', N'1.2 Grandtour', 2015, N'Benzin', N'Düz', N'145', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 750000, 56)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2578, N'~/resimler/Araba (30).jpg', N'Ghost', N'6.6', 2016, N'Benzin', N'Otomatik', N'175', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 850000, 57)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2579, N'~/resimler/Araba (31).jpg', N'214', N'1.6 HDi', 2017, N'Benzin', N'Düz', N'125', N'Coupe', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 950000, 58)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2580, N'~/resimler/Araba (32).jpg', N'9000', N'2.3', 2018, N'Benzin', N'Otomatik', N'27', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 59)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2581, N'~/resimler/Araba (33).jpg', N'Ibiza', N'1.2 TSI', 2019, N'Benzin', N'Düz', N'45', N'Coupe', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 185000, 60)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2582, N'~/resimler/Araba (34).jpg', N'Octavia', N'1.0 e-Tec', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 61)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2583, N'~/resimler/Araba (35).jpg', N'Roadster', N'Roadster', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 62)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2584, N'~/resimler/Araba (36).jpg', N'Impreza', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 63)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2585, N'~/resimler/Araba (37).jpg', N'Alto', N'0.8 GL', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 64)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2586, N'~/resimler/Araba (38).jpg', N'Marina', N'1.4 TDI Comfort', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 65)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2587, N'~/resimler/Araba (39).jpg', N'Model 3', N'Long Range', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 66)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2588, N'~/resimler/Araba (40).jpg', N'Şahin', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 67)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2589, N'~/resimler/Araba (43).jpg', N'Corolla', N'1.4 D-4D', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 68)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2590, N'~/resimler/Araba (41).jpg', N's', N'580', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 69)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2591, N'~/resimler/Araba (44).jpg', N'S40', N'1.9', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 70)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2592, N'~/resimler/Araba (42).jpg', N'S', N'580', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 1)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2593, N'~/resimler/Araba (1).jpg', N'Giulietta', N'1.4 TB', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 2)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2594, N'~/resimler/Araba (1).png', N'A', N'A2 SL', 2020, N'Elektrik', N'Düz', N'10', N'Sedan', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 3)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2595, N'~/resimler/Araba (2).jpg', N'Vantage ', N'V8 Vantage S', 2019, N'Elektrik', N'Otomatik', N'20', N'Sedan', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Sarı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 4)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2596, N'~/resimler/Araba (2).png', N'A4', N'A4 Cabrio', 2018, N'Elektrik', N'Düz', N'30', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Mavi', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 5)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2597, N'~/resimler/Araba (3).png', N'Continental', N'Flying Spur', 2017, N'Elektrik', N'Otomatik', N'40', N'Sedan', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 6)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2598, N'~/resimler/Araba (4).jpg', N'5 Serisi', N'520d', 2016, N'Dİzel', N'Düz', N'50', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Turuncu', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 7)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2599, N'~/resimler/Araba (4).png', N'Chiron', N'8.0', 2015, N'Dizel', N'Otomatik', N'60', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Mavi', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 8)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2600, N'~/resimler/Araba (5).jpg', N'Le Sabre', N'3.8', 2014, N'Dizel', N'Düz', N'70', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Siyah', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 9)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2601, N'~/resimler/Araba (5).png', N'Seville', N'4.6 STS', 2013, N'Dizel', N'Otomatik', N'80', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Beyaz', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 10)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2602, N'~/resimler/Araba (6).jpg', N'Alia', N'Acteco Norma', 2012, N'Dizel', N'Düz', N'90', N'Cabrio', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 11)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2603, N'~/resimler/Araba (6).png', N'Cruze', N'1.6', 2011, N'LPG', N'Otomatik', N'100', N'Coupe', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 12)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2604, N'~/resimler/Araba (7).jpg', N'300C', N'3.0 CRD', 2010, N'LPG', N'Düz', N'110', N'Coupe', N'126 - 150 HP', N'1.5', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 250000, 13)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2605, N'~/resimler/Araba (7).png', N'C-Elysée', N'1.6 HDi', 2009, N'LPG', N'Otomatik', N'120', N'Coupe', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 350000, 14)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2606, N'~/resimler/Araba (8).jpg', N'Sandero', N'1.5 dCi', 2008, N'LPG', N'Düz', N'130', N'Coupe', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 450000, 15)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2607, N'~/resimler/Araba (8).png', N'Nubira', N'1.6', 2007, N'LPG', N'Otomatik', N'140', N'Coupe', N'126 - 150 HP', N'1.6', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 550000, 16)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2608, N'~/resimler/Araba (9).jpg', N'Cuore', N'1.0', 2006, N'Benzin', N'Düz', N'150', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'İkinci El', 650000, 17)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2609, N'~/resimler/Araba (10).jpg', N'Challenger', N'GT', 2005, N'Benzin', N'Otomatik', N'160', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 750000, 18)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2610, N'~/resimler/Araba (11).jpg', N'DS 3', N'1.6 e-HDi ', 2004, N'Benzin', N'Düz', N'170', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 850000, 19)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2611, N'~/resimler/Araba (12).jpg', N'458', N'Italia', 2003, N'Benzin', N'Otomatik', N'180', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 950000, 20)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2612, N'~/resimler/Araba (13).jpg', N'Egea', N'1.3 Multijet', 2002, N'Benzin', N'Düz', N'190', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 21)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2613, N'~/resimler/Araba (14).jpg', N'Karms', N'2.0', 2001, N'Elektrik', N'Otomatik', N'200', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 22)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2614, N'~/resimler/Araba (15).jpg', N'Focus', N'1.5 TDCi', 2001, N'Elektrik', N'Düz', N'210', N'Sedan', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 23)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2615, N'~/resimler/Araba (16).jpg', N'Emgrand', N'GSL Premium', 2002, N'Elektrik', N'Otomatik', N'220', N'Sedan', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 24)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2616, N'~/resimler/Araba (17).jpg', N'Civic', N'1.6i VTEC', 2003, N'Elektrik', N'Düz', N'230', N'Sedan', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 25)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2617, N'~/resimler/Araba (18).jpg', N'i20', N'1.4 MPI', 2004, N'Elektrik', N'Otomatik', N'240', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 26)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2618, N'~/resimler/Araba (19).jpg', N'Samand', N'1.6 LX', 2005, N'Dİzel', N'Düz', N'0', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 27)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2619, N'~/resimler/Araba (20).jpg', N'Q50', N'2.2d', 2006, N'Dİzel', N'Otomatik', N'55', N'Roadster', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 28)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2620, N'~/resimler/Araba (21).jpg', N'Gemini', N'1.6', 2007, N'Dİzel', N'Düz', N'65', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 29)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2621, N'~/resimler/Araba (22).jpg', N'X-Type', N'2.5', 2008, N'Dİzel', N'Otomatik', N'75', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 30)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2622, N'~/resimler/Araba (23).jpg', N'Ceed', N'1.6', 2009, N'Dİzel', N'Düz', N'85', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 1750000, 31)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2623, N'~/resimler/Araba (24).jpg', N'Samara', N'1.5', 2010, N'LPG', N'Otomatik', N'95', N'Cabrio', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 250000, 32)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2624, N'~/resimler/Araba (25).jpg', N'Huracan', N'Evo', 2011, N'LPG', N'Düz', N'0', N'Cabrio', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 350000, 33)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2625, N'~/resimler/Araba (26).jpg', N'Delta', N'1.6 Mjet', 2012, N'LPG', N'Otomatik', N'65', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'Sıfır ', 450000, 34)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2626, N'~/resimler/Araba (27).jpg', N'Es', N'Business', 2013, N'LPG', N'Düz', N'45', N'Cabrio', N'126 - 150 HP', N'1.8', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 550000, 35)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2627, N'~/resimler/Araba (28).jpg', N'Town Car', N'4.6', 2014, N'LPG', N'Otomatik', N'125', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 650000, 36)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2628, N'~/resimler/Araba (29).jpg', N'Elise', N'Sport 220', 2015, N'Benzin', N'Düz', N'145', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 750000, 37)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2629, N'~/resimler/Araba (30).jpg', N'Mantis', N'4.6', 2016, N'Benzin', N'Otomatik', N'175', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 850000, 38)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2630, N'~/resimler/Araba (31).jpg', N'Ghibli', N'3.0', 2017, N'Benzin', N'Düz', N'125', N'Coupe', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 950000, 39)
GO
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2631, N'~/resimler/Araba (32).jpg', N'RX', N'RX-8', 2018, N'Benzin', N'Otomatik', N'27', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 40)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2632, N'~/resimler/Araba (33).jpg', N'GT', N'4.0', 2019, N'Benzin', N'Düz', N'45', N'Coupe', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 185000, 41)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2633, N'~/resimler/Araba (34).jpg', N'C Serisi', N'C 180', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 42)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2634, N'~/resimler/Araba (35).jpg', N'Grand Marquis', N'4.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 43)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2635, N'~/resimler/Araba (36).jpg', N'F', N'1.8', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 44)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2636, N'~/resimler/Araba (37).jpg', N'Cooper', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 45)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2637, N'~/resimler/Araba (38).jpg', N'Lancer', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 46)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2638, N'~/resimler/Araba (39).jpg', N'Aleko', N'2140', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 47)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2639, N'~/resimler/Araba (40).jpg', N'GT-R', N'Black Edition', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 48)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2640, N'~/resimler/Araba (43).jpg', N'Micra', N'1.2', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 49)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2641, N'~/resimler/Araba (41).jpg', N'Astra', N'1.3 CDTI', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 50)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2642, N'~/resimler/Araba (44).jpg', N'301', N'1.6 BlueHDI', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 51)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2643, N'~/resimler/Araba (42).jpg', N'Laser', N'2.0 L', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 52)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2644, N'~/resimler/Araba (1).jpg', N'Firebird', N'5.7 V8 Formula', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 53)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2645, N'~/resimler/Araba (1).png', N'911', N'Carrera S', 2020, N'Elektrik', N'Düz', N'10', N'Sedan', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 54)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2646, N'~/resimler/Araba (2).jpg', N'415', N'GLSi', 2019, N'Elektrik', N'Otomatik', N'20', N'Sedan', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Sarı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 55)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2647, N'~/resimler/Araba (2).png', N'Clio', N'1.2 Grandtour', 2018, N'Elektrik', N'Düz', N'30', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Mavi', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 56)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2648, N'~/resimler/Araba (3).png', N'Ghost', N'6.6', 2017, N'Elektrik', N'Otomatik', N'40', N'Sedan', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 57)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2649, N'~/resimler/Araba (4).jpg', N'214', N'1.6 HDi', 2016, N'Dİzel', N'Düz', N'50', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Turuncu', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 58)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2650, N'~/resimler/Araba (4).png', N'9000', N'2.3', 2015, N'Dizel', N'Otomatik', N'60', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Mavi', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 59)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2651, N'~/resimler/Araba (5).jpg', N'Ibiza', N'1.2 TSI', 2014, N'Dizel', N'Düz', N'70', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Siyah', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 60)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2652, N'~/resimler/Araba (5).png', N'Octavia', N'1.0 e-Tec', 2013, N'Dizel', N'Otomatik', N'80', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Beyaz', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 61)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2653, N'~/resimler/Araba (6).jpg', N'Roadster', N'Roadster', 2012, N'Dizel', N'Düz', N'90', N'Cabrio', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 62)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2654, N'~/resimler/Araba (6).png', N'Impreza', N'1.6', 2011, N'LPG', N'Otomatik', N'100', N'Coupe', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 63)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2655, N'~/resimler/Araba (7).jpg', N'Alto', N'0.8 GL', 2010, N'LPG', N'Düz', N'110', N'Coupe', N'126 - 150 HP', N'1.5', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 250000, 64)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2656, N'~/resimler/Araba (7).png', N'Marina', N'1.4 TDI Comfort', 2009, N'LPG', N'Otomatik', N'120', N'Coupe', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 350000, 65)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2657, N'~/resimler/Araba (8).jpg', N'Model 3', N'Long Range', 2008, N'LPG', N'Düz', N'130', N'Coupe', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 450000, 66)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2658, N'~/resimler/Araba (8).png', N'Şahin', N'1.6', 2007, N'LPG', N'Otomatik', N'140', N'Coupe', N'126 - 150 HP', N'1.6', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 550000, 67)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2659, N'~/resimler/Araba (9).jpg', N'Corolla', N'1.4 D-4D', 2006, N'Benzin', N'Düz', N'150', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'İkinci El', 650000, 68)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2660, N'~/resimler/Araba (10).jpg', N's', N'580', 2005, N'Benzin', N'Otomatik', N'160', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 750000, 69)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2661, N'~/resimler/Araba (11).jpg', N'S40', N'1.9', 2004, N'Benzin', N'Düz', N'170', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 850000, 70)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2662, N'~/resimler/Araba (12).jpg', N'S', N'580', 2003, N'Benzin', N'Otomatik', N'180', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 950000, 1)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2663, N'~/resimler/Araba (13).jpg', N'Giulietta', N'1.4 TB', 2002, N'Benzin', N'Düz', N'190', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 2)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2664, N'~/resimler/Araba (14).jpg', N'A', N'A2 SL', 2001, N'Elektrik', N'Otomatik', N'200', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 3)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2665, N'~/resimler/Araba (15).jpg', N'Vantage ', N'V8 Vantage S', 2001, N'Elektrik', N'Düz', N'210', N'Sedan', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 4)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2666, N'~/resimler/Araba (16).jpg', N'A4', N'A4 Cabrio', 2002, N'Elektrik', N'Otomatik', N'220', N'Sedan', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 5)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2667, N'~/resimler/Araba (17).jpg', N'Continental', N'Flying Spur', 2003, N'Elektrik', N'Düz', N'230', N'Sedan', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 6)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2668, N'~/resimler/Araba (18).jpg', N'5 Serisi', N'520d', 2004, N'Elektrik', N'Otomatik', N'240', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 7)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2669, N'~/resimler/Araba (19).jpg', N'Chiron', N'8.0', 2005, N'Dİzel', N'Düz', N'0', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 8)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2670, N'~/resimler/Araba (20).jpg', N'Le Sabre', N'3.8', 2006, N'Dİzel', N'Otomatik', N'55', N'Roadster', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 9)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2671, N'~/resimler/Araba (21).jpg', N'Seville', N'4.6 STS', 2007, N'Dİzel', N'Düz', N'65', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 10)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2672, N'~/resimler/Araba (22).jpg', N'Alia', N'Acteco Norma', 2008, N'Dİzel', N'Otomatik', N'75', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 11)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2673, N'~/resimler/Araba (23).jpg', N'Cruze', N'1.6', 2009, N'Dİzel', N'Düz', N'85', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 1750000, 12)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2674, N'~/resimler/Araba (24).jpg', N'300C', N'3.0 CRD', 2010, N'LPG', N'Otomatik', N'95', N'Cabrio', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 250000, 13)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2675, N'~/resimler/Araba (25).jpg', N'C-Elysée', N'1.6 HDi', 2011, N'LPG', N'Düz', N'0', N'Cabrio', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 350000, 14)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2676, N'~/resimler/Araba (26).jpg', N'Sandero', N'1.5 dCi', 2012, N'LPG', N'Otomatik', N'65', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'Sıfır ', 450000, 15)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2677, N'~/resimler/Araba (27).jpg', N'Nubira', N'1.6', 2013, N'LPG', N'Düz', N'45', N'Cabrio', N'126 - 150 HP', N'1.8', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 550000, 16)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2678, N'~/resimler/Araba (28).jpg', N'Cuore', N'1.0', 2014, N'LPG', N'Otomatik', N'125', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 650000, 17)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2679, N'~/resimler/Araba (29).jpg', N'Challenger', N'GT', 2015, N'Benzin', N'Düz', N'145', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 750000, 18)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2680, N'~/resimler/Araba (30).jpg', N'DS 3', N'1.6 e-HDi ', 2016, N'Benzin', N'Otomatik', N'175', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 850000, 19)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2681, N'~/resimler/Araba (31).jpg', N'458', N'Italia', 2017, N'Benzin', N'Düz', N'125', N'Coupe', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 950000, 20)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2682, N'~/resimler/Araba (32).jpg', N'Egea', N'1.3 Multijet', 2018, N'Benzin', N'Otomatik', N'27', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 21)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2683, N'~/resimler/Araba (33).jpg', N'Karms', N'2.0', 2019, N'Benzin', N'Düz', N'45', N'Coupe', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 185000, 22)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2684, N'~/resimler/Araba (34).jpg', N'Focus', N'1.5 TDCi', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 23)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2685, N'~/resimler/Araba (35).jpg', N'Emgrand', N'GSL Premium', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 24)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2686, N'~/resimler/Araba (36).jpg', N'Civic', N'1.6i VTEC', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 25)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2687, N'~/resimler/Araba (37).jpg', N'i20', N'1.4 MPI', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 26)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2688, N'~/resimler/Araba (38).jpg', N'Samand', N'1.6 LX', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 27)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2689, N'~/resimler/Araba (39).jpg', N'Q50', N'2.2d', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 28)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2690, N'~/resimler/Araba (40).jpg', N'Gemini', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 29)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2691, N'~/resimler/Araba (43).jpg', N'X-Type', N'2.5', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 30)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2692, N'~/resimler/Araba (41).jpg', N'Ceed', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 31)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2693, N'~/resimler/Araba (44).jpg', N'Samara', N'1.5', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 32)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2694, N'~/resimler/Araba (42).jpg', N'Huracan', N'Evo', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 33)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2695, N'~/resimler/Araba (1).jpg', N'Delta', N'1.6 Mjet', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 34)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2696, N'~/resimler/Araba (1).png', N'Es', N'Business', 2020, N'Elektrik', N'Düz', N'10', N'Sedan', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 35)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2697, N'~/resimler/Araba (2).jpg', N'Town Car', N'4.6', 2019, N'Elektrik', N'Otomatik', N'20', N'Sedan', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Sarı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 36)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2698, N'~/resimler/Araba (2).png', N'Elise', N'Sport 220', 2018, N'Elektrik', N'Düz', N'30', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Mavi', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 37)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2699, N'~/resimler/Araba (3).png', N'Mantis', N'4.6', 2017, N'Elektrik', N'Otomatik', N'40', N'Sedan', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 38)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2700, N'~/resimler/Araba (4).jpg', N'Ghibli', N'3.0', 2016, N'Dİzel', N'Düz', N'50', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Turuncu', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 39)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2701, N'~/resimler/Araba (4).png', N'RX', N'RX-8', 2015, N'Dizel', N'Otomatik', N'60', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Mavi', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 40)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2702, N'~/resimler/Araba (5).jpg', N'GT', N'4.0', 2014, N'Dizel', N'Düz', N'70', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Siyah', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 41)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2703, N'~/resimler/Araba (5).png', N'C Serisi', N'C 180', 2013, N'Dizel', N'Otomatik', N'80', N'Cabrio', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Beyaz', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 42)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2704, N'~/resimler/Araba (6).jpg', N'Grand Marquis', N'4.6', 2012, N'Dizel', N'Düz', N'90', N'Cabrio', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 43)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2705, N'~/resimler/Araba (6).png', N'F', N'1.8', 2011, N'LPG', N'Otomatik', N'100', N'Coupe', N'126 - 150 HP', N'1.5', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 44)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2706, N'~/resimler/Araba (7).jpg', N'Cooper', N'1.6', 2010, N'LPG', N'Düz', N'110', N'Coupe', N'126 - 150 HP', N'1.5', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 250000, 45)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2707, N'~/resimler/Araba (7).png', N'Lancer', N'1.6', 2009, N'LPG', N'Otomatik', N'120', N'Coupe', N'126 - 150 HP', N'1.5', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 350000, 46)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2708, N'~/resimler/Araba (8).jpg', N'Aleko', N'2140', 2008, N'LPG', N'Düz', N'130', N'Coupe', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 450000, 47)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2709, N'~/resimler/Araba (8).png', N'GT-R', N'Black Edition', 2007, N'LPG', N'Otomatik', N'140', N'Coupe', N'126 - 150 HP', N'1.6', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 550000, 48)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2710, N'~/resimler/Araba (9).jpg', N'Micra', N'1.2', 2006, N'Benzin', N'Düz', N'150', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'İkinci El', 650000, 49)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2711, N'~/resimler/Araba (10).jpg', N'Astra', N'1.3 CDTI', 2005, N'Benzin', N'Otomatik', N'160', N'Station Wagon', N'126 - 150 HP', N'1.6', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 750000, 50)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2712, N'~/resimler/Araba (11).jpg', N'301', N'1.6 BlueHDI', 2004, N'Benzin', N'Düz', N'170', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 850000, 51)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2713, N'~/resimler/Araba (12).jpg', N'Laser', N'2.0 L', 2003, N'Benzin', N'Otomatik', N'180', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 950000, 52)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2714, N'~/resimler/Araba (13).jpg', N'Firebird', N'5.7 V8 Formula', 2002, N'Benzin', N'Düz', N'190', N'Station Wagon', N'126 - 150 HP', N'1.7', N'Arkadan İtiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 900000, 53)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2715, N'~/resimler/Araba (14).jpg', N'911', N'Carrera S', 2001, N'Elektrik', N'Otomatik', N'200', N'Sedan', N'126 - 150 HP', N'1.7', N'Dört Çeker', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 800000, 54)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2716, N'~/resimler/Araba (15).jpg', N'415', N'GLSi', 2001, N'Elektrik', N'Düz', N'210', N'Sedan', N'126 - 150 HP', N'1.7', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 700000, 55)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2717, N'~/resimler/Araba (16).jpg', N'Clio', N'1.2 Grandtour', 2002, N'Elektrik', N'Otomatik', N'220', N'Sedan', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 600000, 56)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2718, N'~/resimler/Araba (17).jpg', N'Ghost', N'6.6', 2003, N'Elektrik', N'Düz', N'230', N'Sedan', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 500000, 57)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2719, N'~/resimler/Araba (18).jpg', N'214', N'1.6 HDi', 2004, N'Elektrik', N'Otomatik', N'240', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 400000, 58)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2720, N'~/resimler/Araba (19).jpg', N'9000', N'2.3', 2005, N'Dİzel', N'Düz', N'0', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 300000, 59)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2721, N'~/resimler/Araba (20).jpg', N'Ibiza', N'1.2 TSI', 2006, N'Dİzel', N'Otomatik', N'55', N'Roadster', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 200000, 60)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2722, N'~/resimler/Araba (21).jpg', N'Octavia', N'1.0 e-Tec', 2007, N'Dİzel', N'Düz', N'65', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 100000, 61)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2723, N'~/resimler/Araba (22).jpg', N'Roadster', N'Roadster', 2008, N'Dİzel', N'Otomatik', N'75', N'Roadster', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 62)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2724, N'~/resimler/Araba (23).jpg', N'Impreza', N'1.6', 2009, N'Dİzel', N'Düz', N'85', N'Roadster', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 1750000, 63)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2725, N'~/resimler/Araba (24).jpg', N'Alto', N'0.8 GL', 2010, N'LPG', N'Otomatik', N'95', N'Cabrio', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 250000, 64)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2726, N'~/resimler/Araba (25).jpg', N'Marina', N'1.4 TDI Comfort', 2011, N'LPG', N'Düz', N'0', N'Cabrio', N'126 - 150 HP', N'1.8', N'Arkadan İtiş', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 350000, 65)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2727, N'~/resimler/Araba (26).jpg', N'Model 3', N'Long Range', 2012, N'LPG', N'Otomatik', N'65', N'Cabrio', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'Sıfır ', 450000, 66)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2728, N'~/resimler/Araba (27).jpg', N'Şahin', N'1.6', 2013, N'LPG', N'Düz', N'45', N'Cabrio', N'126 - 150 HP', N'1.8', N'Dört Çeker', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'İkinci El', 550000, 67)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2729, N'~/resimler/Araba (28).jpg', N'Corolla', N'1.4 D-4D', 2014, N'LPG', N'Otomatik', N'125', N'Cabrio', N'126 - 150 HP', N'1.4', N'Arkadan İtiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 650000, 68)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2730, N'~/resimler/Araba (29).jpg', N's', N'580', 2015, N'Benzin', N'Düz', N'145', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 750000, 69)
GO
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2731, N'~/resimler/Araba (30).jpg', N'S40', N'1.9', 2016, N'Benzin', N'Otomatik', N'175', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 850000, 70)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2732, N'~/resimler/Araba (31).jpg', N'S', N'580', 2017, N'Benzin', N'Düz', N'125', N'Coupe', N'126 - 150 HP', N'1.4', N'Dört Çeker', N'Sarı', N'Türkiye (TR) Plakalı', N'İkinci El', 950000, 1)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2733, N'~/resimler/Araba (32).jpg', N'Giulietta', N'1.4 TB', 2018, N'Benzin', N'Otomatik', N'27', N'Coupe', N'126 - 150 HP', N'1.8', N'Önden Çekiş', N'Kırmızı', N'Türkiye (TR) Plakalı', N'Sıfır ', 150000, 2)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2734, N'~/resimler/Araba (33).jpg', N'A', N'A2 SL', 2019, N'Benzin', N'Düz', N'45', N'Coupe', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Yeşil', N'Türkiye (TR) Plakalı', N'İkinci El', 185000, 3)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2735, N'~/resimler/Araba (34).jpg', N'Vantage ', N'V8 Vantage S', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 4)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2736, N'~/resimler/Araba (35).jpg', N'A4', N'A4 Cabrio', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 5)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2737, N'~/resimler/Araba (36).jpg', N'Continental', N'Flying Spur', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 6)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2738, N'~/resimler/Araba (37).jpg', N'5 Serisi', N'520d', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 7)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2739, N'~/resimler/Araba (38).jpg', N'Chiron', N'8.0', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 8)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2740, N'~/resimler/Araba (39).jpg', N'Le Sabre', N'3.8', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 9)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2741, N'~/resimler/Araba (40).jpg', N'Seville', N'4.6 STS', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 10)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2742, N'~/resimler/Araba (43).jpg', N'Alia', N'Acteco Norma', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 11)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2743, N'~/resimler/Araba (41).jpg', N'Cruze', N'1.6', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 12)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2744, N'~/resimler/Araba (44).jpg', N'300C', N'3.0 CRD', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 13)
INSERT [dbo].[tblAraba] ([arabaID], [resim], [seri], [model], [yil], [yakit], [vites], [km], [kasaTipi], [motorGucu], [motorHacmi], [cekis], [renk], [plaka], [durumu], [fiyat], [markaID]) VALUES (2745, N'~/resimler/Araba (42).jpg', N'C-Elysée', N'1.6 HDi', 2021, N'Elektrik', N'Otomatik', N'0', N'Sedan', N'126 - 150 HP', N'1.4', N'Önden Çekiş', N'Gümüş Gri', N'Türkiye (TR) Plakalı', N'Sıfır ', 1000000, 14)
SET IDENTITY_INSERT [dbo].[tblAraba] OFF
GO
SET IDENTITY_INSERT [dbo].[tblHakkimizda] ON 

INSERT [dbo].[tblHakkimizda] ([ID], [hakkimizda1], [image1], [hakkimizda2]) VALUES (2, N'Türkiye’de otomotiv ekosisteminin dijitalleşmesine öncülük etmek için kurulduğumuz 2017 yılından bu yana sürücülerle otomotiv ürün ve hizmet sağlayıcılarını iki taraflı pazar yerlerimizde birbiriyle buluşturuyoruz.

İstanbul’daki genel merkezimiz, Adana, Ankara, İzmir ve Trabzon’da yer alan bölge temsilciliklerimiz, Nevşehir’de yer alan çağrı merkezimizdeki yetkin kadromuz ile bir araba hikayesi yaratmak için çalışmalarımızı sürdürüyor, otomotiv sektöründe uçtan uca hizmet sunan, deneyim ve veri şirketi olma hedefiyle yolumuza devam ediyoruz.

Müşterilerimize sunduğumuz platformlarımız aşağıdaki gibidir:
Tasit.com: Mottosu ‘Keyfini Sür’ olan Tasit.com, sürücülerin hayatlarını kolaylaştırmayı amaçlar. Taşıt.com Mobilite Hizmetlerinin pazar yeridir. Kiralama tedarikçileri, oto tamir noktaları, oto kuaförler, ekspertizler ve lastik jant noktaları ile sürücüleri buluşturur.

2009 yılında kurulan 1,5 milyondan fazla üyesi olan Taşıt.com, Garaj Sepeti tarafından 2017 yılında satın alınmıştır.

Araba.com: Mottosu “Türkiye’nin Araba Pazarı” olan Araba.com sürücülerin araç ve yedek parça alım satımında yeni nesil çözümler sunan öncü pazar yeridir.

2003 yılında kurulan 2 milyondan fazla üyesi olan Araba.com, Garaj Sepeti tarafından 2018 yılında satın alınmıştır. Araba.com üzerinden bugüne kadar 4 milyondan fazla araç ve yedek parça satışa sunulmuştur.

Datamotiv ve Garaj Data: Mottosu “Türkiye’nin Araç Kataloğu” olan Datamotiv, Türkiye araç parkının en güncel kategori ve fiyat bilgilerini paylaşır. Garaj Data da kurumlara değerleme gibi çeşitli API hizmetleri ile büyük veri çözümleri sunar.', N'~/resimler/Araba (19).jpg', N'2012- Europe’s 100 hottest startups 2012 / Tasit.com: Amerikan bilim ve teknoloji dergisi “Wired” tarafından 2012 yılında Avrupa’nın en başarılı girişimlerinden biri olarak seçilmiştir.

2014 – Red Herring – Europe Top 100 / Tasit.com: 2014 yılında 18’si düzenlenen Red Herring Europe Top 100 ödüllerinde Tasit.com, Avrupa’daki en başarılı 100 girişimden biri olarak ödüle layık görülmüştür.

2017 – Startup 100 / Garaj Sepeti: Kurulduğu 2017 yılında Türkiye Startup 100 listesine 14’üncü sıradan giriş yapmıştır. 2017 sonrası kurulan şirketler sıralamasında ise birinci olmuştur.

2018 – Webrazzi En İyi SaaS Girişimi 2’cilik / Garaj Sepeti: Türkiye’nin en prestijli ödüllerinden Webrazzi Girişim Ödüllerinde SaaS kategorisinde 2’cilik kazanmıştır.')
SET IDENTITY_INSERT [dbo].[tblHakkimizda] OFF
GO
SET IDENTITY_INSERT [dbo].[tblKampanya] ON 

INSERT [dbo].[tblKampanya] ([kampanyaID], [marka], [seri], [model], [yil], [km], [renk], [fiyat], [kampanyaFiyat], [resim]) VALUES (2034, N'Anadol', N'S', N'580', 2021, 0, N'Gümüş Gri', 1000000, 900000, N'~/resimler/Araba (1).jpg')
INSERT [dbo].[tblKampanya] ([kampanyaID], [marka], [seri], [model], [yil], [km], [renk], [fiyat], [kampanyaFiyat], [resim]) VALUES (2035, N'Alfa Romeo', N'Giulietta', N'1.4 TB', 2020, 10, N'Yeşil', 900000, 850000, N'~/resimler/Araba (1).png')
INSERT [dbo].[tblKampanya] ([kampanyaID], [marka], [seri], [model], [yil], [km], [renk], [fiyat], [kampanyaFiyat], [resim]) VALUES (2036, N'Anadol', N'A', N'A2 SL', 2019, 20, N'Sarı', 800000, 700000, N'~/resimler/Araba (2).jpg')
INSERT [dbo].[tblKampanya] ([kampanyaID], [marka], [seri], [model], [yil], [km], [renk], [fiyat], [kampanyaFiyat], [resim]) VALUES (2037, N'Aston Martin', N'Vantage ', N'V8 Vantage S', 2018, 30, N'Mavi', 700000, 600000, N'~/resimler/Araba (2).png')
INSERT [dbo].[tblKampanya] ([kampanyaID], [marka], [seri], [model], [yil], [km], [renk], [fiyat], [kampanyaFiyat], [resim]) VALUES (2039, N'Bentley', N'Continental', N'Flying Spur', 2016, 50, N'Turuncu', 500000, 45000, N'~/resimler/Araba (4).jpg')
INSERT [dbo].[tblKampanya] ([kampanyaID], [marka], [seri], [model], [yil], [km], [renk], [fiyat], [kampanyaFiyat], [resim]) VALUES (2040, N'Aion', N'S', N'580', 2021, 0, N'Gümüş Gri', 1000000, 0, N'~/resimler/Araba (1).jpg')
SET IDENTITY_INSERT [dbo].[tblKampanya] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMarka] ON 

INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (1, N'Aion')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (2, N'Alfa Romeo')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (3, N'Anadol')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (4, N'Aston Martin')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (5, N'Audi')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (6, N'Bentley')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (7, N'BMW')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (8, N'Bugatti')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (9, N'Buick')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (10, N'Cadillac')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (11, N'Chery')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (12, N'Chevrolet')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (13, N'Chrysler')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (14, N'Citroën')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (15, N'Dacia')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (16, N'Daewoo')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (17, N'Daihatsu')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (18, N'Dodge')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (19, N'DS Automobiles')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (20, N'Ferrari')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (21, N'Fiat')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (22, N'Fisker')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (23, N'Ford')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (24, N'Geely')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (25, N'Honda')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (26, N'Hyundai')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (27, N'Ikco')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (28, N'Infiniti')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (29, N'Isuzu')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (30, N'Jaguar')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (31, N'Kia')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (32, N'Lada')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (33, N'Lamborghini')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (34, N'Lancia')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (35, N'Lexus')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (36, N'Lincoln')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (37, N'Lotus')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (38, N'Marcos')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (39, N'Maserati')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (40, N'Mazda')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (41, N'McLaren')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (42, N'Mercedes')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (43, N'Mercury')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (44, N'MG')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (45, N'Mini')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (46, N'Mitsubishi')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (47, N'Moskwitsch')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (48, N'Nissan')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (49, N'Oldsmobile')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (50, N'Opel')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (51, N'Peugeot')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (52, N'Plymouth')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (53, N'Pontiac')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (54, N'Porsche')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (55, N'Proton')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (56, N'Renault')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (57, N'Rolls-Royce')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (58, N'Rover')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (59, N'Saab')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (60, N'Seat')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (61, N'Skoda')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (62, N'Smart')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (63, N'Subaru')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (64, N'Suzuki')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (65, N'Tata')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (66, N'Tesla')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (67, N'Tofaş')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (68, N'Toyota')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (69, N'Volkswagen')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (70, N'Volvo')
INSERT [dbo].[tblMarka] ([markaID], [marka]) VALUES (4072, N'Fiat')
SET IDENTITY_INSERT [dbo].[tblMarka] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMesaj] ON 

INSERT [dbo].[tblMesaj] ([mesajID], [ad], [mail], [konu], [mesaj]) VALUES (21, N'Ömer', N'Yıldız', N'omeryildiz@gmail.com', N'Siteniz çok faydalı')
SET IDENTITY_INSERT [dbo].[tblMesaj] OFF
GO
SET IDENTITY_INSERT [dbo].[tblYonetici] ON 

INSERT [dbo].[tblYonetici] ([adminID], [admin], [sifre]) VALUES (1006, N'omer', N'8$29$2$3$64$66$68$70$')
INSERT [dbo].[tblYonetici] ([adminID], [admin], [sifre]) VALUES (1007, N'samet', N'64$65$66$67$68$')
INSERT [dbo].[tblYonetici] ([adminID], [admin], [sifre]) VALUES (1008, N'semih', N'64$65$66$67$68$')
INSERT [dbo].[tblYonetici] ([adminID], [admin], [sifre]) VALUES (1009, N'hüseyi', N'12$27$25$14$2$')
INSERT [dbo].[tblYonetici] ([adminID], [admin], [sifre]) VALUES (1010, N'admin', N'12$14$29$22$28$')
INSERT [dbo].[tblYonetici] ([adminID], [admin], [sifre]) VALUES (1011, N'serkan', N'64$65$66$67$68$')
SET IDENTITY_INSERT [dbo].[tblYonetici] OFF
GO
SET IDENTITY_INSERT [dbo].[tblYorumlar] ON 

INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8041, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2028)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8042, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2029)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8043, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2030)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8044, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2031)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8045, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2032)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8046, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2033)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8047, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2034)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8048, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2035)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8049, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2036)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8050, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2037)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8051, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2038)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8052, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2039)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8053, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2040)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8054, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2041)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8055, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2042)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8056, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2043)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8057, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2044)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8058, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2045)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8059, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2046)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8060, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2047)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8061, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2048)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8062, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2049)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8063, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2050)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8064, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2051)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8065, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2052)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8066, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2053)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8067, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2054)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8068, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2055)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8069, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2056)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8070, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2057)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8071, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2058)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8072, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2059)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8073, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2060)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8074, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2061)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8075, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2062)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8076, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2063)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8077, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2064)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8078, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2065)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8079, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2066)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8080, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2067)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8081, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2068)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8082, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2069)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8083, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2070)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8084, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2071)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8085, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2072)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8086, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2073)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8087, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2074)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8088, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2075)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8089, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2076)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8090, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2077)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8091, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2078)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8092, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2083)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8093, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2084)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8094, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2085)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8095, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2086)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8096, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2087)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8097, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2088)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8098, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2089)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8099, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2090)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8100, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2091)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8101, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2092)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8102, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2093)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8103, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2094)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8104, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2095)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8105, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2096)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8106, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2097)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8107, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2098)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8108, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2099)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8109, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2100)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8110, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2101)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8111, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2102)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8112, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2103)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8113, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2104)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8114, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2105)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8115, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2106)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8116, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2107)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8117, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2108)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8118, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2109)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8119, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2110)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8120, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2111)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8121, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2112)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8122, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2113)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8123, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2114)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8124, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2115)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8125, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2116)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8126, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2117)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8127, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2118)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8128, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2119)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8129, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2120)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8130, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2121)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8131, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2122)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8132, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2123)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8133, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2124)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8134, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2125)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8135, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2126)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8136, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2127)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8137, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2128)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8138, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2129)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8139, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2130)
GO
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8140, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2131)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8141, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2132)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8142, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2133)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8143, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2134)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8144, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2135)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8145, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2136)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8146, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2137)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8147, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2138)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8148, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2139)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8149, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2140)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8150, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2141)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8151, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2142)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8152, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2143)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8153, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2144)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8154, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2145)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8155, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2146)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8156, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2147)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8157, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2148)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8158, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2149)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8159, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2150)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8160, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2151)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8161, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2152)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8162, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2153)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8163, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2154)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8164, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2155)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8165, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2156)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8166, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2157)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8167, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2158)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8168, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2159)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8169, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2160)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8170, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2161)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8171, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2162)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8172, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2163)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8173, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2164)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8174, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2165)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8175, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2166)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8176, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2167)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8177, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2168)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8178, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2169)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8179, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2170)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8180, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2171)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8181, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2172)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8182, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2173)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8183, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2174)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8184, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2175)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8185, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2176)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8186, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2177)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8187, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2178)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8188, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2179)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8189, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2180)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8190, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2181)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8191, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2182)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8192, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2183)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8193, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2184)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8194, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2185)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8195, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2186)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8196, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2187)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8197, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2188)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8198, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2189)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8199, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2190)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8200, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2191)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8201, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2192)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8202, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2193)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8203, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2194)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8204, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2195)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8205, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2196)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8206, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2197)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8207, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2198)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8208, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2199)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8209, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2200)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8210, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2201)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8211, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2202)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8212, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2203)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8213, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2204)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8214, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2205)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8215, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2206)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8216, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2207)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8217, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2208)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8218, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2209)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8219, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2210)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8220, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2211)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8221, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2212)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8222, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2213)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8223, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2214)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8224, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2215)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8225, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2216)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8226, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2217)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8227, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2218)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8228, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2219)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8229, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2220)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8230, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2221)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8231, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2222)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8232, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2223)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8233, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2224)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8234, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2225)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8235, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2226)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8236, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2227)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8237, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2228)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8238, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2229)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8239, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2230)
GO
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8240, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2231)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8241, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2232)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8242, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2233)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8243, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2234)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8244, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2235)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8245, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2236)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8246, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2237)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8247, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2238)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8248, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2239)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8249, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2240)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8250, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2241)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8251, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2242)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8252, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2243)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8253, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2244)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8254, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2245)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8255, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2246)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8256, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2247)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8257, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2248)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8258, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2249)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8259, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2250)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8260, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2251)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8261, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2252)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8262, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2253)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8263, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2254)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8264, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2255)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8265, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2256)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8266, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2257)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8267, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2258)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8268, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2259)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8269, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2260)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8270, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2261)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8271, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2262)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8272, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2263)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8273, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2264)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8274, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2265)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8275, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2266)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8276, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2267)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8277, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2268)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8278, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2269)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8279, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2270)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8280, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2271)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8281, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2272)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8282, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2273)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8283, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2274)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8284, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2275)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8285, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2276)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8286, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2277)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8287, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2278)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8288, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2279)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8289, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2280)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8290, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2281)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8291, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2282)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8292, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2283)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8293, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2284)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8294, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2285)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8295, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2286)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8296, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2287)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8297, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2288)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8298, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2289)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8299, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2290)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8300, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2291)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8301, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2292)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8302, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2293)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8303, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2294)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8304, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2295)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8305, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2296)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8306, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2297)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8307, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2298)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8308, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2299)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8309, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2300)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8310, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2301)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8311, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2302)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8312, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2303)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8313, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2304)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8314, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2305)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8315, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2306)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8316, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2307)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8317, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2308)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8318, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2309)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8319, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2310)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8320, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2311)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8321, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2312)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8322, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2313)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8323, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2314)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8324, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2315)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8325, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2316)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8326, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2317)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8327, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2318)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8328, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2319)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8329, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2320)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8330, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2321)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8331, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2322)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8332, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2323)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8333, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2324)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8334, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2325)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8335, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2326)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8336, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2327)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8337, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2328)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8338, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2329)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8339, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2330)
GO
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8340, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2331)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8341, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2332)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8342, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2333)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8343, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2334)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8344, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2335)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8345, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2336)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8346, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2337)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8347, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2338)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8348, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2339)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8349, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2340)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8350, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2341)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8351, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2342)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8352, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2343)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8353, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2344)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8354, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2345)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8355, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2346)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8356, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2347)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8357, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2348)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8358, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2349)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8359, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2350)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8360, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2351)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8361, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2352)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8362, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2353)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8363, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2354)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8364, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2355)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8365, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2356)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8366, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2357)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8367, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2358)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8368, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2359)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8369, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2360)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8370, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2361)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8371, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2362)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8372, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2363)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8373, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2364)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8374, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2365)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8375, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2366)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8376, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2367)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8377, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2368)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8378, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2369)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8379, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2370)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8380, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2371)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8381, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2372)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8382, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2373)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8383, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2374)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8384, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2375)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8385, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2376)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8386, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2377)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8387, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2378)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8388, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2379)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8389, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2380)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8390, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2381)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8391, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2382)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8392, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2383)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8393, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2384)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8394, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2385)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8395, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2386)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8396, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2387)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8397, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2388)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8398, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2389)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8399, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2390)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8400, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2391)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8401, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2392)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8402, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2393)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8403, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2394)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8404, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2395)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8405, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2396)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8406, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2397)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8407, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2398)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8408, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2399)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8409, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2400)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8410, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2401)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8411, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2402)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8412, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2403)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8413, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2404)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8414, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2405)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8415, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2406)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8416, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2407)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8417, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2408)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8418, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2409)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8419, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2410)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8420, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2411)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8421, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2412)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8422, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2413)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8423, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2414)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8424, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2415)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8425, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2416)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8426, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2417)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8427, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2418)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8428, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2419)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8429, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2420)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8430, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2421)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8431, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2422)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8432, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2423)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8433, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2424)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8434, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2425)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8435, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2426)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8436, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2427)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8437, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2428)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8438, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2429)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8439, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2430)
GO
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8440, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2431)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8441, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2432)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8442, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2433)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8443, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2434)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8444, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2435)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8445, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2436)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8446, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2437)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8447, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2438)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8448, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2439)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8449, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2440)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8450, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2441)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8451, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2442)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8452, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2443)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8453, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2444)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8454, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2445)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8455, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2446)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8456, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2447)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8457, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2448)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8458, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2449)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8459, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2450)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8460, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2451)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8461, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2452)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8462, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2453)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8463, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2454)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8464, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2455)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8465, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2456)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8466, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2457)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8467, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2458)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8468, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2459)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8469, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2460)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8470, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2461)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8471, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2462)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8472, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2463)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8473, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2464)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8474, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2465)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8475, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2466)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8476, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2467)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8477, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2468)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8478, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2469)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8479, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2470)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8480, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2471)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8481, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2472)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8482, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2473)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8483, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2474)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8484, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2475)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8485, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2476)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8486, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2477)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8487, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2478)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8488, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2479)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8489, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2480)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8490, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2481)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8491, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2482)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8492, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2483)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8493, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2484)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8494, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2485)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8495, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2486)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8496, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2487)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8497, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2488)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8498, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2489)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8499, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2490)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8500, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2491)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8501, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2492)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8502, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2493)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8503, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2494)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8504, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2495)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8505, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2496)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8506, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2497)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8507, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2498)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8508, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2499)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8509, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2500)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8510, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2501)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8511, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2502)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8512, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2503)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8513, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2504)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8514, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2505)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8515, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2506)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8516, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2507)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8517, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2508)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8518, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2509)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8519, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2510)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8520, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2511)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8521, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2512)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8522, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2513)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8523, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2514)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8524, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2515)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8525, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2516)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8526, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2517)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8527, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2518)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8528, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2519)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8529, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2520)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8530, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2521)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8531, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2522)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8532, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2523)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8533, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2524)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8534, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2525)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8535, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2526)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8536, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2527)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8537, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2528)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8538, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2529)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8539, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2530)
GO
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8540, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2531)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8541, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2532)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8542, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2533)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8543, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2534)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8544, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2535)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8545, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2536)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8546, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2537)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8547, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2538)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8548, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2539)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8549, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2540)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8550, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2541)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8551, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2542)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8552, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2543)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8553, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2544)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8554, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2545)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8555, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2546)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8556, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2547)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8557, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2548)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8558, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2549)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8559, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2550)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8560, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2551)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8561, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2552)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8562, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2553)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8563, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2554)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8564, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2555)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8565, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2556)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8566, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2557)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8567, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2558)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8568, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2559)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8569, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2560)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8570, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2561)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8571, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2562)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8572, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2563)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8573, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2564)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8574, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2565)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8575, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2566)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8576, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2567)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8577, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2568)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8578, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2569)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8579, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2570)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8580, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2571)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8581, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2572)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8582, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2573)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8583, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2574)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8584, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2575)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8585, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2576)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8586, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2577)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8587, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2578)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8588, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2579)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8589, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2580)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8590, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2581)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8591, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2582)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8592, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2583)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8593, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2584)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8594, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2585)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8595, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2586)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8596, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2587)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8597, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2588)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8598, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2589)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8599, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2590)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8600, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2591)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8601, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2592)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8602, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2593)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8603, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2594)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8604, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2595)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8605, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2596)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8606, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2597)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8607, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2598)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8608, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2599)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8609, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2600)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8610, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2601)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8611, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2602)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8612, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2603)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8613, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2604)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8614, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2605)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8615, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2606)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8616, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2607)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8617, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2608)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8618, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2609)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8619, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2610)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8620, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2611)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8621, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2612)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8622, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2613)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8623, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2614)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8624, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2615)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8625, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2616)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8626, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2617)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8627, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2618)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8628, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2619)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8629, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2620)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8630, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2621)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8631, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2622)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8632, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2623)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8633, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2624)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8634, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2625)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8635, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2626)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8636, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2627)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8637, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2628)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8638, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2629)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8639, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2630)
GO
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8640, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2631)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8641, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2632)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8642, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2633)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8643, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2634)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8644, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2635)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8645, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2636)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8646, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2637)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8647, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2638)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8648, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2639)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8649, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2640)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8650, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2641)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8651, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2642)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8652, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2643)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8653, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2644)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8654, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2645)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8655, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2646)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8656, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2647)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8657, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2648)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8658, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2649)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8659, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2650)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8660, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2651)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8661, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2652)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8662, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2653)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8663, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2654)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8664, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2655)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8665, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2656)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8666, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2657)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8667, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2658)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8668, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2659)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8669, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2660)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8670, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2661)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8671, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2662)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8672, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2663)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8673, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2664)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8674, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2665)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8675, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2666)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8676, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2667)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8677, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2668)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8678, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2669)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8679, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2670)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8680, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2671)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8681, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2672)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8682, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2673)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8683, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2674)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8684, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2675)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8685, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2676)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8686, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2677)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8687, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2678)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8688, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2679)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8689, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2680)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8690, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2681)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8691, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2682)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8692, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2683)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8693, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2684)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8694, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2685)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8695, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2686)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8696, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2687)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8697, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2688)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8698, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2689)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8699, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2690)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8700, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2691)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8701, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2692)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8702, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2693)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8703, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2694)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8704, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2695)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8705, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2696)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8706, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2697)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8707, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2698)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8708, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2699)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8709, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2700)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8710, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2701)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8711, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2702)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8712, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2703)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8713, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2704)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8714, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2705)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8715, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2706)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8716, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2707)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8717, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2708)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8718, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2709)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8719, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2710)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8720, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2711)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8721, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2712)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8722, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2713)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8723, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2714)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8724, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2715)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8725, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2716)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8726, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2717)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8727, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2718)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8728, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2719)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8729, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2720)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8730, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2721)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8731, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2722)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8732, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2723)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8733, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2724)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8734, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2725)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8735, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2726)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8736, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2727)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8737, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2728)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8738, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2729)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8739, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2730)
GO
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8740, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2731)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8741, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2732)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8742, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2733)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8743, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2734)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8744, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2735)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8745, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2736)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8746, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2737)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8747, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2738)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8748, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2739)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8749, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2740)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8750, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2741)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8751, N'KAYA', N'SER', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2742)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8752, N'ELİF', N'NUR', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2743)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8753, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2744)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8754, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:30:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2745)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8755, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2028)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8756, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2029)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8757, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2030)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8758, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2031)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8759, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2032)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8760, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2033)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8761, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2034)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8762, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2035)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8763, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2036)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8764, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2037)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8765, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2038)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8766, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2039)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8767, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2040)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8768, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2041)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8769, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2042)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8770, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2043)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8771, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2044)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8772, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2045)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8773, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2046)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8774, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2047)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8775, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2048)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8776, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2049)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8777, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2050)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8778, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2051)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8779, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2052)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8780, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2053)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8781, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2054)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8782, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2055)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8783, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2056)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8784, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2057)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8785, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2058)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8786, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2059)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8787, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2060)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8788, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2061)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8789, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2062)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8790, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2063)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8791, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2064)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8792, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2065)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8793, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2066)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8794, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2067)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8795, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2068)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8796, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2069)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8797, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2070)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8798, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2071)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8799, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2072)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8800, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2073)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8801, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2074)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8802, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2075)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8803, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2076)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8804, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2077)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8805, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2078)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8806, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2083)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8807, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2084)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8808, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2085)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8809, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2086)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8810, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2087)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8811, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2088)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8812, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2089)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8813, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2090)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8814, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2091)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8815, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2092)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8816, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2093)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8817, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2094)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8818, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2095)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8819, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2096)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8820, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2097)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8821, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2098)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8822, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2099)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8823, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2100)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8824, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2101)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8825, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2102)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8826, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2103)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8827, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2104)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8828, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2105)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8829, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2106)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8830, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2107)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8831, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2108)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8832, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2109)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8833, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2110)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8834, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2111)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8835, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2112)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8836, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2113)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8837, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2114)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8838, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2115)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8839, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2116)
GO
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8840, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2117)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8841, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2118)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8842, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2119)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8843, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2120)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8844, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2121)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8845, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2122)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8846, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2123)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8847, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2124)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8848, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2125)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8849, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2126)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8850, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2127)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8851, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2128)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8852, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2129)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8853, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2130)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8854, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2131)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8855, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2132)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8856, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2133)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8857, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2134)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8858, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2135)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8859, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2136)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8860, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2137)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8861, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2138)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8862, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2139)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8863, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2140)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8864, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2141)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8865, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2142)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8866, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2143)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8867, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2144)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8868, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2145)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8869, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2146)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8870, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2147)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8871, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2148)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8872, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2149)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8873, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2150)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8874, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2151)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8875, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2152)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8876, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2153)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8877, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2154)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8878, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2155)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8879, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2156)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8880, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2157)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8881, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2158)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8882, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2159)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8883, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2160)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8884, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2161)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8885, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2162)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8886, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2163)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8887, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2164)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8888, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2165)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8889, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2166)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8890, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2167)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8891, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2168)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8892, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2169)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8893, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2170)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8894, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2171)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8895, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2172)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8896, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2173)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8897, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2174)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8898, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2175)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8899, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2176)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8900, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2177)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8901, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2178)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8902, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2179)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8903, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2180)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8904, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2181)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8905, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2182)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8906, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2183)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8907, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2184)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8908, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2185)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8909, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2186)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8910, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2187)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8911, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2188)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8912, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2189)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8913, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2190)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8914, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2191)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8915, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2192)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8916, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2193)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8917, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2194)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8918, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2195)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8919, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2196)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8920, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2197)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8921, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2198)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8922, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2199)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8923, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2200)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8924, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2201)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8925, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2202)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8926, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2203)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8927, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2204)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8928, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2205)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8929, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2206)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8930, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2207)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8931, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2208)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8932, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2209)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8933, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2210)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8934, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2211)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8935, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2212)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8936, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2213)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8937, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2214)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8938, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2215)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8939, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2216)
GO
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8940, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2217)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8941, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2218)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8942, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2219)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8943, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2220)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8944, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2221)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8945, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2222)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8946, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2223)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8947, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2224)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8948, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2225)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8949, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2226)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8950, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2227)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8951, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2228)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8952, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2229)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8953, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2230)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8954, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2231)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8955, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2232)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8956, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2233)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8957, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2234)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8958, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2235)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8959, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2236)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8960, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2237)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8961, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2238)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8962, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2239)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8963, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2240)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8964, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2241)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8965, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2242)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8966, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2243)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8967, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2244)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8968, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2245)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8969, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2246)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8970, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2247)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8971, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2248)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8972, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2249)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8973, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2250)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8974, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2251)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8975, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2252)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8976, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2253)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8977, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2254)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8978, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2255)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8979, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2256)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8980, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2257)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8981, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2258)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8982, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2259)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8983, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2260)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8984, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2261)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8985, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2262)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8986, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2263)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8987, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2264)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8988, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2265)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8989, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2266)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8990, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2267)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8991, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2268)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8992, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2269)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8993, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2270)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8994, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2271)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8995, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2272)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8996, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2273)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8997, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2274)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8998, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2275)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (8999, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2276)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9000, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2277)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9001, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2278)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9002, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2279)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9003, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2280)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9004, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2281)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9005, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2282)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9006, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2283)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9007, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2284)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9008, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2285)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9009, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2286)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9010, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2287)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9011, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2288)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9012, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2289)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9013, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2290)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9014, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2291)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9015, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2292)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9016, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2293)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9017, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2294)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9018, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2295)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9019, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2296)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9020, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2297)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9021, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2298)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9022, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2299)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9023, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2300)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9024, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2301)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9025, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2302)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9026, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2303)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9027, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2304)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9028, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2305)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9029, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2306)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9030, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2307)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9031, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2308)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9032, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2309)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9033, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2310)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9034, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2311)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9035, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2312)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9036, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2313)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9037, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2314)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9038, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2315)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9039, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2316)
GO
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9040, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2317)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9041, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2318)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9042, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2319)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9043, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2320)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9044, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2321)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9045, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2322)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9046, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2323)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9047, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2324)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9048, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2325)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9049, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2326)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9050, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2327)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9051, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2328)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9052, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2329)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9053, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2330)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9054, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2331)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9055, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2332)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9056, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2333)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9057, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2334)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9058, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2335)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9059, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2336)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9060, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2337)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9061, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2338)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9062, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2339)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9063, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2340)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9064, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2341)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9065, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2342)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9066, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2343)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9067, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2344)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9068, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2345)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9069, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2346)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9070, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2347)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9071, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2348)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9072, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2349)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9073, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2350)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9074, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2351)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9075, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2352)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9076, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2353)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9077, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2354)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9078, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2355)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9079, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2356)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9080, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2357)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9081, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2358)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9082, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2359)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9083, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2360)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9084, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2361)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9085, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2362)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9086, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2363)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9087, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2364)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9088, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2365)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9089, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2366)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9090, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2367)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9091, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2368)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9092, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2369)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9093, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2370)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9094, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2371)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9095, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2372)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9096, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2373)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9097, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2374)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9098, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2375)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9099, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2376)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9100, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2377)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9101, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2378)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9102, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2379)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9103, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2380)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9104, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2381)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9105, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2382)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9106, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2383)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9107, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2384)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9108, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2385)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9109, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2386)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9110, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2387)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9111, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2388)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9112, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2389)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9113, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2390)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9114, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2391)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9115, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2392)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9116, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2393)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9117, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2394)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9118, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2395)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9119, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2396)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9120, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2397)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9121, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2398)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9122, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2399)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9123, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2400)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9124, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2401)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9125, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2402)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9126, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2403)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9127, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2404)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9128, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2405)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9129, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2406)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9130, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2407)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9131, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2408)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9132, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2409)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9133, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2410)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9134, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2411)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9135, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2412)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9136, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2413)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9137, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2414)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9138, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2415)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9139, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2416)
GO
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9140, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2417)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9141, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2418)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9142, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2419)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9143, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2420)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9144, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2421)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9145, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2422)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9146, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2423)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9147, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2424)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9148, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2425)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9149, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2426)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9150, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2427)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9151, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2428)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9152, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2429)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9153, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2430)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9154, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2431)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9155, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2432)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9156, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2433)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9157, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2434)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9158, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2435)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9159, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2436)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9160, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2437)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9161, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2438)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9162, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2439)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9163, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2440)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9164, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2441)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9165, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2442)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9166, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2443)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9167, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2444)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9168, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2445)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9169, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2446)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9170, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2447)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9171, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2448)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9172, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2449)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9173, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2450)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9174, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2451)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9175, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2452)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9176, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2453)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9177, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2454)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9178, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2455)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9179, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2456)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9180, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2457)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9181, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2458)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9182, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2459)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9183, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2460)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9184, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2461)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9185, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2462)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9186, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2463)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9187, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2464)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9188, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2465)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9189, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2466)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9190, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2467)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9191, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2468)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9192, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2469)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9193, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2470)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9194, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2471)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9195, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2472)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9196, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2473)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9197, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2474)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9198, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2475)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9199, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2476)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9200, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2477)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9201, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2478)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9202, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2479)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9203, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2480)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9204, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2481)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9205, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2482)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9206, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2483)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9207, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2484)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9208, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2485)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9209, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2486)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9210, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2487)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9211, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2488)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9212, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2489)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9213, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2490)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9214, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2491)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9215, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2492)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9216, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2493)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9217, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2494)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9218, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2495)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9219, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2496)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9220, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2497)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9221, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2498)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9222, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2499)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9223, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2500)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9224, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2501)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9225, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2502)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9226, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2503)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9227, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2504)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9228, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2505)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9229, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2506)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9230, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2507)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9231, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2508)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9232, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2509)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9233, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2510)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9234, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2511)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9235, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2512)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9236, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2513)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9237, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2514)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9238, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2515)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9239, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2516)
GO
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9240, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2517)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9241, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2518)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9242, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2519)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9243, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2520)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9244, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2521)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9245, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2522)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9246, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2523)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9247, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2524)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9248, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2525)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9249, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2526)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9250, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2527)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9251, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2528)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9252, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2529)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9253, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2530)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9254, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2531)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9255, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2532)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9256, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2533)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9257, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2534)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9258, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2535)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9259, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2536)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9260, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2537)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9261, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2538)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9262, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2539)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9263, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2540)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9264, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2541)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9265, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2542)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9266, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2543)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9267, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2544)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9268, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2545)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9269, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2546)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9270, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2547)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9271, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2548)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9272, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2549)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9273, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2550)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9274, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2551)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9275, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2552)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9276, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2553)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9277, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2554)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9278, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2555)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9279, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2556)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9280, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2557)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9281, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2558)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9282, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2559)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9283, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2560)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9284, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2561)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9285, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2562)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9286, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2563)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9287, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2564)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9288, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2565)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9289, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2566)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9290, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2567)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9291, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2568)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9292, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2569)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9293, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2570)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9294, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2571)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9295, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2572)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9296, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2573)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9297, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2574)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9298, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2575)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9299, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2576)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9300, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2577)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9301, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2578)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9302, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2579)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9303, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2580)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9304, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2581)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9305, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2582)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9306, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2583)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9307, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2584)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9308, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2585)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9309, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2586)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9310, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2587)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9311, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2588)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9312, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2589)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9313, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2590)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9314, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2591)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9315, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2592)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9316, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2593)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9317, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2594)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9318, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2595)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9319, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2596)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9320, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2597)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9321, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2598)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9322, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2599)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9323, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2600)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9324, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2601)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9325, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2602)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9326, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2603)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9327, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2604)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9328, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2605)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9329, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2606)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9330, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2607)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9331, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2608)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9332, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2609)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9333, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2610)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9334, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2611)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9335, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2612)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9336, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2613)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9337, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2614)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9338, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2615)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9339, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2616)
GO
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9340, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2617)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9341, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2618)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9342, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2619)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9343, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2620)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9344, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2621)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9345, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2622)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9346, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2623)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9347, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2624)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9348, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2625)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9349, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2626)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9350, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2627)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9351, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2628)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9352, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2629)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9353, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2630)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9354, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2631)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9355, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2632)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9356, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2633)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9357, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2634)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9358, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2635)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9359, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2636)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9360, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2637)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9361, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2638)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9362, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2639)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9363, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2640)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9364, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2641)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9365, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2642)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9366, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2643)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9367, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2644)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9368, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2645)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9369, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2646)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9370, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2647)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9371, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2648)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9372, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2649)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9373, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2650)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9374, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2651)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9375, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2652)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9376, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2653)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9377, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2654)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9378, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2655)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9379, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2656)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9380, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2657)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9381, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2658)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9382, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2659)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9383, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2660)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9384, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2661)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9385, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2662)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9386, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2663)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9387, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2664)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9388, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2665)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9389, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2666)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9390, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2667)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9391, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2668)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9392, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2669)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9393, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2670)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9394, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2671)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9395, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2672)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9396, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2673)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9397, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2674)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9398, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2675)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9399, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2676)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9400, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2677)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9401, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2678)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9402, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2679)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9403, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2680)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9404, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2681)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9405, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2682)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9406, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2683)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9407, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2684)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9408, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2685)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9409, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2686)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9410, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2687)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9411, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2688)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9412, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2689)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9413, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2690)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9414, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2691)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9415, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2692)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9416, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2693)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9417, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2694)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9418, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2695)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9419, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2696)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9420, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2697)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9421, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2698)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9422, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2699)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9423, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2700)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9424, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2701)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9425, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2702)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9426, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2703)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9427, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2704)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9428, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2705)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9429, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2706)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9430, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2707)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9431, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2708)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9432, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2709)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9433, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2710)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9434, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2711)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9435, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2712)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9436, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2713)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9437, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2714)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9438, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2715)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9439, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2716)
GO
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9440, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2717)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9441, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2718)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9442, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2719)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9443, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2720)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9444, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2721)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9445, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2722)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9446, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2723)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9447, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2724)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9448, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2725)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9449, N'HANDE', N'ELİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2726)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9450, N'HAMZA', N'YERLİ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Wolkswagen in bırak en sorunsuz olmayı ,adil olunursa en sorunlu hatta araç bile piyasada satmasi suçtur . Yaptığı manipülasyon ve emisyon oyunlari ve yediği cezaları sanayi de en cok şikayet getiren araç oldugunu bir çok kez şahit oldum ...birde japon deyip Toyota Honda diyen arkadaşlar da ezberci malesef.', 2727)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9451, N'KAYA', N'SER', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Dünyanın en sorunsuz ve sağlam arabalarını Japonlar üretir. ( Bakınız: Toyota, Honda, Mazda, Subaru, Mitsubishi)
', 2728)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9452, N'ELİF', N'NUR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
15 sene Mitsubishi kullandım, 3 senedir Audi kullanıyorum. Mitsubishi sorunsuzluk ile tüm araba firmalarını üstüste toplar 5 ile çarpar . Daha komik olan VW grubunun sorunsuz çıkması, arabalarımı çok seviyorum 2 tane Audi aldım bindim çok güzel arabalar ama ufak veya büyük çok sorunu çıkıyor

', 2729)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9453, N'POLAT', N'ALEM', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
En sorunsuz araba, bakımı en iyi yapılan arabadır. Marka söylemek gerekirse 2000 model altı tüm alman gurubu, ya da her daim japonya da üretilen araçlardır..

', 2730)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9454, N'MEHMET', N'ASLAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bende 98 mazda çift kabin pikap bulunmaktadır çok şükür tamirci yüzü görmedi.km 315 000 de bence en sağlam motor japon araçlarında bulunmaktadır

', 2731)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9455, N'ARSLAN', N'BEY', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
bende 98 megan 1 1,6 8 valf var 11 senedir kullanıyorum artık değiştireyim diye düşünüp sıfır araçları araştırmaya başladım bütün sıfır araçların sahibinden duyduğum servisin önünde arabayı yakacağım demesi ve hiç bitmeyen kronik sorunlarını araştırdığımda kendi arabam bana beni çok ararsın gibi duruşu vardı ve hiç kronik arızası yok

', 2732)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9456, N'GİZEM', N'TAN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Sorun bana göre beni servise gitmeye zorlayan durumdur. 5 yıl içerisinde 2 auris ve 1 corolla kullandım garanti süresi içerisinde 3 ayda bir servise gittim. Cam tavandan gelen rahatsız edici tıkırtılar, ön göğüsün sürekli esnemesi ve 30 bindeki garantisi 10 gün önce bitmiş servis bakımlı corollada şanzuman arızası...
', 2733)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9457, N'SANİYE', N'KARA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
6 sene Opel insignia kullandım, son 4 seneden beri WV Passat, insignia da bir sorun yaşamadım servisler dışında, Opel servisleri gerçekten berbattır, söktüğü kapağı takmayı unutan mı dersin !!! ama insignia gerçekten iyi arabaydı cosmo 180 bg, şehir içinde biraz yakardı sadece
', 2734)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9458, N'ADEM', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Onu bunu bilmem sorunsuz kafam rahat uzun yıllar arabama binmek istiyorum diyen Japon dan şaşmasın. Japon un otomatiği, mekaniği ve motoru kolay kolay arıza vermiyor.

', 2735)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9459, N'NUSRET', N'AKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Misafir-2739, siz Renault-Nissan grubuna karşı ön yargılısınız ve ben sizinle aynı görüşte değilim. Avrupalıların Japonlara yetiştikleri konusu da doğru değil, bu konuda hç bir veri kaynak yok. Tüm sorunsuzluk indexlerinde hep Japonlar önde. Küçümsediğiniz Renault, bence en iyi markalardan biridir. Yine Nissan ABD de en sorunsuz markalardandır.
', 2736)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9460, N'SEMİH', N'UZUN', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Made in japan beyler gerisi hikaye
1998 model 2.0 otomatik Carina var
Şeytan kulağına kurşun', 2737)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9461, N'Ömer', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'10 yıldır renault kullanıyorum bakımını düzenli serviste yaptırıyorum, hiç sanayiye gitmedim hiç sorunda yaşamadım bu ankete katılanlar hangi arabayı tercih ederim şekline göre bir oy vermiş belli', 2738)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9462, N'ALİ', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bence sorunsuz arabalar 90 larda kaldı yağına suyuna bak korkma derlerdi, teknolojik ve elektronik parçalar, küçük motordan yüksek güç yani basınç arttı, hafifletme uğruna sağlamlık gitti, adamlar arazi aracı yapıyor çamurluklar plastik , bunlardan ne beklersin?

', 2739)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9463, N'ABDURRAHMAN', N'BIYIK', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'Bnde toyota avensis 98 model var kulagina kursun hic ariza yapmadi kmsi 419 binde rektefiye hic gormedi

', 2740)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9464, N'SAMET', N'SEMİREL', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Bence en sorunsuz araç Mazda dır kim ne diyorsa desin 200 binde 6 yıldır taş gibi duruyor


', 2741)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9465, N'RAMAZAN', N'TAKAR', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
 VW yi beğenmeyebilirsin anlarım, benim de beğenmediğim markalar var ve bu normal bir durum. İnternette yazdığın sorgulara bağlı olarak milyon tane sonuç çıkar, bu sonuçta normal. Yani sadece bir markaya özgü değil. Üstelik Dünya satış adetleri sıralamasında üst üste birinci olmuş bir markadan bahsediyoruz ve bana göre de Mercedes veya Audi alamayanlar gider VW alır ama VW alamazsa o zaman Opel, Mazda, Toyota filan alır.

', 2742)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9466, N'MEHMET', N'YILDIZ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
VW marka araçlarla ilgili internette sorundan bol birşey yok eski kalitesinden çok uzak ve manupülatif bir anket olduğunu düşünüyorum. BMW yok Mercedes yok Audi yok vs... hiç inandırıcı değil ve komik. 
', 2743)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9467, N'LATİF', N'KAYA', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Kia ceed 128 hp dct şanzıman araclar ıster yalniş kullan ister sakin 300bin km hic bi sekilde bozamazsiniz. Işıklarda durdunmu D de bekleme N de bekle ayak frende kalsın tekrar yeşil yanında D ye al 1 milyon km o motor da şanzımanda gonul rahatligi ile gidersin yag bakiminda filitreli orjinal yagı da kaliteli aldinmi kia dunyada bir numaradir.
', 2744)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9468, N'EREN', N'TAŞ', CAST(N'2021-12-26T01:31:00' AS SmallDateTime), 1, N'
Reno (megan), ford (focus), VW (jetta), Honda (jazz) kullandım. Prensip "arıza verdi mydi satarim". Sanayi hiç sevmiyorum. Şanziman, alt takım, dönen ve ateşleme ünitelerinin uzun ömürlü olmasnı istrm. En uzun bindigim araç honda jazz oldu (11 yıl). Ben de beklemiyodum.
', 2745)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9474, N'Kadir', N'Canlı', CAST(N'2021-12-26T02:22:00' AS SmallDateTime), 1, N'Geçerli web isteği yürütülürken işlenmemiş özel durum oluştu. Lütfen hata ve kod içinde kaynaklandığı yer hakkında daha fazla bilgi almak için yığın izlemesini gözden geçirin.', 2028)
INSERT [dbo].[tblYorumlar] ([yorumID], [yorumAd], [yorumSoyad], [yorumTarih], [onay], [icerik], [arabaID]) VALUES (9475, NULL, NULL, NULL, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblYorumlar] OFF
GO
ALTER TABLE [dbo].[tblAraba] ADD  CONSTRAINT [DF_tblAraba_plaka]  DEFAULT (N'Türkiye (TR) Plakalı') FOR [plaka]
GO
ALTER TABLE [dbo].[tblAraba] ADD  CONSTRAINT [DF_tblAraba_durumu]  DEFAULT (N'İkinci El') FOR [durumu]
GO
ALTER TABLE [dbo].[tblYorumlar] ADD  CONSTRAINT [DF_tblYorumlar_yorumTarih]  DEFAULT (getdate()) FOR [yorumTarih]
GO
ALTER TABLE [dbo].[tblYorumlar] ADD  CONSTRAINT [DF_tblYorumlar_onay]  DEFAULT ((0)) FOR [onay]
GO
ALTER TABLE [dbo].[tblAraba]  WITH CHECK ADD  CONSTRAINT [FK_tblAraba_tblMarka] FOREIGN KEY([markaID])
REFERENCES [dbo].[tblMarka] ([markaID])
GO
ALTER TABLE [dbo].[tblAraba] CHECK CONSTRAINT [FK_tblAraba_tblMarka]
GO
ALTER TABLE [dbo].[tblYorumlar]  WITH CHECK ADD  CONSTRAINT [FK_tblYorumlar_tblAraba] FOREIGN KEY([arabaID])
REFERENCES [dbo].[tblAraba] ([arabaID])
GO
ALTER TABLE [dbo].[tblYorumlar] CHECK CONSTRAINT [FK_tblYorumlar_tblAraba]
GO
USE [master]
GO
ALTER DATABASE [agtabanli] SET  READ_WRITE 
GO
