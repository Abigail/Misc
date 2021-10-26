//
// Find the GCD, using Stein's algorithm
//    (https://en.wikipedia.org/wiki/Binary_GCD_algorithm)
//
public static int gcd (int u, int v) {
    boolean u_odd = u % 2 != 0;
    boolean v_odd = v % 2 != 0;

    return u == v || v == 0 ? u
         :           u == 0 ? v
         : !u_odd && !v_odd ? gcd (u >> 1, v >> 1) << 1
         : !u_odd &&  v_odd ? gcd (u >> 1, v)
         :  u_odd && !v_odd ? gcd (u,      v >> 1)
         :  u     >   v     ? gcd (u - v, v)
         :                    gcd (v - u, u);
}

