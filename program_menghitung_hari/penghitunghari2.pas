program penghitunghari2;
uses crt;
var 
    tmp,l_hari,a_hari,h_l_hari:integer;
    n_hari,z:string;
    min_mod: array [-7..-1] of integer;
    Hari: array [1..7] of string;
Label
    lagi;
begin
    lagi:
    clrscr;
    textcolor(white);
    writeln('================================');
    writeln('     Program Lompatan Hari');
    writeln('================================');
    writeln;
    Hari[1]:='Ahad';Hari[2]:='Senin';Hari[3]:='Selasa';Hari[4]:='Rabu';
    Hari[5]:='Kamis';Hari[6]:='Jumat';Hari[7]:='Sabtu';

    tmp:=0;
    while(tmp<1) do
    begin
        Write('Masukkan Hari                 : '); readln(n_hari);
        if (n_hari='AHAD') or (n_hari='Ahad') or (n_hari='ahad') or (n_hari='MINGGU') or (n_hari='Minggu') or (n_hari='minggu') then
            begin
                tmp:=1;
                a_hari:=1;
            end    
        else
        if (n_hari='SENIN') or (n_hari='Senin') or (n_hari='senin') then
            begin
                a_hari:=2;
                tmp:=1;
            end
        else
        if (n_hari='SELASA')or(n_hari='Selasa')or(n_hari='selasa') then
            begin
                a_hari:=3;
                tmp:=1;
            end
        else
        if (n_hari='RABU')or(n_hari='Rabu')or(n_hari='rabu') then
            begin
                a_hari:=4;
                tmp:=1;
            end
        else
        if (n_hari='KAMIS')or(n_hari='Kamis')or(n_hari='kamis') then
            begin
                a_hari:=5;
                tmp:=1;
            end
        else
        if (n_hari='JUMAT')or(n_hari='Jumat')or(n_hari='jumat') then
            begin
                a_hari:=6;
                tmp:=1;
            end
        else
        if (n_hari='SABTU')or(n_hari='Sabtu')or(n_hari='sabtu') then
            begin
                a_hari:=7;
                tmp:=1;
            end
        else
        begin
            writeln('Error : Masukkan nama hari yang benar...!');
            writeln;    
        end
    end;
    write('Masukkan Jumlah Lompatan Hari : ');readln(l_hari);
    if l_hari>0 then
        begin
            h_l_hari:=(l_hari mod 7)+a_hari;
            if (h_l_hari > 7) then
                begin
                    h_l_hari:=h_l_hari-7;
                end;
            writeln;
            writeln('Jika dihari ',hari[a_hari],' maka ',l_hari,' hari kedepan adalah = ',hari[h_l_hari]);   
        end
    else
        begin
            h_l_hari:=(l_hari mod 7);
            min_mod[-1]:=1;min_mod[-2]:=2;min_mod[-3]:=3;min_mod[-4]:=4;min_mod[-5]:=5;min_mod[-6]:=6;min_mod[-7]:=7;
            h_l_hari:=min_mod[h_l_hari];
            h_l_hari:=(a_hari-h_l_hari);
            if (h_l_hari <= 0) then
                begin
                    h_l_hari:=min_mod[h_l_hari];
                    h_l_hari:=7-h_l_hari;
                    if h_l_hari=0 then
                    h_l_hari:=7;
                end;
            writeln;
            writeln('Jika dihari ',hari[a_hari],' maka ',l_hari,' hari yang lalu adalah = ',hari[h_l_hari]);   
        end;

    // WM AKu
    writeln;
    writeln('=========================================');
    textcolor(green);
    writeln('         Program By ARY KURNIA');
    textcolor(white);
    writeln('=========================================');
    writeln;
    write('Ingin Mencoba Lagi...? y/n : ');
    readln(z);
        if (z='y') or (z='Y') then goto lagi;
end.