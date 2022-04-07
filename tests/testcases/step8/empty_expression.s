    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -56
    # end of prologue
    
    # start of body
    li t0, 3
    mv t1, t0
    li t0, 0
    mv t2, t0
    sw t1, 48(sp)
    sw t2, 52(sp)
_L1:
    li t0, 10
    lw t1, 52(sp)
    slt t2, t1, t0
    sw t1, 52(sp)
    beq x0, t2, _L3
_L2:
    li t0, 1
    lw t1, 52(sp)
    add t2, t1, t0
    mv t1, t2
    sw t1, 52(sp)
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
    

