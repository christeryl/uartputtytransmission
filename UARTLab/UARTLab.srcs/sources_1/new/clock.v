`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2024 10:57:35 AM
// Design Name: 
// Module Name: clk_gen2
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


module clk_gen2(
    input clk,
    input rst,
    output reg clk_115200Hz = 1'b0
    );
// generate 115200Hz clk signal
reg [10:0] count = 1'b0; // make sure the count has enough bits to count to 1,024
always @ (posedge clk, posedge rst)    // fclk is 100MHz
if (rst)
    begin
        count <= 0;
        clk_115200Hz <= 0;
    end
else if (count < 434)
    count <= count + 1; // keep incrementing until you hit 434 
else
    begin
        count <= 0;
        clk_115200Hz <= ~clk_115200Hz; // invert the clock every 0.5 second (a cycle is both a toggle on and a toggle off)
    end



endmodule
