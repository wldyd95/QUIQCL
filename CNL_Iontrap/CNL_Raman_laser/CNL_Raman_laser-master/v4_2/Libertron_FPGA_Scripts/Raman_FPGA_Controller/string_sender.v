`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:23:11 04/23/2014 
// Design Name: 
// Module Name:    send_string
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 1.1 - Allow multiple sources
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////


module string_sender
	#(
	parameter TX_STRING_COUNT_BIT = 4,
	parameter TX_STRING_MAX_LENGTH = 13, // max : 2^TX_STRING_COUNT_BIT-1 -2 for terminators
	parameter TX_STRING_MAX_BIT_LENGTH = TX_STRING_MAX_LENGTH * 8,
	parameter ClkFrequency = 50000000,	// make sure this matches the clock frequency on your board
	parameter Baud = 57600					// Baud rate
	) // https://groups.google.com/forum/#!topic/comp.lang.verilog/6xZxOLUcNYI
	
	(
    input clk,
	 output TxD,
    input [TX_STRING_COUNT_BIT-1:0] TXStringLen1, 
    input [TX_STRING_MAX_BIT_LENGTH-1:0] TXString1,
    input TXStringReady1,
    output reg TXStringBusy
    );

	reg [TX_STRING_COUNT_BIT-1:0] TXLen;
	parameter TXBuffer_BIT_LENGTH = TX_STRING_MAX_BIT_LENGTH +2*8;
	reg [TXBuffer_BIT_LENGTH-1:0] TXBuffer;



	////////////////////////////////////////////////////////////////
	// async_transmitter
	// NOTE : async_transmitter is designed to 8-bits data, 2 stop bits, no-parity
	////////////////////////////////////////////////////////////////
	wire TxD_busy;
	reg TxD_start;

	async_transmitter TXUSB(.clk(clk), .TxD(TxD), .TxD_busy(TxD_busy), .TxD_start(TxD_start),
									.TxD_data(TXBuffer[TXBuffer_BIT_LENGTH-1:TXBuffer_BIT_LENGTH-8]));
	defparam TXUSB.ClkFrequency = ClkFrequency;
	defparam TXUSB.Baud         = Baud;
	

	
	////////////////////////////////////////////////////////////////
	// Finite State Machine
	////////////////////////////////////////////////////////////////
	
	parameter IDLE				 	= 3'h0;
	parameter ADD_TERMINATOR 	= 3'h1;
	parameter CHAR_SHIFT 		= 3'h2;
	parameter START_TxD 			= 3'h3;
	parameter WAIT_FOR_TxD_BUSY = 3'h4;
	parameter WAIT_FOR_TxD_FINISH = 3'h5;

	reg [3-1:0] state;
	initial state <= IDLE;
	
	// For CHAR_SHIFT
	reg [TX_STRING_COUNT_BIT-1:0] SHIFT_COUNT;


	
	always @ (posedge clk)
	begin
		
		case (state)
		
			IDLE: begin
				// IDLE
				if (TXStringReady1 == 0) begin
					TXStringBusy <= 1'b0;
				end
				
				// START
				else begin
					TXStringBusy <= 1'b1;

					TXLen <= TXStringLen1 +2;
					TXBuffer <= {TXString1, "\015\n"};
					SHIFT_COUNT <= (TX_STRING_MAX_LENGTH -TXStringLen1);
					state <= CHAR_SHIFT;

				end
			end
			
			
			CHAR_SHIFT: begin
				if (SHIFT_COUNT != 0) begin 
					SHIFT_COUNT <= SHIFT_COUNT-1;
					TXBuffer <= {TXBuffer[TXBuffer_BIT_LENGTH-1-8:0], 8'h0};
				end
				else begin
					state <= START_TxD;
				end
			end
			
			
			START_TxD: begin
				TxD_start <= 1'b1;
				state <= WAIT_FOR_TxD_BUSY;
			end


			WAIT_FOR_TxD_BUSY: begin
				if (TxD_busy == 1'b1) begin 
					TxD_start <= 1'b0;				
					state <= WAIT_FOR_TxD_FINISH;
				end
			end
				
				
			WAIT_FOR_TxD_FINISH: begin
				if (TxD_busy == 0) begin // Transmission of one byte is over
					// More to go
					if (TXLen > 1) begin		
						TXLen <= TXLen -1;					
						TXBuffer <= {TXBuffer[TXBuffer_BIT_LENGTH-1-8:0], 8'h0};
						state <= START_TxD;
					end
					// No More
					else begin
						state <= IDLE;
					end
				end
			end
			
			
			
		endcase
	end
	



endmodule
