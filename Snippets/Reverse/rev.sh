#
# Given a string 'str', return its reverse
#
function reverse () {
    local str=$1
    local len=${#str}
    local rev=""
    for ((i = len - 1; i >= 0; i --))
    do  rev=$rev${str:$i:1}
    done
    reverse=$rev
}
