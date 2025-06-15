

module ALU_control (
   input logic [1:0] alu_op,
   input logic [2:0] funct3, //  bits 14 - 12
   input logic alu_src,
   input logic funct7, // bit 30
   input logic funct7_mac, // bit 25 for mults
   output logic [3:0] alu_control  
);
    
    always_comb begin
        alu_control = 4'b0; // Default value
        case (alu_op)
            2'b00 : alu_control = 4'b0010; // forced addition for lw or sw

            2'b01 : alu_control = 4'b0110; // forced subtraction for branching

            2'b10: begin // R-types or I-types
                if(!alu_src) begin // R-type instructions
                    unique case ({funct7, funct7_mac, funct3})
                        5'b00_111 : alu_control = 4'b0000; // and
                        5'b00_110 : alu_control = 4'b0001; // or
                        5'b00_000 : alu_control = 4'b0010; // add
                        5'b00_001 : alu_control = 4'b0011; // sll
                        5'b00_100 : alu_control = 4'b0100; // xor
                        5'b00_101 : alu_control = 4'b0101; // srl
                        5'b10_000 : alu_control = 4'b0110; // sub
                        5'b00_010 : alu_control = 4'b0111; // slt
                        5'b00_011 : alu_control = 4'b1001; // sltu
                        5'b10_101 : alu_control = 4'b1010; // sra
                        5'b01_000 : alu_control = 4'b1011; // mult (mul)
                        5'b01_100 : alu_control = 4'b1100; // div
                        5'b01_101 : alu_control = 4'b1101; // rem
                        default: alu_control = 4'b0; // default case
                    endcase
                end else begin
                    unique case (funct3) // I-type instructions
                        3'b111 : alu_control = 4'b0000; // and for I-type
                        3'b110 : alu_control = 4'b0001; // or for I-type
                        3'b000 : alu_control = 4'b0010; // add for I-type
                        3'b100 : alu_control = 4'b0100; // xor for I-type
                        3'b001 : alu_control = 4'b0111; // slt for I-type
                        3'b010 : alu_control = 4'b1001; // sltu for I-type
                        default: alu_control = 4'b0; // default case
                    endcase
                end
            end
            // 11 not used
            default: alu_control = '0; 
        endcase
    end
endmodule