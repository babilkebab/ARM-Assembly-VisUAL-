       ;dato   un array, invertire il bit 2 di ogni suo elemento

array  dcd     5,3,1,9,14,12,11,8
size   dcd     8


       mov     r0, #array ;ptr
       mov     r1, #size
       ldr     r1, [r1] ;dimensione


ciclo  cmp     r1, #0
       beq     fine
       ldr     r3, [r0] ;elem
       mov     r2, #1 ;reg per invertire bit
       lsl     r2, r2, #2
       eor     r4, r2, r3 ;elem invertito
       str     r4, [r0]
       add     r0, r0, #4
       sub     r1, r1, #1
       b       ciclo

fine   
       end
