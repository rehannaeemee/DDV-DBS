`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/06/2024 02:22:30 PM
// Design Name: 
// Module Name: ALU
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


module ALU( input logic [15:0] A,B,
            input logic [2:0] F,
            output logic [15:0] Y,
            logic [15:0] w0, w1, w2, w3, w4, w5
            );
    
    assign w0 = ~B;
    mux tiny             ( .i0(B), .i1(w0), .s(F[2]), .y(w1) );
    adder one            ( .a(A), .b(w1), .cin(F[2]), .y(w4));
    assign w2 = A & B;
    assign w3 = A | B;
    assign w5 = A ^ B;
    FourToOneMux mux_one (.I0(w2), .I1(w3), .I2(w4), .I3(w5), .S(F[1:0]), .Y(Y));
endmodule
