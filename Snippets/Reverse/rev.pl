#
# Given a string 'str', return its reverse
# Works for numbers as well.
#
sub str_reverse ($str) {
    reverse (str)
}


#
# Given a number 'num', return its reverse
#
sub int_reverse ($num) {
    my $num = shift;
    use integer;
    my $rev = 0;
    while ($num > 0) {
        $rev *= 10;
        $rev += $num % 10;
        $num /= 10;
    }
    $rev;
}
