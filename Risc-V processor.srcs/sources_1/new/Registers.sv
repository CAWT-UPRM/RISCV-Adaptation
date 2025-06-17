

module Registers(
    input logic clk,
    input logic reset,
    input logic [4:0] read_reg1, // Register to read from, instruction bits 19-15
    input logic [4:0] read_reg2, // Register to read from, instruction bits 24-20
    input logic [4:0] read_reg3, 
    input logic [4:0] write_reg, // Register to write to, instruction bits 11-7
    input logic [31:0] write_data, // Data to write
    input logic reg_write_enable, // Enable writing to register
    output logic [31:0] read_data1, // Data read from register 1
    output logic [31:0] read_data2, // Data read from register 2
    output logic [31:0] read_data3
);
    // Array of 32 registers, each 32 bits wide
    logic [31:0] regs [31:0];

    assign read_data1 =  regs[read_reg1];
    assign read_data2 =  regs[read_reg2];
    assign read_data3 =  regs[read_reg3];

    always_ff @(posedge clk or posedge reset) begin
        if(reset) begin
            // Reset all registers to zero
            for (int i = 0; i < 32; i++) begin
                regs[i] <= 32'b0;
            end
        end else if(reg_write_enable) begin
            if (write_reg != 5'h0) begin // Register 0 is hardwired to zero
                regs[write_reg] <= write_data; // Write data to the specified register
            end
        end
    end
endmodule