`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCT
// Engineer: Sindiso Mkhatshwa
// 
// Create Date: 24.07.2020 01:06:13
// Design Name: 
// Module Name: top
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


module top(
    input clk,                  //clock line
    input reset,                //reset line
    input mux1_sel,
    input acc_load,
    input alu_in_sel,
    input [1:0] mux2_sel,
    input [4:0] opcode,
    input [7:0] prev_alu_out,
    input [7:0] mem_data,
    input [7:0] cu_data,
    output [2:0] status_bits,
    output[7:0] alu_out
    );
    //------------------------------------------------------------------------------
    //constants
    //------------------------------------------------------------------------------
    parameter ZERO = 1'b0;
    //------------------------------------------------------------------------------
    //internal registers
    //------------------------------------------------------------------------------
    wire [7:0] in_mux1_out;
    wire [7:0] in_mux2_out;
    wire [7:0] acc_out;
    
    wire [7:0] alu_mux1_out;
    wire [7:0] alu_mux2_out;
    
    wire [2:0] flags;
    
    //------------------------------------------------------------------------------
    //Input multiplexers
    //------------------------------------------------------------------------------
    mux_2_way input_mux1(cu_data, mem_data, mux1_sel, in_mux1_out);
    mux_4_way input_mux2(prev_alu_out, cu_data, mem_data, ZERO, mux2_sel, mux2_sel, in_mux2_out);
    //------------------------------------------------------------------------------
    //Accumulator
    //------------------------------------------------------------------------------
    accumulator acc(.clk(clk),.acc_load(acc_load), .d(mux2_out), .q(acc_out));
    
    mux_2_way alu_mux1(.a(acc_out), .b(in_mux1_out), .sel(alu_in_sel), .y(alu_mux1_out));
    mux_2_way alu_mux2(.a(in_mux1_out), .b(acc_out), .sel(alu_in_sel), .y(alu_mux2_out));
    
    alu alu1(.operand1(alu_mux1_out), .operand2(alu_mux2_out), .opCode(opcode), .out(alu_out), .flags(flags));
    
    status_bit_reg str(.clk(clk), .reset(reset), .d(flags), .q(status_bits));
endmodule
