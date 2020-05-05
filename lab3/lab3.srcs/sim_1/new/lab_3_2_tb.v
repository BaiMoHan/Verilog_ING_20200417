`timescale 1ns/1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/05 19:09:10
// Design Name: 
// Module Name: lab_3_2_tb
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



module lab3_2_tb( );
	reg clk,rst,en;
	reg [3:0] D;
	wire [3:0] Q;
	Register_synch_reset_load test(.D(D),.clk(clk),.rst(rst),.en(en),.Q(Q));
	initial begin
		clk=1'b0;
		#200 $stop;
	end
	always
		#10 clk=!clk;
	initial begin
		rst=1'b0;
		#80 rst=!rst;
		#50 rst=!rst;
		#70 $stop;
	end;
	initial begin
		en=1'b0;
		#40 en=!en;
		#20 en=!en;
		#40 en=!en;
		#20 en=!en;
		#40 en=!en;
		#20 en=!en;
		#20 $stop;
	end;
	initial begin
		D=4'b0000;
		#20 D=4'b0101;
		#40 D=4'b1001;
		#140 $stop;
	end
endmodule

