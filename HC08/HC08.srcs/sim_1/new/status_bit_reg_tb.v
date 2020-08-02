`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCT
// Engineer: Sindiso Mkhatshwa
// 
// Create Date: 24.07.2020 00:42:13
// Design Name: 
// Module Name: status_bit_reg_tb
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


module status_bit_reg_tb;
    reg res, clk;
    reg [2:0] d;
    wire [2:0] q;
    register status_bit_reg(.reset(res), .clk(clk), .d(d), .q(q));
    initial begin
        $display("\t\t\t\ttime, \td, \tq");
        $monitor("%d, \t%b, \t%b", $time, d, q);
        
        clk = 0; d = 0; res = 0; #5
        clk = 1; d = 1; res = 0; #5
        
        clk = 0; d = 0; res = 0; #5
        clk = 1; d = 0; res = 1; #5
        
        clk = 0; d = 1; res = 1; #5
        clk = 1; d = 1; res = 0; #5
        
        clk = 0; d = 1; res = 0; #5
        clk = 1; d = 0; res = 1; #5
        
        clk = 0; d = 1; res = 0; #5
        clk = 1; d = 0; res = 1; #5
        
        clk = 0; d = 0; res = 1;
            
    end
endmodule
