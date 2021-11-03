#
# Given a string 'str', return its reverse
# Just for reverse, as we can use the body instead.
#
proc reverse str {
    string reverse str
}


#
# Given a number 'num', return its reverse
#
proc reverse num {
    set rev 0
    while {$num > 0} {
        set rev [expr $rev * 10]
        set rev [expr $rev + [expr $num % 10]]
        set num [expr $num / 10]
    }
    return $rev
}
