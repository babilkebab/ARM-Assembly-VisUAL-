         ;copia  di un array omettendo un elemento dato

array    dcd     13, 7, 5, 41, 33, 9, 10
size     dcd     7
arraycpy fill    24

         mov     r0, #array ;ptr array
         mov     r1, #arraycpy ;ptr arraycpy
         mov     r2, #size ;dimensione array orig
         mov     r3, #33 ;elemento da omettere
         ldr     r2, [r2]


ciclo    cmp     r2, #0
         beq     fine
         ldr     r4, [r0] ;elem
         cmp     r4, r3
         bne     copia

agg      sub     r2, r2, #1
         add     r0, r0, #4
         b       ciclo

copia    str     r4, [r1]
         add     r1, r1, #4
         b       agg

fine     end