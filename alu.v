module alu(a,b,aluoperation,zero,result);
input [31:0] a,b;
input [2:0]aluoperation;
output zero;
reg zero;
output [31:0] result;
reg [31:0] result;
  always @ (a or b or aluoperation)
begin
 case(aluoperation)
 3'b000: result=a+b;
 3'b001: result=a-b;
 3'b101: result=a<b;
 3'b011: result=a|b;
 3'b010: result=a&b;
 default: result=3'b0;
 endcase
end
always @ (result)
begin 
 if (result)
 zero = 0;
 else
 zero = 1;
end
endmodule