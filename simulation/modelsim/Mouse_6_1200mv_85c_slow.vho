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

-- DATE "05/24/2022 11:54:35"

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

ENTITY 	MOUSE IS
    PORT (
	clock_25Mhz : IN std_logic;
	reset : IN std_logic;
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	left_button : OUT std_logic;
	right_button : OUT std_logic;
	mouse_cursor_row : OUT std_logic_vector(9 DOWNTO 0);
	mouse_cursor_column : OUT std_logic_vector(9 DOWNTO 0)
	);
END MOUSE;

-- Design Ports Information
-- left_button	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- right_button	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_row[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_row[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_row[2]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_row[3]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_row[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_row[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_row[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_row[7]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_row[8]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_row[9]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_column[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_column[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_column[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_column[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_column[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_column[5]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_column[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_column[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_column[8]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_cursor_column[9]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_25Mhz	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MOUSE IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_left_button : std_logic;
SIGNAL ww_right_button : std_logic;
SIGNAL ww_mouse_cursor_row : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_mouse_cursor_column : std_logic_vector(9 DOWNTO 0);
SIGNAL \clock_25Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \new_cursor_row[1]~14_combout\ : std_logic;
SIGNAL \new_cursor_row[5]~22_combout\ : std_logic;
SIGNAL \new_cursor_column[0]~10_combout\ : std_logic;
SIGNAL \new_cursor_column[1]~12_combout\ : std_logic;
SIGNAL \inhibit_wait_count[2]~13_combout\ : std_logic;
SIGNAL \inhibit_wait_count[4]~17_combout\ : std_logic;
SIGNAL \inhibit_wait_count[5]~19_combout\ : std_logic;
SIGNAL \RECV_UART~0_combout\ : std_logic;
SIGNAL \INCNT~2_combout\ : std_logic;
SIGNAL \new_cursor_row[0]~12_combout\ : std_logic;
SIGNAL \inhibit_wait_count[0]~33_combout\ : std_logic;
SIGNAL \clock_25Mhz~input_o\ : std_logic;
SIGNAL \clock_25Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \PACKET_CHAR3[0]~feeder_combout\ : std_logic;
SIGNAL \PACKET_CHAR3[1]~feeder_combout\ : std_logic;
SIGNAL \PACKET_CHAR2[1]~feeder_combout\ : std_logic;
SIGNAL \PACKET_CHAR2[2]~feeder_combout\ : std_logic;
SIGNAL \PACKET_CHAR2[3]~feeder_combout\ : std_logic;
SIGNAL \PACKET_CHAR2[7]~feeder_combout\ : std_logic;
SIGNAL \PACKET_CHAR3[6]~feeder_combout\ : std_logic;
SIGNAL \PACKET_CHAR2[6]~feeder_combout\ : std_logic;
SIGNAL \PACKET_CHAR3[5]~feeder_combout\ : std_logic;
SIGNAL \mouse_data~output_o\ : std_logic;
SIGNAL \mouse_clk~output_o\ : std_logic;
SIGNAL \left_button~output_o\ : std_logic;
SIGNAL \right_button~output_o\ : std_logic;
SIGNAL \mouse_cursor_row[0]~output_o\ : std_logic;
SIGNAL \mouse_cursor_row[1]~output_o\ : std_logic;
SIGNAL \mouse_cursor_row[2]~output_o\ : std_logic;
SIGNAL \mouse_cursor_row[3]~output_o\ : std_logic;
SIGNAL \mouse_cursor_row[4]~output_o\ : std_logic;
SIGNAL \mouse_cursor_row[5]~output_o\ : std_logic;
SIGNAL \mouse_cursor_row[6]~output_o\ : std_logic;
SIGNAL \mouse_cursor_row[7]~output_o\ : std_logic;
SIGNAL \mouse_cursor_row[8]~output_o\ : std_logic;
SIGNAL \mouse_cursor_row[9]~output_o\ : std_logic;
SIGNAL \mouse_cursor_column[0]~output_o\ : std_logic;
SIGNAL \mouse_cursor_column[1]~output_o\ : std_logic;
SIGNAL \mouse_cursor_column[2]~output_o\ : std_logic;
SIGNAL \mouse_cursor_column[3]~output_o\ : std_logic;
SIGNAL \mouse_cursor_column[4]~output_o\ : std_logic;
SIGNAL \mouse_cursor_column[5]~output_o\ : std_logic;
SIGNAL \mouse_cursor_column[6]~output_o\ : std_logic;
SIGNAL \mouse_cursor_column[7]~output_o\ : std_logic;
SIGNAL \mouse_cursor_column[8]~output_o\ : std_logic;
SIGNAL \mouse_cursor_column[9]~output_o\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \filter[1]~feeder_combout\ : std_logic;
SIGNAL \filter[2]~feeder_combout\ : std_logic;
SIGNAL \filter[3]~feeder_combout\ : std_logic;
SIGNAL \filter[4]~feeder_combout\ : std_logic;
SIGNAL \filter[5]~feeder_combout\ : std_logic;
SIGNAL \filter[6]~feeder_combout\ : std_logic;
SIGNAL \MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \MOUSE_CLK_FILTER~feeder_combout\ : std_logic;
SIGNAL \MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inhibit_wait_count[1]~11_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inhibit_wait_count[1]~12\ : std_logic;
SIGNAL \inhibit_wait_count[2]~14\ : std_logic;
SIGNAL \inhibit_wait_count[3]~15_combout\ : std_logic;
SIGNAL \inhibit_wait_count[3]~16\ : std_logic;
SIGNAL \inhibit_wait_count[4]~18\ : std_logic;
SIGNAL \inhibit_wait_count[5]~20\ : std_logic;
SIGNAL \inhibit_wait_count[6]~21_combout\ : std_logic;
SIGNAL \inhibit_wait_count[6]~22\ : std_logic;
SIGNAL \inhibit_wait_count[7]~23_combout\ : std_logic;
SIGNAL \inhibit_wait_count[7]~24\ : std_logic;
SIGNAL \inhibit_wait_count[8]~25_combout\ : std_logic;
SIGNAL \inhibit_wait_count[8]~26\ : std_logic;
SIGNAL \inhibit_wait_count[9]~27_combout\ : std_logic;
SIGNAL \inhibit_wait_count[9]~28\ : std_logic;
SIGNAL \inhibit_wait_count[10]~30\ : std_logic;
SIGNAL \inhibit_wait_count[11]~31_combout\ : std_logic;
SIGNAL \inhibit_wait_count[10]~29_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \OUTCNT~3_combout\ : std_logic;
SIGNAL \send_char~0_combout\ : std_logic;
SIGNAL \send_char~q\ : std_logic;
SIGNAL \output_ready~0_combout\ : std_logic;
SIGNAL \OUTCNT~2_combout\ : std_logic;
SIGNAL \OUTCNT~0_combout\ : std_logic;
SIGNAL \OUTCNT~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \output_ready~feeder_combout\ : std_logic;
SIGNAL \output_ready~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \INCNT~3_combout\ : std_logic;
SIGNAL \INCNT[3]~0_combout\ : std_logic;
SIGNAL \INCNT~4_combout\ : std_logic;
SIGNAL \INCNT~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \READ_CHAR~3_combout\ : std_logic;
SIGNAL \READ_CHAR~q\ : std_logic;
SIGNAL \iready_set~0_combout\ : std_logic;
SIGNAL \iready_set~1_combout\ : std_logic;
SIGNAL \iready_set~2_combout\ : std_logic;
SIGNAL \iready_set~q\ : std_logic;
SIGNAL \mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \send_data~q\ : std_logic;
SIGNAL \MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \SHIFTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \mouse_state.LOAD_COMMAND2~feeder_combout\ : std_logic;
SIGNAL \mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \SHIFTIN[8]~feeder_combout\ : std_logic;
SIGNAL \SHIFTIN[0]~2_combout\ : std_logic;
SIGNAL \SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \SHIFTIN[0]~feeder_combout\ : std_logic;
SIGNAL \PACKET_CHAR1[0]~feeder_combout\ : std_logic;
SIGNAL \PACKET_CHAR1[0]~1_combout\ : std_logic;
SIGNAL \READ_CHAR~2_combout\ : std_logic;
SIGNAL \left_button~0_combout\ : std_logic;
SIGNAL \left_button~reg0_q\ : std_logic;
SIGNAL \right_button~reg0_q\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \PACKET_COUNT[1]~feeder_combout\ : std_logic;
SIGNAL \PACKET_COUNT[1]~8_combout\ : std_logic;
SIGNAL \PACKET_CHAR1[0]~0_combout\ : std_logic;
SIGNAL \PACKET_COUNT[0]~feeder_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \PACKET_CHAR3[4]~feeder_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \PACKET_CHAR3[7]~0_combout\ : std_logic;
SIGNAL \PACKET_CHAR3[3]~feeder_combout\ : std_logic;
SIGNAL \PACKET_CHAR3[2]~feeder_combout\ : std_logic;
SIGNAL \cursor_row~3_combout\ : std_logic;
SIGNAL \cursor_row[0]~2_combout\ : std_logic;
SIGNAL \new_cursor_row[0]~11\ : std_logic;
SIGNAL \new_cursor_row[1]~15\ : std_logic;
SIGNAL \new_cursor_row[2]~17\ : std_logic;
SIGNAL \new_cursor_row[3]~19\ : std_logic;
SIGNAL \new_cursor_row[4]~20_combout\ : std_logic;
SIGNAL \new_cursor_row[0]~13_combout\ : std_logic;
SIGNAL \new_cursor_row[3]~18_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \new_cursor_row[2]~16_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \PACKET_CHAR3[7]~feeder_combout\ : std_logic;
SIGNAL \cursor_row~7_combout\ : std_logic;
SIGNAL \new_cursor_row[4]~21\ : std_logic;
SIGNAL \new_cursor_row[5]~23\ : std_logic;
SIGNAL \new_cursor_row[6]~24_combout\ : std_logic;
SIGNAL \cursor_row~8_combout\ : std_logic;
SIGNAL \new_cursor_row[6]~25\ : std_logic;
SIGNAL \new_cursor_row[7]~26_combout\ : std_logic;
SIGNAL \cursor_row~9_combout\ : std_logic;
SIGNAL \new_cursor_row[7]~27\ : std_logic;
SIGNAL \new_cursor_row[8]~29\ : std_logic;
SIGNAL \new_cursor_row[9]~30_combout\ : std_logic;
SIGNAL \new_cursor_row[8]~28_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \cursor_row~0_combout\ : std_logic;
SIGNAL \cursor_row~10_combout\ : std_logic;
SIGNAL \new_cursor_row[0]~10_combout\ : std_logic;
SIGNAL \RECV_UART~1_combout\ : std_logic;
SIGNAL \RECV_UART~2_combout\ : std_logic;
SIGNAL \cursor_row~1_combout\ : std_logic;
SIGNAL \cursor_row~4_combout\ : std_logic;
SIGNAL \cursor_row~5_combout\ : std_logic;
SIGNAL \cursor_row~6_combout\ : std_logic;
SIGNAL \PACKET_CHAR2[5]~feeder_combout\ : std_logic;
SIGNAL \PACKET_CHAR2[7]~0_combout\ : std_logic;
SIGNAL \PACKET_CHAR2[7]~1_combout\ : std_logic;
SIGNAL \PACKET_CHAR2[4]~feeder_combout\ : std_logic;
SIGNAL \cursor_column~9_combout\ : std_logic;
SIGNAL \cursor_column~8_combout\ : std_logic;
SIGNAL \PACKET_CHAR2[0]~feeder_combout\ : std_logic;
SIGNAL \new_cursor_column[0]~11\ : std_logic;
SIGNAL \new_cursor_column[1]~13\ : std_logic;
SIGNAL \new_cursor_column[2]~15\ : std_logic;
SIGNAL \new_cursor_column[3]~16_combout\ : std_logic;
SIGNAL \cursor_column~10_combout\ : std_logic;
SIGNAL \new_cursor_column[3]~17\ : std_logic;
SIGNAL \new_cursor_column[4]~19\ : std_logic;
SIGNAL \new_cursor_column[5]~21\ : std_logic;
SIGNAL \new_cursor_column[6]~22_combout\ : std_logic;
SIGNAL \cursor_column~17_combout\ : std_logic;
SIGNAL \new_cursor_column[6]~23\ : std_logic;
SIGNAL \new_cursor_column[7]~24_combout\ : std_logic;
SIGNAL \cursor_column~18_combout\ : std_logic;
SIGNAL \new_cursor_column[7]~25\ : std_logic;
SIGNAL \new_cursor_column[8]~26_combout\ : std_logic;
SIGNAL \new_cursor_column[5]~20_combout\ : std_logic;
SIGNAL \new_cursor_column[2]~14_combout\ : std_logic;
SIGNAL \new_cursor_column[4]~18_combout\ : std_logic;
SIGNAL \RECV_UART~3_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \cursor_column[0]~16_combout\ : std_logic;
SIGNAL \cursor_column~15_combout\ : std_logic;
SIGNAL \new_cursor_column[8]~27\ : std_logic;
SIGNAL \new_cursor_column[9]~28_combout\ : std_logic;
SIGNAL \RECV_UART~4_combout\ : std_logic;
SIGNAL \RECV_UART~6_combout\ : std_logic;
SIGNAL \RECV_UART~7_combout\ : std_logic;
SIGNAL \cursor_column~13_combout\ : std_logic;
SIGNAL \cursor_column~14_combout\ : std_logic;
SIGNAL \RECV_UART~5_combout\ : std_logic;
SIGNAL \cursor_column[0]~6_combout\ : std_logic;
SIGNAL \cursor_column~7_combout\ : std_logic;
SIGNAL \cursor_column~11_combout\ : std_logic;
SIGNAL \cursor_column~12_combout\ : std_logic;
SIGNAL new_cursor_row : std_logic_vector(9 DOWNTO 0);
SIGNAL new_cursor_column : std_logic_vector(9 DOWNTO 0);
SIGNAL inhibit_wait_count : std_logic_vector(11 DOWNTO 0);
SIGNAL filter : std_logic_vector(7 DOWNTO 0);
SIGNAL cursor_row : std_logic_vector(9 DOWNTO 0);
SIGNAL cursor_column : std_logic_vector(9 DOWNTO 0);
SIGNAL SHIFTOUT : std_logic_vector(10 DOWNTO 0);
SIGNAL SHIFTIN : std_logic_vector(8 DOWNTO 0);
SIGNAL PACKET_COUNT : std_logic_vector(1 DOWNTO 0);
SIGNAL PACKET_CHAR3 : std_logic_vector(7 DOWNTO 0);
SIGNAL PACKET_CHAR2 : std_logic_vector(7 DOWNTO 0);
SIGNAL PACKET_CHAR1 : std_logic_vector(7 DOWNTO 0);
SIGNAL OUTCNT : std_logic_vector(3 DOWNTO 0);
SIGNAL INCNT : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_send_data~q\ : std_logic;
SIGNAL \ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;

BEGIN

ww_clock_25Mhz <= clock_25Mhz;
ww_reset <= reset;
left_button <= ww_left_button;
right_button <= ww_right_button;
mouse_cursor_row <= ww_mouse_cursor_row;
mouse_cursor_column <= ww_mouse_cursor_column;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_25Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_25Mhz~input_o\);

\MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MOUSE_CLK_FILTER~q\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \MOUSE_CLK_FILTER~clkctrl_outclk\;
\ALT_INV_send_data~q\ <= NOT \send_data~q\;
\ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \mouse_state.INHIBIT_TRANS~q\;

-- Location: FF_X31_Y27_N11
\new_cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_row[1]~14_combout\,
	asdata => \~GND~combout\,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_row(1));

-- Location: FF_X31_Y27_N19
\new_cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_row[5]~22_combout\,
	asdata => VCC,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_row(5));

-- Location: FF_X27_Y28_N11
\new_cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_column[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_column(0));

-- Location: FF_X27_Y28_N13
\new_cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_column[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_column(1));

-- Location: LCCOMB_X31_Y27_N10
\new_cursor_row[1]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_row[1]~14_combout\ = (PACKET_CHAR3(1) & ((cursor_row(1) & (!\new_cursor_row[0]~11\)) # (!cursor_row(1) & ((\new_cursor_row[0]~11\) # (GND))))) # (!PACKET_CHAR3(1) & ((cursor_row(1) & (\new_cursor_row[0]~11\ & VCC)) # (!cursor_row(1) & 
-- (!\new_cursor_row[0]~11\))))
-- \new_cursor_row[1]~15\ = CARRY((PACKET_CHAR3(1) & ((!\new_cursor_row[0]~11\) # (!cursor_row(1)))) # (!PACKET_CHAR3(1) & (!cursor_row(1) & !\new_cursor_row[0]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_CHAR3(1),
	datab => cursor_row(1),
	datad => VCC,
	cin => \new_cursor_row[0]~11\,
	combout => \new_cursor_row[1]~14_combout\,
	cout => \new_cursor_row[1]~15\);

-- Location: LCCOMB_X31_Y27_N18
\new_cursor_row[5]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_row[5]~22_combout\ = (PACKET_CHAR3(5) & ((cursor_row(5) & (!\new_cursor_row[4]~21\)) # (!cursor_row(5) & ((\new_cursor_row[4]~21\) # (GND))))) # (!PACKET_CHAR3(5) & ((cursor_row(5) & (\new_cursor_row[4]~21\ & VCC)) # (!cursor_row(5) & 
-- (!\new_cursor_row[4]~21\))))
-- \new_cursor_row[5]~23\ = CARRY((PACKET_CHAR3(5) & ((!\new_cursor_row[4]~21\) # (!cursor_row(5)))) # (!PACKET_CHAR3(5) & (!cursor_row(5) & !\new_cursor_row[4]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_CHAR3(5),
	datab => cursor_row(5),
	datad => VCC,
	cin => \new_cursor_row[4]~21\,
	combout => \new_cursor_row[5]~22_combout\,
	cout => \new_cursor_row[5]~23\);

-- Location: LCCOMB_X27_Y28_N10
\new_cursor_column[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_column[0]~10_combout\ = (cursor_column(0) & (PACKET_CHAR2(0) $ (VCC))) # (!cursor_column(0) & (PACKET_CHAR2(0) & VCC))
-- \new_cursor_column[0]~11\ = CARRY((cursor_column(0) & PACKET_CHAR2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cursor_column(0),
	datab => PACKET_CHAR2(0),
	datad => VCC,
	combout => \new_cursor_column[0]~10_combout\,
	cout => \new_cursor_column[0]~11\);

-- Location: LCCOMB_X27_Y28_N12
\new_cursor_column[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_column[1]~12_combout\ = (PACKET_CHAR2(1) & ((cursor_column(1) & (\new_cursor_column[0]~11\ & VCC)) # (!cursor_column(1) & (!\new_cursor_column[0]~11\)))) # (!PACKET_CHAR2(1) & ((cursor_column(1) & (!\new_cursor_column[0]~11\)) # 
-- (!cursor_column(1) & ((\new_cursor_column[0]~11\) # (GND)))))
-- \new_cursor_column[1]~13\ = CARRY((PACKET_CHAR2(1) & (!cursor_column(1) & !\new_cursor_column[0]~11\)) # (!PACKET_CHAR2(1) & ((!\new_cursor_column[0]~11\) # (!cursor_column(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_CHAR2(1),
	datab => cursor_column(1),
	datad => VCC,
	cin => \new_cursor_column[0]~11\,
	combout => \new_cursor_column[1]~12_combout\,
	cout => \new_cursor_column[1]~13\);

-- Location: FF_X29_Y28_N13
\inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \inhibit_wait_count[5]~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inhibit_wait_count(5));

-- Location: FF_X29_Y28_N11
\inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \inhibit_wait_count[4]~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inhibit_wait_count(4));

-- Location: FF_X29_Y28_N7
\inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \inhibit_wait_count[2]~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inhibit_wait_count(2));

-- Location: LCCOMB_X29_Y28_N6
\inhibit_wait_count[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inhibit_wait_count[2]~13_combout\ = (inhibit_wait_count(2) & (!\inhibit_wait_count[1]~12\)) # (!inhibit_wait_count(2) & ((\inhibit_wait_count[1]~12\) # (GND)))
-- \inhibit_wait_count[2]~14\ = CARRY((!\inhibit_wait_count[1]~12\) # (!inhibit_wait_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inhibit_wait_count(2),
	datad => VCC,
	cin => \inhibit_wait_count[1]~12\,
	combout => \inhibit_wait_count[2]~13_combout\,
	cout => \inhibit_wait_count[2]~14\);

-- Location: LCCOMB_X29_Y28_N10
\inhibit_wait_count[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inhibit_wait_count[4]~17_combout\ = (inhibit_wait_count(4) & (!\inhibit_wait_count[3]~16\)) # (!inhibit_wait_count(4) & ((\inhibit_wait_count[3]~16\) # (GND)))
-- \inhibit_wait_count[4]~18\ = CARRY((!\inhibit_wait_count[3]~16\) # (!inhibit_wait_count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inhibit_wait_count(4),
	datad => VCC,
	cin => \inhibit_wait_count[3]~16\,
	combout => \inhibit_wait_count[4]~17_combout\,
	cout => \inhibit_wait_count[4]~18\);

-- Location: LCCOMB_X29_Y28_N12
\inhibit_wait_count[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inhibit_wait_count[5]~19_combout\ = (inhibit_wait_count(5) & (\inhibit_wait_count[4]~18\ $ (GND))) # (!inhibit_wait_count(5) & (!\inhibit_wait_count[4]~18\ & VCC))
-- \inhibit_wait_count[5]~20\ = CARRY((inhibit_wait_count(5) & !\inhibit_wait_count[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inhibit_wait_count(5),
	datad => VCC,
	cin => \inhibit_wait_count[4]~18\,
	combout => \inhibit_wait_count[5]~19_combout\,
	cout => \inhibit_wait_count[5]~20\);

-- Location: FF_X28_Y27_N31
\INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \INCNT~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \INCNT[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INCNT(1));

-- Location: LCCOMB_X31_Y27_N6
\RECV_UART~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RECV_UART~0_combout\ = (!new_cursor_row(6) & (!new_cursor_row(7) & !new_cursor_row(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => new_cursor_row(6),
	datac => new_cursor_row(7),
	datad => new_cursor_row(5),
	combout => \RECV_UART~0_combout\);

-- Location: LCCOMB_X28_Y27_N30
\INCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INCNT~2_combout\ = (!INCNT(3) & (INCNT(1) $ (INCNT(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => INCNT(3),
	datac => INCNT(1),
	datad => INCNT(0),
	combout => \INCNT~2_combout\);

-- Location: FF_X26_Y27_N17
\PACKET_CHAR3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR3[0]~feeder_combout\,
	ena => \PACKET_CHAR3[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR3(0));

-- Location: LCCOMB_X29_Y27_N4
\new_cursor_row[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_row[0]~12_combout\ = (!\reset~input_o\ & \READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \READ_CHAR~q\,
	combout => \new_cursor_row[0]~12_combout\);

-- Location: FF_X26_Y27_N11
\PACKET_CHAR3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR3[1]~feeder_combout\,
	ena => \PACKET_CHAR3[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR3(1));

-- Location: FF_X26_Y27_N13
\PACKET_CHAR3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR3[6]~feeder_combout\,
	ena => \PACKET_CHAR3[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR3(6));

-- Location: FF_X26_Y27_N15
\PACKET_CHAR3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR3[5]~feeder_combout\,
	ena => \PACKET_CHAR3[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR3(5));

-- Location: FF_X26_Y27_N31
\PACKET_CHAR2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR2[7]~feeder_combout\,
	ena => \PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR2(7));

-- Location: FF_X26_Y27_N25
\PACKET_CHAR2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR2[6]~feeder_combout\,
	ena => \PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR2(6));

-- Location: FF_X26_Y27_N19
\PACKET_CHAR2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR2[3]~feeder_combout\,
	ena => \PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR2(3));

-- Location: FF_X26_Y27_N29
\PACKET_CHAR2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR2[2]~feeder_combout\,
	ena => \PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR2(2));

-- Location: FF_X26_Y27_N3
\PACKET_CHAR2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR2[1]~feeder_combout\,
	ena => \PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR2(1));

-- Location: FF_X29_Y28_N27
\inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \inhibit_wait_count[0]~33_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inhibit_wait_count(0));

-- Location: LCCOMB_X29_Y28_N26
\inhibit_wait_count[0]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inhibit_wait_count[0]~33_combout\ = inhibit_wait_count(0) $ (!\mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => inhibit_wait_count(0),
	datad => \mouse_state.INHIBIT_TRANS~q\,
	combout => \inhibit_wait_count[0]~33_combout\);

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

-- Location: LCCOMB_X26_Y27_N16
\PACKET_CHAR3[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR3[0]~feeder_combout\ = SHIFTIN(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SHIFTIN(0),
	combout => \PACKET_CHAR3[0]~feeder_combout\);

-- Location: LCCOMB_X26_Y27_N10
\PACKET_CHAR3[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR3[1]~feeder_combout\ = SHIFTIN(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(1),
	combout => \PACKET_CHAR3[1]~feeder_combout\);

-- Location: LCCOMB_X26_Y27_N2
\PACKET_CHAR2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR2[1]~feeder_combout\ = SHIFTIN(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(1),
	combout => \PACKET_CHAR2[1]~feeder_combout\);

-- Location: LCCOMB_X26_Y27_N28
\PACKET_CHAR2[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR2[2]~feeder_combout\ = SHIFTIN(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SHIFTIN(2),
	combout => \PACKET_CHAR2[2]~feeder_combout\);

-- Location: LCCOMB_X26_Y27_N18
\PACKET_CHAR2[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR2[3]~feeder_combout\ = SHIFTIN(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(3),
	combout => \PACKET_CHAR2[3]~feeder_combout\);

-- Location: LCCOMB_X26_Y27_N30
\PACKET_CHAR2[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR2[7]~feeder_combout\ = SHIFTIN(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(7),
	combout => \PACKET_CHAR2[7]~feeder_combout\);

-- Location: LCCOMB_X26_Y27_N12
\PACKET_CHAR3[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR3[6]~feeder_combout\ = SHIFTIN(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(6),
	combout => \PACKET_CHAR3[6]~feeder_combout\);

-- Location: LCCOMB_X26_Y27_N24
\PACKET_CHAR2[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR2[6]~feeder_combout\ = SHIFTIN(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(6),
	combout => \PACKET_CHAR2[6]~feeder_combout\);

-- Location: LCCOMB_X26_Y27_N14
\PACKET_CHAR3[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR3[5]~feeder_combout\ = SHIFTIN(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(5),
	combout => \PACKET_CHAR3[5]~feeder_combout\);

-- Location: IOOBUF_X28_Y29_N9
\mouse_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MOUSE_DATA_BUF~q\,
	oe => \mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => \mouse_data~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\mouse_clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mouse_state.INHIBIT_TRANS~q\,
	oe => \WideOr4~combout\,
	devoe => ww_devoe,
	o => \mouse_clk~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\left_button~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \left_button~reg0_q\,
	devoe => ww_devoe,
	o => \left_button~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\right_button~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \right_button~reg0_q\,
	devoe => ww_devoe,
	o => \right_button~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\mouse_cursor_row[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_row(0),
	devoe => ww_devoe,
	o => \mouse_cursor_row[0]~output_o\);

-- Location: IOOBUF_X35_Y29_N30
\mouse_cursor_row[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_row(1),
	devoe => ww_devoe,
	o => \mouse_cursor_row[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\mouse_cursor_row[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_row(2),
	devoe => ww_devoe,
	o => \mouse_cursor_row[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\mouse_cursor_row[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_row(3),
	devoe => ww_devoe,
	o => \mouse_cursor_row[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\mouse_cursor_row[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_row(4),
	devoe => ww_devoe,
	o => \mouse_cursor_row[4]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\mouse_cursor_row[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_row(5),
	devoe => ww_devoe,
	o => \mouse_cursor_row[5]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\mouse_cursor_row[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_row(6),
	devoe => ww_devoe,
	o => \mouse_cursor_row[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\mouse_cursor_row[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_row(7),
	devoe => ww_devoe,
	o => \mouse_cursor_row[7]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\mouse_cursor_row[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_row(8),
	devoe => ww_devoe,
	o => \mouse_cursor_row[8]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\mouse_cursor_row[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mouse_cursor_row[9]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\mouse_cursor_column[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_column(0),
	devoe => ww_devoe,
	o => \mouse_cursor_column[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\mouse_cursor_column[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_column(1),
	devoe => ww_devoe,
	o => \mouse_cursor_column[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\mouse_cursor_column[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_column(2),
	devoe => ww_devoe,
	o => \mouse_cursor_column[2]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\mouse_cursor_column[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_column(3),
	devoe => ww_devoe,
	o => \mouse_cursor_column[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\mouse_cursor_column[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_column(4),
	devoe => ww_devoe,
	o => \mouse_cursor_column[4]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\mouse_cursor_column[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_column(5),
	devoe => ww_devoe,
	o => \mouse_cursor_column[5]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\mouse_cursor_column[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_column(6),
	devoe => ww_devoe,
	o => \mouse_cursor_column[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\mouse_cursor_column[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_column(7),
	devoe => ww_devoe,
	o => \mouse_cursor_column[7]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\mouse_cursor_column[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_column(8),
	devoe => ww_devoe,
	o => \mouse_cursor_column[8]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\mouse_cursor_column[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => cursor_column(9),
	devoe => ww_devoe,
	o => \mouse_cursor_column[9]~output_o\);

-- Location: IOIBUF_X28_Y29_N15
\mouse_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_clk,
	o => \mouse_clk~input_o\);

-- Location: FF_X20_Y1_N13
\filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	asdata => \mouse_clk~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filter(0));

-- Location: LCCOMB_X20_Y1_N14
\filter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \filter[1]~feeder_combout\ = filter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => filter(0),
	combout => \filter[1]~feeder_combout\);

-- Location: FF_X20_Y1_N15
\filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \filter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filter(1));

-- Location: LCCOMB_X20_Y1_N20
\filter[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \filter[2]~feeder_combout\ = filter(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => filter(1),
	combout => \filter[2]~feeder_combout\);

-- Location: FF_X20_Y1_N21
\filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \filter[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filter(2));

-- Location: LCCOMB_X20_Y1_N22
\filter[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \filter[3]~feeder_combout\ = filter(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => filter(2),
	combout => \filter[3]~feeder_combout\);

-- Location: FF_X20_Y1_N23
\filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \filter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filter(3));

-- Location: LCCOMB_X20_Y1_N30
\filter[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \filter[4]~feeder_combout\ = filter(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => filter(3),
	combout => \filter[4]~feeder_combout\);

-- Location: FF_X20_Y1_N31
\filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \filter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filter(4));

-- Location: LCCOMB_X20_Y1_N10
\filter[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \filter[5]~feeder_combout\ = filter(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => filter(4),
	combout => \filter[5]~feeder_combout\);

-- Location: FF_X20_Y1_N11
\filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \filter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filter(5));

-- Location: LCCOMB_X20_Y1_N28
\filter[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \filter[6]~feeder_combout\ = filter(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => filter(5),
	combout => \filter[6]~feeder_combout\);

-- Location: FF_X20_Y1_N29
\filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \filter[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filter(6));

-- Location: LCCOMB_X20_Y1_N8
\MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MOUSE_CLK_FILTER~2_combout\ = (filter(0) & ((\MOUSE_CLK_FILTER~q\) # ((filter(1) & filter(6))))) # (!filter(0) & (\MOUSE_CLK_FILTER~q\ & ((filter(1)) # (filter(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => filter(0),
	datab => \MOUSE_CLK_FILTER~q\,
	datac => filter(1),
	datad => filter(6),
	combout => \MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X20_Y1_N4
\MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MOUSE_CLK_FILTER~1_combout\ = (filter(5) & ((\MOUSE_CLK_FILTER~q\) # ((filter(3) & filter(2))))) # (!filter(5) & (\MOUSE_CLK_FILTER~q\ & ((filter(3)) # (filter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => filter(5),
	datab => \MOUSE_CLK_FILTER~q\,
	datac => filter(3),
	datad => filter(2),
	combout => \MOUSE_CLK_FILTER~1_combout\);

-- Location: FF_X20_Y1_N25
\filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	asdata => filter(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => filter(7));

-- Location: LCCOMB_X20_Y1_N24
\MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MOUSE_CLK_FILTER~0_combout\ = (filter(4) & ((filter(7)) # (!filter(2)))) # (!filter(4) & (filter(7) & !filter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => filter(4),
	datac => filter(7),
	datad => filter(2),
	combout => \MOUSE_CLK_FILTER~0_combout\);

-- Location: LCCOMB_X20_Y1_N16
\MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MOUSE_CLK_FILTER~3_combout\ = (\MOUSE_CLK_FILTER~q\ & ((\MOUSE_CLK_FILTER~2_combout\) # ((\MOUSE_CLK_FILTER~1_combout\) # (\MOUSE_CLK_FILTER~0_combout\)))) # (!\MOUSE_CLK_FILTER~q\ & (\MOUSE_CLK_FILTER~2_combout\ & (\MOUSE_CLK_FILTER~1_combout\ & 
-- \MOUSE_CLK_FILTER~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MOUSE_CLK_FILTER~q\,
	datab => \MOUSE_CLK_FILTER~2_combout\,
	datac => \MOUSE_CLK_FILTER~1_combout\,
	datad => \MOUSE_CLK_FILTER~0_combout\,
	combout => \MOUSE_CLK_FILTER~3_combout\);

-- Location: LCCOMB_X20_Y1_N26
\MOUSE_CLK_FILTER~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MOUSE_CLK_FILTER~feeder_combout\ = \MOUSE_CLK_FILTER~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MOUSE_CLK_FILTER~3_combout\,
	combout => \MOUSE_CLK_FILTER~feeder_combout\);

-- Location: FF_X20_Y1_N27
MOUSE_CLK_FILTER : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \MOUSE_CLK_FILTER~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G17
\MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y27_N26
\SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \SHIFTOUT[9]~feeder_combout\);

-- Location: LCCOMB_X29_Y28_N4
\inhibit_wait_count[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inhibit_wait_count[1]~11_combout\ = (inhibit_wait_count(0) & (inhibit_wait_count(1) $ (VCC))) # (!inhibit_wait_count(0) & (inhibit_wait_count(1) & VCC))
-- \inhibit_wait_count[1]~12\ = CARRY((inhibit_wait_count(0) & inhibit_wait_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inhibit_wait_count(0),
	datab => inhibit_wait_count(1),
	datad => VCC,
	combout => \inhibit_wait_count[1]~11_combout\,
	cout => \inhibit_wait_count[1]~12\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y28_N28
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\mouse_state.INHIBIT_TRANS~q\) # ((inhibit_wait_count(10) & inhibit_wait_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => inhibit_wait_count(10),
	datac => \mouse_state.INHIBIT_TRANS~q\,
	datad => inhibit_wait_count(11),
	combout => \Selector0~0_combout\);

-- Location: FF_X29_Y28_N29
\mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse_state.INHIBIT_TRANS~q\);

-- Location: FF_X29_Y28_N5
\inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \inhibit_wait_count[1]~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inhibit_wait_count(1));

-- Location: LCCOMB_X29_Y28_N8
\inhibit_wait_count[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inhibit_wait_count[3]~15_combout\ = (inhibit_wait_count(3) & (\inhibit_wait_count[2]~14\ $ (GND))) # (!inhibit_wait_count(3) & (!\inhibit_wait_count[2]~14\ & VCC))
-- \inhibit_wait_count[3]~16\ = CARRY((inhibit_wait_count(3) & !\inhibit_wait_count[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => inhibit_wait_count(3),
	datad => VCC,
	cin => \inhibit_wait_count[2]~14\,
	combout => \inhibit_wait_count[3]~15_combout\,
	cout => \inhibit_wait_count[3]~16\);

-- Location: FF_X29_Y28_N9
\inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \inhibit_wait_count[3]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inhibit_wait_count(3));

-- Location: LCCOMB_X29_Y28_N14
\inhibit_wait_count[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inhibit_wait_count[6]~21_combout\ = (inhibit_wait_count(6) & (!\inhibit_wait_count[5]~20\)) # (!inhibit_wait_count(6) & ((\inhibit_wait_count[5]~20\) # (GND)))
-- \inhibit_wait_count[6]~22\ = CARRY((!\inhibit_wait_count[5]~20\) # (!inhibit_wait_count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => inhibit_wait_count(6),
	datad => VCC,
	cin => \inhibit_wait_count[5]~20\,
	combout => \inhibit_wait_count[6]~21_combout\,
	cout => \inhibit_wait_count[6]~22\);

-- Location: FF_X29_Y28_N15
\inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \inhibit_wait_count[6]~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inhibit_wait_count(6));

-- Location: LCCOMB_X29_Y28_N16
\inhibit_wait_count[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inhibit_wait_count[7]~23_combout\ = (inhibit_wait_count(7) & (\inhibit_wait_count[6]~22\ $ (GND))) # (!inhibit_wait_count(7) & (!\inhibit_wait_count[6]~22\ & VCC))
-- \inhibit_wait_count[7]~24\ = CARRY((inhibit_wait_count(7) & !\inhibit_wait_count[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => inhibit_wait_count(7),
	datad => VCC,
	cin => \inhibit_wait_count[6]~22\,
	combout => \inhibit_wait_count[7]~23_combout\,
	cout => \inhibit_wait_count[7]~24\);

-- Location: FF_X29_Y28_N17
\inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \inhibit_wait_count[7]~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inhibit_wait_count(7));

-- Location: LCCOMB_X29_Y28_N18
\inhibit_wait_count[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inhibit_wait_count[8]~25_combout\ = (inhibit_wait_count(8) & (!\inhibit_wait_count[7]~24\)) # (!inhibit_wait_count(8) & ((\inhibit_wait_count[7]~24\) # (GND)))
-- \inhibit_wait_count[8]~26\ = CARRY((!\inhibit_wait_count[7]~24\) # (!inhibit_wait_count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => inhibit_wait_count(8),
	datad => VCC,
	cin => \inhibit_wait_count[7]~24\,
	combout => \inhibit_wait_count[8]~25_combout\,
	cout => \inhibit_wait_count[8]~26\);

-- Location: FF_X29_Y28_N19
\inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \inhibit_wait_count[8]~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inhibit_wait_count(8));

-- Location: LCCOMB_X29_Y28_N20
\inhibit_wait_count[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inhibit_wait_count[9]~27_combout\ = (inhibit_wait_count(9) & (\inhibit_wait_count[8]~26\ $ (GND))) # (!inhibit_wait_count(9) & (!\inhibit_wait_count[8]~26\ & VCC))
-- \inhibit_wait_count[9]~28\ = CARRY((inhibit_wait_count(9) & !\inhibit_wait_count[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => inhibit_wait_count(9),
	datad => VCC,
	cin => \inhibit_wait_count[8]~26\,
	combout => \inhibit_wait_count[9]~27_combout\,
	cout => \inhibit_wait_count[9]~28\);

-- Location: FF_X29_Y28_N21
\inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \inhibit_wait_count[9]~27_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inhibit_wait_count(9));

-- Location: LCCOMB_X29_Y28_N22
\inhibit_wait_count[10]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inhibit_wait_count[10]~29_combout\ = (inhibit_wait_count(10) & (!\inhibit_wait_count[9]~28\)) # (!inhibit_wait_count(10) & ((\inhibit_wait_count[9]~28\) # (GND)))
-- \inhibit_wait_count[10]~30\ = CARRY((!\inhibit_wait_count[9]~28\) # (!inhibit_wait_count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => inhibit_wait_count(10),
	datad => VCC,
	cin => \inhibit_wait_count[9]~28\,
	combout => \inhibit_wait_count[10]~29_combout\,
	cout => \inhibit_wait_count[10]~30\);

-- Location: LCCOMB_X29_Y28_N24
\inhibit_wait_count[11]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inhibit_wait_count[11]~31_combout\ = \inhibit_wait_count[10]~30\ $ (!inhibit_wait_count(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => inhibit_wait_count(11),
	cin => \inhibit_wait_count[10]~30\,
	combout => \inhibit_wait_count[11]~31_combout\);

-- Location: FF_X29_Y28_N25
\inhibit_wait_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \inhibit_wait_count[11]~31_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inhibit_wait_count(11));

-- Location: FF_X29_Y28_N23
\inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \inhibit_wait_count[10]~29_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => inhibit_wait_count(10));

-- Location: LCCOMB_X29_Y28_N30
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (inhibit_wait_count(11) & (inhibit_wait_count(10) & !\mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => inhibit_wait_count(11),
	datac => inhibit_wait_count(10),
	datad => \mouse_state.INHIBIT_TRANS~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X29_Y28_N31
\mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse_state.LOAD_COMMAND~q\);

-- Location: LCCOMB_X30_Y27_N24
\OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTCNT~3_combout\ = (!OUTCNT(0) & (((!OUTCNT(2) & !OUTCNT(1))) # (!OUTCNT(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OUTCNT(2),
	datab => OUTCNT(1),
	datac => OUTCNT(0),
	datad => OUTCNT(3),
	combout => \OUTCNT~3_combout\);

-- Location: LCCOMB_X28_Y27_N14
\send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \send_char~0_combout\ = (\send_char~q\) # ((\mouse_state.WAIT_OUTPUT_READY~q\ & \LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \send_char~q\,
	datad => \LessThan0~0_combout\,
	combout => \send_char~0_combout\);

-- Location: FF_X28_Y27_N15
send_char : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \send_char~0_combout\,
	clrn => \ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_char~q\);

-- Location: LCCOMB_X30_Y27_N10
\output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_ready~0_combout\ = (\mouse_state.WAIT_OUTPUT_READY~q\ & !\send_char~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \send_char~q\,
	combout => \output_ready~0_combout\);

-- Location: FF_X30_Y27_N25
\OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \OUTCNT~3_combout\,
	clrn => \ALT_INV_send_data~q\,
	ena => \output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OUTCNT(0));

-- Location: LCCOMB_X30_Y27_N18
\OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTCNT~2_combout\ = (OUTCNT(3) & (!OUTCNT(2) & (!OUTCNT(1) & OUTCNT(0)))) # (!OUTCNT(3) & ((OUTCNT(1) $ (OUTCNT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OUTCNT(2),
	datab => OUTCNT(3),
	datac => OUTCNT(1),
	datad => OUTCNT(0),
	combout => \OUTCNT~2_combout\);

-- Location: FF_X30_Y27_N19
\OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \OUTCNT~2_combout\,
	clrn => \ALT_INV_send_data~q\,
	ena => \output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OUTCNT(1));

-- Location: LCCOMB_X30_Y27_N6
\OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTCNT~0_combout\ = (OUTCNT(2) & (OUTCNT(1) & (!OUTCNT(3) & OUTCNT(0)))) # (!OUTCNT(2) & (!OUTCNT(1) & (OUTCNT(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OUTCNT(2),
	datab => OUTCNT(1),
	datac => OUTCNT(3),
	datad => OUTCNT(0),
	combout => \OUTCNT~0_combout\);

-- Location: FF_X30_Y27_N7
\OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \OUTCNT~0_combout\,
	clrn => \ALT_INV_send_data~q\,
	ena => \output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OUTCNT(3));

-- Location: LCCOMB_X30_Y27_N28
\OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUTCNT~1_combout\ = (!OUTCNT(3) & (OUTCNT(2) $ (((OUTCNT(1) & OUTCNT(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OUTCNT(1),
	datab => OUTCNT(3),
	datac => OUTCNT(2),
	datad => OUTCNT(0),
	combout => \OUTCNT~1_combout\);

-- Location: FF_X30_Y27_N29
\OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \OUTCNT~1_combout\,
	clrn => \ALT_INV_send_data~q\,
	ena => \output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => OUTCNT(2));

-- Location: LCCOMB_X30_Y27_N30
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (OUTCNT(3) & ((OUTCNT(2)) # (OUTCNT(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OUTCNT(3),
	datab => OUTCNT(2),
	datad => OUTCNT(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y27_N16
\output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \output_ready~feeder_combout\ = \LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~0_combout\,
	combout => \output_ready~feeder_combout\);

-- Location: FF_X30_Y27_N17
output_ready : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \output_ready~feeder_combout\,
	clrn => \ALT_INV_send_data~q\,
	ena => \output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_ready~q\);

-- Location: LCCOMB_X29_Y27_N18
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\mouse_state.LOAD_COMMAND2~q\) # ((\mouse_state.WAIT_OUTPUT_READY~q\ & !\output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_state.LOAD_COMMAND2~q\,
	datac => \mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \output_ready~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X29_Y27_N19
\mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: LCCOMB_X29_Y27_N20
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\iready_set~q\ & (\mouse_state.WAIT_OUTPUT_READY~q\ & ((\output_ready~q\)))) # (!\iready_set~q\ & ((\mouse_state.WAIT_CMD_ACK~q\) # ((\mouse_state.WAIT_OUTPUT_READY~q\ & \output_ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iready_set~q\,
	datab => \mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \mouse_state.WAIT_CMD_ACK~q\,
	datad => \output_ready~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X29_Y27_N21
\mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse_state.WAIT_CMD_ACK~q\);

-- Location: LCCOMB_X28_Y27_N28
\INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INCNT~3_combout\ = (!INCNT(0) & (((!INCNT(1) & !INCNT(2))) # (!INCNT(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => INCNT(1),
	datab => INCNT(2),
	datac => INCNT(0),
	datad => INCNT(3),
	combout => \INCNT~3_combout\);

-- Location: LCCOMB_X29_Y27_N24
\INCNT[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INCNT[3]~0_combout\ = (\READ_CHAR~q\ & !\mouse_state.WAIT_OUTPUT_READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \READ_CHAR~q\,
	datad => \mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \INCNT[3]~0_combout\);

-- Location: FF_X28_Y27_N29
\INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \INCNT~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \INCNT[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INCNT(0));

-- Location: LCCOMB_X28_Y27_N26
\INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INCNT~4_combout\ = (INCNT(1) & (INCNT(2) & (!INCNT(3) & INCNT(0)))) # (!INCNT(1) & (!INCNT(2) & (INCNT(3) & !INCNT(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => INCNT(1),
	datab => INCNT(2),
	datac => INCNT(3),
	datad => INCNT(0),
	combout => \INCNT~4_combout\);

-- Location: FF_X28_Y27_N27
\INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \INCNT~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \INCNT[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INCNT(3));

-- Location: LCCOMB_X28_Y27_N20
\INCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \INCNT~1_combout\ = (!INCNT(3) & (INCNT(2) $ (((INCNT(1) & INCNT(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => INCNT(1),
	datab => INCNT(3),
	datac => INCNT(2),
	datad => INCNT(0),
	combout => \INCNT~1_combout\);

-- Location: FF_X28_Y27_N21
\INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \INCNT~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \INCNT[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => INCNT(2));

-- Location: LCCOMB_X28_Y27_N24
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((!INCNT(1) & (!INCNT(2) & !INCNT(0)))) # (!INCNT(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => INCNT(1),
	datab => INCNT(2),
	datac => INCNT(3),
	datad => INCNT(0),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y27_N28
\READ_CHAR~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \READ_CHAR~3_combout\ = (\mouse_state.WAIT_OUTPUT_READY~q\ & (((\READ_CHAR~q\)))) # (!\mouse_state.WAIT_OUTPUT_READY~q\ & ((\READ_CHAR~q\ & ((\LessThan1~0_combout\))) # (!\READ_CHAR~q\ & (!\mouse_data~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datab => \mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \READ_CHAR~q\,
	datad => \LessThan1~0_combout\,
	combout => \READ_CHAR~3_combout\);

-- Location: FF_X29_Y27_N29
READ_CHAR : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \READ_CHAR~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \READ_CHAR~q\);

-- Location: LCCOMB_X29_Y27_N22
\iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \iready_set~0_combout\ = (\mouse_state.WAIT_OUTPUT_READY~q\) # ((\reset~input_o\) # ((\mouse_data~input_o\ & !\READ_CHAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datab => \mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \reset~input_o\,
	datad => \READ_CHAR~q\,
	combout => \iready_set~0_combout\);

-- Location: LCCOMB_X29_Y27_N16
\iready_set~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \iready_set~1_combout\ = (\iready_set~q\ & \iready_set~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iready_set~q\,
	datac => \iready_set~0_combout\,
	combout => \iready_set~1_combout\);

-- Location: LCCOMB_X29_Y27_N10
\iready_set~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \iready_set~2_combout\ = (\iready_set~1_combout\) # ((!\reset~input_o\ & (!\LessThan1~0_combout\ & \INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \iready_set~1_combout\,
	datac => \LessThan1~0_combout\,
	datad => \INCNT[3]~0_combout\,
	combout => \iready_set~2_combout\);

-- Location: FF_X29_Y27_N11
iready_set : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \iready_set~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iready_set~q\);

-- Location: LCCOMB_X29_Y27_N14
\mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse_state.INPUT_PACKETS~0_combout\ = (\mouse_state.INPUT_PACKETS~q\) # ((\mouse_state.WAIT_CMD_ACK~q\ & \iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse_state.WAIT_CMD_ACK~q\,
	datac => \mouse_state.INPUT_PACKETS~q\,
	datad => \iready_set~q\,
	combout => \mouse_state.INPUT_PACKETS~0_combout\);

-- Location: FF_X29_Y27_N15
\mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \mouse_state.INPUT_PACKETS~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse_state.INPUT_PACKETS~q\);

-- Location: LCCOMB_X29_Y27_N0
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\send_data~q\ & ((\mouse_state.INPUT_PACKETS~q\) # (!\mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \send_data~q\,
	datac => \mouse_state.INPUT_PACKETS~q\,
	datad => \mouse_state.INHIBIT_TRANS~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X29_Y27_N12
\Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\mouse_state.LOAD_COMMAND2~q\) # ((\mouse_state.LOAD_COMMAND~q\) # (\Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_state.LOAD_COMMAND2~q\,
	datac => \mouse_state.LOAD_COMMAND~q\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: FF_X29_Y27_N13
send_data : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send_data~q\);

-- Location: LCCOMB_X30_Y27_N4
\MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \MOUSE_DATA_BUF~0_combout\ = (!\LessThan0~0_combout\ & (\mouse_state.WAIT_OUTPUT_READY~q\ & !\send_char~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \send_char~q\,
	combout => \MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X30_Y27_N27
\SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \SHIFTOUT[9]~feeder_combout\,
	clrn => \ALT_INV_send_data~q\,
	ena => \MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTOUT(9));

-- Location: LCCOMB_X30_Y27_N0
\SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTOUT[8]~3_combout\ = !SHIFTOUT(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SHIFTOUT(9),
	combout => \SHIFTOUT[8]~3_combout\);

-- Location: FF_X30_Y27_N1
\SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \SHIFTOUT[8]~3_combout\,
	clrn => \ALT_INV_send_data~q\,
	ena => \MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTOUT(8));

-- Location: LCCOMB_X30_Y27_N8
\SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTOUT[7]~feeder_combout\ = SHIFTOUT(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTOUT(8),
	combout => \SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X30_Y27_N9
\SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \SHIFTOUT[7]~feeder_combout\,
	clrn => \ALT_INV_send_data~q\,
	ena => \MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTOUT(7));

-- Location: FF_X30_Y27_N11
\SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => SHIFTOUT(7),
	clrn => \ALT_INV_send_data~q\,
	sload => VCC,
	ena => \MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTOUT(6));

-- Location: LCCOMB_X30_Y27_N12
\SHIFTOUT[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTOUT[5]~feeder_combout\ = SHIFTOUT(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SHIFTOUT(6),
	combout => \SHIFTOUT[5]~feeder_combout\);

-- Location: FF_X30_Y27_N13
\SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \SHIFTOUT[5]~feeder_combout\,
	clrn => \ALT_INV_send_data~q\,
	ena => \MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTOUT(5));

-- Location: LCCOMB_X30_Y27_N2
\SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTOUT[4]~2_combout\ = !SHIFTOUT(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTOUT(5),
	combout => \SHIFTOUT[4]~2_combout\);

-- Location: FF_X30_Y27_N3
\SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \SHIFTOUT[4]~2_combout\,
	clrn => \ALT_INV_send_data~q\,
	ena => \MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTOUT(4));

-- Location: LCCOMB_X30_Y27_N14
\SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTOUT[3]~1_combout\ = !SHIFTOUT(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTOUT(4),
	combout => \SHIFTOUT[3]~1_combout\);

-- Location: FF_X30_Y27_N15
\SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \SHIFTOUT[3]~1_combout\,
	clrn => \ALT_INV_send_data~q\,
	ena => \MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTOUT(3));

-- Location: LCCOMB_X30_Y27_N22
\SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTOUT[2]~0_combout\ = !SHIFTOUT(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SHIFTOUT(3),
	combout => \SHIFTOUT[2]~0_combout\);

-- Location: FF_X30_Y27_N23
\SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \SHIFTOUT[2]~0_combout\,
	clrn => \ALT_INV_send_data~q\,
	ena => \MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTOUT(2));

-- Location: FF_X30_Y27_N5
\SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => SHIFTOUT(2),
	clrn => \ALT_INV_send_data~q\,
	sload => VCC,
	ena => \MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTOUT(1));

-- Location: FF_X30_Y27_N31
MOUSE_DATA_BUF : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => SHIFTOUT(1),
	clrn => \ALT_INV_send_data~q\,
	sload => VCC,
	ena => \MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X29_Y27_N30
\mouse_state.LOAD_COMMAND2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mouse_state.LOAD_COMMAND2~feeder_combout\ = \mouse_state.LOAD_COMMAND~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mouse_state.LOAD_COMMAND~q\,
	combout => \mouse_state.LOAD_COMMAND2~feeder_combout\);

-- Location: FF_X29_Y27_N31
\mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_25Mhz~inputclkctrl_outclk\,
	d => \mouse_state.LOAD_COMMAND2~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X29_Y27_N26
WideOr4 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\mouse_state.LOAD_COMMAND2~q\) # ((\mouse_state.LOAD_COMMAND~q\) # (!\mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_state.LOAD_COMMAND2~q\,
	datac => \mouse_state.LOAD_COMMAND~q\,
	datad => \mouse_state.INHIBIT_TRANS~q\,
	combout => \WideOr4~combout\);

-- Location: IOIBUF_X28_Y29_N8
\mouse_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_data,
	o => \mouse_data~input_o\);

-- Location: LCCOMB_X24_Y27_N18
\SHIFTIN[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTIN[8]~feeder_combout\ = \mouse_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_data~input_o\,
	combout => \SHIFTIN[8]~feeder_combout\);

-- Location: LCCOMB_X24_Y27_N24
\SHIFTIN[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTIN[0]~2_combout\ = (\READ_CHAR~q\ & (!\reset~input_o\ & (!\mouse_state.WAIT_OUTPUT_READY~q\ & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \READ_CHAR~q\,
	datab => \reset~input_o\,
	datac => \mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \LessThan1~0_combout\,
	combout => \SHIFTIN[0]~2_combout\);

-- Location: FF_X24_Y27_N19
\SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \SHIFTIN[8]~feeder_combout\,
	ena => \SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTIN(8));

-- Location: LCCOMB_X24_Y27_N28
\SHIFTIN[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTIN[7]~feeder_combout\ = SHIFTIN(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(8),
	combout => \SHIFTIN[7]~feeder_combout\);

-- Location: FF_X24_Y27_N29
\SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \SHIFTIN[7]~feeder_combout\,
	ena => \SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTIN(7));

-- Location: LCCOMB_X24_Y27_N14
\SHIFTIN[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTIN[6]~feeder_combout\ = SHIFTIN(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(7),
	combout => \SHIFTIN[6]~feeder_combout\);

-- Location: FF_X24_Y27_N15
\SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \SHIFTIN[6]~feeder_combout\,
	ena => \SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTIN(6));

-- Location: LCCOMB_X24_Y27_N20
\SHIFTIN[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTIN[5]~feeder_combout\ = SHIFTIN(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SHIFTIN(6),
	combout => \SHIFTIN[5]~feeder_combout\);

-- Location: FF_X24_Y27_N21
\SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \SHIFTIN[5]~feeder_combout\,
	ena => \SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTIN(5));

-- Location: LCCOMB_X24_Y27_N22
\SHIFTIN[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTIN[4]~feeder_combout\ = SHIFTIN(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(5),
	combout => \SHIFTIN[4]~feeder_combout\);

-- Location: FF_X24_Y27_N23
\SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \SHIFTIN[4]~feeder_combout\,
	ena => \SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTIN(4));

-- Location: LCCOMB_X24_Y27_N12
\SHIFTIN[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTIN[3]~feeder_combout\ = SHIFTIN(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SHIFTIN(4),
	combout => \SHIFTIN[3]~feeder_combout\);

-- Location: FF_X24_Y27_N13
\SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \SHIFTIN[3]~feeder_combout\,
	ena => \SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTIN(3));

-- Location: LCCOMB_X24_Y27_N26
\SHIFTIN[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTIN[2]~feeder_combout\ = SHIFTIN(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(3),
	combout => \SHIFTIN[2]~feeder_combout\);

-- Location: FF_X24_Y27_N27
\SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \SHIFTIN[2]~feeder_combout\,
	ena => \SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTIN(2));

-- Location: LCCOMB_X24_Y27_N4
\SHIFTIN[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTIN[1]~feeder_combout\ = SHIFTIN(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SHIFTIN(2),
	combout => \SHIFTIN[1]~feeder_combout\);

-- Location: FF_X24_Y27_N5
\SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \SHIFTIN[1]~feeder_combout\,
	ena => \SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTIN(1));

-- Location: LCCOMB_X24_Y27_N8
\SHIFTIN[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SHIFTIN[0]~feeder_combout\ = SHIFTIN(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SHIFTIN(1),
	combout => \SHIFTIN[0]~feeder_combout\);

-- Location: FF_X24_Y27_N9
\SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \SHIFTIN[0]~feeder_combout\,
	ena => \SHIFTIN[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SHIFTIN(0));

-- Location: LCCOMB_X24_Y27_N0
\PACKET_CHAR1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR1[0]~feeder_combout\ = SHIFTIN(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(0),
	combout => \PACKET_CHAR1[0]~feeder_combout\);

-- Location: LCCOMB_X24_Y27_N30
\PACKET_CHAR1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR1[0]~1_combout\ = (!\PACKET_CHAR1[0]~0_combout\ & (!\reset~input_o\ & (!\LessThan1~0_combout\ & \INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PACKET_CHAR1[0]~0_combout\,
	datab => \reset~input_o\,
	datac => \LessThan1~0_combout\,
	datad => \INCNT[3]~0_combout\,
	combout => \PACKET_CHAR1[0]~1_combout\);

-- Location: FF_X24_Y27_N1
\PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR1[0]~feeder_combout\,
	ena => \PACKET_CHAR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR1(0));

-- Location: LCCOMB_X27_Y27_N14
\READ_CHAR~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \READ_CHAR~2_combout\ = (!\mouse_data~input_o\ & !\READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse_data~input_o\,
	datac => \READ_CHAR~q\,
	combout => \READ_CHAR~2_combout\);

-- Location: LCCOMB_X27_Y27_N8
\left_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \left_button~0_combout\ = (!\Equal4~0_combout\ & (!\LessThan1~0_combout\ & (!\READ_CHAR~2_combout\ & \INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \LessThan1~0_combout\,
	datac => \READ_CHAR~2_combout\,
	datad => \INCNT[3]~0_combout\,
	combout => \left_button~0_combout\);

-- Location: FF_X27_Y27_N17
\left_button~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => PACKET_CHAR1(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \left_button~reg0_q\);

-- Location: FF_X24_Y27_N11
\PACKET_CHAR1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => SHIFTIN(1),
	sload => VCC,
	ena => \PACKET_CHAR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR1(1));

-- Location: FF_X27_Y27_N31
\right_button~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => PACKET_CHAR1(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \right_button~reg0_q\);

-- Location: LCCOMB_X27_Y27_N16
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = PACKET_COUNT(0) $ (PACKET_COUNT(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_COUNT(0),
	datad => PACKET_COUNT(1),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X27_Y27_N28
\PACKET_COUNT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_COUNT[1]~feeder_combout\ = \Add3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add3~0_combout\,
	combout => \PACKET_COUNT[1]~feeder_combout\);

-- Location: LCCOMB_X27_Y27_N2
\PACKET_COUNT[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_COUNT[1]~8_combout\ = (\READ_CHAR~q\ & (!\mouse_state.WAIT_OUTPUT_READY~q\ & !\LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \READ_CHAR~q\,
	datac => \mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \LessThan1~0_combout\,
	combout => \PACKET_COUNT[1]~8_combout\);

-- Location: FF_X27_Y27_N29
\PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_COUNT[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \PACKET_COUNT[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_COUNT(1));

-- Location: LCCOMB_X27_Y27_N30
\PACKET_CHAR1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR1[0]~0_combout\ = (PACKET_COUNT(1)) # (!PACKET_COUNT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_COUNT(0),
	datad => PACKET_COUNT(1),
	combout => \PACKET_CHAR1[0]~0_combout\);

-- Location: LCCOMB_X27_Y27_N26
\PACKET_COUNT[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_COUNT[0]~feeder_combout\ = \PACKET_CHAR1[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PACKET_CHAR1[0]~0_combout\,
	combout => \PACKET_COUNT[0]~feeder_combout\);

-- Location: FF_X27_Y27_N27
\PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_COUNT[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \PACKET_COUNT[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_COUNT(0));

-- Location: LCCOMB_X27_Y27_N22
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (PACKET_COUNT(0)) # (PACKET_COUNT(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PACKET_COUNT(0),
	datad => PACKET_COUNT(1),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X26_Y27_N20
\PACKET_CHAR3[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR3[4]~feeder_combout\ = SHIFTIN(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(4),
	combout => \PACKET_CHAR3[4]~feeder_combout\);

-- Location: LCCOMB_X27_Y27_N4
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!PACKET_COUNT(1)) # (!PACKET_COUNT(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => PACKET_COUNT(0),
	datad => PACKET_COUNT(1),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X27_Y27_N20
\PACKET_CHAR3[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR3[7]~0_combout\ = (!\reset~input_o\ & (!\LessThan1~0_combout\ & (!\Equal4~0_combout\ & \INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \LessThan1~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \INCNT[3]~0_combout\,
	combout => \PACKET_CHAR3[7]~0_combout\);

-- Location: FF_X26_Y27_N21
\PACKET_CHAR3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR3[4]~feeder_combout\,
	ena => \PACKET_CHAR3[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR3(4));

-- Location: LCCOMB_X26_Y27_N26
\PACKET_CHAR3[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR3[3]~feeder_combout\ = SHIFTIN(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(3),
	combout => \PACKET_CHAR3[3]~feeder_combout\);

-- Location: FF_X26_Y27_N27
\PACKET_CHAR3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR3[3]~feeder_combout\,
	ena => \PACKET_CHAR3[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR3(3));

-- Location: LCCOMB_X26_Y27_N0
\PACKET_CHAR3[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR3[2]~feeder_combout\ = SHIFTIN(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SHIFTIN(2),
	combout => \PACKET_CHAR3[2]~feeder_combout\);

-- Location: FF_X26_Y27_N1
\PACKET_CHAR3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR3[2]~feeder_combout\,
	ena => \PACKET_CHAR3[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR3(2));

-- Location: LCCOMB_X32_Y27_N8
\cursor_row~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_row~3_combout\ = (new_cursor_row(1) & (\Equal3~0_combout\ & (\cursor_row~0_combout\ & !\RECV_UART~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_row(1),
	datab => \Equal3~0_combout\,
	datac => \cursor_row~0_combout\,
	datad => \RECV_UART~2_combout\,
	combout => \cursor_row~3_combout\);

-- Location: LCCOMB_X28_Y27_N6
\cursor_row[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_row[0]~2_combout\ = (!\reset~input_o\ & (!\LessThan1~0_combout\ & (!PACKET_COUNT(1) & \INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \LessThan1~0_combout\,
	datac => PACKET_COUNT(1),
	datad => \INCNT[3]~0_combout\,
	combout => \cursor_row[0]~2_combout\);

-- Location: FF_X32_Y27_N9
\cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_row~3_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_row(1));

-- Location: LCCOMB_X31_Y27_N8
\new_cursor_row[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_row[0]~10_combout\ = (PACKET_CHAR3(0) & (cursor_row(0) $ (VCC))) # (!PACKET_CHAR3(0) & ((cursor_row(0)) # (GND)))
-- \new_cursor_row[0]~11\ = CARRY((cursor_row(0)) # (!PACKET_CHAR3(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_CHAR3(0),
	datab => cursor_row(0),
	datad => VCC,
	combout => \new_cursor_row[0]~10_combout\,
	cout => \new_cursor_row[0]~11\);

-- Location: LCCOMB_X31_Y27_N12
\new_cursor_row[2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_row[2]~16_combout\ = ((cursor_row(2) $ (PACKET_CHAR3(2) $ (\new_cursor_row[1]~15\)))) # (GND)
-- \new_cursor_row[2]~17\ = CARRY((cursor_row(2) & ((!\new_cursor_row[1]~15\) # (!PACKET_CHAR3(2)))) # (!cursor_row(2) & (!PACKET_CHAR3(2) & !\new_cursor_row[1]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cursor_row(2),
	datab => PACKET_CHAR3(2),
	datad => VCC,
	cin => \new_cursor_row[1]~15\,
	combout => \new_cursor_row[2]~16_combout\,
	cout => \new_cursor_row[2]~17\);

-- Location: LCCOMB_X31_Y27_N14
\new_cursor_row[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_row[3]~18_combout\ = (cursor_row(3) & ((PACKET_CHAR3(3) & (!\new_cursor_row[2]~17\)) # (!PACKET_CHAR3(3) & (\new_cursor_row[2]~17\ & VCC)))) # (!cursor_row(3) & ((PACKET_CHAR3(3) & ((\new_cursor_row[2]~17\) # (GND))) # (!PACKET_CHAR3(3) & 
-- (!\new_cursor_row[2]~17\))))
-- \new_cursor_row[3]~19\ = CARRY((cursor_row(3) & (PACKET_CHAR3(3) & !\new_cursor_row[2]~17\)) # (!cursor_row(3) & ((PACKET_CHAR3(3)) # (!\new_cursor_row[2]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cursor_row(3),
	datab => PACKET_CHAR3(3),
	datad => VCC,
	cin => \new_cursor_row[2]~17\,
	combout => \new_cursor_row[3]~18_combout\,
	cout => \new_cursor_row[3]~19\);

-- Location: LCCOMB_X31_Y27_N16
\new_cursor_row[4]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_row[4]~20_combout\ = ((cursor_row(4) $ (PACKET_CHAR3(4) $ (\new_cursor_row[3]~19\)))) # (GND)
-- \new_cursor_row[4]~21\ = CARRY((cursor_row(4) & ((!\new_cursor_row[3]~19\) # (!PACKET_CHAR3(4)))) # (!cursor_row(4) & (!PACKET_CHAR3(4) & !\new_cursor_row[3]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cursor_row(4),
	datab => PACKET_CHAR3(4),
	datad => VCC,
	cin => \new_cursor_row[3]~19\,
	combout => \new_cursor_row[4]~20_combout\,
	cout => \new_cursor_row[4]~21\);

-- Location: LCCOMB_X28_Y27_N12
\new_cursor_row[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_row[0]~13_combout\ = (\new_cursor_row[0]~12_combout\ & (!\LessThan1~0_combout\ & (!\Add3~0_combout\ & !\mouse_state.WAIT_OUTPUT_READY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \new_cursor_row[0]~12_combout\,
	datab => \LessThan1~0_combout\,
	datac => \Add3~0_combout\,
	datad => \mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \new_cursor_row[0]~13_combout\);

-- Location: FF_X31_Y27_N17
\new_cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_row[4]~20_combout\,
	asdata => VCC,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_row(4));

-- Location: LCCOMB_X27_Y28_N30
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X31_Y27_N15
\new_cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_row[3]~18_combout\,
	asdata => \~GND~combout\,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_row(3));

-- Location: FF_X31_Y27_N13
\new_cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_row[2]~16_combout\,
	asdata => \~GND~combout\,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_row(2));

-- Location: LCCOMB_X31_Y27_N4
\LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!new_cursor_row(1) & (!new_cursor_row(4) & (!new_cursor_row(3) & !new_cursor_row(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_row(1),
	datab => new_cursor_row(4),
	datac => new_cursor_row(3),
	datad => new_cursor_row(2),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X26_Y27_N6
\PACKET_CHAR3[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR3[7]~feeder_combout\ = SHIFTIN(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(7),
	combout => \PACKET_CHAR3[7]~feeder_combout\);

-- Location: FF_X26_Y27_N7
\PACKET_CHAR3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR3[7]~feeder_combout\,
	ena => \PACKET_CHAR3[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR3(7));

-- Location: LCCOMB_X32_Y27_N22
\cursor_row~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_row~7_combout\ = ((!\RECV_UART~2_combout\ & ((new_cursor_row(5)) # (!\cursor_row~0_combout\)))) # (!\Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_row(5),
	datab => \Equal3~0_combout\,
	datac => \cursor_row~0_combout\,
	datad => \RECV_UART~2_combout\,
	combout => \cursor_row~7_combout\);

-- Location: FF_X32_Y27_N23
\cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_row~7_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_row(5));

-- Location: LCCOMB_X31_Y27_N20
\new_cursor_row[6]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_row[6]~24_combout\ = ((PACKET_CHAR3(6) $ (cursor_row(6) $ (\new_cursor_row[5]~23\)))) # (GND)
-- \new_cursor_row[6]~25\ = CARRY((PACKET_CHAR3(6) & (cursor_row(6) & !\new_cursor_row[5]~23\)) # (!PACKET_CHAR3(6) & ((cursor_row(6)) # (!\new_cursor_row[5]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_CHAR3(6),
	datab => cursor_row(6),
	datad => VCC,
	cin => \new_cursor_row[5]~23\,
	combout => \new_cursor_row[6]~24_combout\,
	cout => \new_cursor_row[6]~25\);

-- Location: FF_X31_Y27_N21
\new_cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_row[6]~24_combout\,
	asdata => VCC,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_row(6));

-- Location: LCCOMB_X32_Y27_N28
\cursor_row~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_row~8_combout\ = ((!\RECV_UART~2_combout\ & ((new_cursor_row(6)) # (!\cursor_row~0_combout\)))) # (!\Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RECV_UART~2_combout\,
	datab => new_cursor_row(6),
	datac => \cursor_row~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \cursor_row~8_combout\);

-- Location: FF_X32_Y27_N29
\cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_row~8_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_row(6));

-- Location: LCCOMB_X31_Y27_N22
\new_cursor_row[7]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_row[7]~26_combout\ = (PACKET_CHAR3(7) & ((cursor_row(7) & (!\new_cursor_row[6]~25\)) # (!cursor_row(7) & ((\new_cursor_row[6]~25\) # (GND))))) # (!PACKET_CHAR3(7) & ((cursor_row(7) & (\new_cursor_row[6]~25\ & VCC)) # (!cursor_row(7) & 
-- (!\new_cursor_row[6]~25\))))
-- \new_cursor_row[7]~27\ = CARRY((PACKET_CHAR3(7) & ((!\new_cursor_row[6]~25\) # (!cursor_row(7)))) # (!PACKET_CHAR3(7) & (!cursor_row(7) & !\new_cursor_row[6]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_CHAR3(7),
	datab => cursor_row(7),
	datad => VCC,
	cin => \new_cursor_row[6]~25\,
	combout => \new_cursor_row[7]~26_combout\,
	cout => \new_cursor_row[7]~27\);

-- Location: FF_X31_Y27_N23
\new_cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_row[7]~26_combout\,
	asdata => VCC,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_row(7));

-- Location: LCCOMB_X32_Y27_N30
\cursor_row~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_row~9_combout\ = ((!\RECV_UART~2_combout\ & ((new_cursor_row(7)) # (!\cursor_row~0_combout\)))) # (!\Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RECV_UART~2_combout\,
	datab => new_cursor_row(7),
	datac => \cursor_row~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \cursor_row~9_combout\);

-- Location: FF_X32_Y27_N31
\cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_row~9_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_row(7));

-- Location: LCCOMB_X31_Y27_N24
\new_cursor_row[8]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_row[8]~28_combout\ = ((PACKET_CHAR3(7) $ (cursor_row(8) $ (\new_cursor_row[7]~27\)))) # (GND)
-- \new_cursor_row[8]~29\ = CARRY((PACKET_CHAR3(7) & (cursor_row(8) & !\new_cursor_row[7]~27\)) # (!PACKET_CHAR3(7) & ((cursor_row(8)) # (!\new_cursor_row[7]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_CHAR3(7),
	datab => cursor_row(8),
	datad => VCC,
	cin => \new_cursor_row[7]~27\,
	combout => \new_cursor_row[8]~28_combout\,
	cout => \new_cursor_row[8]~29\);

-- Location: LCCOMB_X31_Y27_N26
\new_cursor_row[9]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_row[9]~30_combout\ = \new_cursor_row[8]~29\ $ (!PACKET_CHAR3(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => PACKET_CHAR3(7),
	cin => \new_cursor_row[8]~29\,
	combout => \new_cursor_row[9]~30_combout\);

-- Location: FF_X31_Y27_N27
\new_cursor_row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_row[9]~30_combout\,
	asdata => \~GND~combout\,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_row(9));

-- Location: FF_X31_Y27_N25
\new_cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_row[8]~28_combout\,
	asdata => \~GND~combout\,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_row(8));

-- Location: LCCOMB_X32_Y27_N10
\LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (new_cursor_row(5) & (new_cursor_row(7) & (new_cursor_row(8) & new_cursor_row(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_row(5),
	datab => new_cursor_row(7),
	datac => new_cursor_row(8),
	datad => new_cursor_row(6),
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X32_Y27_N16
\cursor_row~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_row~0_combout\ = (!new_cursor_row(9) & (((!new_cursor_row(0) & \LessThan5~0_combout\)) # (!\LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_row(0),
	datab => \LessThan5~0_combout\,
	datac => new_cursor_row(9),
	datad => \LessThan5~1_combout\,
	combout => \cursor_row~0_combout\);

-- Location: LCCOMB_X32_Y27_N24
\cursor_row~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_row~10_combout\ = (\Equal3~0_combout\ & (!\RECV_UART~2_combout\ & ((new_cursor_row(8)) # (!\cursor_row~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_row(8),
	datab => \Equal3~0_combout\,
	datac => \cursor_row~0_combout\,
	datad => \RECV_UART~2_combout\,
	combout => \cursor_row~10_combout\);

-- Location: FF_X32_Y27_N25
\cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_row~10_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_row(8));

-- Location: FF_X31_Y27_N9
\new_cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_row[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_row(0));

-- Location: LCCOMB_X31_Y27_N28
\RECV_UART~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RECV_UART~1_combout\ = (\RECV_UART~0_combout\ & ((new_cursor_row(8) & ((new_cursor_row(0)) # (!\LessThan5~0_combout\))) # (!new_cursor_row(8) & ((\LessThan5~0_combout\))))) # (!\RECV_UART~0_combout\ & (new_cursor_row(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RECV_UART~0_combout\,
	datab => new_cursor_row(8),
	datac => new_cursor_row(0),
	datad => \LessThan5~0_combout\,
	combout => \RECV_UART~1_combout\);

-- Location: LCCOMB_X31_Y27_N2
\RECV_UART~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RECV_UART~2_combout\ = (!cursor_row(8) & (!cursor_row(7) & ((new_cursor_row(9)) # (\RECV_UART~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_row(9),
	datab => cursor_row(8),
	datac => cursor_row(7),
	datad => \RECV_UART~1_combout\,
	combout => \RECV_UART~2_combout\);

-- Location: LCCOMB_X31_Y27_N0
\cursor_row~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_row~1_combout\ = (\Equal3~0_combout\ & (!\RECV_UART~2_combout\ & (new_cursor_row(0) & \cursor_row~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \RECV_UART~2_combout\,
	datac => new_cursor_row(0),
	datad => \cursor_row~0_combout\,
	combout => \cursor_row~1_combout\);

-- Location: FF_X31_Y27_N1
\cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_row~1_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_row(0));

-- Location: LCCOMB_X31_Y27_N30
\cursor_row~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_row~4_combout\ = (new_cursor_row(2) & (\cursor_row~0_combout\ & (\Equal3~0_combout\ & !\RECV_UART~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_row(2),
	datab => \cursor_row~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \RECV_UART~2_combout\,
	combout => \cursor_row~4_combout\);

-- Location: FF_X31_Y27_N31
\cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_row~4_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_row(2));

-- Location: LCCOMB_X32_Y27_N6
\cursor_row~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_row~5_combout\ = (new_cursor_row(3) & (\Equal3~0_combout\ & (\cursor_row~0_combout\ & !\RECV_UART~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_row(3),
	datab => \Equal3~0_combout\,
	datac => \cursor_row~0_combout\,
	datad => \RECV_UART~2_combout\,
	combout => \cursor_row~5_combout\);

-- Location: FF_X32_Y27_N7
\cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_row~5_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_row(3));

-- Location: LCCOMB_X32_Y27_N20
\cursor_row~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_row~6_combout\ = ((new_cursor_row(4) & (\cursor_row~0_combout\ & !\RECV_UART~2_combout\))) # (!\Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_row(4),
	datab => \Equal3~0_combout\,
	datac => \cursor_row~0_combout\,
	datad => \RECV_UART~2_combout\,
	combout => \cursor_row~6_combout\);

-- Location: FF_X32_Y27_N21
\cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_row~6_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_row(4));

-- Location: LCCOMB_X26_Y27_N22
\PACKET_CHAR2[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR2[5]~feeder_combout\ = SHIFTIN(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(5),
	combout => \PACKET_CHAR2[5]~feeder_combout\);

-- Location: LCCOMB_X27_Y27_N18
\PACKET_CHAR2[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR2[7]~0_combout\ = (!\reset~input_o\ & (!PACKET_COUNT(0) & PACKET_COUNT(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => PACKET_COUNT(0),
	datad => PACKET_COUNT(1),
	combout => \PACKET_CHAR2[7]~0_combout\);

-- Location: LCCOMB_X27_Y27_N12
\PACKET_CHAR2[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR2[7]~1_combout\ = (\READ_CHAR~q\ & (\PACKET_CHAR2[7]~0_combout\ & (!\mouse_state.WAIT_OUTPUT_READY~q\ & !\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \READ_CHAR~q\,
	datab => \PACKET_CHAR2[7]~0_combout\,
	datac => \mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \LessThan1~0_combout\,
	combout => \PACKET_CHAR2[7]~1_combout\);

-- Location: FF_X26_Y27_N23
\PACKET_CHAR2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR2[5]~feeder_combout\,
	ena => \PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR2(5));

-- Location: LCCOMB_X26_Y27_N8
\PACKET_CHAR2[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR2[4]~feeder_combout\ = SHIFTIN(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => SHIFTIN(4),
	combout => \PACKET_CHAR2[4]~feeder_combout\);

-- Location: FF_X26_Y27_N9
\PACKET_CHAR2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR2[4]~feeder_combout\,
	ena => \PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR2(4));

-- Location: LCCOMB_X28_Y28_N24
\cursor_column~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_column~9_combout\ = (new_cursor_column(2) & \cursor_column[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_column(2),
	datad => \cursor_column[0]~6_combout\,
	combout => \cursor_column~9_combout\);

-- Location: FF_X28_Y28_N25
\cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_column~9_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_column(2));

-- Location: LCCOMB_X28_Y28_N14
\cursor_column~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_column~8_combout\ = (new_cursor_column(1) & \cursor_column[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_column(1),
	datad => \cursor_column[0]~6_combout\,
	combout => \cursor_column~8_combout\);

-- Location: FF_X28_Y28_N15
\cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_column~8_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_column(1));

-- Location: LCCOMB_X26_Y27_N4
\PACKET_CHAR2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \PACKET_CHAR2[0]~feeder_combout\ = SHIFTIN(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SHIFTIN(0),
	combout => \PACKET_CHAR2[0]~feeder_combout\);

-- Location: FF_X26_Y27_N5
\PACKET_CHAR2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \PACKET_CHAR2[0]~feeder_combout\,
	ena => \PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PACKET_CHAR2(0));

-- Location: LCCOMB_X27_Y28_N14
\new_cursor_column[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_column[2]~14_combout\ = ((PACKET_CHAR2(2) $ (cursor_column(2) $ (!\new_cursor_column[1]~13\)))) # (GND)
-- \new_cursor_column[2]~15\ = CARRY((PACKET_CHAR2(2) & ((cursor_column(2)) # (!\new_cursor_column[1]~13\))) # (!PACKET_CHAR2(2) & (cursor_column(2) & !\new_cursor_column[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_CHAR2(2),
	datab => cursor_column(2),
	datad => VCC,
	cin => \new_cursor_column[1]~13\,
	combout => \new_cursor_column[2]~14_combout\,
	cout => \new_cursor_column[2]~15\);

-- Location: LCCOMB_X27_Y28_N16
\new_cursor_column[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_column[3]~16_combout\ = (PACKET_CHAR2(3) & ((cursor_column(3) & (\new_cursor_column[2]~15\ & VCC)) # (!cursor_column(3) & (!\new_cursor_column[2]~15\)))) # (!PACKET_CHAR2(3) & ((cursor_column(3) & (!\new_cursor_column[2]~15\)) # 
-- (!cursor_column(3) & ((\new_cursor_column[2]~15\) # (GND)))))
-- \new_cursor_column[3]~17\ = CARRY((PACKET_CHAR2(3) & (!cursor_column(3) & !\new_cursor_column[2]~15\)) # (!PACKET_CHAR2(3) & ((!\new_cursor_column[2]~15\) # (!cursor_column(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_CHAR2(3),
	datab => cursor_column(3),
	datad => VCC,
	cin => \new_cursor_column[2]~15\,
	combout => \new_cursor_column[3]~16_combout\,
	cout => \new_cursor_column[3]~17\);

-- Location: FF_X27_Y28_N17
\new_cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_column[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_column(3));

-- Location: LCCOMB_X28_Y28_N18
\cursor_column~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_column~10_combout\ = (new_cursor_column(3) & \cursor_column[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => new_cursor_column(3),
	datad => \cursor_column[0]~6_combout\,
	combout => \cursor_column~10_combout\);

-- Location: FF_X28_Y28_N19
\cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_column~10_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_column(3));

-- Location: LCCOMB_X27_Y28_N18
\new_cursor_column[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_column[4]~18_combout\ = ((cursor_column(4) $ (PACKET_CHAR2(4) $ (!\new_cursor_column[3]~17\)))) # (GND)
-- \new_cursor_column[4]~19\ = CARRY((cursor_column(4) & ((PACKET_CHAR2(4)) # (!\new_cursor_column[3]~17\))) # (!cursor_column(4) & (PACKET_CHAR2(4) & !\new_cursor_column[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cursor_column(4),
	datab => PACKET_CHAR2(4),
	datad => VCC,
	cin => \new_cursor_column[3]~17\,
	combout => \new_cursor_column[4]~18_combout\,
	cout => \new_cursor_column[4]~19\);

-- Location: LCCOMB_X27_Y28_N20
\new_cursor_column[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_column[5]~20_combout\ = (cursor_column(5) & ((PACKET_CHAR2(5) & (\new_cursor_column[4]~19\ & VCC)) # (!PACKET_CHAR2(5) & (!\new_cursor_column[4]~19\)))) # (!cursor_column(5) & ((PACKET_CHAR2(5) & (!\new_cursor_column[4]~19\)) # 
-- (!PACKET_CHAR2(5) & ((\new_cursor_column[4]~19\) # (GND)))))
-- \new_cursor_column[5]~21\ = CARRY((cursor_column(5) & (!PACKET_CHAR2(5) & !\new_cursor_column[4]~19\)) # (!cursor_column(5) & ((!\new_cursor_column[4]~19\) # (!PACKET_CHAR2(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cursor_column(5),
	datab => PACKET_CHAR2(5),
	datad => VCC,
	cin => \new_cursor_column[4]~19\,
	combout => \new_cursor_column[5]~20_combout\,
	cout => \new_cursor_column[5]~21\);

-- Location: LCCOMB_X27_Y28_N22
\new_cursor_column[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_column[6]~22_combout\ = ((PACKET_CHAR2(6) $ (cursor_column(6) $ (!\new_cursor_column[5]~21\)))) # (GND)
-- \new_cursor_column[6]~23\ = CARRY((PACKET_CHAR2(6) & ((cursor_column(6)) # (!\new_cursor_column[5]~21\))) # (!PACKET_CHAR2(6) & (cursor_column(6) & !\new_cursor_column[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_CHAR2(6),
	datab => cursor_column(6),
	datad => VCC,
	cin => \new_cursor_column[5]~21\,
	combout => \new_cursor_column[6]~22_combout\,
	cout => \new_cursor_column[6]~23\);

-- Location: FF_X27_Y28_N23
\new_cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_column[6]~22_combout\,
	asdata => VCC,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_column(6));

-- Location: LCCOMB_X28_Y28_N28
\cursor_column~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_column~17_combout\ = (PACKET_COUNT(0) & (new_cursor_column(6) & ((\cursor_column[0]~6_combout\)))) # (!PACKET_COUNT(0) & (((new_cursor_column(6) & \cursor_column[0]~6_combout\)) # (!PACKET_COUNT(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_COUNT(0),
	datab => new_cursor_column(6),
	datac => PACKET_COUNT(1),
	datad => \cursor_column[0]~6_combout\,
	combout => \cursor_column~17_combout\);

-- Location: FF_X28_Y28_N29
\cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_column~17_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_column(6));

-- Location: LCCOMB_X27_Y28_N24
\new_cursor_column[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_column[7]~24_combout\ = (PACKET_CHAR2(7) & ((cursor_column(7) & (\new_cursor_column[6]~23\ & VCC)) # (!cursor_column(7) & (!\new_cursor_column[6]~23\)))) # (!PACKET_CHAR2(7) & ((cursor_column(7) & (!\new_cursor_column[6]~23\)) # 
-- (!cursor_column(7) & ((\new_cursor_column[6]~23\) # (GND)))))
-- \new_cursor_column[7]~25\ = CARRY((PACKET_CHAR2(7) & (!cursor_column(7) & !\new_cursor_column[6]~23\)) # (!PACKET_CHAR2(7) & ((!\new_cursor_column[6]~23\) # (!cursor_column(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_CHAR2(7),
	datab => cursor_column(7),
	datad => VCC,
	cin => \new_cursor_column[6]~23\,
	combout => \new_cursor_column[7]~24_combout\,
	cout => \new_cursor_column[7]~25\);

-- Location: FF_X27_Y28_N25
\new_cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_column[7]~24_combout\,
	asdata => \~GND~combout\,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_column(7));

-- Location: LCCOMB_X28_Y28_N12
\cursor_column~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_column~18_combout\ = (PACKET_COUNT(0) & (new_cursor_column(8) & ((\cursor_column[0]~6_combout\)))) # (!PACKET_COUNT(0) & (((new_cursor_column(8) & \cursor_column[0]~6_combout\)) # (!PACKET_COUNT(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_COUNT(0),
	datab => new_cursor_column(8),
	datac => PACKET_COUNT(1),
	datad => \cursor_column[0]~6_combout\,
	combout => \cursor_column~18_combout\);

-- Location: FF_X28_Y28_N13
\cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_column~18_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_column(8));

-- Location: LCCOMB_X27_Y28_N26
\new_cursor_column[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_column[8]~26_combout\ = ((PACKET_CHAR2(7) $ (cursor_column(8) $ (!\new_cursor_column[7]~25\)))) # (GND)
-- \new_cursor_column[8]~27\ = CARRY((PACKET_CHAR2(7) & ((cursor_column(8)) # (!\new_cursor_column[7]~25\))) # (!PACKET_CHAR2(7) & (cursor_column(8) & !\new_cursor_column[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_CHAR2(7),
	datab => cursor_column(8),
	datad => VCC,
	cin => \new_cursor_column[7]~25\,
	combout => \new_cursor_column[8]~26_combout\,
	cout => \new_cursor_column[8]~27\);

-- Location: FF_X27_Y28_N27
\new_cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_column[8]~26_combout\,
	asdata => VCC,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_column(8));

-- Location: FF_X27_Y28_N21
\new_cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_column[5]~20_combout\,
	asdata => \~GND~combout\,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_column(5));

-- Location: FF_X27_Y28_N15
\new_cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_column[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_column(2));

-- Location: FF_X27_Y28_N19
\new_cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_column[4]~18_combout\,
	asdata => \~GND~combout\,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_column(4));

-- Location: LCCOMB_X27_Y28_N0
\RECV_UART~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RECV_UART~3_combout\ = (!new_cursor_column(1) & (!new_cursor_column(3) & (!new_cursor_column(2) & !new_cursor_column(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_column(1),
	datab => new_cursor_column(3),
	datac => new_cursor_column(2),
	datad => new_cursor_column(4),
	combout => \RECV_UART~3_combout\);

-- Location: LCCOMB_X27_Y28_N2
\LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (new_cursor_column(0)) # ((new_cursor_column(5)) # ((new_cursor_column(6)) # (!\RECV_UART~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_column(0),
	datab => new_cursor_column(5),
	datac => new_cursor_column(6),
	datad => \RECV_UART~3_combout\,
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X27_Y28_N6
\cursor_column[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_column[0]~16_combout\ = ((!new_cursor_column(8) & ((!\LessThan9~0_combout\) # (!new_cursor_column(7))))) # (!new_cursor_column(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_column(9),
	datab => new_cursor_column(7),
	datac => new_cursor_column(8),
	datad => \LessThan9~0_combout\,
	combout => \cursor_column[0]~16_combout\);

-- Location: LCCOMB_X28_Y28_N26
\cursor_column~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_column~15_combout\ = (\cursor_column~13_combout\) # ((new_cursor_column(9) & \cursor_column[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => new_cursor_column(9),
	datac => \cursor_column~13_combout\,
	datad => \cursor_column[0]~6_combout\,
	combout => \cursor_column~15_combout\);

-- Location: FF_X28_Y28_N27
\cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_column~15_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_column(9));

-- Location: LCCOMB_X27_Y28_N28
\new_cursor_column[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \new_cursor_column[9]~28_combout\ = PACKET_CHAR2(7) $ (\new_cursor_column[8]~27\ $ (cursor_column(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PACKET_CHAR2(7),
	datad => cursor_column(9),
	cin => \new_cursor_column[8]~27\,
	combout => \new_cursor_column[9]~28_combout\);

-- Location: FF_X27_Y28_N29
\new_cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \new_cursor_column[9]~28_combout\,
	asdata => \~GND~combout\,
	sload => \Equal4~0_combout\,
	ena => \new_cursor_row[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => new_cursor_column(9));

-- Location: LCCOMB_X27_Y28_N4
\RECV_UART~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RECV_UART~4_combout\ = (!new_cursor_column(5) & (!new_cursor_column(6) & \RECV_UART~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => new_cursor_column(5),
	datac => new_cursor_column(6),
	datad => \RECV_UART~3_combout\,
	combout => \RECV_UART~4_combout\);

-- Location: LCCOMB_X27_Y28_N8
\RECV_UART~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RECV_UART~6_combout\ = (new_cursor_column(8) & ((new_cursor_column(7)) # ((\LessThan9~0_combout\)))) # (!new_cursor_column(8) & (!new_cursor_column(7) & (\RECV_UART~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_column(8),
	datab => new_cursor_column(7),
	datac => \RECV_UART~4_combout\,
	datad => \LessThan9~0_combout\,
	combout => \RECV_UART~6_combout\);

-- Location: LCCOMB_X28_Y28_N10
\RECV_UART~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RECV_UART~7_combout\ = (new_cursor_column(9)) # (\RECV_UART~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => new_cursor_column(9),
	datad => \RECV_UART~6_combout\,
	combout => \RECV_UART~7_combout\);

-- Location: LCCOMB_X28_Y28_N8
\cursor_column~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_column~13_combout\ = (\Equal3~0_combout\ & (!\cursor_column[0]~16_combout\ & ((!\RECV_UART~7_combout\) # (!\RECV_UART~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \RECV_UART~5_combout\,
	datac => \cursor_column[0]~16_combout\,
	datad => \RECV_UART~7_combout\,
	combout => \cursor_column~13_combout\);

-- Location: LCCOMB_X28_Y28_N22
\cursor_column~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_column~14_combout\ = (\cursor_column~13_combout\) # ((new_cursor_column(7) & \cursor_column[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => new_cursor_column(7),
	datac => \cursor_column~13_combout\,
	datad => \cursor_column[0]~6_combout\,
	combout => \cursor_column~14_combout\);

-- Location: FF_X28_Y28_N23
\cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_column~14_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_column(7));

-- Location: LCCOMB_X28_Y28_N16
\RECV_UART~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RECV_UART~5_combout\ = (!cursor_column(9) & (!cursor_column(7) & !cursor_column(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cursor_column(9),
	datac => cursor_column(7),
	datad => cursor_column(8),
	combout => \RECV_UART~5_combout\);

-- Location: LCCOMB_X28_Y28_N6
\cursor_column[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_column[0]~6_combout\ = (\Equal3~0_combout\ & (\cursor_column[0]~16_combout\ & ((!\RECV_UART~7_combout\) # (!\RECV_UART~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \RECV_UART~5_combout\,
	datac => \cursor_column[0]~16_combout\,
	datad => \RECV_UART~7_combout\,
	combout => \cursor_column[0]~6_combout\);

-- Location: LCCOMB_X28_Y28_N4
\cursor_column~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_column~7_combout\ = (new_cursor_column(0) & \cursor_column[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => new_cursor_column(0),
	datad => \cursor_column[0]~6_combout\,
	combout => \cursor_column~7_combout\);

-- Location: FF_X28_Y28_N5
\cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_column~7_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_column(0));

-- Location: LCCOMB_X28_Y28_N20
\cursor_column~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_column~11_combout\ = (new_cursor_column(4) & \cursor_column[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => new_cursor_column(4),
	datad => \cursor_column[0]~6_combout\,
	combout => \cursor_column~11_combout\);

-- Location: FF_X28_Y28_N21
\cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_column~11_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_column(4));

-- Location: LCCOMB_X28_Y28_N30
\cursor_column~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cursor_column~12_combout\ = (new_cursor_column(5) & \cursor_column[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => new_cursor_column(5),
	datad => \cursor_column[0]~6_combout\,
	combout => \cursor_column~12_combout\);

-- Location: FF_X28_Y28_N31
\cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \cursor_column~12_combout\,
	ena => \cursor_row[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cursor_column(5));

ww_left_button <= \left_button~output_o\;

ww_right_button <= \right_button~output_o\;

ww_mouse_cursor_row(0) <= \mouse_cursor_row[0]~output_o\;

ww_mouse_cursor_row(1) <= \mouse_cursor_row[1]~output_o\;

ww_mouse_cursor_row(2) <= \mouse_cursor_row[2]~output_o\;

ww_mouse_cursor_row(3) <= \mouse_cursor_row[3]~output_o\;

ww_mouse_cursor_row(4) <= \mouse_cursor_row[4]~output_o\;

ww_mouse_cursor_row(5) <= \mouse_cursor_row[5]~output_o\;

ww_mouse_cursor_row(6) <= \mouse_cursor_row[6]~output_o\;

ww_mouse_cursor_row(7) <= \mouse_cursor_row[7]~output_o\;

ww_mouse_cursor_row(8) <= \mouse_cursor_row[8]~output_o\;

ww_mouse_cursor_row(9) <= \mouse_cursor_row[9]~output_o\;

ww_mouse_cursor_column(0) <= \mouse_cursor_column[0]~output_o\;

ww_mouse_cursor_column(1) <= \mouse_cursor_column[1]~output_o\;

ww_mouse_cursor_column(2) <= \mouse_cursor_column[2]~output_o\;

ww_mouse_cursor_column(3) <= \mouse_cursor_column[3]~output_o\;

ww_mouse_cursor_column(4) <= \mouse_cursor_column[4]~output_o\;

ww_mouse_cursor_column(5) <= \mouse_cursor_column[5]~output_o\;

ww_mouse_cursor_column(6) <= \mouse_cursor_column[6]~output_o\;

ww_mouse_cursor_column(7) <= \mouse_cursor_column[7]~output_o\;

ww_mouse_cursor_column(8) <= \mouse_cursor_column[8]~output_o\;

ww_mouse_cursor_column(9) <= \mouse_cursor_column[9]~output_o\;

mouse_data <= \mouse_data~output_o\;

mouse_clk <= \mouse_clk~output_o\;
END structure;


