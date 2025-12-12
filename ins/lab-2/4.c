#include <stdio.h>
#include <math.h>

int isPrime(int n) {
    if (n <= 1) return 0;
    if (n == 2) return 1;
    if (n % 2 == 0) return 0;
    for (int i = 3; i <= sqrt(n); i += 2)
        if (n % i == 0) return 0;
    return 1;
}

int main() {
    int n;
    scanf("%d", &n);
    printf(isPrime(n) ? "%d is a PRIME number.\n" : "%d is a COMPOSITE number.\n", n);
    return 0;
}