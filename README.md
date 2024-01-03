# RISC_V

This repo implements RISC_V single cycle processor using Verilog HDL. The processor is also deployed on ALtera DE1-SoC Cyclone-V FPGA Board.

Processor RTL and simulation results are added to repository.

![Waveforms](https://github.com/ha007-aman/RISC_V/assets/73087518/5e2f1926-34e1-45e0-97f5-c5eb5b6ee268)

The intructions used are in a text file - instmem.txt under Design_Files folder

# Instructions used

       boost:  lw x6, -4(x9)
       
               sw x6, 8(x9)
       
               or x4, x5, x6
       
               beq x4, x4, boost

# Structure
- Design_Files - holds all the design modules
- TestBench - contains the testbench of complete RISC-V processor

# License
This repo is licensed under MIT license.
