`timescale 1ns/1ps

module SC_stimulus;

    logic clk = 0; 
    logic rst;

    RISCV_PIPELINED main (
        .clk(clk),
        .reset(rst)
    );

    always #5 clk = ~clk; // Clock period of 10 time units
    
    initial begin 
        rst = 1'b1; // Start with reset high
        #30; // Wait for 10 time units
        rst = 1'b0; // Release reset
        #500; // Run the simulation for a while
        $finish; // End the simulation
    end
endmodule