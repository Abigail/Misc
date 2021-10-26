#
# Return TRUE if number is a power of n, that is, number == n ^ p
# for some non-negative integer p. Return FALSE otherwise.
#
is_power_of_n <- function (number, n) {
         if (number <  1)      {FALSE}
    else if (number == 1)      {TRUE}
    else if (number %% n != 0) {FALSE}
    else                       {is_power_of_n (number / n, n)}
}

is_power_of_2 <- function (number) {
    is_power_of_n (number, 2)
}
