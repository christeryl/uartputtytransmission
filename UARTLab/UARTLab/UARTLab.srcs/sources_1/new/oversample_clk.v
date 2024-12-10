`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2024 09:30:54 PM
// Design Name: 
// Module Name: Oversample_clk
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


module Oversample_clk(
    input clk,
    output reg clk_230400Hz,
    input rst
    );
    // generate 230400Hz clk signal
reg [8:0] count; // make sure the count has enough bits to count to 217
always @ (posedge clk, posedge rst)    // fclk is 100MHz
if (rst)
    begin
        count <= 0;
        clk_230400Hz <= 0;
    end
else if (count < 217)
    count <= count + 1; // keep incrementing until you hit 217
else
    begin
        count <= 0;
        clk_230400Hz <= ~clk_230400Hz; // invert the clock every 0.5 second (a cycle is both a toggle on and a toggle off)
    end



endmodule
