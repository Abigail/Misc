#!/usr/bin/awk

#
# Return whether a given number is a Fibonacci number
#

BEGIN {
    f       = 0
    g       = 1
    fib [f] = 1
    fib [g] = 1
}


function is_fib (n) {
    while (g < n) {
        t = g
        g = f + g
        f = t
        fib [g] = 1
    }
    return n in fib
}


{
    print is_fib($1)
}
