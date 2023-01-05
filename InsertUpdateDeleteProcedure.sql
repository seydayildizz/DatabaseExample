create PROCEDURE masterinsertupdatedelete
(@urun_no int,
@urun_adi  nvarchar(20),
@depo_giris_tarih datetime,
@fiyat  nvarchar(20),
@adet  int,
@durum nvarchar(20) = ''
)
as
begin
		IF @durum = 'Insert'
        BEGIN
            INSERT INTO Urunler
                        (
						 urun_no,
                         urun_adi,
                         depo_giris_tarih,
                         fiyat,
                         adet)
            VALUES     ( @urun_no,
                         @urun_adi,
                         @depo_giris_tarih,
                         @fiyat,
                         @adet)
        END

		IF @durum = 'Select'
        BEGIN
            SELECT *
            FROM   Urunler
        END

		IF @durum = 'Update'
        BEGIN
            UPDATE Urunler
            SET	   urun_adi = @urun_adi,
                   depo_giris_tarih = @depo_giris_tarih,
                   fiyat = @fiyat,
				   adet = @adet
            WHERE  urun_no = @urun_no
        END
      ELSE IF @durum = 'Delete'
        BEGIN
            DELETE FROM Urunler
            WHERE  urun_no = @urun_no
        END
  END