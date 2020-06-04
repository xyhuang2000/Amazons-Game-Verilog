//VGA综合机
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: PKU_EECS
// Engineer:LIU PENG
// Create Date: 2020/05/01 22:40:57
// Design Name: VGA_FULL
// Module Name: VGA_Multi
// Project Name: 
// Target Devices: 
// Tool Versions: 1.01
// Description: The initial version of VGA module 
// Dependencies: 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// I/Os to RAM are disabled
//////////////////////////////////////////////////////////////////////////////////
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
    output vs
    );
    //-------------------------------------------------------------------------参数定义--------------------------------------------------------------------
    //边界
    parameter UP_BOUND = 31;  
    parameter DOWN_BOUND = 510;  
    parameter LEFT_BOUND = 144;  
    parameter RIGHT_BOUND = 783;
    //结束
    parameter left_q = 363;//左边界
   	parameter up_q = 170;//上边界
   	parameter right_q = 564;//右边界
    parameter down_q = 371;//下边界
    parameter col_q = 200;
    //最上方字AMAZON
    parameter left_a = 215;//左边界
   	parameter up_a = 100;//上边界
   	parameter right_a = 714;//右边界
    parameter down_a = 203;//下边界
    parameter col = 498;
    //屏幕第一行字, 占8个字符，8*7 = 56， 
	parameter up_pos_u = 267;
	parameter down_pos_u = 274;
	parameter left_pos_u = 457;
	parameter right_pos_u = 512;
	//屏幕第二行字，占两个字符，2*7 = 14，
	parameter up_pos_l = 280;
	parameter down_pos_l =287;
	parameter left_pos_l = 457;
	parameter right_pos_l = 470;
	//棋盘
	parameter d = 30;//方格宽度
    parameter l = 15;//方格中心
    parameter left_ud = 304;//左边界
    parameter up_sk = 151;//上边界	
    parameter right_ud = 542;//右边界
    parameter down_sk = 390;//下边界
    parameter [1:0] u_l = 2'b01, d_l = 2'b10;
	//-------------------------------------------------------------------------参数定义--------------------------------------------------------------------
	//-------------------------------------------------------------------------RGB时钟和计数---------------------------------------------------------------
    wire pclk;//25MHz
	reg [1:0] count;
	reg [9:0] hcount, vcount;
	reg [15:0] addr = 0;
    wire [11:0] data;
    wire [11:0] datab;
    wire [11:0] datar;
	//-------------------------------------------------------------------------RGB时钟和计数---------------------------------------------------------------
    //-------------------------------------------------------------------------位置计数--------------------------------------------------------------------
    reg [9:0] last_line_x;//上一个跨过的横向边界位置
    reg [9:0] last_line_y;//上一个跨过的纵向边界位置
    reg [3:0] last_f;//上一个灰度
    integer i;
    integer j;
    //-------------------------------------------------------------------------位置计数--------------------------------------------------------------------
    //-------------------------------------------------------------------------棋子------------------------------------------------------------------------
    reg [3:0] chs;
    //-------------------------------------------------------------------------棋子------------------------------------------------------------------------
    reg [1:0] pic;
    reg [1:0] Board [509:0];
    parameter [3:0] red_o = 4'b0001, yel_o = 4'b0101, red_g = 4'b1001, yel_g = 4'b1101, blue_o = 4'b0010,
    cyan_o = 4'b0110, blue_g = 4'b1010, cyan_g = 4'b1110, black_o = 4'b0011, gray_o = 4'b0111, black_g = 4'b1011,
    gray_g = 4'b1111, p_o = 4'b0100, tip_o = 4'b1000, p_g = 4'b1100;  
    parameter [3:0] tip_red = 4'b0111, tip_green = 4'b1111, tip_blue = 4'b0111;
    //--------------------------------------------------------------------------字符------------------------------------------------------------------------
    rom_amazons UA(.clka(pclk),.addra(addr), .douta(data));
    rom_blue UB(.clka(pclk),.addra(addr), .douta(datab));
    rom_red UR(.clka(pclk),.addra(addr), .douta(datar));
    wire [7:0] p_1 [55:0];
    wire [7:0] p_2 [13:0];
    wire rd;
    reg [59:0] data_cmd;
    wire [59:0] data_line;
    assign data_line = data_cmd;
    //--------------------------------------------------------------------------字符------------------------------------------------------------------------
    //--------------------------------------------------------------------------前八------------------------------------------------------------------------
    RAM_set u_ram_1 (.clk(clk),.data(data_line[5:0]),.col0(p_1[0]),.col1(p_1[1]),.col2(p_1[2]),.col3(p_1[3]),.col4(p_1[4]),.col5(p_1[5]),.col6(p_1[6]));
    RAM_set u_ram_2 (.clk(clk),.data(data_line[11:6]),.col0(p_1[7]),.col1(p_1[8]),.col2(p_1[9]),.col3(p_1[10]),.col4(p_1[11]),.col5(p_1[12]),.col6(p_1[13]));
    RAM_set u_ram_3 (.clk(clk),.data(data_line[17:12]),.col0(p_1[14]),.col1(p_1[15]),.col2(p_1[16]),.col3(p_1[17]),.col4(p_1[18]),.col5(p_1[19]),.col6(p_1[20]));
    RAM_set u_ram_4 (.clk(clk),.data(data_line[23:18]),.col0(p_1[21]),.col1(p_1[22]),.col2(p_1[23]),.col3(p_1[24]),.col4(p_1[25]),.col5(p_1[26]),.col6(p_1[27]));
    RAM_set u_ram_5 (.clk(clk),.data(data_line[29:24]),.col0(p_1[28]),.col1(p_1[29]),.col2(p_1[30]),.col3(p_1[31]),.col4(p_1[32]),.col5(p_1[33]),.col6(p_1[34]));
    RAM_set u_ram_6 (.clk(clk),.data(data_line[35:30]),.col0(p_1[35]),.col1(p_1[36]),.col2(p_1[37]),.col3(p_1[38]),.col4(p_1[39]),.col5(p_1[40]),.col6(p_1[41]));
    RAM_set u_ram_7 (.clk(clk),.data(data_line[41:36]),.col0(p_1[42]),.col1(p_1[43]),.col2(p_1[44]),.col3(p_1[45]),.col4(p_1[46]),.col5(p_1[47]),.col6(p_1[48]));
    RAM_set u_ram_8 (.clk(clk),.data(data_line[47:42]),.col0(p_1[49]),.col1(p_1[50]),.col2(p_1[51]),.col3(p_1[52]),.col4(p_1[53]),.col5(p_1[54]),.col6(p_1[55]));
    //--------------------------------------------------------------------------前八------------------------------------------------------------------------
    //--------------------------------------------------------------------------后二------------------------------------------------------------------------
    RAM_set u_ram_9 (.clk(clk),.data(data_line[53:48]),.col0(p_2[0]),.col1(p_2[1]),.col2(p_2[2]),.col3(p_2[3]),.col4(p_2[4]),.col5(p_2[5]),.col6(p_2[6]));
    RAM_set u_ram_10 (.clk(clk),.data(data_line[59:54]),.col0(p_2[7]),.col1(p_2[8]),.col2(p_2[9]),.col3(p_2[10]),.col4(p_2[11]),.col5(p_2[12]),.col6(p_2[13]));
    //--------------------------------------------------------------------------后二------------------------------------------------------------------------
    //--------------------------------------------------------------------------获得像素时钟25MHz-----------------------------------------------------------
	assign pclk = count[1];
	always @ (posedge clk or posedge rst)
	begin
		if (rst) count <= 0;
		else count <= count+1;
	end
	//--------------------------------------------------------------------------获得像素时钟25MHz-----------------------------------------------------------
	//--------------------------------------------------------------------------列计数与行同步--------------------------------------------------------------
	assign hs = (hcount < 96) ? 0 : 1;
	always @ (posedge pclk or posedge rst)
	begin
		if (rst) hcount <= 0;
		else if (hcount == 799) hcount <= 0;
		else hcount <= hcount+1;
	end
	//--------------------------------------------------------------------------列计数与行同步--------------------------------------------------------------
	//--------------------------------------------------------------------------行计数与场同步--------------------------------------------------------------
	assign vs = (vcount < 2) ? 0 : 1;
	always @ (posedge pclk or posedge rst)
	begin
		if (rst) vcount <= 0;
		else if (hcount == 799) 
		begin
			if (vcount == 520) vcount <= 0;
			else vcount <= vcount+1;
		end
		else vcount <= vcount;
	end
	//--------------------------------------------------------------------------行计数与场同步--------------------------------------------------------------
	always @ (posedge pclk)
	begin//1
           if(cmd == 2'b00)//Page_1
           begin//2.1
               data_cmd <= 60'b010010_001010_111110_111110_011011_001110_100010_001010_010101_011001;
               if (vcount>=up_pos_u && vcount<=down_pos_u && hcount>=left_pos_u && hcount<=right_pos_u)
               begin//3.1
                    if (p_1[hcount-left_pos_u][vcount-up_pos_u]) 
                    begin//4.1
                        r <= 4'b1000 + ((inf == u_l) ? 4'b0111 : 4'b0000);
                        g <= 4'b1000 + ((inf == u_l) ? 4'b0111 : 4'b0000);
                        b <= 4'b1000 + ((inf == u_l) ? 4'b0111 : 4'b0000);
                    end//4.1
                    else 
                    begin//4.2
                        r <= 4'b0000;
                        g <= 4'b0000;
                        b <= 4'b0000;
                    end//4.2
               end//3.1
               else if(vcount>=up_pos_l && vcount<=down_pos_l && hcount>=left_pos_l && hcount<=right_pos_l)
               begin//3.2
                    if (p_2[hcount-left_pos_l][vcount-up_pos_l]) 
                    begin//4.1
                        r = 4'b1000 + ((inf == d_l) ? 4'b0111 : 4'b0000);
                        g <= 4'b1000 + ((inf == d_l) ? 4'b0111 : 4'b0000);
                        b <= 4'b1000 + ((inf == d_l) ? 4'b0111 : 4'b0000);
                    end//4.1
                    else 
                    begin//4.2
                        r <= 4'b0000;
                        g <= 4'b0000;
                        b <= 4'b0000;
                    end//4.2
               end//3.2
               else if(hcount > left_a && hcount < right_a &&  vcount > up_a && vcount < down_a)
               begin//3.3
                     addr <= (vcount - up_a - 1) * col + (hcount - left_a) - 1;
                     r <= data[11:8];
                     g <= data[7:4];
                     b <= data[3:0];
               end//3.3
               else
               begin//3.4
                    r <= 4'b0000;
                    g <= 4'b0000;
                    b <= 4'b0000;
               end//3.4
           end//2.1
           else if(cmd == 2'b10)
           begin//2.2
           if(hcount > left_q && hcount < right_q &&  vcount > up_q && vcount < down_q)
               begin//3.1
                     addr <= (vcount - up_q - 1) * col_q + (hcount - left_q) - 1;
                     r <= datab[11:8];
                     g <= datab[7:4];
                     b <= datab[3:0];
               end//3.1
           else
               begin//3.2
                    r <= 4'b0000;
                    g <= 4'b0000;
                    b <= 4'b0000;
               end//3.2
           end//2.2
           else if(cmd == 2'b01)
           begin//2.3
            if(hcount > left_q && hcount < right_q &&  vcount > up_q && vcount < down_q)
               begin//3.1
                     addr <= (vcount - up_q - 1) * col_q + (hcount - left_q) - 1;
                     r <= datar[11:8];
                     g <= datar[7:4];
                     b <= datar[3:0];
               end//3.1
           else
               begin//3.2
                    r <= 4'b0000;
                    g <= 4'b0000;
                    b <= 4'b0000;
               end//3.2
           end//2.3
           else
           begin//2.4
                if( hcount < left_ud | hcount > right_ud |  vcount < up_sk | vcount > down_sk )
                begin//3.1
                    r <= 0;  
                    g <= 0;  
                    b <= 0;
                end//3.1
                else 
                begin//3.2  
                    if ( (hcount == left_ud) && (vcount == up_sk) )//左上角
                    begin//4.1
                        last_line_x = left_ud;
                        last_line_y = up_sk;
                        last_f <= 4'b1001;
                        r <= 4'b1001;  
                        g <= 4'b1001;  
                        b <= 4'b1001;
                        x = 0;
                        y = 0;  
                    end//4.1
                    else if(hcount == right_ud)//右边界
                    begin//4.2
                        last_line_x = left_ud;
                        last_f = ~last_f;
                        r <= 4'b0000;  
                        g <= 4'b0000;  
                        b <= 4'b0000;
                        x = x;
                        y = 0;
                    end//4.2
                    else if(vcount == down_sk)//下边界
                    begin//4.3
                        last_f = ~last_f;                    
                        last_line_y = up_sk;
                        r <= 4'b0000;  
                        g <= 4'b0000;  
                        b <= 4'b0000;
                        x = 0;
                        y = y;
                    end//4.3
                    else//内部
                    begin//4.4
                        if((hcount < last_line_x + d) && (vcount < last_line_y + d))//一个方格
                        begin//5.1
                            x = x;
                            y = y;
                            chs = data_io;
                            case(chs)//6
                            red_o://红子
                            begin//6.1
                                if((hcount - last_line_x - l)**2 + (vcount - last_line_y - l)**2 < 100)
                                begin
                                r <= 4'b1111;
                                g <= 4'b0000;
                                b <= 4'b0000;
                                end
                                else
                                begin
                                r <= last_f;
                                g <= last_f;
                                b <= last_f;
                                end
                            end//6.1
                            blue_o://蓝子
                            begin//6.2
                                if((hcount - last_line_x - l)**2 + (vcount - last_line_y - l)**2 < 100)
                                begin
                                    r <= 4'b0000;
                                    g <= 4'b0000;
                                    b <= 4'b1111;
                                end
                                else
                                begin
                                    r <= last_f;
                                    g <= last_f;
                                    b <= last_f;
                                end
                            end//6.2
                            black_o://箭
                            begin//6.3
                                if((hcount - last_line_x - l)**2 + (vcount - last_line_y - l)**2 < 100)
                                begin
                                    r <= 4'b0000;
                                    g <= 4'b0000;
                                    b <= 4'b0000;
                                end
                                else
                                begin
                                    r <= last_f;
                                    g <= last_f;
                                    b <= last_f;
                                end
                            end//6.3
                            yel_o://红加光标
                            begin//6.4
                                if((hcount - last_line_x - l)**2 + (vcount - last_line_y - l)**2 < 100)
                                begin
                                    r <= 4'b1111;
                                    g <= 4'b1111;
                                    b <= 4'b0000;
                                end
                                else
                                begin
                                    r <= last_f;
                                    g <= last_f;
                                    b <= last_f;
                                end
                            end//6.4
                            cyan_o://蓝加光标
                            begin//6.5
                                if((hcount - last_line_x - l)**2 + (vcount - last_line_y - l)**2 < 100)
                                begin
                                    r <= 4'b0000;
                                    g <= 4'b1111;
                                    b <= 4'b1111;
                                end
                                else
                                begin
                                    r <= last_f;
                                    g <= last_f;
                                    b <= last_f;
                                end
                            end//6.5
                            gray_o://箭加光标
                            begin//6.6
                                if((hcount - last_line_x - l)**2 + (vcount - last_line_y - l)**2 < 100)
                                begin
                                    r <= 4'b1110;
                                    g <= 4'b1110;
                                    b <= 4'b1110;
                                end
                                else
                                begin
                                    r <= last_f;
                                    g <= last_f;
                                    b <= last_f;
                                end
                            end//6.6
                            p_o://空格加光标
                            begin//6.7
                                if((hcount - last_line_x - l)**2 + (vcount - last_line_y - l)**2 < 25)
                                begin
                                    r <= 4'b1111;
                                    g <= 4'b1111;
                                    b <= 4'b1111;
                                end
                                else
                                begin
                                    r <= last_f;
                                    g <= last_f;
                                    b <= last_f;
                                end
                            end//6.7
                            red_g://红加提示
                            begin//6.8
                                if((hcount - last_line_x - l)**2 + (vcount - last_line_y - l)**2 < 100)
                                begin
                                    r <= 4'b1111;
                                    g <= 4'b0000;
                                    b <= 4'b0000;
                                end
                                else
                                begin
                                    r <= tip_red;
                                    g <= tip_green;
                                    b <= tip_blue;
                                end
                            end//6.8
                            blue_g://蓝加提示
                            begin//6.9
                                if((hcount - last_line_x - l)**2 + (vcount - last_line_y - l)**2 < 100)
                                begin
                                    r <= 4'b0000;
                                    g <= 4'b0000;
                                    b <= 4'b1111;
                                end
                                else
                                begin
                                    r <= tip_red;
                                    g <= tip_green;
                                    b <= tip_blue;
                                end
                            end//6.9
                            black_g://箭加提示
                            begin//6.10
                                if((hcount - last_line_x - l)**2 + (vcount - last_line_y - l)**2 < 100)
                                begin
                                    r <= 4'b0000;
                                    g <= 4'b0000;
                                    b <= 4'b0000;
                                end
                                else
                                begin
                                    r <= tip_red;
                                    g <= tip_green;
                                    b <= tip_blue;
                                end
                            end//6.10
                            yel_g://黄加提示
                            begin//6.11
                                if((hcount - last_line_x - l)**2 + (vcount - last_line_y - l)**2 < 100)
                                begin
                                    r <= 4'b1111;
                                    g <= 4'b1111;
                                    b <= 4'b0000;
                                end
                                else
                                begin
                                    r <= tip_red;
                                    g <= tip_green;
                                    b <= tip_blue;
                                end
                            end//6.11
                            cyan_g://青加提示
                            begin//6.12
                                if((hcount - last_line_x - l)**2 + (vcount - last_line_y - l)**2 < 100)
                                begin
                                    r <= 4'b0000;
                                    g <= 4'b1111;
                                    b <= 4'b1111;
                                end
                                else
                                begin
                                    r <= tip_red;
                                    g <= tip_green;
                                    b <= tip_blue;
                                end
                            end//6.12
                            gray_g://箭加提示
                            begin//6.13
                                if((hcount - last_line_x - l)**2 + (vcount - last_line_y - l)**2 < 100)
                                begin
                                    r <= 4'b1110;
                                    g <= 4'b1110;
                                    b <= 4'b1110;
                                end
                                else
                                begin
                                    r <= tip_red;
                                    g <= tip_green;
                                    b <= tip_blue;
                                end
                            end//6.13
                            tip_o://提示
                            begin//6.14
                                begin
                                    r <= tip_red;
                                    g <= tip_green;
                                    b <= tip_blue;
                                end
                            end//6.14
                            p_g://光标加提示
                            begin//6.15
                                if((hcount - last_line_x - l)**2 + (vcount - last_line_y - l)**2 < 25)
                                begin
                                    r <= 4'b1111;
                                    g <= 4'b1111;
                                    b <= 4'b1111;
                                end
                                else
                                begin
                                    r <= tip_red;
                                    g <= tip_green;
                                    b <= tip_blue;
                                end
                            end//6.15
                            default://空
                                begin//6.16
                                    r <= last_f;
                                    g <= last_f;
                                    b <= last_f;
                                end//6.16
                            endcase//6
                    end//5.1
                    else if((hcount >= last_line_x + d) && (vcount < last_line_y + d))//跨过横向
                    begin//5.2
                        last_line_x <= last_line_x + d;
                        last_f <= ~last_f;
                        r <= last_f;
                        g <= last_f;
                        x = x;
                        y = y + 1;
                    end//5.2
                    else if((hcount < last_line_x + d) && (vcount >= last_line_y + d))//跨过纵向
                    begin//5.3
                        last_line_y <= last_line_y + d;
                        last_f <= ~last_f;
                        r <= last_f;
                        g <= last_f;
                        b <= last_f;
                        x = x + 1;
                        y = y;
                    end//5.3
                    else
                    begin//5.4
                        r <= 4'b1111;  
                        g <= 4'b1111;  
                        b <= 4'b1111;
                        x = x;
                        y = y; 
                    end//5.4
                end//4.4
              end//3.2
           end//2.4
    end//1
endmodule