.data
a: .word 0x12345678

.text
la x10,a  #load base address to register x10
lw x11,0(x10)  #load the word x10 to x11(original value)
lw x12,0(x10)  #the word in x12 will be updated 
addi x9,x0,3  #this acts as the decrementor for the loop
addi x8,x0,0  #this starts the loop with 0
slli x12,x12,24 #shifting 0x00000078 to x078
addi x16,x0,16  # x16 holds shifting amount for the masked value
loop:
srli x11,x11,8  # desired value is shifted by 2 hexadecimal place right
andi x14,x11,0x0FF #masking others only extracting last 2 lsb bits
sll x14,x14,x16 #shift the extracted last 2 bit to desired place
add x12,x12,x14  #add the  extracted last 2 bit to  x12 to complete the sequence

addi x16,x16,-8 #shiting it by 2 hexa places in every iteration of the loop
addi x8,x8,1  #increment the loop


bne x9,x8,loop #exit x9 = x8
sw x12,0(x10) #store the final value in x12

