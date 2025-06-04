

module Control (
    input logic [6:0] instruction, // 7-bit opcode, instruction bits 6:0
    output logic branch,
    output logic mem_read,
    output logic memtoreg,
    output logic [1:0] alu_op,
    output logic mem_write,
    output logic alu_src,
    output logic reg_write,
    output logic jal,
    output logic jalr
);

    always_comb begin
        case (instruction[6:0])
            7'b0110011 : begin // R-type
                branch = 1'b0;
                mem_read = 1'b0;
                memtoreg = 1'b0;
                alu_op = 2'b10; 
                mem_write = 1'b0;
                alu_src = 1'b0;
                reg_write = 1'b1;
                jal = 1'b0;
                jalr = 1'b0; 
            end
        
            7'b0010011 : begin // I-types 
                branch = 1'b0;
                mem_read = 1'b0;
                memtoreg = 1'b0;
                alu_op = 2'b10; 
                mem_write = 1'b0;
                alu_src = 1'b1; 
                reg_write = 1'b1;
                jal = 1'b0;
                jalr = 1'b0; 
            end

            7'b0000011 : begin // loads 
                branch = 1'b0;
                mem_read = 1'b1;
                memtoreg = 1'b1;
                alu_op = 2'b00; 
                mem_write = 1'b0;
                alu_src = 1'b1; 
                reg_write = 1'b1;
                jal = 1'b0;
                jalr = 1'b0;
            end

            7'b0100011 : begin // S-types, store instructions
                branch = 1'b0;
                mem_read = 1'b0;
                memtoreg = 1'b0;
                alu_op = 2'b00; 
                mem_write = 1'b1; 
                alu_src = 1'b1; 
                reg_write = 1'b0;
                jal = 1'b0;
                jalr = 1'b0; 
            end

            7'b1100011 : begin // branch
                branch = 1'b1;
                mem_read = 1'b0;
                memtoreg = 1'b0;
                alu_op = 2'b01; 
                mem_write = 1'b0;
                alu_src = 1'b0; 
                reg_write = 1'b0;
                jal = 1'b0;
                jalr = 1'b0; 
            end

            7'b1101111 : begin // jal (add immediate to PC)
                branch = 1'b0;
                mem_read = 1'b0;
                memtoreg = 1'b0;
                alu_op = 2'b00; 
                mem_write = 1'b0;
                alu_src = 1'b1; 
                reg_write = 1'b1; 
                jal = 1'b1;
                jalr = 1'b0;
            end

            7'b1100111 : begin // jalr
                branch = 1'b0;
                mem_read = 1'b0;
                memtoreg = 1'b0;
                alu_op = 2'b00; 
                mem_write = 1'b0;
                alu_src = 1'b1; 
                reg_write = 1'b1; 
                jal = 1'b0;
                jalr = 1'b1;
            end

            default: begin // high impedance for undefined 
                branch = 'z;
                mem_read = 'z;
                memtoreg = 'z;
                alu_op = 'z; 
                mem_write = 'z;
                alu_src = 'z; 
                reg_write = 'z;
                jal = 'z;
                jalr = 'z;
            end
        endcase
    end 
endmodule