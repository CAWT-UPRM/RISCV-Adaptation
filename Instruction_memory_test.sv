`timescale 1ns/1ps

module IM_stimulus;

    logic clk;
    logic [31:0] pc; 
    logic [31:0] instruction;
    
    InstructionMemory im (
        .instruction_adress(pc),
        .instruction(instruction)
    );

    initial
        clk = 1'b0;
    always #5 clk = ~clk;

    initial begin 

        // Initialize the program counter
        pc = 32'h0; // Start at address 0

        // Simulate instruction fetch
        #100; // Wait for a clock cycle
        pc = 32'h4; // Move to the next instruction address
        #100; // Wait for another clock cycle
        pc = 32'h8; // Move to the next instruction address
        #100; // Wait for another clock cycle

        pc = 32'h0; // Reset to the first instruction address
        #100; // Wait for another clock cycle
        $finish; // End the simulation

    end 

endmodule