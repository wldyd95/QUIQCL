`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/17 17:04:43
// Design Name: 
// Module Name: PID_Control
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


module PID_Control(
    input clock, 
    input start_trigger,
    input reset_trigger,
    input signed [15:0] gain_P,
    input signed [15:0] gain_I,
    input signed [15:0] setPoint,
    input signed [15:0] data,
    output reg busy,
    output wire signed [15:0] PID_output
    );
    
    reg [2:0] state;
    wire signed [16:0] gain_P_sign;
    wire signed [16:0] gain_I_sign;
    assign gain_P_sign[16:0] = {1'b0,gain_P[15:0]};
    assign gain_I_sign[16:0] = {1'b0,gain_I[15:0]};    
    
    reg [15:0] limit_max;
    reg signed [47:0] integrate;               
    reg signed [47:0] difference;
    reg signed [47:0] PID_output_buf;
//    assign PID_output[15:0] = {PID_output_buf[31],PID_output_buf[14:0]};
    assign PID_output[15:0] = {PID_output_buf[47],PID_output_buf[28:14]};

    parameter STANDBY=0,
               CAL=1,
               RST=2,
               END_OF_CYCLE=3;
    
    initial begin
        state <= STANDBY;
        busy <= 1'b0;                           
        integrate <= 'd0;
        difference <= 'd0;
        PID_output_buf <= 'd0;
        limit_max <= 'h1CB; // 70mV임. 이것을 넘으면 80mV로 고정해서 PID 계산
    end
        
    always@ (posedge clock) begin
        case(state) 
            STANDBY: begin
                if (start_trigger == 1'b1) begin
                    state <= CAL;
                    busy <= 1'b1;
                end
                
                if (reset_trigger == 1'b1) begin
                    state <= RST;                    
                end
                else begin
                    busy <= 1'b0;
                end
            end
            
            CAL: begin
                state <= END_OF_CYCLE;
//                if(data>limit_max) begin
//                    PID_output_buf <= ((difference * gain_P_sign)>>>14) + integrate;
//                    integrate <= ((difference * gain_I_sign)>>>14) + integrate;
//                    difference <= ((setPoint-limit_max)<<<14);                
//                end
//                else begin
                PID_output_buf <= ((difference * gain_P_sign)>>>14) + integrate;
                integrate <= ((difference * gain_I_sign)>>>14) + integrate;
                difference <= ((setPoint-data)<<<14);                
//                end

            end
            
            RST: begin
                state <= END_OF_CYCLE;
                PID_output_buf <= 'd0;
                integrate <= 'd0;
                difference <= 'd0;
            end
            
            END_OF_CYCLE: begin
                state <= STANDBY;
            end
            
            default:
                state <= STANDBY;  
        endcase
    end 
    
endmodule
