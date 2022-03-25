       ;ricercasu un array di una coppia di elementi contigui, i cui valori sono memorizzati su R5 e R6

arr    dcd     8,6,7,10,11,12,13
size   dcd     7


       mov     r5, #7 ;primo elem contiguo
       mov     r6, #9 ;secondo elem contiguo
       mov     r0, #arr ;ptr
       mov     r1, #size
       ldr     r1, [r1] ;dim
       mov     r2, #0 ;R2 ASSUME VALORE 1 SE COPPIA TROVATA, ALTRIMENTI 0


ciclo  cmp     r1, #1
       beq     fine
       ldr     r3, [r0] ;elem1
       ldr     r4, [r0, #4] ;elem2
       cmp     r3, r5
       beq     cmp2


agg    add     r0, r0, #4
       sub     r1, r1, #1
       b       ciclo

cmp2   cmp     r4, r6
       beq     coppia
       b       agg

fine   end

coppia mov     r2, #1
       end