

module ALU (
    input logic [31:0] a,          // First operand
    input logic [31:0] b,          // Second operand
    input logic [31:0] c,
    input logic [3:0] alu_control, // ALU control signal
    output logic [31:0] result,    // ALU result
    output logic zero               // Zero flag
);

    logic [43:0] result_dsp;

    MAC_dsp mac_inst (
        .A(a[24:0]),
        .B(b[17:0]),
        .C(c),
        .P(result_dsp)
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
            4'b1011: result = result_dsp[31:0];  // MAC
            4'b1100: result = 32'b0;
            4'b1101: result = 32'b0;
            
            default: result = 32'b0;   // Default case
        endcase
        
        zero = (result == 32'b0); // Set zero flag if result is zero
    end
    
endmodule