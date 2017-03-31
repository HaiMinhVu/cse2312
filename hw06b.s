/*
    Hai Vu
    Homework #6
*/

    .global _start

_start:
    mov r5, #0
_read:
    mov r7, #3
    mov r0, #0
    mov r2, #18
    ldr r1, =string
    swi 0
_loop:
    ldrb r4, [r1]
    cmp r4, #'\n'
    beq _exit
    and r3, r4, #0b1111
    add r5, r5, r3
    add r1, r1, #1
    bal _loop
_exit:
    mov r0, r5
    mov r7, #1
    swi 0
.data
string:
    .space 18
