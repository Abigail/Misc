package main

//
// See https://theweeklychallenge.org/blog/perl-weekly-challenge-000
//

//
// Run as: go run ch-1.go < input-file
//

import (
    "fmt"
    "bufio"
    "os"
)

func main () {
    var reader = bufio . NewReader (os. Stdin)
    for {
        var text, err = reader . ReadString ('\n')
        if (err != nil) {
            break
        }
    }
}
