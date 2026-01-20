`timescale 1ns / 1ps
module PC4(
input wire [31:0]pc_out,
output wire [31:0]pc4_out);   
assign pc4_out = pc_out + 32'd4;
endmodule     


