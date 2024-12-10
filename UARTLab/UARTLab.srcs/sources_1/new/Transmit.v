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
    output reg output_data_serial, // Serial output
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
    reg sig = 0;
    
    always @(posedge sendMessage_button)
        sig <= 1;
 
    always @(posedge baud_clk) begin
        if (sig) begin
            // Reset the transmitter and prepare for a new transmission
            state <= START;
            bit_index <= 0;
            shift_reg <= input_data;
            output_data_serial <= 1'b1; // Default to idle line state
            sig <= 0;
        end else begin
            case (state)
                IDLE: begin
                    output_data_serial <= 1'b1; // Idle line is high
                end
 
                START: begin
                    output_data_serial <= 1'b0; // Start bit
                    state <= DATA;
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
    end
endmodule
