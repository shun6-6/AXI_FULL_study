`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/21 10:56:52
// Design Name: 
// Module Name: sim_tb_top
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


module sim_tb_top();

reg clk,rst;

initial begin
    rst = 1;
    #100;
    @(posedge clk)rst <= 0;
end

always
begin
    clk = 0;
    #10;
    clk = 1;
    #10;
end

design_1_wrapper design_1_wrapper_U0
(
    .M_AXI_ACLK_0        (clk       ),
    .M_AXI_ARESETN_0     (~rst      )
);

endmodule
