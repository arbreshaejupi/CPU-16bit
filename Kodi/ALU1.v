`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2022 09:23:57 PM
// Design Name: 
// Module Name: ALU1
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


module ALU1(
input A,
input B,
input CIN,
input BInvert,
input Less,
input [2:0]Op,
output Result,
output CarryOut
  );
  
  wire JoB, mB, and_wire, or_wire, mb_wire, xor_wire, mod_wire, slti_wire, addi_wire;
  
  assign JoB=~B;
  mux2ne1 muxB(B, JoB, BInvert, mB);
  assign and_wire=A&mB;
  assign or_wire=A|mB;
  Mbledhesi m1(A, mB, CIN, mb_teli, CarryOut);
  assign xor_wire=A^mB;
//  assign mod_wire=A%mB; 
  Mod modulo(A, mb, mod_wire);
  assign slti_wire=A<mB ? 1:0;
  Mbledhesi m2(mb_wire, 1'b1, CIN, addi_wire, CarryOut);
  mux8ne1 MuxiKryesor(and_wire, or_wire, mb_wire, xor_wire, mod_wire, slti_wire, addi_wire, Less, Op, Result);
  
endmodule
