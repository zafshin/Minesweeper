	soc1 u0 (
		.accelerometer_spi_I2C_SDAT      (<connected-to-accelerometer_spi_I2C_SDAT>),      // accelerometer_spi.I2C_SDAT
		.accelerometer_spi_I2C_SCLK      (<connected-to-accelerometer_spi_I2C_SCLK>),      //                  .I2C_SCLK
		.accelerometer_spi_G_SENSOR_CS_N (<connected-to-accelerometer_spi_G_SENSOR_CS_N>), //                  .G_SENSOR_CS_N
		.accelerometer_spi_G_SENSOR_INT  (<connected-to-accelerometer_spi_G_SENSOR_INT>),  //                  .G_SENSOR_INT
		.clk_clk                         (<connected-to-clk_clk>),                         //               clk.clk
		.hex0_export                     (<connected-to-hex0_export>),                     //              hex0.export
		.hex1_export                     (<connected-to-hex1_export>),                     //              hex1.export
		.hex2_export                     (<connected-to-hex2_export>),                     //              hex2.export
		.hex3_export                     (<connected-to-hex3_export>),                     //              hex3.export
		.hex4_export                     (<connected-to-hex4_export>),                     //              hex4.export
		.hex5_export                     (<connected-to-hex5_export>),                     //              hex5.export
		.key_export                      (<connected-to-key_export>),                      //               key.export
		.ledr_export                     (<connected-to-ledr_export>),                     //              ledr.export
		.reset_reset_n                   (<connected-to-reset_reset_n>),                   //             reset.reset_n
		.sdram_clk_clk                   (<connected-to-sdram_clk_clk>),                   //         sdram_clk.clk
		.sdram_wire_addr                 (<connected-to-sdram_wire_addr>),                 //        sdram_wire.addr
		.sdram_wire_ba                   (<connected-to-sdram_wire_ba>),                   //                  .ba
		.sdram_wire_cas_n                (<connected-to-sdram_wire_cas_n>),                //                  .cas_n
		.sdram_wire_cke                  (<connected-to-sdram_wire_cke>),                  //                  .cke
		.sdram_wire_cs_n                 (<connected-to-sdram_wire_cs_n>),                 //                  .cs_n
		.sdram_wire_dq                   (<connected-to-sdram_wire_dq>),                   //                  .dq
		.sdram_wire_dqm                  (<connected-to-sdram_wire_dqm>),                  //                  .dqm
		.sdram_wire_ras_n                (<connected-to-sdram_wire_ras_n>),                //                  .ras_n
		.sdram_wire_we_n                 (<connected-to-sdram_wire_we_n>),                 //                  .we_n
		.sw_export                       (<connected-to-sw_export>),                       //                sw.export
		.vga_out_CLK                     (<connected-to-vga_out_CLK>),                     //           vga_out.CLK
		.vga_out_HS                      (<connected-to-vga_out_HS>),                      //                  .HS
		.vga_out_VS                      (<connected-to-vga_out_VS>),                      //                  .VS
		.vga_out_BLANK                   (<connected-to-vga_out_BLANK>),                   //                  .BLANK
		.vga_out_SYNC                    (<connected-to-vga_out_SYNC>),                    //                  .SYNC
		.vga_out_R                       (<connected-to-vga_out_R>),                       //                  .R
		.vga_out_G                       (<connected-to-vga_out_G>),                       //                  .G
		.vga_out_B                       (<connected-to-vga_out_B>)                        //                  .B
	);

