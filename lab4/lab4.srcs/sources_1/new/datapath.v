`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/06 09:24:15
// Design Name: 
// Module Name: datapath
// Project Name: 
// Target Devices: 
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


module datapath(clk,rst,SUM_SEL,NEXT_SEL,A_SEL,LD_SUM,LD_NEXT,NEXT_ZERO,sum_out);
    //时钟端,复位
    input clk,rst,SUM_SEL,NEXT_SEL,A_SEL,LD_SUM,LD_NEXT;
    output NEXT_ZERO;
    output [31:0] sum_out;//32位输出后面参数也要设置为32位的
    wire [31:0] A,D,nextout,LD_NEXT_OUT,ADDONEOUT,SUMS,sum_mux_out;
    ram #(32,5) Memory(.addr(A),.q(D));
    mux_21 #(32) Next_mux(.a(0),.b(D),.sel(NEXT_SEL),.out(nextout));
    comparator #(32) Zero_Com(.a(nextout),.flag(NEXT_ZERO));
    register #(32) NEXT(.clk(clk),.rst(rst),.en(LD_NEXT),.d(nextout),.q(LD_NEXT_OUT));
    full_adder #(32) ADDONE(.a(LD_NEXT_OUT),.b(1),.out(ADDONEOUT));
    mux_21 #(32) A_mux(.a(LD_NEXT_OUT),.b(ADDONEOUT),.sel(A_SEL),.out(A));
    full_adder #(32) ADD(.a(D),.b(sum_out),.out(SUMS));
    mux_21 #(32) Sum_mux(.a(0),.b(SUMS),.sel(SUM_SEL),.out(sum_mux_out));
    register #(32) SUM(.clk(clk),.rst(rst),.en(LD_SUM),.d(sum_mux_out),.q(sum_out));
endmodule
