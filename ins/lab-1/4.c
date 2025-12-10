#include <stdio.h>

int main() {
    int n, r, d;
    
    printf("Enter a number: ");
    scanf("%d", &n);
    
    printf("Enter number of rotations: ");
    scanf("%d", &r);
    
    printf("Enter direction (1=left, 2=right): ");
    scanf("%d", &d);
    
    r %= 32;
    
    if(d == 1) {
        printf("Left circular rotation: %d\n", (n << r) | (n >> (32 - r)));
    } else {
        printf("Right circular rotation: %d\n", (n >> r) | (n << (32 - r)));
    }
    
    return 0;
}

