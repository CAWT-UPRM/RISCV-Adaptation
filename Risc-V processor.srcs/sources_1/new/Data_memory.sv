module Data_memory #(
    parameter address_width = 10,
    parameter data_width    = 32  // 4 bytes per word
) (
    input  logic clk,
    input  logic [31:0] address,
    input  logic [data_width-1:0] write_data,
    input  logic [2:0] funct3,
    input  logic mem_write,
    input  logic mem_read,

    output logic [data_width-1:0] read_data
);

    // raw 32-bit word read from BRAM
    logic [31:0] bram_data;

    // what we’ll actually write back into BRAM this cycle
    logic [31:0] write_word;
    // lets me control which bytes of the word to write
    logic [3:0]  write_enable;

    //----- BRAM instantiation -----
    blk_mem_gen_0 mem_inst (
        .clka   (clk),
        .ena    (1'b1), // always enabled 
        .wea    (write_enable), 
        .addra  (address[31:2]), 
        .dina   (write_word), // This is the data write from CPU
        .douta  (bram_data) // This is the data read from BRAM
    );

    //----- build write_word & write_enable -----
    // Only prepares the next cycle's data
    always_comb begin
        // defaults: hold old data, no writes
        write_word   = bram_data;
        write_enable = 4'b0000;

        if (mem_write) begin
            case (funct3)
                3'b000: begin // SB
                    // rotate the single byte into the right slot
                    unique case (address[1:0])
                        2'd0: begin write_word = { bram_data[31:8], write_data[7:0] };    write_enable = 4'b0001; end
                        2'd1: begin write_word = { bram_data[31:16], write_data[7:0], bram_data[7:0] }; write_enable = 4'b0010; end
                        2'd2: begin write_word = { bram_data[31:24], write_data[7:0], bram_data[15:0] }; write_enable = 4'b0100; end
                        2'd3: begin write_word = { write_data[7:0], bram_data[23:0] };              write_enable = 4'b1000; end
                    endcase
                end

                3'b001: begin // SH
                    unique if (address[1:0] == 2'd0) begin
                        // low half
                        write_word   = { bram_data[31:16], write_data[15:0] };
                        write_enable = 4'b0011;
                    end else begin
                        // high half (address[1:0]==2)
                        write_word   = { write_data[15:0], bram_data[15:0] };
                        write_enable = 4'b1100;
                    end
                end

                3'b010: begin // SW
                    write_word   = write_data;
                    write_enable = 4'b1111;
                end

                default: begin
                    write_word   = bram_data;
                    write_enable = 4'b0000;
                end
            endcase
        end
    end

    //----- load-side: sample bram_data and extend -----
    always_ff @(posedge clk) begin
        if (mem_read) begin
            unique case (funct3)
                3'b000: // LB (sign-extend)
                    case (address[1:0])
                        2'd0: read_data <= {{24{bram_data[7]}},  bram_data[7:0]};
                        2'd1: read_data <= {{24{bram_data[15]}}, bram_data[15:8]};
                        2'd2: read_data <= {{24{bram_data[23]}}, bram_data[23:16]};
                        default: read_data <= {{24{bram_data[31]}}, bram_data[31:24]};
                    endcase

                3'b001: // LH (sign-extend)
                    if (address[1:0] == 2'd0)
                        read_data <= {{16{bram_data[15]}}, bram_data[15:0]};
                    else
                        read_data <= {{16{bram_data[31]}}, bram_data[31:16]};

                3'b010: // LW
                    read_data <= bram_data;

                3'b100: // LBU (zero-extend)
                    case (address[1:0])
                        2'd0: read_data <= {24'd0, bram_data[7:0]};
                        2'd1: read_data <= {24'd0, bram_data[15:8]};
                        2'd2: read_data <= {24'd0, bram_data[23:16]};
                        default: read_data <= {24'd0, bram_data[31:24]};
                    endcase

                3'b101: // LHU (zero-extend)
                    if (address[1:0] == 2'd0)
                        read_data <= {16'd0, bram_data[15:0]};
                    else
                        read_data <= {16'd0, bram_data[31:16]};

                default:
                    read_data <= 32'd0;
            endcase
        end
    end

endmodule
