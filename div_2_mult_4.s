       ;dato   un array di partenza controllare se esistono numeri divisibili per 2
       ;       e nel caso inserirli in un nuovo array. gli altri numeri devono essere moltiplicati per 4.

arr1   dcd     5, 7, 4, 13, 28, 33
size   dcd     6
arr2   fill    24

       mov     r0, #arr1 ;ptr1
       mov     r1, #arr2 ;ptr2
       mov     r2, #size
       ldr     r2, [r2] ;dim


ciclo  cmp     r2, #0
       beq     fine
       ldr     r3, [r0] ;elem
       mov     r4, #1 ;mask
       and     r5, r3, r4
       cmp     r5, #0
       beq     copy
       lsl     r3, r3, #2
       str     r3, [r0]

agg    add     r0, r0, #4
       sub     r2, r2, #1
       b       ciclo

copy   str     r3, [r1]
       add     r1, r1, #4
       b       agg

fine   end