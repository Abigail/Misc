
function digit_sum (n: longint): integer;
    const
        base = 10;

    var 
        sum: integer;

    begin
        sum := 0;
        while n > 0 do begin
            sum := sum + (n mod base);
            n   := n div base;
        end;
        digit_sum := sum;
    end;
