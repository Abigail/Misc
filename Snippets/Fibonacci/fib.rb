$fib            = {}
$fib_prev       = 0
$fib_last       = 1
$fib[$fib_prev] = true
$fib[$fib_last] = true

def is_fib (n)
    while $fib_last < n do
        t               = $fib_last
        $fib_last      += $fib_prev
        $fib_prev       = t
        $fib[$fib_last] = true
    end

    return $fib[n]
end
