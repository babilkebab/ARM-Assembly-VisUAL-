       ;verificare se un vettore contiene almeno due elementi consecutivi uguali

arr    dcd     12, 3, 4, 7, 6
size   dcd     5

       mov     r0, #arr ;ptr
       mov     r1, #size
       ldr     r1, [r1] ;dim
       mov     r2, #0 ;SE R0 = 1 CI SONO DUE ELEM. CONSECUTIVI UGUALI, ALTRIMENTI R0 = 0

ciclo  cmp     r1, #1
       beq     fine
       ldr     r3, [r0] ;elem
       ldr     r4, [r0, #4] ;elem succ.
       cmp     r3, r4
       beq     equal
       add     r0, r0, #4
       sub     r1, r1, #1
       b       ciclo


equal  mov     r2, #1

fine   end