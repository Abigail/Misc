(*                                              *)
(* Given a number 'num', return its reverse     *)
(* Only given as a reference. Just use the body *)
(*                                              *)
uses
    StrUtils;

function reverse (str: String): String;
    begin
        reverse := ReverseString (str)
    end;


(*                                          *)
(* Given a number 'num', return its reverse *)
(*                                          *)
function reverse (num: Longint): Longint;
    var 
        rev: Longint;

    begin
        rev := 0;
        while num > 0 do begin
            rev := rev * 10;
            rev := rev + (num mod 10);
            num := num div 10;
        end;
        reverse := rev;
    end;
