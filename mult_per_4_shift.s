       ;dato   un array a[], moltiplicare per 4 ogni suo elemento

arr1   dcd     5, 6, 7, 4, 2
size   dcd     5

       mov     r0, #arr1 ;ptr
       mov     r1, #size
       ldr     r1, [r1] ;size

ciclo  cmp     r1, #0
       beq     fine
       ldr     r2, [r0]
       lsl     r2, r2, #2 ;mult per 4
       str     r2, [r0]
       add     r0, r0, #4
       sub     r1, r1, #1
       b       ciclo

fine   end