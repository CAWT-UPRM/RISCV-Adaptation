
module ID_EX_reg (
    input logic clk, 
    input logic reset, 
    input logic flush,
    input logic branch,
    input logic mem_read,
    input logic memtoreg,
    input logic mem_write,
    input logic alu_src,
    input logic reg_write,
    input logic jal,
    input logic jalr,
    input logic [1:0] alu_op,
    input logic [31:0] pc_if_id,
    input logic [31:0] instruction_if_id,
    input logic [63:0] big_immediate,
    input logic [4:0] reg1,
    input logic [4:0] reg2,
    input logic [4:0] reg_dest,
    input logic [2:0] funct3,
    input logic [6:0] funct7,
    input logic [31:0] data_read1,
    input logic [31:0] data_read2,
    input logic [1:0] id_size, // Size of the data to be written (e.g., 00 for byte, 01 for half-word, 10 for word)
    input logic id_load_unsigned, // Flag to indicate if the load is unsigned

    output logic [31:0] pc_id_ex,
    output logic [31:0] instruction_id_ex,
    output logic id_ex_branch,
    output logic id_ex_mem_read,
    output logic id_ex_memtoreg,
    output logic id_ex_mem_write,
    output logic id_ex_alu_src,
    output logic id_ex_reg_write,
    output logic id_ex_jal,
    output logic id_ex_jalr,
    output logic [1:0] id_ex_alu_op,
    output logic [31:0] data_read1_id_ex,
    output logic [31:0] data_read2_id_ex,
    output logic [63:0] big_immediate_id_ex,
    output logic [4:0] reg_dest_id_ex,
    output logic [4:0] reg2_id_ex,
    output logic [4:0] reg1_id_ex,
    output logic [2:0] funct3_id_ex,
    output logic [6:0] funct7_id_ex,
    output logic [1:0] id_ex_size, // Size of the data to be written
    output logic id_ex_load_unsigned // Flag to indicate if the load is unsigned
    
);

    always_ff @(posedge clk or posedge reset) begin
        if (reset || flush) begin
            pc_id_ex <= 32'b0;
            id_ex_branch <= 1'b0;
            id_ex_mem_read <= 1'b0;
            id_ex_memtoreg <= 1'b0;
            id_ex_mem_write <= 1'b0;
            id_ex_alu_src <= 1'b0;
            id_ex_reg_write <= 1'b0;
            id_ex_jal <= 1'b0;
            id_ex_jalr <= 1'b0;
            id_ex_alu_op <= 2'b0;
            data_read1_id_ex <= 32'b0;
            data_read2_id_ex <= 32'b0;
            big_immediate_id_ex <= 64'b0;
            reg_dest_id_ex <= 5'b0;
            reg2_id_ex <= 5'b0;
            reg1_id_ex <= 5'b0;
            funct3_id_ex <= 3'b0;
            funct7_id_ex <= 7'b0;
            id_ex_size <= 2'b0; 
            id_ex_load_unsigned <= 1'b0; 

        end else begin

            pc_id_ex <= pc_if_id; 
            id_ex_branch <= branch;
            id_ex_mem_read <= mem_read;
            id_ex_memtoreg <= memtoreg;
            id_ex_mem_write <= mem_write;
            id_ex_alu_src <= alu_src;
            id_ex_reg_write <= reg_write;
            id_ex_jal <= jal;
            id_ex_jalr <= jalr;
            id_ex_alu_op <= alu_op;
            data_read1_id_ex <= data_read1; // Read data 1 from registers
            data_read2_id_ex <= data_read2; // Read data 2 from registers
            big_immediate_id_ex <= big_immediate; // Immediate value
            reg_dest_id_ex <= reg_dest; // Destination register
            reg1_id_ex <= reg1; // First source register
            reg2_id_ex <= reg2; // Second source register
            funct3_id_ex <= funct3; // funct3 bits
            funct7_id_ex <= funct7; // funct7 bits
            id_ex_size <= id_ex_size; // Size of the data to be written
            id_ex_load_unsigned <= id_ex_load_unsigned; // Flag for unsigned load
        end
    end
endmodule