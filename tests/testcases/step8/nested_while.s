    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -56
    # end of prologue
    
    # start of body
    li t0, 1
    mv t1, t0
    sw t1, 48(sp)
_L1:
    li t0, 3
    lw t1, 48(sp)
    div t2, t1, t0
    li t0, 20
    slt t3, t2, t0
    sw t1, 48(sp)
    beq x0, t3, _L3
    li t0, 1
    mv t1, t0
    sw t1, 52(sp)
_L4:
    li t0, 10
    lw t1, 52(sp)
    slt t2, t1, t0
    sw t1, 52(sp)
    beq x0, t2, _L6
    li t0, 2
    lw t1, 52(sp)
    mul t2, t1, t0
    mv t1, t2
    sw t1, 52(sp)
_L5:
    j _L4
_L6:
    lw t0, 48(sp)
    lw t1, 52(sp)
    add t2, t0, t1
    mv t0, t2
    sw t0, 48(sp)
_L2:
    j _L1
_L3:
    lw t0, 48(sp)
    mv a0, t0
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 56
    # end of epilogue
    
    ret
    

