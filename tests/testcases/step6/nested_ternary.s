    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -60
    # end of prologue
    
    # start of body
    li t0, 1
    mv t1, t0
    li t0, 2
    mv t2, t0
    li t0, 0
    mv t3, t0
    sgt t0, t1, t2
    sw t3, 48(sp)
    beq x0, t0, _L1
    li t0, 5
    sw t0, 52(sp)
    j _L2
_L1:
    lw t0, 48(sp)
    beq x0, t0, _L3
    li t0, 6
    sw t0, 56(sp)
    j _L4
_L3:
    li t0, 7
    mv t1, t0
    sw t1, 56(sp)
_L4:
    lw t0, 56(sp)
    mv t1, t0
    sw t1, 52(sp)
_L2:
    lw t0, 52(sp)
    mv a0, t0
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 60
    # end of epilogue
    
    ret
    

