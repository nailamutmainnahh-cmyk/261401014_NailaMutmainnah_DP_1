program DeretAngka;
uses crt;

var
  N, pilihan, i: integer;

begin
  clrscr;

  writeln('=== PROGRAM DERET ANGKA ===');
  write('Masukkan nilai N: ');
  readln(N);

  writeln('Pilih kategori deret:');
  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Masukkan pilihan (1/2): ');
  readln(pilihan);

  writeln;
  write('Hasil deret: ');

  i := 1;

  while i <= N do
  begin
    { Lewati angka yang tidak sesuai kategori }
    if (pilihan = 1) and (i mod 2 = 0) then
    begin
      i := i + 1;
      continue;
    end
    else if (pilihan = 2) and (i mod 2 <> 0) then
    begin
      i := i + 1;
      continue;
    end;

    { Lewati angka kelipatan 5 }
    if i mod 5 = 0 then
    begin
      i := i + 1;
      continue;
    end;

    write(i, ' ');
    i := i + 1;
  end;

  writeln;
  readln;
end.