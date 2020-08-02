`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCT
// Engineer: Sindiso Mkhatshwa
// 
// Create Date: 24.07.2020 00:54:33
// Design Name: 
// Module Name: mux_4_way
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


module mux_4_way(
    input [7:0] a,  //input
    input [7:0] b,  //input
    input [7:0] c,  //input
    input [7:0] d,  //input
    input [1:0] sel,//2-bit select
    output [7:0]  y // output
    );
    //internal reg
    reg [7:0] out;
    
    always @ (*)begin
            case (sel) //case select
              2'd0: out = a;
              2'd1: out = b;
              2'd2: out = c;
              2'd3: out = d;
            endcase
    end
    assign y = out;    
endmodule
