#include <stdio.h>
#include "lib.h"

int main(void) {
    const int t = sum(4, 7);
    const int u = sub(8, 3);

    printf("4 + 7 = %d\n", t);
    printf("8 - 3 = %d\n", u);
    return 0;
}
