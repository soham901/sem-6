#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    FILE *f;
    char fn[100], t[1000];
    int c;

    scanf("%s%d", fn, &c);

    if (c == 1) {
        f = fopen(fn, "w");
        if (!f) return 1;

        getchar();
        while (fgets(t, sizeof(t), stdin) && strcmp(t, "END\n")) 
            fputs(t, f);
        
        fclose(f);
    } 
    else if (c == 2) {
        f = fopen(fn, "r");
        if (!f) return 1;

        while (fgets(t, sizeof(t), f))
            printf("%s", t);
        
        fclose(f);
    }

    return 0;
}