

module Registers(
    input logic [4:0] read_reg1, // Register to read from, instruction bits 19-15
    input logic [4:0] read_reg2, // Register to read from, instruction bits 24-20
    input logic [4:0] write_reg, // Register to write to, instruction bits 11-7
    input logic [31:0] write_data, // Data to write
    input logic reg_write_enable, // Enable writing to register
    output logic [31:0] read_data1, // Data read from register 1
    output logic [31:0] read_data2 // Data read from register 2
);

    logic [31:0] zero = 32'b0; // Register 0, always zero
    logic [31:0] ra = 32'b0;
    logic [31:0] sp = 32'b01111111111111111111111111110000;
    logic [31:0] gp = 32'b00010000000000000000000000000000;
    logic [31:0] tp = 32'b0;
    logic [31:0] t0 = 32'b0;
    logic [31:0] t1 = 32'b0;
    logic [31:0] t2 = 32'b0;
    logic [31:0] s0 = 32'b0;
    logic [31:0] s1 = 32'b0;
    logic [31:0] a0 = 32'b0;
    logic [31:0] a1 = 32'b0;
    logic [31:0] a2 = 32'b0;
    logic [31:0] a3 = 32'b0;
    logic [31:0] a4 = 32'b0;
    logic [31:0] a5 = 32'b0;
    logic [31:0] a6 = 32'b0;
    logic [31:0] a7 = 32'b0;
    logic [31:0] s2 = 32'b0; 
    logic [31:0] s3 = 32'b0;
    logic [31:0] s4 = 32'b0;
    logic [31:0] s5 = 32'b0;
    logic [31:0] s6 = 32'b0;
    logic [31:0] s7 = 32'b0;
    logic [31:0] s8 = 32'b0;
    logic [31:0] s9 = 32'b0;
    logic [31:0] s10 = 32'b0;
    logic [31:0] s11 = 32'b0;
    logic [31:0] t3 = 32'b0;
    logic [31:0] t4 = 32'b0;
    logic [31:0] t5 = 32'b0;
    logic [31:0] t6 = 32'b0; 
    

    always_comb unique case (read_reg1)
        5'h0   : read_data1 = zero; // Register 0, always zero
        5'h1   : read_data1 = ra; 
        5'h2   : read_data1 = sp; 
        5'h3   : read_data1 = gp; 
        5'h4   : read_data1 = tp; 
        5'h5   : read_data1 = t0; 
        5'h6   : read_data1 = t1; 
        5'h7   : read_data1 = t2; 
        5'h8   : read_data1 = s0; 
        5'h9   : read_data1 = s1; 
        5'hA   : read_data1 = a0; 
        5'hB   : read_data1 = a1; 
        5'hC   : read_data1 = a2; 
        5'hD   : read_data1 = a3; 
        5'hE   : read_data1 = a4; 
        5'hF   : read_data1 = a5; 
        5'h10  : read_data1 = a6; 
        5'h11  : read_data1 = a7; 
        5'h12  : read_data1 = s2; 
        5'h13  : read_data1 = s3; 
        5'h14  : read_data1 = s4; 
        5'h15  : read_data1 = s5; 
        5'h16  : read_data1 = s6; 
        5'h17  : read_data1 = s7; 
        5'h18  : read_data1 = s8; 
        5'h19  : read_data1 = s9; 
        5'h1A  : read_data1 = s10; 
        5'h1B  : read_data1 = s11; 
        5'h1C  : read_data1 = t3; 
        5'h1D  : read_data1 = t4; 
        5'h1E  : read_data1 = t5; 
        5'h1F  : read_data1 = t6; 
        default: read_data1 = 32'b0; 
    endcase

    always_comb unique case (read_reg2)
        5'h0   : read_data2 = zero; // Register 0, always zero
        5'h1   : read_data2 = ra; 
        5'h2   : read_data2 = sp; 
        5'h3   : read_data2 = gp; 
        5'h4   : read_data2 = tp; 
        5'h5   : read_data2 = t0; 
        5'h6   : read_data2 = t1; 
        5'h7   : read_data2 = t2; 
        5'h8   : read_data2 = s0; 
        5'h9   : read_data2 = s1; 
        5'hA   : read_data2 = a0; 
        5'hB   : read_data2 = a1; 
        5'hC   : read_data2 = a2; 
        5'hD   : read_data2 = a3; 
        5'hE   : read_data2 = a4; 
        5'hF   : read_data2 = a5; 
        5'h10  : read_data2 = a6; 
        5'h11  : read_data2 = a7; 
        5'h12  : read_data2 = s2; 
        5'h13  : read_data2 = s3; 
        5'h14  : read_data2 = s4; 
        5'h15  : read_data2 = s5; 
        5'h16  : read_data2 = s6; 
        5'h17  : read_data2 = s7; 
        5'h18  : read_data2 = s8; 
        5'h19  : read_data2 = s9; 
        5'h1A  : read_data2 = s10; 
        5'h1B  : read_data2 = s11; 
        5'h1C  : read_data2 = t3; 
        5'h1D  : read_data2 = t4; 
        5'h1E  : read_data2 = t5; 
        5'h1F  : read_data2 = t6; 
        default: read_data2 = 32'b0; 
    endcase


    always_comb begin
        if(reg_write_enable ) begin
            unique case (write_reg)
                5'h0   : ; // Register 0, cannot write
                5'h1   : ra = write_data; 
                5'h2   : sp = write_data; 
                5'h3   : gp = write_data; 
                5'h4   : tp = write_data; 
                5'h5   : t0 = write_data; 
                5'h6   : t1 = write_data; 
                5'h7   : t2 = write_data; 
                5'h8   : s0 = write_data; 
                5'h9   : s1 = write_data; 
                5'hA   : a0 = write_data; 
                5'hB   : a1 = write_data; 
                5'hC   : a2 = write_data; 
                5'hD   : a3 = write_data; 
                5'hE   : a4 = write_data; 
                5'hF   : a5 = write_data; 
                5'h10  : a6 = write_data; 
                5'h11  : a7 = write_data; 
                5'h12  : s2 = write_data; 
                5'h13  : s3 = write_data; 
                5'h14  : s4 = write_data; 
                5'h15  : s5 = write_data; 
                5'h16  : s6 = write_data; 
                5'h17  : s7 = write_data; 
                5'h18  : s8 = write_data; 
                5'h19  : s9 = write_data; 
                5'h1A  : s10 = write_data; 
                5'h1B  : s11 = write_data; 
                5'h1C  : t3 = write_data; 
                5'h1D  : t4 = write_data; 
                5'h1E  : t5 = write_data; 
                5'h1F  : t6 = write_data; 
                default: ;
            endcase
        end
    end


    
endmodule