
module branch (
    input logic [31:0] pc, read_data1,
    input logic [63:0] big_immediate, 
    input logic branch, bne, blt, bge, zero, jal, jalr,
    output logic [31:0] next_pc
);

    logic take_the_branch;
    logic [31:0] branch_target = pc + big_immediate[31:0];
    logic [31:0] jalr_target = (read_data1 + big_immediate) & ~32'b1;;

    assign take_the_branch = (branch && 
        ((zero && !bne) || (!zero && bne) || (blt && !zero) || (bge && zero)));

    always_comb begin 
        if (jal) begin
            next_pc = branch_target; // JAL instruction updates PC
        end else if (jalr) begin
            next_pc = jalr_target; // JALR instruction updates PC
        end else if (take_the_branch) begin
            next_pc = branch_target;;
        end else begin
            next_pc = pc + 4; // Default: next PC is current PC + 4
        end
    end
endmodule