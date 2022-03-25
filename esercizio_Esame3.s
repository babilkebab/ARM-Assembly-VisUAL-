       ;conteggio degli elementi di un array che non sono compresi in un intervallo dato

array  dcd     7, 11, 13, 5, 4, 17, 21, 23
size   dcd     8


       mov     r0, #array ;ptr
       mov     r1, #size ;cnt ciclo
       ldr     r1, [r1]
       mov     r2, #12 ;estremo_basso_intervallo
       mov     r3, #22 ;estremo_alto_intervallo
       mov     r5, #0 ; cnt elementi

ciclo  cmp     r1, #0
       beq     fine
       ldr     r4, [r0] ;elem
       cmp     r4, r2
       blt     conta
       cmp     r4, r3
       bgt     conta


agg    sub     r1, r1, #1
       add     r0, r0, #4
       b       ciclo

conta  add     r5, r5, #1
       b       agg



fine   
       end