`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Seoul National university CNL quantum computing group
// Engineer: Jiyong Yu
// 
// Create Date: 2019/12/09 15:30:30
// Design Name: Raman laser dds controller
// Module Name: main
// Project Name: 
// Target Devices: xilinx arty s7 fpga -> Libertron fpga was replaced by arty s7
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
    input Uart_RXD,
	output Uart_TXD,
	input clk,

	// DDS
	output rsclk0,
	output rcsbar00,
	output rcsbar01,
	output rsdio00,
	output rsdio01,
	
	output reg ResetDDS0,
	output reg PowerDown00,
	output reg PowerDown01,
	

	// ADC
	input  ADC__BCS_bar,
	input  ADC__BDn2,
	input  ADC__BDn1,
	input  ADC__DBUSY_bar,
	input  ADC__BD0,
	input  ADC__BD1,
	input  ADC__BD2,
	input  ADC__BD3,
	input  ADC__BD4,
	input  ADC__BD5,
	input  ADC__BD6,
	input  ADC__BD7,
	input  ADC__BD8,
	input  ADC__BD9,
	input  ADC__BD10,
	input  ADC__BD11,
	input  ADC__BD12,
	input  ADC__BD13,
	input  ADC__BD14,
	input  ADC__BD15
	
    );
    
    ////////////////////////////////////////////////////////////////
	//  Serial communication setup for arty s7 fpga
	////////////////////////////////////////////////////////////////
    parameter ClkFreq = 100000000; // arty S7 default fpga clock
    parameter BaudRate = 57600;
    
    ////////////////////////////////////////////////////////////////
	//  String Reader
	////////////////////////////////////////////////////////////////
	
	parameter RX_STRING_COUNT_BIT = 5;
	parameter RX_STRING_MAX_LENGTH = 16; // max : 2^RX_STRING_COUNT_BIT-1
										  // MIN : I need 16 letters to receive full-range frequency change command (8-byte command written in 16 hex letters)
	parameter RX_STRING_MAX_BIT_LENGTH = RX_STRING_MAX_LENGTH * 8;
	parameter RX_NUMBER_MAX_BIT_LENGTH = RX_STRING_MAX_LENGTH * 4;
	
	wire 											RXStringReady;
	wire [RX_STRING_MAX_BIT_LENGTH-1:0] RXString;
	wire [RX_STRING_COUNT_BIT-1:0] 		RXStringLen;
	
	wire 											RX_FLAG_Number;
	wire [RX_NUMBER_MAX_BIT_LENGTH-1:0] RXNumber;
	 

	string_reader STR_READER(.clk(clk), .Uart_RXD(Uart_RXD), 
					.RXStringReady(RXStringReady), .RXString(RXString), .RXNumber(RXNumber), 
					.RXStringLen(RXStringLen), .RX_FLAG_Number(RX_FLAG_Number));
									
	defparam STR_READER.RX_STRING_COUNT_BIT 	= RX_STRING_COUNT_BIT;
	defparam STR_READER.RX_STRING_MAX_LENGTH  = RX_STRING_MAX_LENGTH;
	defparam STR_READER.RX_STRING_MAX_BIT_LENGTH 	= RX_STRING_MAX_BIT_LENGTH;
	defparam STR_READER.RX_NUMBER_MAX_BIT_LENGTH 	= RX_NUMBER_MAX_BIT_LENGTH;
	defparam STR_READER.ClkFreq 	= ClkFreq;
	defparam STR_READER.BaudRate = BaudRate;
	
	// This is used to signal 'New String Received'
	// It is needed, as we new use many 'MODEs' and some modes cannot check RXStringReady continously.
	reg STR_RX_FLAG; 
	initial STR_RX_FLAG = 0;

	/////////////////////////////////////////////////////////////////
	// String Sender
	/////////////////////////////////////////////////////////////////
		
	parameter TX_STRING_COUNT_BIT = 5;
	parameter TX_STRING_MAX_LENGTH = 16; // max : 2^TX_STRING_COUNT_BIT-1 -2 for terminators
	parameter TX_STRING_MAX_BIT_LENGTH = TX_STRING_MAX_LENGTH * 8;
	
	reg [TX_STRING_COUNT_BIT-1:0] TXStringLen;
	reg [TX_STRING_MAX_BIT_LENGTH-1:0] TXString;
	reg TXStringReady;
	initial begin
		TXStringLen = 0;
		TXString = 0;
		TXStringReady = 0;
	end
	
	wire TXStringBusy;
	
	string_sender STR_SENDER(.clk(clk), .TxD(Uart_TXD), 
					.TXStringLen(TXStringLen), .TXString(TXString),
					.TXStringReady(TXStringReady), .TXStringBusy(TXStringBusy) );

	defparam STR_SENDER.TX_STRING_COUNT_BIT = TX_STRING_COUNT_BIT;
	defparam STR_SENDER.TX_STRING_MAX_LENGTH = TX_STRING_MAX_LENGTH;
	defparam STR_SENDER.TX_STRING_MAX_BIT_LENGTH = TX_STRING_MAX_BIT_LENGTH;
	defparam STR_SENDER.ClkFrequency = ClkFreq;
	defparam STR_SENDER.Baud = BaudRate;
	
	
	
	
	////////////////////////////////////////////////////////////////
	// DDS Control
	////////////////////////////////////////////////////////////////
		
	parameter DDS_COMMAND_LENGTH_BIT = 4;
	parameter DDS_COMMAND_BYTE = 8;  // max : 2^DDS_COMMAND_LENGTH_BIT-1
	parameter DDS_COMMAND_BIT = DDS_COMMAND_BYTE*8;

	// Input
	reg [3:0] ChipSelect; // Can select up to 4 DDS simultaneously
	reg [DDS_COMMAND_LENGTH_BIT-1:0] DDS_Data_Bytes;
	reg [DDS_COMMAND_BIT-1:0] 			DDS_Data;
	reg 										DDS_Data_Ready;
	initial DDS_Data_Ready = 0;

	// Output
	wire [3:0] DDS_PROBE;  // For Debugging
	wire DDS_Busy;

	DDSControl DDS(.clk100MHz(clk), 
						.PROBE(DDS_PROBE),
						.ChipSelect(ChipSelect), .DDS_Data_Ready(DDS_Data_Ready), 
						.DDS_Data_Bytes(DDS_Data_Bytes), .DDS_Data(DDS_Data), 
						.DDS_Busy(DDS_Busy),
	               .rsclk0(rsclk0),
	               .rcsbar00(rcsbar00), .rsdio00(rsdio00), .rcsbar01(rcsbar01), .rsdio01(rsdio01)
						);

   defparam DDS.LENGTH_BIT_COUNT = DDS_COMMAND_LENGTH_BIT ;
   defparam DDS.MAXLENGTH = DDS_COMMAND_BYTE ;
   defparam DDS.MAXLENGTH8 = DDS_COMMAND_BIT ;

	// DDS Power Level Save
	reg [8*2-1:0] DDS_PWR_0;
	reg [8*2-1:0] DDS_PWR_1;
	
	////////////////////////////////////////////////////////////////
	// ADC Control
	////////////////////////////////////////////////////////////////
	

	// ADC Ready Tick
	reg ADC_RDY_Bar_Now;
	reg ADC_RDY_Bar_PAST;
	always @(posedge clk) begin
		ADC_RDY_Bar_Now <= ADC__DBUSY_bar;
		ADC_RDY_Bar_PAST <= ADC_RDY_Bar_Now;
	end
	wire ADC_Ready;
	assign ADC_Ready = ((!ADC_RDY_Bar_Now) && (ADC_RDY_Bar_PAST));

	
	// ADC Data
	parameter ADC_BYTE = 2;
	parameter ADC_BIT = 16;
	wire [ADC_BIT-1:0] ADC_Data;
	assign ADC_Data = {ADC__BD15, ADC__BD14, ADC__BD13, ADC__BD12, ADC__BD11, ADC__BD10,
							ADC__BD9, ADC__BD8, ADC__BD7, ADC__BD6, ADC__BD5, ADC__BD4, 
							ADC__BD3, ADC__BD2, ADC__BD1, ADC__BD0};
	
	
	// ADC Data SUM				
	parameter ADC_SUM_BYTE = 5;
	parameter ADC_SUM_BIT = 40;
	reg [ADC_SUM_BIT-1 : 0] adc_sum;
	reg [ADC_SUM_BIT-ADC_BIT-1:0] adc_sum_count;
	reg [ADC_SUM_BIT-ADC_BIT-1:0] adc_sum_count_TARGET;


	// FIFO
	parameter FIFO_Width_BIT = ADC_SUM_BIT;
	parameter FIFO_Depth_BIT = 12;
	
	reg fifo_rst;
	reg fifo_wr_en;
	reg fifo_rd_en;	
	wire [FIFO_Width_BIT-1 : 0] fifo_dout;
	wire fifo_full;
	wire fifo_empty;
	wire [FIFO_Depth_BIT-1:0] fifo_data_count; 
	
	FIFO ADC_FIFO (
	  .clk(clk), // input clk
	  .srst(fifo_rst), // input rst
	  .din(adc_sum), // input 
	  .wr_en(fifo_wr_en), // input wr_en
	  .rd_en(fifo_rd_en), // input rd_en
	  .dout(fifo_dout), // output
	  .full(fifo_full), // output full
	  .empty(fifo_empty), // output empty
	  .data_count(fifo_data_count) // output data_count
    );
			
	reg [FIFO_Depth_BIT-1:0] adc_store_count_TARGET; // max number of data stored 2^10 
	
	////////////////////////////////////////////////////////////////
	//  PLL : Lock Circuit Control
	////////////////////////////////////////////////////////////////

	parameter FTW_BYTE = 6;
	parameter FTW_BIT = 48;
	parameter PI_FACTOR_BYTE = 3;
	parameter PI_FACTOR_BIT = 20; // Must be larger than 16 (see initial P_mul)
	parameter ERROR_ACCUM_BIT = 2;
	parameter PI_PWR_DIV_BIT = 2;

	reg [PI_FACTOR_BIT-1:0] P_mul;
	reg [PI_FACTOR_BIT-1:0] I_mul;
	reg [PI_PWR_DIV_BIT-1:0] P_DIV;
	reg [PI_PWR_DIV_BIT-1:0] I_DIV;
		
	reg [ERROR_ACCUM_BIT-1: 0] PLL_ERR_ACCUM; // accumates by powers of 2
	reg [ADC_BIT-1:0] 			Target_ADC;

	reg Cutoff_Enable;
	reg [ADC_BIT-1:0] ADC_Upper;
	reg [ADC_BIT-1:0] ADC_Lower;

	initial P_mul = {PI_FACTOR_BIT{1'b0}} + 16'h3000;
	initial I_mul = {PI_FACTOR_BIT{1'b0}} + 16'h0300;
	initial P_DIV = 0;
	initial I_DIV = 0;
	initial PLL_ERR_ACCUM = 0;
	initial Cutoff_Enable = 0;

	reg [PI_PWR_DIV_BIT-1:0] shift_counter;
	initial shift_counter = 0;

	reg PLL_ERR_Sign; // 1 for positive, 0 for negative

	parameter ADDR_BIT = 3;
	parameter RAM_ADDR__FTW_DDS1		= 3'b000;
	parameter RAM_ADDR__FTW_DDS2		= 3'b001;  // This accumulates 'I' value  ('P' value is added only when DDS is written)
	parameter RAM_ADDR__PLL_ERR		= 3'b011;
	parameter RAM_ADDR__PLL_P			= 3'b100;
	parameter RAM_ADDR__PLL_I			= 3'b101;
	parameter RAM_ADDR__FTW_DDS2_OLD	= 3'b110;  // This is used only for reviewing purpose
	parameter RAM_ADDR__FTW_DDS2_w_P	= 3'b111;  // Actually "Applied" value while in the RUN_MODE

	reg [ADDR_BIT-1:0] ram_addr;
	reg [FTW_BIT-1:0] ram_din;
	wire [FTW_BIT-1:0] ram_dout;
	reg ram_we;
	
	// edited by jiyong, 2020/01/31
	// This variable is used for using single pass dds's signal as double pass aom signal so that we can apply two signal simultaneously to double pass AOM
	// Original lock frequency of single AOM is approximately 210 MHZ and half is 105MHZ
	// This variable saves offeset values with respect to 105MHZ
	// For example, if our target frequency is 190MHZ, offset value 85MHZ is save to this register
	reg [FTW_BIT-1:0] offset_wrt_lockfreq;

	RAM FTW_RAM(
	 .addra(ram_addr[ADDR_BIT-1:0]), 
	 .clka(clk),
	 .dina(ram_din[FTW_BIT-1:0]), 
	 .douta(ram_dout[FTW_BIT-1:0]), 
	 .wea(ram_we)
	); // NOTE: Read has 1 Clock Latency. i.e. You change address -> (next clock) address changed -> (next clock) dout value changes
		//  Write has 0 Clock Latency.  i.e. You change address and din -> (next clock) din value is saved at the address.
    
    
    
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////
	//  MODE Management
	////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	parameter MODE_BIT         = 4;
	parameter MODE__INIT 		= 4'h0; // Home Mode
	parameter MODE__RUN 		= 4'h1; // Home Mode
	parameter MODE__Back2Home 	= 4'h2;
	parameter MODE__TX_STRING 	= 4'h3;
	parameter MODE__RAM_READ  	= 4'h4;
	parameter MODE__RAM_WRITE 	= 4'h5;
	parameter MODE__REG_SET 	= 4'h6;
	parameter MODE__REG_GET 	= 4'h7;
	parameter MODE__DDS_WRITE 	= 4'ha;

	reg [MODE_BIT-1:0] MODE;
	initial MODE = MODE__Back2Home; // Start at B2H mode, so that all FSM states are initialized.

	reg [MODE_BIT-1:0] HOME_Mode_Saved;
	initial HOME_Mode_Saved = MODE__INIT; 

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////
	//  FSM 1 - Initialization Mode
	////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	// FSM States
	reg [8-1:0] state;

	parameter IDLE 		= 8'h00;
	
	parameter Unkwon_Command_Entered =8'h10;

	parameter SET_DDS_FREQ__get_dds_num			= 8'h30;
	parameter SET_DDS_FREQ__Save_FTW_in_Ram 	= 8'h31;
	parameter SET_DDS_FREQ__FTW_Read_Latency	= 8'h32;
    
	parameter SET_DDS_PWR__get_dds_num	= 8'h40;
	parameter SET_DDS_PWR__get_pwr_lvl	= 8'h41;
	parameter SET_DDS_PWR__wait_busy		= 8'h42;
	parameter SET_DDS_PWR__wait_finish	= 8'h43;
	
	parameter GET_ADC	 					= 8'h60;

	parameter Record_ADC__Prep		 	= 8'h70;
	parameter Record_ADC__Ready	 	= 8'h71;
	parameter Record_ADC__SUM_Start	= 8'h72;
	parameter Record_ADC__SUM_Check	= 8'h73;
	parameter Record_ADC__FIFO_Check	= 8'h74;

	parameter Print_ADC__Print_length		= 8'h80;
	parameter Print_ADC__Print_length_wait	= 8'h81;
	parameter Print_ADC__Print_Wait			= 8'h82;
	parameter Print_ADC__Read_Latency		= 8'h83;
	parameter Print_ADC__Print					= 8'h84;
	parameter Print_ADC__Print2				= 8'h85;
	parameter Print_ADC__Finished				= 8'h86;
	
	parameter Single_Cycle__GoGoGo			= 8'h90;
	
	// SET/GET Reg
	reg [RX_STRING_MAX_BIT_LENGTH-1:0] Register_Name;

	// For Single_Cycle__GoGoGo
	reg STOP_Flag;
	initial STOP_Flag = 0;





	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////
	//  FSM 2 - Run Mode
	////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	// FSM States
	reg [8-1:0] RUN_state;	

	parameter run__INIT  						= 8'h00;
	parameter run__ADC_Accumulate				= 8'h01;
	parameter run__ADC_Accum_Check				= 8'h02;	
	parameter run__OLD_FTW_Read_Latency		= 8'h03;	
	parameter run__Save_OLD_FTW_DD2			= 8'h04;	
	parameter run__Save_PLL_ERR				= 8'h05;	
	parameter run__PLL_ERR_Latency				= 8'h06;	
	parameter run__Calc_I						= 8'h07;	
	parameter run__I_Value_Latency				= 8'h08;	
	parameter run__Update_FTW_Prep				= 8'h09;	
	parameter run__Update_FTW_Shift 			= 8'h10;	
	parameter run__Update_FTW					= 8'h11;	
	parameter run__Load_PLL_ERR				= 8'h12;	
	parameter run__PLL_ERR_Load_Latency		= 8'h13;	
	parameter run__Calc_P						= 8'h14;	
	parameter run__P_Value_Latency				= 8'h15;	
	parameter run__Update_FTW_APPLIED_Prep		= 8'h16;	
	parameter run__Update_FTW_APP_Shift		= 8'h17;	
	parameter run__Update_FTW_APPLIED			= 8'h18;	
	parameter run__FTW_APPLIED_Latency			= 8'h19;	

	
	// Set_DDS, while locked
	reg SET_DDS_STEP_1;
	reg SET_DDS_STEP_2;
	initial SET_DDS_STEP_1 = 0;
	initial SET_DDS_STEP_2 = 0;
	

	// Requests
	reg FTW_REQ;
	initial FTW_REQ  = 0;






	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////
	//  FSM 3~F - WORK MODEs
	////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


	// MODE__TX_STRING 
	reg [2-1:0] str_state;	
	parameter str__TX_STRING 					= 2'b00;
	parameter str__TX_STRING__WAIT_FOR_BUSY 	= 2'b01;
	parameter str__TX_STRING__WAIT_FOR_FINISH  = 2'b10;


	// MODE__RAM_Write
	reg [2-1:0] ramW_state;	
	parameter ramW__get_address	= 2'b00;
	parameter ramW__get_value		= 2'b01;
	parameter ramW__write_wait		= 2'b10;


	// MODE__RAM_Read
	reg [2-1:0] ramR_state;	
	parameter ramR__get_address	= 2'b00;
	parameter ramR__wait_latency	= 2'b01;
	parameter ramR__print			= 2'b10;


 	// MODE__REG_SET
	reg [1-1:0] regS_state;	
	parameter regS__get_reg_name	= 1'b0;
	parameter regS__get_reg_value	= 1'b1;


	// MODE__REG_GET
	reg [1-1:0] regG_state;	
	parameter regG__get_reg_name	    = 1'b0;
	parameter regG__print_reg_value    = 1'b1;
	
	
	// MODE__DDS_WRITE
	reg [4-1:0] ddsW_state;	
	parameter ddsW__Start							= 4'b0000;	
	parameter ddsW__Write_DDS						= 4'b0001;	
	parameter ddsW__SET_DDS_FREQ__wait_busy		= 4'b0010;	
	parameter ddsW__SET_DDS_FREQ__wait_finish		= 4'b0011;	
	parameter ddsW__SET_DDS_FREQ__wait_busy2		= 4'b0100;	
	parameter ddsW__SET_DDS_FREQ__wait_finish2	    = 4'b0101;	
    
    // this state is added for single raman beam
    parameter ddsW__SET_DDS_FREQ__cal_port1 = 4'b0110;
    parameter ddsW__SET_DDS_FREQ__cal_port1_latency = 4'b0111;
    parameter ddsW__Write_DDS_port1						= 4'b1000;
	parameter ddsW__SET_DDS_FREQ__wait_busy_port1		= 4'b1001;	
    parameter ddsW__SET_DDS_FREQ__wait_finish_port1		= 4'b1010;	
	parameter ddsW__SET_DDS_FREQ__wait_busy2_port1		= 4'b1011;	






	always @ (posedge clk) begin
	
		// STR_RX_FLAG  - This FLAG must be put down after you process new string
		if (RXStringReady) begin
			STR_RX_FLAG <= 1;
		end
			
		
		
		case (MODE)

	
			
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//                                 INIT MODE
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			
			MODE__INIT : begin
				HOME_Mode_Saved <= MODE;

				case (state)
					IDLE : begin

						// NOT Used Yet
						ResetDDS0 <= 0;
						PowerDown00 <= 0;
						PowerDown01 <= 0;
					
						


						// When Command is received
						// NOTE : command RXString max length = 16
						if (STR_RX_FLAG) begin
							STR_RX_FLAG <= 0;
						
							// Default : Unknwon Command
							state <= Unkwon_Command_Entered;

							// MODE Commands
							if (RXString[8*5-1:0] == "MODE?") begin  // 5 letters
								TXStringLen <= 1;
								TXString[8*1-1:0] <= "I";
								MODE <= MODE__TX_STRING;
							end
							if (RXString[8*3-1:0] == "RUN") begin  // 3 letters
								HOME_Mode_Saved <= MODE__RUN;
								MODE <= MODE__Back2Home;
							end

							// Read-Write
							if (RXString[8*9-1:0] == "WRITE_RAM") begin  // 9 letters
								MODE <= MODE__RAM_WRITE;
							end
							if (RXString[8*8-1:0] == "READ_RAM") begin  // 8 letters
								MODE <= MODE__RAM_READ;
							end
							if (RXString[8*7-1:0] == "SET_REG") begin  // 7 letters
								MODE <= MODE__REG_SET;
							end
							if (RXString[8*7-1:0] == "GET_REG") begin  // 7 letters
								MODE <= MODE__REG_GET;
							end

							// Others
							if (RXString[8*12-1:0] == "SET_DDS_FREQ") begin  // 12 letters
								state <= SET_DDS_FREQ__get_dds_num;
							end
							if (RXString[8*11-1:0] == "SET_DDS_PWR") begin  // 11 letters
								state <= SET_DDS_PWR__get_dds_num;
							end
							if (RXString[8*7-1:0] == "GET_ADC") begin  // 7 letters
								state <= GET_ADC;
							end
							if (RXString[8*10-1:0] == "Record_ADC") begin  // 10 letters
								state <= Record_ADC__Prep;
							end
							if (RXString[8*9-1:0] == "Print_ADC") begin  // 9 letters
								state <= Print_ADC__Print_length;
							end
							if (RXString[8*12-1:0] == "Single_Cycle") begin  // 12 letters
								state <= Single_Cycle__GoGoGo;
							end
						end
					end

					Unkwon_Command_Entered: begin
						TXStringLen <= 13;
						TXString[8*13-1:0] <= "WRONG_COMMAND";
						MODE <= MODE__TX_STRING;
					end
					
					



					
					
					//////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////////////////////////////////////////////
					// DDS Freq Write
					//////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////////////////////////////////////////////

					
					SET_DDS_FREQ__get_dds_num	: begin
						if (STR_RX_FLAG) begin
							STR_RX_FLAG <= 0;
							ChipSelect <= RXNumber[4-1:0];
							state <= SET_DDS_FREQ__Save_FTW_in_Ram;
						end
					end					

					SET_DDS_FREQ__Save_FTW_in_Ram	: begin
						if (STR_RX_FLAG) begin
							STR_RX_FLAG <= 0;
							
							if (ChipSelect[0]) begin
							     // just save offset value in fegister
							     offset_wrt_lockfreq <= RXNumber[FTW_BIT-1:0];
							     state <= IDLE;
							     
							     /*
							    ram_addr <= RAM_ADDR__FTW_DDS1;
							    ram_din <= RXNumber[FTW_BIT-1:0];
                                ram_we <= 1;
                                state <= SET_DDS_FREQ__FTW_Read_Latency;
                                */
							end
							
							if (ChipSelect[1]) begin
                                ram_addr <= RAM_ADDR__FTW_DDS2;
                                ram_din <= RXNumber[FTW_BIT-1:0];
                                ram_we <= 1;
                                state <= SET_DDS_FREQ__FTW_Read_Latency;
							end
						end
					end
								
							
					SET_DDS_FREQ__FTW_Read_Latency : begin
						ram_we <= 0;
						MODE <= MODE__DDS_WRITE;
					end					
	
				
				
				
					//////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////////////////////////////////////////////
					// DDS Power Write  
					//////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////////////////////////////////////////////

					
					SET_DDS_PWR__get_dds_num : begin
						if (STR_RX_FLAG) begin
							STR_RX_FLAG <= 0;
							ChipSelect <= RXNumber[4-1:0];
							state <= SET_DDS_PWR__get_pwr_lvl;
						end
					end
					
					SET_DDS_PWR__get_pwr_lvl : begin
						if (STR_RX_FLAG) begin
							STR_RX_FLAG <= 0;
							
							if (ChipSelect[0]) DDS_PWR_0 <= RXNumber[8*2-1:0];
							if (ChipSelect[1]) DDS_PWR_1 <= RXNumber[8*2-1:0];

							DDS_Data_Bytes <= 4'h4;
							DDS_Data[8*4-1:8*2] <= 16'h240C;
							DDS_Data[8*2-1:0] <= RXNumber[8*2-1:0];
							DDS_Data_Ready <= 1;
							state <= SET_DDS_PWR__wait_busy;
						end
					end							

					SET_DDS_PWR__wait_busy	: begin
						if (DDS_Busy) begin
							DDS_Data_Ready <= 0;
							state <= SET_DDS_PWR__wait_finish;
						end
					end					
					
					SET_DDS_PWR__wait_finish	: begin
						if (!DDS_Busy) begin
							state <= IDLE;
						end
					end					
					
					
					
					
					
				
				
					
					//////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////////////////////////////////////////////
					// Get ADC  (One Shot)
					//////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////////////////////////////////////////////

					GET_ADC	: begin
						TXStringLen <= ADC_BYTE;
						TXString <= ADC_Data;
						MODE <= MODE__TX_STRING;
					end					




					
					//////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////////////////////////////////////////////
					// Record ADC  
					//////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////////////////////////////////////////////

					Record_ADC__Prep	: begin
						fifo_rst <= 1;
						state <= Record_ADC__Ready;
					end					

					Record_ADC__Ready: begin
						fifo_rst <= 0;
						fifo_wr_en <= 0;
						fifo_rd_en <= 0;
						adc_sum_count <= 0 ;
						adc_sum <= 0;
						state <= Record_ADC__SUM_Start;
					end					

					Record_ADC__SUM_Start: begin
						if (ADC_Ready) begin
							adc_sum_count <= adc_sum_count +1;
							adc_sum <= adc_sum + ADC_Data;
							state <= Record_ADC__SUM_Check;
						end
					end					

					Record_ADC__SUM_Check: begin
						if (adc_sum_count == adc_sum_count_TARGET) begin
							fifo_wr_en <= 1; // FIFO writes at the next clock
							state <= Record_ADC__FIFO_Check;
						end
						else begin
							state <= Record_ADC__SUM_Start;
						end
					end
					
					Record_ADC__FIFO_Check: begin
						fifo_wr_en <= 0;
						if (fifo_data_count+1 == adc_store_count_TARGET)	begin // CAUTION: fifo_data_count MAY have >0 latency, after write operation
							TXStringLen <= 4;
							TXString <= "Done";
							TXStringReady <= 1;
							MODE <= MODE__TX_STRING;
						end
						else begin
							state <= Record_ADC__Ready;
						end
					end



					
					//////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////////////////////////////////////////////
					// Print Recorded ADC  
					//////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////////////////////////////////////////////


					Print_ADC__Print_length: begin
						TXStringLen <= 2;
						TXString <= fifo_data_count;
						TXStringReady <= 1;
						state <= Print_ADC__Print_length_wait;
					end
					
					
					Print_ADC__Print_length_wait: begin				
						TXStringReady <= 0;
						if (TXStringBusy) begin
							state <= Print_ADC__Print_Wait;
						end
					end
					
					
					Print_ADC__Print_Wait: begin
						if (!TXStringBusy) begin
							// Data Exist
							if (!fifo_empty) begin
								fifo_rd_en <= 1; // Read Latency: 1 (needs two clocks)
								state <= Print_ADC__Read_Latency;
							end
							// NO more Data to Print
							else begin
								state <= Print_ADC__Finished;
							end	

						end				

					end
					
					
					Print_ADC__Read_Latency: begin
						fifo_rd_en <= 0;
						state <= Print_ADC__Print;
					end


					Print_ADC__Print: begin
						TXStringLen <= ADC_SUM_BYTE;
						TXString <= fifo_dout;
						TXStringReady <= 1;
						state <= Print_ADC__Print2;
					end


					Print_ADC__Print2: begin			
						TXStringReady <= 0;
						if (TXStringBusy) begin
							state <= Print_ADC__Print_Wait;
						end
					end
					
					
					Print_ADC__Finished: begin	
						TXStringLen <= 4;
						TXString <= "Done";
						TXStringReady <= 1;
						MODE <= MODE__TX_STRING;
					end
								


					




					
					//////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////////////////////////////////////////////
					// Single Cycle
					//////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////////////////////////////////////////////


					Single_Cycle__GoGoGo: begin
						if (STR_RX_FLAG) begin
							STR_RX_FLAG <= 0;
							
							// Bypassing BACK2HOME Mode
							state <= IDLE;
							RUN_state <= run__ADC_Accum_Check;							
							MODE <= MODE__RUN;
							
							adc_sum  <= RXNumber[ADC_SUM_BIT-1:0];
							adc_sum_count <= (1<<PLL_ERR_ACCUM);
							STOP_Flag <= 1;
														
						end
					end
					
					
					//////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////////////////////////////////////////////
					//////////////////////////////////////////////////////////////////////////////////////

				endcase

					

			end
			


			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//                                 RUN MODE
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////

			MODE__RUN : begin
				HOME_Mode_Saved <= MODE;


				
				// RUN STATES
				case (RUN_state)
				
					run__INIT: begin
						adc_sum_count <= 0;
						adc_sum <= 0;
						if (fifo_full) fifo_rd_en <= 1; // Make room in FIFO, if full						
						RUN_state <= run__ADC_Accumulate;
					end
					
				
					run__ADC_Accumulate: begin
						fifo_rd_en <= 0;
						if (ADC_Ready) begin
							if ((Cutoff_Enable)&&((ADC_Upper<ADC_Data)||(ADC_Lower>ADC_Data))) begin
								// Do Nothing
							end
							else begin
								adc_sum_count <= adc_sum_count +1;
								adc_sum <= adc_sum + ADC_Data;
							end
							RUN_state <= run__ADC_Accum_Check;
						end
								
						// process command here, when it is safe to break from loop
						if (STR_RX_FLAG) begin
							STR_RX_FLAG <= 0;

							//Default
							TXStringLen <= 3;
							TXString[8*3-1:0] <= "ERR";
							MODE <= MODE__TX_STRING;

							if (RXString[8*5-1:0] == "MODE?") begin  // 5 letters
								TXStringLen <= 1;
								TXString[8*1-1:0] <= "R";
								MODE <= MODE__TX_STRING;
							end
							if (RXString[8*4-1:0] == "STOP") begin  // 4 letters
								HOME_Mode_Saved <= MODE__INIT;
								MODE <= MODE__Back2Home;
							end
							if (RXString[8*7-1:0] == "SET_REG") begin  // 7 letters
								MODE  <= MODE__REG_SET;
							end
							
							// Set dds
							SET_DDS_STEP_1 <= 0;
							SET_DDS_STEP_2 <= 0;
							if (RXString[8*12-1:0] == "SET_DDS_FREQ") begin  // 12 letters
								SET_DDS_STEP_1 <= 1;
								MODE <= MODE__RUN;
							end
							if (SET_DDS_STEP_1) begin
								// I expect ChipSelect-0 here. ChipSelect-1 cannot happen during Lock
								// Also, I cannot save ChipSelect here, because it will get over-written.
								SET_DDS_STEP_2 <= 1;
								MODE <= MODE__RUN;
							end
							if (SET_DDS_STEP_2) begin
								ChipSelect <= 4'b0001;
								ram_addr <= RAM_ADDR__FTW_DDS1;
								ram_din <= RXNumber[FTW_BIT-1:0];
								ram_we <= 1;
								MODE <= MODE__DDS_WRITE;
							end
							

							// FTW Request
							if (RXString[8*4-1:0] == "FTW?") begin  // 4 letters
								FTW_REQ <= 1;
								MODE <= MODE__RUN;
							end
							
						end
									
					end
					

					run__ADC_Accum_Check: begin
						if (adc_sum_count == (1<<PLL_ERR_ACCUM)) begin
							ram_addr	<= RAM_ADDR__FTW_DDS2; // bring up DDS2 FTW, so that I can save it at RAM_ADDR__FTW_DDS2_OLD, and make New one
							fifo_wr_en <= 1; 
							RUN_state <= run__OLD_FTW_Read_Latency;
						end
						else begin
							RUN_state <= run__ADC_Accumulate;
						end		
					end
					run__OLD_FTW_Read_Latency: begin
						fifo_wr_en <= 0;
						RUN_state <= run__Save_OLD_FTW_DD2;
					end

					run__Save_OLD_FTW_DD2: begin
						ram_din <= ram_dout;
						ram_addr	<= RAM_ADDR__FTW_DDS2_OLD;
						ram_we <= 1;
						PLL_ERR_Sign <= (adc_sum > (Target_ADC << PLL_ERR_ACCUM));
						RUN_state <= run__Save_PLL_ERR;
					end

					run__Save_PLL_ERR: begin
						if (PLL_ERR_Sign)	ram_din <= adc_sum - (Target_ADC << PLL_ERR_ACCUM);
						else	  				ram_din <= (Target_ADC << PLL_ERR_ACCUM) - adc_sum;
						ram_addr	<= RAM_ADDR__PLL_ERR;
						ram_we <= 1;
						RUN_state <= run__PLL_ERR_Latency;
					end
					run__PLL_ERR_Latency: begin
						ram_we <= 0;
						RUN_state <= run__Calc_I;
					end
					
					run__Calc_I: begin
						ram_din <= ram_dout * I_mul;
						ram_addr	<= RAM_ADDR__PLL_I;
						ram_we <= 1;
						RUN_state <= run__I_Value_Latency;
					end
					run__I_Value_Latency: begin
						ram_we <= 0;
						RUN_state <= run__Update_FTW_Prep;
					end
					
					run__Update_FTW_Prep: begin
						adc_sum <= ram_dout; // Using adc_sum as memory
						ram_addr	<= RAM_ADDR__FTW_DDS2;
						ram_we <= 0;
						RUN_state <= run__Update_FTW_Shift;				
					end
					run__Update_FTW_Shift: begin
						if (shift_counter < I_DIV) begin
							shift_counter <= shift_counter+1;
							adc_sum <= (adc_sum>>1);
						end
						else begin
							shift_counter <= 0;
							RUN_state <= run__Update_FTW;
						end
					end
					
					
					run__Update_FTW: begin
						if (PLL_ERR_Sign)	ram_din <= ram_dout + adc_sum;
						else 					ram_din <= ram_dout - adc_sum;
						ram_addr	<= RAM_ADDR__FTW_DDS2;
						ram_we <= 1;
						RUN_state <= run__Load_PLL_ERR;				
					end
					
					run__Load_PLL_ERR: begin
						ram_addr	<= RAM_ADDR__PLL_ERR;
						ram_we <= 0;
						RUN_state <= run__PLL_ERR_Load_Latency;
					end					
					run__PLL_ERR_Load_Latency: begin
						RUN_state <= run__Calc_P;
					end
					
					run__Calc_P: begin
						ram_din <= ram_dout * P_mul;
						ram_addr	<= RAM_ADDR__PLL_P;
						ram_we <= 1;
						RUN_state <= run__P_Value_Latency;
					end
					run__P_Value_Latency: begin
						ram_we <= 0;
						RUN_state <= run__Update_FTW_APPLIED_Prep;
					end
					
					run__Update_FTW_APPLIED_Prep: begin
						adc_sum <= ram_dout; // Using adc_sum as memory
						ram_addr	<= RAM_ADDR__FTW_DDS2;
						RUN_state <= run__Update_FTW_APP_Shift;				
					end					
					run__Update_FTW_APP_Shift: begin
						if (shift_counter < P_DIV) begin
							shift_counter <= shift_counter+1;
							adc_sum <= (adc_sum>>1);
						end
						else begin
							shift_counter <= 0;
							RUN_state <= run__Update_FTW_APPLIED;
						end
					end		
					
					run__Update_FTW_APPLIED: begin
						if (PLL_ERR_Sign)	ram_din <= ram_dout + adc_sum;
						else 					ram_din <= ram_dout - adc_sum;					
						ram_addr	<= RAM_ADDR__FTW_DDS2_w_P;
						ram_we <= 1;
						RUN_state <= run__FTW_APPLIED_Latency;
						if (FTW_REQ && !TXStringBusy) begin
							FTW_REQ <= 0;
							TXStringLen <= FTW_BYTE;
							TXString <= ram_dout;
							TXStringReady <= 1;
						end
					end
					run__FTW_APPLIED_Latency: begin
						ram_we <= 0;
						ChipSelect <= 4'b0010;
						MODE <= MODE__DDS_WRITE;
						TXStringReady <= 0;
					end
					

					
				endcase
			end
			
			
			
			
			
			
			

			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//                                 WORK MODES
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			
			MODE__Back2Home : begin
				MODE <= HOME_Mode_Saved;
				
				// Set all states to INIT
				state <= IDLE;
				RUN_state <= run__INIT;
				str_state <= str__TX_STRING;
				ramW_state <= ramW__get_address;
				ramR_state <= ramR__get_address;
				regS_state <= regS__get_reg_name;
				regG_state <= regG__get_reg_name;
				ddsW_state <= ddsW__Start;
			end
			
			
			
			
			
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			// TX_STRING
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			
			MODE__TX_STRING : begin
				case (str_state)

					str__TX_STRING : begin
						TXStringReady <= 1;
						str_state <= str__TX_STRING__WAIT_FOR_BUSY;
					end
					
					str__TX_STRING__WAIT_FOR_BUSY : begin
						TXStringReady <= 0;
						if (TXStringBusy) begin
							str_state <= str__TX_STRING__WAIT_FOR_FINISH;
						end
					end

					str__TX_STRING__WAIT_FOR_FINISH : begin
						if (!TXStringBusy) begin
							MODE <= MODE__Back2Home;
						end
					end
				endcase
			end
					
					
				
					

					
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			// RAM Write
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////

			MODE__RAM_WRITE: begin
				case (ramW_state)
				
					ramW__get_address: begin
						if (STR_RX_FLAG) begin
							STR_RX_FLAG <= 0;
							ram_addr <= RXNumber[ADDR_BIT-1:0];
							ramW_state <= ramW__get_value;
						end
					end
					

					ramW__get_value: begin
						if (STR_RX_FLAG) begin
							STR_RX_FLAG <= 0;
							ram_din <= RXNumber[FTW_BIT-1:0];
							ram_we <= 1;
							ramW_state <= ramW__write_wait;
						end
					end
					
					ramW__write_wait: begin
						ram_we <= 0;
						MODE <= MODE__Back2Home;
					end					
				endcase
			end
										
										
										
										


			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			// RAM READ
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
					
			MODE__RAM_READ: begin
				case (ramR_state)

					ramR__get_address: begin
						if (STR_RX_FLAG) begin
							STR_RX_FLAG <= 0;
							ram_addr <= RXNumber[ADDR_BIT-1:0];
							ramR_state <= ramR__wait_latency;
						end
					end
					
					ramR__wait_latency: begin
						ramR_state <= ramR__print;
					end
					
					ramR__print: begin
						TXStringLen <= FTW_BYTE;
						TXString <= ram_dout;
						MODE <= MODE__TX_STRING;
					end
					
				endcase
			end
					







			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			// Register SET
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			
			MODE__REG_SET : begin
				case (regS_state)

					
					regS__get_reg_name: begin
						if (STR_RX_FLAG) begin
							STR_RX_FLAG <= 0;
							Register_Name <= RXString;
							regS_state <= regS__get_reg_value;
						end
					end					
					

					regS__get_reg_value: begin
						if (STR_RX_FLAG) begin
							STR_RX_FLAG <= 0;
							if (Register_Name[8*11-1:0] == "ADC_SUM_CNT") begin  // 11 letters
								adc_sum_count_TARGET <= RXNumber[ADC_SUM_BIT-ADC_BIT-1:0]; // 6 bytes
							end
							if (Register_Name[8*13-1:0] == "ADC_STORE_CNT") begin  // 13 letters
								adc_store_count_TARGET <= RXNumber[FIFO_Depth_BIT-1:0]; // 10 bits
							end
							
							if (Register_Name[8*13-1:0] == "PLL_ERR_ACCUM") begin  // 13 letters
								PLL_ERR_ACCUM <= RXNumber[ERROR_ACCUM_BIT-1: 0];
							end
							if (Register_Name[8*5-1:0] == "P_mul") begin  // 5 letters
								P_mul <= RXNumber[PI_FACTOR_BIT-1:0];
							end
							if (Register_Name[8*5-1:0] == "I_mul") begin  // 5 letters
								I_mul <= RXNumber[PI_FACTOR_BIT-1:0];
							end
							if (Register_Name[8*5-1:0] == "P_DIV") begin  // 5 letters
								P_DIV <= RXNumber[PI_PWR_DIV_BIT-1:0];
							end
							if (Register_Name[8*5-1:0] == "I_DIV") begin  // 5 letters
								I_DIV <= RXNumber[PI_PWR_DIV_BIT-1:0];
							end
							if (Register_Name[8*10-1:0] == "Target_ADC") begin  // 10 letters
								Target_ADC <= RXNumber[ADC_BIT-1:0];
							end
							if (Register_Name[8*13-1:0] == "Cutoff_Enable") begin  // 13 letters
								Cutoff_Enable  <= RXNumber[0:0];
							end
							if (Register_Name[8*9-1:0] == "ADC_Upper") begin  // 9 letters
								ADC_Upper <= RXNumber[ADC_BIT-1:0];
							end
							if (Register_Name[8*9-1:0] == "ADC_Lower") begin  // 9 letters
								ADC_Lower <= RXNumber[ADC_BIT-1:0];
							end

							MODE <= MODE__Back2Home;
						end
					end		
				endcase
			end






			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			// Register GET
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
					
			MODE__REG_GET: begin
				case (regG_state)

	
					regG__get_reg_name: begin
						if (STR_RX_FLAG) begin
							STR_RX_FLAG <= 0;
							Register_Name <= RXString;
							regG_state <= regG__print_reg_value;
						end
					end					
					
					regG__print_reg_value: begin
								
						TXStringLen <= 9; // Default (Unknown Entered)
						TXString[8*9-1:0] <= "WRONG_PAR"; 

						if (Register_Name[8*13-1:0] == "PLL_ERR_ACCUM") begin  // 13 letters
							TXStringLen <= 1;
							TXString <= PLL_ERR_ACCUM;
						end
						if (Register_Name[8*5-1:0] == "P_mul") begin  // 5 letters
							TXStringLen <= PI_FACTOR_BYTE;
							TXString <= P_mul;
						end
						if (Register_Name[8*5-1:0] == "I_mul") begin  // 5 letters
							TXStringLen <= PI_FACTOR_BYTE;
							TXString <= I_mul;
						end
						if (Register_Name[8*5-1:0] == "P_DIV") begin  // 5 letters
							TXStringLen <= 1;
							TXString <= P_DIV;
						end
						if (Register_Name[8*5-1:0] == "I_DIV") begin  // 5 letters
							TXStringLen <= 1;
							TXString <= I_DIV;
						end
						if (Register_Name[8*10-1:0] == "Target_ADC") begin  // 10 letters
							TXStringLen <= ADC_BYTE;
							TXString <= Target_ADC;
						end
						if (Register_Name[8*12-1:0] == "PLL_ERR_Sign") begin  // 12 letters
							TXStringLen <= 1;
							TXString <= PLL_ERR_Sign;
						end
						if (Register_Name[8*13-1:0] == "Cutoff_Enable") begin  // 13 letters
							TXStringLen <= 1;
							TXString <= Cutoff_Enable;
						end
						if (Register_Name[8*9-1:0] == "ADC_Upper") begin  // 9 letters
							TXStringLen <= ADC_BYTE;
							TXString <= ADC_Upper;
						end
						if (Register_Name[8*9-1:0] == "ADC_Lower") begin  // 9 letters
							TXStringLen <= ADC_BYTE;
							TXString <= ADC_Lower;
						end

						if (Register_Name[8*9-1:0] == "DDS_PWR_1") begin  // 9 letters
							TXStringLen <= 2;
							TXString <= DDS_PWR_1;
						end

						MODE <= MODE__TX_STRING;	
					end		
				endcase
			end
					
				
					




					
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////
			// DDS Write
			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////

			// We assume that 
			// 1. ChipSelect has been set
			// 2. FTW is available at "ram_dout"
			
			// write to port2
			MODE__DDS_WRITE: begin
				case (ddsW_state)
					
					ddsW__Start: begin
						// one clock for RAM read latency + ram_we=0, sometimes needed
						ram_we <= 0;
						ddsW_state <= ddsW__Write_DDS;
					end
					
					ddsW__Write_DDS: begin
						DDS_Data_Bytes <= 4'h8;
						DDS_Data[8*8-1:8*6] <= 16'h61AB;
						DDS_Data[8*6-1:0] <= ram_dout;
						DDS_Data_Ready <= 1;
						ddsW_state <= ddsW__SET_DDS_FREQ__wait_busy;
					end
					
					ddsW__SET_DDS_FREQ__wait_busy	: begin
						if (DDS_Busy) begin
							DDS_Data_Ready <= 0;
							ddsW_state <= ddsW__SET_DDS_FREQ__wait_finish;
						end
					end	
					
					ddsW__SET_DDS_FREQ__wait_finish	: begin
						if (!DDS_Busy) begin
							DDS_Data_Bytes <= 4'h3;
							DDS_Data[8*3-1:0] <= 24'h000501;
							DDS_Data_Ready <= 1;
							ddsW_state <= ddsW__SET_DDS_FREQ__wait_busy2;
						end
					end					
					
					ddsW__SET_DDS_FREQ__wait_busy2	: begin
						if (DDS_Busy) begin
							DDS_Data_Ready <= 0;
							ddsW_state <= ddsW__SET_DDS_FREQ__cal_port1;
							// ddsW_state <= ddsW__SET_DDS_FREQ__wait_finish2;
						end
					end
					
					// write to port1
					ddsW__SET_DDS_FREQ__cal_port1 : begin
					   if (!DDS_Busy) begin
                           ChipSelect <= 4'b0001;
                           ram_addr <= RAM_ADDR__FTW_DDS1;
                           ram_din <= (ram_dout >> 1) + offset_wrt_lockfreq;
                           ram_we <= 1;
                           ddsW_state <= ddsW__SET_DDS_FREQ__cal_port1_latency;
					   end
					end					
					
					ddsW__SET_DDS_FREQ__cal_port1_latency : begin
					   ram_we <= 0;
					   ddsW_state <= ddsW__Write_DDS_port1;
					end
					
					ddsW__Write_DDS_port1: begin
						DDS_Data_Bytes <= 4'h8;
						DDS_Data[8*8-1:8*6] <= 16'h61AB;
						DDS_Data[8*6-1:0] <= ram_dout;
						DDS_Data_Ready <= 1;
						ddsW_state <= ddsW__SET_DDS_FREQ__wait_busy_port1;
					end
					
					ddsW__SET_DDS_FREQ__wait_busy_port1	: begin
						if (DDS_Busy) begin
							DDS_Data_Ready <= 0;
							ddsW_state <= ddsW__SET_DDS_FREQ__wait_finish_port1;
						end
					end					
					
					ddsW__SET_DDS_FREQ__wait_finish_port1	: begin
						if (!DDS_Busy) begin
							DDS_Data_Bytes <= 4'h3;
							DDS_Data[8*3-1:0] <= 24'h000501;
							DDS_Data_Ready <= 1;
							ddsW_state <= ddsW__SET_DDS_FREQ__wait_busy2_port1;
						end
					end					
					
					ddsW__SET_DDS_FREQ__wait_busy2_port1	: begin
						if (DDS_Busy) begin
							DDS_Data_Ready <= 0;
							ddsW_state <= ddsW__SET_DDS_FREQ__wait_finish2;
						end
					end
					
					ddsW__SET_DDS_FREQ__wait_finish2	: begin
						if (!DDS_Busy) begin
							MODE <= MODE__Back2Home;
							
							if (STOP_Flag) begin // Used in Single_Cycle Command
								STOP_Flag <= 0;
								HOME_Mode_Saved <= MODE__INIT;
							end	
						end
					end					
				endcase
			end
										
													

			//////////////////////////////////////////////////////////////////////////////////////
			//////////////////////////////////////////////////////////////////////////////////////

		endcase //case (MODE)
	end  //always @ (posedge clk) begin	

endmodule







