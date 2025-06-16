
module Hazard_Detection (
    input logic clk,
    input logic [4:0] if_id_rs1, if_id_rs2,
    input logic [4:0] reg_dest_id_ex,
    input logic id_ex_mem_read,

    output logic stall, pc_write_, if_id_write
);
    logic rs1_match = (if_id_rs1 == reg_dest_id_ex);
    logic rs2_match = (if_id_rs2 == reg_dest_id_ex);
    logic load_hazard = id_ex_mem_read && (rs1_match || rs2_match);

    always_comb begin
        // Default values
        stall = 1'b0;
        pc_write_ = 1'b1;
        if_id_write = 1'b1;

        // Hazard detection logic
        if (load_hazard) begin
            stall = 1'b1; // Stall the pipeline
            pc_write_ = 1'b0; // Disable PC write
            if_id_write = 1'b0; // Disable IF/ID write
        end
    end


endmodule