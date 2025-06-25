.data 
    signal: .zero 4096 #1024 * 4
    kernel: .word 1,1,1 # {1,1,1}
    result: .zero 4088 #1022 * 4
    
.text
.globl main

main:
    # ---------- initialization (do not use this) ----------
    # ---------- This is to add the 1d matrix to memory ----------
    li   t0, 0             # i = 0
    la   t1, signal        # base address of signal[]
    li   t2, 1
    li   t6, 1024
init_loop:
    add  t3, t0, t2        # t3 = i+1
    slli t4, t0, 2         # t4 = i*4
    add  t5, t1, t4        # t5 = &signal[i]
    sw   t3, 0(t5)
    addi t0, t0, 1
    blt  t0, t6, init_loop

    
forever:
    jal forever