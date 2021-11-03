#
# Given a string 'str', return its reverse
#
function reverse (str) {
    x = ""
    for (i = length (str); i != 0; i --) {
        x = x substr (str, i, 1)
    }
    return x
}
