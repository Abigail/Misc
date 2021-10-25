//
// Find the GCD, using Euclids algorithm
//    (https://en.wikipedia.org/wiki/Euclidean_algorithm#Implementations)
//
function gcd (a, b) {
    while (b > 0) {
        [a, b] = [b, a % b]
    }
    return (a)
}
