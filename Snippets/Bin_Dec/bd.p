program XXX;

uses Strutils;

(*                                                             *)
(* Take a binary representation, return its decimal equivalent *)
(*                                                             *)
function bin2dec (bin: string): longint;
    var
        c: char;
        dec: integer = 0;

    begin
        for c in bin do begin
            dec := dec * 2;
            if c = '1' then begin
                dec := dec + 1;
            end;
        end;
        bin2dec := dec;
    end;

(*                                                          *)
(* Given a decimal number, return its binary representation *)
(*                                                          *)
function dec2bin (dec: LongInt): string;
    begin
        dec2bin := Dec2Numb (dec, 1, 2);
    end;

var
    i: LongInt;
    bin: string;
    dec: longint;

begin
    for i := 0 to 15 do begin
        bin := dec2bin (i);
        dec := bin2dec (bin);
        writeln (i:2, bin:5, dec:3);
    end
end.
