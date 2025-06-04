`timescale 1ns/1ps

module DM_stimulus;
    
    logic clk = 0; 
    logic mem_write, mem_read;
    logic [31:0] address, write_data;
    logic [31:0] read_data;

    always #5 clk = ~clk; // Clock period of 10 time units

    Data_memory #(
        .address_width(10), // 1024 bytes
        .data_width(32) // 4 bytes per word
    ) dm (
        .clk(clk),
        .address(address),
        .write_data(write_data),
        .mem_write(mem_write),
        .mem_read(mem_read),
        .read_data(read_data)
    );

endmodule