/*
 * Helper method to allocate memory for a string.
 */
char * malloc_char (size_t size) {
    char * string = (char *) malloc (size * sizeof (char));
    if (string == NULL) {
        perror (NULL);
        exit (1);
    }
    return (string);
}             
