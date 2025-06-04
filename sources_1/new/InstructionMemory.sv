
// Instruction Format
// Takes exactly 32 bits (a word) double words are 64 bits


module InstructionMemory (
    input logic [31:0] instruction_adress, // program counter
    output logic [31:0] instruction
);
    logic [31:0] memory [0:255]; // 256 words of 32 bits each

    // adress coming into the instruction memory is typically a byte address, but our memory is indexed in words, not bytes.
    // Since instructions are 32 bits (4 byte), we only need to use the upper bits of the address to index into our memory. 
    // address[9:2] shifts the address right by 2 bits, effectively dividing it by 4, which gives us the word index.
    
    initial begin     
        //$readmemh("instructions.txt", memory); // Load instructions from a hex file (for hex)
        $readmemb("instructions.txt", memory); // Load instructions from a text file (for binary)
    end

    assign instruction = memory[instruction_adress[9:2]]; // Fetch the instruction from memory

endmodule