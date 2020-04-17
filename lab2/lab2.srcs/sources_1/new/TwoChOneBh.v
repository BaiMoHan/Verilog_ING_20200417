`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/10 14:57:30
// Design Name: 
// Module Name: TwoChOneBh
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


module TwoChOneBh(
    input a,
    input b,
    input sel,
    output out1
    );
 reg out1;//只有reg才能在always中赋值
 always@(a or b or sel)
    begin  
//        out1= ~sel&a|sel&b;
    if(sel==0)
        out1=a;
    else
        out1=b;
    end
endmodule
