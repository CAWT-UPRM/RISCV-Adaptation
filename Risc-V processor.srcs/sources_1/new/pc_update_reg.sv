
module pc_update_reg (
    input logic clk,
    input logic reset, 
    input logic ex_taken,
    input logic [31:0] ex_next_pc, // Next PC from the EX stage

    output logic pc_taken,
    output logic [31:0] pc_next_pc // Updated PC value

);

    always_ff @(posedge clk or posedge reset) begin
        if(reset) begin
            pc_taken <= 1'b0;
            pc_next_pc <= 32'b0; 
        end else begin
            pc_taken <= ex_taken;
            pc_next_pc <= ex_next_pc;
        end
    end

endmodule