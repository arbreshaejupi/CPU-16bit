`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2022 11:25:41 AM
// Design Name: 
// Module Name: RegisterFile
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


module RegisterFile(
    input wire[2:0] RS,
    input wire[2:0] RT,
    input wire[2:0] RD,
    input wire[15:0] WriteData,
    input wire RegWrite,
    input wire Clock,
    output wire[15:0] ReadRS,
    output wire[15:0] ReadRT
    );

    reg[15:0] Registers[7:0];

//Reseto te gjithe regjistrat ne 0
integer i;
initial 
begin
for(i=0;i<15;i=i+1)
   Registers[i] <= 16'd0; 
end

//Shkruaj ne regjister
always @(posedge Clock)
begin
Registers[RD] <= WriteData;
end

//lexo regjistrat ReadData1, ReadData2
assign ReadRS = Registers[RS];
assign ReadRT = Registers[RT];
endmodule