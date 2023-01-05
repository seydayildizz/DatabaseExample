-- function (en az bir parametre alan ve en az bir de�er d�nd�ren) ---

CREATE PROC  sp_urun_bul
@urun_no int,
@urun_adi VARCHAR(50) OUTPUT
AS BEGIN
      select @urun_no=urun_no from Urunler
      WHERE urun_no=@urun_no
END

--Kullan�c� tan�ml� fonksiyon --
---------------------------------------
alter table Satis add constraint SatisFatura_fk
		foreign key (satis_no) references Fatura (fatura_no)
		on delete cascade
		on update cascade;
