//////////////////////////////////////////////////////////////////////////////////
// Company: CAWT
// Engineer: Fernando L. Pizarro Diaz
// 
// Create Date: 05/27/2025 10:22:03 AM
// Design Name: Name 
// Module Name: RISCV_PIPELINED
// Project Name: RISC-V Processor
// Target Devices: Basys3
// Tool Versions: SystemVerilog
// Description: A pipelined RISC-V processor implementation, with support for the majority of its instructions.
// Has 2 memory instances, and one DSP instance for MAC operations (A*B + C = P).
// ALU has its own register called accumulator (C). 
// MAC is its own instruction to substitute the mul -> add instruction when calculating convolutions
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module RISCV_PIPELINED (
    input logic clk,
    input logic reset, 
    output logic led
);
    // IF/ID pipeline registers
    logic [31:0] instruction_if_id;
    logic [31:0] pc_if_id;
    
    // Flush signal 
    logic ex_taken;
    
    // Hazard detection unit to handle stalls
    logic stall, pc_write, if_id_write;
    
    // ID/EX pipeline registers
    logic [31:0] pc_id_ex, instruction_id_ex;
    logic id_ex_branch, id_ex_bne, id_ex_blt, id_ex_bge, id_ex_mem_read, id_ex_memtoreg, id_ex_mem_write, id_ex_auipc, id_ex_alu_src, id_ex_reg_write, id_ex_jal, id_ex_jalr;
    logic [1:0] id_ex_alu_op;
    logic [31:0] data_read1_id_ex, data_read2_id_ex, data_read3_id_ex;
    logic [63:0] big_immediate_id_ex;
    logic [4:0] reg_dest_id_ex, reg1_id_ex, reg2_id_ex;
    logic [2:0] funct3_id_ex;
    logic [6:0] funct7_id_ex;
    logic id_ex_flush = ex_taken; // Flush if branch is taken
    
    logic [31:0] ex_next_pc;
    
    // EX/MEM pipeline registers
    logic ex_mem_memread, ex_mem_memwrite, ex_mem_memtoreg, ex_mem_regwrite, ex_mem_jal, ex_mem_jalr;
    logic [31:0] ex_mem_alu_result, ex_mem_data_read2;
    logic [4:0] ex_mem_reg_dest;
    logic [2:0] ex_mem_funct3;
    logic [31:0] ex_mem_link_address_reg;
    
    // MEM/WB pipeline registers
    logic mem_wb_memtoreg, mem_wb_regwrite, mem_wb_jal, mem_wb_jalr;
    logic [31:0] mem_wb_alu_result, mem_wb_memory_data_read, mem_wb_link_address;
    logic [4:0] mem_wb_reg_dest;
    logic [31:0] mem_wb_write_data;

    // -- INSTRUCTION FETCH STAGE --
    logic [31:0] pc ;
    logic [31:0] next_pc;
    logic [31:0] instruction;

    always_comb begin
        if(ex_taken) begin
            next_pc = ex_next_pc;
        end else begin
            next_pc = pc + 32'h4; 
        end
    end
        
    ProgramCounter pc_i (
        .clk(clk),
        .reset(reset),
        .pc_write(pc_write), // Control signal to write to PC
        .next_pc(next_pc), 
        .pc(pc)
    );
    
    InstructionMemory im (
        .clk(clk),
        .instruction_address(pc), 
        .instruction(instruction)
    );

    // ------INSTRUCTION FETCH / INSTRUCTION DECODE------

    IF_ID_reg if_id_reg (
        .clk(clk), 
        .reset(reset), 
        .flush(ex_taken), // IF flush should happen
        .if_id_write(if_id_write), // Control signal to write to IF/ID register
        .pc(pc), 
        .instruction(instruction), 
        // Outputs
        .pc_if_id(pc_if_id), 
        .instruction_if_id(instruction_if_id) 
    );

    // ------DECODE STAGE------
    logic [4:0] reg1, reg2, reg_dest;
    logic [6:0] opcode;
    logic [2:0] funct3;
    logic [6:0] funct7;


    // Extracting the fields for readable signals
    assign opcode = instruction_if_id[6:0]; // opcode bits
    assign reg1 = instruction_if_id[19:15]; // rs1
    assign reg2 = instruction_if_id[24:20]; // rs2
    assign reg_dest = instruction_if_id[11:7]; // rd
    assign funct3 = instruction_if_id[14:12]; // funct3 bits
    assign funct7 = instruction_if_id[31:25]; // funct7 bits

    // Register file for reading data
    logic [31:0] data_read1, data_read2, data_read3;
    
    Registers regs (
        .clk(clk),
        .reset(reset),
        .read_reg1(reg1),
        .read_reg2(reg2),
        .read_reg3(reg_dest),
        .write_reg(mem_wb_reg_dest), // added later in wb stage
        .write_data(mem_wb_write_data), // added later in wb stage
        .reg_write_enable(mem_wb_regwrite),
        .read_data1(data_read1),
        .read_data2(data_read2),
        .read_data3(data_read3)
    );
    
    logic [63:0] big_immediate;

    Immediate_generator imm_gen (
        .instruction(instruction_if_id), 
        .immediate(big_immediate) 
    );
    
    Hazard_Detection hazard_detection_unit (
        .clk(clk),
        .if_id_rs1(reg1), 
        .if_id_rs2(reg2), 
        .reg_dest_id_ex(reg_dest_id_ex), // From ID/EX stage
        .id_ex_mem_read(id_ex_mem_read), // From ID/EX stage
        .stall(stall), 
        .pc_write_(pc_write), 
        .if_id_write(if_id_write)
    );
    
    // Control signals
    logic branch, bne, blt, bge, mem_read, memtoreg, mem_write, alu_src, reg_write, jal, jalr, auipc;
    logic [1:0] alu_op;
    Control control_unit (
        .opcode(opcode),
        .funct3(funct3),
        .branch(branch),
        .bne(bne),
        .blt(blt),
        .bge(bge),
        .mem_read(mem_read),
        .memtoreg(memtoreg),
        .alu_op(alu_op),
        .mem_write(mem_write),
        .alu_src(alu_src),
        .reg_write(reg_write),
        .jal(jal),
        .jalr(jalr),
        .auipc(auipc)
    );

    // ------INSTRUCTION DECODE / EXECUTE STAGE------    

    ID_EX_reg id_ex_reg (
        .clk(clk), 
        .reset(reset), 
        .flush(id_ex_flush), // Flush if branch is taken
        .branch(branch), 
        .bne(bne),
        .blt(blt),
        .bge(bge),
        .mem_read(mem_read), 
        .memtoreg(memtoreg), 
        .mem_write(mem_write), 
        .alu_src(alu_src), 
        .reg_write(reg_write), 
        .jal(jal), 
        .jalr(jalr), 
        .auipc(auipc),
        .alu_op(alu_op), 
        .pc_if_id(pc_if_id), 
        .instruction_if_id(instruction_if_id), 
        .big_immediate(big_immediate), 
        .reg1(reg1), 
        .reg2(reg2), 
        .reg_dest(reg_dest), 
        .funct3(funct3), 
        .funct7(funct7),
        .data_read1(data_read1),
        .data_read2(data_read2),
        .data_read3(data_read3),
        
        .pc_id_ex(pc_id_ex),
        .instruction_id_ex(instruction_id_ex),
        .id_ex_branch(id_ex_branch),
        .id_ex_bne(id_ex_bne),
        .id_ex_blt(id_ex_blt),
        .id_ex_bge(id_ex_bge),
        .id_ex_mem_read(id_ex_mem_read),
        .id_ex_memtoreg(id_ex_memtoreg),
        .id_ex_mem_write(id_ex_mem_write),
        .id_ex_auipc(id_ex_auipc),
        .id_ex_alu_src(id_ex_alu_src),
        .id_ex_reg_write(id_ex_reg_write),
        .id_ex_jal(id_ex_jal),
        .id_ex_jalr(id_ex_jalr),
        .id_ex_alu_op(id_ex_alu_op),
        
        .data_read1_id_ex(data_read1_id_ex),
        .data_read2_id_ex(data_read2_id_ex),
        .data_read3_id_ex(data_read3_id_ex),
        
        .big_immediate_id_ex(big_immediate_id_ex),
        
        .reg_dest_id_ex(reg_dest_id_ex),
        
        // For store instructions
        .reg1_id_ex(reg1_id_ex), // rs1 for store instructions
        .reg2_id_ex(reg2_id_ex),

        // For R-type instructions
        .funct3_id_ex(funct3_id_ex),
        
        // For R-type instructions
        .funct7_id_ex(funct7_id_ex)
    );

    // Forwarding unit to handle data hazards
    logic [1:0] forward_a, forward_b, forward_c;
    Forward forwarding_unit ( 
        .id_ex_rs1(reg1_id_ex), 
        .id_ex_rs2(reg2_id_ex), 
        .id_ex_rs3(reg_dest_id_ex),
        .ex_mem_rd(ex_mem_reg_dest), 
        .mem_wb_rd(mem_wb_reg_dest), 
        .ex_mem_reg_write(ex_mem_regwrite), 
        .mem_wb_reg_write(mem_wb_regwrite),
        // Outputs  
        .forward_a(forward_a), 
        .forward_b(forward_b),
        .forward_c(forward_c)
    );

    // ------EXECUTE STAGE------
    logic [3:0] alu_control;
    logic [31:0] alu_result;
    logic zero;
    logic [31:0] alu_input, alu_input2;

    ALU_control alu_control_unit (
        .alu_op(id_ex_alu_op),
        .funct3(funct3_id_ex),
        .alu_src(id_ex_alu_src), 
        .funct7(funct7_id_ex[5]), // For R-type instructions, bit 30
        .funct7_mac(funct7_id_ex[0]), // For mac, bit 25
        .alu_control(alu_control)
    );

    logic [31:0] alu_operand1, alu_operand2, alu_operand3;

    // Forwarding logic for ALU inputs
    always_comb begin
        unique case (forward_a)
            2'b00: alu_operand1 = data_read1_id_ex; // No forwarding
            2'b01: alu_operand1 = mem_wb_write_data; // Forward from MEM/WB stage
            2'b10: alu_operand1 = ex_mem_alu_result; // Forward from EX/MEM stage
            default: alu_operand1 = data_read1_id_ex; // Default case
        endcase

        unique case (forward_b)
            2'b00: alu_operand2 = data_read2_id_ex; // No forwarding
            2'b01: alu_operand2 = mem_wb_write_data; // Forward from MEM/WB stage
            2'b10: alu_operand2 = ex_mem_alu_result; // Forward from EX/MEM stage
            default: alu_operand2 = data_read2_id_ex; // Default case
        endcase

        unique case (forward_c)
            2'b00: alu_operand3 = data_read3_id_ex; // No forwarding
            2'b01: alu_operand3 = mem_wb_write_data; // Forward from MEM/WB stage
            2'b10: alu_operand3 = ex_mem_alu_result; // Forward from EX/MEM stage 
            default: alu_operand3 = data_read3_id_ex; // Default case
        endcase
    end
        
    assign alu_input = id_ex_auipc ? pc_id_ex : alu_operand1; // Use PC if AUIPC is set
    assign alu_input2 = id_ex_alu_src ? big_immediate_id_ex[31:0] : alu_operand2; // Use immediate if alu_src is set
    
    ALU alu (
        .clk(clk),
        .a(alu_input), 
        .b(alu_input2), 
        .c(alu_operand3),
        .alu_control(alu_control),
        .result(alu_result),
        .zero(zero) 
    );

    logic [31:0] pc_ex2;
    logic [31:0] instruction_ex2;
    logic zero_ex1;
    logic ex2_branch, zero_ex2, ex2_bne, ex2_blt, ex2_bge, ex2_mem_read, ex2_memtoreg, ex2_mem_write, ex2_alu_src, ex2_reg_write, ex2_jal, ex2_jalr, ex2_auipc;
    logic [1:0] ex2_alu_op;
    logic [31:0] alu_result_ex1, link_addr_ex1, link_addr_ex2;
    logic [31:0] alu_result_ex2, data_read1_ex2, data_read2_ex2, data_read3_ex2;
    logic [63:0] big_immediate_ex2;
    logic [4:0] reg_dest_ex2, reg1_ex2, reg2_ex2;
    logic [2:0] funct3_ex2;
    logic [6:0] funct7_ex2;

    assign alu_result_ex1 = alu_result; // ALU result for EX1 stage
    assign link_addr_ex1 = pc_id_ex + 32'h4; // Link address for JALR, which is the next instruction address
    assign zero_ex1 = zero;

    // Intermediate register between ID/EX and EX/MEM 
    EX1_EX2_reg inter_reg (
        .clk(clk),
        .reset(reset),
        .pc_ex1(pc_id_ex),
        .instruction_ex1(instruction_id_ex),
        .zero_ex1(zero), 
        .ex1_branch(id_ex_branch),
        .ex1_bne(id_ex_bne),
        .ex1_blt(id_ex_blt),
        .ex1_bge(id_ex_bge),
        .ex1_mem_read(id_ex_mem_read),
        .ex1_memtoreg(id_ex_memtoreg),
        .ex1_mem_write(id_ex_mem_write),
        .ex1_alu_src(id_ex_alu_src),
        .ex1_reg_write(id_ex_reg_write),
        .ex1_jal(id_ex_jal),
        .ex1_jalr(id_ex_jalr),
        .ex1_auipc(id_ex_auipc),
        .ex1_alu_op(id_ex_alu_op),
        .alu_result_ex1(alu_result_ex1),
        .link_addr_ex1(link_addr_ex1), // Link address for JALR
        .data_read1_ex1(alu_input),
        .data_read2_ex1(alu_input2),
        .data_read3_ex1(alu_operand3),
        .big_immediate_ex1(big_immediate_id_ex),
        .reg1_ex1(reg1_id_ex),
        .reg2_ex1(reg2_id_ex),
        .reg_dest_ex1(reg_dest_id_ex),
        .funct3_ex1(funct3_id_ex),
        .funct7_ex1(funct7_id_ex),

        // Outputs
        .pc_ex2(pc_ex2),
        .instruction_ex2(instruction_ex2),
        .zero_ex2(zero_ex2),
        .ex2_branch(ex2_branch),
        .ex2_bne(ex2_bne),
        .ex2_blt(ex2_blt),
        .ex2_bge(ex2_bge),
        .ex2_mem_read(ex2_mem_read),
        .ex2_memtoreg(ex2_memtoreg),
        .ex2_mem_write(ex2_mem_write),
        .ex2_alu_src(ex2_alu_src),
        .ex2_reg_write(ex2_reg_write),
        .ex2_jal(ex2_jal),
        .ex2_jalr(ex2_jalr),
        .ex2_auipc(ex2_auipc),
        .ex2_alu_op(ex2_alu_op),
        .alu_result_ex2(alu_result_ex2),
        .link_addr_ex2(link_addr_ex2),
        .data_read1_ex2(data_read1_ex2),
        .data_read2_ex2(data_read2_ex2),
        .data_read3_ex2(data_read3_ex2),
        .big_immediate_ex2(big_immediate_ex2),
        .reg1_ex2(reg1_ex2),
        .reg2_ex2(reg2_ex2),
        .reg_dest_ex2(reg_dest_ex2),
        .funct3_ex2(funct3_ex2),
        .funct7_ex2(funct7_ex2)
    );

    branch branch_unit (
        .pc(pc_ex2), 
        .read_data1(data_read1_ex2), 
        .big_immediate(big_immediate_ex2),
        .branch(ex2_branch), 
        .bne(ex2_bne),
        .blt(ex2_blt),
        .bge(ex2_bge),
        .zero(zero_ex2), 
        .jal(ex2_jal), 
        .jalr(ex2_jalr), 
        .next_pc(ex_next_pc) // Next PC for branch or jump
    );

    assign ex_taken = (ex_next_pc != (pc_ex2 + 32'h4)); // Taken if next PC is not the default incremented PC

    // ------EXECUTE STAGE / MEMORY STAGE------

    EX_MEM_reg ex_mem_reg (
        .clk(clk), 
        .reset(reset), 
        .id_ex_mem_read(ex2_mem_read),
        .id_ex_mem_write(ex2_mem_write),
        .id_ex_memtoreg(ex2_memtoreg), 
        .id_ex_reg_write(ex2_reg_write), 
        .id_ex_jal(ex2_jal), 
        .id_ex_jalr(ex2_jalr), 
        .alu_result(alu_result_ex2), 
        .data_read2_id_ex(data_read2_ex2), // Data read 2 is the second ALU input
        .reg_dest_id_ex(reg_dest_ex2), // Destination register for write back
        .ex_link_address(link_addr_ex2), // Link address for JALR
        .funct3(funct3_ex2), // For store or load instructions

        // Outputs
        .ex_mem_memread(ex_mem_memread),
        .ex_mem_memwrite(ex_mem_memwrite),
        .ex_mem_memtoreg(ex_mem_memtoreg),
        .ex_mem_regwrite(ex_mem_regwrite),
        .ex_mem_jal(ex_mem_jal),
        .ex_mem_jalr(ex_mem_jalr),
        .ex_mem_alu_result(ex_mem_alu_result),
        .ex_mem_data_read2(ex_mem_data_read2),
        .ex_mem_reg_dest(ex_mem_reg_dest),
        
        // Link address for JALR
        .ex_mem_link_address_reg(ex_mem_link_address_reg),
        .ex_mem_funct3(ex_mem_funct3) // Function code for memory operations
    );

    // ------MEMORY STAGE------
    logic [31:0] memory_data_read;

    Data_memory #(
        .address_width(10), // 1024 bytes
        .data_width(32) // 4 bytes per word
    ) data_mem(
        .clk(clk),
        .address(ex_mem_alu_result), // Address for data memory is the ALU result
        .write_data(ex_mem_data_read2), // Data to write is from read data 2
        .funct3(ex_mem_funct3),
        .mem_write(ex_mem_memwrite), // Memory write control signal
        .mem_read(ex_mem_memread), // Memory read control signal
        .read_data(memory_data_read) // Data to write back to registers

    );

    MEM_WB_reg mem_wb_reg (
        .clk(clk),
        .reset(reset),
        .ex_mem_memtoreg(ex_mem_memtoreg), // Memory to register control signal
        .ex_mem_regwrite(ex_mem_regwrite), // Register write control signal
        .ex_mem_jal(ex_mem_jal), // JAL control signal
        .ex_mem_jalr(ex_mem_jalr), // JALR control signal
        .ex_mem_alu_result(ex_mem_alu_result), // ALU result
        .memory_data_read(memory_data_read), // Data read from memory
        .ex_mem_reg_dest(ex_mem_reg_dest), // Destination register for write back
        .ex_mem_link_address_reg(ex_mem_link_address_reg), // Link address for JALR

        //Outputs
        .mem_wb_memtoreg(mem_wb_memtoreg), // Memory to register control signal
        .mem_wb_regwrite(mem_wb_regwrite), // Register write control signal
        .mem_wb_jal(mem_wb_jal), // JAL control signal
        .mem_wb_jalr(mem_wb_jalr), // JALR control signal
        .mem_wb_alu_result(mem_wb_alu_result), // ALU result
        .mem_wb_memory_data_read(mem_wb_memory_data_read), // Data read from memory
        .mem_wb_reg_dest(mem_wb_reg_dest), // Destination register for write back
        .mem_wb_link_address(mem_wb_link_address), // Link address for JALR
        .mem_wb_write_data(mem_wb_write_data) // Data to write back to registers
    );
    
   assign led = alu_result[0];
    
endmodule