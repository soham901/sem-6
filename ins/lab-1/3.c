#include <stdio.h>

int main() {
    char s[100];
    int k = 127;
    
    printf("Enter a string: ");
    scanf("%s", s);
    
    printf("Original: %s\n", s);
    
    for(int i = 0; s[i] != '\0'; i++) {
        printf("Char '%c': AND=%d, XOR=%d\n", s[i], s[i] & k, s[i] ^ k);
    }
    
    return 0;
}

