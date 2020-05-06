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


module ram(addr,q);//��ַ�����
    parameter DATA_WIDTH=8;//������ʽ���ݿ��
    parameter ADDR_WIDTH=3;//������ʽ��ַ��ȣ�2���ݴ�ָ��
    
    input [ADDR_WIDTH-1:0] addr;
    output [DATA_WIDTH-1:0] q;
    
    //�����洢������
    reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];
    
    initial begin   //�Դ洢�����г�ʼ��
        $readmemh("D:/verilogLab/lab4/init.txt",ram);
    end
  
    assign q=ram[addr];  //���������
   
endmodule
