#
# Given a year, return its "Doomsday" value.
# 0 -> Sunday, 6 -> Saturday
#

my $SUNDAY    = 0;
my $MONDAY    = 1;
my $TUESDAY   = 2;
my $WEDNESDAY = 3;
my $THURSDAY  = 4;
my $FRIDAY    = 5;
my $SATURDAY  = 6;

sub doomsday ($year) {
    use integer;
    my $anchor   = ($TUESDAY, $SUNDAY, $FRIDAY, $WEDNESDAY) [($year / 100) % 4];
    my $y        = $year % 100;
    my $doomsday = ((($y / 12) + ($y % 12) + (($y % 12) / 4)) + $anchor) % 7;
    $doomsday;
}

#
# Given a year, return whether it's a leap year or not
#
sub is_leap ($year) {
    ($year % 400 == 0) || ($year % 4 == 0) && ($year % 100 != 0)
}

#
# Given a date (year, month, day), return the day of the week.
# 0 -> Sunday, 6 -> Saturday
#
sub day_of_week ($year, $month, $day) {
    use List::Util qw [sum];

    my @days = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
    my $doy  = $day + sum @days [0 .. ($month - 2)];
       $doy ++ if $month > 2 && is_leap ($year);
    #
    # Weekday of Dec 31, the year before
    #
    my $dec_31 = (doomsday ($year - 1) - 12 + 31) % 7;

    ($dec_31 + $doy) % 7;
}
