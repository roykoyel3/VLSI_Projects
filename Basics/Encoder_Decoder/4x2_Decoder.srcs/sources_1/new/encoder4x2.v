`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.08.2025 16:55:34
// Design Name: 
// Module Name: encoder4x2
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


module encoder4x2(d,out);
input [3:0]d;
output [1:0]out;
reg [1:0]out;

always @(d,out)begin
case(d)
4'b0001:out=2'b00;
4'b0010:out=2'b01;
4'b0100:out=2'b10;
4'b1000:out=2'b11;
endcase
end
endmodule
