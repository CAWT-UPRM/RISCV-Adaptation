`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CAWT
// Engineer: Fernando L. Pizarro Diaz
// 
// Create Date: 05/27/2025 10:22:03 AM
// Design Name: 
// Module Name: ProgramCounter
// Project Name: RISC-V Processor
// Target Devices: Basys3
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module ProgramCounter(
    input logic clk,
    input logic reset,
    input logic pc_write,
    input logic [31:0] next_pc,
    output logic [31:0] pc    
);

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            pc <= 32'b0; // Reset PC to 0
        end else if (!pc_write) begin
            pc <= pc;
        end else begin
            pc <= next_pc; // Update PC with next_pc
        end
    end

endmodule
