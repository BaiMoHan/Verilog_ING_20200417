`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/06 08:53:32
// Design Name: 
// Module Name: ram
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


module ram(addr,q);//地址，输出
    parameter DATA_WIDTH=32;//参数形式数据宽度
    parameter ADDR_WIDTH=4;//参数形式地址宽度，2的幂次指数
    
    input [ADDR_WIDTH-1:0] addr;
    output  [DATA_WIDTH-1:0] q;
    
    //声明存储器数组
    reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];
    
    reg [5:0]n;
    initial begin   //对存储器进行初始化
        $readmemh("D:/verilogLab/lab4/init.txt",ram);
         for(n=0;n<=15;n=n+1)begin   
                $display("%h",ram[n]); //验证是否读入准确
            end
    end
    

        assign q=ram[addr];  //读数据输出
   
endmodule
