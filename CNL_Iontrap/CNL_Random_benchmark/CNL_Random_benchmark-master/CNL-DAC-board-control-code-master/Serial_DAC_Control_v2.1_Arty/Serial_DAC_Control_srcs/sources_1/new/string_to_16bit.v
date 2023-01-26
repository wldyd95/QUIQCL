`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/02/10 00:03:36
// Design Name: 
// Module Name: string_to_16bit
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


module string_to_16bit(
    input[4*8-1:0] StringIn,
    output wire[16-1:0] DataOut
    );
    
    assign DataOut[15:12] = StringIn[4*8-1:3*8]-97;
    assign DataOut[11:8] = StringIn[3*8-1:2*8]-97;
    assign DataOut[7:4] = StringIn[2*8-1:1*8]-97;
    assign DataOut[3:0] = StringIn[1*8-1:0]-97;   
    
endmodule