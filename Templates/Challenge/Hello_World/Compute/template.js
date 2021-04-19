#!/usr/local/bin/node

//
// See ../README.md
//

//
// Run as: node ch-1.js [plain | compute]
//

let PLAIN   =  0
let COMPUTE =  1

let type = PLAIN

if (process . argv . length > 2 &&
    process . argv [2] == "compute") {
    type = COMPUTE
}

if (type == PLAIN) {
    console . log ("%TEXT")
}

if (type == COMPUTE) {
}
