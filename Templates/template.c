# include <stdlib.h>
# include <stdio.h>
# include <string.h>

int main (void) {
    char *  line    = NULL;
    size_t  len     = 0;

    while (getline (&line, &len, stdin) != -1) {
        char * line_ptr = line;
    }
    free (line);

    return (0);
}
