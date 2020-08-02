`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCT
// Engineer: Sindiso
// 
// Create Date: 02.08.2020 18:39:15
// Design Name: 
// Module Name: HC08_tb
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


module HC08_tb;
    reg clk;
    reg reset;
    reg mux1_sel;
    reg acc_load;
    reg alu_in_sel;
    reg [1:0] mux2_sel;
    reg [4:0] opcode;
    reg [7:0] mem_data;
    reg [7:0] cu_data;
    wire [2:0]status_bits;
    wire [7:0]alu_out;
    wire [7:0]in_mux2_out;
    wire [7:0]acc_out;
    
    top uut(clk, reset, mux1_sel, acc_load, alu_in_sel, mux2_sel, opcode, mem_data, cu_data, status_bits, alu_out);
    
    mux_4_way input_mux2(alu_out, cu_data, mem_data, 0, mux2_sel, in_mux2_out);
    accumulator acc(.clk(clk),.acc_load(acc_load), .d(in_mux2_out), .q(acc_out));

    initial begin
    $display("Clock\tReset\tAccumulator");
    $monitor("%d\t%d\t%d", clk, reset, top.acc_out);

    clk = 0; #5
    reset = 1;
    clk = ~clk; #5 //clk = 1
    reset = 0;
    clk = ~clk; #5 //clk = 0
    clk = ~clk; #5//clk = 1
    clk = ~clk; #5 // clk = 0
    
    
    //LDA #$20
    opcode = 5'h16;
    cu_data = 8'd20;
    acc_load = 1'b1;
    mux2_sel = 2'b01;
    clk = ~clk; #5//clk = 1
    clk = ~clk; #5; // clk = 0
    clk = ~clk; #5; //clk = 1
    clk = ~clk; #5; //clk = 0
    mux2_sel = 2'b0;

    //ADD operand
    opcode = 5'h1b;
    mem_data = 8'd2;
    mux1_sel = 1'b1;
    alu_in_sel = 1'b0;
    acc_load = 1'b0;
    clk = ~clk; #5//clk = 1
    clk = ~clk; #5 ;// clk = 0
    acc_load = 1'b1;
    opcode = 5'h16;
    clk = ~clk; #5//clk = 1
    clk = ~clk; #5; // clk = 0
    
    //CLR operand
    acc_load = 1'b0;
    opcode = 5'h0f;
    clk = ~clk; #5//clk = 1
    clk = ~clk; #5; // clk = 0
    

    

 
    //write back
    //mux2_sel = 2'b0;
    //opcode = 5'h16;
    //acc_load = 1'b1;
    //clk = ~clk; #5//clk = 1
    //clk = ~clk; #5; // clk = 0
    
    //repeat(10)begin
    //clk = ~clk; #5;
    //end
    
    end
     
endmodule
