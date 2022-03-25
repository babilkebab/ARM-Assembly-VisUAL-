       ;       dati due array, generare la loro somma vettoriale

array1 dcd     5, 11, 7, 23, 10
array2 dcd     4, 8, 30, 17, 12
size   dcd     5
array3 fill    20

       mov     r0, #array1 ;ptr primo array
       mov     r1, #array2 ;ptr secondo array
       mov     r2, #array3 ;ptr array somma
       mov     r3, #size
       ldr     r3, [r3] ;dimensione


ciclo  cmp     r3, #0
       beq     fine
       ldr     r4, [r0] ;elem1
       ldr     r5, [r1] ;elem2
       add     r6, r4, r5 ;somma (elem arr3)
       str     r6, [r2]
       sub     r3, r3, #1
       add     r0, r0, #4
       add     r1, r1, #4
       add     r2, r2, #4
       b       ciclo

fine   end