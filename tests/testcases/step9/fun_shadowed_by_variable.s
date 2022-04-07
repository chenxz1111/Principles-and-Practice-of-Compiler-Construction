    .text
    .global main
    
foo:
    # start of prologue
    addi sp, sp, -48
    # end of prologue
    
    # start of body
    li t0, 3
    mv a0, t0
    j foo_exit
    # end of body
    
foo_exit:
    # start of epilogue
    addi sp, sp, 48
    # end of epilogue
    
    ret
    
main:
    # start of prologue
    addi sp, sp, -48
    # end of prologue
    
    # start of body
    li t0, 5
    mv t1, t0
    mv a0, t1
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 48
    # end of epilogue
    
    ret
    

