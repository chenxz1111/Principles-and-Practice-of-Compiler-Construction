    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -48
    # end of prologue
    
    # start of body
    li t0, 2
    li t1, 2
    li t2, 0
    sgt t3, t1, t2
    sub t1, t0, t3
    seqz t1, t1
    mv a0, t1
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 48
    # end of epilogue
    
    ret
    

