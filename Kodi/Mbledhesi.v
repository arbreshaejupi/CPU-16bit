`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2022 09:14:51 PM
// Design Name: 
// Module Name: Mbledhesi
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


module Mbledhesi(
    input A,
    input B,
    input CIN,
    output Shuma,
    output COUT
    );

    assign Shuma = A ^ B ^ CIN;
    assign COUT = CIN & A | CIN & B | A & B;
endmodule
