package __PACKAGE__

use 5.032;

use strict;
use warnings;
no  warnings 'syntax';

use experimental 'signatures';
use experimental 'lexical_subs';

use Hash::Util::FieldHash qw [fieldhash];

sub new  ($class) {bless do {\my $v} => $class}
sub init ($self) {
    $self
}


