       ;a      partire da un vettore sorgente a, costruire un nuovo vettore b in cui b[i] = a[i] + a[i+1]

arr1   dcd     4,6,3,11,27,13
size1  dcd     6
arr2   fill    20

       mov     r0, #arr1 ;ptr arr1
       mov     r1, #arr2 ;ptr arr2
       mov     r2, #size1
       ldr     r2, [r2] ;dim

ciclo  cmp     r2, #1
       beq     fine
       ldr     r3, [r0] ;elem
       ldr     r4, [r0, #4] ;elem succ.
       add     r5, r3, r4 ;elem arr2
       str     r5, [r1]
       add     r0, r0, #4
       add     r1, r1, #4
       sub     r2, r2, #1
       b       ciclo

fine   end