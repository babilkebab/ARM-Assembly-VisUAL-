

       MOV     R0, #10
       MOV     R1, #20
       MOV     R2, #100
       MOV     R3, #200
       STMDB   SP!, {R0, R1}
       BL      subr
       ADD     R5, R2, R3
       ADD     SP, SP, #8
       end


subr   STMDB   SP!, {R2, R3}
       LDR     R2, [SP, #8]
       LDR     R3, [SP, #12]
       ADD     R4, R2, R3
       LDMIA   SP!, {R2, R3}
       MOV     PC, LR