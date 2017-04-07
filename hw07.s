/*
    Hai Vu
    Homework #7
*/
    .global _start

_start:
    mov r2, #1
    mov r7, #4
    mov r3, #0
    mov r4, #0
    mov r5, #0
    ldr r1, =array
    ldr r6, [r1]
_loop1:
    cmp r2, #4
    bgt _loop2
    add r3, r3, r6
    ldr r6, [r1, r7]
    add r7, r7, #4
    add r2, r2, #1
    bal _loop1
_loop2:
    cmp r2, #8
    bgt _loop3
    add r4, r4, r6
    ldr r6, [r1, r7]
    add r7, r7, #4
    add r2, r2, #1
    bal _loop2
_loop3:
    cmp r2, #12
    bgt _compare1
    add r5, r5, r6
    ldr r6, [r1, r7]
    add r7, r7, #4
    add r2, r2, #1
    bal _loop3
_compare1:
    cmp r3, r4
    blt _r3smaller
    cmp r3, r5
    blt _resultr3
    mov r0, r3
    mov r7, #1
    swi 0
_r3smaller:
    cmp r4, r5
    blt _r4smaller
    mov r0, r4
    mov r7, #1
    swi 0
_r4smaller:
    mov r0, r5
    mov r7, #1
    swi 0
_resultr3:
    mov r0, r5
    mov r7, #1
    swi 0
_exit:
    mov r7, #1
    swi 0

.data
array:
    .word 12, 10, 3, 0
    .word 5, 0, 16, 22
    .word 7, 15, 0, 10
