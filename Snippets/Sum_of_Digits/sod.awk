#!/usr/bin/awk

#
# Return the sum of the digits of the set of given numbers.
#

function digit_sum (numbers, sum, i, number) {
    sum = 0
    for (i in numbers) {
        number = numbers [i]
        while (number > 0) {
            sum   += number % 10
            number = int (number / 10)
        }
    }
    return sum
}

function digit_sum1 (number, sum) {
    sum = 0
    while (number > 0) {
        sum   += number % 10
        number = int (number / 10)
    }
    return sum
}


NF == 1 {print digit_sum1($1)}
NF >  1 {
    split ($0, n)
    print digit_sum(n)
}
