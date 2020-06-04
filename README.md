# Amazons-Game-Verilog
A relization for the Game of Amazons with AI robot using Verilog based on Xilinx Basys3
# <center>《数字逻辑电路（2020春）》项目设计报告</center>

## 一、简介

##### 项目背景

​		本项目是北京大学信息科学技术学院2020年春季学期《数字逻辑电路（实验班）》的系统设计大作业。本文档是第四小组作品《亚马逊棋》的项目设计报告。小组成员是：黄鑫懿、刘鹏。

##### 文档内容

​		本文包括：项目设计的目标和内容、项目的顶层模块设计、项目的模块手册、项目的总结。

## 二、设计目标和内容

##### 本项目的设计目标

​		本项目是一个仿红白机（Family Computer，又称FC机）的棋类游戏项目。本项目要实现以下目标：

1. 能够进行玩家与玩家的亚马逊棋对战，棋局的规则见附录一。
2. 能够进行按键输入，并使VGA显示器受状态机控制完成“待机——游戏——结束”的三个场景的自动切换。
3. 能够在棋局游戏中完成落子提示。系统不接受犯规和禁手落子。
4. 能够进行玩家和环境的对战，并且实现中等智能的AI。

##### 项目的设计内容

​		通过以下手段，我们实现了以上目标。

1. 实现了六个大型模块的互联。

2. 设计了一个Moore状态机，它在按键输入下控制VGA显示模块的输出和其它各游戏模块的进程。

3. 设计了一个有内部状态存储的状态机，可以对单步按键输入快速响应，改变棋局状态并计算出下一步可落子区域。

4. 设计了一个栈结构状态机，能利用寄存器实现搜索算法，以此实现AI下棋。

   在本项目的设计过程中，有以下的设计亮点：

5. 实现了VGA显示输出，尤其是探索出编码、存储、输出图片的方案。

6. 模仿红白机的图像处理方式，优化了存储和显示，节约了计算资源。

7. 利用辅助棋盘确定可落子区域，提高了鲁棒性，并简化了棋局逻辑设计，使得可以在单步之内演算出棋盘变化。

8. 采用时序逻辑与组合逻辑相结合的方式设计单步游戏过程，对硬件资源利用率高。

9. 由寄存器实现了栈结构状态机，可用于执行棋盘上的多层搜索与回溯算法，使AI实现成为可能。

10. 仅靠五个按键就能实现高效输入，操作简单，屏幕有可行区域显示，玩家体验良好。

## 三、顶层模块设计

<img src="https://i.loli.net/2020/05/29/ES4WZV5hBaIF7Pt.jpg" alt="Top.jpg" style="zoom:67%;" />

<center> 图3.1 顶层结构图</center>

​	以上是本项目的顶层设计图。本项目将模块分为：主控部分`Sys_ctrl`、显示部分`VGA_Multi`、按钮检测`Btn_dct`、单步`Single_Step`、人工智能`AI`和分频器`Timer`。由于每个模块在下面的介绍中都涉及了时钟频率，本文略去分频器`Timer`具体介绍（代码见附录十一）。

## 四、底层模块手册

​	以下模块的源代码见本文附录。

#### 	关键模块一：`显示综合控制器VGA_Multi`

##### 一、接口：

```verilog
module VGA_Multi(
    input wire [1:0] cmd,  input wire [1:0] inf,    //控制信号
    input clk,     //时钟信号
    input rst,     //复位信号
    input wire [3:0] data_io,	//棋面信号  
    output reg [3:0] r, output reg [3:0] g, output reg [3:0] b,    //RGB信号
    output reg [2:0] x，output reg [2:0] y,      //坐标信号
    output hs, output vs    //扫描信号 
);
```

​		输入：`cmd`是状态机传递的，控制场景切换；`inf`是状态机传递的，控制数字高亮；`rst`是外界输入的显示复位信号；`data_io`是单步模块传递的，指示某坐标处棋子的类型；`clk`是待分频的系统时钟。

​		输出：`hs`和`vs`分别是传递给VGA显示器的行扫描和场扫描同步信号，指示当前的扫描位置；`r`、`g`、`b`是传递给显示器的，控制该扫描点的颜色；`x`和`y`是传递给单步模块的坐标，索取当前坐标棋子的类型。

​	代码见附录三。

##### 二、设计关键：

    1. 此模块与单步模块相联。需要读取扫描的同时显示输出。
    2. 此模块显示点阵字符，通过文献[1]和[2]中的方式实现。点阵字符发生器见工程文件附件。
    3. 此模块显示大量图像信息，调用`Basys3`的储存块作显存。
    4. 此模块储存并读取`.coe`图片文件，通过`IP`核生成`Single-port ROM`完成。其中`.coe`图片文件由Matlab转换`.jpg`图片文件生成。

##### 三、系统框图：

<img src="https://i.loli.net/2020/05/24/sWjXTMpDyE7xI2z.jpg" alt="VGA_Sys" style="zoom:35%;" />

<center> 图4.1 显示综合控制器VGA_Multi </center>

##### 四、工作原理：

 1. VGA的扫描显示

    VGA采用逐行扫描。行与行、场与场之间存在消隐以及显示周期，其显示的时序图如下。

<img src="https://i.loli.net/2020/05/24/r3RH65mB4CuO1AZ.jpg" alt="VGA_Sig" style="zoom: 40%;" />

<center>图4.2 VGA扫描显示时序图</center>

​        行扫描可分为四个阶段：同步、消隐后肩、显示、消隐前肩，其到下个周期同步为一个显示循环，对应的是屏幕上的一行，每次扫描的电平时序由上图示出。场同步类似，对应为屏幕显示的一帧。不同的VGA格式有不同的参数，具体如下表。

<center>表4.1 VGA显示模式参数表</center>

![VGA_Time](https://i.loli.net/2020/05/24/jOxskhJf6dQZ5on.jpg)

​		本项目中，显示选用了基本的`640X480@60`格式，以适配各种显示环境。

 2. VGA字符显示

    字符显示的方式是将其转换为像素点，因此需要字符点阵。

<img src="https://i.loli.net/2020/05/24/sh8oVljuNHPIpGE.jpg" alt="VGA_Word" style="zoom:25%;" />

<center>图4.3 字符显示示意图</center>

​        在显示时，只需要将对应像素点的明暗读取出来，并将颜色送给`RGB`接口即可。字符生成的工作参考了了下附文献[1]及文献[2]的实现方式。

3. 棋盘信息读取与显示

​        这是VGA显示最关键的一部分。为了将`Single_Step`模块中的棋面信息解码成图像信息。此处采用了逐步读取，逐步显示的时序，如下图示。

<img src="https://i.loli.net/2020/05/24/aOKNdY742peiWJH.jpg" alt="Scope" style="zoom:40%;" />

<center>图4.4 棋面显示时序图</center>

​		当扫描像素进入棋盘区域时，计数器开始计数。<u>此处进行了如下优化</u>：为避免除法运算的资源消耗，每个棋盘格的灰度在编码时采用了逐位互反码，当像素间隔超过定义的宽度时计数器上跳，对当前灰度进行取反即可得到下一格灰度，并将计数器的`x`和`y`信息送出`Single_Step`模块，由于VGA的时钟较`Single_Step`时钟慢，差时内`VGA_Multi`模块将装填好此格的棋面信息（哪种棋子、颜色等）。这就完成了棋盘的实时更新。这种显示模式仿照了红白机的电视显示模式。

4. 图片显示

   为了增强视觉冲击感，本项目中显示了三张图片。

   为了将图片显示出来，需要将其转化为`RGB`数据存储。具体的实现方法是：

   1. 获得一张图片。
   2. 将`8X8X8`的`RGB`信息重新编码为兼容`Basys3`开发板的`4X4X4`的`RGB`信息，格式是先行扫描再场扫描，与VGA的显示相兼容。
   3. 将编码成功的`RGB`信息从`.jpg`图片文件存入`.coe`图片文件。
   4. 使用`IP`核生成对应的`Single-port ROM`。
   5. 在显示时用上一部分所述方法（仍应注意时钟优化问题）获得对应像素的`4X4X4`的`RGB`信息。

    以上步骤的1、2、3使用Matlab完成，代码见附录二。

##### 五、设计亮点与总结：

1. 通过Matlab转换并调用`IP`核的方式，实现了图片的显示，极大优化了显示质量。
2. 充分利用存储器资源，调动46（/50）只`Block RAM`，完成了数据吞吐。
3. 优化了图形计算。逐位互反的编码和计数器结合，避免了除法运算，节约了存储空间。
4. 高鲁棒性，每步落子均有可行性提示，在不可行位置落子系统不接纳（具体实现在模块`Single_Step`）。
5. 完成了在读取扫描的同时显示输出的时序。

#### 关键模块2：`主控状态机Sys_ctrl`

##### 一、接口：

```verilog
module Sys_ctrl(
	input clk,	//时钟信号
	input btn_up, input btn_down, input btn_enter,	//按钮信号
	input hang, 	//
    input [1:0] game_over,		//游戏结束信号
    output reg [1:0] cmd, output reg [1:0] inf,		//显示信号
	output reg rst,		//重置信号
    output reg [1:0] p_num		//玩家信号
);
```

​		输入：`btn`是外界输入的按键选择信号；`rst`是外界输入的显示复位信号；`game_over`是单步模块传递的，指示游戏结束的信号；`clk`是系统时钟。

​		输出：`cmd`和`inf`分别是传递给VGA显示器的场景切换和字符高亮控制；`rst`是传递给显示器的重置信号；`p_num`是传递给单步模块的对局信号。

​		代码见附录四。

##### 二、设计关键：

    1. 此模块是一个传统状态机，接受消抖后的按键输入，完成场景转换，数据统筹控制等工作。
    2. 考虑到选择的实时性，模块必须采用同步。

##### 三、系统框图：

<img src="https://i.loli.net/2020/05/24/39OwDIPpVy2BSLm.jpg" alt="Sys_ctrl" style="zoom:35%;" />

<center> 图4.5 主控状态机Sys_ctrl </center>

##### 四、工作原理：

​		以下是文字描述的状态转移图。

​		<img src="https://i.loli.net/2020/05/24/H37aoehOtlsqCpE.jpg" alt="Sys" style="zoom:50%;" />

<center>图4.6 状态转移图</center>		

​	   Moore状态机的设计、编码因循旧贯，未求奇功。值得指出的是，它必须与`Single_Step`处在同步时钟上，保证`game_over`信号能够顺利收发。

##### 五、设计亮点与总结：

1. 完成了七个状态的编码、转换和输出。

  2. 进行了同步设计，保证和`Single_Step`的通信。

#### 关键模块3：`按钮检测器Btn_dct`

##### 一、接口与指令编码：

```verilog
module button_detect(
    input [4:0] bt,
    input work0,
    input work1,
    output [2:0] od,
    output ena,
    output [2:0] bto,
    input clk
    );
    parameter [2:0]  NULL  = 3'b000,
                     UP    = 3'b001,
                     DOWN  = 3'b010,
                     LEFT  = 3'b011,
                     RIGHT = 3'b100,
                     ENTER = 3'b101;
```

​		输入：`clk`为系统时钟；`work0`为单步游戏模块所给出的使能信号；`work1`为`100Hz`的使能脉冲；`bt`为`Basys3`开发板上五个按键的输入信号。

​		输出：`od`为输出指令信息；`ena`为输出激活脉冲，当按键模块产生有效输出时才会输出脉冲；`bto`为适配主控模块的按键输出。

​		指令编码如代码所示，将检测后的按键信息分别编码为`UP、DOWN、LEFT、RIGHT、ENTER`，分别代表五个按键，此外还有空状态`NULL`表示没有按键按下或按键冲突的情况。

##### 二、设计关键：

1. 通过移位寄存器及组合逻辑判断实现按键消抖。
2. 通过编码解决状态的表示和指令输出。

##### 三、系统框图：

<img src="https://i.loli.net/2020/05/29/HJtRQIeEM6jZdrh.jpg" alt="btn_Sys.jpg" style="zoom:35%;" />

<center>图4.7 按钮检测器btn_detect</center>

##### 四、工作原理：

​		该部分工作的时序如下：

![Btn_time.jpg](https://i.loli.net/2020/05/29/MtR7ALrK4x5zou2.jpg)

<center>图4.8 按钮检测器btn_detect时序</center>

​		按键作为一个有机械结构的信号输入单元，其输入信号可能存在一定的抖动与毛刺，如果不进行检测，则很有可能在按下时连续产生很多个输出。但这种抖动可能较为尖锐，持续时间较短，于是可以利用一个频率相对于抖动的特征频率较低的寄存检测模块来消除抖动，从而实现按键信号的正确输出。

​		按键检测模块有三个寄存器，记录到当前时间为止连续三个采样点的按键按下状态。当检测到第一个状态为`NULL`且后两个状态相同时，将会产生有效指令输出。

##### 五、设计亮点与总结

1. 通过按键指令编码实现了整体系统中的编码统一，对游戏模块与按键输入模块、`AI`模块的互联提供了帮助。
2. 通过寄存器完成了按键消抖，使得人机交互体验舒适。

#### 关键模块4：`单步游戏机Single_Step`

##### 一、接口与指令编码：

```verilog
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
    parameter [2:0] NULL  = 3'b000,
                    UP    = 3'b001,
                    DOWN  = 3'b010,
                    LEFT  = 3'b011,
                    RIGHT = 3'b100,
                    ENTER = 3'b101;
```

​		输入：`clk`为时钟信号；`wk1`,`wk0`分别是`AI`输入和按键的输入激活脉冲；`od1`,`od0`分别是AI和按键输入的指令，指令格式及含义如常数定义中所示；`rst`是棋盘重置信号；`g_x`，`g_y`是VGA的查询地址；`mode`是当前模式选择，人人对战时为`00`，人机对战时为`10`。

​		输出：`ena1`,`ena0`分别是给`AI`和按键输入的工作使能信号；`g_io`是对VGA的棋盘信息输出；`game_over`为判断棋局结束逻辑，两位分别代表棋局的结束情况及获胜玩家；`bd`为占位棋盘输出；`tp`为提示棋盘输出；`st`为当前所处阶段；`p_x`,`p_y`分别为光标所处位置的行列坐标。

​		代码见附录六。

##### 二、设计关键：

1. 此模块为一个三状态且有内部存储状态的状态机，需要考虑状态转换的条件，选择合适的状态表示方法。
2. 对棋盘的表示需要采取简单方法，包含关于棋盘上棋子位置、所属方的全部信息。
3. 需要由复杂的符合逻辑完成落子可行性的分析。

##### 三、系统框图：

<img src="https://i.loli.net/2020/05/29/S3mb7dwzxFqV1Nj.jpg" alt="SS.jpg" style="zoom:33%;" />

<center>图4.9 单步游戏机single_step</center>

##### 四、工作原理：

<img src="https://i.loli.net/2020/05/29/6pbhl1yHWFvZfi8.jpg" alt="11.jpg" style="zoom:33%;" />

<center>图4.10 单步游戏机single_step运行图</center>

​		当`rst`信号为1时，整个系统将被置为初态，此时棋盘上有且仅有位于原位的分别属于红蓝两方的八个棋子，没有箭的存在。

​		当`rst`信号为0时，系统正常工作。系统会根据输入的`mode`以及当前的`player`选择`ena`信号的输出用来激活对应的机器人或者按键检测系统，而后从对应的系统中接受指令。

​		根据游戏规则，每一次玩家的行动包括三步，因此每次玩家的行动也是由状态机的三个状态完成。完成一次三状态的过程后玩家将会切换。棋盘会由玩家输入信息改变并被记录，对键盘的检测包括方向和确定键，方向键能控制光标在棋盘上的移动，并且逻辑判断使其不会超过棋盘边界，确定表示在此处的落子尝试。

​		为了简化程序步骤，除了占位棋盘`brd`和位置标记`chs`以外，引入了一个辅助提示棋盘`tip`。`tip`棋盘由组合逻辑给出，能够根据当前所处的`step`阶段生成一个当前步允许落子的合法位置。如此一来按下确定键是只需判断是否在`tip`棋盘有标记即可。

​		最后利用组合逻辑完成从`brd`、`chs`、`tip`的信息向显示编码`gph`的转换，并通过接口与VGA显示模块相连完成显示工作。

##### 五、设计亮点与总结：

1. 完成了基于单步触发涉及的棋盘状态转移逻辑。
2. 利用`tip`辅助棋盘完成了对可行位置的简单判断，并且能显示为画面上的提示优化玩家体验。
3. 对棋盘信息进行了编码便于与VGA模块交互输出。

#### 关键模块5：`人工智能AI`

##### 一、接口：

​		AI模块包含三个下属模块，在此仅陈述其对外接口：

```verilog
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
```

​		输入：`CLK`为系统时钟；`p_100hz`,`p_10khz`,`p_5hz`分别为`ai_ctrl`,`ai_calc`,`ai_play`所使用频率的使能脉冲信号；`WORK`为系统输入的AI开始工作信号；`BRD`为占位棋盘信息；`TIP`为提示棋盘信息；`STEP`为当前所处步；`PX`，`PY`分别为当前光标所处位置。

​		输出：`OD`为AI计算完成后的指令输出，其编码方式与`button_detect`,`single_step`相同；`WRITE`为输出提示信号，当有指令输出时为1。

​		代码见附录七、八、九、十。

##### 二、设计关键：

1. 设计一个AI控制状态机，完成等待、载入、计算及输出四个工作模式的切换。
2. 利用附加存储的状态机实现栈结构寄存器，并在此基础上有回溯功能的搜索算法。
3. 利用组合逻辑进行输出。

##### 三、系统框图：

<img src="https://i.loli.net/2020/05/29/6rlhbnpZxFDW4E1.jpg" alt="AI.jpg" style="zoom:50%;" />

<center>图4.11 人工智能AI</center>

##### 四、工作原理：

1.状态控制`ai_ctrl`

<img src="https://i.loli.net/2020/05/29/w16pdh4rQ2gnXNi.jpg" alt="10.jpg" style="zoom:33%;" />

<center>图4.12 AI控制器ai_ctrl</center>

​		AI状态控制模块包含四个状态：等待、载入、计算和输出。等待状态接到系统的工作使能信号后开始转换到载入状态，经过一拍的载入过程后在`ai_calc`模块中开始进行计算。完成计算得到结果后，再通过`ai_play`模块进行输出，输出完成后回到等待。

2.搜索模块`ai_calc`

​		搜索模块的核心部分是搜索算法的实现，在这里采用了状态机和若干用以记录栈信息的寄存器。

​		由一个`step`状态记录当前的搜索层数，当进行到目标位置时便通过一个估值组合逻辑生成分数`score`，并与先前最优解比较，如果更优则将记录的每步选择替换最优解。

<img src="https://i.loli.net/2020/05/29/dER2WPChyJQ9TuU.jpg" alt="9.jpg" style="zoom:33%;" />

<center>图4.13 AI核心ai_calc</center>

​		搜索时每次将`step`层的位置`pos[step]`加一，倘若处于可行区域，那么落子更新状态并将`step`+1，进行下一层的搜索；否则什么都不做，继续+1，直到找到可行位置。当`pos`变为64时停止当前层的搜索，回溯到上一层，当第一层的`pos`变为64时即表示搜索工作已全部完成。

​		估值函数使用组合逻辑实验，基本上是对当前局面下可直接到达的位置的估计。

3.落子模块`ai_play`

​		落子模块使用组合逻辑完成，每隔`0.2s`输出一个指令，以此来模仿人类玩家手动输入的时间间隔。

​		指令输出直接将当前棋盘光标位置`PX`和`PY`与目标位置的坐标比较，生成上下左右的指令。当到达目标位置时输出`ENTER`，即可表示按下，完成一次落子。

##### 设计亮点与总结：

1. 使用状态机控制AI的运行过程，并充分考虑了传输线时间设计了载入状态。
2. 利用状态机模型与一定的寄存器实现了栈结构与搜索算法，可求得一定意义上的最优解。
3. 简单高效地实现了落子过程，并且一定程度上模仿了人类玩家行为。

#### 关键模块6：`顶层模块Top`

顶层模块线连第三部分的各接口，具体代码见附录十二。

## 五、参考文献

[1] Verilog实现VGA字符显示 https://blog.csdn.net/iteye_5971/article/details/82611766

[2] FPGA中级项目——VGA显示模块 https://www.eetree.cn/wiki/fpga_project_medium

## 六、致谢

​		本项目是在2020年春天完成的。

​		在这个春天，新型冠状病毒（SARS-CoV-2）肆虐全球。许多人在这场疫情中失去了生命，更多的人——医生、护士、社区工作者、我们身边的老师和助教们——还在各自的岗位上坚守和付出。在项目完成之际，在这个特殊的学期结束之际，我们在此要向他们表达由衷的感激和敬意。

​		本项目的完成，得到了段晓辉老师和黄鑫鑫学姐的指导、帮助和鼓励。段晓辉老师多次在项目细节上提出建议，并对模块和时序设计进行了严格把关。在本学期的《数字逻辑电路》网课中，段晓辉老师和黄鑫鑫学姐的辛勤付出，使得我们能够快速理解并运用相关知识。可以说，没有他们的付出，就没有本项目的最终完成，在此我们向老师和学姐表示由衷的感谢。

​		本项目的完成，与各位同学的慷慨帮助也密不可分。我们要感谢，刘臻和吕奕腾同学向我们小组分享音频处理和播放的代码，顾超颖和时豫同学分享蜂鸣器的相关信息，虽然受限于`Basys3`开发板存储器空间和项目的花费时长，未能实现相关功能，但他们的慷慨帮助我们铭记在心。

​		同时，葛非同学与我们关于本项目的实现进行了深入的交流，我们感谢他。

​		在项目的实现过程中，黄鑫懿同学和刘鹏同学精诚合作，齐心协力，最终出色地完成了所有设计目标。这是令人难忘的一次合作。我们将继续发扬项目中磨练的团结精神，不忘初心，砥砺前行。

## 七、其他事情

​		我上的小学门外，有两家小卖部，一家卖零食，另一家卖红白机卡带。

​		那时，电脑游戏还未兴起。放学之后，大家会到那个拥有一台FC机的同学家里，流连一整个傍晚。那时候的一盒新卡带是很贵的，游戏内容也不能修改。但是通关之后，你只要花一点钱，拿着这块掩膜型ROM，去那家卖FC机卡带的小卖部，就可以换到另一款游戏。就这样，男孩子们用零花钱打通了冒险岛、魂斗罗、坦克大战......那时候的傍晚，并不像后来那样被学业和工作涂抹得无比庸常。会有一些人，在一台电视机前敲打手柄。每到这个时候，汗味和夕阳就和着晚风荡漾起来。直到哪个孩子的家长找上门来，直到城南的晚钟响起，大家才会意犹未尽地散去。

​		

​		四年级的时候，我即将转学去外地。放暑假前的前一天，他们问我，

​		“那你要去哪里上学啊？”

​		“要去我爸爸妈妈工作的地方。”

​		“离这里很远吗？”

​		“我也不知道......”

​		他们沉默半晌，突然出一声，“那下个学期我们是不是不能一起玩游戏了？”

​		我点点头，想说一些道别，却又不知道从何说起。

​		我总是这样怀疑，小时候的夏日，要比现在长一些。夕阳要等，一直等到门卫室的黄狗走回他的窝里，等到世嘉的街机纷纷收摊，等到燕子归巢，等到晚钟敲响，等到我的影子比我高上几寸，他才舍得离去。也许是我比那时长高了一些的缘故，这几年的夕阳总是匆匆忙忙，很快离我而去，留下长夜和一些DDL，就像写这些字的时候，我正在期末季苟活一样。

​		突然，他从电视机旁摸出一块卡带，递到我的手上，那是一块崭新的超级玛丽卡带。

​		“上次约好下个学期一起玩的，那就送给你吧。”

​		“嗯”，我点点头，“等明年暑假，我还回来找你们。”

​		后来很久，我都没有再回到那里。

​		

​		上个冬天，出于一些机缘巧合，路过这座城市。打车过去，师傅说，那一片的住宅早已拆了，我还是坚持。

​		那一天的夕阳从一片那水泥瓦砾中落下像平常一样匆忙。我想也许是因为冬天，也许是因为他没有见到那只老黄狗。当然，我也没有见到那个玩伴，夕阳不忍让我等得太久。

​		几次搬家，游戏机早已遗失了，后来有些二十合一，一百合一直至五百合一的卡带，也流落不知何处。之后玩过很多游戏，基本没有坚持玩多久，可是那盘超级玛丽的卡带我还一直留着。

​		

​		你说会不会有一天，那个FC卡带里的人会出来与我道别？我相信会的。

​		所以我跟黄老板说，要不我们做个FC下棋游戏？

​		

## 八、附录

##### 附录一 亚马逊棋简介

> 亚马逊棋背景（引百度词条：[亚马逊棋](https://baike.baidu.com/item/亚马逊棋)）
>
> 亚马逊棋（Game of the Amazons），由阿根廷人WalteZamkauska在1988年推出的两人棋类，是奥林匹亚电脑游戏程式竞赛的比赛指定棋类，由国际象棋中后的走法衍生而来，属于两人零和完备信息博弈。由于局面过于复杂，仅第一步就有2176种走法，故该棋类多不用于人类之间比赛，而是用于计算机博弈相关方面的比赛与研究 。
>
> 亚马逊棋的研究，实现包括了编程语言，算法思想，博弈思想等；常用的算法有蒙特卡洛算法，退火算法，遗传算法的等；随着机器学习的开展，亚马逊棋作为计算机博弈的一个项目正逐渐的被更广泛的熟知。
>
> 目前亚马逊棋是ICGA国际机器博弈锦标赛和全国大学生计算机博弈大赛的比赛项目之一。
>
> 
>
> 亚马逊棋规则（引维基词条：[亚马逊棋规则](https://wiki.botzone.org.cn/index.php?title=Amazons)）
>
> 1. 在8*8的棋盘上，每方有四个棋子（四个Amazons）；
> 2. 每个棋子都相当于国际象棋中的皇后，它们的行棋方法与皇后相同，可以在八个方向（上、下、左、右、左上、左下、右上、右下）上任意行走，但不能穿过阻碍；
> 3. 当轮到一方行棋时，此方只能而且必须移动四个Amazons中的一个，并在移动完成后，由当前移动的棋子释放一个障碍，障碍的释放方法与棋子的移动方法相同（皇后的走法，不能穿过障碍），同样障碍的放置也是必须的；
> 4. 当某方完成某次移动后，对方四个棋子均不能再移动时，对方将输掉比赛；
> 5. 每次开局位于棋盘下方的玩家先手；
> 6. 整个比赛中双方均不能吃掉对方或己方的棋子或障碍。

##### 附录二 Matlab 转换图片源代码

```matlab
image = imread('Picture_name');
file = fopen('Coe_name', 'w');
%Transformation
R = image(:,:,1);
R = floor(double(R) / 16);
G = image(:,:,2);
G = floor(double(G) / 16);
B = image(:,:,3);
B = floor(double(B) / 16);
[ROW,COL,COLOR] = size(image);
%Writing
fprintf(file,'MEMORY_INITIALIZATION_RADIX=2;\nMEMORY_INITIALIZATION_VECTOR=\n');
for row = 1:ROW
    for col = 1:COL
        fprintf(file,dec2bin(R(row,col),4));
        fprintf(file,dec2bin(G(row,col),4));
        fprintf(file,dec2bin(B(row,col),4));
        if row == ROW && col == COL
            fprintf(file,';\n');
        else
            fprintf(file,',\n');
        end
    end
end
fclose(file);
newIm(:,:,1) = R;
newIm(:,:,2) = G;
newIm(:,:,3) = B;
imshow(newIm);
```

##### 附录三 显示综合控制器源代码

```verilog
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

    parameter left_a = 215;//左边界
   	parameter up_a = 100;//上边界
   	parameter right_a = 714;//右边界
    parameter down_a = 203;//下边界
    parameter col = 498;

	parameter up_pos_u = 267;
	parameter down_pos_u = 274;
	parameter left_pos_u = 457;
	parameter right_pos_u = 512;

	parameter up_pos_l = 280;
	parameter down_pos_l =287;
	parameter left_pos_l = 457;
	parameter right_pos_l = 470;

	parameter d = 30;//方格宽度
    parameter l = 15;//方格中心
    parameter left_ud = 304;//左边界
    parameter up_sk = 151;//上边界	
    parameter right_ud = 542;//右边界
    parameter down_sk = 390;//下边界
    parameter [1:0] u_l = 2'b01, d_l = 2'b10;
    wire pclk;//25MHz
	reg [1:0] count;
	reg [9:0] hcount, vcount;
	reg [15:0] addr = 0;
    wire [11:0] data;
    wire [11:0] datab;
    wire [11:0] datar;
    reg [9:0] last_line_x;//上一个跨过的横向边界位置
    reg [9:0] last_line_y;//上一个跨过的纵向边界位置
    reg [3:0] last_f;//上一个灰度
    integer i;
    integer j;
    reg [3:0] chs;
    reg [1:0] pic;
    reg [1:0] Board [509:0];
    parameter [3:0] red_o = 4'b0001, yel_o = 4'b0101, red_g = 4'b1001, yel_g = 4'b1101, blue_o = 4'b0010,
    cyan_o = 4'b0110, blue_g = 4'b1010, cyan_g = 4'b1110, black_o = 4'b0011, gray_o = 4'b0111, black_g = 4'b1011,
    gray_g = 4'b1111, p_o = 4'b0100, tip_o = 4'b1000, p_g = 4'b1100;  
    parameter [3:0] tip_red = 4'b0111, tip_green = 4'b1111, tip_blue = 4'b0111;
    rom_amazons UA(.clka(pclk),.addra(addr), .douta(data));
    rom_blue UB(.clka(pclk),.addra(addr), .douta(datab));
    rom_red UR(.clka(pclk),.addra(addr), .douta(datar));
    wire [7:0] p_1 [55:0];
    wire [7:0] p_2 [13:0];
    wire rd;
    reg [59:0] data_cmd;
    wire [59:0] data_line;
    assign data_line = data_cmd;
    RAM_set u_ram_1 (.clk(clk),.data(data_line[5:0]),.col0(p_1[0]),.col1(p_1[1]),.col2(p_1[2]),.col3(p_1[3]),.col4(p_1[4]),.col5(p_1[5]),.col6(p_1[6]));
    RAM_set u_ram_2 (.clk(clk),.data(data_line[11:6]),.col0(p_1[7]),.col1(p_1[8]),.col2(p_1[9]),.col3(p_1[10]),.col4(p_1[11]),.col5(p_1[12]),.col6(p_1[13]));
    RAM_set u_ram_3 (.clk(clk),.data(data_line[17:12]),.col0(p_1[14]),.col1(p_1[15]),.col2(p_1[16]),.col3(p_1[17]),.col4(p_1[18]),.col5(p_1[19]),.col6(p_1[20]));
    RAM_set u_ram_4 (.clk(clk),.data(data_line[23:18]),.col0(p_1[21]),.col1(p_1[22]),.col2(p_1[23]),.col3(p_1[24]),.col4(p_1[25]),.col5(p_1[26]),.col6(p_1[27]));
    RAM_set u_ram_5 (.clk(clk),.data(data_line[29:24]),.col0(p_1[28]),.col1(p_1[29]),.col2(p_1[30]),.col3(p_1[31]),.col4(p_1[32]),.col5(p_1[33]),.col6(p_1[34]));
    RAM_set u_ram_6 (.clk(clk),.data(data_line[35:30]),.col0(p_1[35]),.col1(p_1[36]),.col2(p_1[37]),.col3(p_1[38]),.col4(p_1[39]),.col5(p_1[40]),.col6(p_1[41]));
    RAM_set u_ram_7 (.clk(clk),.data(data_line[41:36]),.col0(p_1[42]),.col1(p_1[43]),.col2(p_1[44]),.col3(p_1[45]),.col4(p_1[46]),.col5(p_1[47]),.col6(p_1[48]));
    RAM_set u_ram_8 (.clk(clk),.data(data_line[47:42]),.col0(p_1[49]),.col1(p_1[50]),.col2(p_1[51]),.col3(p_1[52]),.col4(p_1[53]),.col5(p_1[54]),.col6(p_1[55]));
    RAM_set u_ram_9 (.clk(clk),.data(data_line[53:48]),.col0(p_2[0]),.col1(p_2[1]),.col2(p_2[2]),.col3(p_2[3]),.col4(p_2[4]),.col5(p_2[5]),.col6(p_2[6]));
    RAM_set u_ram_10 (.clk(clk),.data(data_line[59:54]),.col0(p_2[7]),.col1(p_2[8]),.col2(p_2[9]),.col3(p_2[10]),.col4(p_2[11]),.col5(p_2[12]),.col6(p_2[13]));
	assign pclk = count[1];
	always @ (posedge clk or posedge rst)
	begin
		if (rst) count <= 0;
		else count <= count+1;
	end
	assign hs = (hcount < 96) ? 0 : 1;
	always @ (posedge pclk or posedge rst)
	begin
		if (rst) hcount <= 0;
		else if (hcount == 799) hcount <= 0;
		else hcount <= hcount+1;
	end
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
```

##### 附录四 状态机源代码

```verilog
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
```

##### 附录五 按钮检测源代码

```verilog
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

```

##### 附录六 单步模块源代码

```verilog
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
```

##### 附录七 AI顶层源代码

```verilog
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
```

##### 附录八 AI控制源代码

```verilog
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
```

##### 附录九 AI计算源代码

```verilog
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
```

##### 附录十 AI行动源代码

```verilog
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
```

##### 附录十一 分频器源代码

```verilog
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
```

##### 附录十二 综合代码

```verilog
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

    button_detect U1(.bt({btn_right,btn_left,btn_down,btn_up,btn_enter}),.od(OD0),.work0(ENA0),.work1(P100),.ena(WK0),.clk(clk),
    .bto({LINE_DOWN,LINE_UP,LINE_ENTER}));

    single_step U2(.game_over(GAME_OVER),.od1(OD1),.od0(OD0),.wk1(WK1),.wk0(WK0),.ena1(ENA1),.ena0(ENA0),.g_x(C_X),.g_y(C_Y),.g_io(IO),
    .rst(RST),.clk(clk),.p_x(P_X),.p_y(P_Y),.bd(BD),.tp(TP),.st(ST),.mode(P_NUM));
  
    VGA_Multi U3(.cmd(CMD),.inf(INF),.clk(clk),.rst(rst_vga),.data_io(IO),.r(r),.g(g),.b(b),
    .x(C_X),.y(C_Y),.hs(hs),.vs(vs));

    Sys_ctrl U4(.clk(clk),.btn_up(LINE_UP),.btn_down(LINE_DOWN),.btn_enter(LINE_ENTER),.hang(hang),
    .game_over(GAME_OVER),.cmd(CMD),.inf(INF),.rst(RST),.p_num(P_NUM));
    
    ai_top U5(.CLK(clk),.WORK(ENA1),.WRITE(WK1),.PX(P_X),.PY(P_Y),.STEP(ST),.BRD(BD),.TIP(TP),.OD(OD1),
    .p_5hz(P5),.p_100hz(P100),.p_10khz(P10K));
    
    timer U6(.clk(clk),.p_5hz(P5),.p_100hz(P100),.p_10khz(P10K));
endmodule
```

更多信息，敬请参阅工程文件附件，或联系项目开发者。

