       ;dati   due array a[] e b[], costruire un terzo array c[] in cui sono presenti gli elementi di a e b posti nel seguente modo: a[0], b[0], a[1], b[1], a[2], b[2], ...

arr1   dcd     5, 3, 8, 11, 10
arr2   dcd     4, 5, 6, 9
size1  dcd     5
size2  dcd     4
arr3   fill    36


       mov     r0, #arr1 ;ptr1
       mov     r1, #arr2 ;ptr2
       mov     r2, #arr3 ;ptr3
       mov     r6, #arr3 ;ptr3_odd
       add     r6, r6, #4
       mov     r3, #size1
       ldr     r3, [r3] ;size1
       mov     r4, #size2
       ldr     r4, [r4] ;size2

ciclo1 cmp     r3, #0
       beq     ciclo2
       ldr     r5, [r0] ;elem_arr1
       str     r5, [r2]
       add     r0, r0, #4
       add     r2, r2, #8
       sub     r3, r3, #1
       b       ciclo1

ciclo2 cmp     r4, #0
       beq     fine
       ldr     r5, [r1] ;elem_Arr2
       str     r5, [r6]
       add     r1, r1, #4
       add     r6, r6, #8
       sub     r4, r4, #1
       b       ciclo2


fine   end
