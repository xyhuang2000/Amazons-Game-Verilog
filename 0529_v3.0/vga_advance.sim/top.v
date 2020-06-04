`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/13 21:54:14
// Design Name: 
// Module Name: top
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
/*
    module VGA_Multi(
    //控制信号
    input wire [1:0] cmd,
    //时钟信号
    input clk,  
    //复位信号
    input rst,
    //棋面信号
    input wire [3:0] data_io,  
    //RGB信号
    output reg [3:0] r,  
    output reg [3:0] g,  
    output reg [3:0] b,
    //坐标信号
    output reg [2:0] x,
    output reg [2:0] y,  
    //扫描信号
    output hs,  
    output vs, 
    //读取使能
    output reg EN
    );
 */
 /*
 module button_detect(
    input [5:0] bt,
    output [2:0] od,
    output ena,
    input clk
    );
 */
 /*
 module single_step(
    input ena,
    input [2:0] od,
    input [2:0] g_x,
    input [2:0] g_y,
    input g_rd,
    output reg [3:0] g_io
    );
 */

module top(
    input clk,
    input rst_vga,
    input wire btn_up,
    input wire btn_down,
    input wire btn_enter,
    input wire btn_left,
    input wire btn_right,
    input wire hang,
    output wire [3:0] r,
    output wire [3:0] g,
    output wire [3:0] b,
    output wire hs,
    output wire vs
    );
    wire [2:0] OD1;
    wire [2:0] OD0;
    wire ENA;
    wire [2:0] C_X;
    wire [2:0] C_Y;
    wire [2:0] C_Z;
    wire [3:0] IO;
    wire RST, LINE_UP, LINE_DOWN, LINE_ENTER, WK1, WK0, ENA1, ENA0, P5, P100, P10K;
    wire [63:0] BD;
    wire [63:0] TP;
    wire [1:0] ST;
    wire [2:0] P_X;
    wire [2:0] P_Y;
    wire [1:0] CMD, INF, GAME_OVER, P_NUM;
    //rd线、pnum线和mode线都没连别的模块，rd我来解决,hlb处理pnum和mode就可
    button_detect U1(.bt({btn_right,btn_left,btn_down,btn_up,btn_enter}),.od(OD0),.work0(ENA0),.work1(P100),.ena(WK0),.clk(clk),
    .bto({LINE_DOWN,LINE_UP,LINE_ENTER}));
    /*
    module button_detect(
    input [4:0] bt,
    output [2:0] od,
    output ena,
    output [2:0] bto,
    input clk
    );
    );
    */
    single_step U2(.game_over(GAME_OVER),.od1(OD1),.od0(OD0),.wk1(WK1),.wk0(WK0),.ena1(ENA1),.ena0(ENA0),.g_x(C_X),.g_y(C_Y),.g_io(IO),
    .rst(RST),.clk(clk),.p_x(P_X),.p_y(P_Y),.bd(BD),.tp(TP),.st(ST),.mode(P_NUM));
    /*
    module single_step(
    input ena,
    input rst,
    input [2:0] od,
    input [2:0] g_x,
    input [2:0] g_y,
    input clk,
    input mode,
    output reg [3:0] g_io,
    output [1:0] game_over
    );
    */
    VGA_Multi U3(.cmd(CMD),.inf(INF),.clk(clk),.rst(rst_vga),.data_io(IO),.r(r),.g(g),.b(b),
    .x(C_X),.y(C_Y),.hs(hs),.vs(vs));
     /*
    module Sys_ctrl(
	input clk,
	input btn_up,
	input btn_down,
	input btn_enter,
	input hang,
	input [1:0] game_over,
	output reg [1:0] cmd,
	output reg [1:0] inf,
	output reg mode,
	output reg rst
);
    */
    Sys_ctrl U4(.clk(clk),.btn_up(LINE_UP),.btn_down(LINE_DOWN),.btn_enter(LINE_ENTER),.hang(hang),
    .game_over(GAME_OVER),.cmd(CMD),.inf(INF),.rst(RST),.p_num(P_NUM));
    /*
    module VGA_Multi(
    //控制信号
    input wire [1:0] cmd,
    input wire [1:0] inf,
    //时钟信号
    input clk,  
    //复位信号
    input rst,
    //棋面信号
    input wire [3:0] data_io,  
    //RGB信号
    output reg [3:0] r,  
    output reg [3:0] g,  
    output reg [3:0] b,
    //坐标信号
    output reg [2:0] x,
    output reg [2:0] y,  
    //扫描信号
    output hs,  
    output vs, 
    //读取使能
    output reg EN
    );
    */
    ai_top U5(.CLK(clk),.WORK(ENA1),.WRITE(WK1),.PX(P_X),.PY(P_Y),.STEP(ST),.BRD(BD),.TIP(TP),.OD(OD1),
    .p_5hz(P5),.p_100hz(P100),.p_10khz(P10K));
    timer U6(.clk(clk),.p_5hz(P5),.p_100hz(P100),.p_10khz(P10K));
endmodule
