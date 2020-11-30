#!/opt/perl/bin/perl

use 5.032;

use strict;
use warnings;
no  warnings 'syntax';

use experimental 'signatures';
use experimental 'lexical_subs';

use Befunge::Interpreter;

my $program = shift // die "Usage $0: <program>";

my $interpreter = Befunge::Interpreter:: -> new;
   $interpreter -> get_befunge ($program);
   $interpreter -> process_befunge;


__END__
