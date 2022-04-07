    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -52
    # end of prologue
    
    # start of body
    li t0, 1
    beq x0, t0, _L1
    li t0, 0
    mv t1, t0
    sw t0, 48(sp)
    j _L2
_L1:
    li t0, 2
    mv t1, t0
    mv t1, t0
    sw t1, 48(sp)
_L2:
    lw t0, 48(sp)
    mv t1, t0
    mv t1, t0
    mv a0, t1
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 52
    # end of epilogue
    
    ret
    

