`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/05 19:45:44
// Design Name: 
// Module Name: Serial_in_Parallel_out_enable
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


module Serial_in_Parallel_out_enable(clk,ShiftEn,ShiftIn,ParallelOut,ShiftOut);
    input clk,ShiftIn,ShiftEn;
    output [3:0] ParallelOut;   //4bit并行输出信号
    output reg ShiftOut;    //移位输出信号
    
    reg [3:0] shift_reg = 4'b0000;
    always@(posedge clk)
        if(ShiftEn)begin
            ShiftOut<=shift_reg[3];
            shift_reg<={shift_reg[2:0],ShiftIn};
        end
     
     assign ParallelOut=shift_reg;
endmodule
