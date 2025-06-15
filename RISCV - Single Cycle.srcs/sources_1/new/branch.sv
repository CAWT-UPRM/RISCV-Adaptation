
module branch (
    input logic [31:0] pc, read_data1,
    input logic [63:0] big_immediate, 
    input logic branch, bne, blt, bge, zero, jal, jalr,
    output logic [31:0] next_pc
);

    logic take_the_branch;

    always_comb begin 
        take_the_branch = 1'b0; // Default: do not take the branch

        if (branch) begin
            if(zero && !bne) begin
                take_the_branch = 1'b1; // Branch taken if zero and not BNE
            end else if (!zero && bne) begin
                take_the_branch = 1'b1; // Branch taken if not zero and BNE
            end else if (blt && !zero) begin
                take_the_branch = 1'b1; // Branch taken for BLT
            end else if (bge && zero) begin
                take_the_branch = 1'b1; // Branch taken for BGE
            end else begin
                take_the_branch = 1'b0; // No branch taken
            end
        end

        if (jal) begin
            next_pc = pc + big_immediate[31:0]; // JAL instruction updates PC
        end else if (jalr) begin
            next_pc = (read_data1 + big_immediate) & ~32'b1; // JALR instruction updates PC
        end else if (branch) begin
            next_pc = pc + big_immediate[31:0];
        end else begin
            next_pc = pc + 4; // Default: next PC is current PC + 4
        end
    end
endmodule