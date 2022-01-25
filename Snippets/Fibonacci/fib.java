import java.util.Map;

public class main {
    private static int fib_prev = 0;
    private static int fib_last = 1;
    private static Map <Integer, Boolean> fib =
         new Hashtable <Integer, Boolean> ();

    private static void fib_init () {
        fib . put (fib_prev, true);
        fib . put (fib_last, true);
    }

    private static boolean is_fib (int n) {
        while (fib_last < n) {
            int t     = fib_last;
            fib_last += fib_prev;
            fib_prev  = t;
            fib . put (fib_last, true);
        }
        return (fib . containsKey (n));
    }
}
