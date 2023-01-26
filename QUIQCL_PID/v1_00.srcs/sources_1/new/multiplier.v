`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/07 16:06:45
// Design Name: 
// Module Name: multiplier
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


module multiplier(
    input [7:0]a,
    input [8:0]b,
    input start,
    input clk,
    output reg[17:0]result,
    output reg multiply_end
    );
    always @ (posedge clk)begin
        if(start) begin
            result<=a*b;
            multiply_end<=1;
        end
        else
            multiply_end<=0;
    end
endmodule
