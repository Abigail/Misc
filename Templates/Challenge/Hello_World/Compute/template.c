# include <stdlib.h>
# include <stdio.h>
# include <string.h>

/*
 * See ../README.md
 */

/*
 * Run as: cc -o ch-1.o ch-1.c; ./ch-1.o [plain | compute]
 */

# define PLAIN    0
# define COMPUTE  1

typedef int number;  /* Change if we want large numbers */
int main (int argc, char * argv []) {
    int type = PLAIN;
    if (argc > 1) {
        if (strncmp (argv [1], "compute", 8) == 0) {
            type = COMPUTE;
        }
    }

    if (type == PLAIN) {
        printf ("%TEXT\n");
    }
    if (type == COMPUTE) {
    }
    exit (0);
}
