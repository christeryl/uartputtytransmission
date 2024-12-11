`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2024 09:30:54 PM
// Design Name: 
// Module Name: Oversample_clk
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



`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2024 10:57:35 AM
// Design Name: 
// Module Name: clk_gen2
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
 
 
module clk_gen2(
    input clk,
    input rst,
    output reg clk_115200Hz = 1'b0
    );
// generate 115200Hz clk signal
reg [10:0] count = 1'b0; // make sure the count has enough bits to count to 1,024
always @ (posedge clk, posedge rst)    // fclk is 100MHz
if (rst)
    begin
        count <= 0;
        clk_115200Hz <= 0;
    end
else if (count < 434)
    count <= count + 1; // keep incrementing until you hit 434 
else
    begin
        count <= 0;
        clk_115200Hz <= ~clk_115200Hz; // invert the clock every 0.5 second (a cycle is both a toggle on and a toggle off)
    end
 
 
endmodule

module Oversample_clk(
    input clk,
    output reg clk_230400Hz = 1'b1,
    input rst
    );
    parameter IDLE = 1'b0,
              READ = 1'b1;
    reg state = IDLE;
    reg [5:0]count_2;
    // generate 230400Hz clk signal
    reg [8:0] count; // make sure the count has enough bits to count to 217
    always @ (posedge clk, posedge rst)    // fclk is 100MHz
    if (rst)
        begin
            count <= 0;
            count_2 <= 0;
            clk_230400Hz <= 0;
            state <= READ;
        end
    else if (state == READ)
        begin
            if (count_2 >= 39)begin
                state <= IDLE;
                clk_230400Hz <= 1;
            end         
            else if (count < 217)
                count <= count + 1; // keep incrementing until you hit 217
            else
                begin
                    count <= 0;
                    count_2 <= count_2 + 1;
                    clk_230400Hz <= ~clk_230400Hz; // invert the clock every 0.5 second (a cycle is both a toggle on and a toggle off)
                end
        end
    else
        clk_230400Hz <= 1;
    
endmodule