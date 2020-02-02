`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2020 14:02:37
// Design Name: 
// Module Name: mux_tb
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


module mux_tb;
    reg [7:0] a,b,c,d;
    reg [1:0] sel;
    wire y;
    
    mux myMux(.a(a), .b(b), .c(c), .d(d), .sel(sel), .y(y));
    
    initial begin
    $display("|Sel |A |B |C |D |Y |");
    $monitor("|%b |%b |%b |%b |%b |%b |",sel,a,b,c,d,y);
    
    sel = 0; a = 1; b = 0; c = 0; d = 0;
    sel = 1; a = 1; b = 2; c = 3; d = 4;
    
    
    
    
    end
    
endmodule
