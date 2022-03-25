array  DCD     4, 11, 7, 3, 1, 10
size   DCD     6


       MOV     R0, #array ;PTR
       MOV     R1, #size
       LDR     R1,[R1]; size
       MOV     R2, #0 ;CNT
       MOV     R4, #6 ;CONST

ciclo  CMP     R1, #0
       BEQ     fine
       LDR     R3, [R0] ;ELEM
       CMP     R3, R4
       BGT     conta

agg    SUB     R1, R1, #1
       ADD     R0, R0, #4
       B       ciclo


conta  ADD     R2, R2, #1
       B       agg




fine   
       end