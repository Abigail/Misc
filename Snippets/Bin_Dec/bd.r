#
# Take a binary representation, return its decimal equivalent
#
bin2dec <- function (bin) {
    return (strtoi (bin, 2))
}


#
# Given a decimal number, return its binary representation
#
dec2bin <- function (dec) {
    return (as.integer (paste (as.integer (rev (intToBits (dec))),
                               collapse = "")))
}


