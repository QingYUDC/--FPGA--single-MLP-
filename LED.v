module LED (
    input wire clk,
    input wire rst_n,
    output reg [7:0] led
);
reg [25:0] count;
always @(posedge clk) begin
    if (!rst_n) begin
        count <= 'b0;
    end 
    else begin
        count <= count + 1'b1;
    end
end


always @(posedge clk) begin
    if (!rst_n) begin
        led <= 8'b1111_1110;
    end
    else begin
        if (count[22] && count[21: 0] == 22'd100) begin
            led[7:0] <= {led[0] , led[7:1]};
        end
    end
end

endmodule     