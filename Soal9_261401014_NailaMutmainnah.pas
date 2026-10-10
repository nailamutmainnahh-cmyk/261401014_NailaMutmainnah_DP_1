program JumlahHariBulan;
uses crt;

var
  tahun, bulan, jumlahHari: integer;
  kabisat: boolean;

begin
  clrscr;

  writeln('=== MENENTUKAN JUMLAH HARI DALAM BULAN ===');
  write('Masukkan tahun: ');
  readln(tahun);

  write('Masukkan nomor bulan (1-12): ');
  readln(bulan);

  if (bulan < 1) or (bulan > 12) then
    writeln('Nomor bulan tidak valid!')
  else
  begin
    if (tahun mod 400 = 0) or
       ((tahun mod 4 = 0) and (tahun mod 100 <> 0)) then
      kabisat := true
    else
      kabisat := false;

    case bulan of
      1, 3, 5, 7, 8, 10, 12:
        jumlahHari := 31;

      4, 6, 9, 11:
        jumlahHari := 30;

      2:
        if kabisat then
          jumlahHari := 29
        else
          jumlahHari := 28;
    end;

    writeln;
    writeln('Tahun: ', tahun);
    writeln('Bulan: ', bulan);

    if kabisat then
      writeln('Tahun kabisat')
    else
      writeln('Bukan tahun kabisat');

    writeln('Jumlah hari: ', jumlahHari, ' hari');
  end;

  readln;
end.