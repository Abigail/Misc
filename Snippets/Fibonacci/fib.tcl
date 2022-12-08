
set fib [dict create]
set fib_prev 0
set fib_last 1
dict set fib $fib_prev 1
dict set fib $fib_last 1

proc is_fib n {
    global fib fib_prev fib_last
    while {$fib_last < $n} {
        set t        $fib_last
        set fib_last [expr $fib_last + $fib_prev]
        set fib_prev $t
        dict set fib $fib_last 1
    }
    return [dict exists $fib $n]
}
