//
// Return true if number is a power of n, that is, number == n ^ p
// for some non-negative integer p. Return false otherwise.
//
func is_power_of_n (number int, n int) bool {
    if (number <  1)     {return false}
    if (number == 1)     {return true}
    if (number % n != 0) {return false}
                          return is_power_of_n (number / n, n)
}

func is_power_of_2 (number int) bool {
    return is_power_of_n (number, 2)
}
