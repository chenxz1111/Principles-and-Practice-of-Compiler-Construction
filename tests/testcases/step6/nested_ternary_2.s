    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -60
    # end of prologue
    
    # start of body
    li t0, 1
    beq x0, t0, _L1
    li t0, 2
    beq x0, t0, _L3
    li t0, 3
    sw t0, 48(sp)
    j _L4
_L3:
    li t0, 4
    mv t1, t0
    sw t1, 48(sp)
_L4:
    j _L2
_L1:
    li t0, 5
    mv t1, t0
    sw t1, 48(sp)
_L2:
    lw t0, 48(sp)
    mv t1, t0
    li t0, 0
    sw t1, 52(sp)
    beq x0, t0, _L5
    li t0, 2
    beq x0, t0, _L7
    li t0, 3
    sw t0, 56(sp)
    j _L8
_L7:
    li t0, 4
    mv t1, t0
    sw t1, 56(sp)
_L8:
    j _L6
_L5:
    li t0, 5
    mv t1, t0
    sw t1, 56(sp)
_L6:
    lw t0, 56(sp)
    mv t1, t0
    lw t0, 52(sp)
    mul t2, t0, t1
    mv a0, t2
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 60
    # end of epilogue
    
    ret
    

