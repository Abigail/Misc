--
-- Find the GCD, using Euclids algorithm
--    (https://en.wikipedia.org/wiki/Euclidean_algorithm#Implementations)
--
function gcd (a, b)
    while b > 0 do
        a, b = b, a % b
    end
    return a
end
