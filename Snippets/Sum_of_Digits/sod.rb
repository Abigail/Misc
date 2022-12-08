#
# Return the sum of the digits of the set of given numbers.
#

def digit_sum (numbers)
    sum = 0
    numbers . each do
        | num |
        while num > 0 do
            sum += num % 10
            num /= 10
        end
    end
    return sum
end

def digit_sum1 (number)
    sum  =  0
    base = 10
    while number > 0 do
        sum    += number % base
        number /= base
    end
    return sum
end
