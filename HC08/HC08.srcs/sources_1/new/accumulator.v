`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCT
// Engineer: Sindiso Mkhatshwa
// 
// Create Date: 24.07.2020 00:06:35
// Design Name: 
// Module Name: accumulator
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

module accumulator(input clk,
    input [7:0] d,
    output [7:0] q,
    reg [7:0] temp
    
    );
    
    always @(posedge clk)
        begin
            temp <= temp + d;
        end
    assign q = temp;
endmodule