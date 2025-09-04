`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.08.2025 23:59:53
// Design Name: 
// Module Name: tff_tb
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


module tff_tb();
reg t,clk;
wire q,qb;

tff dut(.t(t),.clk(clk),.q(q),.qb(qb));

initial begin
clk=0;
forever #1 clk=~clk;
end

initial begin
$dumpfile("dump.vcd");
$dumpvars(1);
end

initial begin
t=0;
#5
t=1;
#5
t=1;
#5
t=1;
#5
t=0;
#5
t=1;
#5
t=0;
#5
$finish();
end
endmodule
