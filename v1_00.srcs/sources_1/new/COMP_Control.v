`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/17 17:04:43
// Design Name: 
// Module Name: COMP_Control
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


module COMP_Control(
    input clock, 
    input start_trigger,
    input reset_act,
    input reset_data,
    input signed [15:0] K0,
    input signed [15:0] K1,
    input signed [15:0] K2,
    input signed [17:0] setPoint,
    input signed [17:0] data,
    output reg busy,
    output wire signed [15:0] COMP_output
    );
    
    reg [2:0] state;
    wire signed [16:0] K0_sign;
    wire signed [16:0] K1_sign;
    wire signed [16:0] K2_sign;
    assign K0_sign[16:0] = {1'b0,K0[15:0]};
    assign K1_sign[16:0] = {1'b0,K1[15:0]};    
    assign K2_sign[16:0] = {1'b0,K2[15:0]};
    
    reg [15:0] limit_max;
    reg signed [47:0] integrate;               
    reg signed [20:0] difference;
    reg signed [20:0] difference_buf;
    reg signed [20:0] difference_buf2;
    reg signed [47:0] COMP_output_buf;

    assign COMP_output[15:0] = {COMP_output_buf[47],COMP_output_buf[29:15]};

    parameter STANDBY=0,
               CAL1=1,
               CAL2=2,
               RST=3,
               END_OF_CYCLE=4;
    
    initial begin
        state <= STANDBY;
        busy <= 1'b0;                           
        integrate <= 'd0;
        difference <= 'd0;
        difference_buf<='d0;
        difference_buf2<='d0;
        COMP_output_buf <= 'd0;
        limit_max <= 'h1CB; // 70mV임. 이것을 넘으면 80mV로 고정해서 COMP 계산
    end
        
    always@ (posedge clock) begin
        if(reset_act==1'b1)begin
            if(reset_data==1'b1)begin
                difference<=0;
                difference_buf<=0;
                difference_buf2<=0;
                COMP_output_buf<=0;
            end
            else begin
                difference<=0;
                COMP_output_buf<=COMP_output_buf;
            end
            busy <= 1'b0;
        end
        else begin
            case(state) 
                STANDBY: begin
                    if (start_trigger == 1'b1) begin
                        state <= CAL1;
                        busy <= 1'b1;
                    end
                    else begin
                        busy <= 1'b0;
                    end
                end
            
                CAL1: begin
                    state <= CAL2;
                    difference <= setPoint-data;
                    difference_buf <=difference;
                    difference_buf2 <= difference_buf;
                end
                CAL2: begin
                    state <= END_OF_CYCLE;
                    COMP_output_buf <= COMP_output_buf + difference * K0_sign- difference_buf * K1_sign+ difference_buf2 * K2_sign;
                end
            
                END_OF_CYCLE: begin
                    state <= STANDBY;
                end
            
                default:
                    state <= STANDBY;  
            endcase
        end 
    end
endmodule
