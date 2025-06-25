
module EX1_EX2_reg (
    input logic clk, 
    input logic reset, 
    input logic flush,
    input logic [31:0] pc_ex1,
    input logic [31:0] instruction_ex1,
    input logic zero_ex1,
    input logic ex1_branch,
    input logic ex1_bne,    
    input logic ex1_blt,
    input logic ex1_bge,
    input logic ex1_mem_read,
    input logic ex1_memtoreg,
    input logic ex1_mem_write,
    input logic ex1_alu_src,
    input logic ex1_reg_write,
    input logic ex1_jal,
    input logic ex1_jalr,
    input logic ex1_auipc,
    input logic [1:0] ex1_alu_op,
    input logic [31:0] alu_result_ex1,
    input logic [31:0] link_addr_ex1,
    input logic [31:0] data_read1_ex1,
    input logic [31:0] data_read2_ex1,
    input logic [31:0] data_read3_ex1,
    input logic [31:0] big_immediate_ex1,
    input logic [4:0] reg1_ex1,
    input logic [4:0] reg2_ex1,
    input logic [4:0] reg_dest_ex1,
    input logic [2:0] funct3_ex1,
    input logic [6:0] funct7_ex1,

    output logic [31:0] pc_ex2,
    output logic [31:0] instruction_ex2,
    output logic zero_ex2,
    output logic ex2_branch,
    output logic ex2_bne,
    output logic ex2_blt,
    output logic ex2_bge,
    output logic ex2_mem_read,
    output logic ex2_memtoreg,
    output logic ex2_mem_write,
    output logic ex2_alu_src,
    output logic ex2_reg_write,
    output logic ex2_jal,
    output logic ex2_jalr,
    output logic ex2_auipc,
    output logic [1:0] ex2_alu_op,
    output logic [31:0] alu_result_ex2,
    output logic [31:0] link_addr_ex2,
    output logic [31:0] data_read1_ex2,
    output logic [31:0] data_read2_ex2,
    output logic [31:0] data_read3_ex2,
    output logic [31:0] big_immediate_ex2,
    output logic [4:0] reg1_ex2,
    output logic [4:0] reg2_ex2,
    output logic [4:0] reg_dest_ex2,
    output logic [2:0] funct3_ex2,
    output logic [6:0] funct7_ex2
);

    always_ff @(posedge clk or posedge reset) begin
        if(reset || flush) begin
            pc_ex2 <= 32'b0;
            instruction_ex2 <= 32'b0;
            ex2_branch <= 1'b0;
            ex2_bne <= 1'b0;
            ex2_blt <= 1'b0;
            ex2_bge <= 1'b0;
            ex2_mem_read <= 1'b0;
            ex2_memtoreg <= 1'b0;
            ex2_mem_write <= 1'b0;
            ex2_alu_src <= 1'b0;
            ex2_reg_write <= 1'b0;
            ex2_jal <= 1'b0;
            ex2_jalr <= 1'b0;
            ex2_auipc <= 1'b0;
            ex2_alu_op <= 2'b0;
            data_read1_ex2 <= 32'b0;
            data_read2_ex2 <= 32'b0;
            data_read3_ex2 <= 32'b0;
            big_immediate_ex2 <= 32'b0;
            reg1_ex2 <= 5'b0;
            reg2_ex2 <= 5'b0;
            reg_dest_ex2 <= 5'b0;
            funct3_ex2 <= 3'b0;
            funct7_ex2 <= 7'b0;    
            alu_result_ex2 <= 32'b0;
            link_addr_ex2 <= 32'b0;
            zero_ex2 <= 1'b0;

        end else begin

            pc_ex2 <= pc_ex1;
            instruction_ex2 <= instruction_ex1;
            ex2_branch <= ex1_branch;
            ex2_bne <= ex1_bne;
            ex2_blt <= ex1_blt;
            ex2_bge <= ex1_bge;
            ex2_mem_read <= ex1_mem_read;
            ex2_memtoreg <= ex1_memtoreg;
            ex2_mem_write <= ex1_mem_write;
            ex2_alu_src <= ex1_alu_src;
            ex2_reg_write <= ex1_reg_write;
            ex2_jal <= ex1_jal;
            ex2_jalr <= ex1_jalr;
            ex2_auipc <= ex1_auipc;
            ex2_alu_op <= ex1_alu_op;
            data_read1_ex2 <= data_read1_ex1;
            data_read2_ex2 <= data_read2_ex1;
            data_read3_ex2 <= data_read3_ex1;
            big_immediate_ex2 <= big_immediate_ex1;
            reg1_ex2 <= reg1_ex1;
            reg2_ex2 <= reg2_ex1;
            reg_dest_ex2 <= reg_dest_ex1;
            funct3_ex2 <= funct3_ex1;
            funct7_ex2 <= funct7_ex1;
            zero_ex2 <= zero_ex1;
            alu_result_ex2 <= alu_result_ex1;
            link_addr_ex2 <= link_addr_ex1;
        end
    end
endmodule