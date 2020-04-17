`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/10 15:13:03
// Design Name: 
// Module Name: ThreeChOne
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
//module TwoChOneDF(a,sel,b,out1);
//input a,sel,b;
//output out1;
//assign out1=~sel&a|sel&b;
//endmodule

module ThreeChOne(u,v,w,s0,s1,m);
    input u,v,w,s1,s0;
    output m;
    wire out1;
    TwoChOne select1(.a(u),.sel(s0),.b(v),.out1(out1));
    TwoChOne select2(.a(out1),.sel(s1),.b(w),.out1(m));
endmodule
