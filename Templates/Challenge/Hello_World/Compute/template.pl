#!/opt/perl/bin/perl

use 5.032;

use strict;
use warnings;
no  warnings 'syntax';

use experimental 'signatures';
use experimental 'lexical_subs';

#
# See ../README.md
#

#
# Run as: perl ch-1.pl [plain|fetch|compute]
#

my $TYPE_PLAIN   =  0;
my $TYPE_FETCH   =  1;
my $TYPE_COMPUTE =  2;

my $type = $TYPE_PLAIN;   # Default
   $type = $TYPE_FETCH   if @ARGV && $ARGV [0] eq "fetch";
   $type = $TYPE_COMPUTE if @ARGV && $ARGV [0] eq "compute";


if ($type == $TYPE_PLAIN) {
    say "%TEXT";
}
elsif ($type == $TYPE_FETCH) {
    use OEIS;
    $, = ", ";
    say oeis (XXX => 0);
}
elsif ($type == $TYPE_COMPUTE) {
}
