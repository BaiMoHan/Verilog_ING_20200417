`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/10 14:05:21
// Design Name: 
// Module Name: TwoChOne
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


module TwoChOne(a,sel,b,out1);
    input a,sel,b;
    output out1;
    //assign out1=(~sel|a)+(sel|b);´íÎóÏÈÀý
    assign out1=~sel&a|sel&b;
endmodule
