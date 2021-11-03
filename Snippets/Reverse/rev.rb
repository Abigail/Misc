#
# Given a string 'str', return its reverse
#
def reverse (str)
    return (str . reverse)
end

#
# Given a number 'num', return its reverse
#
def reverse (num)
    rev = 0
    while num > 0
        rev *= 10
        rev += num % 10
        num /= 10
    end
    return rev
end
