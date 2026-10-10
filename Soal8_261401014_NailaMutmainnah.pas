program GajiKaryawan;
uses crt;

var
  golongan: char;
  jamKerja, jamLembur: integer;
  gajiPokok, lembur, bonus, totalGaji: longint;

begin
  clrscr;

  writeln('=== PERHITUNGAN GAJI KARYAWAN ===');
  writeln('Golongan A = Rp1.500.000');
  writeln('Golongan B = Rp2.000.000');
  writeln('Golongan C = Rp2.500.000');

  write('Masukkan golongan karyawan: ');
  readln(golongan);
  golongan := UpCase(golongan);

  write('Masukkan total jam kerja per minggu: ');
  readln(jamKerja);

  if jamKerja < 0 then
    writeln('Jam kerja tidak boleh negatif.')
  else
  begin
    case golongan of
      'A': gajiPokok := 1500000;
      'B': gajiPokok := 2000000;
      'C': gajiPokok := 2500000;
    else
      gajiPokok := -1;
    end;

    if gajiPokok = -1 then
      writeln('Golongan tidak valid.')
    else
    begin
      if jamKerja > 40 then
        jamLembur := jamKerja - 40
      else
        jamLembur := 0;

      lembur := jamLembur * 20000;
      bonus := 0;

      if golongan = 'C' then
      begin
        if jamKerja > 50 then
          bonus := 100000;
      end;

      totalGaji := gajiPokok + lembur + bonus;

      writeln;
      writeln('=== RINCIAN GAJI ===');
      writeln('Golongan       : ', golongan);
      writeln('Jam Kerja      : ', jamKerja, ' jam');
      writeln('Jam Lembur     : ', jamLembur, ' jam');
      writeln('Gaji Pokok     : Rp', gajiPokok);
      writeln('Gaji Lembur    : Rp', lembur);
      writeln('Bonus          : Rp', bonus);
      writeln('Total Gaji     : Rp', totalGaji);
    end;
  end;

  readln;
end.