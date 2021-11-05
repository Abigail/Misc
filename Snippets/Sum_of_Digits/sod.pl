#
# Return the sum of the digits of the set of given numbers.
#
use List::Util qw [sum];
sub digitsum (@n) {sum "@n" =~ /\d/ag}
