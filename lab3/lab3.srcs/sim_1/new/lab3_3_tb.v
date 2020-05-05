`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/05 20:18:37
// Design Name: 
// Module Name: lab3_3_tb
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


module lab3_3_tb();
    reg clk,ShiftIn,ShiftEn;
    wire [3:0] ParallelOut;   //4bit并行输出信号
    wire  ShiftOut;    //移位输出信号
    Serial_in_Parallel_out_enable test(.clk(clk),.ShiftIn(ShiftIn),.ShiftEn(ShiftEn),.ParallelOut(ParallelOut),.ShiftOut(ShiftOut));
    
    initial begin
        clk=1'b0;
        #300 $stop;
    end
    
    always
        #10 clk=!clk;
     
    initial begin
        ShiftIn=1'b0;
        #10 ShiftIn=!ShiftIn;
        #50 ShiftIn=!ShiftIn;
        #40 ShiftIn=!ShiftIn;
        #60 ShiftIn=!ShiftIn;
        #20 ShiftIn=!ShiftIn;
        #40 ShiftIn=!ShiftIn;
        #80 $stop;
    end
    
    initial begin
        ShiftEn=1'b0;
        #40 ShiftEn=!ShiftEn;
        #60 ShiftEn=!ShiftEn;
        #40 ShiftEn=!ShiftEn;
    end
endmodule
