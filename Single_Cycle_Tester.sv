`timescale 1ns/1ps

module SC_stimulus;

    logic clk = 0; 
    logic rst;
    logic led = 0;

    RISCV_Single_Cycle main (
        .clk(clk),
        .reset(rst),
        .led(led)
    );

    always #5 clk = ~clk; // Clock period of 10 time units
    
    initial begin 
        rst = 1'b1; // Start with reset high
        #40; // Wait for 10 time units
        rst = 1'b0; // Release reset
        #1500; // Run the simulation for a while
        $finish; // End the simulation
    end
endmodule