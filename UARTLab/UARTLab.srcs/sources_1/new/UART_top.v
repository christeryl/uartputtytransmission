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
    output TX, // JA[4]
    input RX,  // JA[3]
    output [7:0] led
    );
    wire baud_clk;
    wire [7:0]parallel_data_rcv;
    assign led = parallel_data_rcv;
    
    clk_gen2 clk_115200(clk, btnU, baud_clk);
    
    Transmit sendData(btnC, sw[7:0], TX, baud_clk);
    Receive receiveData(RX, parallel_data_rcv, clk);

    sseg_x4_top displayReceivedData(parallel_data_rcv, seg, an, dp, btnC, baud_clk);
    
endmodule
