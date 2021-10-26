(*                                                         *)
(* Find the GCD, using Stein's algorithm                   *)
(*    (https://en.wikipedia.org/wiki/Binary_GCD_algorithm) *)
(*                                                         *)
function gcd (u, v: integer): integer;
    var 
        u_odd, v_odd: boolean;

    begin
        u_odd := u mod 2 <> 0;
        v_odd := v mod 2 <> 0;

             if (u = v)   or (v = 0)    then gcd := u
        else if              (u = 0)    then gcd := v
        else if not u_odd and not v_odd then gcd := gcd (u >> 1, v >> 1) << 1
        else if not u_odd and     v_odd then gcd := gcd (u >> 1, v)
        else if     u_odd and not v_odd then gcd := gcd (u,      v >> 1)
        else if u > v                   then gcd := gcd (u - v,  v)
        else                                 gcd := gcd (v - u,  u);
    end;
