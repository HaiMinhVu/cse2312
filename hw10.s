/*
   Homework 10
   Hai Vu
*/

   .global _start

_start:
   mov r5, #10
_read:
   mov r7, #3
   mov r0, #0
   mov r2, #4
   ldr r1, =number
   swi 0

   bl subroutine
   mov r9, r7
  
   mov r7, #3
   mov r0, #0
   mov r2, #4
   ldr r1, =number
   swi 0
   
   bl subroutine
   mov r10, r7

   mov r3, #1
   ldr r6, =structures
   ldr r2, =outstring
_loop:
   cmp r3, #34
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
   cmp r5, r9
   blt _next
   cmp r5, r10
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

subroutine:
	mov r5, #2
	mov r6, #1
	mov r7, #0
	mov r8, #10
_loopsub:
	cmp r5, #0
	blt _out
	ldrb r3, [r1, r5]
	cmp r3, #0
	beq _nextsub
	cmp r3, #10
	beq _nextsub
	sub r3, r3, #48
	mul r3, r6, r3
	mul r6, r8, r6
	add r7, r7, r3
	sub r5, r5, #1
	bal _loopsub
_nextsub:
	sub r5, r5, #1
	b _loopsub
_out:
	bx lr


.data
outstring:
   .space 12
number:
   .space 4
structures:
   .asciz "Aishwarya  "
   .word 20
   .asciz "Alexis     "
   .word 614
   .asciz "Andrew     "
   .word 500
   .asciz "Bora       "
   .word 275
   .asciz "Caleb      "
   .word 957
   .asciz "Carlos     "
   .word 999
   .asciz "Christopher"
   .word 64
   .asciz "Daniel     "
   .word 807
   .asciz "Francisco  "
   .word 420
   .asciz "George     "
   .word 16
   .asciz "Gerve-endy "
   .word 80
   .asciz "Gustavo    "
   .word 89
   .asciz "Hai        "
   .word 203
   .asciz "Irving     "
   .word 507
   .asciz "Ivan       "
   .word 188
   .asciz "Jacob      "
   .word 597
   .asciz "Jake       "
   .word 430
   .asciz "James      "
   .word 929
   .asciz "Jamie      "
   .word 7
   .asciz "Jeovanni   "
   .word 117
   .asciz "Kashif     "
   .word 386
   .asciz "Kenny      "
   .word 649
   .asciz "Kevan      "
   .word 21
   .asciz "Kyra       "
   .word 289
   .asciz "Luis       "
   .word 179
   .asciz "Matthew    "
   .word 4
   .asciz "Micah      "
   .word 851
   .asciz "Nhan       "
   .word 117
   .asciz "Nicholas   "
   .word 790
   .asciz "Phuoc      "
   .word 33
   .asciz "Thomas     "
   .word 130
   .asciz "Travis     "
   .word 429
   .asciz "Warren     "
   .word 1
   .asciz "William    "
   .word 123

