
proc digit_sum number {
    set base 10
    set sum   0
    while {$number > 0} {
        incr sum    [expr      $number % $base]
        set  number [expr int ($number / $base)]
    }
    return $sum
}
