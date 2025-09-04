`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2025 00:14:01
// Design Name: 
// Module Name: dff
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


module dff(d,clk,q,qb);
input d,clk;
output reg q,qb;

always@(posedge clk)begin
case(d) 
0:q=0;
1:q=1;
endcase
end
always@(*)begin
qb=~q;
end
endmodule
