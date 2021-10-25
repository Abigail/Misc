#
# Find the GCD, using Euclids algorithm
#    (https://en.wikipedia.org/wiki/Euclidean_algorithm#Implementations)
#
function gcd () {
    local a=$1
    local b=$2
    local t=0
    while ((b != 0))
    do    ((t = b))
          ((b = a % b))
          ((a = t))
    done
    ((gcd = a))
}


#
# Call as:  gcd $n $m; echo $gcd
#
