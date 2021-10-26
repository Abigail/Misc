#
# Find the GCD, using Euclids algorithm
#    (https://en.wikipedia.org/wiki/Euclidean_algorithm#Implementations)
#
function gcd () {
    local a=$1
    local b=$2
    if   ((b > a))
    then gcd $b $a
    elif ((b == 0))
    then gcd=$a
    else gcd $b $((a % b))
    fi
}

#
# Call as:  gcd $n $m; echo $gcd
#
