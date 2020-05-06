`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/06 20:46:44
// Design Name: 
// Module Name: FSM_tb
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


module FSM_tb();
    reg clk,rst,start,next_zero;
    wire LD_SUM,LD_NEXT,SUM_SEL,NEXT_SEL,A_SEL,DONE;
    FSM myfsm(.clk(clk),.rst(rst),.start(start),.next_zero(next_zero),.LD_SUM(LD_SUM),.LD_NEXT(LD_NEXT),.SUM_SEL(SUM_SEL),.NEXT_SEL(NEXT_SEL),.A_SEL(A_SEL),.DONE(DONE));
    
    initial begin
        clk=1'b0;
        rst=1'b1;
        start=1'b0;
        next_zero=1'b0;
        #200 $stop;
    end
    
    always 
        #10 clk<=!clk;
        
    initial begin
        @(posedge clk)
            #5 rst<=!rst;
        @(posedge clk)
            #5 start<=!start;
        #85 next_zero<=!next_zero;
        #20 start<=!start;
    end
    
    
    
endmodule
