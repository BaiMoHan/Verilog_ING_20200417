`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/06 19:50:17
// Design Name: 
// Module Name: FSM
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


module FSM(clk,rst,start,next_zero,LD_SUM,LD_NEXT,SUM_SEL,NEXT_SEL,A_SEL,DONE);
    input clk,rst,start,next_zero;
    output reg LD_SUM,LD_NEXT,SUM_SEL,NEXT_SEL,A_SEL,DONE;
    
    localparam S0=0,S1=1,S2=2,S3=3;
    reg [1:0] state,statenext;
    
    always@(state,start,next_zero)
    begin
        case(state)
        
            S0:begin
                LD_SUM<=0;
                LD_NEXT<=0;
                SUM_SEL<=0;
                NEXT_SEL<=0;
                A_SEL<=0;
                DONE<=0;
                if(start==0)
                    statenext<=S0;
                else
                    statenext<=S1;
            end
            
            S1:begin
                LD_SUM<=1;
                LD_NEXT<=0;
                SUM_SEL<=1;
                NEXT_SEL<=1;
                A_SEL<=1;
                DONE<=0;
                statenext<=S2;
            end
            
            S2:begin
                LD_SUM<=0;
                LD_NEXT<=1;
                SUM_SEL<=1;
                NEXT_SEL<=1;
                A_SEL<=0;
                DONE<=0;
                if(next_zero==0)
                    statenext<=S1;
                else
                    statenext<=S3;
            end
            
            S3:begin
                LD_SUM<=0;
                LD_NEXT<=0;
                SUM_SEL<=0;
                NEXT_SEL<=0;
                A_SEL<=0;
                DONE<=1;
                if(start==1)
                    statenext<=S3;
                else
                    statenext<=S0;
            end
            
        endcase
    end
    
    always@(posedge clk)
    begin
        if(rst)
            state<=S0;
        else
            state<=statenext;
    end
        
endmodule
