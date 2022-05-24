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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "05/24/2022 14:00:27"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGA_SYNC IS
    PORT (
	clock_25Mhz : IN std_logic;
	red : IN std_logic;
	green : IN std_logic;
	blue : IN std_logic;
	red_out : OUT std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	vert_sync_out : OUT std_logic;
	pixel_row : OUT std_logic_vector(9 DOWNTO 0);
	pixel_column : OUT std_logic_vector(9 DOWNTO 0)
	);
END VGA_SYNC;

-- Design Ports Information
-- red_out	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[1]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[3]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[5]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[6]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[8]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_row[9]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[0]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[5]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[6]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[8]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel_column[9]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_25Mhz	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGA_SYNC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_25Mhz : std_logic;
SIGNAL ww_red : std_logic;
SIGNAL ww_green : std_logic;
SIGNAL ww_blue : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_pixel_row : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_pixel_column : std_logic_vector(9 DOWNTO 0);
SIGNAL \clock_25Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \video_on_v~q\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \red_out~output_o\ : std_logic;
SIGNAL \green_out~output_o\ : std_logic;
SIGNAL \blue_out~output_o\ : std_logic;
SIGNAL \horiz_sync_out~output_o\ : std_logic;
SIGNAL \vert_sync_out~output_o\ : std_logic;
SIGNAL \pixel_row[0]~output_o\ : std_logic;
SIGNAL \pixel_row[1]~output_o\ : std_logic;
SIGNAL \pixel_row[2]~output_o\ : std_logic;
SIGNAL \pixel_row[3]~output_o\ : std_logic;
SIGNAL \pixel_row[4]~output_o\ : std_logic;
SIGNAL \pixel_row[5]~output_o\ : std_logic;
SIGNAL \pixel_row[6]~output_o\ : std_logic;
SIGNAL \pixel_row[7]~output_o\ : std_logic;
SIGNAL \pixel_row[8]~output_o\ : std_logic;
SIGNAL \pixel_row[9]~output_o\ : std_logic;
SIGNAL \pixel_column[0]~output_o\ : std_logic;
SIGNAL \pixel_column[1]~output_o\ : std_logic;
SIGNAL \pixel_column[2]~output_o\ : std_logic;
SIGNAL \pixel_column[3]~output_o\ : std_logic;
SIGNAL \pixel_column[4]~output_o\ : std_logic;
SIGNAL \pixel_column[5]~output_o\ : std_logic;
SIGNAL \pixel_column[6]~output_o\ : std_logic;
SIGNAL \pixel_column[7]~output_o\ : std_logic;
SIGNAL \pixel_column[8]~output_o\ : std_logic;
SIGNAL \pixel_column[9]~output_o\ : std_logic;
SIGNAL \clock_25Mhz~input_o\ : std_logic;
SIGNAL \clock_25Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \red~input_o\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \h_count~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \h_count~2_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \h_count~0_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \video_on_h~q\ : std_logic;
SIGNAL \red_out~0_combout\ : std_logic;
SIGNAL \red_out~reg0_q\ : std_logic;
SIGNAL \green~input_o\ : std_logic;
SIGNAL \green_out~0_combout\ : std_logic;
SIGNAL \green_out~reg0_q\ : std_logic;
SIGNAL \blue~input_o\ : std_logic;
SIGNAL \blue_out~0_combout\ : std_logic;
SIGNAL \blue_out~reg0_q\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \horiz_sync~q\ : std_logic;
SIGNAL \horiz_sync_out~reg0_q\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \v_count~7_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \v_count[3]~9_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \v_count[6]~4_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \v_count[7]~5_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \v_count[5]~3_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \v_count[0]~1_combout\ : std_logic;
SIGNAL \process_0~13_combout\ : std_logic;
SIGNAL \v_count[4]~10_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \v_count[9]~2_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \v_count[8]~6_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \vert_sync~q\ : std_logic;
SIGNAL \vert_sync_out~reg0feeder_combout\ : std_logic;
SIGNAL \vert_sync_out~reg0_q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \v_count~0_combout\ : std_logic;
SIGNAL \pixel_row[0]~reg0feeder_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \pixel_row[0]~reg0_q\ : std_logic;
SIGNAL \pixel_row[1]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_row[1]~reg0_q\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \v_count[2]~8_combout\ : std_logic;
SIGNAL \pixel_row[2]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_row[2]~reg0_q\ : std_logic;
SIGNAL \pixel_row[3]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_row[3]~reg0_q\ : std_logic;
SIGNAL \pixel_row[4]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_row[4]~reg0_q\ : std_logic;
SIGNAL \pixel_row[5]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_row[5]~reg0_q\ : std_logic;
SIGNAL \pixel_row[6]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_row[6]~reg0_q\ : std_logic;
SIGNAL \pixel_row[7]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_row[7]~reg0_q\ : std_logic;
SIGNAL \pixel_row[8]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_row[8]~reg0_q\ : std_logic;
SIGNAL \pixel_column[0]~reg0_q\ : std_logic;
SIGNAL \pixel_column[1]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_column[1]~reg0_q\ : std_logic;
SIGNAL \pixel_column[2]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_column[2]~reg0_q\ : std_logic;
SIGNAL \pixel_column[3]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_column[3]~reg0_q\ : std_logic;
SIGNAL \pixel_column[4]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_column[4]~reg0_q\ : std_logic;
SIGNAL \pixel_column[5]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_column[5]~reg0_q\ : std_logic;
SIGNAL \pixel_column[6]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_column[6]~reg0_q\ : std_logic;
SIGNAL \pixel_column[7]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_column[7]~reg0_q\ : std_logic;
SIGNAL \pixel_column[8]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_column[8]~reg0_q\ : std_logic;
SIGNAL \pixel_column[9]~reg0feeder_combout\ : std_logic;
SIGNAL \pixel_column[9]~reg0_q\ : std_logic;
SIGNAL v_count : std_logic_vector(9 DOWNTO 0);
SIGNAL h_count : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_clock_25Mhz <= clock_25Mhz;
ww_red <= red;
ww_green <= green;
ww_blue <= blue;
red_out <= ww_red_out;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
horiz_sync_out <= ww_horiz_sync_out;
vert_sync_out <= ww_vert_sync_out;
pixel_row <= ww_pixel_row;
pixel_column <= ww_pixel_column;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_25Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_25Mhz~input_o\);

-- Location: LCCOMB_X38_Y23_N12
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (v_count(4) & (\Add1~7\ $ (GND))) # (!v_count(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((v_count(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X39_Y23_N15
video_on_v : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_on_v~q\);

-- Location: LCCOMB_X39_Y23_N10
\process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = ((v_count(0) $ (!v_count(1))) # (!v_count(2))) # (!v_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(3),
	datab => v_count(0),
	datac => v_count(1),
	datad => v_count(2),
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X37_Y23_N6
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (h_count(2)) # ((h_count(8)) # ((!h_count(7)) # (!h_count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(2),
	datab => h_count(8),
	datac => h_count(5),
	datad => h_count(7),
	combout => \Equal1~0_combout\);

-- Location: IOOBUF_X41_Y23_N9
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red_out~reg0_q\,
	devoe => ww_devoe,
	o => \red_out~output_o\);

-- Location: IOOBUF_X41_Y25_N23
\green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green_out~reg0_q\,
	devoe => ww_devoe,
	o => \green_out~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\blue_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blue_out~reg0_q\,
	devoe => ww_devoe,
	o => \blue_out~output_o\);

-- Location: IOOBUF_X41_Y25_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \horiz_sync_out~reg0_q\,
	devoe => ww_devoe,
	o => \horiz_sync_out~output_o\);

-- Location: IOOBUF_X41_Y23_N16
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vert_sync_out~reg0_q\,
	devoe => ww_devoe,
	o => \vert_sync_out~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\pixel_row[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_row[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_row[0]~output_o\);

-- Location: IOOBUF_X41_Y22_N16
\pixel_row[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_row[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_row[1]~output_o\);

-- Location: IOOBUF_X41_Y20_N16
\pixel_row[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_row[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_row[2]~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\pixel_row[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_row[3]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_row[3]~output_o\);

-- Location: IOOBUF_X41_Y24_N16
\pixel_row[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_row[4]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_row[4]~output_o\);

-- Location: IOOBUF_X41_Y22_N23
\pixel_row[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_row[5]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_row[5]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\pixel_row[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_row[6]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_row[6]~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\pixel_row[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_row[7]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_row[7]~output_o\);

-- Location: IOOBUF_X41_Y24_N2
\pixel_row[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_row[8]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_row[8]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\pixel_row[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pixel_row[9]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\pixel_column[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_column[0]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_column[0]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\pixel_column[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_column[1]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_column[1]~output_o\);

-- Location: IOOBUF_X35_Y29_N30
\pixel_column[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_column[2]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_column[2]~output_o\);

-- Location: IOOBUF_X41_Y25_N9
\pixel_column[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_column[3]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_column[3]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\pixel_column[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_column[4]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_column[4]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\pixel_column[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_column[5]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_column[5]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\pixel_column[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_column[6]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_column[6]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\pixel_column[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_column[7]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_column[7]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\pixel_column[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_column[8]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_column[8]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\pixel_column[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pixel_column[9]~reg0_q\,
	devoe => ww_devoe,
	o => \pixel_column[9]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clock_25Mhz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_25Mhz,
	o => \clock_25Mhz~input_o\);

-- Location: CLKCTRL_G4
\clock_25Mhz~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_25Mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_25Mhz~inputclkctrl_outclk\);

-- Location: IOIBUF_X21_Y0_N8
\red~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_red,
	o => \red~input_o\);

-- Location: LCCOMB_X36_Y23_N24
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (h_count(8) & (\Add0~15\ $ (GND))) # (!h_count(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((h_count(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X37_Y23_N20
\h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \h_count~1_combout\ = (!\Equal0~2_combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~2_combout\,
	datad => \Add0~16_combout\,
	combout => \h_count~1_combout\);

-- Location: FF_X37_Y23_N21
\h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(8));

-- Location: LCCOMB_X36_Y23_N8
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = h_count(0) $ (VCC)
-- \Add0~1\ = CARRY(h_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => h_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X36_Y23_N9
\h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(0));

-- Location: LCCOMB_X36_Y23_N10
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (h_count(1) & (!\Add0~1\)) # (!h_count(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!h_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X36_Y23_N12
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (h_count(2) & (\Add0~3\ $ (GND))) # (!h_count(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((h_count(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X36_Y23_N13
\h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(2));

-- Location: LCCOMB_X36_Y23_N4
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!h_count(7) & (!h_count(5) & (h_count(8) & h_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(7),
	datab => h_count(5),
	datac => h_count(8),
	datad => h_count(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X36_Y23_N14
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (h_count(3) & (!\Add0~5\)) # (!h_count(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!h_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X36_Y23_N15
\h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(3));

-- Location: LCCOMB_X36_Y23_N16
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (h_count(4) & (\Add0~7\ $ (GND))) # (!h_count(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((h_count(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X36_Y23_N17
\h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(4));

-- Location: LCCOMB_X36_Y23_N2
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (h_count(1) & (h_count(4) & (h_count(3) & h_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(1),
	datab => h_count(4),
	datac => h_count(3),
	datad => h_count(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X36_Y23_N30
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (h_count(9) & (!h_count(6) & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(9),
	datab => h_count(6),
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X36_Y23_N18
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (h_count(5) & (!\Add0~9\)) # (!h_count(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!h_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X36_Y23_N0
\h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \h_count~2_combout\ = (!\Equal0~2_combout\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~2_combout\,
	datad => \Add0~10_combout\,
	combout => \h_count~2_combout\);

-- Location: FF_X36_Y23_N1
\h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(5));

-- Location: LCCOMB_X36_Y23_N20
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (h_count(6) & (\Add0~11\ $ (GND))) # (!h_count(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((h_count(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => h_count(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X36_Y23_N21
\h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(6));

-- Location: LCCOMB_X36_Y23_N22
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (h_count(7) & (!\Add0~13\)) # (!h_count(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!h_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => h_count(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X36_Y23_N26
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\ $ (h_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => h_count(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X37_Y23_N22
\h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \h_count~0_combout\ = (\Add0~18_combout\ & !\Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~18_combout\,
	datad => \Equal0~2_combout\,
	combout => \h_count~0_combout\);

-- Location: FF_X37_Y23_N23
\h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(9));

-- Location: FF_X36_Y23_N23
\h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(7));

-- Location: LCCOMB_X35_Y23_N26
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ((!h_count(8) & !h_count(7))) # (!h_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(8),
	datab => h_count(9),
	datad => h_count(7),
	combout => \process_0~0_combout\);

-- Location: FF_X36_Y23_N19
video_on_h : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	asdata => \process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \video_on_h~q\);

-- Location: LCCOMB_X40_Y23_N16
\red_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \red_out~0_combout\ = (\video_on_v~q\ & (\red~input_o\ & \video_on_h~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video_on_v~q\,
	datac => \red~input_o\,
	datad => \video_on_h~q\,
	combout => \red_out~0_combout\);

-- Location: FF_X40_Y23_N17
\red_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \red_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \red_out~reg0_q\);

-- Location: IOIBUF_X21_Y0_N1
\green~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_green,
	o => \green~input_o\);

-- Location: LCCOMB_X40_Y23_N10
\green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \green_out~0_combout\ = (\video_on_v~q\ & (\green~input_o\ & \video_on_h~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video_on_v~q\,
	datac => \green~input_o\,
	datad => \video_on_h~q\,
	combout => \green_out~0_combout\);

-- Location: FF_X40_Y23_N11
\green_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \green_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \green_out~reg0_q\);

-- Location: IOIBUF_X41_Y20_N1
\blue~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_blue,
	o => \blue~input_o\);

-- Location: LCCOMB_X40_Y23_N20
\blue_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \blue_out~0_combout\ = (\video_on_v~q\ & (\video_on_h~q\ & \blue~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \video_on_v~q\,
	datab => \video_on_h~q\,
	datad => \blue~input_o\,
	combout => \blue_out~0_combout\);

-- Location: FF_X40_Y23_N21
\blue_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \blue_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blue_out~reg0_q\);

-- Location: LCCOMB_X35_Y23_N24
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!h_count(8) & (h_count(9) & h_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(8),
	datab => h_count(9),
	datad => h_count(7),
	combout => \process_0~1_combout\);

-- Location: FF_X36_Y23_N11
\h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => h_count(1));

-- Location: LCCOMB_X35_Y23_N0
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (h_count(2)) # ((!h_count(6) & (h_count(0) & h_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(6),
	datab => h_count(0),
	datac => h_count(1),
	datad => h_count(2),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X35_Y23_N2
\process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (h_count(4) & ((h_count(3)) # (\process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => h_count(4),
	datac => h_count(3),
	datad => \process_0~2_combout\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X35_Y23_N18
\process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = ((h_count(6) & (h_count(5) & \process_0~3_combout\)) # (!h_count(6) & (!h_count(5) & !\process_0~3_combout\))) # (!\process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(6),
	datab => \process_0~1_combout\,
	datac => h_count(5),
	datad => \process_0~3_combout\,
	combout => \process_0~4_combout\);

-- Location: FF_X35_Y23_N19
horiz_sync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horiz_sync~q\);

-- Location: FF_X35_Y23_N25
\horiz_sync_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	asdata => \horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horiz_sync_out~reg0_q\);

-- Location: LCCOMB_X36_Y23_N6
\process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = ((!h_count(2) & ((!h_count(0)) # (!h_count(1))))) # (!h_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(2),
	datab => h_count(3),
	datac => h_count(1),
	datad => h_count(0),
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X36_Y23_N28
\process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (h_count(4) & h_count(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => h_count(4),
	datad => h_count(5),
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X37_Y23_N30
\process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (!h_count(8) & (!h_count(6) & ((\process_0~9_combout\) # (!\process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(8),
	datab => h_count(6),
	datac => \process_0~9_combout\,
	datad => \process_0~10_combout\,
	combout => \process_0~11_combout\);

-- Location: LCCOMB_X38_Y23_N4
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = v_count(0) $ (VCC)
-- \Add1~1\ = CARRY(v_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X38_Y23_N6
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (v_count(1) & (!\Add1~1\)) # (!v_count(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!v_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X37_Y23_N4
\v_count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count~7_combout\ = (\Add1~2_combout\ & ((\process_0~12_combout\) # ((\process_0~8_combout\) # (\process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~12_combout\,
	datab => \process_0~8_combout\,
	datac => \process_0~11_combout\,
	datad => \Add1~2_combout\,
	combout => \v_count~7_combout\);

-- Location: FF_X37_Y23_N5
\v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \v_count~7_combout\,
	ena => \v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(1));

-- Location: LCCOMB_X38_Y23_N8
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (v_count(2) & (\Add1~3\ $ (GND))) # (!v_count(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((v_count(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X38_Y23_N10
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (v_count(3) & (!\Add1~5\)) # (!v_count(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!v_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X37_Y23_N24
\v_count[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[3]~9_combout\ = (\v_count[0]~1_combout\ & (\process_0~13_combout\ & (\Add1~6_combout\))) # (!\v_count[0]~1_combout\ & (((v_count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~13_combout\,
	datab => \Add1~6_combout\,
	datac => v_count(3),
	datad => \v_count[0]~1_combout\,
	combout => \v_count[3]~9_combout\);

-- Location: FF_X37_Y23_N25
\v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \v_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(3));

-- Location: LCCOMB_X38_Y23_N14
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (v_count(5) & (!\Add1~9\)) # (!v_count(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!v_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X38_Y23_N16
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (v_count(6) & (\Add1~11\ $ (GND))) # (!v_count(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((v_count(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X38_Y23_N2
\v_count[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[6]~4_combout\ = (\v_count[0]~1_combout\ & (\process_0~13_combout\ & ((\Add1~12_combout\)))) # (!\v_count[0]~1_combout\ & (((v_count(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~13_combout\,
	datab => \v_count[0]~1_combout\,
	datac => v_count(6),
	datad => \Add1~12_combout\,
	combout => \v_count[6]~4_combout\);

-- Location: FF_X38_Y23_N3
\v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(6));

-- Location: LCCOMB_X38_Y23_N18
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (v_count(7) & (!\Add1~13\)) # (!v_count(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!v_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => v_count(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X38_Y23_N24
\v_count[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[7]~5_combout\ = (\v_count[0]~1_combout\ & (\process_0~13_combout\ & ((\Add1~14_combout\)))) # (!\v_count[0]~1_combout\ & (((v_count(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~13_combout\,
	datab => \v_count[0]~1_combout\,
	datac => v_count(7),
	datad => \Add1~14_combout\,
	combout => \v_count[7]~5_combout\);

-- Location: FF_X38_Y23_N25
\v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(7));

-- Location: LCCOMB_X37_Y23_N26
\v_count[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[5]~3_combout\ = (\v_count[0]~1_combout\ & (\process_0~13_combout\ & ((\Add1~10_combout\)))) # (!\v_count[0]~1_combout\ & (((v_count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~13_combout\,
	datab => \v_count[0]~1_combout\,
	datac => v_count(5),
	datad => \Add1~10_combout\,
	combout => \v_count[5]~3_combout\);

-- Location: FF_X37_Y23_N27
\v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(5));

-- Location: LCCOMB_X37_Y23_N14
\process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (!v_count(5) & (!v_count(4) & ((!v_count(3)) # (!v_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(2),
	datab => v_count(5),
	datac => v_count(4),
	datad => v_count(3),
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X37_Y23_N8
\process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (!v_count(8) & (!v_count(7) & (\process_0~7_combout\ & !v_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(8),
	datab => v_count(7),
	datac => \process_0~7_combout\,
	datad => v_count(6),
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X37_Y23_N0
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Equal1~0_combout\) # ((h_count(6)) # ((!\Equal0~0_combout\) # (!h_count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => h_count(6),
	datac => h_count(9),
	datad => \Equal0~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X37_Y23_N18
\v_count[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[0]~1_combout\ = ((!\process_0~12_combout\ & (!\process_0~8_combout\ & !\process_0~11_combout\))) # (!\Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~12_combout\,
	datab => \process_0~8_combout\,
	datac => \process_0~11_combout\,
	datad => \Equal1~1_combout\,
	combout => \v_count[0]~1_combout\);

-- Location: LCCOMB_X37_Y23_N12
\process_0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~13_combout\ = (\process_0~12_combout\) # ((\process_0~8_combout\) # (\process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~12_combout\,
	datab => \process_0~8_combout\,
	datac => \process_0~11_combout\,
	combout => \process_0~13_combout\);

-- Location: LCCOMB_X38_Y23_N30
\v_count[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[4]~10_combout\ = (\v_count[0]~1_combout\ & (\Add1~8_combout\ & ((\process_0~13_combout\)))) # (!\v_count[0]~1_combout\ & (((v_count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \v_count[0]~1_combout\,
	datac => v_count(4),
	datad => \process_0~13_combout\,
	combout => \v_count[4]~10_combout\);

-- Location: FF_X38_Y23_N31
\v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \v_count[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(4));

-- Location: LCCOMB_X38_Y23_N20
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (v_count(8) & (\Add1~15\ $ (GND))) # (!v_count(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((v_count(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => v_count(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X38_Y23_N22
\Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = \Add1~17\ $ (v_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => v_count(9),
	cin => \Add1~17\,
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X38_Y23_N0
\v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[9]~2_combout\ = (\v_count[0]~1_combout\ & (\process_0~13_combout\ & ((\Add1~18_combout\)))) # (!\v_count[0]~1_combout\ & (((v_count(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~13_combout\,
	datab => \v_count[0]~1_combout\,
	datac => v_count(9),
	datad => \Add1~18_combout\,
	combout => \v_count[9]~2_combout\);

-- Location: FF_X38_Y23_N1
\v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(9));

-- Location: LCCOMB_X38_Y23_N26
\v_count[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[8]~6_combout\ = (\v_count[0]~1_combout\ & (\process_0~13_combout\ & ((\Add1~16_combout\)))) # (!\v_count[0]~1_combout\ & (((v_count(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~13_combout\,
	datab => \v_count[0]~1_combout\,
	datac => v_count(8),
	datad => \Add1~16_combout\,
	combout => \v_count[8]~6_combout\);

-- Location: FF_X38_Y23_N27
\v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(8));

-- Location: LCCOMB_X38_Y23_N28
\LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (v_count(5) & (v_count(7) & (v_count(8) & v_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => v_count(5),
	datab => v_count(7),
	datac => v_count(8),
	datad => v_count(6),
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X39_Y23_N12
\process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\process_0~5_combout\) # ((v_count(4)) # ((v_count(9)) # (!\LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~5_combout\,
	datab => v_count(4),
	datac => v_count(9),
	datad => \LessThan7~0_combout\,
	combout => \process_0~6_combout\);

-- Location: FF_X39_Y23_N13
vert_sync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vert_sync~q\);

-- Location: LCCOMB_X40_Y23_N6
\vert_sync_out~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vert_sync_out~reg0feeder_combout\ = \vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vert_sync~q\,
	combout => \vert_sync_out~reg0feeder_combout\);

-- Location: FF_X40_Y23_N7
\vert_sync_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \vert_sync_out~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vert_sync_out~reg0_q\);

-- Location: LCCOMB_X37_Y23_N28
\process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = (((!h_count(8) & !h_count(7))) # (!v_count(9))) # (!h_count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => h_count(9),
	datab => h_count(8),
	datac => v_count(9),
	datad => h_count(7),
	combout => \process_0~12_combout\);

-- Location: LCCOMB_X37_Y23_N16
\v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count~0_combout\ = (\Add1~0_combout\ & ((\process_0~11_combout\) # ((\process_0~8_combout\) # (\process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~11_combout\,
	datab => \Add1~0_combout\,
	datac => \process_0~8_combout\,
	datad => \process_0~12_combout\,
	combout => \v_count~0_combout\);

-- Location: FF_X37_Y23_N17
\v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \v_count~0_combout\,
	ena => \v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(0));

-- Location: LCCOMB_X39_Y23_N0
\pixel_row[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_row[0]~reg0feeder_combout\ = v_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => v_count(0),
	combout => \pixel_row[0]~reg0feeder_combout\);

-- Location: LCCOMB_X39_Y23_N14
\LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (!v_count(9) & !\LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => v_count(9),
	datad => \LessThan7~0_combout\,
	combout => \LessThan7~1_combout\);

-- Location: FF_X39_Y23_N1
\pixel_row[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_row[0]~reg0feeder_combout\,
	ena => \LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_row[0]~reg0_q\);

-- Location: LCCOMB_X39_Y23_N30
\pixel_row[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_row[1]~reg0feeder_combout\ = v_count(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => v_count(1),
	combout => \pixel_row[1]~reg0feeder_combout\);

-- Location: FF_X39_Y23_N31
\pixel_row[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_row[1]~reg0feeder_combout\,
	ena => \LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_row[1]~reg0_q\);

-- Location: LCCOMB_X37_Y23_N10
\v_count[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \v_count[2]~8_combout\ = (\v_count[0]~1_combout\ & (\process_0~13_combout\ & (\Add1~4_combout\))) # (!\v_count[0]~1_combout\ & (((v_count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~13_combout\,
	datab => \Add1~4_combout\,
	datac => v_count(2),
	datad => \v_count[0]~1_combout\,
	combout => \v_count[2]~8_combout\);

-- Location: FF_X37_Y23_N11
\v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \v_count[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => v_count(2));

-- Location: LCCOMB_X39_Y23_N16
\pixel_row[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_row[2]~reg0feeder_combout\ = v_count(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => v_count(2),
	combout => \pixel_row[2]~reg0feeder_combout\);

-- Location: FF_X39_Y23_N17
\pixel_row[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_row[2]~reg0feeder_combout\,
	ena => \LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_row[2]~reg0_q\);

-- Location: LCCOMB_X39_Y23_N18
\pixel_row[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_row[3]~reg0feeder_combout\ = v_count(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => v_count(3),
	combout => \pixel_row[3]~reg0feeder_combout\);

-- Location: FF_X39_Y23_N19
\pixel_row[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_row[3]~reg0feeder_combout\,
	ena => \LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_row[3]~reg0_q\);

-- Location: LCCOMB_X39_Y23_N4
\pixel_row[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_row[4]~reg0feeder_combout\ = v_count(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => v_count(4),
	combout => \pixel_row[4]~reg0feeder_combout\);

-- Location: FF_X39_Y23_N5
\pixel_row[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_row[4]~reg0feeder_combout\,
	ena => \LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_row[4]~reg0_q\);

-- Location: LCCOMB_X39_Y23_N22
\pixel_row[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_row[5]~reg0feeder_combout\ = v_count(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => v_count(5),
	combout => \pixel_row[5]~reg0feeder_combout\);

-- Location: FF_X39_Y23_N23
\pixel_row[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_row[5]~reg0feeder_combout\,
	ena => \LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_row[5]~reg0_q\);

-- Location: LCCOMB_X39_Y23_N28
\pixel_row[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_row[6]~reg0feeder_combout\ = v_count(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => v_count(6),
	combout => \pixel_row[6]~reg0feeder_combout\);

-- Location: FF_X39_Y23_N29
\pixel_row[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_row[6]~reg0feeder_combout\,
	ena => \LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_row[6]~reg0_q\);

-- Location: LCCOMB_X39_Y23_N26
\pixel_row[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_row[7]~reg0feeder_combout\ = v_count(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => v_count(7),
	combout => \pixel_row[7]~reg0feeder_combout\);

-- Location: FF_X39_Y23_N27
\pixel_row[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_row[7]~reg0feeder_combout\,
	ena => \LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_row[7]~reg0_q\);

-- Location: LCCOMB_X39_Y23_N24
\pixel_row[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_row[8]~reg0feeder_combout\ = v_count(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => v_count(8),
	combout => \pixel_row[8]~reg0feeder_combout\);

-- Location: FF_X39_Y23_N25
\pixel_row[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_row[8]~reg0feeder_combout\,
	ena => \LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_row[8]~reg0_q\);

-- Location: FF_X35_Y23_N27
\pixel_column[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	asdata => h_count(0),
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_column[0]~reg0_q\);

-- Location: LCCOMB_X35_Y23_N20
\pixel_column[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_column[1]~reg0feeder_combout\ = h_count(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_count(1),
	combout => \pixel_column[1]~reg0feeder_combout\);

-- Location: FF_X35_Y23_N21
\pixel_column[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_column[1]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_column[1]~reg0_q\);

-- Location: LCCOMB_X35_Y23_N10
\pixel_column[2]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_column[2]~reg0feeder_combout\ = h_count(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => h_count(2),
	combout => \pixel_column[2]~reg0feeder_combout\);

-- Location: FF_X35_Y23_N11
\pixel_column[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_column[2]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_column[2]~reg0_q\);

-- Location: LCCOMB_X35_Y23_N8
\pixel_column[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_column[3]~reg0feeder_combout\ = h_count(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_count(3),
	combout => \pixel_column[3]~reg0feeder_combout\);

-- Location: FF_X35_Y23_N9
\pixel_column[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_column[3]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_column[3]~reg0_q\);

-- Location: LCCOMB_X35_Y23_N22
\pixel_column[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_column[4]~reg0feeder_combout\ = h_count(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => h_count(4),
	combout => \pixel_column[4]~reg0feeder_combout\);

-- Location: FF_X35_Y23_N23
\pixel_column[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_column[4]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_column[4]~reg0_q\);

-- Location: LCCOMB_X35_Y23_N4
\pixel_column[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_column[5]~reg0feeder_combout\ = h_count(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_count(5),
	combout => \pixel_column[5]~reg0feeder_combout\);

-- Location: FF_X35_Y23_N5
\pixel_column[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_column[5]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_column[5]~reg0_q\);

-- Location: LCCOMB_X35_Y23_N6
\pixel_column[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_column[6]~reg0feeder_combout\ = h_count(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_count(6),
	combout => \pixel_column[6]~reg0feeder_combout\);

-- Location: FF_X35_Y23_N7
\pixel_column[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_column[6]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_column[6]~reg0_q\);

-- Location: LCCOMB_X35_Y23_N16
\pixel_column[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_column[7]~reg0feeder_combout\ = h_count(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => h_count(7),
	combout => \pixel_column[7]~reg0feeder_combout\);

-- Location: FF_X35_Y23_N17
\pixel_column[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_column[7]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_column[7]~reg0_q\);

-- Location: LCCOMB_X35_Y23_N14
\pixel_column[8]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_column[8]~reg0feeder_combout\ = h_count(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => h_count(8),
	combout => \pixel_column[8]~reg0feeder_combout\);

-- Location: FF_X35_Y23_N15
\pixel_column[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_column[8]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_column[8]~reg0_q\);

-- Location: LCCOMB_X35_Y23_N28
\pixel_column[9]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pixel_column[9]~reg0feeder_combout\ = h_count(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => h_count(9),
	combout => \pixel_column[9]~reg0feeder_combout\);

-- Location: FF_X35_Y23_N29
\pixel_column[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \pixel_column[9]~reg0feeder_combout\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pixel_column[9]~reg0_q\);

ww_red_out <= \red_out~output_o\;

ww_green_out <= \green_out~output_o\;

ww_blue_out <= \blue_out~output_o\;

ww_horiz_sync_out <= \horiz_sync_out~output_o\;

ww_vert_sync_out <= \vert_sync_out~output_o\;

ww_pixel_row(0) <= \pixel_row[0]~output_o\;

ww_pixel_row(1) <= \pixel_row[1]~output_o\;

ww_pixel_row(2) <= \pixel_row[2]~output_o\;

ww_pixel_row(3) <= \pixel_row[3]~output_o\;

ww_pixel_row(4) <= \pixel_row[4]~output_o\;

ww_pixel_row(5) <= \pixel_row[5]~output_o\;

ww_pixel_row(6) <= \pixel_row[6]~output_o\;

ww_pixel_row(7) <= \pixel_row[7]~output_o\;

ww_pixel_row(8) <= \pixel_row[8]~output_o\;

ww_pixel_row(9) <= \pixel_row[9]~output_o\;

ww_pixel_column(0) <= \pixel_column[0]~output_o\;

ww_pixel_column(1) <= \pixel_column[1]~output_o\;

ww_pixel_column(2) <= \pixel_column[2]~output_o\;

ww_pixel_column(3) <= \pixel_column[3]~output_o\;

ww_pixel_column(4) <= \pixel_column[4]~output_o\;

ww_pixel_column(5) <= \pixel_column[5]~output_o\;

ww_pixel_column(6) <= \pixel_column[6]~output_o\;

ww_pixel_column(7) <= \pixel_column[7]~output_o\;

ww_pixel_column(8) <= \pixel_column[8]~output_o\;

ww_pixel_column(9) <= \pixel_column[9]~output_o\;
END structure;


