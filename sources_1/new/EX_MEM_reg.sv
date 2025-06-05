
module EX_MEM_reg (
    input logic clk,
    input logic reset,
    input logic id_ex_mem_read,
    input logic id_ex_mem_write,
    input logic id_ex_memtoreg,
    input logic id_ex_reg_write,
    input logic id_ex_jal,
    input logic id_ex_jalr,
    input logic [31:0] alu_result,
    input logic [31:0] data_read2_id_ex,
    input logic [4:0] reg_dest_id_ex,
    input logic [31:0] ex_link_address,
    input logic [2:0] funct3, // Function code for memory operations

    output logic ex_mem_memread,
    output logic ex_mem_memwrite,
    output logic ex_mem_memtoreg,
    output logic ex_mem_regwrite,
    output logic ex_mem_jal,
    output logic ex_mem_jalr,
    output logic [31:0] ex_mem_alu_result,
    output logic [31:0] ex_mem_data_read2,
    output logic [4:0] ex_mem_reg_dest,
    output logic [31:0] ex_mem_link_address_reg,
    output logic [2:0] ex_mem_funct3 // Function code for memory operations

);

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            ex_mem_memread <= 1'b0;
            ex_mem_memwrite <= 1'b0;
            ex_mem_memtoreg <= 1'b0;
            ex_mem_regwrite <= 1'b0;
            ex_mem_jal <= 1'b0;
            ex_mem_jalr <= 1'b0;
            ex_mem_alu_result <= 32'b0;
            ex_mem_data_read2 <= 32'b0;
            ex_mem_reg_dest <= 5'b0;
            ex_mem_link_address_reg <= 32'b0;
            ex_mem_funct3 <= 3'b0; // Initialize funct3 to zero

        end else begin
            ex_mem_memread <= id_ex_mem_read; // Memory read control signal
            ex_mem_memwrite <= id_ex_mem_write; // Memory write control signal
            ex_mem_memtoreg <= id_ex_memtoreg; // Memory to register control signal
            ex_mem_regwrite <= id_ex_reg_write; // Register write control signal
            ex_mem_jal <= id_ex_jal; // JAL control signal
            ex_mem_jalr <= id_ex_jalr; // JALR control signal
            ex_mem_alu_result <= alu_result; // ALU result
            ex_mem_data_read2 <= data_read2_id_ex; // Data read from registers for store instructions
            ex_mem_reg_dest <= reg_dest_id_ex; // Destination register for write back
            ex_mem_link_address_reg <= ex_link_address; // Link address for JALR
            ex_mem_funct3 <= funct3; // Function code for memory operations

        end
    end
endmodule