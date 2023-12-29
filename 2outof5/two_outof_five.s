.data
num: .byte 0X14
.text

la x10,num
lbu x11,0(x10)
andi x12,x11,0x0E0
bne x12,x0,exit

addi x13,x0,5
back: andi x12,x11,0x01
addi x14,x14,x12
srli x11,x11,1
addi x13,x13,-1
bne x13,x0,back

addi x13,x0,2
bne x14,x13,exit
addi x20,x0,0x01
beq x0,x0,skip
exit: addi x20,x0,0x02
skip: nop
