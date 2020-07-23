`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UCT
// Engineer: Sindiso Mkhatshwa
// 
// Create Date: 24.07.2020 00:15:54
// Design Name: 
// Module Name: alu
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

module alu( input [7:0] operand1, operand2,
    input [4:0] opCode,
    input ALU_sel,
    output [7:0] out,
    output [2:0] flags //Status bits C,Z,N
    );
    
    wire C,Z,N;
    reg carry_out;
    reg [7:0] ALU_out;
    
    always @ (*)
        begin
            case(opCode)
            5'h1b: {carry_out, ALU_out} = operand1 + operand2;      //ADD  acc=acc+operand
            5'h14: ALU_out = operand1 & operand2;                   //AND: acc=acc&operand
            5'h10: begin ALU_out = (ALU_sel)? (operand2-operand1):(operand1-operand2);             //SUB  acc=acc-operand  
                         carry_out = !ALU_out[7];
                   end
            5'h1a: ALU_out = operand1 | operand2;                   //OR
            5'h18: ALU_out = operand1 ^ operand2;                   //EOR
            5'h0a: begin ALU_out = operand2 - 8'h1; //acc = acc-1
                         carry_out = !ALU_out[7];
                         
                         ALU_out = operand1 - 8'h1; //operand = operand-1
                         carry_out = !ALU_out[7];
                   end                       
            5'h0c: begin {carry_out, ALU_out} = operand2 + 8'h1; //acc=acc+1
                         {carry_out, ALU_out} = operand1 + 8'h1; //operand= operand+1
                   end
            5'h08: begin ALU_out = operand1 << 8'h1;      //LSL: Opr = Opr<<1
                         ALU_out = operand2 << 8'h1;      //LSLA: acc = acc<<1
                   end
            5'h04: begin ALU_out = operand1 >> 8'h1;      //LSR: opr=opr>>1
                         ALU_out = operand2 >> 8'h1;      //LSR: acc=acc>>1
                   end
            5'h0f: ALU_out = 0;     //Clear opr and acc
            
            5'h03: begin ALU_out = 8'h0 - operand1;
                         carry_out = !ALU_out[7];
                         
                         ALU_out = 8'h0 - operand2;
                         carry_out = !ALU_out[7];                   
                   end
            5'h16: ALU_out = (ALU_sel)? operand1:operand2;  //Load accumulator: acc = operand
            
            5'h11: ALU_out = (ALU_sel)? (operand2-operand1):(operand1-operand2);                   
            
            default: ALU_out = 8'bx;
                     
            endcase
    end
    assign Z = (ALU_out == 0)? 1'b1:1'b0;
    assign flags = {carry_out, Z, 1'b0};
    assign out = ALU_out;
endmodule

