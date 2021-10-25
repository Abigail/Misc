//
// Find the GCD, using Stein's algorithm
//    (https://en.wikipedia.org/wiki/Binary_GCD_algorithm)
//
func gcd (u int, v int) int {
    var u_odd bool = u % 2 != 0
    var v_odd bool = v % 2 != 0

    if (u == v || v == 0) {return u}
    if (          u == 0) {return v}
    if (!u_odd && !v_odd) {return gcd (u >> 1, v >> 1) << 1}
    if (!u_odd &&  v_odd) {return gcd (u >> 1, v)}
    if ( u_odd && !v_odd) {return gcd (u,      v >> 1)}
    if ( u     >   v)     {return gcd (u - v,  v)}
                           return gcd (v - u,  u)
}
