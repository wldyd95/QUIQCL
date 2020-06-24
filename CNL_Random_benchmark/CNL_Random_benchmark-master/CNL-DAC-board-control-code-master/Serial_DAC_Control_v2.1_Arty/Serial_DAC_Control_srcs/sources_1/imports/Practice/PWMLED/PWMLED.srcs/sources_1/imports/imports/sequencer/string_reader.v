`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// NOTE : At the moment, there is a danger that RX_STRING gets changed if it is read too late and new string is recieved.
// It may be better to have a separate register that stores only the complete string.
// But then again, it is not that a significant problem, so I don't care. 
//
//////////////////////////////////////////////////////////////////////////////////
module string_reader
	#(
	parameter RX_STRING_COUNT_BIT = 5,
	parameter RX_STRING_MAX_LENGTH = 32,
	parameter RX_STRING_MAX_BIT_LENGTH = RX_STRING_MAX_LENGTH * 8,
	parameter RX_NUMBER_MAX_BIT_LENGTH = RX_STRING_MAX_LENGTH * 4,
	parameter ClkFreq = 50000000,	
	parameter BaudRate = 57600
	) 

	(

	input clk,
	input Uart_RXD,

	output reg	                              RXStringReady,

	output reg [RX_STRING_MAX_BIT_LENGTH-1:0] RXString,
	output reg [RX_NUMBER_MAX_BIT_LENGTH-1:0] RXNumber,

	output reg [RX_STRING_COUNT_BIT-1:0] 		RXStringLen,
	output reg                                RX_FLAG_Number
	
	
	 );


	
	////////////////////////////////////////////////////////////////
	// 
	////////////////////////////////////////////////////////////////
	
	wire usb_ready ;
	wire [7:0] usb_data ;
    wire usb_endofpacket; 
    wire usb_idle;
    
	async_receiver RXUSB(.clk(clk), .RxD(Uart_RXD), .RxD_data_ready(usb_ready), .RxD_data(usb_data), .RxD_endofpacket(usb_endofpacket), .RxD_idle(usb_idle));
	defparam RXUSB.ClkFrequency = ClkFreq;
	defparam RXUSB.Baud         = BaudRate;
		
	////////////////////////////////////////////////////////////////
	// 
	////////////////////////////////////////////////////////////////
	wire [3:0] hex_output;
	wire hex_error;
	
	ascii2hex ASCII2HEX(.ascii_input(usb_data), .hex_output(hex_output), .error(hex_error));
	

	
	////////////////////////////////////////////////////////////////
	// 
	////////////////////////////////////////////////////////////////
	
	reg [7:0] one_char;
	reg [3:0] one_hex;
	reg 		 one_error;

	reg [3-1:0] state;
	parameter IDLE 		= 3'b000;
	parameter STARTED		= 3'b001;
	parameter ANALYZE		= 3'b010;
	parameter NEW_CHAR 	= 3'b011;
	parameter FINISHED	= 3'b100;

	
	initial begin
		RXStringReady 	<= 0;
		RXString 		<= 0;
		RXStringLen 	<= 0;
		RXNumber 		<= 0;
		RX_FLAG_Number <= 1;
		state <= IDLE;
	end
	
	always @ (posedge clk) begin
		case (state)
		
			IDLE: begin
				RXStringReady 	<= 0;

				if (usb_ready) begin
					RXString 		<= 0;
					RXStringLen 	<= 0;
					RXNumber 		<= 0;
					RX_FLAG_Number <= 1;

					one_char <= usb_data;
					one_hex <= hex_output;
					one_error <= hex_error;
					state <= ANALYZE;
				end
			end
			
			
			STARTED: begin
				if (usb_ready) begin
					one_char <= usb_data;
					one_hex <= hex_output;
					one_error <= hex_error;
					state <= ANALYZE;
				end
			end
			
			ANALYZE: begin
				if (one_char[7:0] == 8'hA)  // finish when \n
					state <= FINISHED;
				else if (one_char[7:0] == 8'hD)  // ignore \r
					state <= STARTED;
				else
					state <= NEW_CHAR;
			end
			
			
			NEW_CHAR: begin
				RXString <= {RXString[RX_STRING_MAX_BIT_LENGTH-1-8:0], one_char};
				RXStringLen <= RXStringLen + 4'b1;
				RXNumber <= {RXNumber[RX_NUMBER_MAX_BIT_LENGTH-1-4:0], one_hex};
				
				if (one_error)
					RX_FLAG_Number <= 0;
				
				state <= STARTED;
			end
			
			
			FINISHED: begin
				RXStringReady <= 1'b1;
				state <= IDLE;
			end

			
		endcase
	end
			

endmodule
