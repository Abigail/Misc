//
// Given a year, return its "Doomsday" value.
// 0 -> Sunday, 6 -> Saturday
//

let SUNDAY    = 0
let MONDAY    = 1
let TUESDAY   = 2
let WEDNESDAY = 3
let THURSDAY  = 4
let FRIDAY    = 5
let SATURDAY  = 6

function doomsday (year) {
    let anchor   = [TUESDAY, SUNDAY, FRIDAY, WEDNESDAY]
                   [Math . floor (year / 100) % 4]
    let y        = year % 100
    let doomsday = ((Math . floor  (y / 12) + (y % 12) +
                     Math . floor ((y % 12) / 4)) + anchor) % 7
    return (doomsday)
}

//
// Given a year, return whether it's a leap year or not
//
function is_leap (year) {
    return ((year % 400 == 0) || (year % 4 == 0 && year % 100 != 0))
}

//
// Given a date (year, month, day), return the day of the week.
// 0 -> Sunday, 6 -> Saturday
//
function day_of_week (year, month, day) {
    let days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    let doy  = day
    for (let i = 0; i < month - 1; i ++) {
        doy += days [i]
    }
    if (month > 2 && is_leap (year)) {
        doy ++
    }

    let dec_31 = (doomsday (year - 1) - 12 + 31) % 7

    return ((dec_31 + doy) % 7)
}
