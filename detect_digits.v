`timescale 1ns / 1ps

module detect_digits (
    input  wire        clk,          // 系统时钟 (推荐 50MHz - 100MHz)
    input  wire        rst_n,        // 低电平复位
    
    // 图像输入端口
    input  wire [7:0]  pixel_in,     // 8-bit 像素输入 (0-255)
    input  wire        pixel_valid,  // 像素有效标志位，高电平表示输入像素有效
    
    // 结果输出
    output reg  [7:0]  led          // 10 颗 LED，独热码输出预测结果
);
reg[9:0] pixel_wcnt;
always @(posedge clk)
begin
    if(!rst_n)
    begin
        pixel_wcnt <= 0;
    end
    else
    begin
        if(pixel_valid)
        begin
            pixel_wcnt <= pixel_wcnt + 1;
        end
    end
end
reg image_srcram_we;
reg[9:0] image_srcram_wa;
reg[7:0] image_srcram_do;
always @(posedge clk)
begin
    if(!rst_n)
    begin
        image_srcram_we <= 0;
    end
    else
    begin
        image_srcram_we <= pixel_valid;
        image_srcram_wa <= pixel_wcnt;
        image_srcram_do <= ~pixel_in - 128;
    end
end




reg image_srcram_rinit;

always @(posedge clk)
begin
    if(!rst_n)
    begin
        image_srcram_rinit <= 0;
    end
    else
    begin
        image_srcram_rinit <= (image_srcram_we & !pixel_valid);
    end
end





always @(posedge clk)
begin
    if(!rst_n)
    begin
    
    end
    else
    begin
    
    end
end
always @(posedge clk)
begin
    if(!rst_n)
    begin
    
    end
    else
    begin
    
    end
end
reg[9:0] image_srcram_ra;
wire[7:0] image_srcram_di;


reg[9:0] pixel_rcnt;
reg pixel_rtime;
reg [3:0] epoch_cnt;
reg [12:0]  weight_rcnt;



always @(posedge clk)
begin
    if(!rst_n)
    begin
        pixel_rcnt <= 0;
        pixel_rtime <= 0;
        epoch_cnt <= 0;
    end
    else
    begin
        if(image_srcram_rinit)
        begin
            pixel_rtime <= 1;
            pixel_rcnt <= 0;
            epoch_cnt <= 0;
            weight_rcnt <= 0;
        end
        else if(pixel_rtime)
        begin
            weight_rcnt <= weight_rcnt + 1;

            if(pixel_rcnt == 783)
            begin
                 pixel_rtime <= (epoch_cnt != 4'd9);
                 epoch_cnt <= epoch_cnt + 1;
                 pixel_rcnt <= 0;
            end
            else
            begin
                pixel_rcnt <= pixel_rcnt + 1'b1;
            end 
        end
        
    
    end
end

reg pixel_rtime1;
reg pixel_rtime2;
reg pixel_rtime3;
reg pixel_rtime4;
reg pixel_rtime5;
reg pixel_rtime6;
reg pixel_rfst6;

reg pixel_rlst1;
reg pixel_rlst2;
reg pixel_rlst3;
reg pixel_rlst4;
reg pixel_rlst5;
reg pixel_rlst6;
reg pixel_rlst7;









always @(posedge clk)
begin
    if(!rst_n)
    begin
        pixel_rlst1 <= 0;
    end
    else
    begin
        pixel_rlst1 <= pixel_rtime & pixel_rcnt == 10'd783;
        pixel_rlst2 <= pixel_rlst1;
        pixel_rlst3 <= pixel_rlst2;
        pixel_rlst4 <= pixel_rlst3;
        pixel_rlst5 <= pixel_rlst4;
        pixel_rlst6 <= pixel_rlst5;
        pixel_rlst7 <= pixel_rlst6;

    end
end


reg signed [17:0] epoch_res;
reg epoch_vld;
reg[3:0] epoch_res_bat;











always @(posedge clk)
begin
    if(!rst_n)
    begin
        pixel_rtime1 <= 0 ;
        pixel_rtime2 <= 0 ;
        pixel_rtime3 <= 0 ;
        pixel_rtime4 <= 0 ;
        pixel_rtime5 <= 0 ;
        pixel_rtime6 <= 0 ;
    end
    else
    begin
        pixel_rtime1 <= pixel_rtime;
        pixel_rtime2 <= pixel_rtime1;
        pixel_rtime3 <= pixel_rtime2;
        pixel_rtime4 <= pixel_rtime3;
        pixel_rtime5 <= pixel_rtime4;
        pixel_rtime6 <= pixel_rtime5;


        pixel_rfst6 <= pixel_rtime & pixel_rcnt == 10'd5; 
    end
end











always @(posedge clk)
begin
    if(!rst_n)
    begin
        image_srcram_ra <= 0;
    end
    else
    begin
        image_srcram_ra [9:0] <= pixel_rcnt [9:0];

    end
end










dpram_1024w8_1024r8_rego image_ram (
  .clka       (clk),
  .wea        (image_srcram_we),
  .addra      (image_srcram_wa),
  .dina       (image_srcram_do),

  .clkb       (clk),
  .addrb      (image_srcram_ra),
  .doutb      (image_srcram_di)   //差了两个clock
);

wire[7:0]    rom_weigh_di;

reg [12:0] rom_weigh_ra;

always @(posedge clk)
begin
    rom_weigh_ra <= weight_rcnt;
end





rom_8192r8_rego rom_8192r8_rego (
  .clka(clk),
  .addra(rom_weigh_ra),
  .douta(rom_weigh_di)
);

wire [7:0] mul_in0 ;
assign mul_in0 = image_srcram_di;
wire [7:0] mul_in1 ;
assign mul_in1 = rom_weigh_di;
wire [15:0] mul_do;
reg[3:0] weight_madd_bat;

reg[25:0]   weight_madd;
always @(posedge clk)
begin
    if(!rst_n)
    begin
        weight_madd <= 0;
    end
    else
    begin
        if(pixel_rfst6) 
        begin
            weight_madd <= {{10{mul_do[15]}} , mul_do[15:0]};
            weight_madd_bat <= epoch_cnt;
        end
        else if(pixel_rtime6)
        begin
            weight_madd <= weight_madd + {{10{mul_do[15]}} , mul_do[15:0]};
        end
    end
end



always @(posedge clk)
begin
    if(!rst_n)
    begin
        epoch_res <= 0;
        epoch_vld <= 0;
        epoch_res_bat <= 0;
    end
    else
    begin
        if(pixel_rlst7)
        begin
            epoch_res <= weight_madd[25:8];
            epoch_vld <= 1;
            epoch_res_bat <= weight_madd_bat;
        end
        else
        begin
            epoch_vld <= 0;
        end
    end
end


reg signed[17:0] cmp_max;
reg[3:0] cmp_bat;


always @(posedge clk)
begin
    if(!rst_n)
    begin
        cmp_max <= 0;
        cmp_bat <= 0;
    end
    else
    begin
        if(epoch_vld == 1)
        begin
            if(epoch_res_bat == 0)
            begin
                cmp_bat <= 0;
                cmp_max <= epoch_res;
            end
            else
            begin
                if(epoch_res > cmp_max)
                begin
                    cmp_max <= epoch_res;
                    cmp_bat <= epoch_res_bat;
                end
            end
        end
    end
end



reg cmp_done;

always @(posedge clk)
begin
    if(!rst_n)
    begin
        cmp_done <= 0;
    end 
    else
    begin
        cmp_done <= (epoch_vld & epoch_res_bat == 9);
    end
end



always @(posedge clk)
begin
    if(!rst_n)
    begin
        led <= 0;
    end 
    else
    begin
        if(cmp_done)
        begin
            case(cmp_bat)
            4'd0 : led <= 8'b0000_0000;
            4'd1 : led <= 8'b0000_0001;
            4'd2 : led <= 8'b0000_0010;
            4'd3 : led <= 8'b0000_0100;
            4'd4 : led <= 8'b0000_1000;
            4'd5 : led <= 8'b0001_0000;
            4'd6 : led <= 8'b0010_0000;
            4'd7 : led <= 8'b0100_0000;
            4'd8 : led <= 8'b1000_0000;
            4'd9 : led <= 8'b1111_0000;
            default : led <= 8'b1111_1111;
        
            endcase
        end
    end
end





mult_sgn_8_8 mult_sgn_8_8(
    .CLK(clk), 
    .A(mul_in0), 
    .B(mul_in1), 
    .P(mul_do [15:0])); //delay 3 clock





endmodule