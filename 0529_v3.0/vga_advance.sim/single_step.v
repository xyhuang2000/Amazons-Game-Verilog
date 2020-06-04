`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/01 21:16:42
// Design Name: 
// Module Name: single_step
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


module single_step(
    input wk1,
    input wk0,
    input rst,
    input [2:0] od1,
    input [2:0] od0,
    output ena1,
    output ena0,
    input [2:0] g_x,
    input [2:0] g_y,
    input clk,
    input [1:0] mode,
    output reg [3:0] g_io,
    output [1:0] game_over,
    output [63:0] bd,
    output [63:0] tp,
    output [1:0] st,
    output [2:0] p_x,
    output [2:0] p_y
    );
    reg [63:0] brd;
    reg [63:0] tip;
    reg [1:0] step;
    reg [2:0] px;
    reg [2:0] py;
    reg over;
    
    assign bd = brd;
    assign tp = tip;
    assign st = step;
    assign p_x = px;
    assign p_y = py;
    
    reg [5:0] chs [7:0];
    reg [2:0] sl, rx, ry;
    reg [3:0] gph [63:0];
    reg player;
    wire [2:0] od;
    wire ena;
    parameter [15:0] dx = 16'b1010100100000001;
    parameter [15:0] dy = 16'b0001101010010000;
    parameter [2:0] NULL  = 3'b000,
                     UP    = 3'b001,
                     DOWN  = 3'b010,
                     LEFT  = 3'b011,
                     RIGHT = 3'b100,
                     ENTER = 3'b101;
    integer i, j, k;
    reg [3:0] cnt, x, y;
    
    assign od = mode[player] ? od1 : od0;
    assign ena1 = mode[player];
    assign ena0 = !mode[player];
    assign ena = mode[player] ? wk1 : wk0;
    
    always @(posedge clk) begin
    if (rst) begin
        chs[0] <= 6'o02;
        chs[1] <= 6'o20;
        chs[2] <= 6'o50;
        chs[3] <= 6'o72;
        chs[4] <= 6'o05;
        chs[5] <= 6'o27;
        chs[6] <= 6'o57;
        chs[7] <= 6'o75;
        brd <= 64'h2400810000810024;
        px <= 0;
        py <= 0;
        step <= 0;
        player <= 0;
        sl <= 0;
    end
    if (ena)
    case (od)
        UP    : if (px != 0) px <= px - 1;
        DOWN  : if (px != 7) px <= px + 1;
        LEFT  : if (py != 0) py <= py - 1;
        RIGHT : if (py != 7) py <= py + 1;
        ENTER : if (tip[{px,py}]) begin
                    case (step)
                        2'b00:  begin
                                    for (i = 0; i < 8; i = i + 1) if (chs[i] == {px,py}) sl <= i;
                                    step <= 2'b01;
                                    rx <= px;
                                    ry <= py;
                                    px <= px;
                                    py <= py;
                                    player <= player;
                                    brd <= brd;
                                end
                        2'b01:  begin
                                    brd[{px,py}] <= 1;
                                    brd[chs[sl]] <= 0;
                                    chs[sl] <= {px,py};
                                    step <= 2'b10;
                                    rx <= px;
                                    ry <= py;
                                    px <= px;
                                    py <= py;
                                    player <= player;
                                end
                        2'b10:  begin
                                    brd[{px,py}] <= 1;
                                    step <= 2'b00;
                                    player <= ~player;
                                    rx <= px;
                                    ry <= py;
                                    px <= px;
                                    py <= py;
                                end
                        default:step <= 2'b00;
                    endcase
                end
                else begin
                    brd <= brd;
                    px <= px;
                    py <= py;
                end
        default:brd <= brd;
    endcase
    end
    
    always @(step) begin
        tip = 0;
        if (step[0] || step[1]) begin
            for (j = 1; j < 17; j = j + 2) begin : part01
                x = rx;
                y = ry;
                for (k = 0; k < 7; k = k + 1) begin
                    x = x + {dx[j],dx[j-1]} - 1;
                    y = y + {dy[j],dy[j-1]} - 1;
                    if ((x > 7) || (y > 7) || (brd[{x[2:0],y[2:0]}])) disable part01;
                    else tip[{x[2:0],y[2:0]}] = 1;
                end
            end
            over = 0;
        end
        else begin
            for (i = 0; i < 4; i = i + 1) begin
                cnt = 0;
                for (j = 1; j < 17; j = j + 2) begin
                    x = chs[{player,i[1:0]}][5:3] + {dx[j],dx[j-1]} - 1;
                    y = chs[{player,i[1:0]}][2:0] + {dy[j],dy[j-1]} - 1;
                    if ((x <= 7) && (y <= 7) && !brd[{x[2:0],y[2:0]}]) cnt = cnt + 1;
                end
                if (cnt != 0) tip[chs[{player,i[1:0]}]] = 1;
            end
            over = (tip == 0);
        end
    end
    
    assign game_over[1] = over;
    assign game_over[0] = !player;
    
    always @(*) begin
        for (i = 0; i < 64; i = i + 1) gph[i] = 4'b0011 * brd[i] | 4'b1000 * tip[i];
        for (i = 0; i < 4; i = i + 1) gph[chs[i]][1] = 0;
        for (i = 4; i < 8; i = i + 1) gph[chs[i]][0] = 0;
        gph[{px,py}][2] = 1;
    end
    
    always @(*) begin
        g_io = gph[{g_x,g_y}];
    end
    
endmodule
