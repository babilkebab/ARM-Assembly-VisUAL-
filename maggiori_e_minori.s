         ;dato   un array ed una costante k, determinare il numero elementi < k e il numero di elementi > k, usando un solo loop

arr1     dcd     3, 11, 47, 22, 7, 16, 4, 55
size     dcd     8
const    dcd     17

         mov     r0, #arr1 ;ptr
         mov     r1, #size
         ldr     r1, [r1] ;dim
         mov     r2, #const ;const
         ldr     r2, [r2]
         mov     r3, #0 ;elem < di k
         mov     r4, #0 ;elem > di k

ciclo    cmp     r1, #0
         beq     fine
         ldr     r5, [r0] ;elem
         cmp     r5, r2
         blt     minore
         bgt     maggiore

agg      add     r0, r0, #4
         sub     r1, r1, #1
         b       ciclo


minore   add     r3, r3, #1
         b       agg

maggiore add     r4, r4, #1
         b       agg

fine     end