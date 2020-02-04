`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCT
// Engineer: Sindiso Mkhatshwa
// 
// Create Date: 28.01.2020 14:42:14
// Design Name: 
// Module Name: mux
// Project Name: 
// Target Devices: Nexys A7
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

module mux (input [7:0] a,b,c,d,//input
input [1:0] sel,//2-bit select
output [7:0]  y// output
);
reg [7:0] Y;
always @ (*)
    begin
        case (sel) //case select
          0: Y=a;
          1: Y=b;
          2: Y=c;
          3: Y=d;
          default:Y = 8'bx;
        endcase
    end
assign y = Y;
endmodule
