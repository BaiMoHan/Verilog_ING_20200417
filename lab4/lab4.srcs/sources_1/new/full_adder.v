`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/06 09:03:48
// Design Name: 
// Module Name: full_adder
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


module full_adder(a,b,out);//加数，被加数，输出   此处去掉了进位端口
    parameter WIDTH=8;//输出宽度
    input [WIDTH-1:0] a,b;
    output [WIDTH-1:0] out;
    assign out=a+b;
endmodule
