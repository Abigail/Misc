#!/usr/local/bin/node

//
// See ../README.md
//

//
// Run as: node ch-1.js < input-file
//

require ('readline')
. createInterface ({input: process . stdin})   
. on ('line', _ => main (_))
;


function main (_) {
    console . log (_);
}
