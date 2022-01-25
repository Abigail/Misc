#!/opt/perl/bin/perl

use 5.032;

use strict;
use warnings;
no  warnings 'syntax';

use experimental 'signatures';
use experimental 'lexical_subs';


sub is_fib ($n) {
    state $fib = {0 => 1, 1 => 1};
    state $f   = 0;
    state $g   = 1;
    while ($g < $n) {
        ($f, $g)   = ($g, $f + $g);
        $$fib {$g} = 1;
    }
    $$fib {$n}
}


while (<>) {
    say is_fib (0 + $_) || 0;
}
