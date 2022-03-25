       ;dato   un array, dividere tutti gli elementi
       ;per    una costante fornita su R0 usando l'algoritmo della divisione intera

arr    dcd     5, 7, 9, 10, 12, 15
size   dcd     6

       mov     r1, #arr ;ptr
       mov     r2, #size
       ldr     r2, [r2] ;dim
       mov     r0, #4 ;const

ciclo  cmp     r2, #0
       beq     fine
       ldr     r3, [r1] ;elem
       mov     r4, #0 ;quoziente

div    cmp     r3, r0
       blt     agg
       sub     r3, r3, r0
       add     r4, r4, #1
       b       div

agg    str     r4, [r1]
       add     r1, r1, #4
       sub     r2, r2, #1
       b       ciclo

fine   end