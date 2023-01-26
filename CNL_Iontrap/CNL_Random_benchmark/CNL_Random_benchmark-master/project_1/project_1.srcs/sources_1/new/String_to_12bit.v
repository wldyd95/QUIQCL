`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/06 18:49:45
// Design Name: 
// Module Name: String_to_12bit
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


module String_to_12bit(
    input[4:0] phase_selector,
    input[12*8-1:0] StringIn,
    output wire[12-1:0] phase1,
    output wire[12-1:0] phase2,
    output wire[12-1:0] phase3,
    output wire[12-1:0] phase4
    );
    
    // Convert "0" to 0, "1" to 1
    // select which phase to change by phase selector
    reg[11:0] p_selector;
    
    
    
    
    
    end
    
    
    
    assign phase1[11] = StringIn[12*8-1:11*8] - 48;
    assign phase1[10] = StringIn[11*8-1:10*8] - 48;
    assign phase1[9] = StringIn[10*8-1:9*8] - 48;
    assign phase1[8] = StringIn[9*8-1:8*8] - 48;
    assign phase1[7] = StringIn[8*8-1:7*8] - 48;
    assign phase1[6] = StringIn[7*8-1:6*8] - 48;
    assign phase1[5] = StringIn[6*8-1:5*8] - 48;
    assign phase1[4] = StringIn[5*8-1:4*8] - 48;
    assign phase1[3] = StringIn[4*8-1:3*8] - 48;
    assign phase1[2] = StringIn[3*8-1:2*8] - 48;
    assign phase1[1] = StringIn[2*8-1:1*8] - 48;
    assign phase1[0] = StringIn[1*8-1:0*8] - 48;
    
endmodule
