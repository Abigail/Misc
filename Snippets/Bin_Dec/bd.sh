#
# Take a binary representation, return its decimal equivalent
#
function bin2dec () {
    local bin=$1
    local i
    ((dec = 0))
    for ((i = 0; i < ${#bin}; i ++)) {
        ((dec = 2 * dec + ${bin:$i:1}))
    }
}

#
# Given a decimal number, return its binary representation
#
function dec2bin () {
    local dec=$1
    bin=""
    while ((dec > 0))
    do    bin=$((dec % 2))$bin
          ((dec /= 2))
    done
}
