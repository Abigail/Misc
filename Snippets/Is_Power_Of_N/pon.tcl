#
# Return 1 if number is a power of n, that is, number == n ^ p
# for some non-negative integer p. Return 0 otherwise.
#
proc is_power_of_n {number n} { 
    if {$number <  1} {return 0}
    if {$number == 1} {return 1}
    if {$number % $n} {return 0}
                       return [is_power_of_n [expr $number / $n] $n]
}
 
proc is_power_of_2 {number} {
    return [is_power_of_n $number 2]
}
