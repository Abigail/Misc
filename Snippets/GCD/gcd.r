#
# Find the GCD, using Stein's algorithm
#    (https://en.wikipedia.org/wiki/Binary_GCD_algorithm)
#
gcd <- function (u, v) {
    u_odd <- u %% 2 != 0
    v_odd <- v %% 2 != 0

         if (u == v | v == 0) {u}
    else if (         u == 0) {v}
    else if (!u_odd & !v_odd) {
                   bitwShiftL (gcd (bitwShiftR (u, 1), bitwShiftR (v, 1)), 1)}
    else if (!u_odd &  v_odd) {gcd (bitwShiftR (u, 1), v)}
    else if ( u_odd & !v_odd) {gcd (u, bitwShiftR (v, 1))}
    else if ( u     >  v)     {gcd (u - v, v)}
    else                      {gcd (v - u, u)}
}
