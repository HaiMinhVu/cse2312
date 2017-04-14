/*
    Hai Vu
    Homework #8
*/
    .global _start
_start:
    mov r6, #1
    ldr r1, =string
    ldr r2, =out_string
_loop:
    cmp r6, #8
    bgt _write
    ldrb r3, [r1], #1
    mov r5, r3
    lsr r5, #4
    add r5, r5, #48
    strb r5, [r2], #1
    and r4, r3, #0b1111
    add r4, r4, #48
    strb r4, [r2], #1
    add r6, r6, #1
    bal _loop

_write:
    mov r7, #4
    mov r0, #1
    mov r2, #16
    ldr r1, =out_string
    swi 0

_exit:
    mov r7, #1
    swi 0

.data
string:
    .ascii "aqi$pd8U"
out_string:
    .space 16
