transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xpm
vlib activehdl/blk_mem_gen_v8_4_9
vlib activehdl/xil_defaultlib
vlib activehdl/xbip_dsp48_wrapper_v3_0_6
vlib activehdl/xbip_utils_v3_0_14
vlib activehdl/xbip_pipe_v3_0_10
vlib activehdl/dsp_macro_v1_0_7

vmap xpm activehdl/xpm
vmap blk_mem_gen_v8_4_9 activehdl/blk_mem_gen_v8_4_9
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xbip_dsp48_wrapper_v3_0_6 activehdl/xbip_dsp48_wrapper_v3_0_6
vmap xbip_utils_v3_0_14 activehdl/xbip_utils_v3_0_14
vmap xbip_pipe_v3_0_10 activehdl/xbip_pipe_v3_0_10
vmap dsp_macro_v1_0_7 activehdl/dsp_macro_v1_0_7

vlog -work xpm  -sv2k12 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib -l xbip_dsp48_wrapper_v3_0_6 -l xbip_utils_v3_0_14 -l xbip_pipe_v3_0_10 -l dsp_macro_v1_0_7 \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_9  -v2k5 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib -l xbip_dsp48_wrapper_v3_0_6 -l xbip_utils_v3_0_14 -l xbip_pipe_v3_0_10 -l dsp_macro_v1_0_7 \
"../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib -l xbip_dsp48_wrapper_v3_0_6 -l xbip_utils_v3_0_14 -l xbip_pipe_v3_0_10 -l dsp_macro_v1_0_7 \
"../../../Risc-V processor.gen/sources_1/ip/blk_mem_gen_0_1/sim/blk_mem_gen_0.v" \

vcom -work xbip_dsp48_wrapper_v3_0_6 -93  \
"../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_utils_v3_0_14 -93  \
"../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_10 -93  \
"../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work dsp_macro_v1_0_7 -93  \
"../../ipstatic/hdl/dsp_macro_v1_0_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../Risc-V processor.gen/sources_1/ip/MAC_dsp/sim/MAC_dsp.vhd" \

vlog -work xil_defaultlib  -v2k5 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib -l xbip_dsp48_wrapper_v3_0_6 -l xbip_utils_v3_0_14 -l xbip_pipe_v3_0_10 -l dsp_macro_v1_0_7 \
"../../../Risc-V processor.gen/sources_1/ip/Instruction_Memory/sim/Instruction_Memory.v" \

vlog -work xil_defaultlib  -sv2k12 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib -l xbip_dsp48_wrapper_v3_0_6 -l xbip_utils_v3_0_14 -l xbip_pipe_v3_0_10 -l dsp_macro_v1_0_7 \
"../../../Risc-V processor.srcs/sources_1/new/ALU.sv" \
"../../../Risc-V processor.srcs/sources_1/new/ALU_Control.sv" \
"../../../Risc-V processor.srcs/sources_1/new/Control.sv" \
"../../../Risc-V processor.srcs/sources_1/new/Data_memory.sv" \
"../../../Risc-V processor.srcs/sources_1/new/EX_MEM_reg.sv" \
"../../../Risc-V processor.srcs/sources_1/new/ID_EX_reg.sv" \
"../../../Risc-V processor.srcs/sources_1/new/IF_ID_reg.sv" \
"../../../Risc-V processor.srcs/sources_1/new/Imm_gen.sv" \
"../../../Risc-V processor.srcs/sources_1/new/InstructionMemory.sv" \
"../../../Risc-V processor.srcs/sources_1/new/MEM_WB_reg.sv" \
"../../../Risc-V processor.srcs/sources_1/new/PipelinedRISCV.sv" \
"../../../Risc-V processor.srcs/sources_1/new/ProgramCounter.sv" \
"../../../Risc-V processor.srcs/sources_1/new/Registers.sv" \
"../../../Risc-V processor.srcs/sources_1/new/branch.sv" \
"../../../Risc-V processor.srcs/sources_1/new/forwarding_unit.sv" \
"../../../Risc-V processor.srcs/sources_1/new/hazard_detection.sv" \
"../../../Risc-V processor.srcs/sources_1/new/PipelineTester.sv" \

vlog -work xil_defaultlib \
"glbl.v"

