
digit_sum <- function (n) {
    base <- 10
    sum  <-  0
    while (n > 0) {
        sum <- sum + n %% base
        n   <- n %/% base
    }
    return (sum)
}
