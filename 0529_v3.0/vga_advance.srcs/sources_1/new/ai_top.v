`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/23 23:57:24
// Design Name: 
// Module Name: ai_top
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


module ai_top(
    input CLK,
    input p_100hz,
    input p_10khz,
    input p_5hz,
    input WORK,
    input [63:0] BRD,
    input [63:0] TIP,
    input [1:0] STEP,
    input [2:0] PX,
    input [2:0] PY,
    output [2:0] OD,
    output WRITE
    );
    wire FINISH, RST, WR;
    wire [17:0] POS;
    
    assign WRITE = p_5hz && WR;
    
    ai_ctrl A1(.clk(CLK),.ena(p_100hz),.work(WORK),.finish(FINISH),.rst(RST),.write(WR));
    ai_calc A2(.clk(CLK),.ena(p_10khz),.set(RST),.brd(BRD),.tip(TIP),.finish(FINISH),.ans(POS));
    ai_play A3(.clk(CLK),.ena(p_5hz),.write(WR),.play(POS),.px(PX),.py(PY),.step(STEP),.od(OD));
endmodule
