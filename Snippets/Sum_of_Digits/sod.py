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
