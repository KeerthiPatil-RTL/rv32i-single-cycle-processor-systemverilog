`timescale 1ns/1ps
module tb_next_pc_mux;
    reg [31:0] pc_plus4;
    reg [31:0] branch_target;
    reg [31:0] jal_target;
    reg [31:0] jalr_target;
    reg [1:0]  pc_src;
    wire [31:0] pc_next;
    next_pc_mux dut (
        .pc_plus4(pc_plus4),
        .branch_target(branch_target),
        .jal_target(jal_target),
        .jalr_target(jalr_target),
        .pc_src(pc_src),
        .pc_next(pc_next)
    );

    initial begin
        pc_plus4      = 32'h00000004;
        branch_target = 32'h00000020;
        jal_target    = 32'h00000040;
        jalr_target  = 32'h00000080;
        
        pc_src = 2'b00; #10;
        pc_src = 2'b01; #10;
        pc_src = 2'b10; #10;
        pc_src = 2'b11; #10;
        $finish;
    end
endmodule
