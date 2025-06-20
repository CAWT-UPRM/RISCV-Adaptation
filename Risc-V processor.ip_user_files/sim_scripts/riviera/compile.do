transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/blk_mem_gen_v8_4_9
vlib riviera/xil_defaultlib
vlib riviera/xbip_dsp48_wrapper_v3_0_6
vlib riviera/xbip_utils_v3_0_14
vlib riviera/xbip_pipe_v3_0_10
vlib riviera/dsp_macro_v1_0_7

vmap xpm riviera/xpm
vmap blk_mem_gen_v8_4_9 riviera/blk_mem_gen_v8_4_9
vmap xil_defaultlib riviera/xil_defaultlib
vmap xbip_dsp48_wrapper_v3_0_6 riviera/xbip_dsp48_wrapper_v3_0_6
vmap xbip_utils_v3_0_14 riviera/xbip_utils_v3_0_14
vmap xbip_pipe_v3_0_10 riviera/xbip_pipe_v3_0_10
vmap dsp_macro_v1_0_7 riviera/dsp_macro_v1_0_7

vlog -work xpm  -incr -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib -l xbip_dsp48_wrapper_v3_0_6 -l xbip_utils_v3_0_14 -l xbip_pipe_v3_0_10 -l dsp_macro_v1_0_7 \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -v2k5 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib -l xbip_dsp48_wrapper_v3_0_6 -l xbip_utils_v3_0_14 -l xbip_pipe_v3_0_10 -l dsp_macro_v1_0_7 \
"../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib -l xbip_dsp48_wrapper_v3_0_6 -l xbip_utils_v3_0_14 -l xbip_pipe_v3_0_10 -l dsp_macro_v1_0_7 \
"../../../Risc-V processor.gen/sources_1/ip/blk_mem_gen_0_1/sim/blk_mem_gen_0.v" \

vcom -work xbip_dsp48_wrapper_v3_0_6 -93  -incr \
"../../ipstatic/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_utils_v3_0_14 -93  -incr \
"../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_10 -93  -incr \
"../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work dsp_macro_v1_0_7 -93  -incr \
"../../ipstatic/hdl/dsp_macro_v1_0_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../Risc-V processor.gen/sources_1/ip/MAC_dsp/sim/MAC_dsp.vhd" \

vlog -work xil_defaultlib  -incr -l xpm -l blk_mem_gen_v8_4_9 -l xil_defaultlib -l xbip_dsp48_wrapper_v3_0_6 -l xbip_utils_v3_0_14 -l xbip_pipe_v3_0_10 -l dsp_macro_v1_0_7 \
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
"../../../Risc-V processor.srcs/sim_1/imports/Risc-V processor/Risc-V processor.srcs/sources_1/new/PipelineTester.sv" \

vlog -work xil_defaultlib \
"glbl.v"

