`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2022 11:50:52 AM
// Design Name: 
// Module Name: InstructionMemory
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


module InstructionMemory(
input wire[15:0] PCAddress,
output wire[15:0] Instruction);

reg[7:0] instrMem[127:0];

initial
$readmemb("instructMemory.mem", instrMem);


assign Instruction[15:8] = instrMem[PCAddress];
assign Instruction[7:0] = instrMem[PCAddress + 16'd1];


endmodule