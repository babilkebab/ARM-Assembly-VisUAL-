          ;divisione per una costante data di tutti gli elementi di un array (con sottrazioni successive)

array     dcd     5, 15, 20, 30, 45, 52
size      dcd     6

          mov     r0, #array ;ptr
          mov     r1, #size ;size
          ldr     r1, [r1]
          mov     r2, #5 ;const


ciclo_arr cmp     r1, #0
          beq     fine
          ldr     r3, [r0] ;elem
          mov     r4, #0 ;quoziente

div       cmp     r3, r2 ;qui r3 diventa il resto della div, quando è minore del dividendo la div è finita
          blt     agg
          sub     r3, r3, r2
          add     r4, r4, #1
          b       div

agg       str     r4, [r0] ;aggiorno array con res divisione
          add     r0, r0, #4
          sub     r1, r1, #1
          b       ciclo_arr

fine      end