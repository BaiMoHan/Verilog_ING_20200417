`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/05 21:03:03
// Design Name: 
// Module Name: CNT4_synch_reset_enable
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


module CNT4_synch_reset_enable(
    input clk,
    input rst,
    input en,
    output reg[3:0]Q
    );
    always@(posedge clk)
        if(rst)
            Q<=4'B0000;
        else if(en)
            Q<=Q+1;
endmodule
