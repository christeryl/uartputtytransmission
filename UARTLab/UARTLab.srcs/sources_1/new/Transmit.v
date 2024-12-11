`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2024 10:21:38 PM
// Design Name: 
// Module Name: Transmit
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

    
    module Transmit (
        input sendMessage_button,                // Start transmission signal
        input [7:0] input_data,    // 8-bit parallel input data
        output reg output_data_serial = 1'b1, // Serial output
        input baud_clk             // Baud rate clock
    );
        
        // State machine states
        parameter IDLE = 2'b00,
                  START = 2'b01,
                  DATA = 2'b10,
                  STOP = 2'b11;
    
        reg [1:0] state = IDLE;       // Current state
        reg [2:0] bit_index = 0;      // To track the bit being transmitted
        reg [7:0] shift_reg = 0;      // Shift register for parallel-to-serial conversion
        
        reg button_sync1 = 0;
        reg button_sync2 = 0;
        
        wire sendSignal = button_sync1 && !button_sync2;
         
        always @(posedge baud_clk) begin
            case (state)
                IDLE: begin
                    button_sync1 <= sendMessage_button;
                    button_sync2 <= button_sync1;
                    //output_data_serial <= 1'b1; // Idle line is high
                    //state <= START;
                if (sendSignal) 
                    // Reset the transmitter and prepare for a new transmission
                    state <= START;
    //                    output_data_serial <= 1'b1; // Default to idle line state
                end
    
                START: begin
                    output_data_serial <= 1'b0; // Start bit
                    state <= DATA;
                    
                    bit_index <= 0;
                    shift_reg <= input_data;
                end
    
                DATA: begin
                    output_data_serial <= shift_reg[0]; // Transmit LSB first
                    shift_reg <= shift_reg >> 1;        // Shift data
                    bit_index <= bit_index + 1;
    
                    if (bit_index == 7) begin
                        state <= STOP; // Move to stop bit after last data bit
                    end
                end
    
                STOP: begin
                    output_data_serial <= 1'b1; // Stop bit
                    state <= IDLE; // Return to idle state after stop bit
                end
           endcase
        end
    endmodule
