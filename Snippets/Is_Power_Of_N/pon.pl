#
# Return 1 if number is a power of n, that is, number == n ^ p
# for some non-negative integer p. Return 0 otherwise.
#
sub is_power_of_n ($number, $n) {
    use integer;
    $number <  1 ? 0
  : $number == 1 ? 1
  : $number % $n ? 0
  : is_power_of_n ($number / $n, $n)
}

sub is_power_of_2 ($number) {
    is_power_of_n ($number, 2)
}
