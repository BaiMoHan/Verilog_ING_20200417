`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/10 15:20:03
// Design Name: 
// Module Name: TwoChOneSt
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


module TwoChOneSt(a,b,sel,out1);
    input a,b,sel;
    output out1;
    wire sel_,a1,b1;
    not(sel_,sel);
    and(a1,a,sel_);
    and(b1,sel,b);
    or(out1,a1,b1);
endmodule
