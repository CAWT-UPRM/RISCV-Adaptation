transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/blk_mem_gen_v8_4_9
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap blk_mem_gen_v8_4_9 activehdl/blk_mem_gen_v8_4_9
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_9  -v2k5 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib \
"../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib \
"../../../RISCV - Single Cycle.gen/sources_1/ip/Data_Memory/sim/Data_Memory.v" \
"../../../RISCV - Single Cycle.gen/sources_1/ip/Instruction_Memory/sim/Instruction_Memory.v" \

vlog -work xil_defaultlib  -sv2k12 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib \
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

