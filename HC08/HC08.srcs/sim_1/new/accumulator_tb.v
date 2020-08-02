`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCT
// Engineer: Sindiso Mkhatshwa
// 
// Create Date: 24.07.2020 00:12:12
// Design Name: 
// Module Name: accumulator_tb
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

module accumulator_tb;
    reg clk;
    reg [7:0] in;
    wire [7:0] out;
    
    acc myAcc(.clk(clk));
        initial begin
            clk = 1;
            in = 8'b01;
        end
    always #10 clk =~clk;
endmodule
