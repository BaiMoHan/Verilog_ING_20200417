`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/06 22:31:29
// Design Name: 
// Module Name: auto_add_tb
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


module auto_add_tb();
    reg clk,rst,start;
    wire DONE;
    wire [31:0] sum_out;
    auto_add dut(.clk(clk),.rst(rst),.start(start),.DONE(DONE),.sum_out(sum_out));
    always begin
        clk <= 0;
        #10;
        clk <= 1;
        #10;
    end
    initial begin
        rst <= 1;
        start <= 0;
        @(posedge clk);
            #5 rst <= 0;
        #5 start <= 1;
    end
endmodule
