
// Instruction Format
// Takes exactly 32 bits (a word) double words are 64 bits


module InstructionMemory (
    input logic clk,
    input logic stall,
    input logic [31:0] instruction_address, // program counter
    output logic [31:0] instruction
);

    // adress coming into the instruction memory is typically a byte address, but our memory is indexed in words, not bytes.
    // Since instructions are 32 bits (4 byte), we only need to use the upper bits of the address to index into our memory. 
    // address[9:2] shifts the address right by 2 bits, effectively dividing it by 4, which gives us the word index.
    
    logic [31:0] instruction_reg;
    // Enable the memory only when not stalled
    
    logic stall_memory;
    assign stall_memory = ~stall;

    Instruction_Memory im_inst(
        .clka(clk),
        .ena(stall_memory), // Enable the memory
        .addra(instruction_address[9:2]),
        .douta(instruction_reg)
    );

    assign instruction = instruction_reg; // Fetch the instruction from memory

endmodule