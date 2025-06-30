
module IF_ID_reg (
    input logic clk, 
    input logic reset, 
    input logic flush,
    input logic if_id_write,
    input logic [31:0] instruction,
    input logic [31:0] pc,
    
    output logic [31:0] pc_if_id,
    output logic [31:0] instruction_if_id

);

    logic double_flush;

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            pc_if_id <= 32'b0;
            instruction_if_id <= 32'b0;
        end else if (flush) begin
            pc_if_id <= 32'b0; // Reset PC in IF/ID register
            instruction_if_id <= 32'h13; // Reset instruction in IF/ID register
            double_flush <= 1'b1; 
        end else if (double_flush) begin
            pc_if_id <= 32'b0; // Reset PC in IF/ID register
            instruction_if_id <= 32'h13; // Reset instruction in IF/ID register
            double_flush <= 1'b0; // Reset double flush flag
        end else if (if_id_write) begin
            pc_if_id <= pc; // Store current PC in IF/ID register
            instruction_if_id <= instruction; // Store current instruction in IF/ID register
        end
    end
endmodule