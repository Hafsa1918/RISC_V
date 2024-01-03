module controlunit(opcode,branch,immsrc,resultsrc,aluop,memwrite,alusrc,regwrite);
input [6:0] opcode;
output [1:0] immsrc,aluop;
output branch,resultsrc,memwrite,alusrc,regwrite;
wire [8:0] controls;
assign {alusrc, resultsrc, immsrc, regwrite, memwrite, branch, aluop} = controls;

assign controls = 
        (opcode == 7'b0110011) ? 9'b0_0_xx_1_0_0_10: // r type
		  (opcode == 7'b0000011) ? 9'b1_1_00_1_0_0_00: // lw type
		  (opcode == 7'b0100011) ? 9'b1_x_01_0_1_0_00: // sw type (sw)
		  (opcode == 7'b1100011) ? 9'b0_x_10_0_0_1_01: // sb  type(beq)
		  (opcode == 7'b0010011) ? 9'b1_0_00_1_0_0_10: // addi type (addi)
		                           9'bx_x_xx_X_x_X_xx;
endmodule
