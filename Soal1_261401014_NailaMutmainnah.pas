Program TotalBelanjaTokoBuku;
uses crt;
var 
   N, i : integer;
   Harga, TotalBelanja : real;
   Diskon, TotalDiskon, TotalBayar : real;
begin 
    clrscr;
    writeln('===========================');
    writeln('TOKO BUKU TOTAL BELANJA');
    writeln('===========================');
    write('Masukkan jumlah barang yang dibeli: ');readln(N);
    TotalBelanja := 0;
    for i := 1 to N do 
    begin
    write('Masukkan harga barang ke-', i, ': Rp');readln(Harga);
    TotalBelanja := TotalBelanja + Harga;
    end;
    if TotalBelanja < 100000 then 
      Diskon := 0
    else if TotalBelanja < 500000 then 
      Diskon := 0.10
    else 
      Diskon := 0.20;
    TotalDiskon := TotalBelanja * Diskon;
    TotalBayar := TotalBelanja - TotalDiskon;
    writeln;
    writeln('========== RINCIAN BELANJA ==========');
    writeln('Jumlah barang: ',N);
    writeln('Total sebelum diskon: Rp', TotalBelanja:0:2);
    writeln('Persentase diskon: ', Diskon * 100:0:0, '%');
    writeln('Besar diskon: Rp', TotalDiskon:0:2);
    writeln('Total bayar akhir: Rp', TotalBayar:0:2);
    writeln('======================================');
    readln;
end.