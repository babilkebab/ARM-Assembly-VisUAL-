       ;       dati due array a[] e b[] costruire un terzo array c[], tale che c[i] = a[i] * b[i]

arr1   dcd     5, 3, 8, 11
arr2   dcd     4, 5, 6, 9
size   dcd     4
arr3   fill    16

       mov     r0, #arr1 ;ptr1
       mov     r1, #arr2 ;ptr2
       mov     r2, #arr3 ;ptr3
       mov     r3, #size
       ldr     r3, [r3] ;size

ciclo  cmp     r3, #0
       beq     fine
       ldr     r4, [r0] ;elem1
       ldr     r5, [r1] ;elem2
       mov     r6, #0 ;c[i]

mult   cmp     r5, #0
       beq     agg
       add     r6, r4, r6
       sub     r5, r5, #1
       b       mult

agg    str     r6, [r2]
       add     r0, r0, #4
       add     r1, r1, #4
       add     r2, r2, #4
       sub     r3, r3, #1
       b       ciclo

fine   end