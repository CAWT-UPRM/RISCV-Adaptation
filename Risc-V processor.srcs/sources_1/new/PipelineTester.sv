`timescale 1ns/1ps

module PipelineTester;

    logic clk = 0; 
    logic rst;

    RISCV_PIPELINED processor (
        .clk(clk),
        .reset(rst)
    );

    always #5 clk = ~clk; // Clock period of 10 time units
    
    initial begin 
        rst = 1'b1; // Start with reset high
        #20; // Wait for 30 time units
        rst = 1'b0; // Release reset
        //$writememh("memory_dump.txt", processor.data_mem.mem_inst.inst.native_mem_module.blk_mem_gen_v8_4_9_inst .memory);
        //#100;
        #100000;
        $finish;
    end
endmodule