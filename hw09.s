/*
   Homework 9
   Hai Vu
*/

   .global _start

_start:
   mov r5, #10
   mov r9, #0
   mov r10, #10
_read:
   mov r7, #3
   mov r0, #0
   mov r2, #2
   ldr r1, =number
   swi 0
   ldr r3, [r1]
   sub r3, r3, #48
   mul r11, r3, r5
   add r9, r9, r11
   mov r7, #3
   mov r0, #0
   mov r2, #2
   ldr r1, =number
   swi 0
   ldr r4, [r1]
   sub r4, r4, #48
   mul r12, r4, r5
   add r10, r10, r12
   mov r3, #1
   ldr r6, =structures
   ldr r2, =outstring
_loop:
   cmp r3, #32
   bgt _exit
   b _loop1
_loop1:
   ldrb r4, [r6], #1
   strb r4, [r2]
   cmp r4, #0
   beq _readnum
   add r2, r2, #1
   bal _loop1

_readnum:
   ldr r5, [r6], #4
   cmp r5, #40
   blt _next
   cmp r5, #60
   bgt _next
   b _write
_write:
   mov r7, #10
   strb r7, [r2]
   mov r7, #4
   mov r0, #1
   mov r2, #12
   ldr r1, =outstring
   swi 0
   add r3, r3, #1
   ldr r2, =outstring
   b _loop

_next:
   add r3, r3, #1
   ldr r2, =outstring
   b _loop
_exit:
   mov r7, #1
   swi 0
.data
outstring:
   .space 12
number:
   .space 2
structures:
   .asciz "Aishwarya  "
   .word 90
   .asciz "Alexis     "
   .word 42
   .asciz "Andrew     "
   .word 47
   .asciz "Bora       "
   .word 58
   .asciz "Caleb      "
   .word 64
   .asciz "Carlos     "
   .word 10
   .asciz "Christopher"
   .word 12
   .asciz "Daniel     "
   .word 3
   .asciz "Francisco  "
   .word 32
   .asciz "George     "
   .word 31
   .asciz "Gerve-endy "
   .word 21
   .asciz "Gustavo    "
   .word 90
   .asciz "Hai        "
   .word 57
   .asciz "Irving     "
   .word 37
   .asciz "Ivan       "
   .word 46
   .asciz "Jacob      "
   .word 9
   .asciz "Jake       "
   .word 20
   .asciz "James      "
   .word 7
   .asciz "Jamie      "
   .word 36
   .asciz "Jeovanni   "
   .word 80
   .asciz "Kashif     "
   .word 61
   .asciz "Kenny      "
   .word 82
   .asciz "Kevan      "
   .word 89
   .asciz "Kyra       "
   .word 60
   .asciz "Luis       "
   .word 7
   .asciz "Matthew    "
   .word 13
   .asciz "Micah      "
   .word 85
   .asciz "Nhan       "
   .word 37
   .asciz "Nicholas   "
   .word 25
   .asciz "Phuoc      "
   .word 45
   .asciz "Thomas     "
   .word 65
   .asciz "Travis     "
   .word 33
   .asciz "Warren     "
   .word 9
   .asciz "William    "
   .word 72
