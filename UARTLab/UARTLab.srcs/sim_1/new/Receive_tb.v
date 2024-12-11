`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2024 11:18:49 PM
// Design Name: 
// Module Name: Receive_tb
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


module Receive_tb();
    // variables for receive module
    wire [7:0] RX_parallel_out;
    wire RX;    // ouput from transmit and input to receive
    parameter period = 10;
    reg clk = 0;
    wire btnU = 0;
    
    //variables for transmit module
    reg sendMessage_button;
    reg [7:0] input_data;
    wire baud_clk;
    Transmit uut2(sendMessage_button, input_data, RX, baud_clk);
    
    Receive uut3(RX, RX_parallel_out,clk);
    clk_gen2 clk_115200(clk, btnU, baud_clk);


    always #(period/2) clk = ~clk;
    initial
    begin
            clk = 0;
            sendMessage_button = 0;
            input_data = 11'b01010101;

            #10000 sendMessage_button = 1; // 1microsecond
            #20000 sendMessage_button = 0;
            
            #11000 input_data = 8'b10101010;
            #160000 sendMessage_button = 1; // 1microsecond
            #170000 sendMessage_button = 0;
                        
            #14000 input_data = 8'b00000000;
            #200000 sendMessage_button = 1; // 1microsecond
            #210000 sendMessage_button = 0;
            
            #500000; // 500 microsecond
            
            $finish;
    end

endmodule
