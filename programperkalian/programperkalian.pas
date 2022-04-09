program programperkalian;
uses crt;
var
    a,b:integer;
    z:char;
Label
    lagi;
begin
    lagi:
    clrscr;
    textcolor(white);
    writeln('======================');
    writeln('   Program Perkalian');
    writeln('======================');
    writeln;
    write('Masukkan Angka Perkalian : ');
    readln(a);
    for b := 1 to 10 do
        writeln(a,' X ',b,' = ',a*b);
    writeln;
    writeln('=========================================');
    textcolor(green);
    writeln('          Program By ARY KURNIA');
    textcolor(white);
    writeln('=========================================');
    write('Ingin Mencari Perkalian Lain...? y/n : ');
    readln(z);
        if (z='y') or (z='Y') then goto lagi;
    readln;
    
end.