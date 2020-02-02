`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCT
// Engineer: Sindiso Mkatshwa
// 
// Create Date: 27.01.2020 14:08:02
// Design Name: 
// Module Name: register
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


module register(
    input reset,clk,
    input [2:0] d,
    output [2:0] q,
    reg [2:0] Q
    );
    
    always @(posedge clk)
        if(reset)
            Q = 1'b0;
        else
            Q = d;
        assign q = Q;
endmodule
