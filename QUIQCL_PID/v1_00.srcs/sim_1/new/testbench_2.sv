`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/24 16:26:22
// Design Name: 
// Module Name: testbench_2
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


module testbench_2();
    reg CLK100MHZ;//make clk
    
    
   
    
    initial begin
        CLK100MHZ = 0;
    end
    always
        #5 CLK100MHZ = ! CLK100MHZ;
        
        
   
    reg start_trigger;
    reg reset_trigger;
    reg signed [15:0] gain_P;
    reg signed [15:0] gain_I;
    reg signed [15:0] setPoint;
    reg signed [15:0] data;
    reg busy;
    wire signed [15:0] PID_output;

        
    reg [2:0] state;
    reg signed [47:0] integrate;               
    reg signed [47:0] difference;
    reg signed [47:0] PID_output_buf;
    reg signed [47:0] Limit_Max;
    reg signed [15:0] result;
    assign PID_output[15:0] = {PID_output_buf[47],PID_output_buf[28:14]};
//    assign PID_output[15:0]={PID_output_buf[47],PID_output_buf[14:0]};    
        
        parameter STANDBY=0,
                   CAL=1,
                   RST=2,
                   END_OF_CYCLE=3;
            
            initial begin
                state <= STANDBY;
                busy <= 1'b0;                           
                Limit_Max <= 32'hccc;
                integrate <= 'd0;
                difference <= 'd0;
                PID_output_buf <= 'd0;
                setPoint<=16'h1999;    // Real value : 1V (1/(5/2^16))
                gain_P <= 16'h3999;    // Real value : 0.9 (0.9*2^14)
                gain_I <= 16'h300;     // Real value : 0.119 (0.0119*2^14)
                start_trigger <= 1'b0; 
                reset_trigger <= 1'b0;    
                busy <= 1'b0;
                data <= 16'h2999; 
            end
                
            always@ (posedge CLK100MHZ) begin
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
                        
//                        PID_output_buf <= ((difference * gain_P)>>>14) + integrate - data;
//                        integrate <= ((difference * gain_I)>>>14) + integrate;
//                        difference <= setPoint-data-PID_output_buf;
                        PID_output_buf <= ((difference * gain_P)>>>14) + integrate - (data<<14);
                        integrate <= ((difference * gain_I)>>>14) + integrate;
                        difference <= ((setPoint-data)<<<14)-PID_output_buf;
                        result=data+PID_output;
//                        if(PID_output > Limit_Max) begin    
//                            PID_output_buf[31:0] <= Limit_Max[31:0];
//                        end          
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
    
    initial begin
        #0 start_trigger <= 1'b1;
//        #1000 inp <= 18'b000000000000000001;
//        #300 inp <= 18'b000000000000000011;
//        #300 inp <= 18'b000000000000000111;
//        #300 inp <= 18'b000000000000001111;
//        #300 inp <= 18'b000000000000011111;
//        #300 inp <= 18'b000000000000111111;
//        #300 inp <= 18'b000000000001111111;
//        #300 inp <= 18'b000000000011111111;
//        #300 inp <= 18'b000000000111111111;
//        #300 inp <= 18'b000000001111111111;
//        #300 inp <= 18'b000000000000000111;
        # 100000 start_trigger <= 1'b0;

      

    end


endmodule
