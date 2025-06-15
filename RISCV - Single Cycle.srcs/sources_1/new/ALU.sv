

module ALU (
    input logic [31:0] a,          // First operand
    input logic [31:0] b,          // Second operand
    input logic [3:0] alu_control, // ALU control signal
    output logic [31:0] result,    // ALU result
    output logic zero               // Zero flag
);

    always_comb begin
        case (alu_control)
            4'b0000: result = a & b;   
            4'b0001 : result = a | b;
            4'b0010: result = a + b;   // Addition
            4'b0011: result = a << b[4:0]; // Shift left logical
            4'b0100: result = a ^ b;   // XOR
            4'b0101: result = a >> b[4:0]; // Shift right logical
            4'b0110: result = a - b;   // Subtraction
            4'b0111: result = (a < b) ? 32'b1 : 32'b0; // Set less than
            4'b1001: result = (a < b) ? 32'b1 : 32'b0; // Set less than unsigned
            4'b1010: result = a >>> b[4:0]; // Shift right arithmetic
            4'b1011: result = a * b; // Multiplication
            4'b1100: begin // Division
                if (b != 0) begin
                    result = a / b; // Integer division
                end else begin
                    result = 32'b0; // Handle division by zero
                end
            end
            4'b1101: result = a % b; // Remainder
            
            default: result = 32'b0;   // Default case
        endcase
        
        zero = (result == 32'b0); // Set zero flag if result is zero
    end
    
endmodule