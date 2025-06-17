

module MEM_WB_reg (
    input logic clk,
    input logic reset,
    input logic ex_mem_memtoreg, // Memory to register control signal
    input logic ex_mem_regwrite, // Register write control signal
    input logic ex_mem_jal, // JAL control signal
    input logic ex_mem_jalr, // JALR control signal
    input logic [31:0] ex_mem_alu_result, // ALU result
    input logic [31:0] memory_data_read, // Data read from memory
    input logic [4:0] ex_mem_reg_dest, // Destination register for write back
    input logic [31:0] ex_mem_link_address_reg, // Link address for JALR

    output logic mem_wb_memtoreg, // Memory to register control signal
    output logic mem_wb_regwrite, // Register write control signal
    output logic mem_wb_jal, // JAL control signal
    output logic mem_wb_jalr, // JALR control signal
    output logic [31:0] mem_wb_alu_result, // ALU result
    output logic [31:0] mem_wb_memory_data_read, // Data read from memory
    output logic [4:0] mem_wb_reg_dest, // Destination register for write back
    output logic [31:0] mem_wb_link_address, // Link address for JALR
    output logic [31:0] mem_wb_write_data // Data to write back to registers
);

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            mem_wb_memtoreg <= 1'b0;
            mem_wb_regwrite <= 1'b0;
            mem_wb_jal <= 1'b0;
            mem_wb_jalr <= 1'b0;
            mem_wb_alu_result <= 32'b0;
            mem_wb_memory_data_read <= 32'b0;
            mem_wb_reg_dest <= 5'b0;
            mem_wb_link_address <= 32'b0;

        end else begin
            mem_wb_memtoreg <= ex_mem_memtoreg; // Memory to register control signal
            mem_wb_regwrite <= ex_mem_regwrite; // Register write control signal
            mem_wb_jal <= ex_mem_jal; // JAL control signal
            mem_wb_jalr <= ex_mem_jalr; // JALR control signal
            mem_wb_alu_result <= ex_mem_alu_result; // ALU result
            mem_wb_memory_data_read <= memory_data_read; // Data read from memory
            mem_wb_reg_dest <= ex_mem_reg_dest; // Destination register for write back
            mem_wb_link_address <= ex_mem_link_address_reg; // Link address for JALR
        end
    end

    // Mem to Reg multiplexer
    always_comb begin 
        if (mem_wb_jal || mem_wb_jalr) begin
            mem_wb_write_data = mem_wb_link_address; // Use link address for JALR
        end else if(mem_wb_memtoreg) begin
            mem_wb_write_data = mem_wb_memory_data_read; 
        end else begin
            mem_wb_write_data = mem_wb_alu_result; 
        end
    end

endmodule