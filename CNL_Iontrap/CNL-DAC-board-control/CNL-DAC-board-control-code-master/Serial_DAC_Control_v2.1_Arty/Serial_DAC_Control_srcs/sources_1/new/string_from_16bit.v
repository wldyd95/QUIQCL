`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/02/10 00:03:36
// Design Name: 
// Module Name: string_from_16bit
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


module string_from_16bit(
    input[16-1:0] DataIn,
    output wire[4*8-1:0] StringOut
    );
    
    assign StringOut[4*8-1:3*8] = DataIn[15:12]+97;
    assign StringOut[3*8-1:2*8] = DataIn[11:8]+97;
    assign StringOut[2*8-1:1*8] = DataIn[7:4]+97;
    assign StringOut[1*8-1:0] = DataIn[3:0]+97;
    
endmodule
