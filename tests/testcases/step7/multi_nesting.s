    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -48
    # end of prologue
    
    # start of body
    li t0, 2
    mv t1, t0
    li t0, 3
    slt t2, t1, t0
    beq x0, t2, _L1
    li t0, 3
    mv t1, t0
    mv a0, t1
    j main_exit
_L1:
    li a0, 0
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 48
    # end of epilogue
    
    ret
    

