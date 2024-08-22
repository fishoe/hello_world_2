#include <stdio.h>
#include "lib.h"

int main(void) {
    const int t = sum(4, 21);
    const int u = sub(8, 3);

    printf("4 + 7 = %d\n", t);
    printf("8 - 3 = %d\n", u);
    printf("4 * 7 = %d\n", mul(4, 7));
    return 0;
}
