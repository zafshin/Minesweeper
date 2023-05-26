
module soc1 (
	accelerometer_spi_I2C_SDAT,
	accelerometer_spi_I2C_SCLK,
	accelerometer_spi_G_SENSOR_CS_N,
	accelerometer_spi_G_SENSOR_INT,
	clk_clk,
	hex0_export,
	hex1_export,
	hex2_export,
	hex3_export,
	hex4_export,
	hex5_export,
	key_export,
	ledr_export,
	reset_reset_n,
	sdram_clk_clk,
	sdram_wire_addr,
	sdram_wire_ba,
	sdram_wire_cas_n,
	sdram_wire_cke,
	sdram_wire_cs_n,
	sdram_wire_dq,
	sdram_wire_dqm,
	sdram_wire_ras_n,
	sdram_wire_we_n,
	sw_export,
	vga_out_CLK,
	vga_out_HS,
	vga_out_VS,
	vga_out_BLANK,
	vga_out_SYNC,
	vga_out_R,
	vga_out_G,
	vga_out_B);	

	inout		accelerometer_spi_I2C_SDAT;
	output		accelerometer_spi_I2C_SCLK;
	output		accelerometer_spi_G_SENSOR_CS_N;
	input		accelerometer_spi_G_SENSOR_INT;
	input		clk_clk;
	output	[3:0]	hex0_export;
	output	[3:0]	hex1_export;
	output	[3:0]	hex2_export;
	output	[3:0]	hex3_export;
	output	[3:0]	hex4_export;
	output	[3:0]	hex5_export;
	input	[1:0]	key_export;
	output	[9:0]	ledr_export;
	input		reset_reset_n;
	output		sdram_clk_clk;
	output	[12:0]	sdram_wire_addr;
	output	[1:0]	sdram_wire_ba;
	output		sdram_wire_cas_n;
	output		sdram_wire_cke;
	output		sdram_wire_cs_n;
	inout	[15:0]	sdram_wire_dq;
	output	[1:0]	sdram_wire_dqm;
	output		sdram_wire_ras_n;
	output		sdram_wire_we_n;
	input	[9:0]	sw_export;
	output		vga_out_CLK;
	output		vga_out_HS;
	output		vga_out_VS;
	output		vga_out_BLANK;
	output		vga_out_SYNC;
	output	[3:0]	vga_out_R;
	output	[3:0]	vga_out_G;
	output	[3:0]	vga_out_B;
endmodule
