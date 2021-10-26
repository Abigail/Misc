#
# Return true if number is a power of n, that is, number == n ^ p
# for some non-negative integer p. Return false otherwise.
#
def is_power_of_n (number, n)
    return number <  1    ? false
         : number == 1    ? true
         : number % n > 0 ? false
         : is_power_of_n(number / n, n)
end

def is_power_of_2 (number)
    return is_power_of_n(number, 2)
end
