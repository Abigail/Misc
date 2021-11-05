//
// Return the sum of the digits of the set of given numbers.
//
function digit_sum (numbers) {
    let sum = 0
    numbers . forEach (number => {
        while (number > 0) {
            sum += number % 10
            number = Math . floor (number / 10)   
        }
    })
    return sum
}
