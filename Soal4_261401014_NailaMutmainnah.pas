program KalkulatorSederhana;

var
  pilihan: integer;
  a, b, hasil: real;
  x, y: integer;
  ulang: char;

begin
  repeat
    writeln('===== KALKULATOR SEDERHANA =====');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV (Pembagian Bulat)');
    writeln('6. MOD (Sisa Pembagian)');
    writeln('================================');
    write('Pilih operasi (1-6): ');
    readln(pilihan);

    case pilihan of
      1: begin
           write('Masukkan angka pertama: ');
           readln(a);
           write('Masukkan angka kedua: ');
           readln(b);
           hasil := a + b;
           writeln('Hasil penjumlahan = ', hasil:0:2);
         end;

      2: begin
           write('Masukkan angka pertama: ');
           readln(a);
           write('Masukkan angka kedua: ');
           readln(b);
           hasil := a - b;
           writeln('Hasil pengurangan = ', hasil:0:2);
         end;

      3: begin
           write('Masukkan angka pertama: ');
           readln(a);
           write('Masukkan angka kedua: ');
           readln(b);
           hasil := a * b;
           writeln('Hasil perkalian = ', hasil:0:2);
         end;

      4: begin
           write('Masukkan angka pertama: ');
           readln(a);
           write('Masukkan angka kedua: ');
           readln(b);

           if b <> 0 then
             begin
               hasil := a / b;
               writeln('Hasil pembagian = ', hasil:0:2);
             end
           else
             writeln('Error: Pembagi tidak boleh nol!');
         end;

      5: begin
           write('Masukkan bilangan bulat pertama: ');
           readln(x);
           write('Masukkan bilangan bulat kedua: ');
           readln(y);

           if y <> 0 then
             writeln('Hasil DIV = ', x div y)
           else
             writeln('Error: Pembagi tidak boleh nol!');
         end;

      6: begin
           write('Masukkan bilangan bulat pertama: ');
           readln(x);
           write('Masukkan bilangan bulat kedua: ');
           readln(y);

           if y <> 0 then
             writeln('Hasil MOD = ', x mod y)
           else
             writeln('Error: Pembagi tidak boleh nol!');
         end;

    else
      writeln('Pilihan tidak valid!');
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);
    writeln;

  until (ulang = 'T') or (ulang = 't');

  writeln('Terima kasih telah menggunakan kalkulator.');
  readln;
end.