    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -52
    # end of prologue
    
    # start of body
    li t0, 0
    mv t1, t0
    li t0, 1
    neg t2, t0
    sgt t0, t1, t2
    beq x0, t0, _L1
    li t0, 4
    sw t0, 48(sp)
    j _L2
_L1:
    li t0, 5
    mv t1, t0
    sw t1, 48(sp)
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
    

