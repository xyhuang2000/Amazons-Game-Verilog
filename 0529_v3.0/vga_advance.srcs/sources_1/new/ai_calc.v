`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/23 13:11:53
// Design Name: 
// Module Name: ai_calc
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


module ai_calc(
    input clk,
    input ena,
    input set,
    input [63:0] brd,
    input [63:0] tip,
    output finish,
    output [17:0] ans
    );
    parameter [15:0] dx = 16'b1010100100000001;
    parameter [15:0] dy = 16'b0001101010010000;
    reg [63:0] bd [3:0];
    reg [63:0] tp [2:0];
    reg [6:0] pos [2:0];
    reg [17:0] best;
    reg [1:0] step;
    reg [7:0] score;
    reg [7:0] max;
    integer i1, i2, i3, j1, j2, j3, k1, k2, k3;
    reg [5:0] chs [3:0];
    reg [3:0] x1, y1, x2, y2;
    reg [1:0] cs;
    
    assign ans = best;
    
    always @(posedge clk) if (ena) begin
        if (set) begin
            bd[0] <= brd;
            bd[1] <= 0;
            bd[2] <= 0;
            bd[3] <= 0;
            tp[0] <= tip;
            step <= 0;
            pos[0] <= 0;
            pos[1] <= 0;
            pos[2] <= 0;
            max <= 0;
            best <= 18'o111111;
        end
        else case (step)
            0:  begin
                if (pos[0] < 64) begin
                    if (tp[0][pos[0][5:0]]) begin
                        bd[1] <= bd[0];
                        pos[1] <= 0;
                        step <= 1;
                        pos[0] <= pos[0];
                        pos[2] <= pos[2];
                        bd[0] <= brd;
                        bd[2] <= bd[2];
                        bd[3] <= bd[3];
                        max <= max;
                        best <= best;
                        tp[0] <= tip;
                    end
                    else begin
                        step <= 0;
                        pos[0] <= pos[0] + 1;
                        pos[1] <= pos[1];
                        pos[2] <= pos[2];
                        bd[0] <= brd;
                        bd[1] <= bd[1];
                        bd[2] <= bd[2];
                        bd[3] <= bd[3];
                        max <= max;
                        best <= best;
                        tp[0] <= tip;
                    end
                end
                else begin
                    step <= 0;
                    pos[0] <= pos[0];
                    pos[1] <= pos[1];
                    pos[2] <= pos[2];
                    bd[0] <= brd;
                    bd[1] <= bd[1];
                    bd[2] <= bd[2];
                    bd[3] <= bd[3];
                    max <= max;
                    best <= best;
                    tp[0] <= tip;
                end
            end
            1:  begin
                if (pos[1] >= 64) begin
                    pos[0] <= pos[0] + 1;
                    step <= 0;
                    pos[1] <= pos[1];
                    pos[2] <= pos[2];
                    bd[0] <= brd;
                    bd[1] <= bd[1];
                    bd[2] <= bd[2];
                    bd[3] <= bd[3];
                    max <= max;
                    best <= best;
                    tp[0] <= tip;
                end
                else if (tp[1][pos[1][5:0]]) begin
                    bd[2] <= bd[1] - (1 << pos[0][5:0]) + (1 << pos[1][5:0]);
                    pos[2] <= 0;
                    step <= 2;
                    pos[0] <= pos[0];
                    pos[1] <= pos[1];
                    bd[0] <= brd;
                    bd[1] <= bd[1];
                    bd[3] <= bd[3];
                    max <= max;
                    best <= best;
                    tp[0] <= tip;
                end
                else begin
                    pos[1] <= pos[1] + 1;
                    step <= 1;
                    pos[0] <= pos[0];
                    pos[2] <= pos[2];
                    bd[0] <= brd;
                    bd[1] <= bd[1];
                    bd[2] <= bd[2];
                    bd[3] <= bd[3];
                    max <= max;
                    best <= best;
                    tp[0] <= tip;
                end
            end
            2:  begin
                if (pos[2] >= 64) begin
                    pos[1] <= pos[1] + 1;
                    step <= 1;
                    pos[0] <= pos[0];
                    pos[2] <= pos[2];
                    bd[0] <= brd;
                    bd[1] <= bd[1];
                    bd[2] <= bd[2];
                    bd[3] <= bd[3];
                    max <= max;
                    best <= best;
                    tp[0] <= tip;
                end
                else if (tp[2][pos[2][5:0]]) begin
                    bd[3] <= bd[2] + (1 << pos[2]);
                    step <= 3;
                    pos[0] <= pos[0];
                    pos[1] <= pos[1];
                    pos[2] <= pos[2];
                    bd[0] <= brd;
                    bd[1] <= bd[1];
                    bd[2] <= bd[2];
                    max <= max;
                    best <= best;
                    tp[0] <= tip;
                end
                else begin
                    pos[2] <= pos[2] + 1;
                    step <= 2;
                    pos[0] <= pos[0];
                    pos[1] <= pos[1];
                    bd[0] <= brd;
                    bd[1] <= bd[1];
                    bd[2] <= bd[2];
                    bd[3] <= bd[3];
                    max <= max;
                    best <= best;
                    tp[0] <= tip;
                end
            end
            3:  begin
                if (score >= max) begin
                    max <= score;
                    best <= {pos[2][5:0],pos[1][5:0],pos[0][5:0]};
                end
                else begin
                    max <= max;
                    best <= best;
                end
                pos[2] <= pos[2] + 1;
                step <= 2;
                pos[0] <= pos[0];
                pos[1] <= pos[1];
                bd[0] <= brd;
                bd[1] <= bd[1];
                bd[2] <= bd[2];
                bd[3] <= bd[3];
                tp[0] <= tip;
            end
            default: begin
                step <= step;
                pos[0] <= pos[0];
                pos[1] <= pos[1];
                pos[2] <= pos[2];
                bd[0] <= brd;
                bd[1] <= bd[1];
                bd[2] <= bd[2];
                bd[3] <= bd[3];
                max <= max;
                best <= best;
                tp[0] <= tip;
            end
        endcase
    end
    
    assign finish = (pos[0] >= 64);
    
    always @(*) begin
        tp[1] = 0;
        for (j2 = 1; j2 < 17; j2 = j2 + 2) begin : part01
            x1 = pos[0][5:3];
            y1 = pos[0][2:0];
            for (k2 = 0; k2 < 7; k2 = k2 + 1) begin
                x1 = x1 + {dx[j2],dx[j2-1]} - 1;
                y1 = y1 + {dy[j2],dy[j2-1]} - 1;
                if ((x1 > 7) || (y1 > 7) || (bd[1][{x1[2:0],y1[2:0]}])) disable part01;
                else tp[1][{x1[2:0],y1[2:0]}] = 1;
            end
        end
        tp[2] = 0;
        for (j2 = 1; j2 < 17; j2 = j2 + 2) begin : part02
            x1 = pos[1][5:3];
            y1 = pos[1][2:0];
            for (k2 = 0; k2 < 7; k2 = k2 + 1) begin
                x1 = x1 + {dx[j2],dx[j2-1]} - 1;
                y1 = y1 + {dy[j2],dy[j2-1]} - 1;
                if ((x1 > 7) || (y1 > 7) || (bd[2][{x1[2:0],y1[2:0]}])) disable part02;
                else tp[2][{x1[2:0],y1[2:0]}] = 1;
            end
        end
    end
    
    always @(*) begin
        chs[0] = pos[1];
        cs = 0;
        for (i3 = 0; i3 < 64; i3 = i3 + 1) if ((i3 != pos[0]) && (i3 != pos[1]) && tp[0][i3%64]) begin
            cs = cs + 1;
            chs[cs] = i3;
        end
        score = 0;
        for (i3 = 0; i3 < 4; i3 = i3 + 1) begin : pa
            if (i3 > cs) disable pa;
            for (j3 = 1; j3 < 17; j3 = j3 + 2) begin : part03
                x2 = chs[i3][5:3];
                y2 = chs[i3][2:0];
                for (k3 = 0; k3 < 7; k3 = k3 + 1) begin
                    x2 = x2 + {dx[j3],dx[j3-1]} - 1;
                    y2 = y2 + {dy[j3],dy[j3-1]} - 1;
                    if ((x2 > 7) || (y2 > 7) || (bd[3][{x2[2:0],y2[2:0]}])) disable part03;
                    else score = score + 1;
                end
            end
        end
    end
endmodule
