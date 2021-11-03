#
# Given a string 'str', return its reverse
#
def reverse (str):
    return (str [::-1])

#
# Given a number 'num', return its reverse
#
def reverse (num):
    rev = 0
    while num > 0:
        rev = rev * 10 + (num % 10)
        num = num // 10
    return rev
