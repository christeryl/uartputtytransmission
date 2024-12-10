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
    wire [7:0] data_in_parallel;
    wire data_serial_in;    // ouput from transmit and input to receive
    reg oversample_clk;
    parameter period1 = 20;
    parameter period2 = 10;
    
    //variables for transmit module
    reg sendMessage_button;
    reg [7:0] input_data;
    reg baud_clk;
    
    Transmit uut2(sendMessage_button, input_data, data_serial_in, baud_clk);
    
    Receive uut3(oversample_clk, data_serial_in, data_in_parallel);
    always #(period2/2) oversample_clk = ~oversample_clk;  // writing our clock cycles like this is easier to read
    always #(period1/2) baud_clk = ~baud_clk;  // writing our clock cycles like this is easier to read
    initial
    begin
            oversample_clk = 0;
            baud_clk = 0;
            sendMessage_button = 0;
            input_data = 8'b01010101;
            
            #1000 sendMessage_button = 1; // 1microsecond
            #2000 sendMessage_button = 0;
            
            #10000 input_data = 8'b10101010;
            #11000 sendMessage_button = 1; // 1microsecond
            #12000 sendMessage_button = 0;
                        
            #14000 input_data = 8'b00000000;
            #15000 sendMessage_button = 1; // 1microsecond
            #16000 sendMessage_button = 0;
            
            #500000; // 500 microsecond
            
            $finish;
    end

endmodule
