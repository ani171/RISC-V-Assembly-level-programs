.data
msg: .string "malayalam"

.text

la x10, msg
addi x9, x0, 4
addi x11, x10, 8

inner:
    lb x20, 0(x10)
    lb x21, 0(x11)
    bne x20, x21, exit
    addi x10, x10, 1
    addi x11, x11, -1
    addi x9, x9, -1
    bne x9, x0, inner

addi x12, x0, 0x0F
j same

exit:
    addi x12, x0, 1

same:
    j same
