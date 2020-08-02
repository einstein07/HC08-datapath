`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2020 01:01:34
// Design Name: 
// Module Name: mux_4_way_tb
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


module mux_4_way_tb;
    reg [7:0] a;  //input
    reg [7:0] b;  //input
    reg [7:0] c;  //input
    reg [7:0] d;  //input
    reg [1:0] sel;//2-bit select
    wire [7:0]  out;
    
    mux_4_way uut (a, b, c, d, sel, out);
    initial begin
        $display("Select\toutput");
        $monitor("%d\t%d", sel, out);
        a = 8'd2;
        b = 8'd4;
        c = 8'd3;
        d = 8'd4;
        sel = 2'd0;
        #5;
        sel = 2'd1;
        #5;
        sel = 2'd2;
        #5;
        sel = 2'd3;
    end
endmodule
