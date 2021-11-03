/*
 * Given a string 'str', return its reverse
 */
# include <stdlib.h>
# include <stdio.h>

char * reverse (char * str, size_t n) {
    char * rev;
    if ((rev = (char *) malloc ((n + 1) * sizeof (char))) == NULL) {
        perror ("Mallocing rev failed");
        exit (1);
    }
    for (size_t i = 0; i < n; i ++) {
        rev [n - 1 - i] = str [i];
    }
    rev [n] = '\0';

    return rev;
}

/*
 * Given a number, return its reverse
 */
long reverse (long number) {
    long reverse = 0;
    while (number > 0) {
        reverse *= 10;
        reverse += number % 10;
        number  /= 10;
    }
    return reverse;
}
