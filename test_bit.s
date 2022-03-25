       ;dato   un array, determinare il numero di elementi in cui il bit 4 è posto ad 1

array  dcd     4,7,8,11,32,16,18,17
size   dcd     8

       mov     r0, #array ;ptr
       mov     r1, #size ;dimensione
       ldr     r1, [r1]
       mov     r2, #0 ;contatore elementi



ciclo  cmp     r1, #0
       beq     fine
       ldr     r3, [r0] ;elem
       mov     r4, #1 ;reg per test del bit
       lsl     r4, r4, #4
       and     r5, r3, r4
       cmp     r5, #0
       bne     conta

agg    sub     r1, r1, #1
       add     r0, r0, #4
       b       ciclo

conta  add     r2, r2, #1
       b       agg

fine   
       end