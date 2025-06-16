
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

    assign next_pc = (jal ? branch_target : 
                    jalr ? jalr_target : 
                    take_the_branch ? branch_target : 
                    pc + 4);
endmodule