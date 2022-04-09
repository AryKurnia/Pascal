program mencetakderetangka;
uses crt;
var
    a,b,c:integer;
    z:char;
Label
    lagi;
begin
    lagi:
    clrscr;
    textcolor(white);
    writeln('================================================');
    writeln('        Program Cetak Deretan Angka');
    writeln('================================================');
    writeln;
    c:=0;
    write('Masukkan deretan angka : '); readln(a);
    for b:=0 to a-1 do
        begin
            write(b,', ');
        end;
        write(a,' ');
    for b :=1 to a do
        begin
            c:=c+b;
        end;
    writeln('= ',a+1);
    writeln;
    writeln('Jumlahs Suku           = ',a+1);
    writeln('Hasil jika dijumlahkan = ',c);

    // WM
    writeln;
    writeln('================================================');
    textcolor(green);
    writeln('              Program By ARY KURNIA');
    textcolor(white);
    writeln('================================================');
    writeln;
    write('Ingin Mencoba Lagi..? Y/N : ');
    readln(z);
    if (z='y') or (z='Y') then goto lagi;
end.