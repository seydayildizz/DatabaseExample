--parametreli procedure
CREATE PROCEDURE stp_UrunBilgi
@urun_no int
AS
SELECT urun_no,urun_adi,depo_giris_tarih,fiyat,adet FROM Urunler WHERE urun_no = @urun_no;

execute stp_UrunBilgi 123456159;

--DROP PROCEDURE [procedure_adý] var olan yordamý silmek için kullanýlýr.
--ALTER PROCEDURE [procedure_adý] var olan yordam üzerinde deðiþiklik yapmak için kullanýlýr.

ALTER PROCEDURE stp_UrunBilgi
AS
SELECT urun_no,urun_adi,depo_giris_tarih,fiyat,adet FROM Urunler

execute stp_UrunBilgi;

---------------------------------------------------------

CREATE PROCEDURE stp_PersonelBilgi
@personel_no int 
AS
SELECT personel_no,personel_adi,personel_soyadi,unvan,ise_giris,cinsiyet,telefon,adres_no FROM Personel WHERE personel_no = @personel_no;

execute stp_PersonelBilgi 10;

----------------------------------------------------------------------

