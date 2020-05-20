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
    wire [31:0] Aout,memoryout,Bout,nextout,addout1,addout2,Cout,mux0,one;
    assign mux0=0;
    assign one=1;
    ram #(32,5) Memory(.addr(Aout),.q(memoryout));
    mux_21 #(32) muxA(.a(nextout),.b(addout1),.sel(A_SEL),.out(Aout));
    mux_21 #(32) muxB(.a(mux0),.b(memoryout),.sel(NEXT_SEL),.out(Bout));
    mux_21 #(32) muxC(.a(mux0),.b(addout2),.sel(SUM_SEL),.out(Cout));
    full_adder #(32) add1(.a(one),.b(nextout),.out(addout1));
    full_adder #(32) add2(.a(sum_out),.b(memoryout),.out(addout2));
    register #(32) NEXT(.clk(clk),.rst(rst),.en(LD_NEXT),.d(Bout),.q(nextout));
    register #(32) SUM(.clk(clk),.rst(rst),.en(LD_SUM),.d(Cout),.q(sum_out));
    comparator #(32) com(.a(Bout),.flag(NEXT_ZERO));
    
endmodule
