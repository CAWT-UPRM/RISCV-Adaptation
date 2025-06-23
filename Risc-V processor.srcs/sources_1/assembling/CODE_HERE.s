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
init_loop:
    li   t2, 1
    add  t3, t0, t2        # t3 = i+1
    slli t4, t0, 2         # t4 = i*4
    add  t5, t1, t4        # t5 = &signal[i]
    sw   t3, 0(t5)
    addi t0, t0, 1
    li   t6, 1024
    blt  t0, t6, init_loop

    # ---------- Convolution (start here) ----------
    add t0, zero, zero # i = 0 
    la t1, signal
    la t2, kernel
    la t3, result
outer_loop:
    addi t4, zero, 0 # sum = 0
    addi t5, zero, 0 # j = 0
    
inner_loop:
    # loading signal[i + j]
    add s2, t0, t5 # s2 = i + j
    slli s2, s2, 2 # word_offset * 4
    add s2, t1, s2 # s2 = &signal[i+j]
    lw s3, 0(s2)
    
    # loading kernel [j]
    slli s4, t5, 2 # s4 = j * 4
    add s4, t2, s4 # &kernel[j]
    lw s5, 0(s4)
    
    # MAC!!!!!!!!!
    # This should be changed to: 
    #  MACF t4, s5, s3; ie t4 += s5 * s3
    mul s6, s5, s3
    add t4, t4, s6
    
    addi t5, t5, 1
    addi s7, zero, 3
    blt t5, s7, inner_loop
    
    #Outside of inner loop 
    slli s8, t0, 2 # i * 4
    add s8, t3, s8
    sw t4, 0(s8)
    
    addi t0, t0, 1
    addi s9, zero, 1022
    blt t0, s9, outer_loop