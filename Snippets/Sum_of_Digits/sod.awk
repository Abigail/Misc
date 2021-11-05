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
