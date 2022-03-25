           ;dato   un array a[] di dimensione n, determinare l'indice k che contiene un elemento dato, e copiare, su un nuovo vettore, gli elementi da k a n-1

arr        dcd     5,3,8,7,2,11,67
size       dcd     7
arr2       fill    28


           mov     r0, #arr ;ptr arr1
           mov     r1, #arr2 ;ptr arr2
           mov     r2, #size
           ldr     r2, [r2] ;size
           mov     r3, #7 ;const

ciclo      cmp     r2, #0
           beq     fine
           ldr     r5, [r0] ;elem
           cmp     r5, r3
           beq     copy_cycle
           add     r0, r0, #4
           sub     r2, r2, #1
           b       ciclo



copy_cycle cmp     r2, #0
           beq     fine
           ldr     r5, [r0] ;elem da copiare
           str     r5, [r1]
           add     r0, r0, #4
           add     r1, r1, #4
           sub     r2, r2, #1
           b       copy_cycle


fine       end