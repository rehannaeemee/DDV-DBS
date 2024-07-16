`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2024 12:40:58 PM
// Design Name: 
// Module Name: FourToOneMux
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


module FourToOneMux( input logic [15:0] I0, I1, I2, I3,
					 input logic [1:0]S,
					 wire [15:0] w0, w1,
					 output logic [15:0] Y);

		mux one   ( .i0(I0), .i1(I1), .s(S[0]), .y(w0) );
		mux two   ( .i0(I2), .i1(I3), .s(S[0]), .y(w1) );
		mux three ( .i0(w0), .i1(w1), .s(S[1]), .y(Y) );
		
endmodule
