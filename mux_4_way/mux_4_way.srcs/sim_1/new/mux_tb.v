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
    reg [7:0] a_t,b_t,c_t,d_t;
    reg [1:0] sel_t;
    wire [7:0]y;
    integer i;
    
    
    mux myMux(.a(a_t), .b(b_t), .c(c_t), .d(d_t), .sel(sel_t), .y(y));
    
    initial begin
    $display("Sel, \tA, \tB, \tC, \tD, \tY");
    $monitor("%d, \t%b, \t%b, \t%b, \t%b, \t%b",sel_t,a_t,b_t,c_t,d_t,y);
    for(i = 0; i < 5; i = i+1)
    begin
        sel_t = 0; a_t = 1; b_t = 2; c_t = 3; d_t = 4; #5
        sel_t = 1; a_t = 1; b_t = 2; c_t = 3; d_t = 4; #5
        
        sel_t = 2; a_t = 1; b_t = 2; c_t = 3; d_t = 4; #5
        sel_t = 3; a_t = 1; b_t = 2; c_t = 3; d_t = 4; #5;
        
    end
    
    end
    
endmodule
