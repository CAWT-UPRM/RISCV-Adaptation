`timescale 1ns / 1ps

module dm_tester ();

    logic clk;
    logic [31:0] address;
    logic [31:0] write_data;
    logic mem_read;
    logic mem_write;
    logic [31:0] read_data;
    logic [2:0] funct3;

    initial clk = 0;
    always #5 clk = ~clk; // Clock period of 10 time units

    Data_memory dm (
        .clk(clk),
        .address(address),
        .write_data(write_data),
        .mem_read(mem_read),
        .mem_write(mem_write),
        .funct3(funct3),
        .read_data(read_data)
    );

    initial begin
        
        address = 32'h0;
        write_data = 32'h12345678;
        mem_read = 1'b0;
        mem_write = 1'b1;
        funct3 = 3'b010; // SW
        #10; // Wait for 10 time units

        mem_write = 1'b0;
        funct3 = 3'b001; // LH
        mem_read = 1'b1;
        
        
    end

endmodule