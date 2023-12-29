.data
    num: .byte 82

.text
    la x10, num
    lb x20, 0(x10)
    addi x21, x0, 9
    remu x22, x20, x21
    bne x22, x0, nondiv
    addi x23, x0, 0x0F
    j exit

nondiv:
    addi x23, x0, 0x01

exit:
    j exit
