

module Data_memory #(
    parameter address_width = 10,
    parameter data_width = 32 // 4 bytes per word
) (
    input logic clk,
    input logic [31:0] address,
    input logic [data_width - 1 : 0] write_data,
    input logic [2:0] funct3,
    input logic mem_write,
    input logic mem_read,
    output logic [data_width - 1 : 0] read_data
);
    localparam memory_size = (1 << address_width); // 2^address_width = 1024 addresses

    // Memory size: 4KB (4096 bytes) with 32-bit words
    // Address width is 10 bits, allowing for 1024 addresses
    // Data width is 32 bits, allowing for 4 bytes per word
    logic [data_width - 1 : 0] memory [0 : memory_size - 1];

    // Byte adress -> word adress conversion 
    // Each word is 4 bytes, so drop bottom 2 bits of address to divide by 4
    logic [address_width - 1 : 0] word_address;

    // lw and sw instructions use the address bits 2 to address_width + 1
    assign word_address = address[address_width + 1 : 2]; 

    logic [data_width - 1 : 0] data_out;

    always_ff @(negedge clk ) begin 

        if(mem_write) begin 
            case (funct3)
                3'b0 : begin // sb
                    case (address[1:0]) // byte offset
                        2'b00 : memory[word_address][7:0] <= write_data[7:0];
                        2'b01 : memory[word_address][15:8] <= write_data[7:0];
                        2'b10 : memory[word_address][23:16] <= write_data[7:0];
                        2'b11 : memory[word_address][31:24] <= write_data[7:0];
                    endcase
                end

                3'b1 : begin //sh
                    if (address[1:0] == 2'b00) begin // Check for even address
                        // Store the lower half of the word
                        memory[word_address][15:0] <= write_data[15:0];
                    end else if (address[1:0] == 2'b10) begin
                        // Store the upper half of the word
                        memory[word_address][31:16] <= write_data[15:0];
                    end else begin
                        $fatal("Error: Address for sh must be even.");
                    end
                end

                3'b010 : // sw
                    memory[word_address] <= write_data;
                default: memory[word_address] <= 32'b0;
            endcase
        end

        if(mem_read) begin
            case (funct3)
                3'b0 : begin // lb 
                    case (address[1:0]) // byte offset
                        2'b00 : data_out <= { {24{1'b0}}, memory[word_address][7:0] };
                        2'b01 : data_out <= { {24{1'b0}}, memory[word_address][15:8] };
                        2'b10 : data_out <= { {24{1'b0}}, memory[word_address][23:16] };
                        2'b11 : data_out <= { {24{1'b0}}, memory[word_address][31:24] };
                        default: ;
                    endcase
                end
                3'b1 : begin // lh
                    if (address[1:0] == 2'b00) begin // Check for even address
                        // Load the lower half of the word
                        data_out <= { {16{1'b0}}, memory[word_address][15:0] };
                    end else if(address[1:0] == 2'b10) begin
                        // Load the upper half of the word
                        data_out <= { {16{1'b0}}, memory[word_address][31:16] };
                    end else begin
                        $fatal("Error: Address for lh must be even.");
                    end
                end
                3'b010 : // lw
                    data_out <= memory[word_address];
                default: data_out <= 32'b0;
            endcase
        end
    end

    assign read_data = data_out;

endmodule