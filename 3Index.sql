
------------------------------------
--Urun Index--
CREATE INDEX UrunIndex
ON Urunler (urun_no,urun_adi,depo_giris_tarih,fiyat,adet);

--------------------------------------------
--M��teri Index--
CREATE INDEX MusteriIndex
ON Musteriler (musteri_no,musteri_adi,musteri_soyadi,telefon,adres_no);

--------------------------------------------------
--Tedarik�i Index--
CREATE INDEX TedarikciIndex
ON Tedarikciler (tedarikci_no,firma_adi,yetkili_adi,yetkili_unvan,telefon,adres_no);
