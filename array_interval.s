       ;dato   un array a[] copiare su un nuovo array tutti gli elementi compresi in un intervallo dato

arr1   dcd     14, 22, 15, 47, 54, 26
size1  dcd     6
arr2   fill    24


       mov     r0, #arr1 ;ptr arr1
       mov     r1, #arr2 ;ptr arr2
       mov     r2, #size1
       ldr     r2, [r2] ;size
       mov     r3, #17 ;interval1
       mov     r4, #51 ;interval2

ciclo  cmp     r2, #0
       beq     fine
       ldr     r5, [r0] ;elem
       cmp     r5, r3
       bgt     cmp2
       b       agg

cmp2   cmp     r5, r4
       blt     copy

agg    add     r0, r0, #4
       sub     r2, r2, #1
       b       ciclo


copy   str     r5, [r1]
       add     r1, r1, #4
       b       agg

fine   end