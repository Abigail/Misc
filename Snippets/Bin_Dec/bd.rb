#
# Take a binary representation, return its decimal equivalent
#
def bin2dec (bin)
    return bin . to_i(2)
end


#
# Given a decimal number, return its binary representation
#
def dec2bin (dec)
    return dec . to_s(2)
end



for i in 0 .. 15 do
    bin = dec2bin (i)
    dec = bin2dec (bin)
    puts (i . to_s + " " + bin + " " + dec . to_s)
end
