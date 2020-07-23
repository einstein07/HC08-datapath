`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCT
// Engineer: Sindiso Mkhatshwa
// 
// Create Date: 24.07.2020 00:37:46
// Design Name: 
// Module Name: status_bit_reg
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


module status_bit_reg(
    input reset,clk,
    input [2:0] d,
    output [2:0] q,
    reg [2:0] Q
    );
    
    always @(posedge clk)begin
        if(reset)
            Q = 1'b0;
        else
            Q = d;
    end 
    assign q = Q;
endmodule
