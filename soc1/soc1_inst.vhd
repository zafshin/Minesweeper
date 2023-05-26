	component soc1 is
		port (
			accelerometer_spi_I2C_SDAT      : inout std_logic                     := 'X';             -- I2C_SDAT
			accelerometer_spi_I2C_SCLK      : out   std_logic;                                        -- I2C_SCLK
			accelerometer_spi_G_SENSOR_CS_N : out   std_logic;                                        -- G_SENSOR_CS_N
			accelerometer_spi_G_SENSOR_INT  : in    std_logic                     := 'X';             -- G_SENSOR_INT
			clk_clk                         : in    std_logic                     := 'X';             -- clk
			hex0_export                     : out   std_logic_vector(3 downto 0);                     -- export
			hex1_export                     : out   std_logic_vector(3 downto 0);                     -- export
			hex2_export                     : out   std_logic_vector(3 downto 0);                     -- export
			hex3_export                     : out   std_logic_vector(3 downto 0);                     -- export
			hex4_export                     : out   std_logic_vector(3 downto 0);                     -- export
			hex5_export                     : out   std_logic_vector(3 downto 0);                     -- export
			key_export                      : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- export
			ledr_export                     : out   std_logic_vector(9 downto 0);                     -- export
			reset_reset_n                   : in    std_logic                     := 'X';             -- reset_n
			sdram_clk_clk                   : out   std_logic;                                        -- clk
			sdram_wire_addr                 : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_wire_ba                   : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_wire_cas_n                : out   std_logic;                                        -- cas_n
			sdram_wire_cke                  : out   std_logic;                                        -- cke
			sdram_wire_cs_n                 : out   std_logic;                                        -- cs_n
			sdram_wire_dq                   : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_wire_dqm                  : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_wire_ras_n                : out   std_logic;                                        -- ras_n
			sdram_wire_we_n                 : out   std_logic;                                        -- we_n
			sw_export                       : in    std_logic_vector(9 downto 0)  := (others => 'X'); -- export
			vga_out_CLK                     : out   std_logic;                                        -- CLK
			vga_out_HS                      : out   std_logic;                                        -- HS
			vga_out_VS                      : out   std_logic;                                        -- VS
			vga_out_BLANK                   : out   std_logic;                                        -- BLANK
			vga_out_SYNC                    : out   std_logic;                                        -- SYNC
			vga_out_R                       : out   std_logic_vector(3 downto 0);                     -- R
			vga_out_G                       : out   std_logic_vector(3 downto 0);                     -- G
			vga_out_B                       : out   std_logic_vector(3 downto 0)                      -- B
		);
	end component soc1;

	u0 : component soc1
		port map (
			accelerometer_spi_I2C_SDAT      => CONNECTED_TO_accelerometer_spi_I2C_SDAT,      -- accelerometer_spi.I2C_SDAT
			accelerometer_spi_I2C_SCLK      => CONNECTED_TO_accelerometer_spi_I2C_SCLK,      --                  .I2C_SCLK
			accelerometer_spi_G_SENSOR_CS_N => CONNECTED_TO_accelerometer_spi_G_SENSOR_CS_N, --                  .G_SENSOR_CS_N
			accelerometer_spi_G_SENSOR_INT  => CONNECTED_TO_accelerometer_spi_G_SENSOR_INT,  --                  .G_SENSOR_INT
			clk_clk                         => CONNECTED_TO_clk_clk,                         --               clk.clk
			hex0_export                     => CONNECTED_TO_hex0_export,                     --              hex0.export
			hex1_export                     => CONNECTED_TO_hex1_export,                     --              hex1.export
			hex2_export                     => CONNECTED_TO_hex2_export,                     --              hex2.export
			hex3_export                     => CONNECTED_TO_hex3_export,                     --              hex3.export
			hex4_export                     => CONNECTED_TO_hex4_export,                     --              hex4.export
			hex5_export                     => CONNECTED_TO_hex5_export,                     --              hex5.export
			key_export                      => CONNECTED_TO_key_export,                      --               key.export
			ledr_export                     => CONNECTED_TO_ledr_export,                     --              ledr.export
			reset_reset_n                   => CONNECTED_TO_reset_reset_n,                   --             reset.reset_n
			sdram_clk_clk                   => CONNECTED_TO_sdram_clk_clk,                   --         sdram_clk.clk
			sdram_wire_addr                 => CONNECTED_TO_sdram_wire_addr,                 --        sdram_wire.addr
			sdram_wire_ba                   => CONNECTED_TO_sdram_wire_ba,                   --                  .ba
			sdram_wire_cas_n                => CONNECTED_TO_sdram_wire_cas_n,                --                  .cas_n
			sdram_wire_cke                  => CONNECTED_TO_sdram_wire_cke,                  --                  .cke
			sdram_wire_cs_n                 => CONNECTED_TO_sdram_wire_cs_n,                 --                  .cs_n
			sdram_wire_dq                   => CONNECTED_TO_sdram_wire_dq,                   --                  .dq
			sdram_wire_dqm                  => CONNECTED_TO_sdram_wire_dqm,                  --                  .dqm
			sdram_wire_ras_n                => CONNECTED_TO_sdram_wire_ras_n,                --                  .ras_n
			sdram_wire_we_n                 => CONNECTED_TO_sdram_wire_we_n,                 --                  .we_n
			sw_export                       => CONNECTED_TO_sw_export,                       --                sw.export
			vga_out_CLK                     => CONNECTED_TO_vga_out_CLK,                     --           vga_out.CLK
			vga_out_HS                      => CONNECTED_TO_vga_out_HS,                      --                  .HS
			vga_out_VS                      => CONNECTED_TO_vga_out_VS,                      --                  .VS
			vga_out_BLANK                   => CONNECTED_TO_vga_out_BLANK,                   --                  .BLANK
			vga_out_SYNC                    => CONNECTED_TO_vga_out_SYNC,                    --                  .SYNC
			vga_out_R                       => CONNECTED_TO_vga_out_R,                       --                  .R
			vga_out_G                       => CONNECTED_TO_vga_out_G,                       --                  .G
			vga_out_B                       => CONNECTED_TO_vga_out_B                        --                  .B
		);

