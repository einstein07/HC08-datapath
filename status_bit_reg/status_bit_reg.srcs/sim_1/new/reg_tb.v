`timescale 1ns / 10ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2020 17:23:46
// Design Name: 
// Module Name: reg_tb
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


module reg_tb;
    reg res, clk;
    reg [2:0] d;
    wire [2:0] q;
register myRegister(.reset(res), .clk(clk), .d(d), .q(q));
    initial begin
        $display("\t\t\t\ttime, \td, \tq");
        $monitor("%d, \t%b, \t%b", $time, d, q);
        
        clk = 0; d = 0; res = 0; #5
        clk = 1; d = 1; res = 0; #5
        
        clk = 0; d = 0; res = 0; #5
        clk = 1; d = 0; res = 1; #5
        
        clk = 0; d = 1; res = 1; #5
        clk = 1; d = 1; res = 0; #5
        
        clk = 0; d = 1; res = 0; #5
        clk = 1; d = 0; res = 1; #5
        
        clk = 0; d = 1; res = 0; #5
        clk = 1; d = 0; res = 1; #5
        
        clk = 0; d = 0; res = 1;
            
    end

  
    
endmodule
