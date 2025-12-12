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
    int s, e, c = 0;
    scanf("%d%d", &s, &e);
    for (int i = s; i <= e; i++)
        if (isPrime(i)) {
            printf("%d ", i);
            if (++c % 10 == 0) printf("\n");
        }
    if (c) printf("\nTotal prime numbers: %d\n", c);
    else printf("No prime numbers found in this range.\n");
    return 0;
}