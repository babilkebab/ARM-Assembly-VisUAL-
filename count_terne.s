       ;dato   un vettore a[ ] e date tre costanti x,y,z
       ;       individuare in a[ ] se esiste la sequenza di elementi x y e z e salvare in R5
       ;quante volte è presente questa sequenza di dati, nel caso in cui non ci dovessere essere salvare -1, però in R6

arr    dcd     4, 7, 8, 4, 7, 9, 10, 12
size   dcd     8

       mov     r0, #arr ;ptr
       mov     r1, #size
       ldr     r1, [r1] ;dim
       mov     r2, #4 ;x
       mov     r3, #7 ;y
       mov     r4, #8 ;z
       mov     r5, #0 ;cnt seq

ciclo  cmp     r1, #2
       beq     fine
       ldr     r7, [r0] ;elem1
       ldr     r8, [r0, #4] ;elem2
       ldr     r9, [r0, #8] ;elem3
       cmp     r7, r2
       beq     cmp2
agg    add     r0, r0, #4
       sub     r1, r1, #1
       b       ciclo

cmp2   cmp     r8, r3
       beq     cmp3
       b       agg

cmp3   cmp     r9, r4
       beq     count
       b       agg

count  add     r5, r5, #1
       b       agg

fine   cmp     r5, #0
       beq     fine2
       end

fine2  mov     r6, #-1
       end