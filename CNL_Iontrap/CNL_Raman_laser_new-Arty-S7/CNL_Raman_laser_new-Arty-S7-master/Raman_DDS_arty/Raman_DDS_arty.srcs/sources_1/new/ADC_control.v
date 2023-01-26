`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:42 10/17/2015, modified by Jiyong Yu 09/12/2019
// Design Name: 
// Module Name:    ADC_control 
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
module ADC_control
	#(
	parameter SCLK_DIV_POWER = 1  // 0-50MHz, 1 - 25MHz,  2 - 12.5MHz, 3 - 6.25MHz, 4 - 3.125MHz 
	)
	
	(
	input clk_100MHz,

	output CLK,
	output SCLK,
	input DRDY_Bar,
	input DOUT,

	output reg FLAG__New_Data,
	output reg [15:0] DATA
	);



	////////////////////////////////////////////////////////////////
	// CLK and SCLK (25MHz)
	////////////////////////////////////////////////////////////////

	/* Divide Clock by 2/4/8/16 */
	
	reg [4:0] clk_divided;
	always @(posedge clk_100MHz)
	begin
			clk_divided <= clk_divided + 1;
	end
	
	assign CLK  = clk_divided[SCLK_DIV_POWER];
	assign SCLK = clk_divided[SCLK_DIV_POWER];



	////////////////////////////////////////////////////////////////
	// FSM
	////////////////////////////////////////////////////////////////
	
	
	
	parameter IDLE 		= 1'h0;
	parameter DATA_READ  = 1'h1;

	reg [1-1:0] state;
	initial state = IDLE;
	initial FLAG__New_Data = 0;
	
	reg [3:0] Data_Count;
	reg [14:0] TEMP_DATA;
	
	reg DRDY_Bar_PREV;
	initial DRDY_Bar_PREV = 1;
	wire DRDY_Bar_POSITIVE_EDGE;
	assign DRDY_Bar_POSITIVE_EDGE = (DRDY_Bar & !DRDY_Bar_PREV);

	always @ (negedge SCLK) begin
	
		DRDY_Bar_PREV <= DRDY_Bar;


		case (state)

			IDLE: begin
				FLAG__New_Data <= 0;
				if (!DRDY_Bar_POSITIVE_EDGE) begin // Not Ready
					Data_Count <= 0;
					TEMP_DATA <= 0;
				end
				else begin // Data Ready
					Data_Count <= 1;
					TEMP_DATA[0] <= DOUT;
					state <= DATA_READ;
				end
			end
				
								
			DATA_READ: begin
				if (Data_Count < 4'hF) begin
					Data_Count <= Data_Count+1;
					TEMP_DATA <= {TEMP_DATA[13:0], DOUT};
				end				
				else begin
					FLAG__New_Data <= 1;
					DATA <= {TEMP_DATA[14:0], DOUT};
					state <= IDLE;
				end
			end
								
				
		endcase

	end




endmodule