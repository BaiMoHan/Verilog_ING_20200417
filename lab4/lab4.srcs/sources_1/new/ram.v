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
    parameter DATA_WIDTH=32;//������ʽ���ݿ��
    parameter ADDR_WIDTH=4;//������ʽ��ַ��ȣ�2���ݴ�ָ��
    
    input [ADDR_WIDTH-1:0] addr;
    output  [DATA_WIDTH-1:0] q;
    
    //�����洢������
    reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];
    
    reg [5:0]n;
    initial begin   //�Դ洢�����г�ʼ��
        $readmemh("D:/verilogLab/lab4/init.txt",ram);
         for(n=0;n<=15;n=n+1)begin   
                $display("%h",ram[n]); //��֤�Ƿ����׼ȷ
            end
    end
    

        assign q=ram[addr];  //���������
   
endmodule
