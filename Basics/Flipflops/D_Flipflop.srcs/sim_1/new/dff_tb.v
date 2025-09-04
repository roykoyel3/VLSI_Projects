`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2025 00:17:19
// Design Name: 
// Module Name: dff_tb
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


module dff_tb();
reg d,clk;
wire q,qb;

dff dut(.d(d),.clk(clk),.q(q),.qb(qb));

initial begin
clk=0;
forever #3 clk=~clk;
end

initial begin 
$dumpfile("dump.vcd");
$dumpvars(1);
end

initial begin
d=0;
#5 d=1;
#5 d=1;
#5 d=0;
#5 $finish();
end
endmodule
