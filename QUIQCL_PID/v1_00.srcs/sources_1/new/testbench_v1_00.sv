`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2017/11/23 20:28:05
// Design Name: 
// Module Name: main
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
//  The FILE_TYPE of this file is set to SystemVerilog to utilize SystemVerilog features.
//  Generally to apply SystemVerilog syntax, the file extension should be ".sv" rather than ".v"
//  If you want to choose between verilog2001 and SystemVerilog without changing the file extension, 
//  right-click on the file name in "Design Sources", choose "Source Node Properties...", and 
//  change FILE_TYPE in Properties tab.
//////////////////////////////////////////////////////////////////////////////////
function integer bits_to_represent; //https://www.beyond-circuits.com/wordpress/2008/11/constant-functions/
    input integer value;
    begin
        for (bits_to_represent=0; value>0; bits_to_represent=bits_to_represent+1)
            value = value>>1;
    end
endfunction
module testbench();

    reg CLK100MHZ;//make clk
    
    initial begin
        CLK100MHZ = 0;
    end

    always
        #5 CLK100MHZ = ! CLK100MHZ;

    
     /////////////////////////////////////////////////////////////////
           // Global setting
           /////////////////////////////////////////////////////////////////
           parameter BTF_MAX_BYTES = 9'h100;
           parameter BTF_MAX_BUFFER_WIDTH = 8 * BTF_MAX_BYTES;
           parameter BTF_MAX_BUFFER_COUNT_WIDTH = bits_to_represent(BTF_MAX_BYTES);
       
           // Settings related to capture waveform data
           //parameter WAVEFORM_WIDTH = 16;
           //parameter WAVEFORM_MAX_DEPTH = 1024-1; // So that the triggered bit will still remain in the fifo
           //parameter WAVEFORM_COUNTER_WIDTH = bits_to_represent(WAVEFORM_MAX_DEPTH);
       
           /////////////////////////////////////////////////////////////////
           // To receive data from PC
           /////////////////////////////////////////////////////////////////
           parameter BTF_RX_BUFFER_BYTES = BTF_MAX_BYTES;
           parameter BTF_RX_BUFFER_WIDTH = BTF_MAX_BUFFER_WIDTH;
           parameter BTF_RX_BUFFER_COUNT_WIDTH = BTF_MAX_BUFFER_COUNT_WIDTH;
           parameter CMD_RX_BUFFER_BYTES = 4'hf;
           parameter CMD_RX_BUFFER_WIDTH = 8 * CMD_RX_BUFFER_BYTES;
       
           wire [BTF_RX_BUFFER_WIDTH:1] BTF_Buffer;
           wire [BTF_RX_BUFFER_COUNT_WIDTH-1:0] BTF_Length;
           
           wire [CMD_RX_BUFFER_WIDTH:1] CMD_Buffer;
           wire [3:0] CMD_Length;    
           wire CMD_Ready;
           
           wire esc_char_detected;
           wire [7:0] esc_char;
       
           wire wrong_format;
               
           // Settings related to capture waveform data
           //wire [WAVEFORM_WIDTH-1:0] trigger_mask, trigger_pattern;
           //wire [WAVEFORM_COUNTER_WIDTH-1:0] points_to_capture_after_trigger;
           
           data_receiver receiver(
//           .RxD(Uart_RXD),
           .clk(CLK100MHZ), 
               .BTF_Buffer(BTF_Buffer), .BTF_Length(BTF_Length), 
               .CMD_Buffer(CMD_Buffer), .CMD_Length(CMD_Length), .CMD_Ready(CMD_Ready), 
               .esc_char_detected(esc_char_detected), .esc_char(esc_char),
               // Settings related to capture waveform data
               //.trigger_mask(trigger_mask), .trigger_pattern(trigger_pattern), .points_to_capture_after_trigger(points_to_capture_after_trigger),
                .wrong_format(wrong_format)
           );
           defparam receiver.BTF_RX_BUFFER_COUNT_WIDTH = BTF_RX_BUFFER_COUNT_WIDTH;
           defparam receiver.BTF_RX_BUFFER_BYTES = BTF_RX_BUFFER_BYTES; // can be between 1 and 2^BTF_RX_BUFFER_COUNT_WIDTH - 1
           defparam receiver.BTF_RX_BUFFER_WIDTH = BTF_RX_BUFFER_WIDTH;
           //defparam receiver.ClkFreq = ClkFreq;
           //defparam receiver.BaudRate = BaudRate;
           defparam receiver.CMD_RX_BUFFER_BYTES = CMD_RX_BUFFER_BYTES;
           defparam receiver.CMD_RX_BUFFER_WIDTH = CMD_RX_BUFFER_WIDTH;
           // Settings related to capture waveform data
           //defparam receiver.WAVEFORM_WIDTH = WAVEFORM_WIDTH;
           //defparam receiver.WAVEFORM_MAX_DEPTH = WAVEFORM_MAX_DEPTH;
           //defparam receiver.WAVEFORM_COUNTER_WIDTH = WAVEFORM_COUNTER_WIDTH;
       
           /////////////////////////////////////////////////////////////////
           // To send data to PC
           /////////////////////////////////////////////////////////////////
       
           parameter TX_BUFFER1_BYTES =  4'hf;
           parameter TX_BUFFER1_WIDTH = 8 * TX_BUFFER1_BYTES;
           parameter TX_BUFFER1_LENGTH_WIDTH = bits_to_represent(TX_BUFFER1_BYTES);
       
           parameter TX_BUFFER2_BYTES = BTF_MAX_BYTES;
           parameter TX_BUFFER2_WIDTH = BTF_MAX_BUFFER_WIDTH;
           parameter TX_BUFFER2_LENGTH_WIDTH = BTF_MAX_BUFFER_COUNT_WIDTH;
       
           // Settings related to capture waveform data
           //parameter TX_WAVEFORM_BUFFER_BYTES =  8'h80;
           //parameter TX_WAVEFORM_BTF_HEADER = "#280";
           //parameter TX_WAVEFORM_BUFFER_WIDTH = 8 * TX_WAVEFORM_BUFFER_BYTES;
       
           reg [TX_BUFFER1_LENGTH_WIDTH-1:0] TX_buffer1_length;
           reg [1:TX_BUFFER1_WIDTH] TX_buffer1;
           reg TX_buffer1_ready;
       
           reg [TX_BUFFER2_LENGTH_WIDTH-1:0] TX_buffer2_length;
           reg [1:TX_BUFFER2_WIDTH] TX_buffer2;
           reg TX_buffer2_ready;    
       
           // Settings related to capture waveform data
           //wire [1:TX_WAVEFORM_BUFFER_WIDTH] TX_waveform_buffer;
           //wire TX_waveform_buffer_ready;
           //wire cwd_armed, cwd_triggered;
           
           wire TX_FIFO_ready;
           
           wire [1:32] monitoring_32bits;
       
           data_sender sender(
           .FSMState(),
           .clk(CLK100MHZ),
//           .TxD(Uart_TXD),
           .esc_char_detected(esc_char_detected),
           .esc_char(esc_char),
           .wrong_format(wrong_format),
           .TX_buffer1_length(TX_buffer1_length),
           .TX_buffer1(TX_buffer1),
           .TX_buffer1_ready(TX_buffer1_ready),
           .TX_buffer2_length(TX_buffer2_length),
           .TX_buffer2(TX_buffer2),
           .TX_buffer2_ready(TX_buffer2_ready),
           // Settings related to capture waveform data
           //.TX_waveform_buffer(TX_waveform_buffer),
           //.TX_waveform_buffer_ready(TX_waveform_buffer_ready),
           //.capture_waveform_data_implemented(1'b1), // 1'b1 if capture_waveform_data is available
           //.armed(cwd_armed),
           //.triggered(cwd_triggered),
           .TX_FIFO_ready(TX_FIFO_ready),
           .bits_to_send(monitoring_32bits)
       );
       
           //defparam sender.ClkFreq = ClkFreq;
           //defparam sender.BaudRate = BaudRate;
           defparam sender.TX_BUFFER1_LENGTH_WIDTH = TX_BUFFER1_LENGTH_WIDTH;
           defparam sender.TX_BUFFER1_BYTES =  TX_BUFFER1_BYTES;
           defparam sender.TX_BUFFER1_WIDTH = TX_BUFFER1_WIDTH;
           defparam sender.TX_BUFFER2_LENGTH_WIDTH = TX_BUFFER2_LENGTH_WIDTH;
           defparam sender.TX_BUFFER2_BYTES = TX_BUFFER2_BYTES;
           defparam sender.TX_BUFFER2_WIDTH = TX_BUFFER2_WIDTH;
           // Settings related to capture waveform data
           //defparam sender.TX_WAVEFORM_BUFFER_BYTES =  TX_WAVEFORM_BUFFER_BYTES;
           //defparam sender.TX_WAVEFORM_BTF_HEADER = TX_WAVEFORM_BTF_HEADER;
           //defparam sender.TX_WAVEFORM_BUFFER_WIDTH = TX_WAVEFORM_BUFFER_WIDTH;
       
           /////////////////////////////////////////////////////////////////
           // Capture waveform data
           /////////////////////////////////////////////////////////////////
           // Settings related to capture waveform data
           reg waveform_capture_start_trigger;
       /*
           wire [WAVEFORM_WIDTH-1:0] waveform_data;
       
           capture_waveform_data cwd(
               .CLK100MHZ(CLK100MHZ),
               .waveform(waveform_data),
               .armed(cwd_armed),
               .triggered(cwd_triggered),
               .arm_signal(waveform_capture_start_trigger),
               .trigger_mask(trigger_mask),
               .trigger_pattern(trigger_pattern),
               .points_to_capture_after_trigger(points_to_capture_after_trigger),
               .TX_FIFO_ready(TX_FIFO_ready),
               .TX_BUFFER(TX_waveform_buffer),
               .TX_waveform_buffer_ready(TX_waveform_buffer_ready),
               .esc_char_detected(esc_char_detected),
               .esc_char(esc_char)
           );
           defparam cwd.TX_WAVEFORM_BUFFER_BYTES =  TX_WAVEFORM_BUFFER_BYTES;
           defparam cwd.TX_WAVEFORM_BUFFER_WIDTH = TX_WAVEFORM_BUFFER_WIDTH;
           defparam cwd.WAVEFORM_WIDTH = WAVEFORM_WIDTH;
           defparam cwd.WAVEFORM_MAX_DEPTH = WAVEFORM_MAX_DEPTH;
           defparam cwd.WAVEFORM_COUNTER_WIDTH = WAVEFORM_COUNTER_WIDTH;
       */
       
       
       
           /////////////////////////////////////////////////////////////////
           // LED0 & LED1 intensity adjustment
           /////////////////////////////////////////////////////////////////
       
           reg [7:0] LED_intensity;
           wire red0, green0, blue0, red1, green1, blue1;
           initial begin
               LED_intensity <= 0;
           end
           
//           led_intensity_adjust led_intensity_modulator(.led0_r(led0_r), .led0_g(led0_g), .led0_b(led0_b), .led1_r(led1_r), 
//               .led1_g(led1_g), .led1_b(led1_b), .red0(red0), .green0(green0), .blue0(blue0), .red1(red1), .green1(green1), .blue1(blue1),
//               .intensity(LED_intensity), .CLK100MHZ(CLK100MHZ) );
       
           //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
           // Command definitions
           //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
       
       
       
       
           /////////////////////////////////////////////////////////////////
           // Command definition for *IDN? command
           /////////////////////////////////////////////////////////////////
           parameter CMD_IDN = "*IDN?";
           parameter IDN_REPLY = "DAC v1_00"; // 9 characters
       
           
           /////////////////////////////////////////////////////////////////
           // Command definition for Test command
           /////////////////////////////////////////////////////////////////
           parameter CMD_TEST = {8'h10, "TEST", 8'h10};
       
           /////////////////////////////////////////////////////////////////
           // Command definition for DAC
           /////////////////////////////////////////////////////////////////
           parameter CMD_WRITE_REG = "WRITE REG"; // 9 characters
           parameter DAC_DATA_WIDTH = 24; // dac의 데이터 길이인 것 같다. 
           
       
           reg [7:0] DAC_start; // 일단 dac를 시작한다는 8비트짜리 레지스터를 0으로 초기화
           initial DAC_start[7:0] <= 8'd0;
       
           reg [DAC_DATA_WIDTH+8:1] DAC_buffer; // dac 버퍼를 32비트 짜리 레지스터 할당  
           
           wire [7:0] DAC_update; // 8비트짜리 dac 업데이트 핀 선언 
           assign DAC_update[7:0] = BTF_Buffer[DAC_DATA_WIDTH+8:DAC_DATA_WIDTH+1]; // 버퍼의 가장 왼쪽 8개는 업데이트 할당
           wire [DAC_DATA_WIDTH:1] DAC_data; // 24비트짜리 dac 데이터 핀 선언
           assign DAC_data = DAC_buffer[DAC_DATA_WIDTH:1]; // 버퍼의 가장 오른쪽 24개의 레지스터 부분은 dac 데이터로 할당
           
           reg [1:0] slow_clock; // dac 클락 중 25<Hz, 50MHz 중 하나 선택할 수 있도록 하는 레지스터
           initial slow_clock <= 'd0;
           always @ (posedge CLK100MHZ) slow_clock <= slow_clock + 'd1;
           wire DAC_clock; // dac 클락 선언 
           assign DAC_clock = slow_clock[0]; // slow_clock[1]: 25MHz, slow_clock[0]: 50MHz
       
           wire [7:0] DAC_busy, DAC_sclk, DAC_cs_bar, DAC_sdi; //이건 dac 데이터시트에 나온 것과 같음
       
           genvar i;
           generate
               for (i=0; i<8; i=i+1) begin
                   DAC8734 dac(.clock(DAC_clock), .start_trigger(DAC_start[i]),     .data(DAC_data),
                       .sclk(DAC_sclk[i]), .cs_bar(DAC_cs_bar[i]), .sdi(DAC_sdi[i]), .busy(DAC_busy[i]) );
               end
           endgenerate
       
           reg ldac_bar; // Minimum 15ns for 3.6V < DV_DD ≤ 5.5V, 2.7V ≤ IOV_DD ≤ DV_DD
           initial ldac_bar = 1'b1;
           
//           assign {ck_io_39, ck_io_38, ck_io_37} = {DAC_cs_bar[0], DAC_sclk[0], DAC_sdi[0]}; // DAC_sdi도 결국 8비트짜리 핀이다. 
//           assign {ck_io_36, ck_io_35, ck_io_34} = {DAC_cs_bar[1], DAC_sclk[1], DAC_sdi[1]};
//       //    assign ck_io[13:11] = {DAC_cs_bar[2], DAC_sclk[2], DAC_sdi[2]};
//       //    assign ck_io[10: 8] = {DAC_cs_bar[3], DAC_sclk[3], DAC_sdi[3]};
       
//           assign ck_io_6 = ldac_bar;
//       //    assign ck_io[ 5: 3] = {DAC_cs_bar[4], DAC_sclk[4], DAC_sdi[4]};
//       //    assign ck_io[ 2: 0] = {DAC_cs_bar[5], DAC_sclk[5], DAC_sdi[5]};
//       //    assign ck_io[31:29] = {DAC_cs_bar[6], DAC_sclk[6], DAC_sdi[6]};
//       //    assign ck_io[28:26] = {DAC_cs_bar[7], DAC_sclk[7], DAC_sdi[7]};
       
           parameter CMD_LDAC = "LDAC"; // 4 characters
           parameter CMD_UPDATE_LDAC_LENGTH = "LDAC LENGTH"; // 1 characters
       
           reg [7:0] ldac_length;
           initial ldac_length <= 40;
           reg [7:0] ldac_pause_count; // (LDAC_length+2)*10ns. LDAC signal is distributed to 8 chips, so for the output to swing down enough, pulse should be longer than 200ns when 2 chips were populated
           
           
            //////////////////////////////////////////////////////////////////////////////////////
             //////adc2dac part
             //////////////////////////////////////////////////////////////////////////////////////////
           parameter CMD_ADC_DAC = "ADC2DAC WRITE";//adc값을 dac로 보내주는 명령어
           parameter ADC_DATA_WIDTH = 16;             //16bit짜리 명령어
              
           reg [8:0] ref_const=375;                     //adc에서 dac로 변환시 곱해줘야하는 상수값
           reg [17:0] sdo_buf;                         //완성된 sdo값이 있는 곳. 이중 가장 앞 비트인 sdo_buf[17] 는 sign bit 임 
           reg [15:0] multiply_result_first;           //sdo를 dac값으로 바꿀때 앞에부분
           reg [15:0] multiply_result_second;          //sdo를 dac값으로 바꿀때 뒷부분
           reg [15:0] multiply_result;                 //최종 값
           wire [6:0] front_sdo;                       //sdo를 앞과 뒤로 나눠서 계산
           wire [10:0] end_sdo;
           wire [7:0] ADC_DAC_update;                   //원래 dac코드의 update부분
           wire [7:0] ADC_DAC_ch_buffer;               //원래 dac의 ch설정해주는 부분
           
           assign front_sdo[6:0]={1'b0,sdo_buf[16:11]};//sdo앞에부분 7개, 정확히는 높은 자리수, sign bit는 제외, adc에서 dac로 바꿔주는 부분 
           assign end_sdo[10:0]=sdo_buf[10:0];// sdo 뒤에 부분 11개. 정확히는 낮은 자리수 
           assign multiply_result_first=ref_const*front_sdo; // 2의 9승 곱하기 2의 7승임. 최대 2의 16승 결과가 나올 것 
           assign multiply_result_second=(ref_const*end_sdo)>>11; // 2의 9승 곱하기 2의 11승하면 곱한 값의 최대값은 2의 20승이다. 오른쪽으로 11칸 이동
           assign multiply_result=multiply_result_first+multiply_result_second;
           assign ADC_DAC_update[7:0]=BTF_Buffer[ADC_DATA_WIDTH+24:ADC_DATA_WIDTH+17];
           assign ADC_DAC_ch_buffer[7:0]=BTF_Buffer[ADC_DATA_WIDTH+16:ADC_DATA_WIDTH+9];   
          
           ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
           ///adc part
           ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
           parameter CMD_WRITE_ADC = "WRITE ADC"; // 9 characters 
           parameter CMD_START_ADC = "START ADC";//adc시작하는 명령어
           parameter CMD_EXIT_ADC= "EXIT ADC"; // adc종료 명령어
           parameter CMD_MAN_ADC="MAN ADC"; // adc값 읽는 명령어, 값을 읽는게 ver4에서 추가가 안되어 있으므로 추가적인 수정 필요 
              
          
           reg [ADC_DATA_WIDTH:1] ADC_buffer; // adc 버퍼를 16비트 짜리 레지스터 할당  
           reg adc_on;                        //adc가 동작할때 켜짐, 이게 켜지면 기존 명령어 사용 불가
          
           reg [7:0] ADC_update; // 8비트짜리 adc 업데이트 핀 선언, adc ch설정해주는 부분으로 변경해줘야 할듯 
           wire [ADC_DATA_WIDTH:1] ADC_data; // sdi로 나갈 data를 저장, ADC 함수의 인풋값임. 총 16비트. 
           assign ADC_data = ADC_buffer[ADC_DATA_WIDTH:1]; // 버퍼의 가장 오른쪽 24개의 레지스터 부분은 dac 데이터로 할당
          
             
           reg [3:0] sclk_ADC_cnt; // clock count, 일부러 4비트로 한 것. 16까지 실 필요가 있어서. 
           reg sclk_ADC;//slow clock for adc
           reg [4:0] sdo_cnt;
           wire sdo_complete, sdo_on_ADC, cs_bar_ADC, sdi_ADC;       
       
           parameter BUFFER_SIZE = 100;             // Buffer 사이즈
           reg [17:0] FIFO_buffer [0:BUFFER_SIZE-1]; // ADC로부터 받은 input 값을 저장하는 레지스터
           reg [7:0] locp;                 // FIFO_buffer의 입력 위치
           reg FIFO_buffer_full;      // FIFO_buffer가 다 채워졌는지 확인
           reg [17:0] transfer;       // TX1 buffer로 전달할 비트
           
           reg ck_io_28;
           integer iter;
           
           initial begin
               sclk_ADC_cnt <= 'd0;
               sclk_ADC <= 'd0;
               sdo_cnt <= 'd0;    
               ck_io_28 <= 'd0;    
               for(iter = 0;iter<BUFFER_SIZE; iter = iter+1) begin
                   FIFO_buffer[iter][17:0] <= 18'b0;
               end
               
               locp[7:0] <= 8'b0;               // 버퍼 사이즈가 100이기 때문에 8비트
               FIFO_buffer_full <= 1'b0;
               transfer[17:0] <= 18'b0;
           
           end
           //////////////////////make slow clock for adc, 10MHZ
           always @ (posedge CLK100MHZ) begin // adc 클럭을 10MHZ 로 정함. 
               if(sclk_ADC_cnt=='d5) begin
                   sclk_ADC_cnt<='d0;
                   sclk_ADC<=sclk_ADC+'d1;
               end
               else
                   sclk_ADC_cnt<=sclk_ADC_cnt+'d1; // sclk_ADC 에  clock 을 넣어주지 않고 이렇게 카운팅만 해주면서 1클락을 소비하니 그 클락은 0 인 것. 이런식으로 9개 클럭 꺼서 100MHz를 1/10 해줌 
               end
       
       
  //         ADC8698 adc(.clk(sclk_ADC),.data(ADC_data),.ADC_update(ADC_update),.sdi(sdi_ADC),.cs_bar(cs_bar_ADC),.sdo_complete(sdo_complete),.sdo_on_ADC(sdo_on_ADC));//function adc    
  //         assign {ck_io_27, ck_io_26, ck_io_29} = {cs_bar_ADC, sclk_ADC, sdi_ADC};   //fpga port에 보내는 핀 연결 
          
           ///////////////////////////make sdo,이부분도 adc모듈안에 넣을수 있을듯
           always@(posedge sclk_ADC)begin // SDO 즉 디지털 변환된 아웃풋 값을 레지스터 값에 입력해주기 위한 블럭 
               if(sdo_on_ADC)begin // sdo complete 가 내보내지는 18길이의 클럭일 때 
                   if(sdo_cnt<18)begin
                       sdo_buf[0] <= ck_io_28;//하나씩 받아서 0에다 저장, cl_io_28은 진짜 ADC 보드의 SDO 디지털 값임. FPGA는 ADC를 조종하기 위해 신호를 넣어주기도 하지만(위에 assign 한 3개 핀처럼), SDO 처럼 ADC로부터 받아들이는 신호도 있음 
                       sdo_buf[17:1] <= sdo_buf[16:0];//한칸씩 옮겨서 완성된 sdo값 만듬
                       sdo_cnt<=sdo_cnt+1; // 한 비트씩 순차적으로 넣어주기 위해서 카운트 
                       
                       FIFO_buffer[locp][17:0] <= sdo_buf[17:0];
                       locp[7:0] <= locp[7:0]+1;
                       
                       if (FIFO_buffer_full == 1) 
                             transfer[17:0] <= FIFO_buffer[locp-1][17:0];
                       
                       if (locp == BUFFER_SIZE) begin
                             locp[7:0] <= 8'b0;
                             FIFO_buffer_full <= 1'b1;
                       end
                   end
                   else begin
                       sdo_cnt<=0;
                   end
               end
               else begin
                   sdo_cnt<=0;
               end
           end
       
           
             
           ///////////////////////////////////////////////////////////////////////////////////////
           ///////PID noise part
           /////////////////////////////////////////////////////////////////////////////////////
           parameter CMD_NOISE_ADC = "WRITE NOISE";
                 
           parameter noise_1= 16'b010001000100;//0.5v
           parameter noise_2= 16'b001101101001;//0.4v
           parameter noise_3= 16'b000110110101;//0.2v
           parameter noise_4= 16'b010111111001;//0.8v
           parameter noise_5= 16'b100010001000;//1v
           reg [8:0]noise_cnt;
           reg [15:0]noise;
           reg noise_start;
           initial noise_cnt=0;
           always@(posedge sclk_ADC)begin       //노이즈는 100클락이 지나는 동안 주기적으로 값을 바꿔줌
               if(noise_start)begin
                   noise_cnt<=noise_cnt+1;
                   if(noise_cnt<100)
                       noise<=noise_1;
                   else if(noise_cnt<200)
                       noise<=noise_2;
                   else if(noise_cnt<300)
                       noise<=noise_3;
                   else if(noise_cnt<400)
                       noise<=noise_4;
                   else if(noise_cnt<500)
                       noise<=noise_5;    
                   end
               else
                   noise<=0;
               end
                   
                   
                   
           //////////////////////////////////////
           /////pid part
           ///////////////////////////////////////
            
           parameter CMD_ADC_DAC_PID="PID CONTROL";//pid사용한 다는 명령어
           parameter CMD_ADJUST_GAINP="GAIN P";     //gain값 조정시 사용하는 명령어
           parameter CMD_ADJUST_GAINI="GAIN I";
           parameter CMD_ADJUST_SET_POINT="SET POINT"; // set point 값 조정시 사용하는 명령어
           reg [5:0] pid_cnt;
           reg pid_start;
           reg signed [20:0] Integrate;               //각가의 bit를 모두 맞춰줘야함 안그러면 빼기시 문제 생김
           reg signed [20:0] difference;
           reg signed [15:0] GAIN_I;
           reg signed [15:0] GAIN_P;
           reg signed [20:0] pid_output;
           reg signed [15:0] SetPoint;
           reg signed [16:1] Limit_Max;
           
           initial begin                           //기본 값 정해줌
               SetPoint<=16'b0000100010001000;//기본값 1V
               pid_cnt<=0;
               pid_start<=0;
               Integrate<=0;
               GAIN_I<=16'b00000000000011010;
               GAIN_P <= 16'b0000011110101110;//0.9
               pid_output<=0;        
           end
           ///////////////////////////////////////
           ///////
           ////////////////////////////////////
           reg [22:0] adc_avg_buf;                //평균값 만들기 위해 둠
           reg [2:0] adc_avg_cnt;                 // 숫자를 세면서 값을 더하고 더한 숫자만큼 나눠주면 됨
           initial adc_avg_cnt<=0;                
            
           /////////////////////////////////////////////////////////////////
           // Command definition for LED0 & LED1 intensity adjustment
           /////////////////////////////////////////////////////////////////
           parameter CMD_ADJUST_INTENSITY = "ADJ INTENSITY"; // 13 characters
           parameter CMD_READ_INTENSITY = "READ INTENSITY"; // 14 characters
       
       
       
       
           /////////////////////////////////////////////////////////////////
           // Command definition to investigate the contents in the BTF buffer
           /////////////////////////////////////////////////////////////////
           // Capturing the snapshot of BTF buffer
           parameter CMD_CAPTURE_BTF_BUFFER = "CAPTURE BTF"; // 11 characters
           reg [BTF_RX_BUFFER_WIDTH:1] BTF_capture;
           // Setting the number of bytes to read from the captured BTF buffer
           parameter CMD_SET_BTF_BUFFER_READING_COUNT = "BTF READ COUNT"; // 14 characters
           reg [BTF_RX_BUFFER_COUNT_WIDTH-1:0] BTF_read_count;
           // Read from the captured BTF buffer
           parameter CMD_READ_BTF_BUFFER = "READ BTF"; // 8 characters
       
       
       /*
           // Settings related to capture waveform data
           /////////////////////////////////////////////////////////////////
           // Command definition to capture waveform data
           /////////////////////////////////////////////////////////////////
           parameter CMD_CAPTURE_WAVEFORM = "WAVEFORM"; // 8 characters
       
           reg [15:0] temp_counter_16bits;
           
           always @ (posedge CLK100MHZ) begin
               temp_counter_16bits <= temp_counter_16bits + patterns[1:2] + 'd1;
           end
       */
       
           /////////////////////////////////////////////////////////////////
           // Command definition for bit patterns manipulation
           /////////////////////////////////////////////////////////////////
           // This command uses the first PATTERN_WIDTH bits as mask bits to update and update those bits with the following PATTERN_WIDTH bits
           parameter CMD_UPDATE_BIT_PATTERNS = "UPDATE BITS"; // 11 characters
           parameter PATTERN_BYTES = 4;
           parameter PATTERN_WIDTH = PATTERN_BYTES * 8; 
           reg [1:PATTERN_WIDTH] patterns;
           wire [1:PATTERN_WIDTH] pattern_masks;
           wire [1:PATTERN_WIDTH] pattern_data;
           
           assign pattern_masks = BTF_Buffer[2*PATTERN_WIDTH:PATTERN_WIDTH+1];
           assign pattern_data = BTF_Buffer[PATTERN_WIDTH:1];
           
           // This command reads the 32-bit patterns
           parameter CMD_READ_BIT_PATTERNS = "READ BITS"; // 9 characters
       
       
       
       
           /////////////////////////////////////////////////////////////////
           // Main FSM
           /////////////////////////////////////////////////////////////////
           reg [3:0] main_state;
           // State definition of FSM
           // Common state
           parameter MAIN_IDLE = 4'h0;
           parameter MAIN_DAC_WAIT_FOR_BUSY_ON = 4'h1;
           parameter MAIN_DAC_WAIT_FOR_BUSY_OFF = 4'h2;
           parameter MAIN_DAC_LDAC_PAUSE = 4'h3;
           parameter MAIN_DAC_LDAC_OFF = 4'h4;
           parameter MAIN_ADC_WAIT_FOR_BUSY_ON = 4'h5;//////////////////////
           parameter MAIN_ADC_WAIT_FOR_BUSY_OFF= 4'h6;///////////////////////
           parameter MAIN_ADC_READ_FOR_BUSY_ON=4'h7;//////////////////////
       
       
           reg [3:0] adc_state;
           parameter ADC_OFF=4'h0;
           parameter ADC_IDLE=4'h1;
           parameter ADC_DAC_WAIT=4'h2;
           parameter ADC_DAC_DAC_ON=4'h3;
           parameter ADC_DAC_DAC_OFF=4'h4;
           parameter ADC_DAC_LDAC_PAUSE=4'h5;
           parameter ADC_DAC_LDAC_OFF=4'h6;
           parameter ADC_DAC_PID=4'h7;
           // Settings related to capture waveform data
           //parameter MAIN_CAPTURE_WAVEFORM_END = 4'h5;
       
           parameter MAIN_UNKNOWN_CMD =4'h8;
           
       
           initial begin
               main_state <= MAIN_IDLE;
               patterns <= 'd0;
               TX_buffer1_ready <= 1'b0;
               TX_buffer2_ready <= 1'b0;
               waveform_capture_start_trigger <= 1'b0;
               Limit_Max <='d0;
           end
           
           always @ (posedge CLK100MHZ)
               if (esc_char_detected == 1'b1) begin
                   if (esc_char == "C") begin
                       TX_buffer1_ready <= 1'b0;
                       TX_buffer2_ready <= 1'b0;
                       main_state <= MAIN_IDLE;
                   end
               end
               else begin
                   case (main_state)
                       MAIN_IDLE:
                           if (CMD_Ready == 1'b1) begin
       
                               if ((CMD_Length == $bits(CMD_IDN)/8) && (CMD_Buffer[$bits(CMD_IDN):1] == CMD_IDN)) begin
                                   TX_buffer1[1:$bits(IDN_REPLY)] <= IDN_REPLY;
                                   TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= $bits(IDN_REPLY)/8;
                                   TX_buffer1_ready <= 1'b1;
                               end
       
                               else if ((CMD_Length == $bits(CMD_TEST)/8) && (CMD_Buffer[$bits(CMD_TEST):1] == CMD_TEST)) begin
                                   TX_buffer1[1:10*8] <= "Test rec'd";
                                   TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= 'd10;
                                   TX_buffer1_ready <= 1'b1;
                               end
       
                               else if ((CMD_Length == $bits(CMD_WRITE_REG)/8) && (CMD_Buffer[$bits(CMD_WRITE_REG):1] == CMD_WRITE_REG)) begin
                                   if (BTF_Length != ((DAC_DATA_WIDTH+8)/8)) begin
                                       TX_buffer1[1:13*8] <= {"Wrong length", BTF_Length[7:0]}; // Assuming that BTF_Length is less than 256
                                       TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= 'd13;
                                       TX_buffer1_ready <= 1'b1;
                                   end
       
                                   else if (DAC_update != 'd0) begin
                                       DAC_buffer <= BTF_Buffer[DAC_DATA_WIDTH+8:1];
                                       main_state <= MAIN_DAC_WAIT_FOR_BUSY_ON;
                                       DAC_start[7:0] <= DAC_update[7:0];
                                   end                        
                               end
       
                               else if ((CMD_Length == $bits(CMD_LDAC)/8) && (CMD_Buffer[$bits(CMD_LDAC):1] == CMD_LDAC)) begin
                                   ldac_bar <= 1'b0;
                                   ldac_pause_count <= ldac_length;
                                   main_state <= MAIN_DAC_LDAC_PAUSE;
                               end
       
                               else if ((CMD_Length == $bits(CMD_UPDATE_LDAC_LENGTH)/8) && (CMD_Buffer[$bits(CMD_UPDATE_LDAC_LENGTH):1] == CMD_UPDATE_LDAC_LENGTH)) begin
                                   ldac_length[7:0] <= BTF_Buffer[8:1];
                               end
       ////////////////////////////////////////////////////////////////////////test part////////////////////////////////////////////////////////////////////////
                               else if((CMD_Length == $bits(CMD_START_ADC)/8) && (CMD_Buffer[$bits(CMD_START_ADC):1] == CMD_START_ADC)) begin//시작시 명령어
                                   main_state <=MAIN_ADC_WAIT_FOR_BUSY_ON;
                               end
                               
                               else if((CMD_Length == $bits(CMD_EXIT_ADC)/8) && (CMD_Buffer[$bits(CMD_EXIT_ADC):1] == CMD_EXIT_ADC)) begin//종료시 명령어
                                   main_state <=MAIN_IDLE;
                                   ADC_update[7:0] <= 8'h0; // adc update 에 0을 넣는다는 이야기는 adc function 을 사용하지 않겠다는 의미. exit
                               end
                               else if((CMD_Length == $bits(CMD_ADJUST_GAINP)/8) && (CMD_Buffer[$bits(CMD_ADJUST_GAINP):1] == CMD_ADJUST_GAINP)) begin//gain값 수정
                                   main_state <=MAIN_IDLE;
                                   GAIN_P[15:0]<=BTF_Buffer[16:1];
                               end
                               
                               else if((CMD_Length == $bits(CMD_ADJUST_GAINI)/8) && (CMD_Buffer[$bits(CMD_ADJUST_GAINI):1] == CMD_ADJUST_GAINI)) begin
                                   main_state <=MAIN_IDLE;
                                   GAIN_I[15:0]<=BTF_Buffer[16:1];
                               end                
                               
                               else if((CMD_Length == $bits(CMD_ADJUST_SET_POINT)/8) && (CMD_Buffer[$bits(CMD_ADJUST_SET_POINT):1] == CMD_ADJUST_SET_POINT)) begin
                                   main_state <=MAIN_IDLE;
                                   SetPoint[15:0]<=BTF_Buffer[16:1];
                               end                          
                               
       /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
       
                               else if ((CMD_Length == $bits(CMD_ADJUST_INTENSITY)/8) && (CMD_Buffer[$bits(CMD_ADJUST_INTENSITY):1] == CMD_ADJUST_INTENSITY)) begin
                                   LED_intensity[7:0] <= BTF_Buffer[8:1];
                               end
       // simulation 시간을 짧게 해주기 위해 주석처리
       //                        else if ((CMD_Length == $bits(CMD_READ_INTENSITY)/8) && (CMD_Buffer[$bits(CMD_READ_INTENSITY):1] == CMD_READ_INTENSITY)) begin
       //                            TX_buffer1[1:8] <= LED_intensity;
       //                            TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= 'd1;
       //                            TX_buffer1_ready <= 1'b1;
       //                            main_state <= MAIN_IDLE;
       //                        end
       
                               else if ((CMD_Length == $bits(CMD_CAPTURE_BTF_BUFFER)/8) && (CMD_Buffer[$bits(CMD_CAPTURE_BTF_BUFFER):1] == CMD_CAPTURE_BTF_BUFFER)) begin
                                   BTF_capture[BTF_RX_BUFFER_WIDTH:1] <= BTF_Buffer[BTF_RX_BUFFER_WIDTH:1];
                                   main_state <= MAIN_IDLE;
                               end
       
                               else if ((CMD_Length == $bits(CMD_SET_BTF_BUFFER_READING_COUNT)/8) && (CMD_Buffer[$bits(CMD_SET_BTF_BUFFER_READING_COUNT):1] == CMD_SET_BTF_BUFFER_READING_COUNT)) begin
                                   BTF_read_count[BTF_RX_BUFFER_COUNT_WIDTH-1:0] <= BTF_Buffer[BTF_RX_BUFFER_COUNT_WIDTH:1];
                                   main_state <= MAIN_IDLE;
                               end
       
                               else if ((CMD_Length == $bits(CMD_READ_BTF_BUFFER)/8) && (CMD_Buffer[$bits(CMD_READ_BTF_BUFFER):1] == CMD_READ_BTF_BUFFER)) begin
                                   TX_buffer2[1:TX_BUFFER2_WIDTH] <= BTF_capture[BTF_RX_BUFFER_WIDTH:1];
                                   TX_buffer2_length[TX_BUFFER2_LENGTH_WIDTH-1:0] <= BTF_read_count[BTF_RX_BUFFER_COUNT_WIDTH-1:0];
                                   TX_buffer2_ready <= 1'b1;
                                   main_state <= MAIN_IDLE;
                               end
       
                               else if ((CMD_Length == $bits(CMD_UPDATE_BIT_PATTERNS)/8) && (CMD_Buffer[$bits(CMD_UPDATE_BIT_PATTERNS):1] == CMD_UPDATE_BIT_PATTERNS)) begin
       //                            patterns <= (patterns & ~pattern_masks) | (pattern_masks & pattern_data);
                                   patterns[17:32] <= multiply_result;
                                   patterns[1:16] <= patterns[17:32]; 
                               end
       
                               else if ((CMD_Length == $bits(CMD_READ_BIT_PATTERNS)/8) && (CMD_Buffer[$bits(CMD_READ_BIT_PATTERNS):1] == CMD_READ_BIT_PATTERNS)) begin
                                   TX_buffer1[1:PATTERN_WIDTH] <= patterns;
                                   TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= PATTERN_WIDTH/8;
                                   TX_buffer1_ready <= 1'b1;
                                   main_state <= MAIN_IDLE;
                               end
       
       /*                      // Settings related to capture waveform data
                               else if ((CMD_Length == $bits(CMD_CAPTURE_WAVEFORM)/8) && (CMD_Buffer[$bits(CMD_CAPTURE_WAVEFORM):1] == CMD_CAPTURE_WAVEFORM)) begin
                                   waveform_capture_start_trigger <= 1'b1;
                                   main_state <= MAIN_CAPTURE_WAVEFORM_END;
                               end
       */
                               else begin
                                   main_state <= MAIN_UNKNOWN_CMD;
                               end
                           end
                           else begin
                               TX_buffer1_ready <= 1'b0;
                               TX_buffer2_ready <= 1'b0;
                           end                    
       
       /*              // Settings related to capture waveform data
                       MAIN_CAPTURE_WAVEFORM_END: begin
                               waveform_capture_start_trigger <= 1'b0;
                               main_state <= MAIN_IDLE;
                           end
       */
       
                       MAIN_DAC_WAIT_FOR_BUSY_ON: begin // 혹시 바쁜지 알아봄. 바쁘면 일하지 않음.대기
                               if (DAC_busy != 'd0) begin
                                   main_state <= MAIN_DAC_WAIT_FOR_BUSY_OFF;
                                   DAC_start[7:0] <= 8'd0; 
                               end
                           end
       
                       MAIN_DAC_WAIT_FOR_BUSY_OFF: begin // 대기함 
                               if (DAC_busy == 'd0)
                                   main_state <= MAIN_IDLE;
                           end
       
                       MAIN_DAC_LDAC_PAUSE: begin // ldac should be low for at least 15ns
                               if (ldac_pause_count == 0) main_state <= MAIN_DAC_LDAC_OFF;
                               ldac_pause_count <= ldac_pause_count - 'd1;
                           end
       
                       MAIN_DAC_LDAC_OFF: begin
                               ldac_bar <= 1'b1;
                               main_state <= MAIN_IDLE;
                           end
            ///////////////////////////////////////////////////////////////////////////////////////////
            /////additional state for adc
            //////////////////////////////////////////////////////////////////////////////////////////                  
                       MAIN_ADC_WAIT_FOR_BUSY_ON: begin // adc를 동작시키위해 시작되는 state
                           adc_on<=1;//adc 동작을 의미, adc관련 fsm동작 시작
                           if((CMD_Length == $bits(CMD_EXIT_ADC)/8) && (CMD_Buffer[$bits(CMD_EXIT_ADC):1] == CMD_EXIT_ADC)) begin//adc를 끄고 idle로 돌아감
                               main_state <= MAIN_ADC_WAIT_FOR_BUSY_OFF;
                               adc_on<=0;
                           end
                       end                                          
       
                       MAIN_ADC_WAIT_FOR_BUSY_OFF: begin // 종료 전 대기함 
                           main_state <= MAIN_IDLE;
                       end
           /////////////////////////////////////////////////////////////////////////////////////
                       MAIN_UNKNOWN_CMD: begin
                               TX_buffer1[1:11*8] <= "Unknown CMD";
                               TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= 'd11;
                               TX_buffer1_ready <= 1'b1;                                  
                               //led1_b <= ~led1_b;
                               main_state <= MAIN_IDLE;
                       end
                                                             
                   default:
                       main_state <= MAIN_IDLE;
               endcase
                          
           /////////////////////////////////////////////////////////////////////////////////////////////////
           ///adc module에 넣으면 btf 등등을 이용하기 어려워 일단 main module에다가 둠, 같은 reg를 바꾸므로 같은 always안에 넣음
           ///////////////////////////////////////////////////////////////////////////////////
               if(!adc_on)//adc_on이 있어야 제대로 동작함
                   adc_state<=ADC_OFF;
               else begin
                   case(adc_state) 
                       ADC_OFF: begin      //main_state에 있을 때는 adc_state는 꺼짐
                       if(adc_on)begin
                           adc_state<=ADC_IDLE;
                           ADC_update[7:0] <= 8'd0; 
                           TX_buffer1_ready <= 1'b0;
                       end
                       else
                           adc_state<=ADC_OFF;                   
                       end
                       
                       ADC_IDLE: begin    //adc시작                                   
                           if (CMD_Ready == 1'b1) begin
                               if((CMD_Length == $bits(CMD_MAN_ADC)/8) && (CMD_Buffer[$bits(CMD_MAN_ADC):1] == CMD_MAN_ADC)) begin//adc만 동작시, 동작 제대로 못할듯,확인 필요
                                   ADC_buffer[16:1] <= BTF_Buffer[ADC_DATA_WIDTH:1];
                                   adc_state <=MAIN_ADC_READ_FOR_BUSY_ON;
                                   ADC_update<=8'hFF; // adc update 에 11111111 값 넣어서 adc 함수 활성화
                               end
                               
                               else if((CMD_Length == $bits(CMD_ADC_DAC)/8) && (CMD_Buffer[$bits(CMD_ADC_DAC):1] == CMD_ADC_DAC)) begin//adc에서 dac로 data받는 동작
                                   ADC_buffer[16:1] <= BTF_Buffer[ADC_DATA_WIDTH:1];
                                   adc_state <=ADC_DAC_WAIT;
                                   ADC_update<=BTF_Buffer[ADC_DATA_WIDTH+8:ADC_DATA_WIDTH+1];
                                   pid_start<=0;
                               end
                               
                               else if((CMD_Length == $bits(CMD_ADC_DAC_PID)/8) && (CMD_Buffer[$bits(CMD_ADC_DAC_PID):1] == CMD_ADC_DAC_PID)) begin//adc에서 dac로 data받는 동작
                                   ADC_buffer[16:1] <= BTF_Buffer[ADC_DATA_WIDTH:1];
                                   adc_state <=ADC_DAC_WAIT;
                                   ADC_update<=BTF_Buffer[ADC_DATA_WIDTH+8:ADC_DATA_WIDTH+1];
                                   pid_start<=1;//pid명령어가 들어오면 adc_dac와 차이는 없지만 pid_start를 켜줌
                               end
                               
                               else if((CMD_Length == $bits(CMD_EXIT_ADC)/8) && (CMD_Buffer[$bits(CMD_EXIT_ADC):1] == CMD_EXIT_ADC)) begin// 밖에서 꺼주므로 아마 필요 없을 듯
                                   adc_state <=MAIN_ADC_WAIT_FOR_BUSY_OFF;
                               end
                               
                               else if((CMD_Length == $bits(CMD_NOISE_ADC)/8) && (CMD_Buffer[$bits(CMD_NOISE_ADC):1] == CMD_NOISE_ADC)) begin
                                   noise_start<=1;
                                   adc_state <=MAIN_ADC_WAIT_FOR_BUSY_ON;
                               end
                           end
                           
                           else
                               TX_buffer1_ready <= 1'b0;
                           end
                                                     
                       ADC_DAC_WAIT: begin
                           if(sdo_complete)begin//if we get sdo, dac loop starts. sdo_complete 값은 adc 를 통해 얻은 디지털 값이다. 이 값이 0이 아니게 되면 아래 수행 
                               ADC_update<=0;//adc는 이제 끔
                               ADC_buffer[16:1]<=0;//adc를 끔
                                           
                           if(!pid_start) begin//pid가 꺼진 상태의 루프, adc값을 pid거치지 않고 내보냄
                               
                               ADC_update<=BTF_Buffer[ADC_DATA_WIDTH+8:ADC_DATA_WIDTH+1];
                       
       //                        TX_buffer1[1:18] <= sdo_buf[17:0];
                               TX_buffer1[19:24] <= 'b0;
                               TX_buffer1[1:18] <= transfer[17:0];
                               TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= 'd3;
                               TX_buffer1_ready <= 1'b1;
                               adc_state <= ADC_DAC_DAC_ON;
                               DAC_buffer[16:1] <=multiply_result[15:0]+noise[15:0]; // 노이즈가 있다면 더해줌. 노이즈가 따로 activate 안되면 0이므로 ADC 결과가 그대로 나감. 
                               DAC_buffer[24:17]<=ADC_DAC_ch_buffer;
                               DAC_start[7:0] <= ADC_DAC_update[7:0];
                           
                           end
                           
                           else begin//pid동작시 평균값은 위와 같은 방법으로 구현하면 될 듯
                               adc_state <=ADC_DAC_PID;
                               pid_output<=(difference * GAIN_P / 'd4369 * 'd2) + Integrate- multiply_result;  // pid_output 는 setpoint에서 ADC input 뺀 수렴값이다. 여기서 pid_output은 ADC_input 이 더해지기 전값  
                               Integrate <= (GAIN_I * difference / 'd4369 * 'd2) + Integrate;
                               difference <= (SetPoint - multiply_result)-pid_output;
                           end
                           //DAC_start[7:0] <= ADC2DAC_update[7:0];//start dac
                       end
                       
                       else 
                           TX_buffer1_ready <= 1'b0;
                       end
                             
                       ADC_DAC_PID: begin
                           if((CMD_Length == $bits(CMD_EXIT_ADC)/8) && (CMD_Buffer[$bits(CMD_EXIT_ADC):1] == CMD_EXIT_ADC)) begin//exit function
                               adc_state <=MAIN_ADC_WAIT_FOR_BUSY_OFF;
                           end
                           TX_buffer1[1:16] <= multiply_result[15:0]; // 모니터에 출력할값, 한주기마다 최신화시켜줌, 이부분은 없앨부분
           
                           TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= 'd2;//to confirm data which we get from adc
                           TX_buffer1_ready <= 1'b1;
                           Limit_Max[16:1]<=noise[15:0]+ multiply_result[15:0]+pid_output[15:0];
                           
                           if (Limit_Max[16:1] > 16'b0000110011001101) begin
                               DAC_buffer[16:1] <= 16'b0000110011001101;
                           end
                           
                           else begin
                               DAC_buffer[16:1]<=noise[15:0]+ multiply_result[15:0]+pid_output[15:0];
                           end
                                                
                           adc_state <= ADC_DAC_DAC_ON;
                           DAC_start[7:0] <= ADC_DAC_update[7:0];//start dac
                           DAC_buffer[24:17]<=ADC_DAC_ch_buffer;
                       end
                                   
                       ADC_DAC_DAC_ON: begin//이부분은 실제 dac와 구조가 같음
                           if (DAC_busy != 'd0) begin
                               adc_state <= ADC_DAC_DAC_OFF;
                               DAC_start[7:0] <= 8'd0; 
                           end
                       end
                                   
                       ADC_DAC_DAC_OFF: begin // 대기함                                                                
                           if (DAC_busy == 'd0) begin
                               adc_state <= ADC_DAC_LDAC_PAUSE;
                               ldac_bar <= 1'b0;
                               ldac_pause_count <= ldac_length;
                           end
                       end
                                   
                       ADC_DAC_LDAC_PAUSE:begin // ldac should be low for at least 15ns                                                               
                           if (ldac_pause_count == 0) adc_state <= ADC_DAC_LDAC_OFF;
                               ldac_pause_count <= ldac_pause_count - 'd1;
                           end
                                      
                       ADC_DAC_LDAC_OFF: begin                                                               
                           ldac_bar <= 1'b1;
                           adc_state <= ADC_DAC_WAIT;
                           ADC_buffer[16:1] <= BTF_Buffer[ADC_DATA_WIDTH+8:1];
                           ADC_update<=BTF_Buffer[ADC_DATA_WIDTH+8:ADC_DATA_WIDTH+1];
                       end                  
                   endcase
               end
           end 
       
     
           // Settings related to capture waveform data
           //assign monitoring_32bits = {patterns[1:26], cwd_armed, cwd_triggered, 1'b0, capture_waveform_data_main_state[2:0]};
           //assign waveform_data[15:0] = temp_counter_16bits;
       
           //assign led[5:2] = main_state[3:0];
                    




    /////////////////////////////////////////////////////////////////
    // Simulation
    reg [BTF_RX_BUFFER_WIDTH:1] BTF_Buffer_reg;
    reg [BTF_RX_BUFFER_COUNT_WIDTH-1:0] BTF_Length_reg;
    
    reg [CMD_RX_BUFFER_WIDTH:1] CMD_Buffer_reg;
    reg [3:0] CMD_Length_reg;    
    reg CMD_Ready_reg;

    
    assign BTF_Buffer = BTF_Buffer_reg;
    assign BTF_Length = BTF_Length_reg;
    
    assign CMD_Buffer = CMD_Buffer_reg;
    assign CMD_Length = CMD_Length_reg;     
    assign CMD_Ready = CMD_Ready_reg;
    
    initial begin
        #0
        BTF_Buffer_reg[8+ADC_DATA_WIDTH:1] <= {8'h01, 16'hC000};
        BTF_Length_reg <= 'd3; 
        CMD_Buffer_reg <= CMD_START_ADC;
        CMD_Length_reg = $bits(CMD_START_ADC)/8;
        ck_io_28 <= 'd1;     
        CMD_Ready_reg = 1'b0;
        #10 CMD_Ready_reg = 1'b1;
        #100 CMD_Ready_reg = 1'b0;
        #5000
                CMD_Buffer_reg <= CMD_ADC_DAC;
        CMD_Length_reg = $bits(CMD_ADC_DAC)/8;
        BTF_Buffer_reg[24+ADC_DATA_WIDTH:1] <= {8'h01,8'h01, 8'h01, 16'hC000};
        BTF_Length_reg <= 'd3; 
                #10 CMD_Ready_reg = 1'b1;
        #100 CMD_Ready_reg = 1'b0;

          
        CMD_Buffer_reg <= CMD_EXIT_ADC;
        CMD_Length_reg = $bits(CMD_EXIT_ADC)/8;
        ck_io_28 <= 'd1;     
        CMD_Ready_reg = 1'b0;
        #10 CMD_Ready_reg=1'b1;
        #100 CMD_Ready_reg = 1'b0;

      

    end



 
endmodule
