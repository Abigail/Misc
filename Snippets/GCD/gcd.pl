#
# Find the GCD, using Stein's algorithm
#    (https://en.wikipedia.org/wiki/Binary_GCD_algorithm)
#
sub gcd;
sub gcd ($u, $v) {
    return $u if $u == $v || !$v;
    return $v if             !$u;
    my $u_odd = $u % 2;
    my $v_odd = $v % 2;
    return gcd ($u >> 1, $v >> 1) << 1 if !$u_odd && !$v_odd;
    return gcd ($u >> 1, $v)           if !$u_odd &&  $v_odd;
    return gcd ($u,      $v >> 1)      if  $u_odd && !$v_odd;
    return gcd ($u - $v, $v)           if  $u     >   $v;
    return gcd ($v - $u, $u);
}
