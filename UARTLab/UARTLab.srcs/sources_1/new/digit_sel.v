`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2024 10:59:29 AM
// Design Name: 
// Module Name: digit_selector
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


module digit_selector(
    input clkd,
    input reset,
    output reg [3:0] digit_sel
    );
    reg [1:0] cnt;
    always @(posedge clkd, posedge reset)
    if (reset)
        cnt <= 0;
    else 
        cnt <= cnt +1;
        
    always @ (cnt)
    case (cnt)
    2'b00: digit_sel = 4'b1110;
    2'b01: digit_sel = 4'b1101;
    2'b10: digit_sel = 4'b1011;
    2'b11: digit_sel = 4'b0111;
    default: digit_sel = 4'b1110;
    endcase
    
                    
endmodule
