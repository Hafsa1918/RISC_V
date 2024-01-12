# RISC_V

This repo implements RISC_V single cycle processor using Verilog HDL. The processor is also deployed on ALtera DE1-SoC Cyclone-V FPGA Board.

Processor RTL and simulation results are added to repository.

# Simulation Results
![Waveforms](https://github.com/ha007-aman/RISC_V/assets/73087518/5e2f1926-34e1-45e0-97f5-c5eb5b6ee268)


# Instructions
The intructions used are in a text file - instmem.txt under Design_Files folder

       boost:  lw x6, -4(x9)
       
               sw x6, 8(x9)
       
               or x4, x5, x6
       
               beq x4, x4, boost


# Deployment on Altera DE1-Soc
Switch button - SW0 as Reset input
FPGA clock (50MHz) is slowed down to 1Hz using clock divider

The control sugnals PCSrc_ImmSrc_RegWrite_ALUSrc_MemWrite_ResultSrc are displayed on LEDs.

Since the assembly instructions forms a forever loop, the control signals associated with each instruction are displayed sequentially in a repeated pattern.


https://github.com/ha007-aman/RISC_V/assets/73087518/1ed7a117-638d-4fce-b587-e8cf58d6ff1c




# Structure
- Design_Files - holds all the design modules
- TestBench - contains the testbench of complete RISC-V processor

# License
This repo is licensed under MIT license.
