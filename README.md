**Note** 
This is the Risc-V Pipelined Datapath adaptation with the MAC instruction added.
MAC uses same opcode as the mult extension for simplicity, but uses a DSP in order to calculate
`C += A * B` ; Registers now have 3 data outputs, for rs1, rs2, and rd.