module tb_risc();
reg clk,reset;
  
risc_v dut(clk,reset);
  
always #5 clk=~clk;
  
initial 
begin
 clk =0; reset = 1;
 #10;
 reset = 0;
 #200 $stop;
end
  
endmodule 
