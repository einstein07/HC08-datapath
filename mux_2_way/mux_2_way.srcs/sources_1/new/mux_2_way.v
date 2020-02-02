`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2020 11:23:45
// Design Name: 
// Module Name: mux_2_way
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


module mux_2_way(input [7:0] a,b,
input sel,
output[7:0] y);

assign y = (sel == 1)? b:a;

endmodule
