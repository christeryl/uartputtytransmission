`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2024 10:33:07 PM
// Design Name: 
// Module Name: Transmit_tb
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


module Transmit_tb();
    reg sendMessage_button;
    reg [7:0] input_data;
    wire output_data_serial;
    reg clk;
    parameter period = 10;
    reg btnU = 0;
    
    clk_gen2 uut5(clk, btnU, baud_clk);
    Transmit uut(sendMessage_button, input_data, output_data_serial, baud_clk);
    always #(period/2) clk = ~clk;  // writing our clock cycles like this is easier to read
    initial
    begin
            clk = 0;
            sendMessage_button = 0;
            input_data = 8'b01010101;
            
            #1000 sendMessage_button = 1; // 1microsecond
            #200000 sendMessage_button = 0;
            
            #500000; // 500 microsecond
            
            $finish;
    end


endmodule
