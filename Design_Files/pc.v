module pc(clk,reset,pc_in,pc_out);
input clk,reset;
input [31:0]pc_in;
output [31:0] pc_out;
reg [31:0] pc_out;
initial
pc_out=0;
always @(posedge clk)
begin 
 if (reset)
 pc_out = 0;
 else 
 pc_out = pc_in;
end
endmodule