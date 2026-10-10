
program VerifikasiLogin;
uses crt;

var
  password, inputPassword: string;
  percobaan: integer;

begin
  clrscr;
  password := 'pascal123';
  percobaan := 0;

  repeat
    write('Masukkan kata sandi: ');
    readln(inputPassword);

    if (inputPassword = password) then
    begin
      writeln('Login Berhasil! Selamat Datang');
      break;
    end
    else
    begin
      percobaan := percobaan + 1;
      writeln('Password salah!');

      if percobaan < 3 then
        writeln('Sisa percobaan: ', 3 - percobaan);
    end;
  until percobaan >= 3;

  if (inputPassword <> password) then
    writeln('Akses Ditolak! Akun Terkunci.');

  readln;
end.
