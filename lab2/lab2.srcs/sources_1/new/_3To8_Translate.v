`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/10 15:42:27
// Design Name: 
// Module Name: _3To8_Translate
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


module _3To8_Translate(
    output reg [7:0] F,
    input [2:0] CBA
    );
    always@(CBA)
    begin
        case(CBA[2:0])
            3'b000 : F = 8'b1111_1110;
            3'b001 : F = 8'b1111_1101;
            3'b010 : F = 8'b1111_1011;
            3'b011 : F = 8'b1111_0111;
            3'b100 : F = 8'b1110_1111;
            3'b101 : F = 8'b1101_1111;
            3'b110 : F = 8'b1011_1111;
            3'b111 : F = 8'b0111_1111;
        endcase
      end
endmodule
