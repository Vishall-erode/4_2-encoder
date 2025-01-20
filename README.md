# 4_2-encoder
4:2 Encoder
This repository contains the implementation of a 4:2 encoder using Verilog. The 4:2 encoder is a combinational circuit that reduces four input signals into two output signals based on binary encoding. This project demonstrates the design, functionality, and simulation of a basic encoder circuit.
ntroduction
An encoder is a combinational circuit that converts active input signals into a coded binary output. The 4:2 encoder takes four inputs (D0, D1, D2, D3) and produces a 2-bit binary output (Y1, Y0). It is widely used in digital electronics for data compression or selection.

Truth Table
D3	D2	D1	D0	Y1	Y0
0	0	0	1	0	0
0	0	1	0	0	1
0	1	0	0	1	0
1	0	0	0	1	1
