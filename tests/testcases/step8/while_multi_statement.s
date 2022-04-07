    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -56
    # end of prologue
    
    # start of body
    li t0, 0
    mv t1, t0
    li t0, 1
    mv t2, t0
    sw t1, 48(sp)
    sw t2, 52(sp)
_L1:
    li t0, 5
    lw t1, 48(sp)
    slt t2, t1, t0
    sw t1, 48(sp)
    beq x0, t2, _L3
    li t0, 2
    lw t1, 48(sp)
    add t2, t1, t0
    mv t1, t2
    lw t0, 52(sp)
    mul t2, t0, t1
    mv t0, t2
    sw t1, 48(sp)
    sw t0, 52(sp)
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
    

