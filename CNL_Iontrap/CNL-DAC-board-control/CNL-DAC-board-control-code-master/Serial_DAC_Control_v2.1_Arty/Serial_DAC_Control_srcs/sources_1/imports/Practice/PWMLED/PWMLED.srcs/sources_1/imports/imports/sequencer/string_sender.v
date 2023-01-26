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
	parameter TX_STRING_COUNT_BIT = 5,
	parameter TX_STRING_MAX_LENGTH = 32, // max : 2^TX_STRING_COUNT_BIT-1
	parameter TX_STRING_MAX_BIT_LENGTH = TX_STRING_MAX_LENGTH * 8,
	parameter ClkFrequency = 50000000,	// make sure this matches the clock frequency on your board
	parameter Baud = 57600					// Baud rate
	) // https://groups.google.com/forum/#!topic/comp.lang.verilog/6xZxOLUcNYI
	
	(
    input clk,
    output TxD,
    input [TX_STRING_COUNT_BIT-1:0] TXStringLen, 
    input [TX_STRING_MAX_BIT_LENGTH-1:0] TXString,
    input TXStringReady,
    input TX_ASCII_NUM,
    output reg TXStringBusy
    );

	reg [TX_STRING_COUNT_BIT-1:0] TXLen;  // Length left to trasmit
	parameter TXBuffer_BIT_LENGTH = TX_STRING_MAX_BIT_LENGTH;
	reg [TXBuffer_BIT_LENGTH-1:0] TXBuffer;
	
	reg [8-1:0] ONE_BYTE_STR; // String to Transmit
    reg ASCII_First_Half;


	////////////////////////////////////////////////////////////////
	// async_transmitter
	// NOTE : async_transmitter is designed to 8-bits data, 2 stop bits, no-parity
	////////////////////////////////////////////////////////////////
	wire TxD_busy;
	reg TxD_start;

	async_transmitter TXUSB(.clk(clk), .TxD(TxD), .TxD_busy(TxD_busy), .TxD_start(TxD_start),
									.TxD_data(ONE_BYTE_STR));
	defparam TXUSB.ClkFrequency = ClkFrequency;
	defparam TXUSB.Baud         = Baud;
	
	
	
	
	
	////////////////////////////////////////////////////////////////
    //  HEX2ASCII
    ////////////////////////////////////////////////////////////////
    wire [7:0] ascii_output;

    hex2ascii HEX2ASCII(.hex_input(TXBuffer[TXBuffer_BIT_LENGTH-1:TXBuffer_BIT_LENGTH-4]), .ascii_output(ascii_output));





	////////////////////////////////////////////////////////////////
	// Finite State Machine
	////////////////////////////////////////////////////////////////
	
	parameter IDLE                     = 4'h0;
	parameter ADD_TERMINATOR 	       = 4'h1;
	parameter CHAR_SHIFT 		       = 4'h2;
	parameter START_TxD 			   = 4'h3;
    parameter WAIT_FOR_TxD_BUSY        = 4'h4;
    parameter WAIT_FOR_TxD_FINISH      = 4'h5;
	parameter END_START_TxD 		   = 4'ha;
    parameter END_WAIT_FOR_TxD_BUSY    = 4'hb;
    parameter END_WAIT_FOR_TxD_FINISH  = 4'hc;

	reg [4-1:0] state;
	initial state <= IDLE;
	
	// For CHAR_SHIFT
	reg [TX_STRING_COUNT_BIT-1:0] SHIFT_COUNT;


	
	always @ (posedge clk)
	begin
		
		case (state)
		
			IDLE: begin
				// IDLE
				if (TXStringReady == 0) begin
					TXStringBusy <= 1'b0;
				end
				
				// START
				else begin
					TXStringBusy <= 1'b1;
                    TXLen <= TXStringLen;
					TXBuffer <= TXString;
					SHIFT_COUNT <= (TX_STRING_MAX_LENGTH -TXStringLen);
					state <= CHAR_SHIFT;

				end
			end
			
			
			CHAR_SHIFT: begin
				if (SHIFT_COUNT != 0) begin 
					SHIFT_COUNT <= SHIFT_COUNT-1;
					TXBuffer <= {TXBuffer[TXBuffer_BIT_LENGTH-1-8:0], 8'h0};
				end
				else begin
                    if (TX_ASCII_NUM == 1)  TXLen <= TXLen << 1; // When printing number, you need twice longer length
                    state <= START_TxD;
				end
			end
			
			
			START_TxD: begin
			     if (TX_ASCII_NUM == 1)    ONE_BYTE_STR <= ascii_output;
                 else 			           ONE_BYTE_STR <= TXBuffer[TXBuffer_BIT_LENGTH-1:TXBuffer_BIT_LENGTH-8];
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
                        if (TX_ASCII_NUM == 1)  TXBuffer <= {TXBuffer[TXBuffer_BIT_LENGTH-1-4:0], 4'h0};
                        else                    TXBuffer <= {TXBuffer[TXBuffer_BIT_LENGTH-1-8:0], 8'h0};
                        TXLen <= TXLen -1;
                        state <= START_TxD;
   
					end
					// No More
					else begin
					   TXBuffer[TXBuffer_BIT_LENGTH-1:TXBuffer_BIT_LENGTH-2*8] <= "\015\n";
					   TXLen <= 2;
					   state <= END_START_TxD;
					end
				end
			end
			
			
            END_START_TxD: begin
                ONE_BYTE_STR <= TXBuffer[TXBuffer_BIT_LENGTH-1:TXBuffer_BIT_LENGTH-8];
                TxD_start <= 1'b1;
                state <= END_WAIT_FOR_TxD_BUSY;
            end


            END_WAIT_FOR_TxD_BUSY: begin
                if (TxD_busy == 1'b1) begin 
                    TxD_start <= 1'b0;                
                    state <= END_WAIT_FOR_TxD_FINISH;
                end
            end
                
                
            END_WAIT_FOR_TxD_FINISH: begin
                if (TxD_busy == 0) begin // Transmission of one byte is over
                    // More to go
                    if (TXLen > 1) begin        
                        TXBuffer <= {TXBuffer[TXBuffer_BIT_LENGTH-1-8:0], 8'h0};
                        TXLen <= TXLen -1;
                        state <= END_START_TxD;
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
