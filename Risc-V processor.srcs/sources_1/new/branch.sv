
module branch (
    input logic [31:0] pc, read_data1, read_data2,
    input logic [31:0] big_immediate, 
    input logic branch, beq, bne, blt, bge, zero, jal, jalr,
    output logic [31:0] next_pc
);

    logic take_the_branch, less, greater, nequal, equal;
    logic [31:0] branch_target;
    logic [31:0] jalr_target;

    assign less = (read_data1 < read_data2);
    assign greater = (read_data1 >= read_data2);
    assign nequal = (read_data1 != read_data2);
    assign equal = (read_data1 == read_data2);

    assign branch_target = pc + big_immediate - 32'h4; // Subtract 8 to account for the PC increment in the next cycle
    assign jalr_target = (read_data1 + big_immediate) & ~32'b1;

    assign take_the_branch = (branch && 
        ((beq && equal) || (bne && nequal) || (less && blt) || (greater && bge)));

    assign next_pc = (jal ? branch_target : 
                    jalr ? jalr_target : 
                    take_the_branch ? branch_target : 
                    pc + 4);
endmodule