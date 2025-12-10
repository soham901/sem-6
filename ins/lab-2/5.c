#include <stdio.h>
#include <math.h>

int isPrime(int n) {
    if (n <= 1) return 0;
    if (n == 2) return 1;
    if (n % 2 == 0) return 0;
    
    for (int i = 3; i <= sqrt(n); i += 2) {
        if (n % i == 0) {
            return 0;
        }
    }
    return 1;
}

int main() {
    int start, end;
    
    printf("Enter start of range: ");
    scanf("%d", &start);
    
    printf("Enter end of range: ");
    scanf("%d", &end);
    
    printf("Prime numbers between %d and %d:\n", start, end);
    
    int count = 0;
    for (int i = start; i <= end; i++) {
        if (isPrime(i)) {
            printf("%d ", i);
            count++;
            if (count % 10 == 0) {
                printf("\n");
            }
        }
    }
    
    if (count == 0) {
        printf("No prime numbers found in this range.\n");
    } else {
        printf("\nTotal prime numbers: %d\n", count);
    }
    
    return 0;
}