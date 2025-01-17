USE [master]
GO
/****** Object:  Database [db_PMTP]    Script Date: 11.01.2025 18:08:35 ******/
CREATE DATABASE [db_PMTP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_PMTP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\db_PMTP.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'db_PMTP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER02\MSSQL\DATA\db_PMTP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [db_PMTP] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_PMTP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [db_PMTP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_PMTP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_PMTP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_PMTP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_PMTP] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_PMTP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_PMTP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [db_PMTP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_PMTP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_PMTP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_PMTP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_PMTP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_PMTP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_PMTP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_PMTP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_PMTP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_PMTP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_PMTP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_PMTP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_PMTP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_PMTP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_PMTP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_PMTP] SET RECOVERY FULL 
GO
ALTER DATABASE [db_PMTP] SET  MULTI_USER 
GO
ALTER DATABASE [db_PMTP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [db_PMTP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_PMTP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_PMTP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [db_PMTP] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [db_PMTP] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_PMTP', N'ON'
GO
ALTER DATABASE [db_PMTP] SET QUERY_STORE = ON
GO
ALTER DATABASE [db_PMTP] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [db_PMTP]
GO
/****** Object:  Table [dbo].[tbl_Personeller]    Script Date: 11.01.2025 18:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Personeller](
	[Pers_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pers_Adi] [nvarchar](15) NULL,
	[Pers_Soyadi] [nvarchar](15) NULL,
	[Pers_DTarihi] [date] NULL,
	[Pers_Isim] [float] NULL,
	[Pers_Giris_Tarihi] [date] NULL,
	[Pers_Cikis_Tarihi] [date] NULL,
	[Pers_Adresi] [nvarchar](100) NULL,
	[Pers_Ilcesi] [nchar](15) NULL,
	[Pers_ILi] [nvarchar](15) NULL,
	[Pers_IL_Kodu] [char](2) NULL,
	[Pers_Tel] [char](11) NULL,
	[Pers_Cep] [char](11) NULL,
	[Pers_Email] [varchar](50) NULL,
	[Bolum_ID] [int] NULL,
	[Cinsiyet_ID] [int] NULL,
	[Unvan_ID] [int] NULL,
	[Pers_Maas] [money] NULL,
	[Pers_Komisyon_Yuzdesi] [float] NULL,
	[Pers_Foto] [image] NULL,
	[Pers_SGK_No] [char](11) NULL,
	[Pers_TC_No] [char](11) NULL,
	[Pers_CV] [nchar](10) NULL,
	[Pers_CV_File] [nchar](10) NULL,
	[Pers_CV_Web] [varchar](50) NULL,
	[Pers_Aktif_Mi] [nchar](10) NULL,
	[Kaydeden] [nchar](10) NULL,
	[Kayit_Tarihi] [date] NULL,
	[Son_Kaydeden] [nchar](10) NULL,
	[Son_Kayit_Tarihi] [date] NULL,
 CONSTRAINT [PK_tbl_Personeller] PRIMARY KEY CLUSTERED 
(
	[Pers_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Maaslar]    Script Date: 11.01.2025 18:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Maaslar](
	[Maas_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pers_ID] [int] NOT NULL,
	[Maas_Tarihi] [date] NULL,
	[Maas_Tutari] [decimal](18, 0) NULL,
	[Maas_Komisyonu] [decimal](18, 0) NULL,
	[Ay_ID] [int] NOT NULL,
	[Maas_Yili] [float] NULL,
	[Maas_Toplam] [decimal](18, 0) NULL,
 CONSTRAINT [PK_tbl_Maaslar_1] PRIMARY KEY CLUSTERED 
(
	[Maas_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_personelmaaslaritaoplami]    Script Date: 11.01.2025 18:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_personelmaaslaritaoplami]
AS
SELECT dbo.tbl_Personeller.Pers_Adi, dbo.tbl_Maaslar.Maas_Toplam, dbo.tbl_Maaslar.Maas_Yili
FROM     dbo.tbl_Personeller INNER JOIN
                  dbo.tbl_Maaslar ON dbo.tbl_Personeller.Pers_ID = dbo.tbl_Maaslar.Pers_ID
GO
/****** Object:  Table [dbo].[tbl_Katagoriler]    Script Date: 11.01.2025 18:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Katagoriler](
	[K_ID] [int] IDENTITY(1,1) NOT NULL,
	[Cinsiyet] [char](10) NULL,
	[Unvan] [nvarchar](50) NULL,
	[Ilce_Adi] [nvarchar](50) NULL,
	[Il_Adi] [nvarchar](50) NULL,
	[Ulke] [nvarchar](50) NULL,
	[Ay_Adi] [nchar](10) NULL,
	[Kitap_Turu] [nchar](10) NULL,
	[Yetki_Turu] [nchar](10) NULL,
 CONSTRAINT [PK_tbl_Katagoriler] PRIMARY KEY CLUSTERED 
(
	[K_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Bolumler]    Script Date: 11.01.2025 18:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Bolumler](
	[Bolum_ID] [int] IDENTITY(1,1) NOT NULL,
	[Bolum_Adi] [nvarchar](20) NOT NULL,
	[Bolum_Tel] [char](11) NOT NULL,
	[Yonetici_ID] [int] NULL,
 CONSTRAINT [PK__tbl_Bolu__7BD17FE8353C4E2A] PRIMARY KEY CLUSTERED 
(
	[Bolum_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_iletisimtablosu]    Script Date: 11.01.2025 18:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_iletisimtablosu]
AS
SELECT dbo.tbl_Personeller.Pers_ID, dbo.tbl_Personeller.Pers_Adi, dbo.tbl_Personeller.Pers_Giris_Tarihi, dbo.tbl_Personeller.Pers_Adresi, dbo.tbl_Personeller.Pers_ILi, dbo.tbl_Personeller.Pers_Ilcesi, dbo.tbl_Personeller.Pers_Tel, 
                  dbo.tbl_Personeller.Pers_Cep, dbo.tbl_Personeller.Pers_Email, dbo.tbl_Bolumler.Bolum_Adi, dbo.tbl_Katagoriler.Unvan
FROM     dbo.tbl_Personeller INNER JOIN
                  dbo.tbl_Bolumler ON dbo.tbl_Personeller.Bolum_ID = dbo.tbl_Bolumler.Bolum_ID INNER JOIN
                  dbo.tbl_Katagoriler ON dbo.tbl_Personeller.Cinsiyet_ID = dbo.tbl_Katagoriler.K_ID AND dbo.tbl_Personeller.Unvan_ID = dbo.tbl_Katagoriler.K_ID
GO
/****** Object:  View [dbo].[View_MAAAAS]    Script Date: 11.01.2025 18:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_MAAAAS]
AS
SELECT dbo.tbl_Maaslar.Pers_ID, dbo.tbl_Maaslar.Maas_Tarihi, dbo.tbl_Maaslar.Maas_Tutari, dbo.tbl_Maaslar.Maas_Komisyonu, dbo.tbl_Katagoriler.Ay_Adi, dbo.tbl_Maaslar.Ay_ID, dbo.tbl_Katagoriler.K_ID
FROM     dbo.tbl_Maaslar INNER JOIN
                  dbo.tbl_Katagoriler ON dbo.tbl_Maaslar.Maas_ID = dbo.tbl_Katagoriler.K_ID
GO
/****** Object:  Table [dbo].[tbl_Kullanicilar]    Script Date: 11.01.2025 18:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Kullanicilar](
	[Kullanici_ID] [int] NOT NULL,
	[Kullanici_Adi] [nvarchar](50) NULL,
	[Kullanici_Sifre] [char](10) NULL,
	[Yetki_ID] [int] NULL,
 CONSTRAINT [PK_tbl_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[Kullanici_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Bolumler] ON 

INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID]) VALUES (1, N'Bilişim', N'3721112222 ', 1)
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID]) VALUES (2, N'Pazarlama', N'3722223333 ', 2)
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID]) VALUES (3, N'Satış', N'3723334444 ', 3)
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID]) VALUES (4, N'Muhasebe', N'3724445555 ', 4)
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID]) VALUES (5, N'Finans', N'3725556666 ', 4)
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID]) VALUES (6, N'Yönetim', N'3726667779 ', 4)
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID]) VALUES (26, N'xyz', N'3721118889 ', 2)
SET IDENTITY_INSERT [dbo].[tbl_Bolumler] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Katagoriler] ON 

INSERT [dbo].[tbl_Katagoriler] ([K_ID], [Cinsiyet], [Unvan], [Ilce_Adi], [Il_Adi], [Ulke], [Ay_Adi], [Kitap_Turu], [Yetki_Turu]) VALUES (1, N'Erkek     ', N'VTY', N'Kavacık', N'İstanbul', N'Türkiye', N'Ocak      ', N'Bilişim   ', N'Admin     ')
INSERT [dbo].[tbl_Katagoriler] ([K_ID], [Cinsiyet], [Unvan], [Ilce_Adi], [Il_Adi], [Ulke], [Ay_Adi], [Kitap_Turu], [Yetki_Turu]) VALUES (2, N'Kadın     ', N'Müdür', N'Sincan', N'Ankara', N'ABD', N'Şubat     ', N'Kentleşme ', N'Veri      ')
INSERT [dbo].[tbl_Katagoriler] ([K_ID], [Cinsiyet], [Unvan], [Ilce_Adi], [Il_Adi], [Ulke], [Ay_Adi], [Kitap_Turu], [Yetki_Turu]) VALUES (3, NULL, N'Muhasebeci', N'Kdz. Ereğli', N'Bursa', N'UK', N'Mart      ', N'Bilim     ', N'Yönetici  ')
INSERT [dbo].[tbl_Katagoriler] ([K_ID], [Cinsiyet], [Unvan], [Ilce_Adi], [Il_Adi], [Ulke], [Ay_Adi], [Kitap_Turu], [Yetki_Turu]) VALUES (4, NULL, N'Satış', N'Alaplı', N'İzmir', N'Kanada', N'Nisan     ', N'Öğretim   ', N'Raporcu   ')
INSERT [dbo].[tbl_Katagoriler] ([K_ID], [Cinsiyet], [Unvan], [Ilce_Adi], [Il_Adi], [Ulke], [Ay_Adi], [Kitap_Turu], [Yetki_Turu]) VALUES (5, NULL, N'CIO', N'Şişli', N'Sakarya', N'Meksika', N'Mayıs     ', N'Yönetim   ', N'Mühendis  ')
INSERT [dbo].[tbl_Katagoriler] ([K_ID], [Cinsiyet], [Unvan], [Ilce_Adi], [Il_Adi], [Ulke], [Ay_Adi], [Kitap_Turu], [Yetki_Turu]) VALUES (6, NULL, N'CEO', N'Ataşehir', N'Zonguldak', N'Almanya', N'Haziran   ', N'Veritabanı', NULL)
INSERT [dbo].[tbl_Katagoriler] ([K_ID], [Cinsiyet], [Unvan], [Ilce_Adi], [Il_Adi], [Ulke], [Ay_Adi], [Kitap_Turu], [Yetki_Turu]) VALUES (7, NULL, N'Güvenlik Görevlisi', N'Beykoz', N'Kocaeli', N'Brazilya', N'Temmuz    ', NULL, NULL)
INSERT [dbo].[tbl_Katagoriler] ([K_ID], [Cinsiyet], [Unvan], [Ilce_Adi], [Il_Adi], [Ulke], [Ay_Adi], [Kitap_Turu], [Yetki_Turu]) VALUES (8, NULL, N'Stajyer', N'Nülifer', N'Bartın', N'İsveç', N'Ağustos   ', NULL, NULL)
INSERT [dbo].[tbl_Katagoriler] ([K_ID], [Cinsiyet], [Unvan], [Ilce_Adi], [Il_Adi], [Ulke], [Ay_Adi], [Kitap_Turu], [Yetki_Turu]) VALUES (9, NULL, N'Web Geliştirici', N'Balçova', N'Edirne', NULL, N'Eylül     ', NULL, NULL)
INSERT [dbo].[tbl_Katagoriler] ([K_ID], [Cinsiyet], [Unvan], [Ilce_Adi], [Il_Adi], [Ulke], [Ay_Adi], [Kitap_Turu], [Yetki_Turu]) VALUES (10, NULL, N'Sistem Analisti', N'Susurluk', N'Balıkesir', NULL, N'Ekim      ', NULL, NULL)
INSERT [dbo].[tbl_Katagoriler] ([K_ID], [Cinsiyet], [Unvan], [Ilce_Adi], [Il_Adi], [Ulke], [Ay_Adi], [Kitap_Turu], [Yetki_Turu]) VALUES (11, NULL, N'Yazılım Geliştirici', N'Kemer', N'Antalya', NULL, N'Kasım     ', NULL, NULL)
INSERT [dbo].[tbl_Katagoriler] ([K_ID], [Cinsiyet], [Unvan], [Ilce_Adi], [Il_Adi], [Ulke], [Ay_Adi], [Kitap_Turu], [Yetki_Turu]) VALUES (12, NULL, N'Marka Yöneticisi', N'Beyoğlu', N'', NULL, N'Aralık    ', NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Katagoriler] OFF
GO
INSERT [dbo].[tbl_Kullanicilar] ([Kullanici_ID], [Kullanici_Adi], [Kullanici_Sifre], [Yetki_ID]) VALUES (1, N'Mustafa', N'123       ', 1)
INSERT [dbo].[tbl_Kullanicilar] ([Kullanici_ID], [Kullanici_Adi], [Kullanici_Sifre], [Yetki_ID]) VALUES (2, N'Admin', N'3540      ', 2)
INSERT [dbo].[tbl_Kullanicilar] ([Kullanici_ID], [Kullanici_Adi], [Kullanici_Sifre], [Yetki_ID]) VALUES (3, N'Rapor', N'3540      ', 3)
INSERT [dbo].[tbl_Kullanicilar] ([Kullanici_ID], [Kullanici_Adi], [Kullanici_Sifre], [Yetki_ID]) VALUES (4, N'Ayşe', N'8520      ', 4)
GO
SET IDENTITY_INSERT [dbo].[tbl_Maaslar] ON 

INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Ay_ID], [Maas_Yili], [Maas_Toplam]) VALUES (19, 1, CAST(N'2020-07-01' AS Date), CAST(3540 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 7, 2020, CAST(3540 AS Decimal(18, 0)))
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Ay_ID], [Maas_Yili], [Maas_Toplam]) VALUES (21, 2, CAST(N'2020-08-01' AS Date), CAST(3540 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 8, 2020, CAST(3540 AS Decimal(18, 0)))
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Ay_ID], [Maas_Yili], [Maas_Toplam]) VALUES (22, 3, CAST(N'2020-09-01' AS Date), CAST(3540 AS Decimal(18, 0)), CAST(200 AS Decimal(18, 0)), 9, 2020, CAST(3740 AS Decimal(18, 0)))
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Ay_ID], [Maas_Yili], [Maas_Toplam]) VALUES (24, 4, CAST(N'2020-01-10' AS Date), CAST(3550 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 10, 2020, CAST(3550 AS Decimal(18, 0)))
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Ay_ID], [Maas_Yili], [Maas_Toplam]) VALUES (26, 5, CAST(N'2020-11-01' AS Date), CAST(3550 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 11, 2020, CAST(3550 AS Decimal(18, 0)))
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Ay_ID], [Maas_Yili], [Maas_Toplam]) VALUES (27, 1, CAST(N'2020-12-01' AS Date), CAST(3500 AS Decimal(18, 0)), CAST(100 AS Decimal(18, 0)), 12, 2020, CAST(3600 AS Decimal(18, 0)))
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Ay_ID], [Maas_Yili], [Maas_Toplam]) VALUES (28, 2, CAST(N'2021-01-01' AS Date), CAST(5000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, 2021, CAST(5000 AS Decimal(18, 0)))
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Ay_ID], [Maas_Yili], [Maas_Toplam]) VALUES (30, 3, CAST(N'2021-02-01' AS Date), CAST(4500 AS Decimal(18, 0)), CAST(150 AS Decimal(18, 0)), 2, 2021, CAST(4650 AS Decimal(18, 0)))
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Ay_ID], [Maas_Yili], [Maas_Toplam]) VALUES (31, 4, CAST(N'2020-01-10' AS Date), CAST(3550 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 10, 2020, CAST(3550 AS Decimal(18, 0)))
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Ay_ID], [Maas_Yili], [Maas_Toplam]) VALUES (32, 1, CAST(N'2021-04-01' AS Date), CAST(4850 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 4, 2021, CAST(4850 AS Decimal(18, 0)))
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Ay_ID], [Maas_Yili], [Maas_Toplam]) VALUES (33, 35, CAST(N'2022-01-03' AS Date), CAST(6000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 1, 2022, CAST(6000 AS Decimal(18, 0)))
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Ay_ID], [Maas_Yili], [Maas_Toplam]) VALUES (34, 36, CAST(N'2022-03-05' AS Date), CAST(6100 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 3, 2022, CAST(6150 AS Decimal(18, 0)))
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Ay_ID], [Maas_Yili], [Maas_Toplam]) VALUES (35, 36, CAST(N'2022-03-05' AS Date), CAST(6100 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 3, 2022, CAST(6150 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[tbl_Maaslar] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Personeller] ON 

INSERT [dbo].[tbl_Personeller] ([Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Isim], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Adresi], [Pers_Ilcesi], [Pers_ILi], [Pers_IL_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Maas], [Pers_Komisyon_Yuzdesi], [Pers_Foto], [Pers_SGK_No], [Pers_TC_No], [Pers_CV], [Pers_CV_File], [Pers_CV_Web], [Pers_Aktif_Mi], [Kaydeden], [Kayit_Tarihi], [Son_Kaydeden], [Son_Kayit_Tarihi]) VALUES (1, N'Mustafa', N'Çoruh', CAST(N'1962-01-01' AS Date), NULL, CAST(N'2022-10-16' AS Date), NULL, N'Upper St. No1', N'Kdz.Ereğli     ', N'Zonguldak', N'67', N'1233335555 ', N'5371111222 ', N'mcoruh@gmail.com', 1, 1, 1, 5540.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'true      ', NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Personeller] ([Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Isim], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Adresi], [Pers_Ilcesi], [Pers_ILi], [Pers_IL_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Maas], [Pers_Komisyon_Yuzdesi], [Pers_Foto], [Pers_SGK_No], [Pers_TC_No], [Pers_CV], [Pers_CV_File], [Pers_CV_Web], [Pers_Aktif_Mi], [Kaydeden], [Kayit_Tarihi], [Son_Kaydeden], [Son_Kayit_Tarihi]) VALUES (2, N'Buğra', N'Diniz', CAST(N'1998-01-01' AS Date), NULL, CAST(N'2022-10-16' AS Date), NULL, N'Down St. No1', N'Kavacık        ', N'İstanbul', N'34', N'1234446666 ', N'5353333444 ', N'bugradi@gmail.com', 2, 1, 2, 3540.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'true      ', NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Personeller] ([Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Isim], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Adresi], [Pers_Ilcesi], [Pers_ILi], [Pers_IL_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Maas], [Pers_Komisyon_Yuzdesi], [Pers_Foto], [Pers_SGK_No], [Pers_TC_No], [Pers_CV], [Pers_CV_File], [Pers_CV_Web], [Pers_Aktif_Mi], [Kaydeden], [Kayit_Tarihi], [Son_Kaydeden], [Son_Kayit_Tarihi]) VALUES (3, N'Burak', N'Oguz', CAST(N'1993-01-01' AS Date), NULL, CAST(N'2022-10-16' AS Date), NULL, N'South St. No.1', N'Sincan         ', N'Ankara', N'06', N'1236668888 ', N'5371234567 ', N'burakoguz@gmail.com', 3, 1, 3, 3540.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'true      ', NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Personeller] ([Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Isim], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Adresi], [Pers_Ilcesi], [Pers_ILi], [Pers_IL_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Maas], [Pers_Komisyon_Yuzdesi], [Pers_Foto], [Pers_SGK_No], [Pers_TC_No], [Pers_CV], [Pers_CV_File], [Pers_CV_Web], [Pers_Aktif_Mi], [Kaydeden], [Kayit_Tarihi], [Son_Kaydeden], [Son_Kayit_Tarihi]) VALUES (4, N'Ayse', N'Meliha', CAST(N'1968-01-01' AS Date), NULL, CAST(N'2022-10-16' AS Date), NULL, N'North St. No1', N'Nilüfer        ', N'Bursa', N'16', N'1234567811 ', N'5376123454 ', N'okanp@gmail.com', 4, 2, 4, 3540.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'true      ', NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Personeller] ([Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Isim], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Adresi], [Pers_Ilcesi], [Pers_ILi], [Pers_IL_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Maas], [Pers_Komisyon_Yuzdesi], [Pers_Foto], [Pers_SGK_No], [Pers_TC_No], [Pers_CV], [Pers_CV_File], [Pers_CV_Web], [Pers_Aktif_Mi], [Kaydeden], [Kayit_Tarihi], [Son_Kaydeden], [Son_Kayit_Tarihi]) VALUES (5, N'Fatma', N'Dingin', CAST(N'1987-01-02' AS Date), NULL, CAST(N'2023-10-08' AS Date), NULL, N'Lost St. No1', N'Kadıköy        ', N'İstanbul', N'34', N'1234567811 ', N'5378529654 ', N'aysemeli@gmail.com', 26, 2, 5, 35400000.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'true      ', NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Personeller] ([Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Isim], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Adresi], [Pers_Ilcesi], [Pers_ILi], [Pers_IL_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Maas], [Pers_Komisyon_Yuzdesi], [Pers_Foto], [Pers_SGK_No], [Pers_TC_No], [Pers_CV], [Pers_CV_File], [Pers_CV_Web], [Pers_Aktif_Mi], [Kaydeden], [Kayit_Tarihi], [Son_Kaydeden], [Son_Kayit_Tarihi]) VALUES (35, N'Cem', N'Acar', CAST(N'2002-03-26' AS Date), NULL, CAST(N'2024-01-01' AS Date), NULL, N'beyazit sokak no 12', N'Susurluk       ', N'Balıkesir', NULL, N'1233567819 ', N'5422661075 ', N'cemacar15@gmail.com', 6, 1, 9, 30000.0000, 5, NULL, N'161242     ', N'17851592356', NULL, NULL, NULL, N'True      ', NULL, CAST(N'2025-01-01' AS Date), NULL, CAST(N'2025-01-01' AS Date))
INSERT [dbo].[tbl_Personeller] ([Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Isim], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Adresi], [Pers_Ilcesi], [Pers_ILi], [Pers_IL_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Maas], [Pers_Komisyon_Yuzdesi], [Pers_Foto], [Pers_SGK_No], [Pers_TC_No], [Pers_CV], [Pers_CV_File], [Pers_CV_Web], [Pers_Aktif_Mi], [Kaydeden], [Kayit_Tarihi], [Son_Kaydeden], [Son_Kayit_Tarihi]) VALUES (36, N'Batuhan ', N'Bilir', CAST(N'2002-02-09' AS Date), NULL, CAST(N'2022-01-01' AS Date), NULL, N'yesil sokak no 10', N'Kemer          ', N'Antalya', NULL, N'1234567816 ', N'05079403276', N'batba@gmail.com', 1, 1, 4, 60000000.0000, NULL, NULL, N'131272     ', NULL, NULL, NULL, NULL, N'True      ', NULL, NULL, NULL, CAST(N'2022-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[tbl_Personeller] OFF
GO
ALTER TABLE [dbo].[tbl_Kullanicilar]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Kullanicilar_tbl_Katagoriler] FOREIGN KEY([Yetki_ID])
REFERENCES [dbo].[tbl_Katagoriler] ([K_ID])
GO
ALTER TABLE [dbo].[tbl_Kullanicilar] CHECK CONSTRAINT [FK_tbl_Kullanicilar_tbl_Katagoriler]
GO
ALTER TABLE [dbo].[tbl_Maaslar]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Maaslar_tbl_Personeller] FOREIGN KEY([Pers_ID])
REFERENCES [dbo].[tbl_Personeller] ([Pers_ID])
GO
ALTER TABLE [dbo].[tbl_Maaslar] CHECK CONSTRAINT [FK_tbl_Maaslar_tbl_Personeller]
GO
ALTER TABLE [dbo].[tbl_Personeller]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Personeller_tbl_Bolumler] FOREIGN KEY([Bolum_ID])
REFERENCES [dbo].[tbl_Bolumler] ([Bolum_ID])
GO
ALTER TABLE [dbo].[tbl_Personeller] CHECK CONSTRAINT [FK_tbl_Personeller_tbl_Bolumler]
GO
ALTER TABLE [dbo].[tbl_Personeller]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Personeller_tbl_Katagoriler] FOREIGN KEY([Cinsiyet_ID])
REFERENCES [dbo].[tbl_Katagoriler] ([K_ID])
GO
ALTER TABLE [dbo].[tbl_Personeller] CHECK CONSTRAINT [FK_tbl_Personeller_tbl_Katagoriler]
GO
ALTER TABLE [dbo].[tbl_Personeller]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Personeller_tbl_Katagoriler1] FOREIGN KEY([Unvan_ID])
REFERENCES [dbo].[tbl_Katagoriler] ([K_ID])
GO
ALTER TABLE [dbo].[tbl_Personeller] CHECK CONSTRAINT [FK_tbl_Personeller_tbl_Katagoriler1]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -120
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Personeller"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 290
               Right = 297
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "tbl_Bolumler"
            Begin Extent = 
               Top = 7
               Left = 345
               Bottom = 170
               Right = 539
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Katagoriler"
            Begin Extent = 
               Top = 7
               Left = 587
               Bottom = 170
               Right = 781
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_iletisimtablosu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_iletisimtablosu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Maaslar"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 268
               Right = 257
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Katagoriler"
            Begin Extent = 
               Top = 7
               Left = 305
               Bottom = 170
               Right = 499
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MAAAAS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MAAAAS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tbl_Personeller"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 170
               Right = 297
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_Maaslar"
            Begin Extent = 
               Top = 7
               Left = 345
               Bottom = 170
               Right = 554
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_personelmaaslaritaoplami'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_personelmaaslaritaoplami'
GO
USE [master]
GO
ALTER DATABASE [db_PMTP] SET  READ_WRITE 
GO
