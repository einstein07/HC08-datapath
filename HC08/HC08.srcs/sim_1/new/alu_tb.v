`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCT
// Engineer: Sindiso Mkhatshwa
// 
// Create Date: 24.07.2020 00:19:58
// Design Name: 
// Module Name: alu_tb
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

module alu_tb;
//inputs to alu
    reg [7:0] A,B;
    reg [4:0] opcode;
//outputs
    wire [7:0] alu_out;
    wire [2:0] flags;
//test code
    integer i;
    alu myAlu(.operand1(A), .operand2(B), .opCode(opcode), .out(alu_out), .flags(flags));
        initial begin
                A = 8'b1;
                B = 8'b1;
                opcode = 5'h03; #10
                
                for (i = 0; i <= 27; i = i + 1 )
                    begin
                     
                        opcode = opcode + 5'h01; #10;
                        
                    end
               
        end
endmodule

