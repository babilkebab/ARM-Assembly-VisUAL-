       ;somma  degli elementi di posto dispari di un array

array  dcd     12, 53, 9, 613, 5, 7, 44, 62, 10, 22,11,14
size   dcd     12

       mov     r0, #array ;ptr
       add     r0, r0, #4 ;perchè si prendono solo quelli di posto dispari
       mov     r1, #size
       ldr     r1, [r1] ;size
       mov     r3, #0 ;SUM

ciclo  cmp     r1, #1
       ble     fine
       ldr     r2, [r0] ;elem
       add     r3, r3, r2
       add     r0, r0, #8
       sub     r1, r1, #2
       b       ciclo

fine   end