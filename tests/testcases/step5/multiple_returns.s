    .text
    .global main
    
main:
    # start of prologue
    addi sp, sp, -48
    # end of prologue
    
    # start of body
    li t0, 4
    mv a0, t0
    j main_exit
    li t0, 5
    mv a0, t0
    j main_exit
    li t0, 3
    li t1, 1
    li t2, 2
    sub t3, t1, t2
    li t1, 10
    mul t2, t3, t1
    add t1, t0, t2
    li t0, 14
    li t2, 2
    mul t3, t0, t2
    and t0, t1, t3
    mv a0, t0
    j main_exit
    # end of body
    
main_exit:
    # start of epilogue
    addi sp, sp, 48
    # end of epilogue
    
    ret
    

