#include <nds.h>
#include <stdio.h>

int main(void) {
    // 上画面をテキストコンソールに
    consoleDemoInit();

    iprintf("Hello Nintendo DS!\n");
    iprintf("Built with GitHub Actions\n");

    while (1) {
        swiWaitForVBlank();
    }

    return 0;
}

