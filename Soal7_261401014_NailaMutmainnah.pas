program TarifParkir;
uses crt;

var
  kendaraan: char;
  jam: integer;
  tarif: longint;

begin
  clrscr;

  writeln('=== PERHITUNGAN TARIF PARKIR ===');
  writeln('M = Mobil');
  writeln('K = Motor');
  writeln('B = Bus');

  write('Masukkan kode kendaraan: ');
  readln(kendaraan);
  kendaraan := UpCase(kendaraan);

  write('Masukkan lama parkir (jam): ');
  readln(jam);

  if jam < 1 then
    writeln('Lama parkir harus minimal 1 jam.')
  else
  begin
    case kendaraan of
      'M':
        begin
          if jam > 10 then
            tarif := 30000
          else
            tarif := 5000 + (jam - 1) * 3000;
        end;

      'K':
        begin
          if jam > 10 then
            tarif := 10000
          else
            tarif := 2000 + (jam - 1) * 1000;
        end;

      'B':
        begin
          if jam > 10 then
            tarif := 50000
          else
            tarif := 10000 + (jam - 1) * 5000;
        end;

    else
      tarif := -1;
    end;

    if tarif = -1 then
      writeln('Kode kendaraan tidak valid.')
    else
    begin
      writeln;
      writeln('Kode Kendaraan: ', kendaraan);
      writeln('Lama Parkir: ', jam, ' jam');
      writeln('Total Tarif: Rp', tarif);
    end;
  end;

  readln;
end.