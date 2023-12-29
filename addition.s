# Addition of two unsigned words present in the data memory and store result in memory

.data 
a: .word 0x92345678, 0x80000000,0xFFFFFFFF,0x81234567
.text
la x10,a			
lw x20,0(x10)			
lw x21,4(x10)			
add x22,x21,x20		
sltu x23,x22,x21		
sw x23,8(x10)			
sw x22,12(x10)		
