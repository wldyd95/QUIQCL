//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 2019/07/23 17:24:56
//// Design Name: 
//// Module Name: ADC8698
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


module ADC8698(
    input clock, 
    input start_trigger,
    input [15:0] data, // 16bit command data to ADC
    input sdo,         
    output sclk,
    output reg cs_bar, 
    output reg sdi, 
    output reg busy, 
    output reg [17:0] result
    );
    
    reg [2:0] state; // 3비트로 구성된 두 개의 별도 레지스터를 선언해준 것 
    reg [5:0] write_count;
    reg [5:0] read_count;
    reg [15:0] data_to_ADC;
    
    parameter STANDBY=0,
               WRITE_ADC=1,
               READ_ADC=2,
               READ_ADC_AUX=3,
               END_OF_CYCLE=4;
    
    initial begin
        busy <= 1'b0;
        cs_bar <= 1'b1;
        state <= STANDBY;
        write_count <= 'd0;
        read_count <= 'd0;
        data_to_ADC <= 'd0; 
    end
    
    assign sclk = cs_bar | clock;
    
    always@(posedge clock)
        case(state)
            STANDBY: begin
                if (start_trigger == 1'b1) begin
                    state <= WRITE_ADC;
                    data_to_ADC <= data;
                    busy <= 1'b1;
                    write_count <= 'd1;
                    read_count <= 'd1;
                end
                else begin
                    busy <= 1'b0;
                end
            end
                
            WRITE_ADC: begin
                cs_bar <= 0;
                sdi <= data_to_ADC[15];
                data_to_ADC[15:0] <= {data_to_ADC[14:0], 1'b0};
                if (write_count == 'd16) begin
                    state<=READ_ADC;
                end
                else state <= WRITE_ADC;
                write_count <= write_count + 1;
            end
            
            READ_ADC: begin
            	result[17:0] <= {result[16:0], sdo};    	
                if (read_count == 'd18) state <= END_OF_CYCLE;
                else state <= READ_ADC;
                read_count <= read_count +1;
            end

            
            END_OF_CYCLE: begin
				cs_bar <= 1'b1;
                state <= STANDBY;
            end
            
            default:
                state <= STANDBY;            
        endcase
endmodule            
            

    
        
//    parameter BUFFER_SIZE = 100;             // Buffer 사이즈
//    reg [17:0] FIFO_buffer [0:BUFFER_SIZE-1]; // ADC로부터 받은 input 값을 저장하는 레지스터
//    reg [7:0] locp;                 // FIFO_buffer의 입력 위치
//    reg FIFO_buffer_full;      // FIFO_buffer가 다 채워졌는지 확인
//    reg [17:0] transfer;       // TX1 buffer로 전달할 비트
//    integer iter;
//    initial begin
//            for(iter = 0;iter<BUFFER_SIZE; iter = iter+1) begin
//                FIFO_buffer[iter][17:0] <= 18'b0;
//            end
    
//        locp[7:0] <= 8'b0;               // 버퍼 사이즈가 100이기 때문에 8비트
//        FIFO_buffer_full <= 1'b0;
//        transfer[17:0] <= 18'b0;
//    end
    
//    always@(posedge sclk_ADC)begin // SDO 즉 디지털 변환된 아웃풋 값을 레지스터 값에 입력해주기 위한 블럭 
//            if(sdo_on_ADC)begin // sdo complete 가 내보내지는 18길이의 클럭일 때 
//                if(sdo_cnt<18)begin
//                    sdo_buf[0] <= ck_io_28;//하나씩 받아서 0에다 저장, cl_io_28은 진짜 ADC 보드의 SDO 디지털 값임. FPGA는 ADC를 조종하기 위해 신호를 넣어주기도 하지만(위에 assign 한 3개 핀처럼), SDO 처럼 ADC로부터 받아들이는 신호도 있음 
//                    sdo_buf[17:1] <= sdo_buf[16:0];//한칸씩 옮겨서 완성된 sdo값 만듬
//                    sdo_cnt<=sdo_cnt+1; // 한 비트씩 순차적으로 넣어주기 위해서 카운트 
             
//                end
                
//                else begin
//                    sdo_cnt<=0;
    
//                end
//            end
//            else begin
//                sdo_cnt<=0;
//                FIFO_buffer[locp][17:0] <= sdo_buf[17:0];
                
//                if (FIFO_buffer_full == 1'b1) begin
//                      transfer[17:0] <= FIFO_buffer[locp][17:0];
//                end
                
//                if (locp == BUFFER_SIZE-1) begin
//                      locp[7:0] <= 8'b0;
//                      FIFO_buffer_full <= 1'b1;
//                end
//                else begin
//                    locp[7:0] <= locp[7:0]+1; 
//                end              
//            end
//    end    
//endmodule

