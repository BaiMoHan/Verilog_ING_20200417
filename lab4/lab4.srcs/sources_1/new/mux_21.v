`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/06 09:13:57
// Design Name: 
// Module Name: mux_21
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


module mux_21(a,b,sel,out);
    parameter WIDTH=8;//nλ��ѡһѡ����
    input [WIDTH-1:0] a,b;
    input sel;
    output  reg [WIDTH-1:0] out;
    always@(a,b,sel)
        out<=(sel==0)?a:b;//0ѡ��a��1ѡ��b
endmodule
