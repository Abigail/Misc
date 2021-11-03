//
// Given a string 'str', return its reverse
//
func reverse (str string) string {
    runes := [] rune (str)
    for i, j := 0, len (runes) - 1; i < j; i, j = i + 1, j - 1 {
        runes [i], runes [j] = runes [j], runes [i]
    }
    return (string (runes))
}

//
// Given a number 'num', return its reverse
//
func reverse (num int) int {
    rev := 0
    for num > 0 {
        rev *= 10
        rev += num % 10
        num /= 10
    }
    return rev
}
