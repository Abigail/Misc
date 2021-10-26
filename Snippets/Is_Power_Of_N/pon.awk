#
# Return 1 if number is a power of n, that is, number == n ^ p
# for some non-negative integer 0. Return 0 otherwise.
#
function is_power_of_n (number, n) {
    return number <  1 ? 0  \
         : number == 1 ? 1  \
         : number %  n ? 0  \
         : is_power_of_n(number / n, n)
}

function is_power_of_2 (number) {
    return is_power_of_n(number, 2)
}
