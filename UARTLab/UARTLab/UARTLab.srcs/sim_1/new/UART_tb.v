`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2024 10:47:44 AM
// Design Name: 
// Module Name: UART_tb
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


module UART_tb();
    reg clk =0;
    reg btnC = 0;
    reg btnU = 0;
    wire [6:0] seg;
    wire dp;
    wire [3:0] an;
    reg [15:0] sw = 8'b10101100;
    wire TX; // JA[3] = send, JA[2] = receive, JA[4] = ground, JA[5] = power
    wire RX;
    parameter period1 = 20;
    parameter period2 = 10;
    
    UART_top uut4(clk, btnC,btnU, seg, dp, an, sw, TX, RX, JAtest);
    always #(period1/2) clk = ~clk;  // writing our clock cycles like this is easier to read
    initial
    begin
    #5 btnC = 1;
    #1000 btnC = 0;
    
    #500000; // 500 microsecond
            
    $finish;
    
    end
    
    
endmodule
