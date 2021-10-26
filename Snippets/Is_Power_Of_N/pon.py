#
# Return True if number is a power of n, that is, number == n ^ p
# for some non-negative integer p. Return False otherwise.
#
def is_power_of_n (number, n):
    if number < 1:
        return False
    if number == 1:
        return True
    if number % n:
        return False
    return is_power_of_n (number / n, n)

def is_power_of_2 (number):
    return is_power_of_n (number, 2)
