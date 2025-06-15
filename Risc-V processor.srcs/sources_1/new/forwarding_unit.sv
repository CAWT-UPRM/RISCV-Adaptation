

module Forward (
    input logic [4:0] id_ex_rs1, id_ex_rs2, id_ex_rd,
    input logic [4:0] ex_mem_rd, mem_wb_rd,
    input logic ex_mem_reg_write, mem_wb_reg_write,

    output logic [1:0] forward_a, forward_b, forward_c
);

    always_comb begin
        forward_a = 2'b00;
        forward_b = 2'b00;
        forward_c = 2'b00;

        // Ex hazards 
        if(ex_mem_reg_write && (ex_mem_rd != 0) && (ex_mem_rd == id_ex_rs1)) begin
            forward_a = 2'b10;
        end 
        
        if ((ex_mem_reg_write && (ex_mem_rd != 0) && (ex_mem_rd == id_ex_rs2))) begin
            forward_b = 2'b10;
        end

        if (ex_mem_reg_write && (ex_mem_rd != 0) && (ex_mem_rd == id_ex_rd)) begin
            forward_c = 2'b10; 
        end

        // Mem hazards
        if(mem_wb_reg_write && (mem_wb_rd != 0) && (mem_wb_rd == id_ex_rs1)) begin
            forward_a = 2'b01;
        end

        if (mem_wb_reg_write && (mem_wb_rd != 0) && (mem_wb_rd == id_ex_rs2)) begin
            forward_b = 2'b01;
        end
        
        if (mem_wb_reg_write && (mem_wb_rd != 0) && (mem_wb_rd == id_ex_rd)) begin
            forward_c = 2'b01; 
        end

    end
endmodule