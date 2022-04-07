    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -56
    # end of prologue
    
    # start of body
    li t0, 0
    mv t1, t0
    li t0, 0
    mv t2, t0
    sw t2, 48(sp)
    beq x0, t1, _L1
    li t0, 2
    mv t1, t0
    sw t1, 52(sp)
    j _L2
_L1:
    li t0, 3
    mv t1, t0
    sw t1, 52(sp)
_L2:
    lw t0, 48(sp)
    beq x0, t0, _L3
    li t0, 4
    mv t1, t0
    sw t1, 48(sp)
    j _L4
_L3:
    li t0, 5
    mv t1, t0
    sw t1, 48(sp)
_L4:
    lw t0, 52(sp)
    lw t1, 48(sp)
    add t2, t0, t1
    mv a0, t2
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 56
    # end of epilogue
    
    ret
    

