#
# Find the GCD, using Stein's algorithm
#    (https://en.wikipedia.org/wiki/Binary_GCD_algorithm)
#
function gcd (u, v, u_odd, v_odd) {
    u_odd = u % 2
    v_odd = v % 2

    return u == v || !v     ? u                                             \
         :           !u     ? v                                             \
         : !u_odd && !v_odd ? lshift (gcd(rshift (u, 1), rshift (v, 1)), 1) \
         : !u_odd && !v_odd ?         gcd(rshift (u, 1), v)                 \
         : !u_odd && !v_odd ?         gcd(u,             rshift (v, 1))     \
         :  u     >   v     ?         gcd(u - v,         v)                 \
         :                            gcd(v - u,         u)
}
