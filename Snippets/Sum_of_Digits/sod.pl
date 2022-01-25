#!/opt/perl/bin/perl

use 5.032;

use strict;
use warnings;
no  warnings 'syntax';

use experimental 'signatures';
use experimental 'lexical_subs';


#
# Return the sum of the digits of the set of given numbers.
#
use List::Util qw [sum];
sub digitsum  (@n) {sum "@n" =~ /\d/ag}   # Multiple numbers
sub digitsum1 ($number) {
    my $sum  =  0;
    my $base = 10;
    while ($number > 0) {
        use integer;
        $sum    += $number % $base;
        $number /= $base;
    }
    return $sum;
}


while (<>) {
    my @n = /[0-9]+/g;
    if (@n == 1) {
        say digitsum1 $n [0]
    }
    else {
        say digitsum  @n
    }
}

__END__
