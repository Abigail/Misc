suppressPackageStartupMessages (
    library (hash)
)

fib      <- hash ()
fib_prev <- 0
fib_last <- 1
.set (fib, fib_prev, TRUE)
.set (fib, fib_last, TRUE)

is_fib <- function (n) {
    while (fib_last < n) {
        t        <- fib_last
        fib_last <- fib_last + fib_prev
        fib_prev <- t
        .set (fib, fib_last, TRUE)
    }

    return (has.key (as.character (n), fib))
}
