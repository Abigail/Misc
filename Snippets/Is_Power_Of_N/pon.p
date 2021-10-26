(*                                                                 *)
(* Return true if number is a power of n, that is, number == n ^ p *)
(* for some non-negative integer p. Return false otherwise.        *)
(*                                                                 *)
function is_power_of_n (number, n: integer): boolean;
    begin
             if number < 1        then is_power_of_n := false
        else if number = 1        then is_power_of_n := true
        else if number mod n <> 0 then is_power_of_n := false
        else is_power_of_n := is_power_of_n (number div n, n);
    end;

function is_power_of_2 (number: integer): boolean;
    begin
        is_power_of_2 := is_power_of_n (number, 2);
    end;
