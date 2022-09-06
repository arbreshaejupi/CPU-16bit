`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2022 11:13:47 AM
// Design Name: 
// Module Name: ALUControl
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

//ALU Control (CU_OUT_x, Function Code nga R-formati, Opcode, T19) - eshte shtuar ALUOp per I-format qe nuk eshte ne foto po kerkohet ne detyre
module ALUControl(
input [1:0] ALUOp,
input [3:0] Funct,
input [2:0] opcode,
output reg [3:0] ALUCtrl
);

always @(ALUOp)
begin
case(ALUOp) // Pyet per vleren e ALUOp, 00-lw,sw; 01-beq,bne, 10-R-format, 11 - I-format
    2'b00: ALUCtrl = 4'b0100; //LW+SW (mbledhje)
    2'b01: ALUCtrl = 4'b1100; //BEQ+BNE (zbritje)
    2'b10: //R-Format
        case(Funct)
            4'b0000: ALUCtrl = 4'b0100; //ADD
            4'b0001: ALUCtrl = 4'b1100; //SUB
            4'b1101 : ALUCtrl = 4'b0011; //XOR
            4'b0010 : ALUCtrl = 4'b0111; //MOD/DIV
        endcase

    2'b11: //I-format
        case(opcode)
            3'b011: ALUCtrl = 4'b0101; // per ADDI
            3'b001: ALUCtrl = 4'b0000; // per ANDI
            3'b010: ALUCtrl = 4'b0010; // per ORI
            3'b100: ALUCtrl = 4'b0001; // per SLTI
        endcase
endcase
end

endmodule

