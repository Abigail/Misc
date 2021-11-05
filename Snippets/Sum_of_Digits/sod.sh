#
# Return the sum of the digits of the set of given numbers.
#
# This places the result in the variable digit_sum.
#
function digit_sum () {
    digit_sum=0
    for num in "$@"
    do  while ((num > 0))
        do    ((digit_sum += num % 10))
              ((num       /= 10))
        done
    done
}
