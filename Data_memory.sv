

module Data_memory #(
    parameter address_width = 10, // 2** 10 = 1024 bytes
    parameter data_width = 32 // 4 bytes per word
) (
    input logic clk,
    input logic [31:0] address,
    input logic [data_width - 1 : 0] write_data,
    input logic mem_write,
    input logic mem_read,
    output logic [data_width - 1 : 0] read_data
);

    // Memory size: 4KB (4096 bytes) with 32-bit words
    // Address width is 10 bits, allowing for 1024 addresses
    // Data width is 32 bits, allowing for 4 bytes per word
    logic [data_width - 1 : 0] memory [0 : (1 << address_width) - 1];

    // Byte adress -> word adress conversion 
    // Each word is 4 bytes, so drop bottom 2 bits of address to divide by 4
    logic [address_width - 1 : 0] word_address;
    assign word_address = address[address_width + 1 : 2]; 

    logic [data_width - 1 : 0] data_out;

    always_ff @(negedge(clk)) begin 
        if(mem_write) begin 
            memory[word_address] <= write_data;
        end
        if(mem_read) begin 
            data_out <= memory[word_address];
        end
    end

    assign read_data = data_out;

endmodule