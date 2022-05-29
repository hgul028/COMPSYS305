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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/21/2021 19:24:24"

-- 
-- Device: Altera EP3C16E144C7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ball IS
    PORT (
	clk : IN std_logic;
	pixel_row : IN std_logic_vector(9 DOWNTO 0);
	pixel_column : IN std_logic_vector(9 DOWNTO 0);
	red : OUT std_logic;
	green : OUT std_logic;
	blue : OUT std_logic
	);
END ball;

-- Design Ports Information
-- clk	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[6]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[5]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[7]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[1]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[2]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[0]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[3]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[4]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[8]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[9]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[5]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[9]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[7]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[8]	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[1]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ball IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pixel_row : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_pixel_column : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_red : std_logic;
SIGNAL ww_green : std_logic;
SIGNAL ww_blue : std_logic;
SIGNAL \ball_on~1_combout\ : std_logic;
SIGNAL \ball_on~2_combout\ : std_logic;
SIGNAL \ball_on~3_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \pixel_row[5]~input_o\ : std_logic;
SIGNAL \pixel_column[1]~input_o\ : std_logic;
SIGNAL \pixel_column[2]~input_o\ : std_logic;
SIGNAL \pixel_column[0]~input_o\ : std_logic;
SIGNAL \pixel_column[3]~input_o\ : std_logic;
SIGNAL \pixel_column[4]~input_o\ : std_logic;
SIGNAL \pixel_row[8]~input_o\ : std_logic;
SIGNAL \pixel_column[6]~input_o\ : std_logic;
SIGNAL \pixel_row[9]~input_o\ : std_logic;
SIGNAL \pixel_column[5]~input_o\ : std_logic;
SIGNAL \pixel_row[1]~input_o\ : std_logic;
SIGNAL \red~output_o\ : std_logic;
SIGNAL \green~output_o\ : std_logic;
SIGNAL \blue~output_o\ : std_logic;
SIGNAL \pixel_row[7]~input_o\ : std_logic;
SIGNAL \pixel_row[6]~input_o\ : std_logic;
SIGNAL \pixel_row[4]~input_o\ : std_logic;
SIGNAL \ball_on~0_combout\ : std_logic;
SIGNAL \pixel_column[8]~input_o\ : std_logic;
SIGNAL \pixel_column[9]~input_o\ : std_logic;
SIGNAL \pixel_column[7]~input_o\ : std_logic;
SIGNAL \ball_on~4_combout\ : std_logic;
SIGNAL \ball_on~5_combout\ : std_logic;
SIGNAL \pixel_row[0]~input_o\ : std_logic;
SIGNAL \pixel_row[2]~input_o\ : std_logic;
SIGNAL \ball_on~6_combout\ : std_logic;
SIGNAL \pixel_row[3]~input_o\ : std_logic;
SIGNAL \ball_on~7_combout\ : std_logic;
SIGNAL \ALT_INV_ball_on~7_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_pixel_row <= pixel_row;
ww_pixel_column <= pixel_column;
red <= ww_red;
green <= ww_green;
blue <= ww_blue;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ball_on~7_combout\ <= NOT \ball_on~7_combout\;

-- Location: LCCOMB_X22_Y1_N2
\ball_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_on~1_combout\ = (\pixel_column[2]~input_o\ & \pixel_column[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_column[2]~input_o\,
	datac => \pixel_column[1]~input_o\,
	combout => \ball_on~1_combout\);

-- Location: LCCOMB_X22_Y1_N12
\ball_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_on~2_combout\ = (\pixel_column[3]~input_o\ & (((!\pixel_column[4]~input_o\)))) # (!\pixel_column[3]~input_o\ & ((\ball_on~1_combout\ & ((!\pixel_column[0]~input_o\) # (!\pixel_column[4]~input_o\))) # (!\ball_on~1_combout\ & 
-- (\pixel_column[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_column[3]~input_o\,
	datab => \ball_on~1_combout\,
	datac => \pixel_column[4]~input_o\,
	datad => \pixel_column[0]~input_o\,
	combout => \ball_on~2_combout\);

-- Location: LCCOMB_X22_Y1_N6
\ball_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_on~3_combout\ = (!\pixel_column[5]~input_o\ & (!\pixel_row[9]~input_o\ & (\pixel_row[8]~input_o\ & \pixel_column[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_column[5]~input_o\,
	datab => \pixel_row[9]~input_o\,
	datac => \pixel_row[8]~input_o\,
	datad => \pixel_column[6]~input_o\,
	combout => \ball_on~3_combout\);

-- Location: IOIBUF_X35_Y0_N22
\pixel_row[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(5),
	o => \pixel_row[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N29
\pixel_column[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_column(1),
	o => \pixel_column[1]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\pixel_column[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_column(2),
	o => \pixel_column[2]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\pixel_column[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_column(0),
	o => \pixel_column[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\pixel_column[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_column(3),
	o => \pixel_column[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\pixel_column[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_column(4),
	o => \pixel_column[4]~input_o\);

-- Location: IOIBUF_X19_Y0_N29
\pixel_row[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(8),
	o => \pixel_row[8]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\pixel_column[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_column(6),
	o => \pixel_column[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\pixel_row[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(9),
	o => \pixel_row[9]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\pixel_column[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_column(5),
	o => \pixel_column[5]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\pixel_row[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(1),
	o => \pixel_row[1]~input_o\);

-- Location: IOOBUF_X11_Y29_N30
\red~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \red~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\green~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ball_on~7_combout\,
	devoe => ww_devoe,
	o => \green~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\blue~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ball_on~7_combout\,
	devoe => ww_devoe,
	o => \blue~output_o\);

-- Location: IOIBUF_X7_Y0_N29
\pixel_row[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(7),
	o => \pixel_row[7]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\pixel_row[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(6),
	o => \pixel_row[6]~input_o\);

-- Location: IOIBUF_X26_Y29_N15
\pixel_row[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(4),
	o => \pixel_row[4]~input_o\);

-- Location: LCCOMB_X22_Y1_N24
\ball_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_on~0_combout\ = (!\pixel_row[7]~input_o\ & (\pixel_row[6]~input_o\ & (\pixel_row[5]~input_o\ $ (\pixel_row[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_row[5]~input_o\,
	datab => \pixel_row[7]~input_o\,
	datac => \pixel_row[6]~input_o\,
	datad => \pixel_row[4]~input_o\,
	combout => \ball_on~0_combout\);

-- Location: IOIBUF_X26_Y0_N1
\pixel_column[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_column(8),
	o => \pixel_column[8]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\pixel_column[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_column(9),
	o => \pixel_column[9]~input_o\);

-- Location: IOIBUF_X28_Y29_N8
\pixel_column[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_column(7),
	o => \pixel_column[7]~input_o\);

-- Location: LCCOMB_X22_Y1_N0
\ball_on~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_on~4_combout\ = (\ball_on~3_combout\ & (!\pixel_column[8]~input_o\ & (\pixel_column[9]~input_o\ & !\pixel_column[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_on~3_combout\,
	datab => \pixel_column[8]~input_o\,
	datac => \pixel_column[9]~input_o\,
	datad => \pixel_column[7]~input_o\,
	combout => \ball_on~4_combout\);

-- Location: LCCOMB_X22_Y1_N10
\ball_on~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_on~5_combout\ = (\ball_on~2_combout\ & (\ball_on~0_combout\ & \ball_on~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_on~2_combout\,
	datab => \ball_on~0_combout\,
	datad => \ball_on~4_combout\,
	combout => \ball_on~5_combout\);

-- Location: IOIBUF_X21_Y0_N22
\pixel_row[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(0),
	o => \pixel_row[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\pixel_row[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(2),
	o => \pixel_row[2]~input_o\);

-- Location: LCCOMB_X22_Y1_N28
\ball_on~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_on~6_combout\ = (\pixel_row[1]~input_o\ & (\pixel_row[2]~input_o\ & ((\pixel_row[0]~input_o\) # (\pixel_row[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_row[1]~input_o\,
	datab => \pixel_row[0]~input_o\,
	datac => \pixel_row[2]~input_o\,
	datad => \pixel_row[4]~input_o\,
	combout => \ball_on~6_combout\);

-- Location: IOIBUF_X21_Y0_N1
\pixel_row[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pixel_row(3),
	o => \pixel_row[3]~input_o\);

-- Location: LCCOMB_X22_Y1_N14
\ball_on~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ball_on~7_combout\ = (\ball_on~5_combout\ & (\pixel_row[4]~input_o\ $ (((!\ball_on~6_combout\ & !\pixel_row[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ball_on~5_combout\,
	datab => \ball_on~6_combout\,
	datac => \pixel_row[3]~input_o\,
	datad => \pixel_row[4]~input_o\,
	combout => \ball_on~7_combout\);

-- Location: IOIBUF_X21_Y0_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_red <= \red~output_o\;

ww_green <= \green~output_o\;

ww_blue <= \blue~output_o\;
END structure;


