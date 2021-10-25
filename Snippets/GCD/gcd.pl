#
# Find the GCD, using Stein's algorithm
#    (https://en.wikipedia.org/wiki/Binary_GCD_algorithm)
#
sub gcd;
sub gcd ($u, $v) {
    my ($u_odd, $v_odd) = ($u % 2, $v % 2);
       $u == $v || !$v     ? $u
    :              !$u     ? $v
    : !$u_odd   && !$v_odd ? gcd ($u >> 1, $v >> 1) << 1
    : !$u_odd   &&  $v_odd ? gcd ($u >> 1, $v)
    :  $u_odd   && !$v_odd ? gcd ($u,      $v >> 1)
    :  $u       >   $v     ? gcd ($u - $v, $v)
    :                        gcd ($v - $u, $u)
}
