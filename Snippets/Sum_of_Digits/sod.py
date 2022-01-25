#
# Return the sum of the digits of the set of given numbers.
#
def digit_sum (numbers):
    sum = 0
    for num in numbers:
        while num > 0:
            sum = sum + num % 10   
            num = num // 10
    return sum


def digit_sum1 (number):
    sum  =  0
    base = 10
    while number > 0:
        sum    = sum + number % base
        number = number // base
    return sum
