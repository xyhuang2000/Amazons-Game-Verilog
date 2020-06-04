`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/23 23:15:29
// Design Name: 
// Module Name: ai_play
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


module ai_play(
    input clk,
    input ena,
    input write,
    input [17:0] play,
    input [2:0] px,
    input [2:0] py,
    input [1:0] step,
    output [2:0] od
    );
    reg [2:0] ods;
    parameter [2:0] NULL  = 3'b000,
                     UP    = 3'b001,
                     DOWN  = 3'b010,
                     LEFT  = 3'b011,
                     RIGHT = 3'b100,
                     ENTER = 3'b101;
    wire [5:0] pos [2:0];

    assign pos[2] = play[17:12];
    assign pos[1] = play[11:6];
    assign pos[0] = play[5:0];
    assign od = write * ods;
    
    always @(*) begin
        if (px > pos[step][5:3]) ods = UP;
        else if (px < pos[step][5:3]) ods = DOWN;
        else if (py > pos[step][2:0]) ods = LEFT;
        else if (py < pos[step][2:0]) ods = RIGHT;
        else if ({px,py} == pos[step]) ods = ENTER;
    end
endmodule
