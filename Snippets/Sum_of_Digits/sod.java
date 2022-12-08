public class main {
    private static int digit_sum (int n) {
        int sum  =  0;
        int base = 10;
        while (n > 0) {
            sum += n % base;
            n    = (int) Math . floor (n / base);
        }
        return (sum);
    }
}
