# Tests simple reference marking. Arg1/rdi should be marked as a reference
.intel_syntax noprefix
.section .text
    .global main

foo1:
    lea rax, [rdi + 0x20]
    mov rax, [rax]
    ret

main:
    call foo1
    ret
