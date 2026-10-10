program RekapitulasiNilaiMahasiswa;

var
  M, N: integer;
  i, j: integer;
  nilai, total, rataRata: real;
  jumlahLulus, jumlahTidakLulus: integer;

begin
  writeln('===== REKAPITULASI NILAI MAHASISWA =====');

  write('Masukkan jumlah mahasiswa: ');
  readln(M);

  write('Masukkan jumlah tugas: ');
  readln(N);

  jumlahLulus := 0;
  jumlahTidakLulus := 0;

  for i := 1 to M do
    begin
      total := 0;

      writeln;
      writeln('Mahasiswa ke-', i);

      for j := 1 to N do
        begin
          write('Masukkan nilai tugas ke-', j, ': ');
          readln(nilai);

          total := total + nilai;
        end;

      rataRata := total / N;

      writeln('Total nilai = ', total:0:2);
      writeln('Rata-rata = ', rataRata:0:2);

      if rataRata >= 65 then
        begin
          writeln('Status: LULUS');
          jumlahLulus := jumlahLulus + 1;
        end
      else
        begin
          writeln('Status: TIDAK LULUS');
          jumlahTidakLulus := jumlahTidakLulus + 1;
        end;
    end;

  writeln;
  writeln('===== HASIL REKAPITULASI =====');
  writeln('Jumlah mahasiswa = ', M);
  writeln('Jumlah mahasiswa LULUS = ', jumlahLulus);
  writeln('Jumlah mahasiswa TIDAK LULUS = ', jumlahTidakLulus);

  readln;
end.