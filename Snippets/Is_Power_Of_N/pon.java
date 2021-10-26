//
// Return true if number is a power of n, that is, number == n ^ p
// for some non-negative integer p. Return false otherwise.
//
public static boolean is_power_of_n (int number, int n) {
    return number <  1     ? false
         : number == 1     ? true
         : number % n != 0 ? false
         : is_power_of_n (number / n, n);
}

public static boolean is_power_of_2 (int number) {
    return is_power_of_n (number, 2);
}
