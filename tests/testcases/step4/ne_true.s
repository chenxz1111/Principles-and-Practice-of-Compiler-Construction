    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -48
    # end of prologue
    
    # start of body
    li t0, 1
    neg t1, t0
    li t0, 2
    neg t2, t0
    sub t0, t1, t2
    snez t0, t0
    mv a0, t0
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 48
    # end of epilogue
    
    ret
    

