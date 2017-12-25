# Tests simple reference marking. Arg1/rdi should be marked as a reference
.intel_syntax noprefix
.section .text
    .global main

foo1:
    lea rax, [rdi + 0x20]
    mov rax, [rax]
    ret

foo2:
    lea rdi, [rdi + 0x20]
    call foo1
    ret

main:
    call foo2
    ret
