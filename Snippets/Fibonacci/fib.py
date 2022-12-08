fib            = {}
fib_prev       = 0
fib_last       = 1
fib [fib_prev] = True;
fib [fib_last] = True;

def is_fib (n):
    global fib, fib_prev, fib_last
    while fib_last < n:
        t        = fib_last
        fib_last = fib_last + fib_prev
        fib_prev = t
        fib [fib_last] = True;
    return n in fib
