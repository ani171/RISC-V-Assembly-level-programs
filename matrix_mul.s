.data
mat1: .byte 1,1,1,2,2,2,3,3,3
mat2: .byte 4,4,4,5,5,5,6,6,6
mat3: .zero 9
.equ m,3
.equ n,3
.equ p,3

.text
la x10,mat1
la x11,mat2
la x12,mat3

li x20,m
outer2:
    li x21,n
    mv x22,x21
    outer1:
        li x18,0
        li x23,n
        inner:
            lb x15,0(x10)
            lb x16,0(x11)
            mul x17,x15,x16 
            add x18,x18,x17
            addi x10,x10,1
            addi x11,x11,3
            addi x23,x23,-1
            bne x23,x0,inner
        sb x18,0(x12)
        addi x12,x12,1
        addi x10,x10,-3
        addi x11,x11,-6
        addi x11,x11,1
        addi x22,x22,-1
        bne x22,x0,outer1
    addi x10,x10,3
    la x11,mat2
    addi x20,x20,-1
    bne x20,x0,outer2
same: j same
