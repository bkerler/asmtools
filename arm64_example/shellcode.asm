CMP W0, #16
BEQ  read
CMP  W0, #32
BEQ  write
B bad

read:
LDR  W0, [X1]
RET

write:
STR  W2, [X1]
MOV  W0, W2
RET

bad:
MOV W0, #256
RET




