`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/05/24 10:09:24
// Design Name: 
// Module Name: timer
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


module timer(
    input clk,
    output p_10khz,
    output p_100hz,
    output p_5hz
    );
    reg [24:0] p5 = 0;
    reg [19:0] p100 = 0;
    reg [13:0] p10k = 0;
    
    assign p_10khz = (p10k == 0);
    assign p_100hz = (p100 == 0);
    assign p_5hz = (p5 == 0);
    
    always @(posedge clk) begin
        if (p5 == 19999999) p5 <= 0;
        else p5 <= p5 + 1;
        if (p100 == 999999) p100 <= 0;
        else p100 <= p100 + 1;
        if (p10k == 9999) p10k <= 0;
        else p10k <= p10k + 1;
    end
endmodule
