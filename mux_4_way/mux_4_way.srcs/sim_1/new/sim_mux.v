`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.01.2020 14:58:11
// Design Name: 
// Module Name: sim_mux
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



module sim_mux;

reg[7:0] a,b,c,d;
reg[1:0] sel;
wire [7:0] y;
//reg [7:0]     y;

integer  i;

mux my_mux( a,b,c,d,sel, y );

initial
begin
   #1 $monitor("a = %b", a, "  | b = %b", b,"| c = %b", c,"| d = %b", d," |  sel = ", sel, "  |  y = %b", y );

   for( i = 0; i <= 15; i = i + 1)
   begin
      a = i;
      b = i;
      c = i;
      d = i;
      sel = 0;  #1;
      sel = 1;  #1;
      sel = 2;  #1;
      sel = 3;  #1;
      $display("-----------------------------------------");
    end

end
endmodule