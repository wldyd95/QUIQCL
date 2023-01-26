`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Seoul National University CNL Quantum computing group
// Engineer: Jiyong Yu
// 
// Create Date: 2019/11/06 16:19:12
// Design Name: Microwave phase selector module
// Module Name: main
// Project Name: Microwave phase selector 
// Target Devices: Microwave phase shifter (runs by 12 bit)
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


module main(
    input clk,
    input Uart_RXD,
    output Uart_TXD,
    
    // have to add switch input from sequencer fpga
    // we will use 3 switches for phase selection
    // therefore there are 8 phase registers 
    input[2:0] switch,
    
    // this bits are used for microwave phase shifting
    // microwave phase shifter uses 12 bit for phase shifting
    output reg[11:0] output_bit
   
    );
    
    //// SERIAL COMMUNICATION SETUP   
    //// Reference from DAC board verilog code 

    parameter STRING_COUNT_BIT = 5;
    parameter STRING_MAX_LENGTH = 32;
    parameter STRING_MAX_BIT_LENGTH = STRING_MAX_LENGTH * 8;
    parameter NUMBER_MAX_BIT_LENGTH = STRING_MAX_LENGTH * 4;
    parameter ClkFreq = 100000000;
    parameter BaudRate = 57600;
      
    wire RXStringReady;
    wire [STRING_MAX_BIT_LENGTH-1:0] RXString;
    wire [NUMBER_MAX_BIT_LENGTH-1:0] RXNumber;
    wire [STRING_COUNT_BIT-1:0] RXLen;
    wire RX_Error;
    reg RX_Flag;
    initial RX_Flag = 0;

    string_reader string_reader(.clk(clk), .Uart_RXD(Uart_RXD), .RXStringReady(RXStringReady), .RXString(RXString),
                                .RXNumber(RXNumber), .RXStringLen(RXLen), .RX_FLAG_Number(RX_Error));
    defparam string_reader.RX_STRING_COUNT_BIT = STRING_COUNT_BIT;
    defparam string_reader.RX_STRING_MAX_LENGTH = STRING_MAX_LENGTH;
    defparam string_reader.RX_STRING_MAX_BIT_LENGTH = STRING_MAX_BIT_LENGTH;
    defparam string_reader.RX_NUMBER_MAX_BIT_LENGTH = NUMBER_MAX_BIT_LENGTH;
    defparam string_reader.ClkFreq = ClkFreq;
    defparam string_reader.BaudRate = BaudRate;
        
    reg [STRING_COUNT_BIT-1:0] TXLen;
    reg [STRING_MAX_BIT_LENGTH-1:0] TXString;
    reg TXReady;
    reg TX_ASCII_NUM;
    wire TX_Busy;
    initial TXReady = 0;
    initial TX_ASCII_NUM = 0;
    initial TXLen = 6;
    initial TXString = "Hello!";
        
    string_sender string_sender(.clk(clk), .TxD(Uart_TXD), .TXStringLen(TXLen), .TXString(TXString), .TXStringReady(TXReady),
                                .TX_ASCII_NUM(TX_ASCII_NUM), .TXStringBusy(TX_Busy));
    defparam string_sender.TX_STRING_COUNT_BIT = STRING_COUNT_BIT;
    defparam string_sender.TX_STRING_MAX_LENGTH = STRING_MAX_LENGTH;
    defparam string_sender.TX_STRING_MAX_BIT_LENGTH = STRING_MAX_BIT_LENGTH;
    defparam string_sender.ClkFrequency = ClkFreq;
    defparam string_sender.Baud = BaudRate;
    
    wire[12*8-1:0] Str_In; // stores 12 bit information
    assign Str_In = RXString[12*8-1:0];
    
    // FSM state
    reg[3:0] state;
    parameter IDLE = 4'd0;
    parameter MSG_IN = 4'd1;
    parameter TX_SEND = 4'd2;
    parameter TX_WAIT_BUSY = 4'd3;
    parameter TX_WAIT_UNBUSY = 4'd4;
    parameter HELLO = 4'd5;
    initial state = HELLO;
    
    // switching phase state
    // we use 8 different phase for qubit randomized benchmarking
    parameter phase1_state = 4'd6;
    parameter phase2_state = 4'd7;
    parameter phase3_state = 4'd8;
    parameter phase4_state = 4'd9;
    parameter phase5_state = 4'd10;
    parameter phase6_state = 4'd11;
    parameter phase7_state = 4'd12;
    parameter phase8_state = 4'd13;
    
    // phase value registers
    reg[11:0] phase1;
    reg[11:0] phase2;
    reg[11:0] phase3;
    reg[11:0] phase4;
    reg[11:0] phase5;
    reg[11:0] phase6;
    reg[11:0] phase7;
    reg[11:0] phase8;
    
    initial phase1 = 0;
    initial phase2 = 0;
    initial phase3 = 0;
    initial phase4 = 0;
    initial phase5 = 0;
    initial phase6 = 0;
    initial phase7 = 0;
    initial phase8 = 0;
    
    // FSM     
    always @(posedge clk) begin
         // switch state by using switch input
         case(switch)
            3'b000: state <= phase1_state;       
            3'b001: state <= phase2_state;
            3'b010: state <= phase3_state;
            3'b011: state <= phase4_state;
            3'b100: state <= phase5_state;
            3'b101: state <= phase6_state;
            3'b110: state <= phase7_state;
            3'b111: state <= phase8_state;
            
            // default: state <= phase1_state;
         endcase
    
         // if we change random phase values in matlab, we have to update phase register values
         // first, move to idle state
         if(RXStringReady) begin
            RX_Flag <= 1; 
            state <= IDLE; // start from idle state
         end
         
         case(state)
             IDLE : begin
                if(RX_Flag) begin
                    RX_Flag <= 0;
                    state <= MSG_IN;
                end
             end
             
             MSG_IN : begin
                if(RXString[5*8-1:0] == "*IDN?") begin
                    TXLen <= 23;
                    TXString <= "Microwave phase shifter";
                    state <= TX_SEND;
                end
                
                // change Phase register values 
                else if(RXString[18*8-1:12*8] == "Phase1") begin
                    // make "0" to 0, "1" to 1
                    phase1[11] = RXString[12*8-1:11*8] - 48;
                    phase1[10] = RXString[11*8-1:10*8] - 48;
                    phase1[9] = RXString[10*8-1:9*8] - 48;
                    phase1[8] = RXString[9*8-1:8*8] - 48;
                    phase1[7] = RXString[8*8-1:7*8] - 48;
                    phase1[6] = RXString[7*8-1:6*8] - 48;
                    phase1[5] = RXString[6*8-1:5*8] - 48;
                    phase1[4] = RXString[5*8-1:4*8] - 48;
                    phase1[3] = RXString[4*8-1:3*8] - 48;
                    phase1[2] = RXString[3*8-1:2*8] - 48;
                    phase1[1] = RXString[2*8-1:1*8] - 48;
                    phase1[0] = RXString[1*8-1:0*8] - 48;
                    
                    TXLen <= 13;
                    TXString <= "Phase1 change";
                    state <= TX_SEND;
                end
                
                else if(RXString[18*8-1:12*8] == "Phase2") begin
                    // make "0" to 0, "1" to 1
                    phase2[11] = RXString[12*8-1:11*8] - 48;
                    phase2[10] = RXString[11*8-1:10*8] - 48;
                    phase2[9] = RXString[10*8-1:9*8] - 48;
                    phase2[8] = RXString[9*8-1:8*8] - 48;
                    phase2[7] = RXString[8*8-1:7*8] - 48;
                    phase2[6] = RXString[7*8-1:6*8] - 48;
                    phase2[5] = RXString[6*8-1:5*8] - 48;
                    phase2[4] = RXString[5*8-1:4*8] - 48;
                    phase2[3] = RXString[4*8-1:3*8] - 48;
                    phase2[2] = RXString[3*8-1:2*8] - 48;
                    phase2[1] = RXString[2*8-1:1*8] - 48;
                    phase2[0] = RXString[1*8-1:0*8] - 48;
                    
                    TXLen <= 13;
                    TXString <= "Phase2 change";
                    state <= TX_SEND;
                end
                
                else if(RXString[18*8-1:12*8] == "Phase3") begin
                    // make "0" to 0, "1" to 1
                    phase3[11] = RXString[12*8-1:11*8] - 48;
                    phase3[10] = RXString[11*8-1:10*8] - 48;
                    phase3[9] = RXString[10*8-1:9*8] - 48;
                    phase3[8] = RXString[9*8-1:8*8] - 48;
                    phase3[7] = RXString[8*8-1:7*8] - 48;
                    phase3[6] = RXString[7*8-1:6*8] - 48;
                    phase3[5] = RXString[6*8-1:5*8] - 48;
                    phase3[4] = RXString[5*8-1:4*8] - 48;
                    phase3[3] = RXString[4*8-1:3*8] - 48;
                    phase3[2] = RXString[3*8-1:2*8] - 48;
                    phase3[1] = RXString[2*8-1:1*8] - 48;
                    phase3[0] = RXString[1*8-1:0*8] - 48;
                    
                    TXLen <= 13;
                    TXString <= "Phase3 change";
                    state <= TX_SEND;
                end
                
                else if(RXString[18*8-1:12*8] == "Phase4") begin
                    // make "0" to 0, "1" to 1 
                    phase4[11] = RXString[12*8-1:11*8] - 48;
                    phase4[10] = RXString[11*8-1:10*8] - 48;
                    phase4[9] = RXString[10*8-1:9*8] - 48;
                    phase4[8] = RXString[9*8-1:8*8] - 48;
                    phase4[7] = RXString[8*8-1:7*8] - 48;
                    phase4[6] = RXString[7*8-1:6*8] - 48;
                    phase4[5] = RXString[6*8-1:5*8] - 48;
                    phase4[4] = RXString[5*8-1:4*8] - 48;
                    phase4[3] = RXString[4*8-1:3*8] - 48;
                    phase4[2] = RXString[3*8-1:2*8] - 48;
                    phase4[1] = RXString[2*8-1:1*8] - 48;
                    phase4[0] = RXString[1*8-1:0*8] - 48;
                    
                    TXLen <= 13;
                    TXString <= "Phase4 change";
                    state <= TX_SEND;
                end
                
                else if(RXString[18*8-1:12*8] == "Phase5") begin
                    // make "0" to 0, "1" to 1 
                    phase5[11] = RXString[12*8-1:11*8] - 48;
                    phase5[10] = RXString[11*8-1:10*8] - 48;
                    phase5[9] = RXString[10*8-1:9*8] - 48;
                    phase5[8] = RXString[9*8-1:8*8] - 48;
                    phase5[7] = RXString[8*8-1:7*8] - 48;
                    phase5[6] = RXString[7*8-1:6*8] - 48;
                    phase5[5] = RXString[6*8-1:5*8] - 48;
                    phase5[4] = RXString[5*8-1:4*8] - 48;
                    phase5[3] = RXString[4*8-1:3*8] - 48;
                    phase5[2] = RXString[3*8-1:2*8] - 48;
                    phase5[1] = RXString[2*8-1:1*8] - 48;
                    phase5[0] = RXString[1*8-1:0*8] - 48;
                   
                    TXLen <= 13;
                    TXString <= "Phase5 change";
                    state <= TX_SEND;
                end
                
                else if(RXString[18*8-1:12*8] == "Phase6") begin
                    // make "0" to 0, "1" to 1 
                    phase6[11] = RXString[12*8-1:11*8] - 48;
                    phase6[10] = RXString[11*8-1:10*8] - 48;
                    phase6[9] = RXString[10*8-1:9*8] - 48;
                    phase6[8] = RXString[9*8-1:8*8] - 48;
                    phase6[7] = RXString[8*8-1:7*8] - 48;
                    phase6[6] = RXString[7*8-1:6*8] - 48;
                    phase6[5] = RXString[6*8-1:5*8] - 48;
                    phase6[4] = RXString[5*8-1:4*8] - 48;
                    phase6[3] = RXString[4*8-1:3*8] - 48;
                    phase6[2] = RXString[3*8-1:2*8] - 48;
                    phase6[1] = RXString[2*8-1:1*8] - 48;
                    phase6[0] = RXString[1*8-1:0*8] - 48;
                    
                    TXLen <= 13;
                    TXString <= "Phase6 change";
                    state <= TX_SEND;
                end
                
                else if(RXString[18*8-1:12*8] == "Phase7") begin
                    // make "0" to 0, "1" to 1 
                    phase7[11] = RXString[12*8-1:11*8] - 48;
                    phase7[10] = RXString[11*8-1:10*8] - 48;
                    phase7[9] = RXString[10*8-1:9*8] - 48;
                    phase7[8] = RXString[9*8-1:8*8] - 48;
                    phase7[7] = RXString[8*8-1:7*8] - 48;
                    phase7[6] = RXString[7*8-1:6*8] - 48;
                    phase7[5] = RXString[6*8-1:5*8] - 48;
                    phase7[4] = RXString[5*8-1:4*8] - 48;
                    phase7[3] = RXString[4*8-1:3*8] - 48;
                    phase7[2] = RXString[3*8-1:2*8] - 48;
                    phase7[1] = RXString[2*8-1:1*8] - 48;
                    phase7[0] = RXString[1*8-1:0*8] - 48;
                    
                    TXLen <= 13;
                    TXString <= "Phase7 change";
                    state <= TX_SEND;
                end
                
                else if(RXString[18*8-1:12*8] == "Phase8") begin
                    // make "0" to 0, "1" to 1 
                    phase8[11] = RXString[12*8-1:11*8] - 48;
                    phase8[10] = RXString[11*8-1:10*8] - 48;
                    phase8[9] = RXString[10*8-1:9*8] - 48;
                    phase8[8] = RXString[9*8-1:8*8] - 48;
                    phase8[7] = RXString[8*8-1:7*8] - 48;
                    phase8[6] = RXString[7*8-1:6*8] - 48;
                    phase8[5] = RXString[6*8-1:5*8] - 48;
                    phase8[4] = RXString[5*8-1:4*8] - 48;
                    phase8[3] = RXString[4*8-1:3*8] - 48;
                    phase8[2] = RXString[3*8-1:2*8] - 48;
                    phase8[1] = RXString[2*8-1:1*8] - 48;
                    phase8[0] = RXString[1*8-1:0*8] - 48;
                    
                    TXLen <= 13;
                    TXString <= "Phase8 change";
                    state <= TX_SEND;
                end
             end
             
            TX_SEND : begin
                TXReady <= 1;
                state <= TX_WAIT_BUSY;
            end
             
            TX_WAIT_BUSY : begin
                if(TX_Busy) begin
                    TXReady <= 0;
                    state <= TX_WAIT_UNBUSY;
                end
            end
            
            TX_WAIT_UNBUSY : begin
                if(!TX_Busy) state <= IDLE;
            end
            
            HELLO : begin
                TXReady <= 1;
                state <= TX_SEND;
            end
            
            // switching states, in these states we send 12bit output bit to microwave shifter
            phase1_state: begin
                output_bit[11] <= phase1[11];
                output_bit[10] <= phase1[10];
                output_bit[9] <= phase1[9];
                output_bit[8] <= phase1[8];
                output_bit[7] <= phase1[7];
                output_bit[6] <= phase1[6];
                output_bit[5] <= phase1[5];
                output_bit[4] <= phase1[4];
                output_bit[3] <= phase1[3];
                output_bit[2] <= phase1[2];
                output_bit[1] <= phase1[1];
                output_bit[0] <= phase1[0];
            end
            
            phase2_state: begin
                output_bit[11] <= phase2[11];
                output_bit[10] <= phase2[10];
                output_bit[9] <= phase2[9];
                output_bit[8] <= phase2[8];
                output_bit[7] <= phase2[7];
                output_bit[6] <= phase2[6];
                output_bit[5] <= phase2[5];
                output_bit[4] <= phase2[4];
                output_bit[3] <= phase2[3];
                output_bit[2] <= phase2[2];
                output_bit[1] <= phase2[1];
                output_bit[0] <= phase2[0];
            end
            
            phase3_state: begin
                output_bit[11] <= phase3[11];
                output_bit[10] <= phase3[10];
                output_bit[9] <= phase3[9];
                output_bit[8] <= phase3[8];
                output_bit[7] <= phase3[7];
                output_bit[6] <= phase3[6];
                output_bit[5] <= phase3[5];
                output_bit[4] <= phase3[4];
                output_bit[3] <= phase3[3];
                output_bit[2] <= phase3[2];
                output_bit[1] <= phase3[1];
                output_bit[0] <= phase3[0];
            end
            
            phase4_state: begin
                output_bit[11] <= phase4[11];
                output_bit[10] <= phase4[10];
                output_bit[9] <= phase4[9];
                output_bit[8] <= phase4[8];
                output_bit[7] <= phase4[7];
                output_bit[6] <= phase4[6];
                output_bit[5] <= phase4[5];
                output_bit[4] <= phase4[4];
                output_bit[3] <= phase4[3];
                output_bit[2] <= phase4[2];
                output_bit[1] <= phase4[1];
                output_bit[0] <= phase4[0];
            end
            
            phase5_state: begin
                output_bit[11] <= phase5[11];
                output_bit[10] <= phase5[10];
                output_bit[9] <= phase5[9];
                output_bit[8] <= phase5[8];
                output_bit[7] <= phase5[7];
                output_bit[6] <= phase5[6];
                output_bit[5] <= phase5[5];
                output_bit[4] <= phase5[4];
                output_bit[3] <= phase5[3];
                output_bit[2] <= phase5[2];
                output_bit[1] <= phase5[1];
                output_bit[0] <= phase5[0];
            end
            
            phase6_state: begin
                output_bit[11] <= phase6[11];
                output_bit[10] <= phase6[10];
                output_bit[9] <= phase6[9];
                output_bit[8] <= phase6[8];
                output_bit[7] <= phase6[7];
                output_bit[6] <= phase6[6];
                output_bit[5] <= phase6[5];
                output_bit[4] <= phase6[4];
                output_bit[3] <= phase6[3];
                output_bit[2] <= phase6[2];
                output_bit[1] <= phase6[1];
                output_bit[0] <= phase6[0];
            end
            
            phase7_state: begin
                output_bit[11] <= phase7[11];
                output_bit[10] <= phase7[10];
                output_bit[9] <= phase7[9];
                output_bit[8] <= phase7[8];
                output_bit[7] <= phase7[7];
                output_bit[6] <= phase7[6];
                output_bit[5] <= phase7[5];
                output_bit[4] <= phase7[4];
                output_bit[3] <= phase7[3];
                output_bit[2] <= phase7[2];
                output_bit[1] <= phase7[1];
                output_bit[0] <= phase7[0];
            end
            
            phase8_state: begin
                output_bit[11] <= phase8[11];
                output_bit[10] <= phase8[10];
                output_bit[9] <= phase8[9];
                output_bit[8] <= phase8[8];
                output_bit[7] <= phase8[7];
                output_bit[6] <= phase8[6];
                output_bit[5] <= phase8[5];
                output_bit[4] <= phase8[4];
                output_bit[3] <= phase8[3];
                output_bit[2] <= phase8[2];
                output_bit[1] <= phase8[1];
                output_bit[0] <= phase8[0];
            end
         endcase
    end
endmodule
