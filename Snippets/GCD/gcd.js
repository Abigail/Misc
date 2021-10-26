//
// Find the GCD, using Euclids algorithm
//    (https://en.wikipedia.org/wiki/Euclidean_algorithm#Implementations)
//
function gcd (a, b) {
    if (b >  a) {return gcd (b, a)}
    if (b == 0) {return a}
                 return gcd (b, a % b)
}
