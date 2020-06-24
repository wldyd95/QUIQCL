`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:08:42 06/10/2014 
// Design Name: 
// Module Name:    WriteToRegister 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module WriteToRegister
	#(
	parameter LENGTH_BIT_COUNT = 3,
	parameter MAXLENGTH = 7,  // MAXLENGTH = 2^LENGTH_BIT_COUNT-1
	parameter MAXLENGTH8 = MAXLENGTH*8
	)
	
	(
	input SPI_clk, 
	
	input [LENGTH_BIT_COUNT-1:0] registerData_Bytes, 
	input [MAXLENGTH8-1:0] registerData, 
	input registerDataReady,
	
	output reg busy,
	output reg wr_rcsbar,
	output rsdio
	); 



		

	////////////////////////////////////////////////////////////////
	// FSM
	////////////////////////////////////////////////////////////////

	parameter IDLE 	= 2'h0;
	parameter READY 	= 2'h1;
	parameter SEND 	= 2'h2;
	parameter FINISH 	= 2'h3;

	reg [2-1:0] state;
	initial state = IDLE;

	reg [MAXLENGTH8-1:0] data;
	reg [LENGTH_BIT_COUNT+3-1:0] dataCount;




	always @(negedge SPI_clk) begin
	
		case (state)
		
			IDLE: begin
				wr_rcsbar <= 1'b1;
				if (!registerDataReady) begin
					busy <= 1'b0;
				end
				else begin
					busy <= 1'b1;
					state <= READY;
				end
			end
			
		
			READY: begin
				wr_rcsbar <= 1'b0;
				data <= registerData; 
				dataCount <= {registerData_Bytes, 3'b0};
				state <= SEND;
			end	
		
		
			SEND: begin
				data <= {data[(MAXLENGTH8-2):0], 1'b0};
				dataCount <= dataCount - 1;
				if (dataCount == 1) begin
					wr_rcsbar <= 1'b1;
					state <= FINISH;
				end
			end


			FINISH:  begin
				busy <= 1'b0;
				state <= IDLE;
			end
		
		endcase
	end


	assign rsdio = data[MAXLENGTH8-1];


endmodule

