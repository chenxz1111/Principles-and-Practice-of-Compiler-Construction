    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -52
    # end of prologue
    
    # start of body
    li t0, 1
    mv t1, t0
    li t0, 0
    mv t2, t0
    sw t2, 48(sp)
    beq x0, t1, _L1
    li t0, 1
    mv t1, t0
    sw t1, 48(sp)
    j _L2
_L1:
    lw t0, 48(sp)
    beq x0, t0, _L3
    li t0, 2
    mv t1, t0
    sw t1, 48(sp)
_L3:
_L2:
    lw t0, 48(sp)
    mv a0, t0
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 52
    # end of epilogue
    
    ret
    

