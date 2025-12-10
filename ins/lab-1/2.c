#include <stdio.h>

int main() {
    int x, y;
    
    printf("Enter two integers: ");
    scanf("%d %d", &x, &y);
    
    printf("Bitwise AND: %d & %d = %d\n", x, y, x & y);
    printf("Bitwise OR:  %d | %d = %d\n", x, y, x | y);
    printf("Bitwise XOR: %d ^ %d = %d\n", x, y, x ^ y);
    printf("Bitwise NOT: ~%d = %d\n", x, ~x);
    
    return 0;
}

