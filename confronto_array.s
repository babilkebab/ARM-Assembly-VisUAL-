        ;       dati due array, verificare se sono uguali

array1  dcd     7, 11, 5, 6, 20, 5
array2  dcd     7, 11, 5, 6, 20, 5
size1   dcd     6
size2   dcd     6

        mov     r0, #array1 ;ptr primo array
        mov     r1, #array2 ;ptr secondo array
        mov     r2, #1 ;SE R2 = 1, SONO UGUALI; SE R2 = 0 SONO DIVERSI!!!
        mov     r3, #size1
        mov     r4, #size2
        ldr     r3, [r3]
        ldr     r4, [r4]
        cmp     r3, r4
        bne     agg_reg


ciclo   
        cmp     r3, #0 ;dimensione1
        beq     fine
        ldr     r5, [r0] ;elem arr1
        ldr     r6, [r1] ;elem arr2
        cmp     r5, r6
        bne     agg_reg
        sub     r3, r3, #1
        add     r0, r0, #4
        add     r1, r1, #4
        b       ciclo

agg_reg 
        mov     r2, #0
        end

fine    
        end