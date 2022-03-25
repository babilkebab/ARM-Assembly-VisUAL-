       ;a      partire da un vettore sorgente a, costruire un nuovo vettore b che contiene solo gli elementi di a divisibili per 4

arr1   dcd     13, 12, 8, 7, 24
size1  dcd     5
arr2   fill    20

       mov     r0, #arr1 ;ptr arr1
       mov     r1, #arr2 ;ptr arr2
       mov     r2, #size1
       ldr     r2, [r2] ;dim

ciclo  cmp     r2, #0
       beq     fine
       ldr     r3, [r0] ;elem
       ;PER    CONTROLLARE SE DIV PER 4, TESTARE BIT 0 ED 1
       mov     r4, #3 ;maschera
       and     r5, r3, r4
       cmp     r5, #0
       beq     copy

agg    add     r0, r0, #4
       sub     r2, r2, #1
       b       ciclo


copy   str     r3, [r1]
       add     r1, r1, #4
       b       agg

fine   end