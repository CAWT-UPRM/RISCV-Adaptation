# RISC-V Pipelined Processor with MAC Instruction and ELF Integration

## Overview

This project implements a 5-stage pipelined RISC-V processor with support for a custom **MAC (Multiply-Accumulate)** instruction, accelerated via a dedicated DSP block. The processor supports most RV32I instructions and accepts programs compiled into **ELF binaries**, allowing for a seamless software-hardware workflow.

Designed for FPGA implementation (e.g., Basys3), the processor uses separate BRAMs for instruction and data memory, both pre-loadable from ELF-generated coe files.

## Features

- **5-Stage Pipeline**: IF, ID, EX, MEM, WB
- **Custom MAC Instruction**:  
  - Syntax: `mac rd, rs1, rs2`  
  - Semantics: `rd = rd + (rs1 * rs2)`
  - Implemented using a DSP block for fast multiply-accumulate
- **Extended Register File**:
  - Supports simultaneous `rs1`, `rs2`, and `rd` reads (for MAC) with forwarding included
- **Dual BRAM Architecture**:
  - One BRAM each for instructions and data
- **ELF Binary Integration**:
  - Use `riscv64-unknown-elf-gcc` to compile code into ELF
  - Convert ELF to `.mem` files for BRAM loading via `$readmemh`