//
// Given a string 'str', return its reverse
//
static String _reverse (String str) {
    return new StringBuffer (str) . reverse () . toString ();
}

//
// Given a number 'num', return its reverse
//
static int reverse (int num) {
    int rev = 0;
    while (num > 0) {
        rev *= 10;
        rev += num % 10;
        num /= 10;
    }
    return (rev);
}
