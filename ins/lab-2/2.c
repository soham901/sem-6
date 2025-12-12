#include <stdio.h>

// Minimized implementations
int myStrlen(const char *str) {
    int len = 0;
    while (*str++) len++;
    return len;
}

void myStrcat(char *dest, const char *src) {
    while (*dest) dest++;
    while ((*dest++ = *src++));
}

int myStrcmp(const char *str1, const char *str2) {
    while (*str1 && *str2 && *str1 == *str2) { str1++; str2++; }
    return *str1 - *str2;
}

int main() {
    char str1[100], str2[100];
    
    printf("Enter first string: ");
    fgets(str1, sizeof(str1), stdin);
    str1[myStrlen(str1) - 1] = '\0';  // Remove newline
    
    printf("Enter second string: ");
    fgets(str2, sizeof(str2), stdin);
    str2[myStrlen(str2) - 1] = '\0';  // Remove newline
    
    printf("Length of first string: %d\n", myStrlen(str1));
    printf("Length of second string: %d\n", myStrlen(str2));
    printf("Comparison result: %d\n", myStrcmp(str1, str2));
    
    myStrcat(str1, " ");
    myStrcat(str1, str2);
    printf("Concatenated string: %s\n", str1);
    
    return 0;
}