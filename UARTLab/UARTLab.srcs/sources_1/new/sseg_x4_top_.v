`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2024 10:37:45 AM
// Design Name: 
// Module Name: sseg_x4_top
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
 
 
module sseg_x4_top(
    input [15:0] sw,
    output [6:0] seg,
    output [3:0] an,
    output dp,
//    output [4:0] JA,
    input btnC,
    input clk
    );
    wire clk_div;
    clk_gen2 slowclk(clk, btnC,clk_div);
    digit_selector an_sel(clk_div, btnC, an[3:0]);
    wire [3:0] not_used;
    wire [3:0] hex_num;
    hex_num_gen hex_generator (
    .digit_sel(an[3:0]), // Connect the selected digit
    .sw(sw),              // Connect the switches
    .hex_num(hex_num)     // Output hex number to be displayed
    );
    Single7Seg inst1 (
    .seg (seg),
    .an (not_used),
    .dp (dp),
    .sw (hex_num)
    );
//    assign JA[4:0] = {an[3:0],clk_div};
endmodule
 
module hex_num_gen(
    input [3:0] digit_sel,
    input [15:0] sw,
    output reg [3:0] hex_num
);
    always @(*) begin
        case (digit_sel)
            4'b1110: hex_num = sw[3:0];     // First 4 switches
            4'b1101: hex_num = sw[7:4];     // Second 4 switches
            4'b1011: hex_num = sw[11:8];    // Third 4 switches
            4'b0111: hex_num = sw[15:12];   // Fourth 4 switches
//            default: hex_num = 4'b1110;      // Default case (if needed)
        endcase
    end
endmodule