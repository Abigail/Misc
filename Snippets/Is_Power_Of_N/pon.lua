--
-- Return true if number is a power of n, that is, number == n ^ p
-- for some non-negative integer p. Return false otherwise.
--
function is_power_of_n (number, n)
    if number <  1    then return false end
    if number == 1    then return true  end
    if number % n > 1 then return false end  
                      return (is_power_of_n (number / n, n))
end

function is_power_of_2 (number)
    return is_power_of_n (number, 2)
end
