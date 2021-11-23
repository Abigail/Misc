#
# Take a binary representation, return its decimal equivalent
#
proc bin2dec bin {
    set dec 0
    foreach c [split $bin {}] {
        set dec [expr 2 * $dec + $c]
    }
    return $dec
}


#
# Given a decimal number, return its binary representation
#
proc dec2bin dec {
    set bin {}
    if {$dec == 0} {
        return 0
    }
    while {$dec > 0} {
        set bin [expr {$dec % 2}]$bin
        set dec [expr {$dec / 2}]
    }
    return $bin
}



for {set i 0} {$i < 16} {incr i} {
    set bin [dec2bin $i]
    set dec [bin2dec $bin]
    puts "$i $bin $dec"
}
