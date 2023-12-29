#  Assume array a[] base address mapped to x10 and length of array a[] mapped x11, variable h to x12.


.data
a: .half 0x1234,0x0001,0x2001,0x2111,0x3115,0,0

.text
la x10,a
addi x11,x0,10
back: 	lhu x20,0(x10)
add x12,x12,x20
addi x10, x10,2 / slli x10,x10,1
addi x13,x13,1
bltu x13,x11,back
sw x12,0(x10)
