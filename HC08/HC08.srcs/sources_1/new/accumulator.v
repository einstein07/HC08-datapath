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

module accumulator(
    input clk,
    input acc_load,
    input [7:0] d,
    output [7:0] q
    );
    //internal registers
    reg [7:0] temp;
    always @(posedge clk)
        begin
            if(acc_load)temp <= d;
        end
    assign q = temp;
endmodule