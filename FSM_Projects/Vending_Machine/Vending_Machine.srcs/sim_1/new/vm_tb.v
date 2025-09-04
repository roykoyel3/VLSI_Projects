`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2025 16:20:38
// Design Name: 
// Module Name: vm_tb
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


module vm_tb();
    reg clk;
    reg [1:0]in;
    reg reset;
    wire out;
    wire [1:0]change;
    
    vm dut(.clk(clk), .reset(reset), .in(in), .out(out), .change(change));
    
    initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0, vm_tb);
    end
    
    initial begin 
    reset =1;
    clk = 0;
    
    #6 reset = 0;
    in = 2'b01;
    #10 in = 2'b01;
    #12 in = 2'b10;
    #25 $finish;
    end
     always #5 clk =~clk;
    
    
endmodule
