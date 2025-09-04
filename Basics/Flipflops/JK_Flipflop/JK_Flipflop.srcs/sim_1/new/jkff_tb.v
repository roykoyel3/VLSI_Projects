`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 23:35:24
// Design Name: 
// Module Name: jkff_tb
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


module jkff_tb();
reg [1:0]jk, clk;
wire q,qb;

jkff dut(.jk(jk),.clk(clk),.q(q),.qb(qb));

initial begin
clk=0;
forever 
#2 clk=~clk;
end

initial begin 
$dumpfile("dump.vcd");
$dumpvars(1);
end 

initial begin
jk=2'b01;
#5
jk=2'b10;
#5
jk=2'b11;
#5
jk=2'b00;
#5
jk=2'b01;
#5
$finish();
end
endmodule
