int gcd(int a, int b) {
    if (b == 0) {
        return a;
    } else {
        return gcd(b, a % b);
    }
}

int reduce(int& num, int& denom) {
    if (num <= 0 || denom <= 0) {
        return 0;
    }
    int gcd_val = gcd(num, denom);
    num /= gcd_val;
    denom /= gcd_val;
    return 1;
}
