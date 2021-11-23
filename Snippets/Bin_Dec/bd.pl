#
# Take a binary representation, return its decimal equivalent
#
function bin2dec ($bin) {
    oct "0b$bin"
}


#
# Given a decimal number, return its binary representation
#
function dec2bin ($dec) {
    sprintf "%b" => $dec
}

