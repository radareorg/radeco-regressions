extern int main();
void _start() {
    main();
    asm("mov %eax, 0x1;"
        "xor %rbx, %rbx;"
        "int 0x80;"
       );
}

