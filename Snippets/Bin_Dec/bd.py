#
# Take a binary representation, return its decimal equivalent
#
def bin2dec (bin):
    return (int (bin, 2))


#
# Given a decimal number, return its binary representation
#
def dec2bin (dec):
    return (bin (dec) [2:])



for i in range (16):
    mybin = dec2bin (i)
    mydec = bin2dec (mybin)
    print (i, " ", mybin, " ", mydec)
