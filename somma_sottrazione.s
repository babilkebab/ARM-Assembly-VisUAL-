       ;Dato   un array calcolare: a[0] + a[1] - a[2] + a[3] - a[4] + a[5] ...

arr    dcd     5,7,3,11,6,4,2,4
size   dcd     8

       mov     r0, #arr ;ptr arr
       mov     r1, #size
       ldr     r1, [r1] ;dim
       mov     r2, #0 ;sum/sub
       mov     r3, #0 ;bool
       ldr     r4, [r0]
       add     r2, r2, r4
       add     r0, r0, #4

ciclo  cmp     r1, #1
       beq     fine
       ldr     r4, [r0] ;elem
       cmp     r3, #0
       beq     sum
       bne     subt

agg    add     r0, r0, #4
       sub     r1, r1, #1
       b       ciclo


sum    add     r2, r2, r4
       mov     r3, #1
       b       agg

subt   sub     r2, r2, r4
       mov     r3, #0
       b       agg


fine   end