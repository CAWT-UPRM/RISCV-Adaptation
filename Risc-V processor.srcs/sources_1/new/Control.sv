

module Control (
    input logic [6:0] opcode, // 7-bit opcode, instruction bits 6:0
    input logic [2:0] funct3, // 3-bit funct3, instruction bits 14:12

    output logic branch,
    output logic beq,
    output logic bne,
    output logic blt, 
    output logic bge, 
    output logic mem_read,
    output logic memtoreg,
    output logic [1:0] alu_op,
    output logic mem_write,
    output logic alu_src,
    output logic reg_write,
    output logic jal,
    output logic jalr,
    output logic auipc
);

    always_comb begin

        // Default values
        branch = 1'b0;
        mem_read = 1'b0;
        memtoreg = 1'b0;
        alu_op = 2'b10; 
        mem_write = 1'b0;
        alu_src = 1'b0;
        reg_write = 1'b1;
        jal = 1'b0;
        jalr = 1'b0; 
        beq = 1'b0;
        bne = 1'b0;
        blt = 1'b0;
        bge = 1'b0;
        auipc = 1'b0;


        case (opcode)
            7'b0110011 : begin // R-type
                alu_op = 2'b10; 
                reg_write = 1'b1;
            end
        
            7'b0010011 : begin // I-types 
                alu_op = 2'b10; 
                alu_src = 1'b1; 
                reg_write = 1'b1;
            end

            7'b0000011 : begin // loads 
                mem_read = 1'b1;
                memtoreg = 1'b1;
                alu_op = 2'b00; 
                alu_src = 1'b1; 
                reg_write = 1'b1;
            end

            7'b0100011 : begin // S-types, store instructions
                alu_op = 2'b00; 
                mem_write = 1'b1; 
                alu_src = 1'b1; 
            end

            7'b1100011 : begin // branch
                branch = 1'b1;
                alu_op = 2'b01; 
                case (funct3) 
                    3'b000 : beq = 1'b1; // beq
                    3'b001 : bne = 1'b1; // bne
                    3'b100 : blt = 1'b1; // blt
                    3'b101 : bge = 1'b1; // bge
                endcase
            end

            7'b1101111 : begin // jal (add immediate to PC)
                alu_op = 2'b00; 
                alu_src = 1'b1; 
                reg_write = 1'b1; 
                jal = 1'b1;
            end

            7'b1100111 : begin // jalr
                alu_op = 2'b00; 
                alu_src = 1'b1; 
                reg_write = 1'b1; 
                jalr = 1'b1;
            end

            7'b0110111 : begin // LUI
                alu_op = 2'b00; 
                alu_src = 1'b1; 
                reg_write = 1'b1;                 
            end

            7'b0010111 : begin // AUIPC
                auipc = 1'b1;
                alu_op = 2'b00; 
                alu_src = 1'b1; 
                reg_write = 1'b1;                 
            end

            default: begin // 0 for undefined instructions or no instruction
                branch = 1'b0;
                mem_read = 1'b0;
                memtoreg = 1'b0;
                alu_op = 2'b00; 
                mem_write = 1'b0;
                alu_src = 1'b0; 
                reg_write = 1'b0;
                jal = 1'b0;
                jalr = 1'b0;
                bne = 1'b0;
                blt = 1'b0;
                bge = 1'b0;
                auipc = 1'b0;
            end
        endcase
    end 
endmodule