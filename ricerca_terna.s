       ;dato   un vettore a[ ] e date tre costanti x,y,z; individuare in a[ ] se esiste la sequenza di elementi x y e z

arr    dcd     3, 5, 7, 10, 22
size   dcd     5


       mov     r0, #arr ;ptr
       mov     r1, #size
       ldr     r1, [r1] ;size
       mov     r2, #0 ;se esiste la terna, r2 = 1
       mov     r9, #7 ;const1
       mov     r10, #10 ;const2
       mov     r11, #22 ;const3

ciclo  cmp     r1, #2
       beq     fine
       ldr     r3, [r0];elem1
       ldr     r4, [r0, #4];elem2
       ldr     r5, [r0, #8];elem3
       cmp     r3, r9
       beq     cmp2

agg    add     r0, r0, #4
       sub     r1, r1, #1
       b       ciclo


cmp2   cmp     r4, r10
       beq     cmp3
       b       agg

cmp3   cmp     r5, r11
       beq     trov ;trovata terna
       b       agg


trov   mov     r2, #1

fine   end