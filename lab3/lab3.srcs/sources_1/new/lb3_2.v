`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/04 15:42:35
// Design Name: 
// Module Name: Register_synch_reset_load
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


module Register_synch_reset_load(
    input [3:0]D,
    input clk,
    input rst,
    input en,
    output reg[3:0]Q
    );
    always@(posedge clk)
        if(rst) //ͬ����λ
        begin
            Q<=4'b0;
        end
        else begin
             if(en) //ʹ�ܿ���
            begin
                Q<=D;
            end
          end
endmodule
