program penghitunghari;
uses crt;
var
    tahun,bulan,tanggal:integer;
    tmp:integer;
    h,b: array[1..12] of String;
Label
    lagi;
begin
    clrscr;

    tmp:=0;
    while(tmp<1) do
    begin
        write('Tahun    = '); readln(tahun);
        if (tahun>0)then tmp:=1
        else writeln('Error : tahun > 0');
    end;
    tmp:=0;
    while(tmp<1) do
    begin
        write('Bulan   = '); readln(bulan);
        if (bulan>0)and(bulan<13) then tmp:=1
        else writeln('Error : Bulan > 0 dan < 13');
    end;
    tmp:=0;
    while(tmp<1) do
    begin
        write('Tanggal  = '); readln(tanggal);
        if (tanggal>0) and (tanggal<32) then tmp:=1
        else writeln('Error : Tanggal > 0 dan < 32');
    end;
    writeln;
    b[1]:='Januari';b[2]:='Februari';b[3]:='Maret';b[4]:='April';b[5]:='Mei';b[6]:='Juni';
    b[7]:='Juli';b[8]:='Agustus';b[9]:='September';b[10]:='Oktober';b[11]:='Nofember';b[12]:='Desember';

    writeln('Hasil     : Hari ',tanggal,' bulan ',b[bulan],' ',tahun);
    readln;
end.