
-- Veri tabaný oluþturuldu. Tablolar ve yabancýl anahtar tanýmlamalarý yapýldý.

--veri tabaný oluþturulmasu
create database DBEsnafProject;

-- tablo oluþturma iþlemleri
create table Personel(
	personel_no int identity(1,1) primary key not null,
	personel_adi nvarchar(50) not null ,
	personel_soyadi nvarchar(50)  not null,
	unvan nvarchar(50) not null,
	ise_giris datetime,
	cinsiyet nvarchar(5) ,
	telefon int not null unique,
	adres_no int 
);

create table Musteriler(
	musteri_no int  identity(1,1) primary key not null,
	musteri_adi nvarchar(50) not null ,
	musteri_soyadi nvarchar(50) not null ,
	telefon int not null unique,
	adres_no int,
	
);

create table Tedarikciler(
	tedarikci_no int identity(1,1) primary key not null,
	firma_adi nvarchar(50) not null ,
	yetkili_adi nvarchar(50) not null ,
	yetkili_unvan nvarchar(50) not null ,
	telefon int not null unique,
	adres_no int
);

create table UrunKategori(
	urun_no int not null ,
	kategori_no int not null, 
	constraint "UrunKategori_pk"
		primary key("urun_no","kategori_no")
);

create table Urunler(
	urun_no int primary key,
	urun_adi varchar(20),
	depo_giris_tarih datetime,
	fiyat nvarchar(20) not null,
	adet int not null,

);

create table Kategoriler(
	kategori_no int identity(1,1) primary key,
	kategori_adi varchar(20)
);


create table UrunTedarikci(
	urun_no int not null ,
	tedarikci_no int not null, 
	constraint "Uruntedarikci_pk"
		primary key("urun_no","tedarikci_no")
);

create table UrunDetay(
	urundetay_no int identity(1,1) primary key not null,
	birim_fiyat nvarchar(20),
	indirim nvarchar(20),
	kdv nvarchar(20)
);

create table UrunDetayUrunler(
	urun_no int not null ,
	urundetay_no int not null, 
	constraint "UrunDetayUrunler_pk"
		primary key("urun_no","urundetay_no")
);

create table Fatura(
	fatura_no int identity(1,1) primary key not null,
	fatura_belgeno varchar(20),
	fatura_tarihi datetime,
	fatura_tipi int
);

create table Satis(
	satis_no int primary key,
	satis_tarih datetime,
	satis_icerik nvarchar(50)
);

create table UrunSatis(
	urun_no int not null ,
	satis_no int not null, 
	constraint "UrunSatis_pk"
		primary key("urun_no","satis_no")
);

create table SatisFatura(
	satis_no int not null ,
	fatura_no int not null, 
	constraint "SatisFatura_pk"
		primary key("satis_no","fatura_no")
);

