module instmem(instr_addr,instruction);
input [31:0] instr_addr;
output [31:0] instruction;
reg[31:0] instruction;
reg [7:0] ram [15:0];
initial
  begin
     $readmemb ("instmem.txt",ram);
  end
    always @(instr_addr)
instruction = {ram[instr_addr+3],ram[instr_addr+2],ram[instr_addr+1],ram[instr_addr]};
endmodule
