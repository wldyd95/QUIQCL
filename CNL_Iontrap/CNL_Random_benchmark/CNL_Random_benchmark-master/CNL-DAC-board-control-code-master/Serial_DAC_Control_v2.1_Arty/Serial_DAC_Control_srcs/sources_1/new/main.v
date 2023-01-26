`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/01/13 13:05:50
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
// 
//////////////////////////////////////////////////////////////////////////////////


module main(
    input clk,
    
    input Uart_RXD,
    output Uart_TXD,
    
    output reg LDAC_OUT,
    
    output CH0_nCS,
    output CH0_SCLK,
    output CH0_SDI,
    output CH1_nCS,
    output CH1_SCLK,
    output CH1_SDI,
    output CH2_nCS,
    output CH2_SCLK,
    output CH2_SDI,
    output CH3_nCS,
    output CH3_SCLK,
    output CH3_SDI,
    output CH4_nCS,
    output CH4_SCLK,
    output CH4_SDI,
    output CH5_nCS,
    output CH5_SCLK,
    output CH5_SDI,
    output CH6_nCS,
    output CH6_SCLK,
    output CH6_SDI,
    output CH7_nCS,
    output CH7_SCLK,
    output CH7_SDI
    );
    
////DAC SETUP    
    reg IFBIPOLAR;
    
    initial begin
        LDAC_OUT = 1;
        IFBIPOLAR = 1;
    end
    
    reg [29-1:0]        TEN_CLKS;
    reg SPI_clk;
    initial TEN_CLKS = 0;
    assign CH0_SCLK = SPI_clk;
    assign CH1_SCLK = SPI_clk;
    assign CH2_SCLK = SPI_clk;
    assign CH3_SCLK = SPI_clk;
    assign CH4_SCLK = SPI_clk;
    assign CH5_SCLK = SPI_clk;
    assign CH6_SCLK = SPI_clk;
    assign CH7_SCLK = SPI_clk;
    
    always @(posedge clk) begin
        TEN_CLKS <= TEN_CLKS + 1;
    //TEN_CLKS[n] is 2^n time slower than clk(100Mhz)
        SPI_clk <= TEN_CLKS[3];
    end
    
    parameter SHIFT_REG_BYTES = 3;
    
    reg [3-1:0] Register_Bytes;
    initial Register_Bytes = SHIFT_REG_BYTES;
    reg [SHIFT_REG_BYTES*8-1:0] DAC_Data0;
    reg [SHIFT_REG_BYTES*8-1:0] DAC_Data1;
    reg [SHIFT_REG_BYTES*8-1:0] DAC_Data2;
    reg [SHIFT_REG_BYTES*8-1:0] DAC_Data3;
    reg [SHIFT_REG_BYTES*8-1:0] DAC_Data4;
    reg [SHIFT_REG_BYTES*8-1:0] DAC_Data5;
    reg [SHIFT_REG_BYTES*8-1:0] DAC_Data6;
    reg [SHIFT_REG_BYTES*8-1:0] DAC_Data7;
    reg [7:0]                   DAC_Ready;
    initial DAC_Ready = 8'b00000000;
    
    wire[7:0]                   DAC_Busy;
    wire BUSY_ANY;
    assign BUSY_ANY = (DAC_Busy[7] | DAC_Busy[6] | DAC_Busy[5] | DAC_Busy[4] | DAC_Busy[3] | DAC_Busy[2] | DAC_Busy[1] | DAC_Busy[0]);
    wire BUSY_ALL;
    assign BUSY_ALL = (DAC_Busy[7] & DAC_Busy[6] & DAC_Busy[5] & DAC_Busy[4] & DAC_Busy[3] & DAC_Busy[2] & DAC_Busy[1] & DAC_Busy[0]);
    wire wr_rcsbar0;
    assign CH0_nCS = wr_rcsbar0;
    wire wr_rcsbar1;
    assign CH1_nCS = wr_rcsbar1;
    wire wr_rcsbar2;
    assign CH2_nCS = wr_rcsbar2;
    wire wr_rcsbar3;
    assign CH3_nCS = wr_rcsbar3;
    wire wr_rcsbar4;
    assign CH4_nCS = wr_rcsbar4;
    wire wr_rcsbar5;
    assign CH5_nCS = wr_rcsbar5;
    wire wr_rcsbar6;
    assign CH6_nCS = wr_rcsbar6;
    wire wr_rcsbar7;
    assign CH7_nCS = wr_rcsbar7;
    wire SDIO_0;
    assign CH0_SDI = SDIO_0;
    wire SDIO_1;
    assign CH1_SDI = SDIO_1;
    wire SDIO_2;
    assign CH2_SDI = SDIO_2;
    wire SDIO_3;
    assign CH3_SDI = SDIO_3;
    wire SDIO_4;
    assign CH4_SDI = SDIO_4;
    wire SDIO_5;
    assign CH5_SDI = SDIO_5;
    wire SDIO_6;
    assign CH6_SDI = SDIO_6;
    wire SDIO_7;
    assign CH7_SDI = SDIO_7;
    
    
    WriteToRegister WTR00(.SPI_clk(SPI_clk), .register_Bytes(Register_Bytes), .registerData(DAC_Data0), .registerDataReady(DAC_Ready[0]), .busy(DAC_Busy[0]), .wr_rcsbar(wr_rcsbar0), .rsdio(SDIO_0));
    defparam WTR00.MAXLENGTH = SHIFT_REG_BYTES;
    defparam WTR00.MAXLENGTH8 = SHIFT_REG_BYTES * 8;
    WriteToRegister WTR01(.SPI_clk(SPI_clk), .register_Bytes(Register_Bytes), .registerData(DAC_Data1), .registerDataReady(DAC_Ready[1]), .busy(DAC_Busy[1]), .wr_rcsbar(wr_rcsbar1), .rsdio(SDIO_1));
    defparam WTR01.MAXLENGTH = SHIFT_REG_BYTES;
    defparam WTR01.MAXLENGTH8 = SHIFT_REG_BYTES * 8;
    WriteToRegister WTR02(.SPI_clk(SPI_clk), .register_Bytes(Register_Bytes), .registerData(DAC_Data2), .registerDataReady(DAC_Ready[2]), .busy(DAC_Busy[2]), .wr_rcsbar(wr_rcsbar2), .rsdio(SDIO_2));
    defparam WTR02.MAXLENGTH = SHIFT_REG_BYTES;
    defparam WTR02.MAXLENGTH8 = SHIFT_REG_BYTES * 8;
    WriteToRegister WTR03(.SPI_clk(SPI_clk), .register_Bytes(Register_Bytes), .registerData(DAC_Data3), .registerDataReady(DAC_Ready[3]), .busy(DAC_Busy[3]), .wr_rcsbar(wr_rcsbar3), .rsdio(SDIO_3));
    defparam WTR03.MAXLENGTH = SHIFT_REG_BYTES;
    defparam WTR03.MAXLENGTH8 = SHIFT_REG_BYTES * 8;
    WriteToRegister WTR04(.SPI_clk(SPI_clk), .register_Bytes(Register_Bytes), .registerData(DAC_Data4), .registerDataReady(DAC_Ready[4]), .busy(DAC_Busy[4]), .wr_rcsbar(wr_rcsbar4), .rsdio(SDIO_4));
    defparam WTR04.MAXLENGTH = SHIFT_REG_BYTES;
    defparam WTR04.MAXLENGTH8 = SHIFT_REG_BYTES * 8;
    WriteToRegister WTR05(.SPI_clk(SPI_clk), .register_Bytes(Register_Bytes), .registerData(DAC_Data5), .registerDataReady(DAC_Ready[5]), .busy(DAC_Busy[5]), .wr_rcsbar(wr_rcsbar5), .rsdio(SDIO_5));
    defparam WTR05.MAXLENGTH = SHIFT_REG_BYTES;
    defparam WTR05.MAXLENGTH8 = SHIFT_REG_BYTES * 8;
    WriteToRegister WTR06(.SPI_clk(SPI_clk), .register_Bytes(Register_Bytes), .registerData(DAC_Data6), .registerDataReady(DAC_Ready[6]), .busy(DAC_Busy[6]), .wr_rcsbar(wr_rcsbar6), .rsdio(SDIO_6));
    defparam WTR06.MAXLENGTH = SHIFT_REG_BYTES;
    defparam WTR06.MAXLENGTH8 = SHIFT_REG_BYTES * 8;
    WriteToRegister WTR07(.SPI_clk(SPI_clk), .register_Bytes(Register_Bytes), .registerData(DAC_Data7), .registerDataReady(DAC_Ready[7]), .busy(DAC_Busy[7]), .wr_rcsbar(wr_rcsbar7), .rsdio(SDIO_7));
    defparam WTR07.MAXLENGTH = SHIFT_REG_BYTES;
    defparam WTR07.MAXLENGTH8 = SHIFT_REG_BYTES * 8;

//// SERIAL COMMUNICATION SETUP    

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

//// ETC

    reg[16-1:0] DATA00;
    reg[16-1:0] DATA01;
    reg[16-1:0] DATA02;
    reg[16-1:0] DATA03;
    reg[16-1:0] DATA04;
    reg[16-1:0] DATA10;
    reg[16-1:0] DATA11;
    reg[16-1:0] DATA12;
    reg[16-1:0] DATA13;    
    reg[16-1:0] DATA20;
    reg[16-1:0] DATA21;
    reg[16-1:0] DATA22;
    reg[16-1:0] DATA23;
    reg[16-1:0] DATA30;
    reg[16-1:0] DATA31;
    reg[16-1:0] DATA32;
    reg[16-1:0] DATA33;
    reg[16-1:0] DATA40;
    reg[16-1:0] DATA41;
    reg[16-1:0] DATA42;
    reg[16-1:0] DATA43;
    reg[16-1:0] DATA50;
    reg[16-1:0] DATA51;
    reg[16-1:0] DATA52;
    reg[16-1:0] DATA53;
    reg[16-1:0] DATA60;
    reg[16-1:0] DATA61;
    reg[16-1:0] DATA62;
    reg[16-1:0] DATA63;
    reg[16-1:0] DATA70;
    reg[16-1:0] DATA71;
    reg[16-1:0] DATA72;
    reg[16-1:0] DATA73;
    
    wire[4*8-1:0] Str_In;
    assign Str_In = RXString[4*8-1:0];
    wire[16-1:0] Reg_In;
    string_to_16bit string_to_16bit(.StringIn(Str_In), .DataOut(Reg_In));
    
    reg[16-1:0] Reg_Out;
    wire[4*8-1:0] Str_Out;
    string_from_16bit string_from_16bit(.DataIn(Reg_Out), .StringOut(Str_Out));


    reg RXFLAG;
    initial RXFLAG = 0;

    reg[3:0] state;
    parameter IDLE = 4'h0;
    parameter MSG_IN = 4'h1;
    parameter TX_READOUT = 4'h2;
    parameter TX_SEND = 4'h3;
    parameter TX_WAIT_BUSY = 4'h4;
    parameter TX_WAIT_UNBUSY = 4'h5;
    parameter SPI_WAIT_BUSY_ANY = 4'h6;
    parameter SPI_WAIT_BUSY_ALL = 4'h6;
    parameter SPI_WAIT_UNBUSY = 4'h8;
    parameter HELLO = 4'hf;
    initial state = HELLO;
    
    always @(posedge clk) begin
    if(RXStringReady) RXFLAG <= 1;
    
    case (state)
        
        IDLE : begin
            LDAC_OUT <= 1;
            if(RXFLAG) begin
                RXFLAG <= 0;
                state <= MSG_IN;
            end
        end
        
        MSG_IN : begin
        
            if(RXString[5*8-1:0] == "*IDN?") begin
                TXLen <= 22;
                TXString <= "8CH DAC8734 CONTROLLER";
                state <= TX_SEND;
            end
           
          
            else if(RXString[4*8-1:3*8] == "M") begin
                DAC_Data0[24-1:16] <= 8'b00000001;
                DAC_Data0[16-1:11] <= 5'b00001;
                DAC_Data0[11-1:0] <= 10'b0000000000;
                DAC_Ready[0] <= 1;
                
                DAC_Data1[24-1:16] <= 8'b00000001;
                DAC_Data1[16-1:11] <= 5'b00001;
                DAC_Data1[11-1:0] <= 10'b0000000000;
                DAC_Ready[1] <= 1;
                
                DAC_Data2[24-1:16] <= 8'b00000001;
                DAC_Data2[16-1:11] <= 5'b00001;
                DAC_Data2[11-1:0] <= 10'b0000000000;
                DAC_Ready[2] <= 1;
                
                DAC_Data3[24-1:16] <= 8'b00000001;
                DAC_Data3[16-1:11] <= 5'b00001;
                DAC_Data3[11-1:0] <= 10'b0000000000;
                DAC_Ready[3] <= 1;
                
                DAC_Data4[24-1:16] <= 8'b00000001;
                DAC_Data4[16-1:11] <= 5'b00001;
                DAC_Data4[11-1:0] <= 10'b0000000000;
                DAC_Ready[4] <= 1;
                
                DAC_Data5[24-1:16] <= 8'b00000001;
                DAC_Data5[16-1:11] <= 5'b00001;
                DAC_Data5[11-1:0] <= 10'b0000000000;
                DAC_Ready[5] <= 1;
                
                DAC_Data6[24-1:16] <= 8'b00000001;
                DAC_Data6[16-1:11] <= 5'b00001;
                DAC_Data6[11-1:0] <= 10'b0000000000;
                DAC_Ready[6] <= 1;
                
                DAC_Data7[24-1:16] <= 8'b00000001;
                DAC_Data7[16-1:11] <= 5'b00001;
                DAC_Data7[11-1:0] <= 10'b0000000000;
                DAC_Ready[7] <= 1;
                
                if(RXString[3*8-1:0] == "00D") begin
                    DAC_Data0[24-1:16] <= 8'b00000001;
                    DAC_Data0[16-1:11] <= 5'b00010;
                    DAC_Data0[11-1:0] <= 10'b0000000000;
                    DAC_Ready[0] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "01D") begin
                    DAC_Data0[24-1:16] <= 8'b00000001;
                    DAC_Data0[16-1:11] <= 5'b00100;
                    DAC_Data0[11-1:0] <= 10'b0000000000;
                    DAC_Ready[0] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "02D") begin
                    DAC_Data0[24-1:16] <= 8'b00000001;
                    DAC_Data0[16-1:11] <= 5'b01000;
                    DAC_Data0[11-1:0] <= 10'b0000000000;
                    DAC_Ready[0] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "03D") begin
                    DAC_Data0[24-1:16] <= 8'b00000001;
                    DAC_Data0[16-1:11] <= 5'b10000;
                    DAC_Data0[11-1:0] <= 10'b0000000000;
                    DAC_Ready[0] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "10D") begin
                    DAC_Data1[24-1:16] <= 8'b00000001;
                    DAC_Data1[16-1:11] <= 5'b00010;
                    DAC_Data1[11-1:0] <= 10'b0000000000;
                    DAC_Ready[1] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "11D") begin
                    DAC_Data1[24-1:16] <= 8'b00000001;
                    DAC_Data1[16-1:11] <= 5'b00100;
                    DAC_Data1[11-1:0] <= 10'b0000000000;
                    DAC_Ready[1] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "12D") begin
                    DAC_Data1[24-1:16] <= 8'b00000001;
                    DAC_Data1[16-1:11] <= 5'b01000;
                    DAC_Data1[11-1:0] <= 10'b0000000000;
                    DAC_Ready[1] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "13D") begin
                    DAC_Data1[24-1:16] <= 8'b00000001;
                    DAC_Data1[16-1:11] <= 5'b10000;
                    DAC_Data1[11-1:0] <= 10'b0000000000;
                    DAC_Ready[1] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                 else if(RXString[3*8-1:0] == "20D") begin
                    DAC_Data2[24-1:16] <= 8'b00000001;
                    DAC_Data2[16-1:11] <= 5'b00010;
                    DAC_Data2[11-1:0] <= 10'b0000000000;
                    DAC_Ready[2] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "21D") begin
                    DAC_Data2[24-1:16] <= 8'b00000001;
                    DAC_Data2[16-1:11] <= 5'b00100;
                    DAC_Data2[11-1:0] <= 10'b0000000000;
                    DAC_Ready[2] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "22D") begin
                    DAC_Data2[24-1:16] <= 8'b00000001;
                    DAC_Data2[16-1:11] <= 5'b01000;
                    DAC_Data2[11-1:0] <= 10'b0000000000;
                    DAC_Ready[2] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "23D") begin
                    DAC_Data2[24-1:16] <= 8'b00000001;
                    DAC_Data2[16-1:11] <= 5'b10000;
                    DAC_Data2[11-1:0] <= 10'b0000000000;
                    DAC_Ready[2] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "30D") begin
                    DAC_Data3[24-1:16] <= 8'b00000001;
                    DAC_Data3[16-1:11] <= 5'b00010;
                    DAC_Data3[11-1:0] <= 10'b0000000000;
                    DAC_Ready[3] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "31D") begin
                    DAC_Data3[24-1:16] <= 8'b00000001;
                    DAC_Data3[16-1:11] <= 5'b00100;
                    DAC_Data3[11-1:0] <= 10'b0000000000;
                    DAC_Ready[3] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "32D") begin
                    DAC_Data3[24-1:16] <= 8'b00000001;
                    DAC_Data3[16-1:11] <= 5'b01000;
                    DAC_Data3[11-1:0] <= 10'b0000000000;
                    DAC_Ready[3] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "33D") begin
                    DAC_Data3[24-1:16] <= 8'b00000001;
                    DAC_Data3[16-1:11] <= 5'b10000;
                    DAC_Data3[11-1:0] <= 10'b0000000000;
                    DAC_Ready[3] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "40D") begin
                    DAC_Data4[24-1:16] <= 8'b00000001;
                    DAC_Data4[16-1:11] <= 5'b00010;
                    DAC_Data4[11-1:0] <= 10'b0000000000;
                    DAC_Ready[4] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "41D") begin
                    DAC_Data4[24-1:16] <= 8'b00000001;
                    DAC_Data4[16-1:11] <= 5'b00100;
                    DAC_Data4[11-1:0] <= 10'b0000000000;
                    DAC_Ready[4] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "42D") begin
                    DAC_Data4[24-1:16] <= 8'b00000001;
                    DAC_Data4[16-1:11] <= 5'b01000;
                    DAC_Data4[11-1:0] <= 10'b0000000000;
                    DAC_Ready[4] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "43D") begin
                    DAC_Data4[24-1:16] <= 8'b00000001;
                    DAC_Data4[16-1:11] <= 5'b10000;
                    DAC_Data4[11-1:0] <= 10'b0000000000;
                    DAC_Ready[4] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "50D") begin
                    DAC_Data5[24-1:16] <= 8'b00000001;
                    DAC_Data5[16-1:11] <= 5'b00010;
                    DAC_Data5[11-1:0] <= 10'b0000000000;
                    DAC_Ready[5] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "51D") begin
                    DAC_Data5[24-1:16] <= 8'b00000001;
                    DAC_Data5[16-1:11] <= 5'b00100;
                    DAC_Data5[11-1:0] <= 10'b0000000000;
                    DAC_Ready[5] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "52D") begin
                    DAC_Data5[24-1:16] <= 8'b00000001;
                    DAC_Data5[16-1:11] <= 5'b01000;
                    DAC_Data5[11-1:0] <= 10'b0000000000;
                    DAC_Ready[5] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "53D") begin
                    DAC_Data5[24-1:16] <= 8'b00000001;
                    DAC_Data5[16-1:11] <= 5'b10000;
                    DAC_Data5[11-1:0] <= 10'b0000000000;
                    DAC_Ready[5] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "60D") begin
                    DAC_Data6[24-1:16] <= 8'b00000001;
                    DAC_Data6[16-1:11] <= 5'b00010;
                    DAC_Data6[11-1:0] <= 10'b0000000000;
                    DAC_Ready[6] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "61D") begin
                    DAC_Data6[24-1:16] <= 8'b00000001;
                    DAC_Data6[16-1:11] <= 5'b00100;
                    DAC_Data6[11-1:0] <= 10'b0000000000;
                    DAC_Ready[6] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "62D") begin
                    DAC_Data6[24-1:16] <= 8'b00000001;
                    DAC_Data6[16-1:11] <= 5'b01000;
                    DAC_Data6[11-1:0] <= 10'b0000000000;
                    DAC_Ready[6] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "63D") begin
                    DAC_Data6[24-1:16] <= 8'b00000001;
                    DAC_Data6[16-1:11] <= 5'b10000;
                    DAC_Data6[11-1:0] <= 10'b0000000000;
                    DAC_Ready[6] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "70D") begin
                    DAC_Data7[24-1:16] <= 8'b00000001;
                    DAC_Data7[16-1:11] <= 5'b00010;
                    DAC_Data7[11-1:0] <= 10'b0000000000;
                    DAC_Ready[7] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "71D") begin
                    DAC_Data7[24-1:16] <= 8'b00000001;
                    DAC_Data7[16-1:11] <= 5'b00100;
                    DAC_Data7[11-1:0] <= 10'b0000000000;
                    DAC_Ready[7] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "72D") begin
                    DAC_Data7[24-1:16] <= 8'b00000001;
                    DAC_Data7[16-1:11] <= 5'b01000;
                    DAC_Data7[11-1:0] <= 10'b0000000000;
                    DAC_Ready[7] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else if(RXString[3*8-1:0] == "73D") begin
                    DAC_Data7[24-1:16] <= 8'b00000001;
                    DAC_Data7[16-1:11] <= 5'b10000;
                    DAC_Data7[11-1:0] <= 10'b0000000000;
                    DAC_Ready[7] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                
                else begin
                    TXLen <= 15;
                    TXString <= "Unknown Command";
                    state <= TX_SEND;
                end
            end
            
            else if(RXString[4*8-1:3*8] == "R") begin
                if(RXString[3*8-1:0] == "00D") begin
                    Reg_Out <= DATA00;
                    state <= TX_READOUT;
                end
                else if(RXString[3*8-1:0] == "01D") begin
                    Reg_Out <= DATA01;
                    state <= TX_READOUT;
                end
                else if(RXString[3*8-1:0] == "02D") begin
                    Reg_Out <= DATA02;
                    state <= TX_READOUT;
                end
                else if(RXString[3*8-1:0] == "03D") begin
                    Reg_Out <= DATA03;
                    state <= TX_READOUT;
                end
                else if(RXString[3*8-1:0] == "10D") begin
                    Reg_Out <= DATA10;
                    state <= TX_READOUT;
                end
                else if(RXString[3*8-1:0] == "11D") begin
                    Reg_Out <= DATA11;
                    state <= TX_READOUT;
                end
                else if(RXString[3*8-1:0] == "12D") begin
                    Reg_Out <= DATA12;
                    state <= TX_READOUT;
                end
                else if(RXString[3*8-1:0] == "13D") begin
                    Reg_Out <= DATA13;
                    state <= TX_READOUT;
                end
                else if(RXString[3*8-1:0] == "20D") begin
                    Reg_Out <= DATA20;
                    state <= TX_READOUT;
                end
                else if(RXString[3*8-1:0] == "21D") begin
                    Reg_Out <= DATA12;
                    state <= TX_READOUT;
                end                                                                                           
                else if(RXString[3*8-1:0] == "22D") begin
                    Reg_Out <= DATA22;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "23D") begin
                    Reg_Out <= DATA23;
                    state <= TX_READOUT;
                end                                                                                          
                else if(RXString[3*8-1:0] == "30D") begin
                    Reg_Out <= DATA30;
                    state <= TX_READOUT;
                end                                                                                           
                else if(RXString[3*8-1:0] == "31D") begin
                    Reg_Out <= DATA31;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "32D") begin
                    Reg_Out <= DATA32;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "33D") begin
                    Reg_Out <= DATA33;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "40D") begin
                    Reg_Out <= DATA40;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "41D") begin
                    Reg_Out <= DATA41;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "42D") begin
                    Reg_Out <= DATA42;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "43D") begin
                    Reg_Out <= DATA43;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "50D") begin
                    Reg_Out <= DATA50;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "51D") begin
                    Reg_Out <= DATA51;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "52D") begin
                    Reg_Out <= DATA52;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "53D") begin
                    Reg_Out <= DATA53;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "60D") begin
                    Reg_Out <= DATA60;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "61D") begin
                    Reg_Out <= DATA61;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "62D") begin
                    Reg_Out <= DATA62;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "63D") begin
                    Reg_Out <= DATA63;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "70D") begin
                    Reg_Out <= DATA70;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "71D") begin
                    Reg_Out <= DATA71;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "72D") begin
                    Reg_Out <= DATA72;
                    state <= TX_READOUT;
                end                                                                                                                
                else if(RXString[3*8-1:0] == "73D") begin
                    Reg_Out <= DATA73;
                    state <= TX_READOUT;
                end
                else begin
                    TXLen <= 15;
                    TXString <= "Unknown Command";
                    state <= TX_SEND;
                end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
            end
            
            else if(RXString[9*8-1:8*8] == "W") begin
                if(RXString[8*8-1:5*8] == "00D") begin
                    DATA00 <= Reg_In;
                    DAC_Data0[24-1:16] <= 8'b00000100;
                    DAC_Data0[16-1:0] <= Reg_In;
                    DAC_Ready[0] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                else if(RXString[8*8-1:5*8] == "01D") begin
                    DATA01 <= Reg_In;
                    DAC_Data0[24-1:16] <= 8'b00000101;
                    DAC_Data0[16-1:0] <= Reg_In;
                    DAC_Ready[0] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "02D") begin
                    DATA02 <= Reg_In;
                    DAC_Data0[24-1:16] <= 8'b00000110;
                    DAC_Data0[16-1:0] <= Reg_In;
                    DAC_Ready[0] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "03D") begin
                    DATA03 <= Reg_In;
                    DAC_Data0[24-1:16] <= 8'b00000111;
                    DAC_Data0[16-1:0] <= Reg_In;
                    DAC_Ready[0] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "10D") begin
                    DATA10 <= Reg_In;
                    DAC_Data1[24-1:16] <= 8'b00000100;
                    DAC_Data1[16-1:0] <= Reg_In;
                    DAC_Ready[1] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "11D") begin
                    DATA11 <= Reg_In;
                    DAC_Data1[24-1:16] <= 8'b00000101;
                    DAC_Data1[16-1:0] <= Reg_In;
                    DAC_Ready[1] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "12D") begin
                    DATA12 <= Reg_In;
                    DAC_Data1[24-1:16] <= 8'b00000110;
                    DAC_Data1[16-1:0] <= Reg_In;
                    DAC_Ready[1] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "13D") begin
                    DATA13 <= Reg_In;
                    DAC_Data1[24-1:16] <= 8'b00000111;
                    DAC_Data1[16-1:0] <= Reg_In;
                    DAC_Ready[1] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "20D") begin
                    DATA20 <= Reg_In;
                    DAC_Data2[24-1:16] <= 8'b00000100;
                    DAC_Data2[16-1:0] <= Reg_In;
                    DAC_Ready[2] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "21D") begin
                    DATA21 <= Reg_In;
                    DAC_Data2[24-1:16] <= 8'b00000101;
                    DAC_Data2[16-1:0] <= Reg_In;
                    DAC_Ready[2] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "22D") begin
                    DATA22 <= Reg_In;
                    DAC_Data2[24-1:16] <= 8'b00000110;
                    DAC_Data2[16-1:0] <= Reg_In;
                    DAC_Ready[2] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "23D") begin
                    DATA23 <= Reg_In;
                    DAC_Data2[24-1:16] <= 8'b00000111;
                    DAC_Data2[16-1:0] <= Reg_In;
                    DAC_Ready[2] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "30D") begin
                    DATA30 <= Reg_In;
                    DAC_Data3[24-1:16] <= 8'b00000100;
                    DAC_Data3[16-1:0] <= Reg_In;
                    DAC_Ready[3] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "31D") begin
                    DATA31 <= Reg_In;
                    DAC_Data3[24-1:16] <= 8'b00000101;
                    DAC_Data3[16-1:0] <= Reg_In;
                    DAC_Ready[3] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "32D") begin
                    DATA32 <= Reg_In;
                    DAC_Data3[24-1:16] <= 8'b00000110;
                    DAC_Data3[16-1:0] <= Reg_In;
                    DAC_Ready[3] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "33D") begin
                    DATA33 <= Reg_In;
                    DAC_Data3[24-1:16] <= 8'b00000111;
                    DAC_Data3[16-1:0] <= Reg_In;
                    DAC_Ready[3] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "40D") begin
                    DATA40 <= Reg_In;
                    DAC_Data4[24-1:16] <= 8'b00000100;
                    DAC_Data4[16-1:0] <= Reg_In;
                    DAC_Ready[4] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "41D") begin
                    DATA41 <= Reg_In;
                    DAC_Data4[24-1:16] <= 8'b00000101;
                    DAC_Data4[16-1:0] <= Reg_In;
                    DAC_Ready[4] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "42D") begin
                    DATA42 <= Reg_In;
                    DAC_Data4[24-1:16] <= 8'b00000110;
                    DAC_Data4[16-1:0] <= Reg_In;
                    DAC_Ready[4] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "43D") begin
                    DATA43 <= Reg_In;
                    DAC_Data4[24-1:16] <= 8'b00000111;
                    DAC_Data4[16-1:0] <= Reg_In;
                    DAC_Ready[4] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "50D") begin
                    DATA50 <= Reg_In;
                    DAC_Data5[24-1:16] <= 8'b00000100;
                    DAC_Data5[16-1:0] <= Reg_In;
                    DAC_Ready[5] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "51D") begin
                    DATA51 <= Reg_In;
                    DAC_Data5[24-1:16] <= 8'b00000101;
                    DAC_Data5[16-1:0] <= Reg_In;
                    DAC_Ready[5] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "52D") begin
                    DATA52 <= Reg_In;
                    DAC_Data5[24-1:16] <= 8'b00000110;
                    DAC_Data5[16-1:0] <= Reg_In;
                    DAC_Ready[5] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "53D") begin
                    DATA53 <= Reg_In;
                    DAC_Data5[24-1:16] <= 8'b00000111;
                    DAC_Data5[16-1:0] <= Reg_In;
                    DAC_Ready[5] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end
                                                
                else if(RXString[8*8-1:5*8] == "60D") begin
                    DATA60 <= Reg_In;
                    DAC_Data6[24-1:16] <= 8'b00000100;
                    DAC_Data6[16-1:0] <= Reg_In;
                    DAC_Ready[6] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "61D") begin
                    DATA61 <= Reg_In;
                    DAC_Data6[24-1:16] <= 8'b00000101;
                    DAC_Data6[16-1:0] <= Reg_In;
                    DAC_Ready[6] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "62D") begin
                    DATA62 <= Reg_In;
                    DAC_Data6[24-1:16] <= 8'b00000110;
                    DAC_Data6[16-1:0] <= Reg_In;
                    DAC_Ready[6] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "63D") begin
                    DATA63 <= Reg_In;
                    DAC_Data6[24-1:16] <= 8'b00000111;
                    DAC_Data6[16-1:0] <= Reg_In;
                    DAC_Ready[6] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "70D") begin
                    DATA70 <= Reg_In;
                    DAC_Data7[24-1:16] <= 8'b00000100;
                    DAC_Data7[16-1:0] <= Reg_In;
                    DAC_Ready[7] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "71D") begin
                    DATA71 <= Reg_In;
                    DAC_Data7[24-1:16] <= 8'b00000101;
                    DAC_Data7[16-1:0] <= Reg_In;
                    DAC_Ready[7] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "72D") begin
                    DATA72 <= Reg_In;
                    DAC_Data7[24-1:16] <= 8'b00000110;
                    DAC_Data7[16-1:0] <= Reg_In;
                    DAC_Ready[7] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else if(RXString[8*8-1:5*8] == "73D") begin
                    DATA73 <= Reg_In;
                    DAC_Data7[24-1:16] <= 8'b00000111;
                    DAC_Data7[16-1:0] <= Reg_In;
                    DAC_Ready[7] <= 1;
                    TXLen <= 12;
                    TXString <= "Data Fetched";
                    state <= SPI_WAIT_BUSY_ANY;
                end                
                else begin
                    TXLen <= 15;
                    TXString <= "Unknown Command";
                    state <= TX_SEND;
                end
            end
            
            else if(RXString[7*8-1:0] == "TRIGGER") begin
                LDAC_OUT <= 0;
                TXLen <= 11;
                TXString <= "DAC Updated";
                state <= TX_SEND;
            end
            
            else if(RXString[5*8-1:0] == "RESET") begin
                DAC_Data0 <= 24'b000000000010000000000000;
                DAC_Data1 <= 24'b000000000010000000000000;
                DAC_Data2 <= 24'b000000000010000000000000;
                DAC_Data3 <= 24'b000000000010000000000000;
                DAC_Data4 <= 24'b000000000010000000000000;
                DAC_Data5 <= 24'b000000000010000000000000;
                DAC_Data6 <= 24'b000000000010000000000000;
                DAC_Data7 <= 24'b000000000010000000000000;
                DAC_Ready <= 8'b11111111;
                DATA00 <= 16'b0000000000000000;
                DATA01 <= 16'b0000000000000000;
                DATA02 <= 16'b0000000000000000;
                DATA03 <= 16'b0000000000000000;
                DATA10 <= 16'b0000000000000000;
                DATA11 <= 16'b0000000000000000;
                DATA12 <= 16'b0000000000000000;
                DATA13 <= 16'b0000000000000000;
                DATA20 <= 16'b0000000000000000;
                DATA21 <= 16'b0000000000000000;
                DATA22 <= 16'b0000000000000000;
                DATA23 <= 16'b0000000000000000;
                DATA30 <= 16'b0000000000000000;
                DATA31 <= 16'b0000000000000000;
                DATA32 <= 16'b0000000000000000;
                DATA33 <= 16'b0000000000000000;
                DATA40 <= 16'b0000000000000000;
                DATA41 <= 16'b0000000000000000;
                DATA42 <= 16'b0000000000000000;
                DATA43 <= 16'b0000000000000000;
                DATA50 <= 16'b0000000000000000;
                DATA51 <= 16'b0000000000000000;
                DATA52 <= 16'b0000000000000000;
                DATA53 <= 16'b0000000000000000;
                DATA60 <= 16'b0000000000000000;
                DATA61 <= 16'b0000000000000000;
                DATA62 <= 16'b0000000000000000;
                DATA63 <= 16'b0000000000000000;
                DATA70 <= 16'b0000000000000000;
                DATA71 <= 16'b0000000000000000;
                DATA72 <= 16'b0000000000000000;
                DATA73 <= 16'b0000000000000000;
                TXLen <= 9;
                TXString <= "DAC RESET";
                state <= SPI_WAIT_BUSY_ALL;
            end
            
            else begin
                TXLen <= 15;
                TXString <= "Unknown Command";
                state <= TX_SEND;
            end
        end
        
        SPI_WAIT_BUSY_ANY : begin
            if(BUSY_ANY) begin
                DAC_Ready <= 8'b00000000;
                state <= SPI_WAIT_UNBUSY;
            end
        end
        
        SPI_WAIT_BUSY_ALL : begin
            if(BUSY_ALL) begin
                DAC_Ready <= 8'b00000000;
                state <= SPI_WAIT_UNBUSY;
            end
        end        
        
        SPI_WAIT_UNBUSY : begin
            if(!BUSY_ANY) state <= TX_SEND;
        end
        
        TX_READOUT : begin
            TXLen <= 4;
            TXString <= Str_Out;
            state <= TX_SEND;
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
        
    endcase
    
    end
 
endmodule
