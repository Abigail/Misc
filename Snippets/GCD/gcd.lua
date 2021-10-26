--
-- Find the GCD, using Euclids algorithm
--    (https://en.wikipedia.org/wiki/Euclidean_algorithm#Implementations)
--
function gcd (a, b)
    if b >  a then return gcd (b, a) end
    if b == 0 then return a          end
                   return gcd (b, a % b)
end
