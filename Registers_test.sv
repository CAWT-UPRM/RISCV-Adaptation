`timescale 1ns/1ps

module Register_stimulus;
    logic [4:0] read_reg1; // Register to read from
    logic [4:0] read_reg2; // Register to read from
    logic [4:0] write_reg; // Register to write to
    logic [31:0] write_data; // Data to write
    logic reg_write_enable; // Enable writing to register
    logic [31:0] read_data1; // Data read from register 1
    logic [31:0] read_data2; // Data read from register 2
    logic clk;

    initial
    clk = 1'b0;
    always #5 clk = ~clk; 

    Registers reg_inst (
        .read_reg1(read_reg1), 
        .read_reg2(read_reg2), 
        .write_reg(write_reg), 
        .write_data(write_data), 
        .reg_write_enable(reg_write_enable), 
        .read_data1(read_data1), 
        .read_data2(read_data2)
    );

    initial begin 
 
        #10 read_reg1 = 5'h1; // Read from register 1
        read_reg2 = 5'h2; // Read from register 2
        write_reg = 5'h3; // Write to register 3
        write_data = 32'h1;
        #100 reg_write_enable = 1'b1; // Enable writing to register
        #100 reg_write_enable = 1'b0; // Disable writing to register
        #20 read_reg1 = 5'h3;
        #100 write_data = 32'h2;

    end 

endmodule