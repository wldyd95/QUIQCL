`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// This Module does
// 1. Depending on the ChipSelect input, re-route the DDS_Data to the desired DDS machine
// 2. DDS_Data has variable length, so apply left-shift to the DDS_Data accordingly.
// 3. Make Clock from the given 50MHz system clock
//
// NOTE: In this version module, "ChipSelect" needs to be only 2-bit long. So fix next time. 
//
//////////////////////////////////////////////////////////////////////////////////
module DDSControl
	#(
	parameter LENGTH_BIT_COUNT = 3,
	parameter MAXLENGTH = 7,  //max : 2^LENGTH_BIT_COUNT-1
	parameter MAXLENGTH8 = MAXLENGTH*8
	)
	
	(
	input clk50MHz,

	input [3:0] ChipSelect,
	input [LENGTH_BIT_COUNT-1:0] DDS_Data_Bytes, 
	input [MAXLENGTH8-1:0] DDS_Data, 
	input DDS_Data_Ready,

	output reg DDS_Busy,

	output rsclk0,

	output rcsbar00,
	output rcsbar01,
	output rsdio00,
	output rsdio01,

	output [3:0] PROBE // For Debug
	);
	
	
	
	////////////////////////////////////////////////////////////////
	// For Data Shifting
	////////////////////////////////////////////////////////////////

	/* Shift is needed because DDS_Data is right-aligned while WTR needs left-aligned string*/
	
	reg [MAXLENGTH-1:0] Shift_Desired;
	reg [MAXLENGTH8-1:0] DDS_Data_SHIFTED;




	////////////////////////////////////////////////////////////////
	// SPI Clock
	////////////////////////////////////////////////////////////////

	/* Divide Clock by 4 : AD9951 can accept up to 25 MHz clock, but according to Steve's comment, 
		slightly lower clock is recommended. */
	reg SPI_clk, clkLSB;
	always @(posedge clk50MHz)
	begin
			{SPI_clk,clkLSB} <= {SPI_clk,clkLSB} + 2'h1;  /* 2bit register, clk => MSB, clkLSB => LSB*/
	end
		
	assign rsclk0 = SPI_clk;

		


	/////////////////////////////////////////////////////////////////
	// To send data to DDS
	/////////////////////////////////////////////////////////////////

	reg Data_Ready_00 ;  
	reg Data_Ready_01 ;
	initial begin
		Data_Ready_00 = 0;
		Data_Ready_01 = 0;
	end

	wire BUSY_00 ; 
	wire BUSY_01 ;
	
	wire BUSY_Writing;
	assign BUSY_Writing = BUSY_00 | BUSY_01;


	WriteToRegister WTR00(.SPI_clk(SPI_clk), .registerData_Bytes(DDS_Data_Bytes), .registerData(DDS_Data_SHIFTED), .registerDataReady(Data_Ready_00), .busy(BUSY_00),
								.wr_rcsbar(rcsbar00), .rsdio(rsdio00) ); 
   defparam WTR00.LENGTH_BIT_COUNT = LENGTH_BIT_COUNT ;
   defparam WTR00.MAXLENGTH = MAXLENGTH ;
   defparam WTR00.MAXLENGTH8 = MAXLENGTH8 ;
	
	WriteToRegister WTR01(.SPI_clk(SPI_clk), .registerData_Bytes(DDS_Data_Bytes), .registerData(DDS_Data_SHIFTED), .registerDataReady(Data_Ready_01), .busy(BUSY_01),
								.wr_rcsbar(rcsbar01),  .rsdio(rsdio01) );  
   defparam WTR01.LENGTH_BIT_COUNT = LENGTH_BIT_COUNT ;
   defparam WTR01.MAXLENGTH = MAXLENGTH ;
   defparam WTR01.MAXLENGTH8 = MAXLENGTH8 ;





	////////////////////////////////////////////////////////////////
	// Finite State Machine
	////////////////////////////////////////////////////////////////
	
	parameter IDLE 				= 3'h0;
	parameter SHIFT_DATA 		= 3'h1;
	parameter START_WRITE 		= 3'h2;
	parameter WAIT_For_BUSY_SIG= 3'h3;
	parameter WAIT_For_UNBUSY 	= 3'h4;
	parameter FINISH 				= 3'h5;
	
	reg [3-1:0] state;
	initial state = IDLE;
	

	always @ (posedge clk50MHz) begin


		case (state)

			IDLE: begin
				if (!DDS_Data_Ready) begin
					DDS_Busy <= 0;
				end
				else begin
					DDS_Busy <= 1;
					
					Shift_Desired <= MAXLENGTH - DDS_Data_Bytes;
					DDS_Data_SHIFTED <= DDS_Data;
					state <= SHIFT_DATA;
				end
			end
				
								
			SHIFT_DATA: begin
				if (Shift_Desired != 0) begin
					Shift_Desired <= Shift_Desired -1;
					DDS_Data_SHIFTED <= {DDS_Data_SHIFTED[MAXLENGTH8-1-8:0], 8'h0};
				end
				else begin
					state <= START_WRITE;
				end
				
			end
								
			START_WRITE: begin
				if (ChipSelect[0]) Data_Ready_00 <= 1;
				if (ChipSelect[1]) Data_Ready_01 <= 1;
				state <= WAIT_For_BUSY_SIG;				
			end
			
			
			WAIT_For_BUSY_SIG: begin
				if (BUSY_Writing) begin
					state <= WAIT_For_UNBUSY;
				end
			end
			
			
			
			WAIT_For_UNBUSY: begin
				Data_Ready_00 <= 0;
				Data_Ready_01 <= 0;
				if (!BUSY_Writing) begin
					state <= FINISH;
				end
			end
			
							
			FINISH: begin
				DDS_Busy <= 0;
				state <= IDLE;
			end
			
			
				
		endcase

	end





	// For Debug
	assign PROBE[0] = BUSY_Writing;
	assign PROBE[1] = state[0];
	assign PROBE[2] = 0;
	assign PROBE[3] = 0;



endmodule
