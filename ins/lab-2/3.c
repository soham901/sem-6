#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    FILE *file;
    char filename[100];
    char text[1000];
    int choice;
    
    printf("Enter filename: ");
    scanf("%s", filename);
    
    printf("1. Write to file\n2. Read from file\nEnter choice: ");
    scanf("%d", &choice);
    
    if (choice == 1) {
        file = fopen(filename, "w");
        if (file == NULL) {
            printf("Error opening file for writing!\n");
            return 1;
        }
        
        printf("Enter text to write (enter 'END' on new line to finish):\n");
        getchar();
        
        while (fgets(text, sizeof(text), stdin) != NULL) {
            if (strcmp(text, "END\n") == 0) {
                break;
            }
            fputs(text, file);
        }
        
        fclose(file);
        printf("Text written to file successfully!\n");
        
    } else if (choice == 2) {
        file = fopen(filename, "r");
        if (file == NULL) {
            printf("Error opening file for reading!\n");
            return 1;
        }
        
        printf("File contents:\n");
        printf("------------------\n");
        
        while (fgets(text, sizeof(text), file) != NULL) {
            printf("%s", text);
        }
        
        printf("------------------\n");
        fclose(file);
        
    } else {
        printf("Invalid choice!\n");
    }
    
    return 0;
}