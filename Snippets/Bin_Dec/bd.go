package main
//
// Take a binary representation, return its decimal equivalent
//

import (
    "fmt"
    "strconv"
)

func bin2dec (bin string) int64 {
    dec, _ := strconv . ParseInt (bin, 2, 0)
    return dec
}

func dec2bin (dec int64) string {
    return (strconv . FormatInt (dec, 2))
}

func main () {
    var i int64
    for i = 0; i < 16; i ++ {
        bin := dec2bin (i)
        dec := bin2dec (bin)
        fmt . Printf ("i = %2d; bin = %4s; dec = %2d\n", i, bin, dec)
    }
}
