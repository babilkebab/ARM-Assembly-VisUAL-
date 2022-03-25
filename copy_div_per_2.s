        ;       dato un array, copia su un nuovo array di tutti gli elementi divisibili per 2 (copia numeri pari)

arr1    dcd     12, 7, 6, 20, 5, 9, 14
size1   dcd     7
arr_ris fill    28


        mov     r0, #arr1 ;ptr arr1
        mov     r1, #arr_ris ;ptr arr2
        mov     r2, #size1 ; dim
        ldr     r2, [r2]
        mov     r3, #1 ;per testare bit 0

ciclo   cmp     r2, #0
        beq     fine
        ldr     r4, [r0]
        and     r5, r4, r3 ;in r5 risultato and
        cmp     r5, #0
        beq     copy

agg     sub     r2, r2, #1
        add     r0, r0, #4
        b       ciclo


copy    str     r4, [r1]
        add     r1, r1, #4
        b       agg

fine    end