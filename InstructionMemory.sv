
// Instruction Format
// Takes exactly 32 bits (a word) double words are 64 bits


module InstructionMemory (
    input logic clk, 
    input logic [31:0] instruction_adress, // program counter
    output logic [31:0] instruction
);

    logic [31:0] instruction_reg; // Register to hold the current instruction

    Instruction_Memory im (
        .clka(clk), // Clock input
        .ena(1'b1), // Enable the memory
        .addra(instruction_adress[9:2]), // Address input, dropping bottom 2 bits for word addressing
        .douta(instruction_reg) // Data output for read operations
    );

    assign instruction = instruction_reg;
    
endmodule