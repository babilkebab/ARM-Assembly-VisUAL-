       ;dato   un array con un numero n di elementi, con n pari, calcolare le somme degli elementi da 0 a (n/2)-1, e da n/2 a n-1

arr1   dcd     4, 6, 7, 11, 3, 5
size   dcd     6


       mov     r0, #arr1 ;ptr
       mov     r1, #size
       ldr     r1, [r1] ;dim
       lsr     r1, r1, #1 ;dim prima parte
       mov     r4, r1 ;dim seconda parte
       mov     r2, #0 ;somma prima parte
       mov     r3, #0 ;somma seconda parte


ciclo1 cmp     r1, #0
       beq     ciclo2
       ldr     r5, [r0] ;elem
       add     r2, r2, r5
       add     r0, r0, #4
       sub     r1, r1, #1
       b       ciclo1

ciclo2 cmp     r4, #0
       beq     fine
       ldr     r5, [r0] ;elem
       add     r3, r3, r5
       add     r0, r0, #4
       sub     r4, r4, #1
       b       ciclo2

fine   end