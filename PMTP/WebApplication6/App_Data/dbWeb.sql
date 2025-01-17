USE master
GO

/****** Veritabanýný Oluþturma ******/
CREATE DATABASE db_OkanPomenOriginal
ON PRIMARY 
(NAME = 'db_OkanPomenOriginal', FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\db_OkanPomenOriginal.mdf', SIZE = 5120KB, FILEGROWTH = 1024KB)
 LOG ON 
(NAME = 'db_OkanPomenOriginal_log', FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\db_OkanPomenOriginal_log.ldf', SIZE = 1024KB , FILEGROWTH = 1024KB)
GO

ALTER DATABASE db_OkanPomenOriginal SET COMPATIBILITY_LEVEL = 150
GO

USE db_OkanPomenOriginal
GO

/****** Object:  Table [dbo].[tbl_Bolumler]    Script Date: 31.05.2024 15:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Bolumler](
	[Bolum_ID] [int] IDENTITY(1,1) NOT NULL,
	[Bolum_Adi] [nvarchar](10) NOT NULL,
	[Bolum_Tel] [char](10) NOT NULL,
	[Yonetici_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Bolum_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Katagoriler]    Script Date: 31.05.2024 15:08:29 ******/
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
/****** Object:  Table [dbo].[tbl_Kullanicilar]    Script Date: 31.05.2024 15:08:29 ******/
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
/****** Object:  Table [dbo].[tbl_Maaslar]    Script Date: 31.05.2024 15:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Maaslar](
	[Maas_ID] [int] NOT NULL,
	[Pers_ID] [int] IDENTITY(1,1) NOT NULL,
	[Maas_Tarihi] [smalldatetime] NULL,
	[Maas_Tutari] [decimal](18, 0) NULL,
	[Maas_Komisyonu] [decimal](18, 0) NULL,
	[Maas_Toplam (Hesaplama)] [float] NULL,
	[Ay_ID] [int] NOT NULL,
	[Maas_Yili (Hesaplama)] [float] NULL,
 CONSTRAINT [PK_tbl_Maaslar_1] PRIMARY KEY CLUSTERED 
(
	[Maas_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Personeller]    Script Date: 31.05.2024 15:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Personeller](
	[Pers_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pers_Adi] [nvarchar](10) NULL,
	[Pers_Soyadi] [nvarchar](15) NULL,
	[Pers_DTarihi] [date] NULL,
	[Pers_Isim(Hesaplama)] [float] NULL,
	[Pers_Giris_Tarihi] [date] NULL,
	[Pers_Cikis_Tarihi] [date] NULL,
	[Pers_Adresi] [nvarchar](100) NULL,
	[Pers_Ilcesi] [nchar](10) NULL,
	[Pers_ILi] [nvarchar](15) NULL,
	[Pers_IL_Kodu] [char](2) NULL,
	[Pers_Tel] [char](10) NULL,
	[Pers_Cep] [char](10) NULL,
	[Pers_Email] [varchar](50) NULL,
	[Bolum_ID] [int] NULL,
	[Cinsiyet_ID] [int] NULL,
	[Unvan_ID] [int] NULL,
	[Pers_Maas] [money] NULL,
	[Pers_Komisyon_Yuzdesi] [float] NULL,
	[Pers_Foto] [image] NULL,
	[Pers_SGK_No] [char](10) NULL,
	[Pers_TC_No] [char](10) NULL,
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

SET IDENTITY_INSERT [dbo].[tbl_Bolumler] ON 
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID]) VALUES (1, N'Biliþim', N'3721112222', 1)
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID]) VALUES (2, N'Pazarlama', N'3722223333', 2)
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID]) VALUES (3, N'Satýþ', N'3723334444', 3)
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID]) VALUES (4, N'Muhasebe', N'3724445555', 4)
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID]) VALUES (5, N'Finans', N'3725556666', 4)
INSERT [dbo].[tbl_Bolumler] ([Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID]) VALUES (6, N'Yönetim', N'3726667777', 4)
SET IDENTITY_INSERT [dbo].[tbl_Bolumler] OFF
GO

SET IDENTITY_INSERT [dbo].[tbl_Katagoriler] ON 
INSERT INTO [dbo].[tbl_Katagoriler]([K_ID],[Cinsiyet],[Unvan],[Ilce_Adi],[Il_Adi],[Ulke],[Ay_Adi],[Kitap_Turu],[Yetki_Turu])
     VALUES
           (1, N'Erkek', N'VTY',       N'Kavacýk',     N'Ýstanbul',   N'Türkiye',  N'Ocak',   N'Biliþim',   N'Admin'),
		   (2, N'Kadýn', N'Müdür',    N'Sincan',      N'Ankara',     N'ABD',      N'Þubat',   N'Kentleþme',  N'Veri'),
		   (3, null,     N'Muhasebeci', N'Kdz. Ereðli', N'Bursa',      N'UK',       N'Mart',  N'Bilim',   N'Yönetici'),
		   (4, null,     N'Satýþ',      N'Alaplý',      N'Zonguldak',  N'Kanada',   N'Nisan',  N'Öðretim',  N'Raporcu'),
		   (5, null,     N'CIO',        N'Þiþli',       N'Sakarya',    N'Meksika',  N'Mayýs',  N'Yönetim',  N'Mühendis'),
		   (6, null,     N'CEO',        N'Ataþehir',    N'Ýzmir',      N'Almanya',  N'Haziran', N'Veritabaný', null),
		   (7, null, null,            N'Beykoz',      N'Kocaeli',    N'Brazilya', N'Temmuz',    null, null),
		   (8, null, null,            N'Nülifer',     N'Bartýn',     N'Ýsveç',    N'Aðustos',   null, null),
		   (9, null, null, null,                      null,          null,        N'Eylül',     null, null),
		   (10, null, null, null, null,                              null,        N'Ekim',      null, null),
		   (11, null, null, null, null,                              null,        N'Kasým',     null, null),
		   (12, null, null, null, null,                              null,        N'Aralýk',    null, null);

SET IDENTITY_INSERT [dbo].[tbl_Katagoriler] OFF
GO

INSERT [dbo].[tbl_Kullanicilar] ([Kullanici_ID], [Kullanici_Adi], [Kullanici_Sifre], [Yetki_ID]) VALUES (1, N'Mustafa', N'123', 1)
INSERT [dbo].[tbl_Kullanicilar] ([Kullanici_ID], [Kullanici_Adi], [Kullanici_Sifre], [Yetki_ID]) VALUES (2, N'Admin', N'3540', 2)
INSERT [dbo].[tbl_Kullanicilar] ([Kullanici_ID], [Kullanici_Adi], [Kullanici_Sifre], [Yetki_ID]) VALUES (3, N'Rapor', N'3540', 3)
INSERT [dbo].[tbl_Kullanicilar] ([Kullanici_ID], [Kullanici_Adi], [Kullanici_Sifre], [Yetki_ID]) VALUES (4, N'Ayþe', N'8520', 4)
GO

SET IDENTITY_INSERT [dbo].[tbl_Personeller] ON 
INSERT [dbo].[tbl_Personeller] ([Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Isim(Hesaplama)], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Adresi], [Pers_Ilcesi], [Pers_ILi], [Pers_IL_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Maas], [Pers_Komisyon_Yuzdesi], [Pers_Foto], [Pers_SGK_No], [Pers_TC_No], [Pers_CV], [Pers_CV_File], [Pers_CV_Web], [Pers_Aktif_Mi], [Kaydeden], [Kayit_Tarihi], [Son_Kaydeden], [Son_Kayit_Tarihi]) VALUES (1, N'Mustafa', N'Çoruh', CAST(N'1962-01-01' AS Date), NULL, CAST(N'2022-10-16' AS Date), NULL, N'Upper St. No1', N'Kdz.Ereðli', N'Zonguldak', N'67', N'1233335555', N'5371111222', N'mcoruh@gmail.com', 1, 1, 1, 3540.0000, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'true', NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Personeller] ([Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Isim(Hesaplama)], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Adresi], [Pers_Ilcesi], [Pers_ILi], [Pers_IL_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Maas], [Pers_Komisyon_Yuzdesi], [Pers_Foto], [Pers_SGK_No], [Pers_TC_No], [Pers_CV], [Pers_CV_File], [Pers_CV_Web], [Pers_Aktif_Mi], [Kaydeden], [Kayit_Tarihi], [Son_Kaydeden], [Son_Kayit_Tarihi]) VALUES (2, N'Buðra', N'Diniz', CAST(N'1998-01-01' AS Date), NULL, CAST(N'2022-10-16' AS Date), NULL, N'Down St. No1', N'Kavacýk', N'Ýstanbul', N'34', N'1234446666', N'5353333444', N'bugradi@gmail.com', 3, 1, 2, 3540.0000, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'true', NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Personeller] ([Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Isim(Hesaplama)], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Adresi], [Pers_Ilcesi], [Pers_ILi], [Pers_IL_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Maas], [Pers_Komisyon_Yuzdesi], [Pers_Foto], [Pers_SGK_No], [Pers_TC_No], [Pers_CV], [Pers_CV_File], [Pers_CV_Web], [Pers_Aktif_Mi], [Kaydeden], [Kayit_Tarihi], [Son_Kaydeden], [Son_Kayit_Tarihi]) VALUES (3, N'Burak', N'Oguz', CAST(N'1993-01-01' AS Date), NULL, CAST(N'2022-10-16' AS Date), NULL, N'South St. No.1', N'Sincan', N'Ankara', N'06', N'1236668888', N'5371234567', N'burakoguz@gmail.com', 2, 1, 3, 3540.0000, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'true', NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Personeller] ([Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Isim(Hesaplama)], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Adresi], [Pers_Ilcesi], [Pers_ILi], [Pers_IL_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Maas], [Pers_Komisyon_Yuzdesi], [Pers_Foto], [Pers_SGK_No], [Pers_TC_No], [Pers_CV], [Pers_CV_File], [Pers_CV_Web], [Pers_Aktif_Mi], [Kaydeden], [Kayit_Tarihi], [Son_Kaydeden], [Son_Kayit_Tarihi]) VALUES (4, N'Ayse', N'Meliha', CAST(N'1968-01-01' AS Date), NULL, CAST(N'2022-10-16' AS Date), NULL, N'North St. No1', N'Nilüfer', N'Bursa', N'16', N'1239990000', N'5376123454', N'aysemeli@gmail.com', 4, 2, 4, 3540.0000, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'true', NULL, NULL, NULL, NULL)
INSERT [dbo].[tbl_Personeller] ([Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Isim(Hesaplama)], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Adresi], [Pers_Ilcesi], [Pers_ILi], [Pers_IL_Kodu], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Cinsiyet_ID], [Unvan_ID], [Pers_Maas], [Pers_Komisyon_Yuzdesi], [Pers_Foto], [Pers_SGK_No], [Pers_TC_No], [Pers_CV], [Pers_CV_File], [Pers_CV_Web], [Pers_Aktif_Mi], [Kaydeden], [Kayit_Tarihi], [Son_Kaydeden], [Son_Kayit_Tarihi]) VALUES (5, N'Fatma', N'Dingin', CAST(N'1987-02-01' AS Date), NULL, CAST(N'2023-08-10' AS Date), NULL, N'Lost St. No1', N'Kadýköy', N'Ýstanbul', N'34', N'1234567898', N'5378529654', N'fatmaa@gmil.com', 5, 2, 5, 3540.0000, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'true', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tbl_Personeller] OFF
GO

SET IDENTITY_INSERT [dbo].[tbl_Maaslar] ON 
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam (Hesaplama)], [Ay_ID], [Maas_Yili (Hesaplama)]) VALUES (1, 1, CAST(N'2020-07-01T00:00:00' AS SmallDateTime), CAST(3540 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 3540, 7, 2020)
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam (Hesaplama)], [Ay_ID], [Maas_Yili (Hesaplama)]) VALUES (2, 2, CAST(N'2020-08-01T00:00:00' AS SmallDateTime), CAST(3540 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 3540, 8, 2020)
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam (Hesaplama)], [Ay_ID], [Maas_Yili (Hesaplama)]) VALUES (3, 3, CAST(N'2020-09-01T00:00:00' AS SmallDateTime), CAST(3540 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 3540, 9, 2020)
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam (Hesaplama)], [Ay_ID], [Maas_Yili (Hesaplama)]) VALUES (4, 4, CAST(N'2020-10-01T00:00:00' AS SmallDateTime), CAST(3540 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 3540, 10, 2020)
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam (Hesaplama)], [Ay_ID], [Maas_Yili (Hesaplama)]) VALUES (5, 1, CAST(N'2020-11-01T00:00:00' AS SmallDateTime), CAST(3540 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 3540, 11, 2020)
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam (Hesaplama)], [Ay_ID], [Maas_Yili (Hesaplama)]) VALUES (6, 2, CAST(N'2020-12-01T00:00:00' AS SmallDateTime), CAST(3540 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 3540, 12, 2020)
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam (Hesaplama)], [Ay_ID], [Maas_Yili (Hesaplama)]) VALUES (7, 3, CAST(N'2021-01-01T00:00:00' AS SmallDateTime), CAST(2500 AS Decimal(18, 0)), CAST(1200 AS Decimal(18, 0)), 3700, 1, 2021)
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam (Hesaplama)], [Ay_ID], [Maas_Yili (Hesaplama)]) VALUES (8, 4, CAST(N'2021-02-01T00:00:00' AS SmallDateTime), CAST(2500 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)), 3500, 2, 2021)
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam (Hesaplama)], [Ay_ID], [Maas_Yili (Hesaplama)]) VALUES (9, 1, CAST(N'2021-03-01T00:00:00' AS SmallDateTime), CAST(3000 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)), 4000, 3, 2021)
INSERT [dbo].[tbl_Maaslar] ([Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam (Hesaplama)], [Ay_ID], [Maas_Yili (Hesaplama)]) VALUES (10, 2, CAST(N'2021-04-01T00:00:00' AS SmallDateTime), CAST(3500 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 3500, 4, 2021)
SET IDENTITY_INSERT [dbo].[tbl_Maaslar] OFF
GO


SELECT * FROM tbl_Katagoriler
GO
SELECT * FROM tbl_Bolumler
GO
SELECT * FROM tbl_Personeller
GO
SELECT * FROM tbl_Maaslar
GO
SELECT * FROM tbl_Kullanicilar
