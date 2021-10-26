# include <stdbool.h>

/*
 * Return true if number is a power of n, that is, number == n ^ p 
 * for some non-negative integer p. Return false otherwise.
 */
bool is_power_of_n (long long number, long long n) {
    return number <  1 ? false
         : number == 1 ? true
         : number % n  ? false
         : is_power_of_n (number / n, n);
}

bool is_power_of_2 (long long number) {
    return is_power_of_n (number, 2);
}
