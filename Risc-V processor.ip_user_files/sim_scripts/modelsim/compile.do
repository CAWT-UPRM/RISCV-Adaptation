vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/blk_mem_gen_v8_4_9
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_6
vlib modelsim_lib/msim/xbip_utils_v3_0_14
vlib modelsim_lib/msim/xbip_pipe_v3_0_10
vlib modelsim_lib/msim/dsp_macro_v1_0_7

vmap xpm modelsim_lib/msim/xpm
vmap blk_mem_gen_v8_4_9 modelsim_lib/msim/blk_mem_gen_v8_4_9
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xbip_dsp48_wrapper_v3_0_6 modelsim_lib/msim/xbip_dsp48_wrapper_v3_0_6
vmap xbip_utils_v3_0_14 modelsim_lib/msim/xbip_utils_v3_0_14
vmap xbip_pipe_v3_0_10 modelsim_lib/msim/xbip_pipe_v3_0_10
vmap dsp_macro_v1_0_7 modelsim_lib/msim/dsp_macro_v1_0_7

vlog -work xpm  -incr -mfcu  -sv \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -mfcu  \
"../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../RISCV-Adaptation/Risc-V processor.gen/sources_1/ip/blk_mem_gen_0_1/sim/blk_mem_gen_0.v" \

vcom -work xbip_dsp48_wrapper_v3_0_6  -93  \
"../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_utils_v3_0_14  -93  \
"../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_10  -93  \
"../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work dsp_macro_v1_0_7  -93  \
"../../ipstatic/hdl/dsp_macro_v1_0_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../../RISCV-Adaptation/Risc-V processor.gen/sources_1/ip/MAC_dsp/sim/MAC_dsp.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../../RISCV-Adaptation/Risc-V processor.gen/sources_1/ip/Instruction_Memory/sim/Instruction_Memory.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/ALU.sv" \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/ALU_Control.sv" \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/Control.sv" \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/Data_memory.sv" \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/EX_MEM_reg.sv" \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/ID_EX_reg.sv" \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/IF_ID_reg.sv" \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/Imm_gen.sv" \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/InstructionMemory.sv" \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/MEM_WB_reg.sv" \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/PipelinedRISCV.sv" \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/ProgramCounter.sv" \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/Registers.sv" \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/branch.sv" \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/forwarding_unit.sv" \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/hazard_detection.sv" \
"../../../../RISCV-Adaptation/Risc-V processor.srcs/sources_1/new/PipelineTester.sv" \

vlog -work xil_defaultlib \
"glbl.v"

