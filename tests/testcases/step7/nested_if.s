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
    beq x0, t1, _L1
    li t0, 2
    mv t1, t0
    mv a0, t1
    j main_exit
_L1:
    li t0, 3
    mv t1, t0
    lw t0, 48(sp)
    slt t2, t0, t1
    beq x0, t2, _L3
    li t0, 4
    mv a0, t0
    j main_exit
_L3:
    li t0, 5
    mv a0, t0
    j main_exit
_L4:
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
    

