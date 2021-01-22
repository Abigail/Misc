#!/usr/local/bin/node


require ('readline')
. createInterface ({input: process . stdin})   
. on ('line', _ => main (_))
;


function main (_) {
    console . log (_);
}
