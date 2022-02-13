.syntax unified
.cpu cortex - a7
.text

.global prim_e

prim_e: @int prim_e(int a)
        push    {fp, lr}
        add     fp, sp, #4
        sub     sp, sp, #16
        str     r0, [fp, #-16]
        ldr     r3, [fp, #-16]
        cmp     r3, #1
        bgt     .L2
        mov     r3, #0
        b       .L3
.L2:
        mov     r3, #2
        str     r3, [fp, #-8]
        b       .L4
.L6:
        ldr     r3, [fp, #-16]
        ldr     r1, [fp, #-8]
        mov     r0, r3
        bl      __aeabi_idivmod
        mov     r3, r1
        cmp     r3, #0
        bne     .L5
        mov     r3, #0
        b       .L3
.L5:
        ldr     r3, [fp, #-8]
        add     r3, r3, #1
        str     r3, [fp, #-8]
.L4:
        ldr     r3, [fp, #-16]
        sub     r2, r3, #1
        ldr     r3, [fp, #-8]
        cmp     r2, r3
        bge     .L6
        mov     r3, #1
.L3:
        mov     r0, r3
        sub     sp, fp, #4
        pop     {fp, lr}
        bx      lr