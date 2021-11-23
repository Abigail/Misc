# include <stdlib.h>
# include <stdio.h>
# include <inttypes.h>
/*
 * Take a binary representation, return its decimal equivalent
 */
long bin2dec (char * bin) {
    return strtol (bin, NULL, 2);
}


/*
 * Given a decimal number, return its binary representation
 */
char * dec2bin (long dec) {
    char * bin;
    if ((bin = (char *) malloc (32 * sizeof (char))) == NULL) {
        perror ("Malloc failed");
        exit (1);
    }
    if (dec == 0) {     /* Special case dec == 0 */
        bin [0] =  '0';
        bin [1] = '\0';
        return (bin);
    }
    size_t i =  0;
    while (dec) {
        bin [i ++] = '0' + dec % 2;
        dec /= 2;
    }
    /*
     * Reverse the string
     */
    for (size_t j = 0; j < i / 2; j ++) {
        char t = bin [j];
        bin [j] = bin [i - j - 1];
        bin [i - j - 1] = t;
    }

    bin [i] = '\0';
    return (bin);
}


int main () {
    for (size_t i = 0; i < 16; i ++) {
        char * bin = dec2bin (i);
        long   dec = bin2dec (bin);
        printf ("i = %2zu; bin = %4s; dec = %2ld\n", i, bin, dec);
        free (bin);
    }
    return (0);
}
