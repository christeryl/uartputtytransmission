`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2024 10:01:38 PM
// Design Name: 
// Module Name: UART_top
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


module UART_top(
    input clk,
    input btnC,
    input btnU,
    output [6:0] seg,
    output dp,
    output [3:0] an,
    input [15:0] sw,
    output [6:3] JA //JA[5]: 3.3V, JA[4]: Ground, JA[3]:Send, JA[2]:Recieve
    );
    wire baud_clk,
         baud_clk_x2,
         parallel_data;
    
   // assign JA[6] = 1'b1;
   // assign JA[5] = 1'b0;
    clk_gen2 clk_115200(clk, btnC, baud_clk);
    Oversample_clk clk_230400(clk, baud_clk_x2, btnC);
    Transmit sendData(btnC, sw[7:0], JA[3], baud_clk);
    Receive receiveData(baud_clk_x2, JA[2], parallel_data);
//    parallel_data = {8'b00000000, parallel_data};
    sseg_x4_top displayReceivedData(parallel_data, seg, an, dp, btnC, baud_clk);
    
endmodule
