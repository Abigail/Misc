//
// Given a string 'str', return its reverse
//

function reverse (str) {
    return (str . split ("") . reverse () . join (""))
}


//
// Given a number 'num', return its reverse
//
function reverse (num) {
    let rev = 0
    while (num > 0) {
        rev *= 10
        rev += num % 10
        num  = Math . floor (num / 10)
    }
    return (rev)
}
