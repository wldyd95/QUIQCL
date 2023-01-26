`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: swYoo
//
// Create Date: 2017/11/23 20:28:05
// Design Name: adc&dac controller
// Module Name: main
// Project Name: adc&dac controller
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

module main_without_capture_waveform_data
(
//module main(
    input Uart_RXD,
    output Uart_TXD,
    input CLK100MHZ,
    input BTN0,
    input BTN1,
    input BTN2,
    input ck_io_28,                      // ADC
    output ck_io_39, ck_io_38, ck_io_37, // DAC0
    output ck_io_36, ck_io_35, ck_io_34, // DAC1
    output ck_io_26, ck_io_27, ck_io_29, // ADC0
    output ck_io_6,                      // LDAC
    output ck_io_32,                     // testing point
    output ja_2,                         // to fill it
    output ja_3,
    output ja_6,
    output ja_7,
    input jb_0,
    input jb_1,
    input jb_2,
    input jb_3,
    input jb_4,
    input jb_5,
    input jb_6,
    input jb_7,
    output [5:2] led,
    output led0_r,
    output led0_g,
    output led0_b,
    output led1_r,
    output led1_g,
    output led1_b,
    output d5, d4, d3, d2, d1, d0 // For debugging purpose    
    );
   
   
    /////////////////////////////////////////////////////////////////
    // UART setting
    /////////////////////////////////////////////////////////////////
    parameter ClkFreq = 100000000; // make sure this matches the clock frequency on your board
    parameter BaudRate = 57600;    // Baud rate

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
   
    data_receiver receiver(.RxD(Uart_RXD), .clk(CLK100MHZ),
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
    defparam receiver.ClkFreq = ClkFreq;
    defparam receiver.BaudRate = BaudRate;
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

    //parameter TX_BUFFER2_BYTES = BTF_MAX_BYTES;
    //parameter TX_BUFFER2_WIDTH = BTF_MAX_BUFFER_WIDTH;
    //parameter TX_BUFFER2_LENGTH_WIDTH = BTF_MAX_BUFFER_COUNT_WIDTH;
    parameter TX_BUFFER2_BYTES = 9'h12C;//////////300byte
    parameter TX_BUFFER2_WIDTH = 8*TX_BUFFER2_BYTES;
    parameter TX_BUFFER2_LENGTH_WIDTH = bits_to_represent(TX_BUFFER2_BYTES);
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
    .TxD(Uart_TXD),
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

    defparam sender.ClkFreq = ClkFreq;
    defparam sender.BaudRate = BaudRate;
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
        LED_intensity <= 'd127;
    end
   
    led_intensity_adjust led_intensity_modulator(.led0_r(led0_r), .led0_g(led0_g), .led0_b(led0_b), .led1_r(led1_r),
        .led1_g(led1_g), .led1_b(led1_b), .red0(red0), .green0(green0), .blue0(blue0), .red1(red1), .green1(green1), .blue1(blue1),
        .intensity(LED_intensity), .CLK100MHZ(CLK100MHZ) );

    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Command definitions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    parameter CMD_IDN = "*IDN?";
    parameter IDN_REPLY = "DAC v1_00"; // 9 characters
    parameter CMD_TEST = {8'h10, "TEST", 8'h10};

    /////////////////////////////////////////////////////////////////
    // DAC implementation
    /////////////////////////////////////////////////////////////////
    parameter CMD_DAC_VOLTAGE = "DAC VOLTAGE"; // 9 characters
    parameter DAC_DATA_WIDTH = 24; // data length of dac

    reg [7:0] DAC_start; // DAC start trigger of each channel
   
    initial DAC_start[7:0] <= 8'd0;

    reg [DAC_DATA_WIDTH+8:1] DAC_buffer; // dac 버퍼를 32비트 짜리 레지스터 할당  
   
    wire [7:0] DAC_update; // DAC upadate trigger of each channel
    assign DAC_update[7:0] = BTF_Buffer[DAC_DATA_WIDTH+8:DAC_DATA_WIDTH+1]; // upadate part
    wire [DAC_DATA_WIDTH:1] DAC_data; // data of DAC
    assign DAC_data = DAC_buffer[DAC_DATA_WIDTH:1]; // get data from DAC
   
    reg [1:0] slow_clock; // dac 클락 중 25<Hz, 50MHz 중 하나 선택할 수 있도록 하는 레지스터
    initial slow_clock <= 'd0;
    always @ (posedge CLK100MHZ) slow_clock <= slow_clock + 'd1;
    wire DAC_clock; // dac 클락 선언
    assign DAC_clock = slow_clock[0]; // slow_clock[1]: 25MHz, slow_clock[0]: 50MHz

    wire [7:0] DAC_busy, DAC_sclk, DAC_cs_bar, DAC_sdi; //이건 dac 데이터시트에 나온 것과 같음

    genvar i;
    generate
        for (i=0; i<8; i=i+1) begin
            DAC8734 dac(.clock(DAC_clock), .start_trigger(DAC_start[i]), .data(DAC_data),
                .sclk(DAC_sclk[i]), .cs_bar(DAC_cs_bar[i]), .sdi(DAC_sdi[i]), .busy(DAC_busy[i]) );
        end
    endgenerate

    reg ldac_bar; // Minimum 15ns for 3.6V < DV_DD ≤ 5.5V, 2.7V ≤ IOV_DD ≤ DV_DD
    initial ldac_bar = 1'b1;
   
    assign {ck_io_39, ck_io_38, ck_io_37} = {DAC_cs_bar[0], DAC_sclk[0], DAC_sdi[0]}; // DAC_sdi도 결국 8비트짜리 핀이다.
    assign {ck_io_36, ck_io_35, ck_io_34} = {DAC_cs_bar[1], DAC_sclk[1], DAC_sdi[1]};
//    assign ck_io[13:11] = {DAC_cs_bar[2], DAC_sclk[2], DAC_sdi[2]};
//    assign ck_io[10: 8] = {DAC_cs_bar[3], DAC_sclk[3], DAC_sdi[3]};

    assign ck_io_6 = ldac_bar;
//    assign ck_io[ 5: 3] = {DAC_cs_bar[4], DAC_sclk[4], DAC_sdi[4]};
//    assign ck_io[ 2: 0] = {DAC_cs_bar[5], DAC_sclk[5], DAC_sdi[5]};
//    assign ck_io[31:29] = {DAC_cs_bar[6], DAC_sclk[6], DAC_sdi[6]};
//    assign ck_io[28:26] = {DAC_cs_bar[7], DAC_sclk[7], DAC_sdi[7]};

    parameter CMD_DAC_START = "DAC START";
    parameter CMD_DAC_STOP = "DAC STOP";
    parameter CMD_UPDATE_LDAC_LENGTH = "LDAC LENGTH";
   
    reg [7:0] ldac_length;
    initial ldac_length <= 40;
    reg [7:0] ldac_pause_count; // (LDAC_length+2)*10ns. LDAC signal is distributed to 8 chips, so for the output to swing down enough, pulse should be longer than 200ns when 2 chips were populated
   
 
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///ADC implementation
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    parameter CMD_ADC_START = "ADC START";
    parameter CMD_ADC_STOP = "ADC STOP";    
    parameter CMD_ADC_RANGE = "ADC RANGE";
    parameter ADC_DATA_WIDTH = 16;             //16bit짜리 명령어
   
    reg [ADC_DATA_WIDTH:1] ADC_buffer; // adc 버퍼를 16비트 짜리 레지스터 할당
    reg [3:0] ADC_clk_cnt; // clock count,
    reg ADC_start;
    reg ADC_clock;//slow clock for adc
   
     
    wire [ADC_DATA_WIDTH:1] ADC_data; // ADC 모듈의 인풋값임. 총 16비트.
    wire [17:0] ADC_output;
    wire ADC_busy, ADC_sclk, ADC_cs_bar, ADC_sdi, ADC_sdo;
    
    assign ADC_data = ADC_buffer[ADC_DATA_WIDTH:1]; // 버퍼의 가장 오른쪽 24개의 레지스터 부분은 dac 데이터로 할당
       
    ADC8698 adc(.clock(ADC_clock),.start_trigger(ADC_start),.data(ADC_data),.sdo(ADC_sdo),
    .sclk(ADC_sclk),.cs_bar(ADC_cs_bar),.sdi(ADC_sdi),.busy(ADC_busy),.result(ADC_output));//function adc    
     
    assign {ck_io_29, ck_io_28, ck_io_27, ck_io_26 } = {ADC_sdi, ADC_sdo, ADC_cs_bar, ADC_sclk};   //fpga port에 보내는 핀 연결
       
       
    // Making 10MHz CLK for ADC
    initial begin
        ADC_clk_cnt <= 'd0;
        ADC_clock <= 'd0;
        ADC_start <=1'b0;
    end
   
    always @ (posedge CLK100MHZ) begin // clock 10MHz
        if(ADC_clk_cnt=='d5) begin
            ADC_clk_cnt<='d0;
            ADC_clock<= ~ADC_clock;
        end
        else
            ADC_clk_cnt<=ADC_clk_cnt+'d1; // sclk_ADC 에  clock 을 넣어주지 않고 이렇게 카운팅만 해주면서 1클락을 소비하니 그 클락은 0 인 것. 이런식으로 9개 클럭 꺼서 100MHz를 1/10 해줌
    end

 //////////////////////////////////////////////////////////////////////////////////////
  //////Bit transformation from ADC output style to DAC input style
  //////////////////////////////////////////////////////////////////////////////////////////
    /*
    !!!!!CAUTION!!!!!
   
    Assumption : ADC range : 0 ~ 1.25*V_ref (V_ref = 4.096V, Option 5)
                 DAC range : 0 ~ 2.5V (V_ref = 2.5V, gain 2, unipolar)
                 2.67V
   
    Multiplying constant = (ADC range / DAC range) * (DAC bit resolution / ADC bit resolution)
    In this case, (5.12/5) * (2^16/2^18) = 0.256 ~ 262/2^10
   
    To avoid overflow, multiply constant to divided front/end bits
    */
   
    parameter REF_CONST=131;     // ADC 0 ~ 1.25*V_ref, DAC range : 0 ~ 2.5V 일때는 131, ADC -2.5*V_ref ~ 2.5*V_ref, DAC range : 0 ~ 2.5V 일때는 131                  
    reg [17:0] sdo_buf;
    wire signed [31:0] multiply_buf;                            
    wire signed [15:0] multiply_result;                 // Final bit
   
    assign multiply_buf[31:0]=(REF_CONST*sdo_buf[17:0])>>10;
    assign multiply_result[15:0]=multiply_buf[15:0];
           
    //////////////////////////////////////////
    /////// Buffer for FIFO   /////////////////        
    /////////////////////////////////////////
    parameter CMD_LOAD_LARGE="LOAD LARGE";
    parameter FIFO_length_send=100;
    parameter ADC_length_send=24;
   
    reg [FIFO_length_send*ADC_length_send-1:0] FIFO_buffer;
    reg [5:0] test_large;
    reg [ADC_length_send*FIFO_length_send-1:0] load_large_data_buffer;
    reg [7:0] sample_cnt;
    reg [7:0] manual_sample;
    reg sample_clk;
   
    wire [7:0] sample_target;
    initial begin
        FIFO_buffer<='b0;
        test_large<=6'b0;
        sample_clk<=1'b0;
    end
   
    assign sample_target=manual_sample-sample_cnt;
   
    //////////////////////////////////////////////////
    //sampling data
    ///////////////////////////////////////////////////
    always @ (posedge CLK100MHZ) begin // clock 10MHz
        if(sample_target==0) begin
            sample_cnt<='d0;
            sample_clk<= ~sample_clk;
        end
        else
            sample_cnt<=sample_cnt+'d1;
    end
    ////////////////////////////////////////////
    /////// output Boundary
    ///////////////////////////////////////////
    parameter CMD_ADJUST_SET_BOUND="ADJUST BOUNDARY";
    parameter BOUND_DATA_WIDTH=32;
   
    reg [15:0] loBound;
    reg [15:0] upBound;
   
    initial begin
        loBound <=16'h0;
        upBound <=16'hFFFF;
    end
   
    //////////////////////////////////////
    ///// COMP controller implementation
    ///////////////////////////////////////
    /*
        COMP values are multiplied by 2^14 from the original value to make possible floating operation
   
        Assumption : DAC range : 0 ~ 5V (V_ref = 2.5V, gain 2, unipolar)
        Initial setpoint value was assigned with this assumption
    */
   
    parameter CMD_COMP_START="COMP START";
    parameter CMD_COMP_STOP="COMP STOP";
    parameter CMD_COMP_RESET_ACT="COMP RESET ACT";
    parameter CMD_COMP_RESET_DATA="COMP RESET DATA";
    parameter CMD_ADJUST_K0="COMPENSATOR K0";     //gain값 조정시 사용하는 명령어
    parameter CMD_ADJUST_K1="COMPENSATOR K1";
    parameter CMD_ADJUST_K2="COMPENSATOR K2";
    parameter CMD_ADJUST_SET_POINT="COMP SETPOINT"; // set point 값 조정시 사용하는 명령어

    reg signed [15:0] K0;
    reg signed [15:0] K1;
    reg signed [15:0] K2;
    reg signed [17:0] setPoint;
    reg COMP_start;
    reg COMP_reset_act;
    reg COMP_reset_data;
    reg COMP_busy;
   
    wire signed [15:0] COMP_output;
   
    COMP_Control comp(.clock(ADC_clock),.start_trigger(COMP_start),.reset_act(COMP_reset_act),.reset_data(COMP_reset_data),.K0(K0),.K1(K1),.K2(K2),.setPoint(setPoint),.data(sdo_buf),.busy(COMP_busy),.COMP_output(COMP_output));    
   
    initial begin                          
        setPoint<=18'h1999;    // Real value : 1V (1/(5/2^16))
        K0 <= 16'h3999;     // Real value : 0.9 (0.9*2^14)
        K1 <= 16'h300;      // Real value : 0.0119 (0.0119*2^14)
        K2 <= 16'h30;
        COMP_start <= 1'b0;
        COMP_reset_act <= 1'b0;
        COMP_reset_data <= 1'b0;    
        COMP_busy <= 1'b0;  
    end
           
     
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
    //additional application(dac constant shoot, 60hz, digital filtering
    /////////////////////////////////////////////////////////////////
    parameter CMD_CONST_SHOOT="CONST SHOOT";
    parameter CMD_USER_SAMPLING="USER SAMPLING";
    parameter CMD_TERMINATE_CONDITION="TERM COND";
    reg ck_io_32_test;
    reg const_shoot;
    reg CLK500HZ;
    reg CLK500HZ_rising_flag;
    reg CLK500HZ_rising_buffer;
    reg [16:0] CLK500HZ_cnt;
    reg user_sampling;
    reg large_buffer_flag;
    initial begin
        const_shoot<=0;
        user_sampling<=0;
        CLK500HZ_cnt<=0;
        large_buffer_flag<=0;
        CLK500HZ_rising_flag<=0;
        ck_io_32_test<=0;
    end
    
   assign ck_io_32=ck_io_32_test;//testing point allocate
   
    always @ (posedge CLK100MHZ) begin // clock 10MHz
           if(CLK500HZ_cnt=='d99999) begin
               CLK500HZ_cnt<='d0;
               CLK500HZ<= ~CLK500HZ;
           end
           else
               CLK500HZ_cnt <= CLK500HZ_cnt+'d1; // sclk_ADC 에  clock 을 넣어주지 않고 이렇게 카운팅만 해주면서 1클락을 소비하니 그 클락은 0 인 것. 이런식으로 9개 클럭 꺼서 100MHz를 1/10 해줌
       end
    always @ (posedge CLK100MHZ) begin    
        CLK500HZ_rising_buffer<=CLK500HZ;
        if(!large_buffer_flag)begin
            if(CLK500HZ>CLK500HZ_rising_buffer)begin
                CLK500HZ_rising_flag<=1;
            end
        end
        else
           CLK500HZ_rising_flag<=0;
    end
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


   
    parameter CMD_UPDATE = "UPDATE";
    parameter CMD_LOAD = "LOAD";
   
//////// Connection state between FPGA and HOST computer
    reg [2:0] con_state;
   
    parameter CON_WAIT = 3'h0;
    parameter CON_UPDATE = 3'h1;
    parameter CON_LOAD = 3'h2;
    parameter CON_UNKNOWN = 3'h3;
    parameter CON_LOAD_LARGE= 3'h4;
    reg update_request; // Send update sign to operation FSM  
    reg load_start, load_large_start;
    reg load_finish, load_large_finish;
   
    reg update_check;   // Checking whether the command needs updating parameters
   
    reg [33:0] load_data_buffer;
    reg [32:1] user_DAC_buffer;
   
    initial begin
        con_state <= CON_WAIT;
        update_request <= 1'b0;
        load_start <= 1'b0;
        load_finish <= 1'b0;
        load_large_start <=1'b0;
        load_large_finish <=1'b0;
        update_check <= 1'b0;
        TX_buffer1_ready <= 1'b0;
        TX_buffer2_ready <= 1'b0;
       
        load_data_buffer <= 0;
        load_large_data_buffer <= 0;
        user_DAC_buffer <= 0;
    end
   
    always @ (posedge CLK100MHZ)        
        if (esc_char_detected == 1'b1) begin
            if (esc_char == "C") begin
                TX_buffer1_ready <= 1'b0;
                TX_buffer2_ready <= 1'b0;
                con_state <= CON_WAIT;
            end
        end
        else begin
            case (con_state)
                CON_WAIT:
                    if (CMD_Ready == 1'b1) begin
                        // COMMAND "*IDN?"
                        if ((CMD_Length == $bits(CMD_IDN)/8) && (CMD_Buffer[$bits(CMD_IDN):1] == CMD_IDN)) begin
                            TX_buffer1[1:$bits(IDN_REPLY)] <= IDN_REPLY;
                            TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= $bits(IDN_REPLY)/8;
                            TX_buffer1_ready <= 1'b1;
                        end
                       
                        // COMMAND "TEST"    
                        else if ((CMD_Length == $bits(CMD_TEST)/8) && (CMD_Buffer[$bits(CMD_TEST):1] == CMD_TEST)) begin
                            TX_buffer1[1:10*8] <= "Test rec'd";
                            TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= 'd10;
                            TX_buffer1_ready <= 1'b1;
                        end
                       
                        // COMMAND "ADJUST INTENSITY"
                        else if ((CMD_Length == $bits(CMD_ADJUST_INTENSITY)/8) && (CMD_Buffer[$bits(CMD_ADJUST_INTENSITY):1] == CMD_ADJUST_INTENSITY)) begin
                            LED_intensity[7:0] <= BTF_Buffer[8:1];
                        end
                       
                        // COMMAND "CAPTURE BTF"
                        else if ((CMD_Length == $bits(CMD_CAPTURE_BTF_BUFFER)/8) && (CMD_Buffer[$bits(CMD_CAPTURE_BTF_BUFFER):1] == CMD_CAPTURE_BTF_BUFFER)) begin
                            BTF_capture[BTF_RX_BUFFER_WIDTH:1] <= BTF_Buffer[BTF_RX_BUFFER_WIDTH:1];
                        end
                       
                        //  COMMAND "BTF READ COUNT"
                        else if ((CMD_Length == $bits(CMD_SET_BTF_BUFFER_READING_COUNT)/8) && (CMD_Buffer[$bits(CMD_SET_BTF_BUFFER_READING_COUNT):1] == CMD_SET_BTF_BUFFER_READING_COUNT)) begin
                            BTF_read_count[BTF_RX_BUFFER_COUNT_WIDTH-1:0] <= BTF_Buffer[BTF_RX_BUFFER_COUNT_WIDTH:1];
                        end
                        /*
                        // COMMAND "READ BTF"
                        else if ((CMD_Length == $bits(CMD_READ_BTF_BUFFER)/8) && (CMD_Buffer[$bits(CMD_READ_BTF_BUFFER):1] == CMD_READ_BTF_BUFFER)) begin
                            TX_buffer2[1:TX_BUFFER2_WIDTH] <= BTF_capture[BTF_RX_BUFFER_WIDTH:1];
                            TX_buffer2_length[TX_BUFFER2_LENGTH_WIDTH-1:0] <= BTF_read_count[BTF_RX_BUFFER_COUNT_WIDTH-1:0];
                            TX_buffer2_ready <= 1'b1;
                        end
                        */
                        // COMMAND "READ ADC LARGE"
                        /*
                        else if ((CMD_Length == $bits(CMD_READ_ADC_LARGE)/8) && (CMD_Buffer[$bits(CMD_READ_ADC_LARGE):1] == CMD_READ_ADC_LARGE)) begin
                            TX_buffer2[1:TX_BUFFER2_WIDTH] <= FIFO_buffer[FIFO_length_send*ADC_length_send-1:0];
                            TX_buffer2_length[TX_BUFFER2_LENGTH_WIDTH-1:0] <= BTF_read_count[BTF_RX_BUFFER_COUNT_WIDTH-1:0];
                            TX_buffer2_ready <= 1'b1;
                        end
                        */
                        // COMMAND "UPDATE BITS"
                        else if ((CMD_Length == $bits(CMD_UPDATE_BIT_PATTERNS)/8) && (CMD_Buffer[$bits(CMD_UPDATE_BIT_PATTERNS):1] == CMD_UPDATE_BIT_PATTERNS)) begin
    //                            patterns <= (patterns & ~pattern_masks) | (pattern_masks & pattern_data);
                            patterns[17:32] <= multiply_result;
                            patterns[1:16] <= patterns[17:32];
                        end
                       
                        // COMMAND "READ BITS"
                        else if ((CMD_Length == $bits(CMD_READ_BIT_PATTERNS)/8) && (CMD_Buffer[$bits(CMD_READ_BIT_PATTERNS):1] == CMD_READ_BIT_PATTERNS)) begin
                            TX_buffer1[1:PATTERN_WIDTH] <= patterns;
                            TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= PATTERN_WIDTH/8;
                            TX_buffer1_ready <= 1'b1;
                        end
                       
                        // COMMAND "UPDATE"
                        else if((CMD_Length == $bits(CMD_UPDATE)/8) && (CMD_Buffer[$bits(CMD_UPDATE):1] == CMD_UPDATE)) begin
                            con_state <= CON_UPDATE;
                        end
                       
                        // COMMAND "LOAD"
                        else if((CMD_Length == $bits(CMD_LOAD)/8) && (CMD_Buffer[$bits(CMD_LOAD):1] == CMD_LOAD)) begin
                            con_state <= CON_LOAD;
                            load_start <= 1'b1;
                        end    
                     // COMMAND "LOAD LARGE"
                        else if((CMD_Length == $bits(CMD_LOAD_LARGE)/8) && (CMD_Buffer[$bits(CMD_LOAD_LARGE):1] == CMD_LOAD_LARGE)) begin
                            con_state <= CON_LOAD_LARGE;
                            load_large_start <= 1'b1;
                        end
                   
                        else begin
                            con_state <= CON_UNKNOWN;
                        end

                    end
                    else begin
                        TX_buffer1_ready <= 1'b0;
                        TX_buffer2_ready <= 1'b0;
                    end                    

            CON_UPDATE: begin
                if ((CMD_Length == $bits(CMD_UPDATE)/8) && (CMD_Buffer[$bits(CMD_UPDATE):1] == CMD_UPDATE)) begin//when command come intermidiate
                    con_state <= CON_UPDATE;
                end
                else if (update_request == 0) begin
                    update_request <= 1'b1;
                end
                else if(update_start == 1) begin
                    con_state <= CON_WAIT;
                    update_request <= 1'b0;

                    // COMMAND "DAC VOLTAGE"
                    if ((CMD_Length == $bits(CMD_DAC_VOLTAGE)/8) && (CMD_Buffer[$bits(CMD_DAC_VOLTAGE):1] == CMD_DAC_VOLTAGE)) begin
                        if (BTF_Length != ((DAC_DATA_WIDTH+8)/8)) begin
                            TX_buffer1[1:13*8] <= {"Wrong length", BTF_Length[7:0]}; // Assuming that BTF_Length is less than 256
                            TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= 'd13;
                            TX_buffer1_ready <= 1'b1;
                        end
                        else begin
                            user_DAC_buffer[DAC_DATA_WIDTH+8:1] <= BTF_Buffer[DAC_DATA_WIDTH+8:1];
                        end                                          
                    end    
                   
                    // COMMAND "DAC START"
                    else if ((CMD_Length == $bits(CMD_DAC_START)/8) && (CMD_Buffer[$bits(CMD_DAC_START):1] == CMD_DAC_START)) begin
                        DAC_on <= 1'b1;
                    end

                    // COMMAND "DAC STOP"
                    else if ((CMD_Length == $bits(CMD_DAC_STOP)/8) && (CMD_Buffer[$bits(CMD_DAC_STOP):1] == CMD_DAC_STOP)) begin
                        DAC_on <= 1'b0;
                    end
                   
                    // COMMAND "LDAC LENGTH"                    
                    else if ((CMD_Length == $bits(CMD_UPDATE_LDAC_LENGTH)/8) && (CMD_Buffer[$bits(CMD_UPDATE_LDAC_LENGTH):1] == CMD_UPDATE_LDAC_LENGTH)) begin
                        ldac_length[7:0] <= BTF_Buffer[8:1];
                    end
                   
                    // COMMAND "ADC START"
                    else if((CMD_Length == $bits(CMD_ADC_START)/8) && (CMD_Buffer[$bits(CMD_ADC_START):1] == CMD_ADC_START)) begin
                        if (BTF_Length != (ADC_DATA_WIDTH/8)) begin
                            TX_buffer1[1:13*8] <= {"Wrong length", BTF_Length[7:0]}; // Assuming that BTF_Length is less than 256
                            TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= 'd13;
                            TX_buffer1_ready <= 1'b1;
                        end
                        else begin
                            ADC_buffer[16:1] <= BTF_Buffer[ADC_DATA_WIDTH:1];
                            ADC_on <= 1'b1;
                            ADC_read_flag <= 1'b1;
                        end
                    end
                                   
                    // COMMAND "ADC STOP"
                    else if((CMD_Length == $bits(CMD_ADC_STOP)/8) && (CMD_Buffer[$bits(CMD_ADC_STOP):1] == CMD_ADC_STOP)) begin
                        ADC_on <= 1'b0;
                        ADC_read_flag <= 1'b0;
                    end
                   
                    // COMMAND "ADC RANGE"              
                    else if((CMD_Length == $bits(CMD_ADC_RANGE)/8) && (CMD_Buffer[$bits(CMD_ADC_RANGE):1] == CMD_ADC_RANGE)) begin
                        if (BTF_Length != (ADC_DATA_WIDTH/8)) begin
                            TX_buffer1[1:13*8] <= {"Wrong length", BTF_Length[7:0]}; // Assuming that BTF_Length is less than 256
                            TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= 'd13;
                            TX_buffer1_ready <= 1'b1;
                        end    
                        else begin
                            ADC_buffer[16:1] <= BTF_Buffer[ADC_DATA_WIDTH:1];
                            ADC_on <= 1'b1;
                        end
                    end  
 
                    // COMMAND "COMP START"
                    else if((CMD_Length == $bits(CMD_COMP_START)/8) && (CMD_Buffer[$bits(CMD_COMP_START):1] == CMD_COMP_START)) begin
                        COMP_on <= 1'b1;
                        COMP_reset_act <= 1'b0;
                        COMP_reset_data <= 1'b0;
                    end              

                    // COMMAND "COMP STOP"
                    else if((CMD_Length == $bits(CMD_COMP_STOP)/8) && (CMD_Buffer[$bits(CMD_COMP_STOP):1] == CMD_COMP_STOP)) begin
                        COMP_on <= 1'b0;
                    end
                    // COMMAND "COMP RESET ACT"
                    else if((CMD_Length == $bits(CMD_COMP_RESET_ACT)/8) && (CMD_Buffer[$bits(CMD_COMP_RESET_ACT):1] == CMD_COMP_RESET_ACT)) begin
                        COMP_reset_act <= 1'b1;
                    end
                    // COMMAND " COMP RESET DATA"
                    else if((CMD_Length == $bits(CMD_COMP_RESET_DATA)/8) && (CMD_Buffer[$bits(CMD_COMP_RESET_DATA):1] == CMD_COMP_RESET_DATA)) begin
                        COMP_reset_data <= 1'b1;
                    end
                   
                    // COMMAND "GAIN K0"
                    else if((CMD_Length == $bits(CMD_ADJUST_K0)/8) && (CMD_Buffer[$bits(CMD_ADJUST_K0):1] == CMD_ADJUST_K0)) begin//gain값 수정
                        K0[15:0] <= BTF_Buffer[16:1];
                    end
                   
                    // COMMAND "GAIN K1"
                    else if((CMD_Length == $bits(CMD_ADJUST_K1)/8) && (CMD_Buffer[$bits(CMD_ADJUST_K1):1] == CMD_ADJUST_K1)) begin
                        K1[15:0] <= BTF_Buffer[16:1];
                    end  
                    // COMMAND "GAIN K2"
                    else if((CMD_Length == $bits(CMD_ADJUST_K2)/8) && (CMD_Buffer[$bits(CMD_ADJUST_K2):1] == CMD_ADJUST_K2)) begin
                        K2[15:0] <= BTF_Buffer[16:1];
                    end  
                                 
                    // COMMAND "SET POINT"
                    else if((CMD_Length == $bits(CMD_ADJUST_SET_POINT)/8) && (CMD_Buffer[$bits(CMD_ADJUST_SET_POINT):1] == CMD_ADJUST_SET_POINT)) begin
                        setPoint[17:0] <= BTF_Buffer[18:1];
                    end
                   
                    // COMMAND "SET BOUND
                    else if((CMD_Length == $bits(CMD_ADJUST_SET_BOUND)/8) && (CMD_Buffer[$bits(CMD_ADJUST_SET_BOUND):1] == CMD_ADJUST_SET_BOUND)) begin
                        if (BTF_Length != (BOUND_DATA_WIDTH/8)) begin
                            TX_buffer1[1:13*8] <= {"Wrong length", BTF_Length[7:0]}; // Assuming that BTF_Length is less than 256
                            TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= 'd13;
                            TX_buffer1_ready <= 1'b1;
                        end    
                        else begin
                            upBound[15:0] <= BTF_Buffer[16:1];//boundary for DAC
                            loBound[15:0] <= BTF_Buffer[32:17];
                        end          
                    end
                    else if((CMD_Length == $bits(CMD_CONST_SHOOT)/8) && (CMD_Buffer[$bits(CMD_CONST_SHOOT):1] == CMD_CONST_SHOOT)) begin
                        const_shoot <= 1'b1;
                    end                    
                    else if((CMD_Length == $bits(CMD_USER_SAMPLING)/8) && (CMD_Buffer[$bits(CMD_USER_SAMPLING):1] == CMD_USER_SAMPLING)) begin
                        user_sampling <= 1'b1;
                    end
                    else if((CMD_Length == $bits(CMD_TERMINATE_CONDITION)/8) && (CMD_Buffer[$bits(CMD_TERMINATE_CONDITION):1] == CMD_TERMINATE_CONDITION)) begin
                        user_sampling <= 1'b0;
                        const_shoot <= 1'b0;
                    end
                end
               
            end

            CON_LOAD: begin
                if(load_finish == 1) begin
                    load_start <= 1'b0;
                    con_state <= CON_WAIT;
                   
                    TX_buffer1[1:18] <= load_data_buffer[17:0];
                    TX_buffer1[19:24] <= 'b0;
                    TX_buffer1[25:40] <= load_data_buffer[33:18];
                    TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= 'd5;
                    TX_buffer1_ready <= 1'b1;                    
                end
             
            end
           
            CON_LOAD_LARGE: begin////////////////need to locking with CON_LOAD by load_start
                if(load_large_finish == 1) begin
                    load_large_start <= 1'b0;
                    con_state <= CON_WAIT;
                    //TX_buffer2[1:18] <= load_data_buffer[17:0];
                    //TX_buffer2[19:24] <= 'b0;
                    TX_buffer2[1:TX_BUFFER2_WIDTH] <= load_large_data_buffer[FIFO_length_send*ADC_length_send-1:0];
                    TX_buffer2_length[TX_BUFFER2_LENGTH_WIDTH-1:0] <= 'd300;
                    TX_buffer2_ready <= 1'b1;                    
                end
             
            end
           
            CON_UNKNOWN: begin
                TX_buffer1[1:11*8] <= "Unknown CMD";
                TX_buffer1_length[TX_BUFFER1_LENGTH_WIDTH-1:0] <= 'd11;
                TX_buffer1_ready <= 1'b1;                                  
                //led1_b <= ~led1_b;
                con_state <= CON_WAIT;
            end
           
            default:
                con_state <= CON_WAIT;
        endcase
    end
       
//////// Operation state of ADC/DAC system
    reg [2:0] op_state;
   
    parameter OP_WAIT = 3'h0;
    parameter OP_ADC = 3'h3;
    parameter OP_ADC_WAIT = 3'h1;
    parameter OP_COMP = 3'h2;
    parameter OP_COMP_WAIT = 3'h6;
    parameter OP_DAC = 3'h5;
    parameter OP_DAC_WAIT=3'h4;
   
    reg ADC_on;
    reg ADC_read_flag;
    reg COMP_on;
    reg DAC_on;
    reg DAC_ready_flag;
    reg update_start;   // Wait until one preriod of ADC/DAC operating process is finished

   
    initial begin
        op_state <= OP_WAIT;
        ADC_on <= 1'b0;
        ADC_read_flag <= 1'b0;
        COMP_on <= 1'b0;
        DAC_on <= 1'b0;
        DAC_ready_flag <= 1'b0;
        update_start <= 1'b0;
    end
   
    always @ (posedge CLK100MHZ)        
        case (op_state)
            OP_WAIT: begin
                if(update_request == 1) begin
                    update_start <= 1'b1;
                end
                else if(load_start == 1) begin
                    load_data_buffer[17:0] <= sdo_buf[17:0];//sent data to PC only working in this state
                    load_data_buffer[33:18]<=DAC_buffer[16:1];
                    load_finish <= 1'b1;
                end
                                                           //sent large data to PC
                else if(load_large_start == 1)begin
                    load_large_data_buffer[ADC_length_send*FIFO_length_send-1:0] <= FIFO_buffer[ADC_length_send*FIFO_length_send-1:0];
                    load_large_finish <= 1'b1;
                end
                else begin
                    update_start <= 1'b0;
                    load_finish <= 1'b0;
                    load_large_finish<=1'b0;
                   
                    if (ADC_on == 1) begin
                        op_state <= OP_ADC;
                    end
                   
                    else if (COMP_on == 1) begin
                        op_state <= OP_COMP;
                    end
                   
                    else if (DAC_on == 1) begin
                        op_state <= OP_DAC;
                    end
                end
            end
           
            OP_ADC: begin
                if(ADC_start == 0) begin//ADC_start consume 1clock, I think
                    ADC_start <= 1'b1;
                    ck_io_32_test<=0;
                end
                else if (ADC_busy == 1) begin
                    op_state <= OP_ADC_WAIT;
                end
            end
           
            OP_ADC_WAIT: begin
                if (ADC_busy == 1) begin
                    ADC_start <= 1'b0;
                end
                else begin                    
                    if(ADC_read_flag == 1) begin
                        sdo_buf[17:0] <= ADC_output[17:0];    //we store the ADC data to buf
                        if(user_sampling==1)begin
                            if(CLK500HZ_rising_flag)begin
                                FIFO_buffer[ADC_length_send-1:0] <= {ADC_output[17:0],6'b0};
                                FIFO_buffer[ADC_length_send*FIFO_length_send-1:ADC_length_send] <= FIFO_buffer[ADC_length_send*FIFO_length_send-ADC_length_send-1:0];//////
                                large_buffer_flag<=1;
                                ck_io_32_test<=1;
                            end
                            else large_buffer_flag<=0;
                        end
                        else begin
                            FIFO_buffer[ADC_length_send-1:0] <= {ADC_output[17:0],6'b0};
                            FIFO_buffer[ADC_length_send*FIFO_length_send-1:ADC_length_send] <= FIFO_buffer[ADC_length_send*FIFO_length_send-ADC_length_send-1:0];
                            large_buffer_flag<=0;
                        end
                       
                    end
                    else
                        sdo_buf[17:0] <= 18'd0;
                                       
                    if (COMP_on == 1) begin                   //go to next state
                        op_state <= OP_COMP;
                    end
                    else if (DAC_on == 1) begin
                        op_state <= OP_DAC;
                    end
                    else begin
                        op_state <= OP_WAIT;
                    end    
                end
            end
             
            OP_COMP: begin
                if(COMP_start == 0) begin
                    COMP_start <= 1'b1;
                end
                else begin
                    op_state <= OP_COMP_WAIT;
                end
            end
           
            OP_COMP_WAIT: begin
                if(COMP_busy == 1)
                    COMP_start <= 1'b0;
                else begin
                    if (DAC_on == 1) begin
                        op_state <= OP_DAC;
                    end
                    else begin
                        op_state <= OP_WAIT;
                    end
                end
            end
                       
            OP_DAC: begin
                if (DAC_ready_flag == 0) begin
                    DAC_ready_flag <= 1'b1;
                    if (COMP_on == 1) begin
                        if(!const_shoot) begin
                            if (COMP_output > loBound)
                                DAC_buffer[16:1] <= COMP_output[15:0];
                            else
                                DAC_buffer[16:1] <= loBound[15:0];
                            if (COMP_output < upBound)
                                DAC_buffer[16:1] <= COMP_output[15:0];
                            else
                                DAC_buffer[16:1] <= upBound[15:0];
                        end
                        else
                            DAC_buffer[DAC_DATA_WIDTH:1] <= user_DAC_buffer[DAC_DATA_WIDTH:1];
                    end
                   
                    else if (ADC_on == 1) begin
                        if(!const_shoot) begin
                            if (COMP_output > loBound)
                                DAC_buffer[16:1] <= multiply_result[15:0];
                            else
                                DAC_buffer[16:1] <= loBound[15:0];
                            if (COMP_output < upBound)
                                DAC_buffer[16:1] <= multiply_result[15:0];
                            else
                                DAC_buffer[16:1] <= upBound[15:0];
                        end
                        else
                            DAC_buffer[DAC_DATA_WIDTH:1] <= user_DAC_buffer[DAC_DATA_WIDTH:1];
                    end
                    else
                        DAC_buffer[DAC_DATA_WIDTH:1] <= user_DAC_buffer[DAC_DATA_WIDTH:1];
                end
                else if (DAC_busy == 'd0) begin
                    DAC_start[7:0] <= DAC_update[7:0];
                    ldac_bar <= 1'b0;
                    ldac_pause_count <= ldac_length;
                end
                else begin
                    DAC_ready_flag <= 1'b0;
                    op_state <= OP_DAC_WAIT;                    
                end
            end
           
            OP_DAC_WAIT: begin
                if(DAC_busy != 'd0)
                    DAC_start[7:0] <= 8'b0;
                else if(ldac_pause_count == 0) begin // ldac should be low for at least 15ns
                    ldac_bar <= 1'b1;
                    op_state <= OP_WAIT;
                end    
                ldac_pause_count <= ldac_pause_count - 'd1;
            end    
        endcase

       
////////////////////////////////////////////////////////////////
// Detect when BTN0 is pressed
////////////////////////////////////////////////////////////////
    wire BTN0EdgeDetect;
    reg BTN0Delay;
    initial BTN0Delay = 1'b0;
    always @ (posedge CLK100MHZ) begin
        BTN0Delay <= BTN0;
    end
    assign BTN0EdgeDetect = (BTN0 & !BTN0Delay);

   
   
    reg wait_flag;
    initial wait_flag <= 1'b0;
    always @ (posedge CLK100MHZ) begin
        if(op_state == 0) wait_flag <= 1'b1;
        else wait_flag <= 1'b0;
    end

    assign {d0, d1, d2, d3, d4, d5} = 6'h00;
    //assign {led, red1, green1, blue1, red0, green0, blue0} = patterns[1:10];
    assign {red1,green1,blue1} = op_state;
    assign {red0,green0,blue0} = con_state;
   
    assign led[2] = ADC_on;
    assign led[3] = COMP_on;
    assign led[4] = DAC_on;
    assign led[5] = wait_flag;
endmodule