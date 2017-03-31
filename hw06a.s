/*
    Hai Vu
    Homework #6
*/

    .global _start

_start:
    mov r3, #1
    mov r5, #0
_read:
    cmp r3, #5
    bgt _exit
    mov r7, #3
    mov r0, #0
    mov r2, #2
    ldr r1, =string
    swi 0
_add:
    ldr r4, [r1]
    sub r4, r4, #48
    add r5, r5, r4
    add r3, r3, #1
    bal _read
_exit:
    mov r0, r5
    mov r7, #1
    swi 0
.data
string:
    .space 2
