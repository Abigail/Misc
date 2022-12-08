--
-- Return the sum of the digits of the set of given numbers.
--

function digit_sum (numbers)
    local sum = 0
    for _, number in pairs (numbers) do
        while number > 0 do
            sum = sum + number % 10
            number = math . floor (number / 10)
        end
    end
    return (sum)
end


function digit_sum1 (number) 
    local sum = 0
    while number > 0 do
        sum = sum + number % 10
        number = math . floor (number / 10)
    end
    return (sum)
end
