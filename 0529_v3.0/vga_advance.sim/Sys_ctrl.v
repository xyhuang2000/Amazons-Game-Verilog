`timescale 1ns / 1ps
module Sys_ctrl(
	input clk,
	input btn_up,
	input btn_down,
	input btn_enter,
	input hang,
	input [1:0] game_over,
	output reg [1:0] cmd,
	output reg [1:0] inf,
	output reg rst,
	output reg [1:0] p_num
);
	reg [2:0] pstate = 3'b000;
    reg [2:0] nstate = 3'b000;
	parameter [2:0] idle = 3'b000, player_s = 3'b001, ai_s = 3'b100, player = 3'b011, ai = 3'b110, 
					p_hang = 3'b111, blue_win = 3'b010, red_win = 3'b101;
	parameter [1:0] r_w = 2'b01, b_w = 2'b10, chs = 2'b11, scrn = 2'b00;
	parameter [1:0] u_l = 2'b01, d_l = 2'b10;
	parameter [1:0] p2p = 2'b00, p2a = 2'b10, a2a = 2'b11;
	
	always@(posedge clk)  pstate <= nstate;
	
	always@(btn_up, btn_down, btn_enter, hang, pstate, game_over)
	begin
		case(pstate)
		idle: if(btn_up == 1) nstate <= player_s;
			  else if(btn_down == 1) nstate <= ai_s;
			  else if(btn_enter == 1) nstate <= player_s;
			  else nstate <= idle;
		player_s: if(btn_enter == 1) nstate <= player;
				  else if(btn_down == 1) nstate <= ai_s;
				  else nstate <= player_s;
		ai_s: if(btn_enter == 1) nstate <= ai;
			  else if(btn_up == 1) nstate <= player_s;
			  else nstate <= ai_s;
	    player: if(game_over == 2'b10) nstate <= red_win;
				else if(game_over == 2'b11) nstate <= blue_win;
				else if(hang == 1) nstate <= p_hang;
				else nstate <= player;
		ai: if(game_over == 2'b10) nstate <= red_win;
			else if(game_over == 2'b11) nstate <= blue_win;
			else nstate <= ai;
		p_hang: if(hang == 0) nstate <= player;
				else if(game_over == 2'b10) nstate <= red_win;
			    else if(game_over == 2'b11) nstate <= blue_win;
				else nstate <= p_hang;
		blue_win: if(btn_down == 1|| btn_enter == 1 || btn_up == 1) nstate <= idle;
				  else nstate <= blue_win;
		red_win: if(btn_down == 1|| btn_enter == 1 || btn_up == 1) nstate <= idle;
		         else nstate <= red_win;
	    default: nstate <= idle;
		endcase
	end
	
	always@(pstate)
	begin
		case(pstate)
		idle: begin cmd <= scrn; rst <= 1; inf <= u_l; p_num <= p2p; end
        player_s: begin cmd <= scrn; rst <= 1; inf <= u_l;p_num <= p2p; end
		ai_s: begin cmd <= scrn; rst <= 1; inf <= d_l; p_num <= p2p; end
		player: begin cmd <= chs; rst <= 0; inf <= 2'b00; p_num <= p2p; end
		ai: begin cmd <= chs; rst <= 0; inf <= 2'b00; p_num <= p2a; end
		p_hang: begin cmd <= chs; rst <= 0; inf <= 2'b00;p_num <= a2a; end
		blue_win: begin cmd <= b_w; rst <= 0; inf <= u_l; p_num <= p2p; end
		red_win: begin cmd <= r_w; rst <= 0; inf <= u_l; p_num <= p2p; end
		default: begin cmd <= scrn; rst <= 0; inf <= u_l; p_num <= p2p; end 
		endcase
	end	
	
endmodule