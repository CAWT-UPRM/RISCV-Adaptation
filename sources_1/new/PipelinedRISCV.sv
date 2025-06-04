

module RISCV_PIPELINED ( // w/o hazard detection or forwarding
    input logic clk,
    input logic reset
);

    // -- INSTRUCTION FETCH STAGE --
    logic [31:0] pc ;
    logic [31:0] next_pc;
    logic [31:0] instruction;
    logic ex_mem_taken;
    logic [31:0] ex_mem_next_pc;
    
    assign next_pc = ex_mem_taken ? ex_mem_next_pc : (pc + 32'h4); // Default next PC is current PC + 4
    
    ProgramCounter pc_i (
        .clk(clk),
        .reset(reset),
        .next_pc(next_pc), 
        .pc(pc)
    );
    
    InstructionMemory im (
        .instruction_adress(pc), 
        .instruction(instruction)
    );

    // ------INSTRUCTION FETCH / INSTRUCTION DECODE------
    // IF/ID pipeline registers
    logic [31:0] instruction_if_id;
    logic [31:0] pc_if_id;

    IF_ID_reg if_id_reg (
        .clk(clk), 
        .reset(reset), 
        .ex_mem_taken(ex_mem_taken), // Taken from EX stage
        .pc(pc), 
        .instruction(instruction), 
        // Outputs
        .pc_if_id(pc_if_id), 
        .instruction_if_id(instruction_if_id) 
    );

    // ------DECODE STAGE------
    logic [4:0] reg1, reg2, reg_dest;
    logic [6:0] opcode;
    logic [2:0] funct3;
    logic [6:0] funct7;


    assign opcode = instruction_if_id[6:0]; // opcode bits
    assign reg1 = instruction_if_id[19:15]; // rs1
    assign reg2 = instruction_if_id[24:20]; // rs2
    assign reg_dest = instruction_if_id[11:7]; // rd
    assign funct3 = instruction_if_id[14:12]; // funct3 bits
    assign funct7 = instruction_if_id[31:25]; // funct7 bits

    logic [31:0] data_read1, data_read2;
    
    Registers regs (
        .read_reg1(reg1),
        .read_reg2(reg2),
        .write_reg(mem_wb_reg_dest), // added later in wb stage
        .write_data(mem_wb_write_data), // added later in wb stage
        .reg_write_enable(mem_wb_regwrite),
        .read_data1(data_read1),
        .read_data2(data_read2) 
    );
    
    logic [63:0] big_immediate;
    Immediate_generator imm_gen (
        .instruction(instruction_if_id), 
        .immediate(big_immediate) 
    );
    
    logic branch, mem_read, memtoreg, mem_write, alu_src, reg_write, jal, jalr;
    logic [1:0] alu_op;
    Control control_unit (
        .instruction(opcode),
        .branch(branch),
        .mem_read(mem_read),
        .memtoreg(memtoreg),
        .alu_op(alu_op),
        .mem_write(mem_write),
        .alu_src(alu_src),
        .reg_write(reg_write),
        .jal(jal),
        .jalr(jalr)
    );

    // ------INSTRUCTION DECODE / EXECUTE STAGE------    
    // ID/EX pipeline registers
    logic [31:0] pc_id_ex;
    logic id_ex_branch, id_ex_mem_read, id_ex_memtoreg, id_ex_mem_write, id_ex_alu_src, id_ex_reg_write, id_ex_jal, id_ex_jalr;
    logic [1:0] id_ex_alu_op;
    logic [31:0] data_read1_id_ex, data_read2_id_ex;
    logic [63:0] big_immediate_id_ex;
    logic [4:0] reg_dest_id_ex, reg2_id_ex;
    logic [2:0] funct3_id_ex;
    logic [6:0] funct7_id_ex;

    ID_EX_reg id_ex_reg (
        .clk(clk), 
        .reset(reset), 
        .branch(branch), 
        .mem_read(mem_read), 
        .memtoreg(memtoreg), 
        .mem_write(mem_write), 
        .alu_src(alu_src), 
        .reg_write(reg_write), 
        .jal(jal), 
        .jalr(jalr), 
        .alu_op(alu_op), 
        .ex_mem_taken(ex_mem_taken), // Taken from EX stage
        .pc_if_id(pc_if_id), 
        .big_immediate(big_immediate), 
        .reg1(reg1), 
        .reg2(reg2), 
        .reg_dest(reg_dest), 
        .funct3(funct3), 
        .funct7(funct7),
        .data_read1(data_read1),
        .data_read2(data_read2),
        
        .pc_id_ex(pc_id_ex),
        .id_ex_branch(id_ex_branch),
        .id_ex_mem_read(id_ex_mem_read),
        .id_ex_memtoreg(id_ex_memtoreg),
        .id_ex_mem_write(id_ex_mem_write),
        .id_ex_alu_src(id_ex_alu_src),
        .id_ex_reg_write(id_ex_reg_write),
        .id_ex_jal(id_ex_jal),
        .id_ex_jalr(id_ex_jalr),
        .id_ex_alu_op(id_ex_alu_op),
        
        .data_read1_id_ex(data_read1_id_ex),
        .data_read2_id_ex(data_read2_id_ex),
        
        .big_immediate_id_ex(big_immediate_id_ex),
        
        .reg_dest_id_ex(reg_dest_id_ex),
        
        // For store instructions
        .reg2_id_ex(reg2_id_ex),

        // For R-type instructions
        .funct3_id_ex(funct3_id_ex),
        
        // For R-type instructions
        .funct7_id_ex(funct7_id_ex)
    );

    // ------EXECUTE STAGE------
    logic [3:0] alu_control;
    logic [31:0] alu_result;
    logic zero;
    logic [31:0] alu_input2;
    
    ALU_control alu_control_unit (
        .alu_op(id_ex_alu_op),
        .funct3(funct3_id_ex),
        .funct7(funct7_id_ex[5]), // For R-type instructions, bit 30
        .funct7_mult(funct7_id_ex[0]), // For multiplication, bit 25
        .alu_control(alu_control)
        );
        
    assign alu_input2 = id_ex_alu_src ? big_immediate_id_ex[31:0] : data_read2_id_ex; // Use immediate if alu_src is set
    
    ALU alu (
        .a(data_read1_id_ex), 
        .b(alu_input2), // Use immediate value if alu_src is set
        .alu_control(alu_control),
        .result(alu_result),
        .zero(zero) 
        );
        
    logic [31:0] branch_target;
    assign branch_target = pc_id_ex + big_immediate_id_ex[31:0]; // Calculate branch target address


    // Jump Logic
    logic [31:0] jal_target, jalr_target;
    logic ex_branch_taken, ex_jump_taken;

    assign jal_target = pc_id_ex + big_immediate_id_ex[31:0]; // JAL target address

    assign jalr_target = (data_read1_id_ex + big_immediate_id_ex[31:0]) & 32'hFFFFFFFE; // JALR target address


    // Maybe change this line in order to accomodate for bne, blt, bge, etc.
    assign ex_branch_taken = (id_ex_branch !== 1'bx && zero !== 1'bx) ? (id_ex_branch && zero) : 1'b0; // Branch taken if branch is set and ALU result is zero
    assign ex_jump_taken = id_ex_jal || id_ex_jalr; // Jump taken if JAL or JALR is set

    logic [31:0] ex_chosen_target;
    always_comb begin
        if (id_ex_jal) begin
            ex_chosen_target = jal_target; // Use JAL target address
        end else if (id_ex_jalr) begin
            ex_chosen_target = jalr_target; // Use JALR target address
        end else if (ex_branch_taken) begin
            ex_chosen_target = branch_target; // Use branch target address
        end else begin
            ex_chosen_target = pc_id_ex + 32'h4; // No jump or branch taken
        end
    end
    
    logic [31:0] ex_link_address;
    assign ex_link_address = pc_id_ex + 32'h4; 

    // ------EXECUTE STAGE / MEMORY STAGE------
    // EX/MEM pipeline registers

    logic ex_mem_memread, ex_mem_memwrite, ex_mem_memtoreg, ex_mem_regwrite, ex_mem_jal, ex_mem_jalr, ex_mem_branch;
    logic [31:0] ex_mem_alu_result, ex_mem_data_read2, ex_mem_branch_target;
    logic [4:0] ex_mem_reg_dest;
    logic ex_mem_zero;

    logic ex_mem_taken_reg;
    logic [31:0] ex_mem_next_pc_reg, ex_mem_link_address_reg;

    EX_MEM_reg ex_mem_reg (
        .clk(clk), 
        .reset(reset), 
        .id_ex_mem_read(id_ex_mem_read),
        .id_ex_mem_write(id_ex_mem_write),
        .id_ex_memtoreg(id_ex_memtoreg), 
        .id_ex_reg_write(id_ex_reg_write), 
        .id_ex_jal(id_ex_jal), 
        .id_ex_jalr(id_ex_jalr), 
        .id_ex_branch(id_ex_branch), 
        .alu_result(alu_result), 
        .data_read2_id_ex(data_read2_id_ex), 
        .branch_target(branch_target), 
        .reg_dest_id_ex(reg_dest_id_ex), 
        .zero(zero),
        .ex_branch_taken(ex_branch_taken),
        .ex_jump_taken(ex_jump_taken),
        .ex_chosen_target(ex_chosen_target),
        .ex_link_address(ex_link_address),

        // Outputs
        .ex_mem_memread(ex_mem_memread),
        .ex_mem_memwrite(ex_mem_memwrite),
        .ex_mem_memtoreg(ex_mem_memtoreg),
        .ex_mem_regwrite(ex_mem_regwrite),
        .ex_mem_jal(ex_mem_jal),
        .ex_mem_jalr(ex_mem_jalr),
        .ex_mem_branch(ex_mem_branch),
        .ex_mem_alu_result(ex_mem_alu_result),
        .ex_mem_data_read2(ex_mem_data_read2),
        .ex_mem_branch_target(ex_mem_branch_target),
        .ex_mem_reg_dest(ex_mem_reg_dest),
        .ex_mem_zero(ex_mem_zero),

        // Taken and next PC
        .ex_mem_taken_reg(ex_mem_taken_reg),
        .ex_mem_next_pc_reg(ex_mem_next_pc_reg),
        
        // Link address for JALR
        .ex_mem_link_address_reg(ex_mem_link_address_reg)
    );

    assign ex_mem_taken = ex_mem_taken_reg; // Taken if branch or jump is taken
    assign ex_mem_next_pc = ex_mem_next_pc_reg; // Next PC for branch or jump

    // ------MEMORY STAGE------
    logic [31:0] memory_data_read;

    Data_memory #(
        .address_width(10), // 1024 bytes
        .data_width(32) // 4 bytes per word
    ) data_mem(
        .clk(clk),
        .address(ex_mem_alu_result), // Address for data memory is the ALU result
        .write_data(ex_mem_data_read2), // Data to write is from read data 2
        .mem_write(ex_mem_memwrite), // Memory write control signal
        .mem_read(ex_mem_memread), // Memory read control signal
        .read_data(memory_data_read) // Data to write back to registers

    );

    // MEM/WB pipeline registers
    logic mem_wb_memtoreg, mem_wb_regwrite, mem_wb_jal, mem_wb_jalr;
    logic [31:0] mem_wb_alu_result, mem_wb_memory_data_read, mem_wb_link_address;
    logic [4:0] mem_wb_reg_dest;
    logic [31:0] mem_wb_write_data;

    MEM_WB_reg mem_wb_reg (
        .clk(clk),
        .reset(reset),
        .ex_mem_memtoreg(ex_mem_memtoreg), // Memory to register control signal
        .ex_mem_regwrite(ex_mem_regwrite), // Register write control signal
        .ex_mem_jal(ex_mem_jal), // JAL control signal
        .ex_mem_jalr(ex_mem_jalr), // JALR control signal
        .ex_mem_alu_result(ex_mem_alu_result), // ALU result
        .memory_data_read(memory_data_read), // Data read from memory
        .ex_mem_reg_dest(ex_mem_reg_dest), // Destination register for write back
        .ex_mem_link_address_reg(ex_mem_link_address_reg), // Link address for JALR

        //Outputs
        .mem_wb_memtoreg(mem_wb_memtoreg), // Memory to register control signal
        .mem_wb_regwrite(mem_wb_regwrite), // Register write control signal
        .mem_wb_jal(mem_wb_jal), // JAL control signal
        .mem_wb_jalr(mem_wb_jalr), // JALR control signal
        .mem_wb_alu_result(mem_wb_alu_result), // ALU result
        .mem_wb_memory_data_read(mem_wb_memory_data_read), // Data read from memory
        .mem_wb_reg_dest(mem_wb_reg_dest), // Destination register for write back
        .mem_wb_link_address(mem_wb_link_address), // Link address for JALR
        .mem_wb_write_data(mem_wb_write_data) // Data to write back to registers
    );
    
endmodule