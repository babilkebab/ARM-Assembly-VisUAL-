       ;dato   una array a[], contare tutte le occorrenze di una coppia (contigua) di elementi dati

arr1   dcd     7, 11, 22, 25, 33, 47, 22, 25
size   dcd     8


       mov     r0, #arr1 ;ptr arr1
       mov     r1, #size
       ldr     r1, [r1] ;size
       mov     r2, #22 ;primo elem coppia
       mov     r3, #25 ;secondo elem coppia
       mov     r4, #0 ;cnt

ciclo  cmp     r1, #1
       beq     fine
       ldr     r5, [r0] ;elem1
       cmp     r5, r2
       beq     cmp2
       b       agg


cmp2   ldr     r6, [r0, #4] ;elem2
       cmp     r6, r3
       beq     count

agg    add     r0, r0, #4
       sub     r1, r1, #1
       b       ciclo


count  add     r4, r4, #1
       b       agg


fine   end