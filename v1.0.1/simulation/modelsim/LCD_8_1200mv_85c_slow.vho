-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "04/14/2022 17:55:29"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LCD IS
    PORT (
	lcd_clk : OUT std_logic;
	CLKIN : IN std_logic;
	HSYNC : OUT std_logic;
	VSYNC : OUT std_logic;
	lcd_light_en : OUT std_logic;
	OUTDATA : OUT std_logic_vector(15 DOWNTO 0)
	);
END LCD;

-- Design Ports Information
-- lcd_clk	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSYNC	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VSYNC	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_light_en	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTDATA[15]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTDATA[14]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTDATA[13]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTDATA[12]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTDATA[11]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTDATA[10]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTDATA[9]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTDATA[8]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTDATA[7]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTDATA[6]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTDATA[5]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTDATA[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTDATA[3]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTDATA[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTDATA[1]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTDATA[0]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLKIN	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_lcd_clk : std_logic;
SIGNAL ww_CLKIN : std_logic;
SIGNAL ww_HSYNC : std_logic;
SIGNAL ww_VSYNC : std_logic;
SIGNAL ww_lcd_light_en : std_logic;
SIGNAL ww_OUTDATA : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|PHSYNC~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLKIN~input_o\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Thsync[0]~9_combout\ : std_logic;
SIGNAL \inst2|Thsync[6]~22\ : std_logic;
SIGNAL \inst2|Thsync[7]~23_combout\ : std_logic;
SIGNAL \inst2|Thsync[7]~24\ : std_logic;
SIGNAL \inst2|Thsync[8]~25_combout\ : std_logic;
SIGNAL \inst2|OUTDADA~16_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|Thsync[0]~10\ : std_logic;
SIGNAL \inst2|Thsync[1]~11_combout\ : std_logic;
SIGNAL \inst2|Thsync[1]~12\ : std_logic;
SIGNAL \inst2|Thsync[2]~13_combout\ : std_logic;
SIGNAL \inst2|Thsync[2]~14\ : std_logic;
SIGNAL \inst2|Thsync[3]~15_combout\ : std_logic;
SIGNAL \inst2|Thsync[3]~16\ : std_logic;
SIGNAL \inst2|Thsync[4]~17_combout\ : std_logic;
SIGNAL \inst2|Thsync[4]~18\ : std_logic;
SIGNAL \inst2|Thsync[5]~19_combout\ : std_logic;
SIGNAL \inst2|Thsync[5]~20\ : std_logic;
SIGNAL \inst2|Thsync[6]~21_combout\ : std_logic;
SIGNAL \inst2|LessThan1~1_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|LessThan1~2_combout\ : std_logic;
SIGNAL \inst2|PHSYNC~q\ : std_logic;
SIGNAL \inst2|PHSYNC~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Tvsync[0]~9_combout\ : std_logic;
SIGNAL \inst2|Tvsync[7]~24\ : std_logic;
SIGNAL \inst2|Tvsync[8]~25_combout\ : std_logic;
SIGNAL \inst2|DATAAA[15]~0_combout\ : std_logic;
SIGNAL \inst2|LessThan3~0_combout\ : std_logic;
SIGNAL \inst2|LessThan2~0_combout\ : std_logic;
SIGNAL \inst2|Tvsync[0]~10\ : std_logic;
SIGNAL \inst2|Tvsync[1]~11_combout\ : std_logic;
SIGNAL \inst2|Tvsync[1]~12\ : std_logic;
SIGNAL \inst2|Tvsync[2]~13_combout\ : std_logic;
SIGNAL \inst2|Tvsync[2]~14\ : std_logic;
SIGNAL \inst2|Tvsync[3]~15_combout\ : std_logic;
SIGNAL \inst2|Tvsync[3]~16\ : std_logic;
SIGNAL \inst2|Tvsync[4]~17_combout\ : std_logic;
SIGNAL \inst2|Tvsync[4]~18\ : std_logic;
SIGNAL \inst2|Tvsync[5]~19_combout\ : std_logic;
SIGNAL \inst2|Tvsync[5]~20\ : std_logic;
SIGNAL \inst2|Tvsync[6]~21_combout\ : std_logic;
SIGNAL \inst2|Tvsync[6]~22\ : std_logic;
SIGNAL \inst2|Tvsync[7]~23_combout\ : std_logic;
SIGNAL \inst2|LessThan3~1_combout\ : std_logic;
SIGNAL \inst2|LessThan3~2_combout\ : std_logic;
SIGNAL \inst2|PVSYNC~q\ : std_logic;
SIGNAL \inst2|comb~0_combout\ : std_logic;
SIGNAL \inst2|OUTDADA~3_combout\ : std_logic;
SIGNAL \inst2|OUTDADA~17_combout\ : std_logic;
SIGNAL \inst2|OUTDADA~15_combout\ : std_logic;
SIGNAL \inst2|comb~1_combout\ : std_logic;
SIGNAL \inst2|comb~2_combout\ : std_logic;
SIGNAL \inst2|comb~3_combout\ : std_logic;
SIGNAL \inst2|comb~4_combout\ : std_logic;
SIGNAL \inst2|DATAAA[15]~1_combout\ : std_logic;
SIGNAL \inst2|DATAAA[15]~2_combout\ : std_logic;
SIGNAL \inst2|DATAAA[15]~3_combout\ : std_logic;
SIGNAL \inst2|DATAAA[15]~4_combout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|Tvsync\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|Thsync\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|DATAAA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|ALT_INV_PHSYNC~clkctrl_outclk\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;

BEGIN

lcd_clk <= ww_lcd_clk;
ww_CLKIN <= CLKIN;
HSYNC <= ww_HSYNC;
VSYNC <= ww_VSYNC;
lcd_light_en <= ww_lcd_light_en;
OUTDATA <= ww_OUTDATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLKIN~input_o\);

\inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\inst2|PHSYNC~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|PHSYNC~q\);
\inst2|ALT_INV_PHSYNC~clkctrl_outclk\ <= NOT \inst2|PHSYNC~clkctrl_outclk\;
\inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;

-- Location: IOOBUF_X30_Y0_N23
\lcd_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_lcd_clk);

-- Location: IOOBUF_X30_Y0_N2
\HSYNC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PHSYNC~q\,
	devoe => ww_devoe,
	o => ww_HSYNC);

-- Location: IOOBUF_X30_Y0_N9
\VSYNC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|PVSYNC~q\,
	devoe => ww_devoe,
	o => ww_VSYNC);

-- Location: IOOBUF_X7_Y24_N2
\lcd_light_en~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_lcd_light_en);

-- Location: IOOBUF_X13_Y24_N23
\OUTDATA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTDATA(15));

-- Location: IOOBUF_X13_Y24_N16
\OUTDATA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTDATA(14));

-- Location: IOOBUF_X9_Y24_N9
\OUTDATA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTDATA(13));

-- Location: IOOBUF_X11_Y24_N16
\OUTDATA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_OUTDATA(12));

-- Location: IOOBUF_X7_Y24_N9
\OUTDATA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTDATA(11));

-- Location: IOOBUF_X34_Y18_N2
\OUTDATA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTDATA(10));

-- Location: IOOBUF_X34_Y19_N16
\OUTDATA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTDATA(9));

-- Location: IOOBUF_X16_Y24_N9
\OUTDATA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTDATA(8));

-- Location: IOOBUF_X34_Y20_N9
\OUTDATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTDATA(7));

-- Location: IOOBUF_X16_Y24_N23
\OUTDATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTDATA(6));

-- Location: IOOBUF_X16_Y24_N16
\OUTDATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTDATA(5));

-- Location: IOOBUF_X32_Y0_N23
\OUTDATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|DATAAA\(4),
	devoe => ww_devoe,
	o => ww_OUTDATA(4));

-- Location: IOOBUF_X32_Y0_N16
\OUTDATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_OUTDATA(3));

-- Location: IOOBUF_X32_Y0_N9
\OUTDATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_OUTDATA(2));

-- Location: IOOBUF_X34_Y18_N23
\OUTDATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_OUTDATA(1));

-- Location: IOOBUF_X34_Y18_N16
\OUTDATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_OUTDATA(0));

-- Location: IOIBUF_X0_Y11_N8
\CLKIN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLKIN,
	o => \CLKIN~input_o\);

-- Location: PLL_1
\inst|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 52,
	c0_initial => 1,
	c0_low => 52,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 4,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 40000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 26,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 6749,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 192,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y12_N10
\inst2|Thsync[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Thsync[0]~9_combout\ = \inst2|Thsync\(0) $ (VCC)
-- \inst2|Thsync[0]~10\ = CARRY(\inst2|Thsync\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Thsync\(0),
	datad => VCC,
	combout => \inst2|Thsync[0]~9_combout\,
	cout => \inst2|Thsync[0]~10\);

-- Location: LCCOMB_X33_Y12_N22
\inst2|Thsync[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Thsync[6]~21_combout\ = (\inst2|Thsync\(6) & (\inst2|Thsync[5]~20\ $ (GND))) # (!\inst2|Thsync\(6) & (!\inst2|Thsync[5]~20\ & VCC))
-- \inst2|Thsync[6]~22\ = CARRY((\inst2|Thsync\(6) & !\inst2|Thsync[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Thsync\(6),
	datad => VCC,
	cin => \inst2|Thsync[5]~20\,
	combout => \inst2|Thsync[6]~21_combout\,
	cout => \inst2|Thsync[6]~22\);

-- Location: LCCOMB_X33_Y12_N24
\inst2|Thsync[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Thsync[7]~23_combout\ = (\inst2|Thsync\(7) & (!\inst2|Thsync[6]~22\)) # (!\inst2|Thsync\(7) & ((\inst2|Thsync[6]~22\) # (GND)))
-- \inst2|Thsync[7]~24\ = CARRY((!\inst2|Thsync[6]~22\) # (!\inst2|Thsync\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Thsync\(7),
	datad => VCC,
	cin => \inst2|Thsync[6]~22\,
	combout => \inst2|Thsync[7]~23_combout\,
	cout => \inst2|Thsync[7]~24\);

-- Location: FF_X33_Y12_N25
\inst2|Thsync[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Thsync[7]~23_combout\,
	sclr => \inst2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Thsync\(7));

-- Location: LCCOMB_X33_Y12_N26
\inst2|Thsync[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Thsync[8]~25_combout\ = \inst2|Thsync\(8) $ (!\inst2|Thsync[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Thsync\(8),
	cin => \inst2|Thsync[7]~24\,
	combout => \inst2|Thsync[8]~25_combout\);

-- Location: FF_X33_Y12_N27
\inst2|Thsync[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Thsync[8]~25_combout\,
	sclr => \inst2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Thsync\(8));

-- Location: LCCOMB_X33_Y11_N28
\inst2|OUTDADA~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|OUTDADA~16_combout\ = (\inst2|Thsync\(7) & \inst2|Thsync\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Thsync\(7),
	datad => \inst2|Thsync\(8),
	combout => \inst2|OUTDADA~16_combout\);

-- Location: LCCOMB_X33_Y12_N0
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = (\inst2|OUTDADA~16_combout\ & (((\inst2|Thsync\(3) & \inst2|Thsync\(4))) # (!\inst2|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan1~1_combout\,
	datab => \inst2|Thsync\(3),
	datac => \inst2|OUTDADA~16_combout\,
	datad => \inst2|Thsync\(4),
	combout => \inst2|LessThan0~0_combout\);

-- Location: FF_X33_Y12_N11
\inst2|Thsync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Thsync[0]~9_combout\,
	sclr => \inst2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Thsync\(0));

-- Location: LCCOMB_X33_Y12_N12
\inst2|Thsync[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Thsync[1]~11_combout\ = (\inst2|Thsync\(1) & (!\inst2|Thsync[0]~10\)) # (!\inst2|Thsync\(1) & ((\inst2|Thsync[0]~10\) # (GND)))
-- \inst2|Thsync[1]~12\ = CARRY((!\inst2|Thsync[0]~10\) # (!\inst2|Thsync\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Thsync\(1),
	datad => VCC,
	cin => \inst2|Thsync[0]~10\,
	combout => \inst2|Thsync[1]~11_combout\,
	cout => \inst2|Thsync[1]~12\);

-- Location: FF_X33_Y12_N13
\inst2|Thsync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Thsync[1]~11_combout\,
	sclr => \inst2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Thsync\(1));

-- Location: LCCOMB_X33_Y12_N14
\inst2|Thsync[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Thsync[2]~13_combout\ = (\inst2|Thsync\(2) & (\inst2|Thsync[1]~12\ $ (GND))) # (!\inst2|Thsync\(2) & (!\inst2|Thsync[1]~12\ & VCC))
-- \inst2|Thsync[2]~14\ = CARRY((\inst2|Thsync\(2) & !\inst2|Thsync[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Thsync\(2),
	datad => VCC,
	cin => \inst2|Thsync[1]~12\,
	combout => \inst2|Thsync[2]~13_combout\,
	cout => \inst2|Thsync[2]~14\);

-- Location: FF_X33_Y12_N15
\inst2|Thsync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Thsync[2]~13_combout\,
	sclr => \inst2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Thsync\(2));

-- Location: LCCOMB_X33_Y12_N16
\inst2|Thsync[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Thsync[3]~15_combout\ = (\inst2|Thsync\(3) & (!\inst2|Thsync[2]~14\)) # (!\inst2|Thsync\(3) & ((\inst2|Thsync[2]~14\) # (GND)))
-- \inst2|Thsync[3]~16\ = CARRY((!\inst2|Thsync[2]~14\) # (!\inst2|Thsync\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Thsync\(3),
	datad => VCC,
	cin => \inst2|Thsync[2]~14\,
	combout => \inst2|Thsync[3]~15_combout\,
	cout => \inst2|Thsync[3]~16\);

-- Location: FF_X33_Y12_N17
\inst2|Thsync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Thsync[3]~15_combout\,
	sclr => \inst2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Thsync\(3));

-- Location: LCCOMB_X33_Y12_N18
\inst2|Thsync[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Thsync[4]~17_combout\ = (\inst2|Thsync\(4) & (\inst2|Thsync[3]~16\ $ (GND))) # (!\inst2|Thsync\(4) & (!\inst2|Thsync[3]~16\ & VCC))
-- \inst2|Thsync[4]~18\ = CARRY((\inst2|Thsync\(4) & !\inst2|Thsync[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Thsync\(4),
	datad => VCC,
	cin => \inst2|Thsync[3]~16\,
	combout => \inst2|Thsync[4]~17_combout\,
	cout => \inst2|Thsync[4]~18\);

-- Location: FF_X33_Y12_N19
\inst2|Thsync[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Thsync[4]~17_combout\,
	sclr => \inst2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Thsync\(4));

-- Location: LCCOMB_X33_Y12_N20
\inst2|Thsync[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Thsync[5]~19_combout\ = (\inst2|Thsync\(5) & (!\inst2|Thsync[4]~18\)) # (!\inst2|Thsync\(5) & ((\inst2|Thsync[4]~18\) # (GND)))
-- \inst2|Thsync[5]~20\ = CARRY((!\inst2|Thsync[4]~18\) # (!\inst2|Thsync\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Thsync\(5),
	datad => VCC,
	cin => \inst2|Thsync[4]~18\,
	combout => \inst2|Thsync[5]~19_combout\,
	cout => \inst2|Thsync[5]~20\);

-- Location: FF_X33_Y12_N21
\inst2|Thsync[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Thsync[5]~19_combout\,
	sclr => \inst2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Thsync\(5));

-- Location: FF_X33_Y12_N23
\inst2|Thsync[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Thsync[6]~21_combout\,
	sclr => \inst2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Thsync\(6));

-- Location: LCCOMB_X33_Y12_N6
\inst2|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~1_combout\ = (!\inst2|Thsync\(6) & !\inst2|Thsync\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Thsync\(6),
	datad => \inst2|Thsync\(5),
	combout => \inst2|LessThan1~1_combout\);

-- Location: LCCOMB_X33_Y12_N28
\inst2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = (((!\inst2|Thsync\(3)) # (!\inst2|Thsync\(2))) # (!\inst2|Thsync\(4))) # (!\inst2|Thsync\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Thsync\(1),
	datab => \inst2|Thsync\(4),
	datac => \inst2|Thsync\(2),
	datad => \inst2|Thsync\(3),
	combout => \inst2|LessThan1~0_combout\);

-- Location: LCCOMB_X33_Y12_N4
\inst2|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~2_combout\ = (((\inst2|Thsync\(8)) # (\inst2|Thsync\(7))) # (!\inst2|LessThan1~0_combout\)) # (!\inst2|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan1~1_combout\,
	datab => \inst2|LessThan1~0_combout\,
	datac => \inst2|Thsync\(8),
	datad => \inst2|Thsync\(7),
	combout => \inst2|LessThan1~2_combout\);

-- Location: FF_X33_Y12_N5
\inst2|PHSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PHSYNC~q\);

-- Location: CLKCTRL_G6
\inst2|PHSYNC~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|PHSYNC~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|PHSYNC~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y1_N10
\inst2|Tvsync[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Tvsync[0]~9_combout\ = \inst2|Tvsync\(0) $ (VCC)
-- \inst2|Tvsync[0]~10\ = CARRY(\inst2|Tvsync\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Tvsync\(0),
	datad => VCC,
	combout => \inst2|Tvsync[0]~9_combout\,
	cout => \inst2|Tvsync[0]~10\);

-- Location: LCCOMB_X31_Y1_N24
\inst2|Tvsync[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Tvsync[7]~23_combout\ = (\inst2|Tvsync\(7) & (!\inst2|Tvsync[6]~22\)) # (!\inst2|Tvsync\(7) & ((\inst2|Tvsync[6]~22\) # (GND)))
-- \inst2|Tvsync[7]~24\ = CARRY((!\inst2|Tvsync[6]~22\) # (!\inst2|Tvsync\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Tvsync\(7),
	datad => VCC,
	cin => \inst2|Tvsync[6]~22\,
	combout => \inst2|Tvsync[7]~23_combout\,
	cout => \inst2|Tvsync[7]~24\);

-- Location: LCCOMB_X31_Y1_N26
\inst2|Tvsync[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Tvsync[8]~25_combout\ = \inst2|Tvsync\(8) $ (!\inst2|Tvsync[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Tvsync\(8),
	cin => \inst2|Tvsync[7]~24\,
	combout => \inst2|Tvsync[8]~25_combout\);

-- Location: FF_X31_Y1_N27
\inst2|Tvsync[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_PHSYNC~clkctrl_outclk\,
	d => \inst2|Tvsync[8]~25_combout\,
	sclr => \inst2|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Tvsync\(8));

-- Location: LCCOMB_X31_Y1_N30
\inst2|DATAAA[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATAAA[15]~0_combout\ = (\inst2|Tvsync\(2) & \inst2|Tvsync\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Tvsync\(2),
	datad => \inst2|Tvsync\(1),
	combout => \inst2|DATAAA[15]~0_combout\);

-- Location: LCCOMB_X31_Y1_N6
\inst2|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~0_combout\ = (!\inst2|Tvsync\(6) & (!\inst2|Tvsync\(3) & (!\inst2|Tvsync\(4) & !\inst2|Tvsync\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Tvsync\(6),
	datab => \inst2|Tvsync\(3),
	datac => \inst2|Tvsync\(4),
	datad => \inst2|Tvsync\(5),
	combout => \inst2|LessThan3~0_combout\);

-- Location: LCCOMB_X31_Y1_N8
\inst2|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~0_combout\ = (\inst2|Tvsync\(8) & ((\inst2|Tvsync\(7)) # ((\inst2|DATAAA[15]~0_combout\) # (!\inst2|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Tvsync\(8),
	datab => \inst2|Tvsync\(7),
	datac => \inst2|DATAAA[15]~0_combout\,
	datad => \inst2|LessThan3~0_combout\,
	combout => \inst2|LessThan2~0_combout\);

-- Location: FF_X31_Y1_N11
\inst2|Tvsync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_PHSYNC~clkctrl_outclk\,
	d => \inst2|Tvsync[0]~9_combout\,
	sclr => \inst2|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Tvsync\(0));

-- Location: LCCOMB_X31_Y1_N12
\inst2|Tvsync[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Tvsync[1]~11_combout\ = (\inst2|Tvsync\(1) & (!\inst2|Tvsync[0]~10\)) # (!\inst2|Tvsync\(1) & ((\inst2|Tvsync[0]~10\) # (GND)))
-- \inst2|Tvsync[1]~12\ = CARRY((!\inst2|Tvsync[0]~10\) # (!\inst2|Tvsync\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Tvsync\(1),
	datad => VCC,
	cin => \inst2|Tvsync[0]~10\,
	combout => \inst2|Tvsync[1]~11_combout\,
	cout => \inst2|Tvsync[1]~12\);

-- Location: FF_X31_Y1_N13
\inst2|Tvsync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_PHSYNC~clkctrl_outclk\,
	d => \inst2|Tvsync[1]~11_combout\,
	sclr => \inst2|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Tvsync\(1));

-- Location: LCCOMB_X31_Y1_N14
\inst2|Tvsync[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Tvsync[2]~13_combout\ = (\inst2|Tvsync\(2) & (\inst2|Tvsync[1]~12\ $ (GND))) # (!\inst2|Tvsync\(2) & (!\inst2|Tvsync[1]~12\ & VCC))
-- \inst2|Tvsync[2]~14\ = CARRY((\inst2|Tvsync\(2) & !\inst2|Tvsync[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Tvsync\(2),
	datad => VCC,
	cin => \inst2|Tvsync[1]~12\,
	combout => \inst2|Tvsync[2]~13_combout\,
	cout => \inst2|Tvsync[2]~14\);

-- Location: FF_X31_Y1_N15
\inst2|Tvsync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_PHSYNC~clkctrl_outclk\,
	d => \inst2|Tvsync[2]~13_combout\,
	sclr => \inst2|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Tvsync\(2));

-- Location: LCCOMB_X31_Y1_N16
\inst2|Tvsync[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Tvsync[3]~15_combout\ = (\inst2|Tvsync\(3) & (!\inst2|Tvsync[2]~14\)) # (!\inst2|Tvsync\(3) & ((\inst2|Tvsync[2]~14\) # (GND)))
-- \inst2|Tvsync[3]~16\ = CARRY((!\inst2|Tvsync[2]~14\) # (!\inst2|Tvsync\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Tvsync\(3),
	datad => VCC,
	cin => \inst2|Tvsync[2]~14\,
	combout => \inst2|Tvsync[3]~15_combout\,
	cout => \inst2|Tvsync[3]~16\);

-- Location: FF_X31_Y1_N17
\inst2|Tvsync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_PHSYNC~clkctrl_outclk\,
	d => \inst2|Tvsync[3]~15_combout\,
	sclr => \inst2|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Tvsync\(3));

-- Location: LCCOMB_X31_Y1_N18
\inst2|Tvsync[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Tvsync[4]~17_combout\ = (\inst2|Tvsync\(4) & (\inst2|Tvsync[3]~16\ $ (GND))) # (!\inst2|Tvsync\(4) & (!\inst2|Tvsync[3]~16\ & VCC))
-- \inst2|Tvsync[4]~18\ = CARRY((\inst2|Tvsync\(4) & !\inst2|Tvsync[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Tvsync\(4),
	datad => VCC,
	cin => \inst2|Tvsync[3]~16\,
	combout => \inst2|Tvsync[4]~17_combout\,
	cout => \inst2|Tvsync[4]~18\);

-- Location: FF_X31_Y1_N19
\inst2|Tvsync[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_PHSYNC~clkctrl_outclk\,
	d => \inst2|Tvsync[4]~17_combout\,
	sclr => \inst2|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Tvsync\(4));

-- Location: LCCOMB_X31_Y1_N20
\inst2|Tvsync[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Tvsync[5]~19_combout\ = (\inst2|Tvsync\(5) & (!\inst2|Tvsync[4]~18\)) # (!\inst2|Tvsync\(5) & ((\inst2|Tvsync[4]~18\) # (GND)))
-- \inst2|Tvsync[5]~20\ = CARRY((!\inst2|Tvsync[4]~18\) # (!\inst2|Tvsync\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Tvsync\(5),
	datad => VCC,
	cin => \inst2|Tvsync[4]~18\,
	combout => \inst2|Tvsync[5]~19_combout\,
	cout => \inst2|Tvsync[5]~20\);

-- Location: FF_X31_Y1_N21
\inst2|Tvsync[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_PHSYNC~clkctrl_outclk\,
	d => \inst2|Tvsync[5]~19_combout\,
	sclr => \inst2|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Tvsync\(5));

-- Location: LCCOMB_X31_Y1_N22
\inst2|Tvsync[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Tvsync[6]~21_combout\ = (\inst2|Tvsync\(6) & (\inst2|Tvsync[5]~20\ $ (GND))) # (!\inst2|Tvsync\(6) & (!\inst2|Tvsync[5]~20\ & VCC))
-- \inst2|Tvsync[6]~22\ = CARRY((\inst2|Tvsync\(6) & !\inst2|Tvsync[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Tvsync\(6),
	datad => VCC,
	cin => \inst2|Tvsync[5]~20\,
	combout => \inst2|Tvsync[6]~21_combout\,
	cout => \inst2|Tvsync[6]~22\);

-- Location: FF_X31_Y1_N23
\inst2|Tvsync[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_PHSYNC~clkctrl_outclk\,
	d => \inst2|Tvsync[6]~21_combout\,
	sclr => \inst2|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Tvsync\(6));

-- Location: FF_X31_Y1_N25
\inst2|Tvsync[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_PHSYNC~clkctrl_outclk\,
	d => \inst2|Tvsync[7]~23_combout\,
	sclr => \inst2|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|Tvsync\(7));

-- Location: LCCOMB_X31_Y1_N4
\inst2|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~1_combout\ = (!\inst2|Tvsync\(8) & (!\inst2|Tvsync\(2) & ((!\inst2|Tvsync\(1)) # (!\inst2|Tvsync\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Tvsync\(8),
	datab => \inst2|Tvsync\(2),
	datac => \inst2|Tvsync\(0),
	datad => \inst2|Tvsync\(1),
	combout => \inst2|LessThan3~1_combout\);

-- Location: LCCOMB_X31_Y1_N28
\inst2|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~2_combout\ = (\inst2|Tvsync\(7)) # ((!\inst2|LessThan3~0_combout\) # (!\inst2|LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Tvsync\(7),
	datac => \inst2|LessThan3~1_combout\,
	datad => \inst2|LessThan3~0_combout\,
	combout => \inst2|LessThan3~2_combout\);

-- Location: FF_X31_Y1_N29
\inst2|PVSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ALT_INV_PHSYNC~clkctrl_outclk\,
	d => \inst2|LessThan3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|PVSYNC~q\);

-- Location: LCCOMB_X32_Y1_N24
\inst2|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~0_combout\ = (\inst2|Tvsync\(7)) # ((\inst2|Tvsync\(2) & \inst2|Tvsync\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Tvsync\(2),
	datac => \inst2|Tvsync\(8),
	datad => \inst2|Tvsync\(7),
	combout => \inst2|comb~0_combout\);

-- Location: LCCOMB_X33_Y12_N30
\inst2|OUTDADA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|OUTDADA~3_combout\ = (\inst2|Thsync\(2) & ((\inst2|Thsync\(0)) # ((\inst2|Thsync\(7)) # (\inst2|Thsync\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Thsync\(0),
	datab => \inst2|Thsync\(7),
	datac => \inst2|Thsync\(2),
	datad => \inst2|Thsync\(1),
	combout => \inst2|OUTDADA~3_combout\);

-- Location: LCCOMB_X33_Y12_N2
\inst2|OUTDADA~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|OUTDADA~17_combout\ = (\inst2|Thsync\(4)) # ((\inst2|Thsync\(3)) # ((\inst2|OUTDADA~3_combout\) # (\inst2|Thsync\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Thsync\(4),
	datab => \inst2|Thsync\(3),
	datac => \inst2|OUTDADA~3_combout\,
	datad => \inst2|Thsync\(5),
	combout => \inst2|OUTDADA~17_combout\);

-- Location: LCCOMB_X33_Y12_N8
\inst2|OUTDADA~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|OUTDADA~15_combout\ = (\inst2|Thsync\(8) & (\inst2|Thsync\(7) & ((\inst2|Thsync\(6)) # (\inst2|OUTDADA~17_combout\)))) # (!\inst2|Thsync\(8) & (!\inst2|Thsync\(7) & ((!\inst2|OUTDADA~17_combout\) # (!\inst2|Thsync\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Thsync\(6),
	datab => \inst2|OUTDADA~17_combout\,
	datac => \inst2|Thsync\(8),
	datad => \inst2|Thsync\(7),
	combout => \inst2|OUTDADA~15_combout\);

-- Location: LCCOMB_X32_Y1_N10
\inst2|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~1_combout\ = (\inst2|Tvsync\(2) & (((!\inst2|Tvsync\(4)) # (!\inst2|Tvsync\(3))) # (!\inst2|Tvsync\(5)))) # (!\inst2|Tvsync\(2) & ((\inst2|Tvsync\(5)) # ((\inst2|Tvsync\(3)) # (\inst2|Tvsync\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Tvsync\(2),
	datab => \inst2|Tvsync\(5),
	datac => \inst2|Tvsync\(3),
	datad => \inst2|Tvsync\(4),
	combout => \inst2|comb~1_combout\);

-- Location: LCCOMB_X32_Y1_N20
\inst2|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~2_combout\ = (\inst2|Tvsync\(0)) # ((\inst2|Tvsync\(6)) # (\inst2|comb~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Tvsync\(0),
	datab => \inst2|Tvsync\(6),
	datad => \inst2|comb~1_combout\,
	combout => \inst2|comb~2_combout\);

-- Location: LCCOMB_X32_Y1_N2
\inst2|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~3_combout\ = (\inst2|Tvsync\(1) & (\inst2|comb~0_combout\)) # (!\inst2|Tvsync\(1) & ((\inst2|comb~0_combout\ & ((\inst2|comb~2_combout\))) # (!\inst2|comb~0_combout\ & (\inst2|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Tvsync\(1),
	datab => \inst2|comb~0_combout\,
	datac => \inst2|LessThan3~0_combout\,
	datad => \inst2|comb~2_combout\,
	combout => \inst2|comb~3_combout\);

-- Location: LCCOMB_X32_Y1_N12
\inst2|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|comb~4_combout\ = (!\inst2|OUTDADA~15_combout\ & (\inst2|comb~3_combout\ & (\inst2|Tvsync\(8) $ (\inst2|comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Tvsync\(8),
	datab => \inst2|comb~0_combout\,
	datac => \inst2|OUTDADA~15_combout\,
	datad => \inst2|comb~3_combout\,
	combout => \inst2|comb~4_combout\);

-- Location: LCCOMB_X32_Y1_N22
\inst2|DATAAA[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATAAA[15]~1_combout\ = (\inst2|Tvsync\(6) & ((\inst2|Tvsync\(0)) # ((!\inst2|Tvsync\(3)) # (!\inst2|DATAAA[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Tvsync\(0),
	datab => \inst2|DATAAA[15]~0_combout\,
	datac => \inst2|Tvsync\(3),
	datad => \inst2|Tvsync\(6),
	combout => \inst2|DATAAA[15]~1_combout\);

-- Location: LCCOMB_X32_Y1_N4
\inst2|DATAAA[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATAAA[15]~2_combout\ = (\inst2|Tvsync\(3)) # ((\inst2|Tvsync\(2)) # ((\inst2|Tvsync\(0) & \inst2|Tvsync\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Tvsync\(0),
	datab => \inst2|Tvsync\(1),
	datac => \inst2|Tvsync\(3),
	datad => \inst2|Tvsync\(2),
	combout => \inst2|DATAAA[15]~2_combout\);

-- Location: LCCOMB_X32_Y1_N6
\inst2|DATAAA[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATAAA[15]~3_combout\ = (\inst2|DATAAA[15]~1_combout\) # ((\inst2|Tvsync\(5)) # ((\inst2|Tvsync\(4) & \inst2|DATAAA[15]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|DATAAA[15]~1_combout\,
	datab => \inst2|Tvsync\(4),
	datac => \inst2|DATAAA[15]~2_combout\,
	datad => \inst2|Tvsync\(5),
	combout => \inst2|DATAAA[15]~3_combout\);

-- Location: LCCOMB_X32_Y1_N28
\inst2|DATAAA[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATAAA[15]~4_combout\ = (!\inst2|Tvsync\(8) & (!\inst2|Tvsync\(7) & (!\inst2|OUTDADA~15_combout\ & \inst2|DATAAA[15]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Tvsync\(8),
	datab => \inst2|Tvsync\(7),
	datac => \inst2|OUTDADA~15_combout\,
	datad => \inst2|DATAAA[15]~3_combout\,
	combout => \inst2|DATAAA[15]~4_combout\);

-- Location: LCCOMB_X32_Y1_N18
\inst2|DATAAA[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|DATAAA\(4) = (!\inst2|comb~4_combout\ & ((\inst2|DATAAA[15]~4_combout\) # (\inst2|DATAAA\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|comb~4_combout\,
	datab => \inst2|DATAAA[15]~4_combout\,
	datad => \inst2|DATAAA\(4),
	combout => \inst2|DATAAA\(4));
END structure;


