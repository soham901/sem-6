#include<stdio.h>

int main() {
    FILE *f1, *f2;
    char c, p;
    f1 = fopen("input.txt", "r");
    f2 = fopen("temp.txt", "w");
    while((c = fgetc(f1)) != EOF) {
        if (c == '/') {
            c = fgetc(f1);
            if (c == '/') {
                while((c = fgetc(f1)) != '\n' && c != EOF) {
                    // skip single line comment
                }
            }
            else if(c == '*') {
                p = c;
                c = fgetc(f1);
                while (p != '*' || c != '/') {
                    p = c;
                    c = fgetc(f1);
                    if (c == EOF) break;
                }
                printf("\nMultiline comment ignored\n");
            }
            else {
                fputc('/', f2);
                fputc(c, f2);
            }
        }
        else {
            fputc(c, f2);
        }
    }
    fclose(f1);
    fclose(f2);
    return 0;
}
