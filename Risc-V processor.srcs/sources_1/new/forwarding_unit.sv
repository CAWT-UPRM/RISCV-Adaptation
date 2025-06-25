

module Forward (
    input logic [4:0] id_ex_rs1, id_ex_rs2, id_ex_rs3,
    input logic [4:0] ex_mem_rd, mem_wb_rd,
    input logic ex_mem_reg_write, mem_wb_reg_write,

    output logic [1:0] forward_a, forward_b, forward_c
);

    logic ex_rs1_match, ex_rs2_match, ex_rs3_match;
    logic mem_rs1_match, mem_rs2_match, mem_rs3_match;

    always_comb begin
        forward_a = 2'b00;
        forward_b = 2'b00;
        forward_c = 2'b00;

        // Precomputations
        ex_rs1_match = (ex_mem_reg_write && (ex_mem_rd != 5'b0) && (id_ex_rs1 == ex_mem_rd));
        ex_rs2_match = (ex_mem_reg_write && (ex_mem_rd != 5'b0) && (id_ex_rs2 == ex_mem_rd));
        ex_rs3_match = (ex_mem_reg_write && (ex_mem_rd != 5'b0) && (id_ex_rs3 == ex_mem_rd));

        mem_rs1_match = (mem_wb_reg_write && (mem_wb_rd != 5'b0) && (id_ex_rs1 == mem_wb_rd));
        mem_rs2_match = (mem_wb_reg_write && (mem_wb_rd != 5'b0) && (id_ex_rs2 == mem_wb_rd));
        mem_rs3_match = (mem_wb_reg_write && (mem_wb_rd != 5'b0) && (id_ex_rs3 == mem_wb_rd));

        // Forwarding assignments
        forward_a = ex_rs1_match ? 2'b10 :
                    mem_rs1_match ? 2'b01 : 2'b00;
        
        forward_b = ex_rs2_match ? 2'b10 :
                    mem_rs2_match ? 2'b01 : 2'b00;

        forward_c = ex_rs3_match ? 2'b10 :
                    mem_rs3_match ? 2'b01 : 2'b00;

    end
endmodule