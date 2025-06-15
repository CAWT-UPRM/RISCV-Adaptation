

module RISCV_Single_Cycle (
    input logic clk,
    input logic reset,
    output logic led
);

    logic [31:0] pc;
    logic [31:0] next_pc;
    logic [31:0] instruction;
    logic [31:0] data_read1, data_read2;
    logic [31:0] data_to_write; // write data wire registers
    logic [63:0] big_immediate;
    logic [31:0] memory_data_read; // read data wire

    logic branch, bne, blt, bge, auipc, mem_read, memtoreg, mem_write, alu_src, reg_write, jal, jalr, zero;
    logic [1:0] alu_op;
    logic [31:0] alu_result; 
    logic [3:0] alu_control;
 
    ProgramCounter pc_i (
        .clk(clk),
        .reset(reset),
        .next_pc(next_pc), 
        .pc(pc)
    );

    InstructionMemory im (
        .clk(clk),
        .instruction_adress(pc), 
        .instruction(instruction)
    );

    Registers regs (
        .read_reg1(instruction[19:15]),
        .read_reg2(instruction[24:20]),
        .write_reg(instruction[11:7]),
        .write_data(data_to_write), 
        .reg_write_enable(reg_write),
        .read_data1(data_read1),
        .read_data2(data_read2) 
    );

    Control control_unit (
        .opcode(instruction[6:0]),
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

    ALU_control alu_control_unit (
        .alu_op(alu_op),
        .funct3(instruction[14:12]),
        .alu_src(alu_src),
        .funct7(instruction[30]),
        .funct7_mac(instruction[25]), // For multiplication
        .alu_control(alu_control)
    );

    Immediate_generator imm_gen (
        .instruction(instruction), 
        .immediate(big_immediate) 
    );

    ALU alu (
        .a(auipc ? pc : data_read1),
        .b(alu_src ? big_immediate[31:0] : data_read2), // Use immediate value if alu_src is set
        .alu_control(alu_control),
        .result(alu_result),
        .zero(zero) 
    );

    branch branch_unit (
        .pc(pc),
        .read_data1(data_read1),
        .big_immediate(big_immediate),
        .branch(branch),
        .bne(bne),
        .blt(blt),
        .bge(bge),
        .zero(zero),
        .jal(jal),
        .jalr(jalr),
        .next_pc(next_pc) // where next PC is calculated
    );

    Data_memory #(
        .address_width(10), // 1024 bytes
        .data_width(32) // 4 bytes per word
    ) data_mem(
        .clk(clk),
        .address(alu_result), // Address for data memory is the ALU result
        .write_data(data_read2), // Data to write is from read data 2
        .funct3(instruction[14:12]), // funct3 bits for memory operations
        .mem_write(mem_write), // Memory write control signal
        .mem_read(mem_read), // Memory read control signal
        .read_data(memory_data_read) // Data to write back to registers

    );

    // Mem to Reg multiplexer
    always_comb begin 
        if (jal || jalr) begin
            data_to_write = pc + 32'h4; // Write PC+4 to register for JAL and JALR
        end else if (memtoreg) begin
            data_to_write = memory_data_read; 
        end else begin
            data_to_write = alu_result; 
        end
    end
    
    assign led = alu_result[0];
    
endmodule