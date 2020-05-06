`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/06 21:59:48
// Design Name: 
// Module Name: auto_add
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


module auto_add(clk,rst,start,DONE,sum_out);
    input clk,rst,start;
    output DONE;
    output [31:0] sum_out;
    
    wire LD_SUM,LD_NEXT,SUM_SEL,NEXT_SEL, A_SEL,NEXT_ZERO;
    
    datapath mydatapath(.clk(clk),.rst(rst),.SUM_SEL(SUM_SEL),.NEXT_SEL(NEXT_SEL),.A_SEL(A_SEL),.LD_SUM(LD_SUM),.LD_NEXT(LDNEXT),.NEXT_ZERO(NEXT_ZERO),.sum_out(sum_out));
    FSM myFSM(.clk(clk),.rst(rst),.start(start),.next_zero(NEXT_ZERO),.LD_SUM(LD_SUM),.LD_NEXT(LD_NEXT),.SUM_SEL(SUM_SEL),.NEXT_SEL(NEXT_SEL),.A_SEL(A_SEL),.DONE(DONE));
endmodule
