`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/13 18:38:48
// Design Name: 
// Module Name: button_detect
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


module button_detect(
    input [4:0] bt,
    input work0,
    input work1,
    output [2:0] od,
    output ena,
    output [2:0] bto,
    input clk
    );
    reg [2:0] pre, last, now;
    parameter [2:0] NULL  = 3'b000,
                     UP    = 3'b001,
                     DOWN  = 3'b010,
                     LEFT  = 3'b011,
                     RIGHT = 3'b100,
                     ENTER = 3'b101;
    
    always @(posedge clk) if (work1) begin
        pre <= last;
        last <= now;
        case (bt)
            5'b00001:  now <= ENTER; //bt[0]
            5'b00010:  now <= UP;    //bt[1]
            5'b00100:  now <= DOWN;  //bt[2]
            5'b01000:  now <= LEFT;  //bt[3]
            5'b10000:  now <= RIGHT; //bt[4]
            default:    now <= NULL;
        endcase
    end
    
    assign ena = work0 && work1 && ((now == last) && (pre == NULL));
    assign od = ena * now;
    assign bto = {3{ena}} & bt[2:0];
endmodule
