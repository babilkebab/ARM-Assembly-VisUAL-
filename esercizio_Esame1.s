array  DCD     4,3,7,77,9,12,10
size   DCD     7


       MOV     R0, #array ; ptr
       MOV     R1, #size
       LDR     R1, [R1];cnt
       LDR     R3, [R0] ;MAX


ciclo  CMP     R1, #0
       BEQ     fine
       LDR     R2, [R0] ;elem
       CMP     R3, R2
       BLT     max

update SUB     R1, R1, #1
       ADD     R0, R0, #4
       LDR     R2, [R0]
       B       ciclo

max    MOV     R3, R2
       B       update




fine   
       end