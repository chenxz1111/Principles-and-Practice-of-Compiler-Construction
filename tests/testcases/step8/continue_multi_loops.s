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
    mv t2, t0
    sw t1, 48(sp)
    sw t2, 52(sp)
_L1:
    li t0, 10
    lw t1, 52(sp)
    slt t2, t1, t0
    sw t1, 52(sp)
    beq x0, t2, _L3
    li t0, 0
    mv t1, t0
    sw t1, 56(sp)
_L4:
    li t0, 10
    lw t1, 56(sp)
    slt t2, t1, t0
    sw t1, 56(sp)
    beq x0, t2, _L6
    j _L5
_L5:
    li t0, 1
    lw t1, 56(sp)
    add t2, t1, t0
    mv t1, t2
    sw t1, 56(sp)
    j _L4
_L6:
    lw t0, 48(sp)
    lw t1, 52(sp)
    add t2, t0, t1
    mv t0, t2
    sw t0, 48(sp)
    sw t1, 52(sp)
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
    addi sp, sp, 60
    # end of epilogue
    
    ret
    

