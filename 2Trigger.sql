
---Ürünün depoya giriþ tarihini günceller
create trigger tgr_UrunTarih
ON Urunler
after INSERT
AS
	update Urunler set depo_giris_tarih=GETDATE() where depo_giris_tarih is null;

---------------------------------------------------------
---Ürün ekleme iþleminden sonra listeleme yapar
create trigger tgr_UrunListele
on Urunler
after insert
as
begin
select * from Urunler
end
---Kayýt Ekleme Örneði
insert into
Urunler(urun_no,urun_adi,depo_giris_tarih,fiyat,adet) values ('9789753424141','Cetvel','2010-01-01 00:00:00.000','119.99','155')

---------------------------------------------------------


