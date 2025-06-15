vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/blk_mem_gen_v8_4_9
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap blk_mem_gen_v8_4_9 questa_lib/msim/blk_mem_gen_v8_4_9
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -incr -mfcu  -sv \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -mfcu  \
"../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../RISCV - Single Cycle.gen/sources_1/ip/Data_Memory/sim/Data_Memory.v" \
"../../../RISCV - Single Cycle.gen/sources_1/ip/Instruction_Memory/sim/Instruction_Memory.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv \
"../../../../RISCV-Adaptation/ALU.sv" \
"../../../../RISCV-Adaptation/ALU_Control.sv" \
"../../../../RISCV-Adaptation/Control.sv" \
"../../../../RISCV-Adaptation/Data_memory.sv" \
"../../../../RISCV-Adaptation/Imm_gen.sv" \
"../../../../RISCV-Adaptation/InstructionMemory.sv" \
"../../../../RISCV-Adaptation/Pipelined_RISCV.sv" \
"../../../../RISCV-Adaptation/ProgramCounter.sv" \
"../../../../RISCV-Adaptation/Registers.sv" \
"../../../../RISCV-Adaptation/branch.sv" \
"../../../../RISCV-Adaptation/Single_Cycle_Tester.sv" \

vlog -work xil_defaultlib \
"glbl.v"

