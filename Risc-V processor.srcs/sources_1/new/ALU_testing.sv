`timescale 1ns/1ps

module ALU_stimulus ();

    logic clk, reset;
    logic [31:0] a, b, c;
    logic [3:0] alu_control;
    logic [31:0] result;
    logic mac_active, mac_done, zero;
    logic mac_request;

    ALU alu_inst (
        .clk(clk),
        .mac_enable(mac_request), // Enable MAC operation
        .a(a),
        .b(b),
        .c(c),
        .alu_control(alu_control),
        .result(result),
        .zero(zero),
        .mac_done(mac_done)
    );

    initial clk = 0;
    always #5 clk = ~clk; // Clock period of 10 time units

    initial begin
        mac_active = 1'b0;
        mac_done = 1'b0;
        mac_request = 1'b1;
        reset = 1'b0;
        a = 0; 
        b = 0;
        c = 0;
        alu_control = 4'b0000; // AND operation

        #5;
        mac_request = 1'b1;
        a = 32'h2;
        b = 32'h2;
        c = 32'h0;
        alu_control = 4'b1011; // MAC

        #10;
        mac_request = 1'b1;
        a = 32'h5;
        b = 32'h4;

        #10;
        mac_request = 1'b1;
        a = 32'h3;
        b = 32'h7;

        #10;
        mac_request = 1'b0; // Stop MAC request
        a = 32'h1;
        b = 32'h1;
        alu_control = 4'b0010;

    end

endmodule