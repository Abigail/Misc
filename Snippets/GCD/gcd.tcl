#
# Find the GCD, using Stein's algorithm
#    (https://en.wikipedia.org/wiki/Binary_GCD_algorithm)
#
proc gcd {u v} {
    set u_odd [expr $u % 2]
    set v_odd [expr $v % 2]
    if {$u == $v || $v == 0} {return $u}
    if {            $u == 0} {return $v}
    if {$u_odd == 0 && $v_odd == 0} {
        return [expr [gcd [expr $u >> 1] [expr $v >> 1]] << 1]
    }
    if {$u_odd == 0 && $v_odd >  0} {
        return [gcd [expr $u >> 1] $v]
    }
    if {$u_odd >  0 && $v_odd == 0} {
        return [gcd $u [expr $v >> 1]]
    }
    if {$u > $v} {
        return [gcd [expr $u - $v] $v]
    }
    return [gcd [expr $v - $u] $u]
}
