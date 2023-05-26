/*
 Copyright (C) 2018  Intel Corporation. All rights reserved.
 Your use of Intel Corporation's design tools, logic functions 
 and other software and tools, and its AMPP partner logic 
 functions, and any output files from any of the foregoing 
 (including device programming or simulation files), and any 
 associated documentation or information are expressly subject 
 to the terms and conditions of the Intel Program License 
 Subscription Agreement, the Intel Quartus Prime License Agreement,
 the Intel FPGA IP License Agreement, or other applicable license
 agreement, including, without limitation, that your use is for
 the sole purpose of programming logic devices manufactured by
 Intel and sold by Intel or its authorized distributors.  Please
 refer to the applicable agreement for further details.
*/
MODEL
/*MODEL HEADER*/
/*
 This file contains Slow Corner delays for the design using part 10M50DAF484C6GES
 with speed grade 6, core voltage 1.2V, and temperature 85 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "vga1";
DATE "11/23/2022 17:03:15";
PROGRAM "Quartus Prime";



INPUT MAX10_CLK1_50;
INPUT altera_reserved_tdi;
INPUT altera_reserved_tck;
INPUT altera_reserved_tms;
INOUT DRAM_DQ[15];
INOUT DRAM_DQ[0];
INOUT DRAM_DQ[10];
INOUT DRAM_DQ[14];
INOUT DRAM_DQ[13];
INOUT DRAM_DQ[12];
INOUT DRAM_DQ[3];
INOUT DRAM_DQ[9];
INOUT DRAM_DQ[8];
INOUT DRAM_DQ[7];
INOUT DRAM_DQ[6];
INOUT DRAM_DQ[5];
INOUT DRAM_DQ[4];
INOUT DRAM_DQ[2];
INOUT DRAM_DQ[1];
INOUT DRAM_DQ[11];
INPUT SW[0];
INPUT SW[1];
INPUT SW[2];
INPUT SW[3];
INPUT SW[4];
INPUT SW[5];
INPUT SW[6];
INPUT SW[7];
INPUT SW[8];
INPUT SW[9];
INPUT KEY[0];
INPUT KEY[1];
OUTPUT VGA_R[0];
OUTPUT VGA_R[1];
OUTPUT VGA_R[2];
OUTPUT VGA_R[3];
OUTPUT VGA_G[0];
OUTPUT VGA_G[1];
OUTPUT VGA_G[2];
OUTPUT VGA_G[3];
OUTPUT VGA_B[0];
OUTPUT VGA_B[1];
OUTPUT VGA_B[2];
OUTPUT VGA_B[3];
OUTPUT VGA_HS;
OUTPUT VGA_VS;
OUTPUT LEDR[0];
OUTPUT LEDR[1];
OUTPUT LEDR[2];
OUTPUT LEDR[3];
OUTPUT LEDR[4];
OUTPUT LEDR[5];
OUTPUT LEDR[6];
OUTPUT LEDR[7];
OUTPUT LEDR[8];
OUTPUT LEDR[9];
OUTPUT HEX0[0];
OUTPUT HEX0[1];
OUTPUT HEX0[2];
OUTPUT HEX0[3];
OUTPUT HEX0[4];
OUTPUT HEX0[5];
OUTPUT HEX0[6];
OUTPUT HEX0[7];
OUTPUT HEX1[0];
OUTPUT HEX1[1];
OUTPUT HEX1[2];
OUTPUT HEX1[3];
OUTPUT HEX1[4];
OUTPUT HEX1[5];
OUTPUT HEX1[6];
OUTPUT HEX1[7];
OUTPUT HEX2[0];
OUTPUT HEX2[1];
OUTPUT HEX2[2];
OUTPUT HEX2[3];
OUTPUT HEX2[4];
OUTPUT HEX2[5];
OUTPUT HEX2[6];
OUTPUT HEX2[7];
OUTPUT HEX3[0];
OUTPUT HEX3[1];
OUTPUT HEX3[2];
OUTPUT HEX3[3];
OUTPUT HEX3[4];
OUTPUT HEX3[5];
OUTPUT HEX3[6];
OUTPUT HEX3[7];
OUTPUT HEX4[0];
OUTPUT HEX4[1];
OUTPUT HEX4[2];
OUTPUT HEX4[3];
OUTPUT HEX4[4];
OUTPUT HEX4[5];
OUTPUT HEX4[6];
OUTPUT HEX4[7];
OUTPUT HEX5[0];
OUTPUT HEX5[1];
OUTPUT HEX5[2];
OUTPUT HEX5[3];
OUTPUT HEX5[4];
OUTPUT HEX5[5];
OUTPUT HEX5[6];
OUTPUT HEX5[7];
OUTPUT DRAM_CLK;
OUTPUT DRAM_CKE;
OUTPUT DRAM_ADDR[0];
OUTPUT DRAM_ADDR[1];
OUTPUT DRAM_ADDR[2];
OUTPUT DRAM_ADDR[3];
OUTPUT DRAM_ADDR[4];
OUTPUT DRAM_ADDR[5];
OUTPUT DRAM_ADDR[6];
OUTPUT DRAM_ADDR[7];
OUTPUT DRAM_ADDR[8];
OUTPUT DRAM_ADDR[9];
OUTPUT DRAM_ADDR[10];
OUTPUT DRAM_ADDR[11];
OUTPUT DRAM_ADDR[12];
OUTPUT DRAM_BA[0];
OUTPUT DRAM_BA[1];
OUTPUT DRAM_LDQM;
OUTPUT DRAM_UDQM;
OUTPUT DRAM_CS_N;
OUTPUT DRAM_WE_N;
OUTPUT DRAM_CAS_N;
OUTPUT DRAM_RAS_N;
OUTPUT altera_reserved_tdo;

/*Arc definitions start here*/
pos_altera_reserved_tdi__altera_reserved_tck__setup:		SETUP (POSEDGE) altera_reserved_tdi altera_reserved_tck ;
pos_altera_reserved_tms__altera_reserved_tck__setup:		SETUP (POSEDGE) altera_reserved_tms altera_reserved_tck ;
pos_altera_reserved_tdi__altera_reserved_tck__hold:		HOLD (POSEDGE) altera_reserved_tdi altera_reserved_tck ;
pos_altera_reserved_tms__altera_reserved_tck__hold:		HOLD (POSEDGE) altera_reserved_tms altera_reserved_tck ;
pos_altera_reserved_tck__altera_reserved_tdo__delay:		DELAY (POSEDGE) altera_reserved_tck altera_reserved_tdo ;
___2.963__delay:		DELAY  2.963 ;

ENDMODEL
