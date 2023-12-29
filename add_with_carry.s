# Addition of two unsigned double words present in the data memory and store result in memory

.data 
a: .dword 0x1234567880000000,0xFFFFFFFF81234567,0,0
.text

la x10,a
lw x20,0(x10)
lw x21,8(x10)
add x22,x21,x20
sltu x23,x22,x21
sw x22,16(x10)

lw x20,4(x10)
lw x21,12(x10)
add x22,x21,x20
sltu x24,x22,x21
add x22,x22,x23
sw x22,20(x10)
sb x23,24(x10)
