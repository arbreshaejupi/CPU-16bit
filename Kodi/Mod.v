`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2022 09:16:25 PM
// Design Name: 
// Module Name: Mod
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


module Mod(
    input Hyrja1, //A
    input Hyrja2, //B
    output Dalja //MOD
    );
//num2 x 
//Hyrja1 % Hyrja 2 = Dalja
integer x, y;

initial
begin
x = Hyrja2;
y = Hyrja1;
while(x < y)
begin
assign x = x + x;
end
end
assign Dalja = y - x;

endmodule
