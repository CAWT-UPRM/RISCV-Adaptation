
module branch (
    input logic [31:0] pc, instruction, read_data1,
    input logic [63:0] big_immediate, 
    input logic branch, zero, jal, jalr,
    output logic [31:0] next_pc
);

    // PC Source, HOTFIXED, -4 because for some reason the instruction memory does not load the first instruction, and chatgpt gave me garbage,
    // So I just made it start on the label
    always_comb begin 
        if (jal) begin
            next_pc = pc + big_immediate[31:0] - 32'h4; // JAL instruction updates PC
        end else if (jalr) begin
            next_pc = (read_data1 + big_immediate) & ~32'b1; // JALR instruction updates PC
        end else if (branch && zero) begin //Beq
            next_pc = pc + big_immediate[31:0] - 32'h4; 
        end else if (branch && (instruction[14:12] == 3'b001) && !zero) begin //Bne 
            next_pc = pc + big_immediate[31:0] - 32'h4;
        end else if (branch && (instruction[14:12] == 3'b101 && instruction[19:15] < instruction[24:20])) begin // Blt
            next_pc = pc + big_immediate[31:0] - 32'h4;
        end else if (branch && (instruction[14:12] == 3'b110 && instruction[19:15] >= instruction[24:20])) begin // Bge 
            next_pc = pc + big_immediate[31:0] - 32'h4;
        end else begin
            next_pc = pc + 32'h4; // Default case, increment PC by 4
        end
    end
endmodule