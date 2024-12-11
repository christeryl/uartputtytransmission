`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2024 07:55:31 PM
// Design Name: 
// Module Name: Receive
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


module Receive(
    input RX,
    output reg [7:0] parallel_out = 0,
    input clk
    );
    
    // State Machine States
    parameter IDLE = 2'b00,
              BEGIN = 2'b01,
              DATA = 2'b10,
              STOP = 2'b11;

    reg [1:0] state = IDLE;         // Current state
    reg [3:0] bit_index = 0;        // To track the bit being received
    reg [7:0] shift_reg = 0;        // Shift register for parallel conversion
    reg [3:0] sample_count = 0;     // Counts oversample ticks (0 to 1)
    reg reset = 0;
    reg prev_RX; // Register to store previous RX
    reg [3:0] count = 0;
    reg RX_sync1 = 0;
    reg RX_sync2 = 0;
//    wire readSignal = RX_sync1 && !RX_sync2;
    
    //receiveState output pin assignment
    assign receive_state_output = state;
    
    
    Oversample_clk receive_clk(clk, baud_clk_x2, reset);
//    always@ (posedge reset)
//        JAtest <= 1;
    
    always @(negedge clk) begin
        prev_RX <= RX; // Store previous state of RX
    end
    
    always @(negedge clk) begin
        RX_sync1 <= RX;
        RX_sync2 <= RX_sync1;
        if (state == IDLE && RX_sync2 == 1 && RX_sync1 == 0) begin// Falling edge detected
            reset <= 1;
            count <= 0;
        end
        else
            if (count < 10)
                count = count + 1;
            else begin
            reset <= 0;
            end
    end
  
    always @(negedge baud_clk_x2) begin
        case (state)
            IDLE: begin
                bit_index <= 0;         // Reset bit index
                sample_count <= 0;      // Reset sample counter
                state <= BEGIN;
            end
            
            BEGIN: begin
                if (RX == 1'b0) begin // Start bit verified
                    state <= DATA;
                    sample_count <= 1; // Wait for the middle of the start bit
                end else begin
                    state <= IDLE; // Invalid start bit; return to IDLE
                end
            end
                
            DATA: begin
                if (sample_count == 0) begin
                    shift_reg[bit_index] <= RX; // Sample data bit
                    bit_index <= bit_index + 1;

                    if (bit_index == 7) begin
                        state <= STOP; // Move to STOP after last bit
                    end
                    sample_count <= 1; // Reset counter for next bit
                end else begin
                    sample_count <= sample_count - 1;
                end
            end

            STOP: begin
                if (sample_count == 0) begin
                    if (RX == 1'b1) begin // Valid stop bit
                        parallel_out <= shift_reg; // Update parallel output
                    end
                    state <= IDLE; // Transition to IDLE regardless
                end else begin
                    sample_count <= sample_count - 1;
                end
            end
        endcase
    end
endmodule

    