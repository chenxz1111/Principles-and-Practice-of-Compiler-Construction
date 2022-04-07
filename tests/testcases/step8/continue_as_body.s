    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -52
    # end of prologue
    
    # start of body
    li t0, 0
    mv t1, t0
    sw t1, 48(sp)
_L1:
    li t0, 10
    lw t1, 48(sp)
    slt t2, t1, t0
    sw t1, 48(sp)
    beq x0, t2, _L3
    j _L2
_L2:
    li t0, 1
    lw t1, 48(sp)
    add t2, t1, t0
    mv t1, t2
    sw t1, 48(sp)
    j _L1
_L3:
    li t0, 0
    mv a0, t0
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 52
    # end of epilogue
    
    ret
    

