`timescale 1ns/1ps

module Dm_stimulus;

    logic clk = 0;
    logic mem_write, mem_read;
    logic [31:0] address;
    logic [31:0] write_data;
    logic [31:0] read_data;

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

    always #5 clk = ~clk; // Clock generation
    
    initial begin 
        // Initialize memory write and read
        mem_write = 1'b0;
        mem_read = 1'b0;
        address = 32'h0;
        write_data = 32'h0;

        // Write to memory
        #10;
        address = 32'h4; // Address to write to
        write_data = 32'hAABBCCDD; // Data to write
        mem_write = 1'b1; // Enable memory write
        #10;
        mem_write = 1'b0; // Disable memory write

        // Read from memory
        #10;
        address = 32'h4; // Address to read from
        mem_read = 1'b1; // Enable memory read
        #10;
        mem_read = 1'b0; // Disable memory read

        // Check read data
        if (read_data == 32'hAABBCCDD) begin
            $display("Memory read successful: %h", read_data);
        end else begin
            $display("Memory read failed: expected %h, got %h", 32'hAABBCCDD, read_data);
        end
    end

endmodule