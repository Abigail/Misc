var fib_prev, fib_last int  
var fib map [int] bool

func fib_init () {
    fib            = make (map [int] bool)
    fib_prev       = 0
    fib_last       = 1
    fib [fib_prev] = true
    fib [fib_last] = true
}


func is_fib (n int) bool {
    for fib_last < n {
        t             := fib_last
        fib_last      += fib_prev
        fib_prev       = t
        fib [fib_last] = true
    }

    _, ok := fib [n]

    return (ok)
}
