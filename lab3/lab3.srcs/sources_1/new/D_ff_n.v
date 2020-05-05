//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/04 14:46:16
// Design Name: 
// Module Name: D_ff_n
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


module D_ff_n(
    input clk,
    input D,
    output reg Q
    );
    always@(negedge clk)    // ±÷”œ¬Ωµ—ÿ¥•∑¢
        Q<=D;
endmodule
