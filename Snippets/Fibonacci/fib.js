
function is_fib (n) {
    while (fib_last < n) {
        let t          = fib_last
        fib_last      += fib_prev
        fib_prev       = t
        fib [fib_last] = true
    }
    return (fib [n])
} 
