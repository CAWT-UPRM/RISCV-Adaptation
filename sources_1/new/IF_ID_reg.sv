
module IF_ID_reg (
    input logic clk, 
    input logic reset, 
    input logic ex_mem_taken,
    input logic [31:0] instruction,
    input logic [31:0] pc,
    
    output logic [31:0] pc_if_id,
    output logic [31:0] instruction_if_id

);

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            pc_if_id <= 32'b0;
            instruction_if_id <= 32'b0;
        end else if (ex_mem_taken) begin
            pc_if_id <= 32'b0;
            instruction_if_id <= 32'h00000013; // NOP instruction
        end else begin
            pc_if_id <= pc; // Store current PC in IF/ID register
            instruction_if_id <= instruction; // Store current instruction in IF/ID register
        end
    end
endmodule