--
-- Take a binary representation, return its decimal equivalent
--
function bin2dec (bin) {
    return (tonumber (bin, 2))
}


--
-- Given a decimal number, return its binary representation
--
function dec2bin (dec)
    local bin = {}
    local out = ""
    while dec > 0 do
        bin [#bin + 1] = dec % 2
        dec = math . floor (dec / 2)
    end
    for i = #bin, 1, -1 do
        out = out .. bin [i]
    end
    return out
end
