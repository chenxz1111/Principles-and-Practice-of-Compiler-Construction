    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -48
    # end of prologue
    
    # start of body
_L1:
    li t0, 1
    beq x0, t0, _L3
    li t0, 2
    mv a0, t0
    j main_exit
_L2:
    j _L1
_L3:
    li a0, 0
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 48
    # end of epilogue
    
    ret
    

