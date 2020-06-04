`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/23 12:43:36
// Design Name: 
// Module Name: ai_ctrl
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


module ai_ctrl(
    input clk,
    input ena,
    input work,
    input finish,
    output rst,
    output write
    );
    parameter [1:0]    IDLE = 2'b00,
                        LOAD = 2'b01,
                        CALC = 2'b10,
                        PLAY = 2'b11;
    reg [1:0] state = IDLE;
    
    always @(posedge clk)
    case (state)
        IDLE:   if (work) state <= LOAD;
                else state <= IDLE;
        LOAD:   if (work) state <= CALC;
                else state <= LOAD;
        CALC:   if (finish) state <= PLAY;
                else state <= CALC;
        PLAY:   if (!work) state <= IDLE;
                else state <= PLAY;
        default:state <= IDLE;
    endcase
    
    assign rst = (state == IDLE) || (state == LOAD);
    assign write = (state == PLAY);
endmodule
