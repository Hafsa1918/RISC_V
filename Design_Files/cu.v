module cu(opcode,zero,funct3,funct7,alusrc,resultsrc,immsrc,regwrite,memwrite,pcsrc,alucontrol);
input [6:0] opcode;
input zero,funct7;
input [2:0] funct3;
output [2:0] alucontrol;
output [1:0] immsrc;
output resultsrc,memwrite,alusrc,regwrite,pcsrc;
wire branch;
wire [1:0] aluop;

controlunit u1(opcode,branch,immsrc,resultsrc,aluop,memwrite,alusrc,regwrite);
alucontrol u2(aluop,funct3,funct7,alucontrol);
assign pcsrc = branch && zero;
endmodule