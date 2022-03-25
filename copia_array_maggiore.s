       ;copia  su un nuovo array di tutti gli elementi di un array sorgente > di una costante

fcl    dcd     4,5,6,7,8,9,17
size1  dcd     7
rtc    fill    28


       mov     r0, #fcl ;ptr1
       mov     r1, #rtc ;ptr2
       mov     r2, #size1 ;dim
       ldr     r2, [r2]
       mov     r3, #5 ;costante

ciclo  cmp     r2, #0
       beq     fine
       ldr     r4, [r0] ;elem
       cmp     r4, r3
       bgt     copy

agg    add     r0, r0, #4
       sub     r2, r2, #1
       b       ciclo

copy   str     r4, [r1]
       add     r1, r1, #4
       b       agg


fine   end