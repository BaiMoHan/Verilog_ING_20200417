`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/06 09:08:31
// Design Name: 
// Module Name: comparator
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


module comparator(a,flag);//�˴��ıȽ��������ж��ǲ���Ϊ0
    parameter WIDTH=8;//��������λ��
    input [WIDTH-1:0] a;//���жϵ���
    output reg flag;
    always@(a)
         flag<=(a==0)?1'b1:1'b0;
endmodule
