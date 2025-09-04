`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 23:41:24
// Design Name: 
// Module Name: srff
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


module srff(sr,clk,q,qb);
input[1:0]sr,clk;
output q,qb;
reg q,qb;

always @(posedge clk)begin
case(sr)
2'b00:q=q;
2'b01:q=0;
2'b10:q=1;
2'b11:q=1'bz;
endcase
end 
always @(*)begin
 qb=~q;
end
endmodule
