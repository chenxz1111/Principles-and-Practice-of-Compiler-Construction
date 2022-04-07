    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -48
    # end of prologue
    
    # start of body
    li t0, 1
    li t1, 0
    or t2, t0, t1
    li t0, 0
    and t1, t2, t0
    mv a0, t1
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 48
    # end of epilogue
    
    ret
    

