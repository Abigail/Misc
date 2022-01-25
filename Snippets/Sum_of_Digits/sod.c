/*
 * Return the sum of the digits of all the numbers in the array 'numbers'.
 * We do this by taking each number, and repeatedly modding and dividing 
 * each by 10.
 */
# define BASE 10
short digitsum (size_t n, short * numbers) {
    short out = 0;
    char * tmp;
    for (size_t i = 0; i < n; i ++) {
        short number = numbers [i];
        while (number) {
            out    += number % BASE;
            number /= BASE;
        }
    }
    return (out);
}

# define BASE 10
short digit_sum1 (long n) {
    short out = 0;
    while (n) {
        out += n % BASE;
        n   /= BASE;
    }
}
