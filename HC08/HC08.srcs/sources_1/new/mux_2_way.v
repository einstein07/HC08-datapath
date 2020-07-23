`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCT
// Engineer: Sindiso Mkhatshwa
// 
// Create Date: 24.07.2020 00:46:33
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


module mux_2_way(
    input [7:0] a,b,
    input sel,
    output[7:0] y
    );

    assign y = (sel == 1)? b:a;
endmodule
