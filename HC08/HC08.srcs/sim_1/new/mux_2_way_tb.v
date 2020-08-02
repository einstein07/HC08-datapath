`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCT
// Engineer: Sindiso Mkhatshwa
// 
// Create Date: 24.07.2020 00:48:36
// Design Name: 
// Module Name: mux_2_way_tb
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


module mux_2_way_tb;
    reg [7:0] a,b;
    reg sel;
    wire [7:0] y;
    
    mux_2_way myMux(.a(a), .b(b),.sel(sel), .y(y));
        initial begin
            $display("Sel,\ta,\tb,\ty");
            $monitor("%b,\t%b,\t%b,\t%b",sel,a,b,y);
            
            sel = 0; a = 6; b = 7; #5
            sel = 1; a = 10; b = 20; #5;
            
            sel = 0; a = 2; b = 4; #5
            sel = 1; a = 3; b = 6; #5;
            
            sel = 0; a = 12; b = 24; #5
            sel = 1; a = 14; b = 28; #5;
            
            sel = 0; a = 6; b = 7; #5
            sel = 1; a = 6; b = 7; #5;
        end
endmodule
