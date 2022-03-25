          ;dato   un array, moltiplicare tra loro tutti i suoi elementi

arr       dcd     50, 27, 13, 34, 10
size      dcd     5


          mov     r0, #arr ;ptr arr
          mov     r1, #size
          ldr     r1, [r1] ;size
          mov     r2, #1 ;mult

cicloarr  cmp     r1, #0
          beq     fine
          ldr     r3, [r0] ;elem
          mov     r5, #0 ;prodotto parz

ciclomult cmp     r3, #0
          beq     finemult
          add     r5, r5, r2
          sub     r3, r3, #1
          b       ciclomult


finemult  mov     r2, r5 ;prodotto parziale inserito in registro risultato
          add     r0, r0, #4
          sub     r1, r1, #1
          b       cicloarr


fine      mov     r5, #0
          end