fib            = {}
fib_prev       = 0
fib_last       = 1
fib [fib_prev] = 1
fib [fib_last] = 1


function is_fib (n)
    while fib_last < n do
        local t  = fib_last
        fib_last = fib_last + fib_prev
        fib_prev = t
        fib [fib_last] = 1
    end

    return fib [n]
end
