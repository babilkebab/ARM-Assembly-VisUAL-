        ;       calcolare massimo e minimo con un solo loop

array   dcd     5, 7, 119, 9, 1, 22, 6
size    dcd     7

        mov     r0, #array
        ldr     r1, [r0];minimo
        ldr     r2, [r0];massimo
        mov     r3, #size
        ldr     r3, [r3] ;dimensione

ciclo   cmp     r3, #0
        beq     fine
        ldr     r4, [r0] ;elem
        cmp     r1, r4
        bgt     minimo
        cmp     r2, r4
        blt     massimo

agg     sub     r3, r3, #1
        add     r0, r0, #4
        b       ciclo

minimo  mov     r1, r4
        b       agg


massimo mov     r2, r4
        b       agg

fine    end