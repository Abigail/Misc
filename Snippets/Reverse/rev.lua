--
-- Given a string 'str', return its reverse
--

function reverse (str)
    return (str : reverse ())
end


--
-- Given a number 'num', return its reverse
--

function reverse (num)
    local rev = 0
    while num > 0 do
        rev = rev * 10
        rev = rev + (num % 10)
        num = math . floor (num / 10)
    end
    return (rev)
end
