    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -48
    # end of prologue
    
    # start of body
    li t0, 0
    mv t1, t0
    beq x0, t1, _L1
    li t0, 1
    mv a0, t0
    j main_exit
    j _L2
_L1:
    li t0, 2
    mv a0, t0
    j main_exit
_L2:
    li a0, 0
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 48
    # end of epilogue
    
    ret
    

