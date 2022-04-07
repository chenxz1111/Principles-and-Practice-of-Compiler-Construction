    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -60
    # end of prologue
    
    # start of body
    li t0, 0
    mv t1, t0
    li t0, 0
    mv t1, t0
    li t0, 0
    mv t2, t0
    sw t2, 48(sp)
    sw t1, 52(sp)
_L1:
    li t0, 10
    lw t1, 48(sp)
    slt t2, t1, t0
    sw t1, 48(sp)
    beq x0, t2, _L3
    lw t0, 48(sp)
    mv t1, t0
    mv t2, t1
    sw t0, 48(sp)
    sw t2, 56(sp)
_L4:
    li t0, 10
    lw t1, 56(sp)
    slt t2, t1, t0
    sw t1, 56(sp)
    beq x0, t2, _L6
    li t0, 1
    lw t1, 52(sp)
    add t2, t1, t0
    mv t1, t2
    sw t1, 52(sp)
_L5:
    li t0, 1
    lw t1, 56(sp)
    add t2, t1, t0
    mv t1, t2
    sw t1, 56(sp)
    j _L4
_L6:
_L2:
    li t0, 1
    lw t1, 48(sp)
    add t2, t1, t0
    mv t1, t2
    sw t1, 48(sp)
    j _L1
_L3:
    lw t0, 52(sp)
    lw t1, 48(sp)
    add t2, t0, t1
    mv a0, t2
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 60
    # end of epilogue
    
    ret
    

