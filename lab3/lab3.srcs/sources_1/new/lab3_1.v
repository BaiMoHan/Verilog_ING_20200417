`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/04 15:02:32
// Design Name: 
// Module Name: lab3_1
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

module D_latch(input clk, input D, output reg Q);
    always @ (clk or D)
        if (clk) begin
            Q <= D;
        end
endmodule

module D_ff(input clk, input D, output reg Q);
    always @ (posedge clk)    // Ê±ÖÓÉÏÉýÑØ´¥·¢
            Q <= D;
endmodule

