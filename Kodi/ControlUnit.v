`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/21/2022 10:23:16 AM
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(
    input [2:0] OPCODE, //HYRJA NGA D_OUT_1
    output reg RegDst, //DALJET E CU, CU_OUT_x
    output reg Branch,
    output reg MemRead,
    output reg MemToReg,
    output reg[1:0] AluOp,
    output reg MemWrite,
    output reg AluSrc,
    output reg RegWrite
    );
    
    always @ (OPCODE)
begin
case(OPCODE)
3'b000: //PER R-FORMAT
    begin
    RegDst = 1;
    AluSrc = 0;
    MemToReg = 0;
    RegWrite = 1;
    MemRead = 0;
    MemWrite = 0;
    Branch = 0;
    AluOp[1] = 1;
    AluOp[0] = 0;
    end

3'b101: //PER LW
    begin
    RegDst = 0;
    AluSrc = 1;
    MemToReg = 1;
    RegWrite = 1;
    MemRead = 1;
    MemWrite = 0;
    Branch = 0;
    AluOp[1] = 0;
    AluOp[0] = 0;
    end 
    
3'b110: //PER SW
    begin
    RegDst = 0;
    AluSrc = 1;
    MemToReg = 0;
    RegWrite = 0;
    MemRead = 0;
    MemWrite = 1;
    Branch = 0;
    AluOp[1] = 0;
    AluOp[0] = 0;
    end 
    
3'b111: //PER BNE
    begin
    RegDst = 0;
    AluSrc = 0;
    RegWrite = 0;
    MemRead = 0;
    MemWrite = 0;
    Branch = 1;
    AluOp[1] = 0;
    AluOp[0] = 1;
    end 
    
3'b001: //PER ANDI
    begin
    RegDst = 0;
    AluSrc = 1;
    MemToReg = 0;
    RegWrite = 1;
    MemRead = 0;
    MemWrite = 0;
    Branch = 0;
    AluOp[1] = 1;
    AluOp[0] = 1;
    end 
3'b011: //PER ADDI
    begin
    RegDst = 0;
    AluSrc = 1;
    MemToReg = 0;
    RegWrite = 1;
    MemRead = 0;
    MemWrite = 0;
    Branch = 0;
    AluOp[1] = 1;
    AluOp[0] = 1;
    end 
    
3'b010: //PER ORI
    begin
    RegDst = 0;
    AluSrc = 1;
    MemToReg = 0;
    RegWrite = 1;
    MemRead = 0;
    MemWrite = 0;
    Branch = 0;
    AluOp[1] = 1;
    AluOp[0] = 1;
    end 
    
 3'b100: //PER SLTI
    begin
    RegDst = 0;
    AluSrc = 1;
    MemToReg = 0;
    RegWrite = 1;
    MemRead = 0;
    MemWrite = 0;
    Branch = 0;
    AluOp[1] = 1;
    AluOp[0] = 1;
    end 
endcase

end
endmodule