`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/04/10 17:16:39
// Design Name: 
// Module Name: _3To8_Translate_tb
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

`timescale 1ns/100ps
module _3To8_Translate_tb();
    reg [2:0] CBA;
    wire [7:0] F;
    _3To8_Translate t1(.CBA(CBA),.F(F));
    initial 
    begin
        $display("$time::[CBA][F]--------");
        $monitor("%t::",$time,"[%b]\t[%b]\t",CBA,F);
    end
    initial
    begin
        for(CBA=0;CBA<=3'b111;CBA=CBA+1)
            #50;
        #50 $stop;
    end
endmodule
