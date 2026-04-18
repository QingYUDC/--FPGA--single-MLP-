//~ `New testbench
`timescale  1ns / 1ps

module tb_LED;

// LED Parameters
parameter PERIOD  = 10;


// LED Inputs
reg   clk                                  = 0 ;
reg   rst_n                                = 0 ;
integer yuv_point;
// LED Outputs
wire  [7:0]  led                           ;

reg [15:0] count;
reg start;

always @(posedge clk) begin
    if (!rst_n) begin
        count <= 'b0;
        start <= 0;
    end 
    else begin
        count <= (count < 65535) ? count + 1'b1 : count;
        start <= (count == 16'd65534);
    end
end

reg [9:0] image_cnt;
reg r_time;

always @(posedge clk)
begin
   if(!rst_n)
   begin
        image_cnt <= 0;
        r_time <= 0;
   end  
   else
   begin
        if(start)
        begin
            image_cnt <= 0;
            r_time <= 1; 
        end
        else
        begin
            if(r_time == 1)
            begin
                if(image_cnt != 783) image_cnt <= image_cnt + 1;
                else
                begin
                    r_time <= 0;
                end 
            end 
        end 
    end
end
integer yuv_rnum;
reg[7:0] image_din;
reg image_we;
always @(posedge clk)
begin
    if(r_time)
    begin
        yuv_rnum = $fread(image_din , yuv_point);
    end
end

always @(posedge clk)
begin
    if(!rst_n)
    begin
        image_we <= 0 ;
    end 
    else
    begin
        image_we <= r_time;
    end
end


always @(posedge clk)
begin

end

detect_digits detect_digits (
    .clk(clk),          // 系统时钟 (推荐 50MHz - 100MHz)
    .rst_n(rst_n),        // 低电平复位
    
    // 图像输入端口
    .pixel_in(image_din),     // 8-bit 像素输入 (0-255)
    .pixel_valid(image_we),  // 像素有效标志位，高电平表示输入像素有效
    
    // 结果输出
    .led(led)          // 10 颗 LED，独热码输出预测结果    
);






initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

initial
begin
    #(PERIOD*2) rst_n  =  1;
end

LED  u_LED (
    .clk                     ( clk          ),
    .rst_n                   ( rst_n        ),

    .led                     ( led    [7:0] )
);

initial
begin
    yuv_point = $fopen("test_image.bin" , "rb");
    //$finish;
end

endmodule