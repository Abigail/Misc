
func digit_sum (n int) int {
    sum  := 0
    base := 10
    for n > 0 {
        sum += n % base
        n   /= base
    }
    return (sum)
}
