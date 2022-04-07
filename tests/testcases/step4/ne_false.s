    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -48
    # end of prologue
    
    # start of body
    li t0, 0
    li t1, 0
    sub t2, t0, t1
    snez t2, t2
    mv a0, t2
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 48
    # end of epilogue
    
    ret
    

