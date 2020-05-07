`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/06 07:57:30
// Design Name: 
// Module Name: register
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


module register(clk,rst,en,d,q);//ʱ�Ӷˣ���λ��ʹ�ܣ����룬���
    parameter WIDTH=8;//������չ
    input clk,rst,en;
    input [WIDTH-1:0] d;
    output reg [WIDTH-1:0] q;
    
    always @(posedge clk)begin
        if(rst)
            q<=0;
        else if(en)
            q<=d;
    end
endmodule
