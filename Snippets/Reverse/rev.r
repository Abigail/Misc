#
# Given a number 'num', return its reverse
#
reverse <- function (num) {
    rev <- 0
    while (num > 0) {
        rev <- rev * 10
        rev <- rev + (num %% 10)
        num <- num %/% 10
    }
    return (rev)
}
