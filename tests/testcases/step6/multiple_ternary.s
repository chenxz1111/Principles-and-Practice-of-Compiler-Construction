    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -60
    # end of prologue
    
    # start of body
    li t0, 1
    li t1, 2
    sgt t2, t0, t1
    beq x0, t2, _L1
    li t0, 3
    sw t0, 48(sp)
    j _L2
_L1:
    li t0, 4
    mv t1, t0
    sw t1, 48(sp)
_L2:
    lw t0, 48(sp)
    mv t1, t0
    li t0, 1
    li t2, 2
    sgt t3, t0, t2
    sw t1, 52(sp)
    beq x0, t3, _L3
    li t0, 5
    sw t0, 56(sp)
    j _L4
_L3:
    li t0, 6
    mv t1, t0
    sw t1, 56(sp)
_L4:
    lw t0, 56(sp)
    mv t1, t0
    lw t0, 52(sp)
    add t2, t0, t1
    mv a0, t2
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 60
    # end of epilogue
    
    ret
    

