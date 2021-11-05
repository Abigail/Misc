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
