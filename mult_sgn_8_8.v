`timescale 1ns/1ns

module mult_sgn_8_8(
                             CLK,
                             A,
                             B,

                             P                                                                                               
                             );
                    
                    
                    
input CLK;
input signed [7:0] A;
input signed [7:0] B;

output signed [15:0]P;                    
                    
                    
reg signed [15:0] P; 




wire [15:0]muldo_clk0;
reg  [15:0]muldo_clk1;
reg  [15:0]muldo_clk2;
 
assign muldo_clk0[15:0] = A * B;


always@(posedge CLK)                
begin
     muldo_clk1[15:0] <= muldo_clk0[15:0];
     muldo_clk2[15:0] <= muldo_clk1[15:0];
     
     P[15:0]  <= muldo_clk2[15:0];     //-- 3 stage;
end



endmodule
