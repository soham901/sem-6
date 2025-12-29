#include <stdio.h>
#include <string.h>
#include <ctype.h>

void encrypt(char *text, int shift) {
    for (int i = 0; text[i] != '\0'; i++) {
        if (isalpha(text[i])) {
            char base = isupper(text[i]) ? 'A' : 'a';
            text[i] = (text[i] - base + shift) % 26 + base;
        }
    }
}

void decrypt(char *text, int shift) {
    encrypt(text, 26 - shift);
}

int main() {
    char text[100];
    int shift;

    printf("Enter text: ");
    fgets(text, sizeof(text), stdin);
    text[strcspn(text, "\n")] = '\0';

    printf("Enter shift value: ");
    scanf("%d", &shift);

    printf("\nOriginal: %s\n", text);

    char encrypted[100];
    strcpy(encrypted, text);
    encrypt(encrypted, shift);
    printf("Encrypted: %s\n", encrypted);

    decrypt(encrypted, shift);
    printf("Decrypted: %s\n", encrypted);

    return 0;
}
