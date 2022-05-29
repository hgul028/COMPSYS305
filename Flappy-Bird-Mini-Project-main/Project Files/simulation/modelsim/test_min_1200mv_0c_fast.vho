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

-- DATE "05/07/2021 17:32:10"

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

ENTITY 	test IS
    PORT (
	red_out : OUT std_logic;
	clk : IN std_logic;
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	vert_sync_out : OUT std_logic;
	pb1 : IN std_logic;
	pb2 : IN std_logic
	);
END test;

-- Design Ports Information
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb2	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_pb1 : std_logic;
SIGNAL ww_pb2 : std_logic;
SIGNAL \inst6|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst6|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|Add3~9\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add1~6_combout\ : std_logic;
SIGNAL \inst1|Add1~14_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[1]~11_combout\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[2]~13_combout\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[3]~15_combout\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[5]~19_combout\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[7]~23_combout\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[8]~25_combout\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[9]~27_combout\ : std_logic;
SIGNAL \inst1|video_on_v~q\ : std_logic;
SIGNAL \inst1|video_on_h~q\ : std_logic;
SIGNAL \inst1|green_out~0_combout\ : std_logic;
SIGNAL \inst|ball_on~0_combout\ : std_logic;
SIGNAL \inst|ball_on~1_combout\ : std_logic;
SIGNAL \inst|ball_on~3_combout\ : std_logic;
SIGNAL \inst|ball_on~4_combout\ : std_logic;
SIGNAL \inst|ball_on~5_combout\ : std_logic;
SIGNAL \inst|LessThan3~3_combout\ : std_logic;
SIGNAL \inst|LessThan3~4_combout\ : std_logic;
SIGNAL \inst|LessThan3~5_combout\ : std_logic;
SIGNAL \inst|Move_Ball~0_combout\ : std_logic;
SIGNAL \inst1|process_0~9_combout\ : std_logic;
SIGNAL \inst1|process_0~10_combout\ : std_logic;
SIGNAL \inst1|process_0~11_combout\ : std_logic;
SIGNAL \inst3|left_button~0_combout\ : std_logic;
SIGNAL \inst3|output_ready~q\ : std_logic;
SIGNAL \inst3|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst3|PACKET_COUNT[0]~2_combout\ : std_logic;
SIGNAL \inst3|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst3|Selector4~0_combout\ : std_logic;
SIGNAL \pb1~input_o\ : std_logic;
SIGNAL \pb2~input_o\ : std_logic;
SIGNAL \inst1|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|video_on_h~feeder_combout\ : std_logic;
SIGNAL \inst1|pixel_column[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|pixel_column[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|output_ready~feeder_combout\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \inst3|filter[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|filter[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|filter[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst3|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst3|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst3|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst3|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[0]~33_combout\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[1]~12\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[2]~14\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[3]~16\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[4]~17_combout\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[4]~18\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[5]~20\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[6]~21_combout\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[6]~22\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[7]~24\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[8]~26\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[9]~28\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[10]~30\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[11]~31_combout\ : std_logic;
SIGNAL \inst3|Selector0~0_combout\ : std_logic;
SIGNAL \inst3|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst3|INCNT~3_combout\ : std_logic;
SIGNAL \inst3|inhibit_wait_count[10]~29_combout\ : std_logic;
SIGNAL \inst3|Selector1~0_combout\ : std_logic;
SIGNAL \inst3|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst3|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst3|Selector3~0_combout\ : std_logic;
SIGNAL \inst3|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst3|INCNT[3]~1_combout\ : std_logic;
SIGNAL \inst3|INCNT~2_combout\ : std_logic;
SIGNAL \inst3|INCNT~4_combout\ : std_logic;
SIGNAL \inst3|INCNT~0_combout\ : std_logic;
SIGNAL \inst3|LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst3|READ_CHAR~q\ : std_logic;
SIGNAL \inst3|iready_set~0_combout\ : std_logic;
SIGNAL \inst3|iready_set~q\ : std_logic;
SIGNAL \inst3|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \inst3|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst3|Selector6~0_combout\ : std_logic;
SIGNAL \inst3|Selector6~1_combout\ : std_logic;
SIGNAL \inst3|send_data~q\ : std_logic;
SIGNAL \inst3|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst3|output_ready~0_combout\ : std_logic;
SIGNAL \inst3|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst3|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst3|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|send_char~0_combout\ : std_logic;
SIGNAL \inst3|send_char~q\ : std_logic;
SIGNAL \inst3|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst3|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst3|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst3|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst3|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst3|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst3|SHIFTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst3|WideOr4~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst6|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|h_count~1_combout\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|h_count~2_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|h_count~0_combout\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|Equal1~1_combout\ : std_logic;
SIGNAL \inst1|v_count[7]~6_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|v_count~11_combout\ : std_logic;
SIGNAL \inst1|Add1~1\ : std_logic;
SIGNAL \inst1|Add1~3\ : std_logic;
SIGNAL \inst1|Add1~4_combout\ : std_logic;
SIGNAL \inst1|v_count[2]~9_combout\ : std_logic;
SIGNAL \inst1|Add1~5\ : std_logic;
SIGNAL \inst1|Add1~7\ : std_logic;
SIGNAL \inst1|Add1~9\ : std_logic;
SIGNAL \inst1|Add1~10_combout\ : std_logic;
SIGNAL \inst1|v_count[5]~4_combout\ : std_logic;
SIGNAL \inst1|Add1~8_combout\ : std_logic;
SIGNAL \inst1|v_count[4]~7_combout\ : std_logic;
SIGNAL \inst1|v_count[3]~8_combout\ : std_logic;
SIGNAL \inst1|process_0~7_combout\ : std_logic;
SIGNAL \inst1|process_0~8_combout\ : std_logic;
SIGNAL \inst1|v_count[2]~0_combout\ : std_logic;
SIGNAL \inst1|Add1~11\ : std_logic;
SIGNAL \inst1|Add1~13\ : std_logic;
SIGNAL \inst1|Add1~15\ : std_logic;
SIGNAL \inst1|Add1~16_combout\ : std_logic;
SIGNAL \inst1|v_count[8]~3_combout\ : std_logic;
SIGNAL \inst1|Add1~17\ : std_logic;
SIGNAL \inst1|Add1~18_combout\ : std_logic;
SIGNAL \inst1|v_count[9]~2_combout\ : std_logic;
SIGNAL \inst1|process_0~12_combout\ : std_logic;
SIGNAL \inst1|v_count[8]~1_combout\ : std_logic;
SIGNAL \inst1|Add1~12_combout\ : std_logic;
SIGNAL \inst1|v_count[6]~5_combout\ : std_logic;
SIGNAL \inst1|pixel_row[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|LessThan7~0_combout\ : std_logic;
SIGNAL \inst1|LessThan7~1_combout\ : std_logic;
SIGNAL \inst1|pixel_row[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \inst3|SHIFTIN[8]~feeder_combout\ : std_logic;
SIGNAL \inst3|SHIFTIN[0]~0_combout\ : std_logic;
SIGNAL \inst3|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \inst3|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \inst3|SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|PACKET_COUNT[1]~0_combout\ : std_logic;
SIGNAL \inst3|PACKET_COUNT[1]~1_combout\ : std_logic;
SIGNAL \inst3|PACKET_CHAR1[0]~0_combout\ : std_logic;
SIGNAL \inst3|left_button~1_combout\ : std_logic;
SIGNAL \inst3|left_button~q\ : std_logic;
SIGNAL \inst3|PACKET_CHAR1[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|right_button~q\ : std_logic;
SIGNAL \inst|ball_y_pos[1]~10_cout\ : std_logic;
SIGNAL \inst|ball_y_pos[1]~11_combout\ : std_logic;
SIGNAL \inst|ball_y_pos[1]~12\ : std_logic;
SIGNAL \inst|ball_y_pos[2]~13_combout\ : std_logic;
SIGNAL \inst|ball_y_pos[2]~14\ : std_logic;
SIGNAL \inst|ball_y_pos[3]~15_combout\ : std_logic;
SIGNAL \inst|ball_y_motion~2_combout\ : std_logic;
SIGNAL \inst|ball_y_pos[3]~16\ : std_logic;
SIGNAL \inst|ball_y_pos[4]~17_combout\ : std_logic;
SIGNAL \inst|ball_y_pos[4]~18\ : std_logic;
SIGNAL \inst|ball_y_pos[5]~19_combout\ : std_logic;
SIGNAL \inst|ball_y_motion~3_combout\ : std_logic;
SIGNAL \inst|ball_y_motion~4_combout\ : std_logic;
SIGNAL \inst|ball_y_motion[2]~5_combout\ : std_logic;
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|ball_y_pos[5]~20\ : std_logic;
SIGNAL \inst|ball_y_pos[6]~22\ : std_logic;
SIGNAL \inst|ball_y_pos[7]~23_combout\ : std_logic;
SIGNAL \inst|ball_y_pos[7]~24\ : std_logic;
SIGNAL \inst|ball_y_pos[8]~25_combout\ : std_logic;
SIGNAL \inst|ball_on~10_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|ball_y_pos[6]~21_combout\ : std_logic;
SIGNAL \inst|ball_on~15_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|ball_on~11_combout\ : std_logic;
SIGNAL \inst|ball_on~12_combout\ : std_logic;
SIGNAL \inst|LessThan3~2_combout\ : std_logic;
SIGNAL \inst|ball_on~13_combout\ : std_logic;
SIGNAL \inst|ball_on~14_combout\ : std_logic;
SIGNAL \inst|ball_on~16_combout\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst|ball_on~2_combout\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|ball_y_pos[8]~26\ : std_logic;
SIGNAL \inst|ball_y_pos[9]~27_combout\ : std_logic;
SIGNAL \inst|ball_on~7_combout\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|ball_on~6_combout\ : std_logic;
SIGNAL \inst|ball_on~8_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|ball_on~9_combout\ : std_logic;
SIGNAL \inst|LessThan3~8_combout\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|LessThan3~6_combout\ : std_logic;
SIGNAL \inst|LessThan3~7_combout\ : std_logic;
SIGNAL \inst|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|LessThan3~1_combout\ : std_logic;
SIGNAL \inst|LessThan3~9_combout\ : std_logic;
SIGNAL \inst1|green_out~1_combout\ : std_logic;
SIGNAL \inst1|green_out~feeder_combout\ : std_logic;
SIGNAL \inst1|green_out~q\ : std_logic;
SIGNAL \inst1|blue_out~q\ : std_logic;
SIGNAL \inst1|process_0~1_combout\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst1|process_0~3_combout\ : std_logic;
SIGNAL \inst1|process_0~4_combout\ : std_logic;
SIGNAL \inst1|horiz_sync~q\ : std_logic;
SIGNAL \inst1|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst1|horiz_sync_out~q\ : std_logic;
SIGNAL \inst1|Add1~2_combout\ : std_logic;
SIGNAL \inst1|v_count~10_combout\ : std_logic;
SIGNAL \inst1|process_0~5_combout\ : std_logic;
SIGNAL \inst1|process_0~6_combout\ : std_logic;
SIGNAL \inst1|vert_sync~q\ : std_logic;
SIGNAL \inst1|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst1|vert_sync_out~q\ : std_logic;
SIGNAL \inst6|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ball_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ball_y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|inhibit_wait_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst3|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst3|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst3|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst3|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;

BEGIN

red_out <= ww_red_out;
ww_clk <= clk;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
horiz_sync_out <= ww_horiz_sync_out;
vert_sync_out <= ww_vert_sync_out;
ww_pb1 <= pb1;
ww_pb2 <= pb2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst6|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst6|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst6|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst6|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst6|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst6|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst6|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst6|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst6|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst6|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst6|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst1|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|vert_sync_out~q\);

\inst3|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|MOUSE_CLK_FILTER~q\);

\inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst3|MOUSE_CLK_FILTER~clkctrl_outclk\;
\inst3|ALT_INV_send_data~q\ <= NOT \inst3|send_data~q\;
\inst3|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst3|mouse_state.INHIBIT_TRANS~q\;
\inst3|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \inst3|mouse_state.WAIT_OUTPUT_READY~q\;

-- Location: LCCOMB_X32_Y12_N10
\inst|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\inst|ball_y_pos\(3) & (\inst|ball_y_pos\(4) $ (VCC))) # (!\inst|ball_y_pos\(3) & (\inst|ball_y_pos\(4) & VCC))
-- \inst|Add3~1\ = CARRY((\inst|ball_y_pos\(3) & \inst|ball_y_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_y_pos\(3),
	datab => \inst|ball_y_pos\(4),
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: LCCOMB_X32_Y12_N18
\inst|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = (\inst|ball_y_pos\(8) & (\inst|Add3~7\ $ (GND))) # (!\inst|ball_y_pos\(8) & (!\inst|Add3~7\ & VCC))
-- \inst|Add3~9\ = CARRY((\inst|ball_y_pos\(8) & !\inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_y_pos\(8),
	datad => VCC,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\,
	cout => \inst|Add3~9\);

-- Location: LCCOMB_X32_Y12_N20
\inst|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = \inst|Add3~9\ $ (\inst|ball_y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|ball_y_pos\(9),
	cin => \inst|Add3~9\,
	combout => \inst|Add3~10_combout\);

-- Location: LCCOMB_X31_Y13_N0
\inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\inst1|pixel_column\(3) & (\inst1|pixel_column\(4) $ (VCC))) # (!\inst1|pixel_column\(3) & (\inst1|pixel_column\(4) & VCC))
-- \inst|Add0~1\ = CARRY((\inst1|pixel_column\(3) & \inst1|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(3),
	datab => \inst1|pixel_column\(4),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X31_Y13_N2
\inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst1|pixel_column\(5) & (!\inst|Add0~1\)) # (!\inst1|pixel_column\(5) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst1|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(5),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X31_Y13_N4
\inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst1|pixel_column\(6) & (\inst|Add0~3\ $ (GND))) # (!\inst1|pixel_column\(6) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst1|pixel_column\(6) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X31_Y13_N6
\inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst1|pixel_column\(7) & (!\inst|Add0~5\)) # (!\inst1|pixel_column\(7) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst1|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(7),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X31_Y13_N8
\inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst1|pixel_column\(8) & (\inst|Add0~7\ $ (GND))) # (!\inst1|pixel_column\(8) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst1|pixel_column\(8) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(8),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X32_Y13_N8
\inst|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst1|pixel_row\(5) & (!\inst|Add2~1\)) # (!\inst1|pixel_row\(5) & ((\inst|Add2~1\) # (GND)))
-- \inst|Add2~3\ = CARRY((!\inst|Add2~1\) # (!\inst1|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(5),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X31_Y13_N10
\inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst1|pixel_column\(9) & (!\inst|Add0~9\)) # (!\inst1|pixel_column\(9) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst1|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_column\(9),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X32_Y15_N12
\inst1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~6_combout\ = (\inst1|v_count\(3) & (!\inst1|Add1~5\)) # (!\inst1|v_count\(3) & ((\inst1|Add1~5\) # (GND)))
-- \inst1|Add1~7\ = CARRY((!\inst1|Add1~5\) # (!\inst1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(3),
	datad => VCC,
	cin => \inst1|Add1~5\,
	combout => \inst1|Add1~6_combout\,
	cout => \inst1|Add1~7\);

-- Location: LCCOMB_X32_Y15_N20
\inst1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~14_combout\ = (\inst1|v_count\(7) & (!\inst1|Add1~13\)) # (!\inst1|v_count\(7) & ((\inst1|Add1~13\) # (GND)))
-- \inst1|Add1~15\ = CARRY((!\inst1|Add1~13\) # (!\inst1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(7),
	datad => VCC,
	cin => \inst1|Add1~13\,
	combout => \inst1|Add1~14_combout\,
	cout => \inst1|Add1~15\);

-- Location: LCCOMB_X30_Y14_N12
\inst1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|h_count\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: FF_X38_Y15_N25
\inst3|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|inhibit_wait_count[9]~27_combout\,
	ena => \inst3|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inhibit_wait_count\(9));

-- Location: FF_X38_Y15_N23
\inst3|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|inhibit_wait_count[8]~25_combout\,
	ena => \inst3|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inhibit_wait_count\(8));

-- Location: FF_X38_Y15_N21
\inst3|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|inhibit_wait_count[7]~23_combout\,
	ena => \inst3|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inhibit_wait_count\(7));

-- Location: FF_X38_Y15_N17
\inst3|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|inhibit_wait_count[5]~19_combout\,
	ena => \inst3|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inhibit_wait_count\(5));

-- Location: FF_X38_Y15_N13
\inst3|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|inhibit_wait_count[3]~15_combout\,
	ena => \inst3|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inhibit_wait_count\(3));

-- Location: FF_X38_Y15_N11
\inst3|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|inhibit_wait_count[2]~13_combout\,
	ena => \inst3|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inhibit_wait_count\(2));

-- Location: FF_X38_Y15_N9
\inst3|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|inhibit_wait_count[1]~11_combout\,
	ena => \inst3|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inhibit_wait_count\(1));

-- Location: LCCOMB_X38_Y15_N8
\inst3|inhibit_wait_count[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inhibit_wait_count[1]~11_combout\ = (\inst3|inhibit_wait_count\(1) & (\inst3|inhibit_wait_count\(0) $ (VCC))) # (!\inst3|inhibit_wait_count\(1) & (\inst3|inhibit_wait_count\(0) & VCC))
-- \inst3|inhibit_wait_count[1]~12\ = CARRY((\inst3|inhibit_wait_count\(1) & \inst3|inhibit_wait_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inhibit_wait_count\(1),
	datab => \inst3|inhibit_wait_count\(0),
	datad => VCC,
	combout => \inst3|inhibit_wait_count[1]~11_combout\,
	cout => \inst3|inhibit_wait_count[1]~12\);

-- Location: LCCOMB_X38_Y15_N10
\inst3|inhibit_wait_count[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inhibit_wait_count[2]~13_combout\ = (\inst3|inhibit_wait_count\(2) & (!\inst3|inhibit_wait_count[1]~12\)) # (!\inst3|inhibit_wait_count\(2) & ((\inst3|inhibit_wait_count[1]~12\) # (GND)))
-- \inst3|inhibit_wait_count[2]~14\ = CARRY((!\inst3|inhibit_wait_count[1]~12\) # (!\inst3|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inhibit_wait_count\(2),
	datad => VCC,
	cin => \inst3|inhibit_wait_count[1]~12\,
	combout => \inst3|inhibit_wait_count[2]~13_combout\,
	cout => \inst3|inhibit_wait_count[2]~14\);

-- Location: LCCOMB_X38_Y15_N12
\inst3|inhibit_wait_count[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inhibit_wait_count[3]~15_combout\ = (\inst3|inhibit_wait_count\(3) & (\inst3|inhibit_wait_count[2]~14\ $ (GND))) # (!\inst3|inhibit_wait_count\(3) & (!\inst3|inhibit_wait_count[2]~14\ & VCC))
-- \inst3|inhibit_wait_count[3]~16\ = CARRY((\inst3|inhibit_wait_count\(3) & !\inst3|inhibit_wait_count[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inhibit_wait_count\(3),
	datad => VCC,
	cin => \inst3|inhibit_wait_count[2]~14\,
	combout => \inst3|inhibit_wait_count[3]~15_combout\,
	cout => \inst3|inhibit_wait_count[3]~16\);

-- Location: LCCOMB_X38_Y15_N16
\inst3|inhibit_wait_count[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inhibit_wait_count[5]~19_combout\ = (\inst3|inhibit_wait_count\(5) & (\inst3|inhibit_wait_count[4]~18\ $ (GND))) # (!\inst3|inhibit_wait_count\(5) & (!\inst3|inhibit_wait_count[4]~18\ & VCC))
-- \inst3|inhibit_wait_count[5]~20\ = CARRY((\inst3|inhibit_wait_count\(5) & !\inst3|inhibit_wait_count[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst3|inhibit_wait_count[4]~18\,
	combout => \inst3|inhibit_wait_count[5]~19_combout\,
	cout => \inst3|inhibit_wait_count[5]~20\);

-- Location: LCCOMB_X38_Y15_N20
\inst3|inhibit_wait_count[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inhibit_wait_count[7]~23_combout\ = (\inst3|inhibit_wait_count\(7) & (\inst3|inhibit_wait_count[6]~22\ $ (GND))) # (!\inst3|inhibit_wait_count\(7) & (!\inst3|inhibit_wait_count[6]~22\ & VCC))
-- \inst3|inhibit_wait_count[7]~24\ = CARRY((\inst3|inhibit_wait_count\(7) & !\inst3|inhibit_wait_count[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inhibit_wait_count\(7),
	datad => VCC,
	cin => \inst3|inhibit_wait_count[6]~22\,
	combout => \inst3|inhibit_wait_count[7]~23_combout\,
	cout => \inst3|inhibit_wait_count[7]~24\);

-- Location: LCCOMB_X38_Y15_N22
\inst3|inhibit_wait_count[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inhibit_wait_count[8]~25_combout\ = (\inst3|inhibit_wait_count\(8) & (!\inst3|inhibit_wait_count[7]~24\)) # (!\inst3|inhibit_wait_count\(8) & ((\inst3|inhibit_wait_count[7]~24\) # (GND)))
-- \inst3|inhibit_wait_count[8]~26\ = CARRY((!\inst3|inhibit_wait_count[7]~24\) # (!\inst3|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inhibit_wait_count\(8),
	datad => VCC,
	cin => \inst3|inhibit_wait_count[7]~24\,
	combout => \inst3|inhibit_wait_count[8]~25_combout\,
	cout => \inst3|inhibit_wait_count[8]~26\);

-- Location: LCCOMB_X38_Y15_N24
\inst3|inhibit_wait_count[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inhibit_wait_count[9]~27_combout\ = (\inst3|inhibit_wait_count\(9) & (\inst3|inhibit_wait_count[8]~26\ $ (GND))) # (!\inst3|inhibit_wait_count\(9) & (!\inst3|inhibit_wait_count[8]~26\ & VCC))
-- \inst3|inhibit_wait_count[9]~28\ = CARRY((\inst3|inhibit_wait_count\(9) & !\inst3|inhibit_wait_count[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inhibit_wait_count\(9),
	datad => VCC,
	cin => \inst3|inhibit_wait_count[8]~26\,
	combout => \inst3|inhibit_wait_count[9]~27_combout\,
	cout => \inst3|inhibit_wait_count[9]~28\);

-- Location: FF_X31_Y15_N13
\inst1|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|LessThan7~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|video_on_v~q\);

-- Location: FF_X31_Y14_N1
\inst1|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|video_on_h~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|video_on_h~q\);

-- Location: LCCOMB_X31_Y15_N12
\inst1|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~0_combout\ = (\inst1|video_on_v~q\ & \inst1|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|video_on_v~q\,
	datad => \inst1|video_on_h~q\,
	combout => \inst1|green_out~0_combout\);

-- Location: FF_X31_Y14_N5
\inst1|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(6),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(6));

-- Location: FF_X31_Y14_N31
\inst1|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_column[5]~feeder_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(5));

-- Location: FF_X31_Y14_N27
\inst1|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(3),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(3));

-- Location: FF_X31_Y13_N31
\inst1|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_column[1]~feeder_combout\,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(1));

-- Location: FF_X31_Y14_N21
\inst1|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(2),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(2));

-- Location: FF_X31_Y13_N29
\inst1|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(0),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(0));

-- Location: LCCOMB_X31_Y13_N28
\inst|ball_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~0_combout\ = (\inst1|pixel_column\(3)) # ((\inst1|pixel_column\(1) & (\inst1|pixel_column\(0) & \inst1|pixel_column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(1),
	datab => \inst1|pixel_column\(3),
	datac => \inst1|pixel_column\(0),
	datad => \inst1|pixel_column\(2),
	combout => \inst|ball_on~0_combout\);

-- Location: LCCOMB_X31_Y13_N26
\inst|ball_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~1_combout\ = (\inst1|pixel_column\(6) & ((\inst1|pixel_column\(5)) # ((\inst|ball_on~0_combout\ & \inst1|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(6),
	datab => \inst|ball_on~0_combout\,
	datac => \inst1|pixel_column\(5),
	datad => \inst1|pixel_column\(4),
	combout => \inst|ball_on~1_combout\);

-- Location: LCCOMB_X31_Y13_N22
\inst|ball_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~3_combout\ = ((\inst1|pixel_column\(3)) # (!\inst1|pixel_column\(2))) # (!\inst1|pixel_column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_column\(1),
	datab => \inst1|pixel_column\(3),
	datad => \inst1|pixel_column\(2),
	combout => \inst|ball_on~3_combout\);

-- Location: LCCOMB_X31_Y13_N24
\inst|ball_on~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~4_combout\ = (\inst|ball_on~3_combout\ & (!\inst|Add0~0_combout\ & !\inst|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_on~3_combout\,
	datab => \inst|Add0~0_combout\,
	datac => \inst|Add0~2_combout\,
	combout => \inst|ball_on~4_combout\);

-- Location: LCCOMB_X31_Y13_N14
\inst|ball_on~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~5_combout\ = (!\inst|Add0~6_combout\ & (!\inst|Add0~8_combout\ & ((\inst|ball_on~4_combout\) # (!\inst|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~6_combout\,
	datab => \inst|Add0~8_combout\,
	datac => \inst|Add0~4_combout\,
	datad => \inst|ball_on~4_combout\,
	combout => \inst|ball_on~5_combout\);

-- Location: FF_X32_Y14_N21
\inst1|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(4),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(4));

-- Location: FF_X32_Y15_N7
\inst1|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(2),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(2));

-- Location: FF_X32_Y15_N23
\inst1|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(1),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(1));

-- Location: FF_X31_Y12_N19
\inst1|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(0),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(0));

-- Location: LCCOMB_X31_Y12_N18
\inst|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~3_combout\ = (\inst|LessThan3~2_combout\ & ((\inst1|pixel_row\(1) & ((\inst1|pixel_row\(0)) # (!\inst|ball_y_pos\(1)))) # (!\inst1|pixel_row\(1) & (!\inst|ball_y_pos\(1) & \inst1|pixel_row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(1),
	datab => \inst|ball_y_pos\(1),
	datac => \inst1|pixel_row\(0),
	datad => \inst|LessThan3~2_combout\,
	combout => \inst|LessThan3~3_combout\);

-- Location: LCCOMB_X31_Y12_N24
\inst|LessThan3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~4_combout\ = (\inst1|pixel_row\(3) & ((\inst|ball_y_pos\(3)) # ((\inst1|pixel_row\(2) & !\inst|ball_y_pos\(2))))) # (!\inst1|pixel_row\(3) & (\inst1|pixel_row\(2) & (\inst|ball_y_pos\(3) & !\inst|ball_y_pos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(2),
	datab => \inst1|pixel_row\(3),
	datac => \inst|ball_y_pos\(3),
	datad => \inst|ball_y_pos\(2),
	combout => \inst|LessThan3~4_combout\);

-- Location: LCCOMB_X32_Y12_N30
\inst|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~5_combout\ = (\inst|Add3~0_combout\ & (\inst1|pixel_row\(4) & ((\inst|LessThan3~4_combout\) # (\inst|LessThan3~3_combout\)))) # (!\inst|Add3~0_combout\ & ((\inst|LessThan3~4_combout\) # ((\inst1|pixel_row\(4)) # 
-- (\inst|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst|LessThan3~4_combout\,
	datac => \inst1|pixel_row\(4),
	datad => \inst|LessThan3~3_combout\,
	combout => \inst|LessThan3~5_combout\);

-- Location: LCCOMB_X33_Y12_N30
\inst|Move_Ball~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Move_Ball~0_combout\ = (\inst3|left_button~q\) # (\inst3|right_button~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|left_button~q\,
	datad => \inst3|right_button~q\,
	combout => \inst|Move_Ball~0_combout\);

-- Location: FF_X30_Y14_N13
\inst1|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(0));

-- Location: LCCOMB_X30_Y14_N0
\inst1|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~9_combout\ = ((!\inst1|h_count\(2) & ((!\inst1|h_count\(1)) # (!\inst1|h_count\(0))))) # (!\inst1|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(0),
	datab => \inst1|h_count\(3),
	datac => \inst1|h_count\(1),
	datad => \inst1|h_count\(2),
	combout => \inst1|process_0~9_combout\);

-- Location: LCCOMB_X31_Y14_N26
\inst1|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~10_combout\ = (\inst1|h_count\(5) & \inst1|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(5),
	datad => \inst1|h_count\(4),
	combout => \inst1|process_0~10_combout\);

-- Location: LCCOMB_X31_Y14_N8
\inst1|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~11_combout\ = (!\inst1|h_count\(8) & (!\inst1|h_count\(6) & ((\inst1|process_0~9_combout\) # (!\inst1|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~9_combout\,
	datab => \inst1|h_count\(8),
	datac => \inst1|process_0~10_combout\,
	datad => \inst1|h_count\(6),
	combout => \inst1|process_0~11_combout\);

-- Location: FF_X38_Y12_N21
\inst3|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|PACKET_COUNT[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|PACKET_COUNT\(0));

-- Location: LCCOMB_X38_Y12_N30
\inst3|left_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|left_button~0_combout\ = (\inst3|PACKET_COUNT\(1) & \inst3|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|PACKET_COUNT\(1),
	datad => \inst3|PACKET_COUNT\(0),
	combout => \inst3|left_button~0_combout\);

-- Location: FF_X40_Y10_N21
\inst3|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|output_ready~feeder_combout\,
	clrn => \inst3|ALT_INV_send_data~q\,
	ena => \inst3|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|output_ready~q\);

-- Location: FF_X19_Y28_N17
\inst3|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|filter\(7));

-- Location: LCCOMB_X19_Y28_N16
\inst3|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|MOUSE_CLK_FILTER~0_combout\ = (\inst3|filter\(2) & (\inst3|filter\(7) & \inst3|filter\(4))) # (!\inst3|filter\(2) & ((\inst3|filter\(7)) # (\inst3|filter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|filter\(2),
	datac => \inst3|filter\(7),
	datad => \inst3|filter\(4),
	combout => \inst3|MOUSE_CLK_FILTER~0_combout\);

-- Location: LCCOMB_X38_Y12_N20
\inst3|PACKET_COUNT[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|PACKET_COUNT[0]~2_combout\ = (\inst3|PACKET_COUNT[1]~0_combout\ & ((\inst3|PACKET_COUNT\(1)) # (!\inst3|PACKET_COUNT\(0)))) # (!\inst3|PACKET_COUNT[1]~0_combout\ & (\inst3|PACKET_COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|PACKET_COUNT[1]~0_combout\,
	datac => \inst3|PACKET_COUNT\(0),
	datad => \inst3|PACKET_COUNT\(1),
	combout => \inst3|PACKET_COUNT[0]~2_combout\);

-- Location: FF_X39_Y12_N31
\inst3|mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|mouse_state.WAIT_CMD_ACK~q\);

-- Location: LCCOMB_X39_Y12_N30
\inst3|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~0_combout\ = (\inst3|mouse_state.WAIT_OUTPUT_READY~q\ & ((\inst3|output_ready~q\) # ((!\inst3|iready_set~q\ & \inst3|mouse_state.WAIT_CMD_ACK~q\)))) # (!\inst3|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst3|iready_set~q\ & 
-- (\inst3|mouse_state.WAIT_CMD_ACK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst3|iready_set~q\,
	datac => \inst3|mouse_state.WAIT_CMD_ACK~q\,
	datad => \inst3|output_ready~q\,
	combout => \inst3|Selector4~0_combout\);

-- Location: CLKCTRL_G9
\inst1|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|vert_sync_out~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y14_N0
\inst1|video_on_h~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|video_on_h~feeder_combout\ = \inst1|process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|process_0~0_combout\,
	combout => \inst1|video_on_h~feeder_combout\);

-- Location: LCCOMB_X31_Y14_N30
\inst1|pixel_column[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_column[5]~feeder_combout\ = \inst1|h_count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|h_count\(5),
	combout => \inst1|pixel_column[5]~feeder_combout\);

-- Location: LCCOMB_X31_Y13_N30
\inst1|pixel_column[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_column[1]~feeder_combout\ = \inst1|h_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|h_count\(1),
	combout => \inst1|pixel_column[1]~feeder_combout\);

-- Location: LCCOMB_X40_Y10_N20
\inst3|output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|output_ready~feeder_combout\ = \inst3|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|LessThan0~0_combout\,
	combout => \inst3|output_ready~feeder_combout\);

-- Location: IOOBUF_X41_Y25_N2
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_red_out);

-- Location: IOOBUF_X41_Y24_N23
\green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|green_out~q\,
	devoe => ww_devoe,
	o => ww_green_out);

-- Location: IOOBUF_X41_Y19_N9
\blue_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|blue_out~q\,
	devoe => ww_devoe,
	o => ww_blue_out);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => ww_horiz_sync_out);

-- Location: IOOBUF_X41_Y18_N23
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vert_sync_out);

-- Location: IOOBUF_X41_Y12_N23
\mouse_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|MOUSE_DATA_BUF~q\,
	oe => \inst3|mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => mouse_data);

-- Location: IOOBUF_X41_Y11_N2
\mouse_clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|mouse_state.INHIBIT_TRANS~q\,
	oe => \inst3|WideOr4~combout\,
	devoe => ww_devoe,
	o => mouse_clk);

-- Location: IOIBUF_X41_Y11_N1
\mouse_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_clk,
	o => \mouse_clk~input_o\);

-- Location: FF_X19_Y28_N23
\inst3|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mouse_clk~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|filter\(0));

-- Location: FF_X19_Y28_N19
\inst3|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|filter\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|filter\(1));

-- Location: LCCOMB_X19_Y28_N30
\inst3|filter[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|filter[2]~feeder_combout\ = \inst3|filter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|filter\(1),
	combout => \inst3|filter[2]~feeder_combout\);

-- Location: FF_X19_Y28_N31
\inst3|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|filter[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|filter\(2));

-- Location: FF_X19_Y28_N13
\inst3|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|filter\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|filter\(3));

-- Location: LCCOMB_X19_Y28_N10
\inst3|filter[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|filter[4]~feeder_combout\ = \inst3|filter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|filter\(3),
	combout => \inst3|filter[4]~feeder_combout\);

-- Location: FF_X19_Y28_N11
\inst3|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|filter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|filter\(4));

-- Location: LCCOMB_X19_Y28_N14
\inst3|filter[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|filter[5]~feeder_combout\ = \inst3|filter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|filter\(4),
	combout => \inst3|filter[5]~feeder_combout\);

-- Location: FF_X19_Y28_N15
\inst3|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|filter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|filter\(5));

-- Location: LCCOMB_X19_Y28_N28
\inst3|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|MOUSE_CLK_FILTER~1_combout\ = (\inst3|filter\(2) & ((\inst3|MOUSE_CLK_FILTER~q\) # ((\inst3|filter\(3) & \inst3|filter\(5))))) # (!\inst3|filter\(2) & (\inst3|MOUSE_CLK_FILTER~q\ & ((\inst3|filter\(3)) # (\inst3|filter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|filter\(2),
	datab => \inst3|filter\(3),
	datac => \inst3|filter\(5),
	datad => \inst3|MOUSE_CLK_FILTER~q\,
	combout => \inst3|MOUSE_CLK_FILTER~1_combout\);

-- Location: FF_X19_Y28_N27
\inst3|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|filter\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|filter\(6));

-- Location: LCCOMB_X19_Y28_N24
\inst3|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|MOUSE_CLK_FILTER~2_combout\ = (\inst3|filter\(0) & ((\inst3|MOUSE_CLK_FILTER~q\) # ((\inst3|filter\(1) & \inst3|filter\(6))))) # (!\inst3|filter\(0) & (\inst3|MOUSE_CLK_FILTER~q\ & ((\inst3|filter\(1)) # (\inst3|filter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|filter\(0),
	datab => \inst3|filter\(1),
	datac => \inst3|filter\(6),
	datad => \inst3|MOUSE_CLK_FILTER~q\,
	combout => \inst3|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X19_Y28_N20
\inst3|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|MOUSE_CLK_FILTER~3_combout\ = (\inst3|MOUSE_CLK_FILTER~0_combout\ & ((\inst3|MOUSE_CLK_FILTER~q\) # ((\inst3|MOUSE_CLK_FILTER~1_combout\ & \inst3|MOUSE_CLK_FILTER~2_combout\)))) # (!\inst3|MOUSE_CLK_FILTER~0_combout\ & (\inst3|MOUSE_CLK_FILTER~q\ & 
-- ((\inst3|MOUSE_CLK_FILTER~1_combout\) # (\inst3|MOUSE_CLK_FILTER~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|MOUSE_CLK_FILTER~0_combout\,
	datab => \inst3|MOUSE_CLK_FILTER~1_combout\,
	datac => \inst3|MOUSE_CLK_FILTER~q\,
	datad => \inst3|MOUSE_CLK_FILTER~2_combout\,
	combout => \inst3|MOUSE_CLK_FILTER~3_combout\);

-- Location: FF_X19_Y28_N21
\inst3|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|MOUSE_CLK_FILTER~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G13
\inst3|MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y10_N28
\inst3|SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|SHIFTOUT[9]~feeder_combout\);

-- Location: LCCOMB_X38_Y15_N0
\inst3|inhibit_wait_count[0]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inhibit_wait_count[0]~33_combout\ = \inst3|inhibit_wait_count\(0) $ (!\inst3|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inhibit_wait_count\(0),
	datad => \inst3|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst3|inhibit_wait_count[0]~33_combout\);

-- Location: FF_X38_Y15_N1
\inst3|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|inhibit_wait_count[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inhibit_wait_count\(0));

-- Location: LCCOMB_X38_Y15_N14
\inst3|inhibit_wait_count[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inhibit_wait_count[4]~17_combout\ = (\inst3|inhibit_wait_count\(4) & (!\inst3|inhibit_wait_count[3]~16\)) # (!\inst3|inhibit_wait_count\(4) & ((\inst3|inhibit_wait_count[3]~16\) # (GND)))
-- \inst3|inhibit_wait_count[4]~18\ = CARRY((!\inst3|inhibit_wait_count[3]~16\) # (!\inst3|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inhibit_wait_count\(4),
	datad => VCC,
	cin => \inst3|inhibit_wait_count[3]~16\,
	combout => \inst3|inhibit_wait_count[4]~17_combout\,
	cout => \inst3|inhibit_wait_count[4]~18\);

-- Location: FF_X38_Y15_N15
\inst3|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|inhibit_wait_count[4]~17_combout\,
	ena => \inst3|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inhibit_wait_count\(4));

-- Location: LCCOMB_X38_Y15_N18
\inst3|inhibit_wait_count[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inhibit_wait_count[6]~21_combout\ = (\inst3|inhibit_wait_count\(6) & (!\inst3|inhibit_wait_count[5]~20\)) # (!\inst3|inhibit_wait_count\(6) & ((\inst3|inhibit_wait_count[5]~20\) # (GND)))
-- \inst3|inhibit_wait_count[6]~22\ = CARRY((!\inst3|inhibit_wait_count[5]~20\) # (!\inst3|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inhibit_wait_count\(6),
	datad => VCC,
	cin => \inst3|inhibit_wait_count[5]~20\,
	combout => \inst3|inhibit_wait_count[6]~21_combout\,
	cout => \inst3|inhibit_wait_count[6]~22\);

-- Location: FF_X38_Y15_N19
\inst3|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|inhibit_wait_count[6]~21_combout\,
	ena => \inst3|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inhibit_wait_count\(6));

-- Location: LCCOMB_X38_Y15_N26
\inst3|inhibit_wait_count[10]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inhibit_wait_count[10]~29_combout\ = (\inst3|inhibit_wait_count\(10) & (!\inst3|inhibit_wait_count[9]~28\)) # (!\inst3|inhibit_wait_count\(10) & ((\inst3|inhibit_wait_count[9]~28\) # (GND)))
-- \inst3|inhibit_wait_count[10]~30\ = CARRY((!\inst3|inhibit_wait_count[9]~28\) # (!\inst3|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inhibit_wait_count\(10),
	datad => VCC,
	cin => \inst3|inhibit_wait_count[9]~28\,
	combout => \inst3|inhibit_wait_count[10]~29_combout\,
	cout => \inst3|inhibit_wait_count[10]~30\);

-- Location: LCCOMB_X38_Y15_N28
\inst3|inhibit_wait_count[11]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inhibit_wait_count[11]~31_combout\ = \inst3|inhibit_wait_count[10]~30\ $ (!\inst3|inhibit_wait_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inhibit_wait_count\(11),
	cin => \inst3|inhibit_wait_count[10]~30\,
	combout => \inst3|inhibit_wait_count[11]~31_combout\);

-- Location: FF_X38_Y15_N29
\inst3|inhibit_wait_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|inhibit_wait_count[11]~31_combout\,
	ena => \inst3|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inhibit_wait_count\(11));

-- Location: LCCOMB_X38_Y15_N4
\inst3|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Selector0~0_combout\ = (\inst3|mouse_state.INHIBIT_TRANS~q\) # ((\inst3|inhibit_wait_count\(10) & \inst3|inhibit_wait_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inhibit_wait_count\(10),
	datac => \inst3|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst3|inhibit_wait_count\(11),
	combout => \inst3|Selector0~0_combout\);

-- Location: FF_X38_Y15_N5
\inst3|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|mouse_state.INHIBIT_TRANS~q\);

-- Location: LCCOMB_X38_Y12_N8
\inst3|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|INCNT~3_combout\ = (!\inst3|INCNT\(0) & (((!\inst3|INCNT\(2) & !\inst3|INCNT\(1))) # (!\inst3|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|INCNT\(2),
	datab => \inst3|INCNT\(3),
	datac => \inst3|INCNT\(0),
	datad => \inst3|INCNT\(1),
	combout => \inst3|INCNT~3_combout\);

-- Location: FF_X38_Y15_N27
\inst3|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|inhibit_wait_count[10]~29_combout\,
	ena => \inst3|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inhibit_wait_count\(10));

-- Location: LCCOMB_X38_Y15_N6
\inst3|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~0_combout\ = (\inst3|inhibit_wait_count\(11) & (\inst3|inhibit_wait_count\(10) & !\inst3|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inhibit_wait_count\(11),
	datac => \inst3|inhibit_wait_count\(10),
	datad => \inst3|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst3|Selector1~0_combout\);

-- Location: FF_X38_Y15_N7
\inst3|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|mouse_state.LOAD_COMMAND~q\);

-- Location: FF_X39_Y10_N19
\inst3|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst3|mouse_state.LOAD_COMMAND~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X39_Y10_N16
\inst3|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~0_combout\ = (\inst3|mouse_state.LOAD_COMMAND2~q\) # ((!\inst3|output_ready~q\ & \inst3|mouse_state.WAIT_OUTPUT_READY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|output_ready~q\,
	datac => \inst3|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst3|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst3|Selector3~0_combout\);

-- Location: FF_X39_Y10_N17
\inst3|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: LCCOMB_X38_Y12_N24
\inst3|INCNT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|INCNT[3]~1_combout\ = (!\inst3|mouse_state.WAIT_OUTPUT_READY~q\ & \inst3|READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst3|READ_CHAR~q\,
	combout => \inst3|INCNT[3]~1_combout\);

-- Location: FF_X38_Y12_N9
\inst3|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|INCNT~3_combout\,
	ena => \inst3|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|INCNT\(0));

-- Location: LCCOMB_X38_Y12_N22
\inst3|INCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|INCNT~2_combout\ = (!\inst3|INCNT\(3) & (\inst3|INCNT\(1) $ (\inst3|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|INCNT\(3),
	datac => \inst3|INCNT\(1),
	datad => \inst3|INCNT\(0),
	combout => \inst3|INCNT~2_combout\);

-- Location: FF_X38_Y12_N23
\inst3|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|INCNT~2_combout\,
	ena => \inst3|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|INCNT\(1));

-- Location: LCCOMB_X38_Y12_N2
\inst3|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|INCNT~4_combout\ = (\inst3|INCNT\(0) & (\inst3|INCNT\(2) & (!\inst3|INCNT\(3) & \inst3|INCNT\(1)))) # (!\inst3|INCNT\(0) & (!\inst3|INCNT\(2) & (\inst3|INCNT\(3) & !\inst3|INCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|INCNT\(0),
	datab => \inst3|INCNT\(2),
	datac => \inst3|INCNT\(3),
	datad => \inst3|INCNT\(1),
	combout => \inst3|INCNT~4_combout\);

-- Location: FF_X38_Y12_N3
\inst3|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|INCNT~4_combout\,
	ena => \inst3|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|INCNT\(3));

-- Location: LCCOMB_X38_Y12_N4
\inst3|INCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|INCNT~0_combout\ = (!\inst3|INCNT\(3) & (\inst3|INCNT\(2) $ (((\inst3|INCNT\(0) & \inst3|INCNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|INCNT\(0),
	datab => \inst3|INCNT\(3),
	datac => \inst3|INCNT\(2),
	datad => \inst3|INCNT\(1),
	combout => \inst3|INCNT~0_combout\);

-- Location: FF_X38_Y12_N5
\inst3|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|INCNT~0_combout\,
	ena => \inst3|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|INCNT\(2));

-- Location: LCCOMB_X38_Y12_N28
\inst3|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LessThan1~0_combout\ = ((!\inst3|INCNT\(1) & (!\inst3|INCNT\(2) & !\inst3|INCNT\(0)))) # (!\inst3|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|INCNT\(1),
	datab => \inst3|INCNT\(2),
	datac => \inst3|INCNT\(0),
	datad => \inst3|INCNT\(3),
	combout => \inst3|LessThan1~0_combout\);

-- Location: LCCOMB_X39_Y12_N28
\inst3|READ_CHAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|READ_CHAR~0_combout\ = (\inst3|READ_CHAR~q\ & ((\inst3|LessThan1~0_combout\))) # (!\inst3|READ_CHAR~q\ & (!\mouse_data~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datac => \inst3|READ_CHAR~q\,
	datad => \inst3|LessThan1~0_combout\,
	combout => \inst3|READ_CHAR~0_combout\);

-- Location: FF_X39_Y12_N29
\inst3|READ_CHAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|READ_CHAR~0_combout\,
	ena => \inst3|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|READ_CHAR~q\);

-- Location: LCCOMB_X39_Y12_N24
\inst3|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|iready_set~0_combout\ = (\inst3|READ_CHAR~q\ & (((!\inst3|LessThan1~0_combout\)))) # (!\inst3|READ_CHAR~q\ & (\mouse_data~input_o\ & (\inst3|iready_set~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datab => \inst3|READ_CHAR~q\,
	datac => \inst3|iready_set~q\,
	datad => \inst3|LessThan1~0_combout\,
	combout => \inst3|iready_set~0_combout\);

-- Location: FF_X39_Y12_N25
\inst3|iready_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|iready_set~0_combout\,
	ena => \inst3|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|iready_set~q\);

-- Location: LCCOMB_X39_Y12_N26
\inst3|mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|mouse_state.INPUT_PACKETS~0_combout\ = (\inst3|mouse_state.INPUT_PACKETS~q\) # ((\inst3|mouse_state.WAIT_CMD_ACK~q\ & \inst3|iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mouse_state.WAIT_CMD_ACK~q\,
	datac => \inst3|mouse_state.INPUT_PACKETS~q\,
	datad => \inst3|iready_set~q\,
	combout => \inst3|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: FF_X39_Y12_N27
\inst3|mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|mouse_state.INPUT_PACKETS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|mouse_state.INPUT_PACKETS~q\);

-- Location: LCCOMB_X39_Y10_N30
\inst3|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Selector6~0_combout\ = (\inst3|send_data~q\ & ((\inst3|mouse_state.INPUT_PACKETS~q\) # (!\inst3|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|send_data~q\,
	datac => \inst3|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst3|mouse_state.INPUT_PACKETS~q\,
	combout => \inst3|Selector6~0_combout\);

-- Location: LCCOMB_X39_Y10_N10
\inst3|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Selector6~1_combout\ = (\inst3|mouse_state.LOAD_COMMAND~q\) # ((\inst3|Selector6~0_combout\) # (\inst3|mouse_state.LOAD_COMMAND2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mouse_state.LOAD_COMMAND~q\,
	datac => \inst3|Selector6~0_combout\,
	datad => \inst3|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst3|Selector6~1_combout\);

-- Location: FF_X39_Y10_N11
\inst3|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|send_data~q\);

-- Location: LCCOMB_X40_Y10_N30
\inst3|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|OUTCNT~0_combout\ = (\inst3|OUTCNT\(1) & (\inst3|OUTCNT\(2) & (!\inst3|OUTCNT\(3) & \inst3|OUTCNT\(0)))) # (!\inst3|OUTCNT\(1) & (!\inst3|OUTCNT\(2) & (\inst3|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|OUTCNT\(1),
	datab => \inst3|OUTCNT\(2),
	datac => \inst3|OUTCNT\(3),
	datad => \inst3|OUTCNT\(0),
	combout => \inst3|OUTCNT~0_combout\);

-- Location: LCCOMB_X40_Y10_N18
\inst3|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|output_ready~0_combout\ = (\inst3|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst3|send_char~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst3|send_char~q\,
	combout => \inst3|output_ready~0_combout\);

-- Location: FF_X40_Y10_N31
\inst3|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|OUTCNT~0_combout\,
	clrn => \inst3|ALT_INV_send_data~q\,
	ena => \inst3|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|OUTCNT\(3));

-- Location: LCCOMB_X40_Y10_N10
\inst3|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|OUTCNT~3_combout\ = (!\inst3|OUTCNT\(0) & (((!\inst3|OUTCNT\(1) & !\inst3|OUTCNT\(2))) # (!\inst3|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|OUTCNT\(1),
	datab => \inst3|OUTCNT\(2),
	datac => \inst3|OUTCNT\(0),
	datad => \inst3|OUTCNT\(3),
	combout => \inst3|OUTCNT~3_combout\);

-- Location: FF_X40_Y10_N11
\inst3|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|OUTCNT~3_combout\,
	clrn => \inst3|ALT_INV_send_data~q\,
	ena => \inst3|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|OUTCNT\(0));

-- Location: LCCOMB_X40_Y10_N14
\inst3|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|OUTCNT~1_combout\ = (!\inst3|OUTCNT\(3) & (\inst3|OUTCNT\(2) $ (((\inst3|OUTCNT\(1) & \inst3|OUTCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|OUTCNT\(1),
	datab => \inst3|OUTCNT\(0),
	datac => \inst3|OUTCNT\(2),
	datad => \inst3|OUTCNT\(3),
	combout => \inst3|OUTCNT~1_combout\);

-- Location: FF_X40_Y10_N15
\inst3|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|OUTCNT~1_combout\,
	clrn => \inst3|ALT_INV_send_data~q\,
	ena => \inst3|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|OUTCNT\(2));

-- Location: LCCOMB_X40_Y10_N24
\inst3|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|OUTCNT~2_combout\ = (\inst3|OUTCNT\(0) & (!\inst3|OUTCNT\(1) & ((!\inst3|OUTCNT\(3)) # (!\inst3|OUTCNT\(2))))) # (!\inst3|OUTCNT\(0) & (((\inst3|OUTCNT\(1) & !\inst3|OUTCNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|OUTCNT\(2),
	datab => \inst3|OUTCNT\(0),
	datac => \inst3|OUTCNT\(1),
	datad => \inst3|OUTCNT\(3),
	combout => \inst3|OUTCNT~2_combout\);

-- Location: FF_X40_Y10_N25
\inst3|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|OUTCNT~2_combout\,
	clrn => \inst3|ALT_INV_send_data~q\,
	ena => \inst3|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|OUTCNT\(1));

-- Location: LCCOMB_X40_Y10_N12
\inst3|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = (\inst3|OUTCNT\(3) & ((\inst3|OUTCNT\(2)) # (\inst3|OUTCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|OUTCNT\(3),
	datac => \inst3|OUTCNT\(2),
	datad => \inst3|OUTCNT\(1),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y10_N28
\inst3|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|send_char~0_combout\ = (\inst3|send_char~q\) # ((\inst3|mouse_state.WAIT_OUTPUT_READY~q\ & \inst3|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst3|LessThan0~0_combout\,
	datac => \inst3|send_char~q\,
	combout => \inst3|send_char~0_combout\);

-- Location: FF_X39_Y10_N29
\inst3|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|send_char~0_combout\,
	clrn => \inst3|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|send_char~q\);

-- Location: LCCOMB_X40_Y10_N16
\inst3|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|MOUSE_DATA_BUF~0_combout\ = (\inst3|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst3|send_char~q\ & !\inst3|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst3|send_char~q\,
	datad => \inst3|LessThan0~0_combout\,
	combout => \inst3|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X40_Y10_N29
\inst3|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|SHIFTOUT[9]~feeder_combout\,
	clrn => \inst3|ALT_INV_send_data~q\,
	ena => \inst3|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTOUT\(9));

-- Location: LCCOMB_X40_Y10_N4
\inst3|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTOUT[8]~3_combout\ = !\inst3|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|SHIFTOUT\(9),
	combout => \inst3|SHIFTOUT[8]~3_combout\);

-- Location: FF_X40_Y10_N5
\inst3|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|SHIFTOUT[8]~3_combout\,
	clrn => \inst3|ALT_INV_send_data~q\,
	ena => \inst3|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTOUT\(8));

-- Location: LCCOMB_X40_Y10_N26
\inst3|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTOUT[7]~feeder_combout\ = \inst3|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|SHIFTOUT\(8),
	combout => \inst3|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X40_Y10_N27
\inst3|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|SHIFTOUT[7]~feeder_combout\,
	clrn => \inst3|ALT_INV_send_data~q\,
	ena => \inst3|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTOUT\(7));

-- Location: LCCOMB_X40_Y10_N22
\inst3|SHIFTOUT[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTOUT[6]~feeder_combout\ = \inst3|SHIFTOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|SHIFTOUT\(7),
	combout => \inst3|SHIFTOUT[6]~feeder_combout\);

-- Location: FF_X40_Y10_N23
\inst3|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|SHIFTOUT[6]~feeder_combout\,
	clrn => \inst3|ALT_INV_send_data~q\,
	ena => \inst3|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTOUT\(6));

-- Location: FF_X40_Y10_N19
\inst3|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst3|SHIFTOUT\(6),
	clrn => \inst3|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst3|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTOUT\(5));

-- Location: LCCOMB_X40_Y10_N6
\inst3|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTOUT[4]~2_combout\ = !\inst3|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|SHIFTOUT\(5),
	combout => \inst3|SHIFTOUT[4]~2_combout\);

-- Location: FF_X40_Y10_N7
\inst3|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|SHIFTOUT[4]~2_combout\,
	clrn => \inst3|ALT_INV_send_data~q\,
	ena => \inst3|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTOUT\(4));

-- Location: LCCOMB_X40_Y10_N0
\inst3|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTOUT[3]~1_combout\ = !\inst3|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|SHIFTOUT\(4),
	combout => \inst3|SHIFTOUT[3]~1_combout\);

-- Location: FF_X40_Y10_N1
\inst3|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|SHIFTOUT[3]~1_combout\,
	clrn => \inst3|ALT_INV_send_data~q\,
	ena => \inst3|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTOUT\(3));

-- Location: LCCOMB_X40_Y10_N2
\inst3|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTOUT[2]~0_combout\ = !\inst3|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|SHIFTOUT\(3),
	combout => \inst3|SHIFTOUT[2]~0_combout\);

-- Location: FF_X40_Y10_N3
\inst3|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|SHIFTOUT[2]~0_combout\,
	clrn => \inst3|ALT_INV_send_data~q\,
	ena => \inst3|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTOUT\(2));

-- Location: LCCOMB_X40_Y10_N8
\inst3|SHIFTOUT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTOUT[1]~feeder_combout\ = \inst3|SHIFTOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|SHIFTOUT\(2),
	combout => \inst3|SHIFTOUT[1]~feeder_combout\);

-- Location: FF_X40_Y10_N9
\inst3|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|SHIFTOUT[1]~feeder_combout\,
	clrn => \inst3|ALT_INV_send_data~q\,
	ena => \inst3|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTOUT\(1));

-- Location: FF_X40_Y10_N17
\inst3|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst3|SHIFTOUT\(1),
	clrn => \inst3|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst3|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X39_Y10_N24
\inst3|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|WideOr4~combout\ = ((\inst3|mouse_state.LOAD_COMMAND~q\) # (\inst3|mouse_state.LOAD_COMMAND2~q\)) # (!\inst3|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mouse_state.INHIBIT_TRANS~q\,
	datac => \inst3|mouse_state.LOAD_COMMAND~q\,
	datad => \inst3|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst3|WideOr4~combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_2
\inst6|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
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
	clk0_divide_by => 2,
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
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3403,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \inst6|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst6|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst6|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst6|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y14_N14
\inst1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|h_count\(1) & (!\inst1|Add0~1\)) # (!\inst1|h_count\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: FF_X30_Y14_N15
\inst1|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(1));

-- Location: LCCOMB_X30_Y14_N16
\inst1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|h_count\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|h_count\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|h_count\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: FF_X30_Y14_N17
\inst1|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(2));

-- Location: LCCOMB_X30_Y14_N18
\inst1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|h_count\(3) & (!\inst1|Add0~5\)) # (!\inst1|h_count\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: FF_X30_Y14_N19
\inst1|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(3));

-- Location: LCCOMB_X30_Y14_N20
\inst1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|h_count\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|h_count\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|h_count\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: FF_X30_Y14_N21
\inst1|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(4));

-- Location: LCCOMB_X30_Y14_N22
\inst1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|h_count\(5) & (!\inst1|Add0~9\)) # (!\inst1|h_count\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X30_Y14_N28
\inst1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|h_count\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|h_count\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|h_count\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X30_Y14_N6
\inst1|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|h_count~1_combout\ = (\inst1|Add0~16_combout\ & !\inst1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~16_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|h_count~1_combout\);

-- Location: FF_X30_Y14_N7
\inst1|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(8));

-- Location: LCCOMB_X30_Y14_N26
\inst1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|h_count\(7) & (!\inst1|Add0~13\)) # (!\inst1|h_count\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: FF_X30_Y14_N27
\inst1|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(7));

-- Location: LCCOMB_X31_Y14_N2
\inst1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|h_count\(2) & (\inst1|h_count\(8) & (!\inst1|h_count\(7) & !\inst1|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(2),
	datab => \inst1|h_count\(8),
	datac => \inst1|h_count\(7),
	datad => \inst1|h_count\(5),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y14_N10
\inst1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (\inst1|h_count\(0) & (\inst1|h_count\(3) & (\inst1|h_count\(1) & \inst1|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(0),
	datab => \inst1|h_count\(3),
	datac => \inst1|h_count\(1),
	datad => \inst1|h_count\(4),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y14_N6
\inst1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (!\inst1|h_count\(6) & (\inst1|Equal0~1_combout\ & (\inst1|h_count\(9) & \inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(6),
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|h_count\(9),
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y14_N8
\inst1|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|h_count~2_combout\ = (\inst1|Add0~10_combout\ & !\inst1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~10_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|h_count~2_combout\);

-- Location: FF_X30_Y14_N9
\inst1|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(5));

-- Location: LCCOMB_X30_Y14_N24
\inst1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|h_count\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|h_count\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|h_count\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X30_Y14_N30
\inst1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = \inst1|h_count\(9) $ (\inst1|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(9),
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\);

-- Location: LCCOMB_X30_Y14_N4
\inst1|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|h_count~0_combout\ = (\inst1|Add0~18_combout\ & !\inst1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Add0~18_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|h_count~0_combout\);

-- Location: FF_X30_Y14_N5
\inst1|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(9));

-- Location: LCCOMB_X31_Y14_N22
\inst1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = (\inst1|h_count\(2)) # ((\inst1|h_count\(8)) # ((!\inst1|h_count\(5)) # (!\inst1|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(2),
	datab => \inst1|h_count\(8),
	datac => \inst1|h_count\(7),
	datad => \inst1|h_count\(5),
	combout => \inst1|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y14_N16
\inst1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Equal1~1_combout\ = (\inst1|h_count\(6)) # (((\inst1|Equal1~0_combout\) # (!\inst1|Equal0~0_combout\)) # (!\inst1|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(6),
	datab => \inst1|h_count\(9),
	datac => \inst1|Equal1~0_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Equal1~1_combout\);

-- Location: LCCOMB_X31_Y15_N16
\inst1|v_count[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[7]~6_combout\ = (\inst1|Add1~14_combout\ & ((\inst1|v_count[2]~0_combout\) # ((\inst1|v_count\(7) & !\inst1|v_count[8]~1_combout\)))) # (!\inst1|Add1~14_combout\ & (((\inst1|v_count\(7) & !\inst1|v_count[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~14_combout\,
	datab => \inst1|v_count[2]~0_combout\,
	datac => \inst1|v_count\(7),
	datad => \inst1|v_count[8]~1_combout\,
	combout => \inst1|v_count[7]~6_combout\);

-- Location: FF_X31_Y15_N17
\inst1|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(7));

-- Location: LCCOMB_X32_Y15_N6
\inst1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = \inst1|v_count\(0) $ (VCC)
-- \inst1|Add1~1\ = CARRY(\inst1|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(0),
	datad => VCC,
	combout => \inst1|Add1~0_combout\,
	cout => \inst1|Add1~1\);

-- Location: LCCOMB_X31_Y15_N30
\inst1|v_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count~11_combout\ = (\inst1|Add1~0_combout\ & ((\inst1|process_0~11_combout\) # ((\inst1|process_0~8_combout\) # (\inst1|process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~11_combout\,
	datab => \inst1|process_0~8_combout\,
	datac => \inst1|process_0~12_combout\,
	datad => \inst1|Add1~0_combout\,
	combout => \inst1|v_count~11_combout\);

-- Location: FF_X31_Y15_N31
\inst1|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count~11_combout\,
	ena => \inst1|v_count[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(0));

-- Location: LCCOMB_X32_Y15_N8
\inst1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~2_combout\ = (\inst1|v_count\(1) & (!\inst1|Add1~1\)) # (!\inst1|v_count\(1) & ((\inst1|Add1~1\) # (GND)))
-- \inst1|Add1~3\ = CARRY((!\inst1|Add1~1\) # (!\inst1|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(1),
	datad => VCC,
	cin => \inst1|Add1~1\,
	combout => \inst1|Add1~2_combout\,
	cout => \inst1|Add1~3\);

-- Location: LCCOMB_X32_Y15_N10
\inst1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~4_combout\ = (\inst1|v_count\(2) & (\inst1|Add1~3\ $ (GND))) # (!\inst1|v_count\(2) & (!\inst1|Add1~3\ & VCC))
-- \inst1|Add1~5\ = CARRY((\inst1|v_count\(2) & !\inst1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(2),
	datad => VCC,
	cin => \inst1|Add1~3\,
	combout => \inst1|Add1~4_combout\,
	cout => \inst1|Add1~5\);

-- Location: LCCOMB_X32_Y15_N2
\inst1|v_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[2]~9_combout\ = (\inst1|v_count[2]~0_combout\ & ((\inst1|Add1~4_combout\) # ((!\inst1|v_count[8]~1_combout\ & \inst1|v_count\(2))))) # (!\inst1|v_count[2]~0_combout\ & (!\inst1|v_count[8]~1_combout\ & (\inst1|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[2]~0_combout\,
	datab => \inst1|v_count[8]~1_combout\,
	datac => \inst1|v_count\(2),
	datad => \inst1|Add1~4_combout\,
	combout => \inst1|v_count[2]~9_combout\);

-- Location: FF_X32_Y15_N3
\inst1|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(2));

-- Location: LCCOMB_X32_Y15_N14
\inst1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~8_combout\ = (\inst1|v_count\(4) & (\inst1|Add1~7\ $ (GND))) # (!\inst1|v_count\(4) & (!\inst1|Add1~7\ & VCC))
-- \inst1|Add1~9\ = CARRY((\inst1|v_count\(4) & !\inst1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(4),
	datad => VCC,
	cin => \inst1|Add1~7\,
	combout => \inst1|Add1~8_combout\,
	cout => \inst1|Add1~9\);

-- Location: LCCOMB_X32_Y15_N16
\inst1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~10_combout\ = (\inst1|v_count\(5) & (!\inst1|Add1~9\)) # (!\inst1|v_count\(5) & ((\inst1|Add1~9\) # (GND)))
-- \inst1|Add1~11\ = CARRY((!\inst1|Add1~9\) # (!\inst1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(5),
	datad => VCC,
	cin => \inst1|Add1~9\,
	combout => \inst1|Add1~10_combout\,
	cout => \inst1|Add1~11\);

-- Location: LCCOMB_X32_Y15_N26
\inst1|v_count[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[5]~4_combout\ = (\inst1|v_count[2]~0_combout\ & ((\inst1|Add1~10_combout\) # ((!\inst1|v_count[8]~1_combout\ & \inst1|v_count\(5))))) # (!\inst1|v_count[2]~0_combout\ & (!\inst1|v_count[8]~1_combout\ & (\inst1|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[2]~0_combout\,
	datab => \inst1|v_count[8]~1_combout\,
	datac => \inst1|v_count\(5),
	datad => \inst1|Add1~10_combout\,
	combout => \inst1|v_count[5]~4_combout\);

-- Location: FF_X32_Y15_N27
\inst1|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(5));

-- Location: LCCOMB_X32_Y15_N4
\inst1|v_count[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[4]~7_combout\ = (\inst1|v_count[2]~0_combout\ & ((\inst1|Add1~8_combout\) # ((\inst1|v_count\(4) & !\inst1|v_count[8]~1_combout\)))) # (!\inst1|v_count[2]~0_combout\ & (((\inst1|v_count\(4) & !\inst1|v_count[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[2]~0_combout\,
	datab => \inst1|Add1~8_combout\,
	datac => \inst1|v_count\(4),
	datad => \inst1|v_count[8]~1_combout\,
	combout => \inst1|v_count[4]~7_combout\);

-- Location: FF_X32_Y15_N5
\inst1|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(4));

-- Location: LCCOMB_X31_Y15_N2
\inst1|v_count[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[3]~8_combout\ = (\inst1|Add1~6_combout\ & ((\inst1|v_count[2]~0_combout\) # ((\inst1|v_count\(3) & !\inst1|v_count[8]~1_combout\)))) # (!\inst1|Add1~6_combout\ & (((\inst1|v_count\(3) & !\inst1|v_count[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~6_combout\,
	datab => \inst1|v_count[2]~0_combout\,
	datac => \inst1|v_count\(3),
	datad => \inst1|v_count[8]~1_combout\,
	combout => \inst1|v_count[3]~8_combout\);

-- Location: FF_X31_Y15_N3
\inst1|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(3));

-- Location: LCCOMB_X31_Y15_N10
\inst1|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~7_combout\ = (!\inst1|v_count\(5) & (!\inst1|v_count\(4) & ((!\inst1|v_count\(3)) # (!\inst1|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(2),
	datab => \inst1|v_count\(5),
	datac => \inst1|v_count\(4),
	datad => \inst1|v_count\(3),
	combout => \inst1|process_0~7_combout\);

-- Location: LCCOMB_X31_Y15_N20
\inst1|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~8_combout\ = (!\inst1|v_count\(8) & (!\inst1|v_count\(7) & (!\inst1|v_count\(6) & \inst1|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(8),
	datab => \inst1|v_count\(7),
	datac => \inst1|v_count\(6),
	datad => \inst1|process_0~7_combout\,
	combout => \inst1|process_0~8_combout\);

-- Location: LCCOMB_X31_Y15_N14
\inst1|v_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[2]~0_combout\ = (!\inst1|Equal1~1_combout\ & ((\inst1|process_0~11_combout\) # ((\inst1|process_0~12_combout\) # (\inst1|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~11_combout\,
	datab => \inst1|Equal1~1_combout\,
	datac => \inst1|process_0~12_combout\,
	datad => \inst1|process_0~8_combout\,
	combout => \inst1|v_count[2]~0_combout\);

-- Location: LCCOMB_X32_Y15_N18
\inst1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~12_combout\ = (\inst1|v_count\(6) & (\inst1|Add1~11\ $ (GND))) # (!\inst1|v_count\(6) & (!\inst1|Add1~11\ & VCC))
-- \inst1|Add1~13\ = CARRY((\inst1|v_count\(6) & !\inst1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(6),
	datad => VCC,
	cin => \inst1|Add1~11\,
	combout => \inst1|Add1~12_combout\,
	cout => \inst1|Add1~13\);

-- Location: LCCOMB_X32_Y15_N22
\inst1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~16_combout\ = (\inst1|v_count\(8) & (\inst1|Add1~15\ $ (GND))) # (!\inst1|v_count\(8) & (!\inst1|Add1~15\ & VCC))
-- \inst1|Add1~17\ = CARRY((\inst1|v_count\(8) & !\inst1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|v_count\(8),
	datad => VCC,
	cin => \inst1|Add1~15\,
	combout => \inst1|Add1~16_combout\,
	cout => \inst1|Add1~17\);

-- Location: LCCOMB_X31_Y15_N6
\inst1|v_count[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[8]~3_combout\ = (\inst1|v_count[8]~1_combout\ & (\inst1|v_count[2]~0_combout\ & ((\inst1|Add1~16_combout\)))) # (!\inst1|v_count[8]~1_combout\ & ((\inst1|v_count\(8)) # ((\inst1|v_count[2]~0_combout\ & \inst1|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[8]~1_combout\,
	datab => \inst1|v_count[2]~0_combout\,
	datac => \inst1|v_count\(8),
	datad => \inst1|Add1~16_combout\,
	combout => \inst1|v_count[8]~3_combout\);

-- Location: FF_X31_Y15_N7
\inst1|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(8));

-- Location: LCCOMB_X32_Y15_N24
\inst1|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~18_combout\ = \inst1|Add1~17\ $ (\inst1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|v_count\(9),
	cin => \inst1|Add1~17\,
	combout => \inst1|Add1~18_combout\);

-- Location: LCCOMB_X32_Y15_N28
\inst1|v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[9]~2_combout\ = (\inst1|v_count[2]~0_combout\ & ((\inst1|Add1~18_combout\) # ((!\inst1|v_count[8]~1_combout\ & \inst1|v_count\(9))))) # (!\inst1|v_count[2]~0_combout\ & (!\inst1|v_count[8]~1_combout\ & (\inst1|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[2]~0_combout\,
	datab => \inst1|v_count[8]~1_combout\,
	datac => \inst1|v_count\(9),
	datad => \inst1|Add1~18_combout\,
	combout => \inst1|v_count[9]~2_combout\);

-- Location: FF_X32_Y15_N29
\inst1|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(9));

-- Location: LCCOMB_X31_Y14_N12
\inst1|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~12_combout\ = (((!\inst1|h_count\(7) & !\inst1|h_count\(8))) # (!\inst1|v_count\(9))) # (!\inst1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(7),
	datab => \inst1|h_count\(9),
	datac => \inst1|h_count\(8),
	datad => \inst1|v_count\(9),
	combout => \inst1|process_0~12_combout\);

-- Location: LCCOMB_X31_Y15_N24
\inst1|v_count[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[8]~1_combout\ = ((!\inst1|process_0~11_combout\ & (!\inst1|process_0~12_combout\ & !\inst1|process_0~8_combout\))) # (!\inst1|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~11_combout\,
	datab => \inst1|Equal1~1_combout\,
	datac => \inst1|process_0~12_combout\,
	datad => \inst1|process_0~8_combout\,
	combout => \inst1|v_count[8]~1_combout\);

-- Location: LCCOMB_X32_Y15_N30
\inst1|v_count[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count[6]~5_combout\ = (\inst1|v_count[2]~0_combout\ & ((\inst1|Add1~12_combout\) # ((!\inst1|v_count[8]~1_combout\ & \inst1|v_count\(6))))) # (!\inst1|v_count[2]~0_combout\ & (!\inst1|v_count[8]~1_combout\ & (\inst1|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count[2]~0_combout\,
	datab => \inst1|v_count[8]~1_combout\,
	datac => \inst1|v_count\(6),
	datad => \inst1|Add1~12_combout\,
	combout => \inst1|v_count[6]~5_combout\);

-- Location: FF_X32_Y15_N31
\inst1|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(6));

-- Location: LCCOMB_X32_Y14_N14
\inst1|pixel_row[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_row[6]~feeder_combout\ = \inst1|v_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|v_count\(6),
	combout => \inst1|pixel_row[6]~feeder_combout\);

-- Location: LCCOMB_X31_Y15_N26
\inst1|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~0_combout\ = (\inst1|v_count\(8) & (\inst1|v_count\(7) & (\inst1|v_count\(6) & \inst1|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(8),
	datab => \inst1|v_count\(7),
	datac => \inst1|v_count\(6),
	datad => \inst1|v_count\(5),
	combout => \inst1|LessThan7~0_combout\);

-- Location: LCCOMB_X31_Y15_N4
\inst1|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan7~1_combout\ = (!\inst1|LessThan7~0_combout\ & !\inst1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|LessThan7~0_combout\,
	datad => \inst1|v_count\(9),
	combout => \inst1|LessThan7~1_combout\);

-- Location: FF_X32_Y14_N15
\inst1|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_row[6]~feeder_combout\,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(6));

-- Location: FF_X32_Y15_N17
\inst1|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(5),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(5));

-- Location: LCCOMB_X32_Y14_N18
\inst1|pixel_row[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|pixel_row[3]~feeder_combout\ = \inst1|v_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|v_count\(3),
	combout => \inst1|pixel_row[3]~feeder_combout\);

-- Location: FF_X32_Y14_N19
\inst1|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|pixel_row[3]~feeder_combout\,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(3));

-- Location: LCCOMB_X32_Y13_N6
\inst|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst1|pixel_row\(4) & (\inst1|pixel_row\(3) $ (VCC))) # (!\inst1|pixel_row\(4) & (\inst1|pixel_row\(3) & VCC))
-- \inst|Add2~1\ = CARRY((\inst1|pixel_row\(4) & \inst1|pixel_row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(4),
	datab => \inst1|pixel_row\(3),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X32_Y13_N10
\inst|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst1|pixel_row\(6) & (\inst|Add2~3\ $ (GND))) # (!\inst1|pixel_row\(6) & (!\inst|Add2~3\ & VCC))
-- \inst|Add2~5\ = CARRY((\inst1|pixel_row\(6) & !\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(6),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X32_Y13_N12
\inst|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst1|pixel_row\(7) & (!\inst|Add2~5\)) # (!\inst1|pixel_row\(7) & ((\inst|Add2~5\) # (GND)))
-- \inst|Add2~7\ = CARRY((!\inst|Add2~5\) # (!\inst1|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(7),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: IOIBUF_X41_Y12_N22
\mouse_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_data,
	o => \mouse_data~input_o\);

-- Location: LCCOMB_X37_Y12_N20
\inst3|SHIFTIN[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTIN[8]~feeder_combout\ = \mouse_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_data~input_o\,
	combout => \inst3|SHIFTIN[8]~feeder_combout\);

-- Location: LCCOMB_X37_Y12_N28
\inst3|SHIFTIN[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTIN[0]~0_combout\ = (\inst3|READ_CHAR~q\ & (!\inst3|mouse_state.WAIT_OUTPUT_READY~q\ & \inst3|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|READ_CHAR~q\,
	datab => \inst3|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst3|LessThan1~0_combout\,
	combout => \inst3|SHIFTIN[0]~0_combout\);

-- Location: FF_X37_Y12_N21
\inst3|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|SHIFTIN[8]~feeder_combout\,
	ena => \inst3|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTIN\(8));

-- Location: LCCOMB_X37_Y12_N26
\inst3|SHIFTIN[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTIN[7]~feeder_combout\ = \inst3|SHIFTIN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|SHIFTIN\(8),
	combout => \inst3|SHIFTIN[7]~feeder_combout\);

-- Location: FF_X37_Y12_N27
\inst3|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|SHIFTIN[7]~feeder_combout\,
	ena => \inst3|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTIN\(7));

-- Location: LCCOMB_X37_Y12_N16
\inst3|SHIFTIN[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTIN[6]~feeder_combout\ = \inst3|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|SHIFTIN\(7),
	combout => \inst3|SHIFTIN[6]~feeder_combout\);

-- Location: FF_X37_Y12_N17
\inst3|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|SHIFTIN[6]~feeder_combout\,
	ena => \inst3|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTIN\(6));

-- Location: LCCOMB_X37_Y12_N10
\inst3|SHIFTIN[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTIN[5]~feeder_combout\ = \inst3|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|SHIFTIN\(6),
	combout => \inst3|SHIFTIN[5]~feeder_combout\);

-- Location: FF_X37_Y12_N11
\inst3|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|SHIFTIN[5]~feeder_combout\,
	ena => \inst3|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTIN\(5));

-- Location: LCCOMB_X37_Y12_N12
\inst3|SHIFTIN[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTIN[4]~feeder_combout\ = \inst3|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|SHIFTIN\(5),
	combout => \inst3|SHIFTIN[4]~feeder_combout\);

-- Location: FF_X37_Y12_N13
\inst3|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|SHIFTIN[4]~feeder_combout\,
	ena => \inst3|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTIN\(4));

-- Location: LCCOMB_X37_Y12_N18
\inst3|SHIFTIN[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTIN[3]~feeder_combout\ = \inst3|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|SHIFTIN\(4),
	combout => \inst3|SHIFTIN[3]~feeder_combout\);

-- Location: FF_X37_Y12_N19
\inst3|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|SHIFTIN[3]~feeder_combout\,
	ena => \inst3|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTIN\(3));

-- Location: LCCOMB_X37_Y12_N24
\inst3|SHIFTIN[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTIN[2]~feeder_combout\ = \inst3|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|SHIFTIN\(3),
	combout => \inst3|SHIFTIN[2]~feeder_combout\);

-- Location: FF_X37_Y12_N25
\inst3|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|SHIFTIN[2]~feeder_combout\,
	ena => \inst3|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTIN\(2));

-- Location: LCCOMB_X37_Y12_N22
\inst3|SHIFTIN[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|SHIFTIN[1]~feeder_combout\ = \inst3|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|SHIFTIN\(2),
	combout => \inst3|SHIFTIN[1]~feeder_combout\);

-- Location: FF_X37_Y12_N23
\inst3|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|SHIFTIN[1]~feeder_combout\,
	ena => \inst3|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTIN\(1));

-- Location: FF_X37_Y12_N29
\inst3|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst3|SHIFTIN\(1),
	sload => VCC,
	ena => \inst3|SHIFTIN[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|SHIFTIN\(0));

-- Location: LCCOMB_X38_Y12_N26
\inst3|PACKET_COUNT[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|PACKET_COUNT[1]~0_combout\ = (\inst3|READ_CHAR~q\ & (!\inst3|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst3|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|READ_CHAR~q\,
	datac => \inst3|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst3|LessThan1~0_combout\,
	combout => \inst3|PACKET_COUNT[1]~0_combout\);

-- Location: LCCOMB_X38_Y12_N14
\inst3|PACKET_COUNT[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|PACKET_COUNT[1]~1_combout\ = \inst3|PACKET_COUNT\(1) $ (((\inst3|PACKET_COUNT\(0) & \inst3|PACKET_COUNT[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PACKET_COUNT\(0),
	datab => \inst3|PACKET_COUNT[1]~0_combout\,
	datac => \inst3|PACKET_COUNT\(1),
	combout => \inst3|PACKET_COUNT[1]~1_combout\);

-- Location: FF_X38_Y12_N15
\inst3|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|PACKET_COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|PACKET_COUNT\(1));

-- Location: LCCOMB_X37_Y12_N8
\inst3|PACKET_CHAR1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|PACKET_CHAR1[0]~0_combout\ = (\inst3|PACKET_COUNT\(0) & (!\inst3|PACKET_COUNT\(1) & \inst3|PACKET_COUNT[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|PACKET_COUNT\(0),
	datab => \inst3|PACKET_COUNT\(1),
	datad => \inst3|PACKET_COUNT[1]~0_combout\,
	combout => \inst3|PACKET_CHAR1[0]~0_combout\);

-- Location: FF_X37_Y12_N9
\inst3|PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst3|SHIFTIN\(0),
	sload => VCC,
	ena => \inst3|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|PACKET_CHAR1\(0));

-- Location: LCCOMB_X38_Y12_N16
\inst3|left_button~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|left_button~1_combout\ = (\inst3|left_button~0_combout\ & (\inst3|READ_CHAR~q\ & (!\inst3|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst3|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|left_button~0_combout\,
	datab => \inst3|READ_CHAR~q\,
	datac => \inst3|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst3|LessThan1~0_combout\,
	combout => \inst3|left_button~1_combout\);

-- Location: FF_X33_Y12_N9
\inst3|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst3|PACKET_CHAR1\(0),
	sload => VCC,
	ena => \inst3|left_button~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|left_button~q\);

-- Location: LCCOMB_X37_Y12_N14
\inst3|PACKET_CHAR1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|PACKET_CHAR1[1]~feeder_combout\ = \inst3|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|SHIFTIN\(1),
	combout => \inst3|PACKET_CHAR1[1]~feeder_combout\);

-- Location: FF_X37_Y12_N15
\inst3|PACKET_CHAR1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst3|PACKET_CHAR1[1]~feeder_combout\,
	ena => \inst3|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|PACKET_CHAR1\(1));

-- Location: FF_X33_Y12_N7
\inst3|right_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst3|PACKET_CHAR1\(1),
	sload => VCC,
	ena => \inst3|left_button~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|right_button~q\);

-- Location: LCCOMB_X33_Y12_N10
\inst|ball_y_pos[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_y_pos[1]~10_cout\ = CARRY((!\inst3|right_button~q\ & !\inst3|left_button~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|right_button~q\,
	datab => \inst3|left_button~q\,
	datad => VCC,
	cout => \inst|ball_y_pos[1]~10_cout\);

-- Location: LCCOMB_X33_Y12_N12
\inst|ball_y_pos[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_y_pos[1]~11_combout\ = (\inst|Move_Ball~0_combout\ & ((\inst|ball_y_pos\(1) & (\inst|ball_y_pos[1]~10_cout\ & VCC)) # (!\inst|ball_y_pos\(1) & (!\inst|ball_y_pos[1]~10_cout\)))) # (!\inst|Move_Ball~0_combout\ & ((\inst|ball_y_pos\(1) & 
-- (!\inst|ball_y_pos[1]~10_cout\)) # (!\inst|ball_y_pos\(1) & ((\inst|ball_y_pos[1]~10_cout\) # (GND)))))
-- \inst|ball_y_pos[1]~12\ = CARRY((\inst|Move_Ball~0_combout\ & (!\inst|ball_y_pos\(1) & !\inst|ball_y_pos[1]~10_cout\)) # (!\inst|Move_Ball~0_combout\ & ((!\inst|ball_y_pos[1]~10_cout\) # (!\inst|ball_y_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Move_Ball~0_combout\,
	datab => \inst|ball_y_pos\(1),
	datad => VCC,
	cin => \inst|ball_y_pos[1]~10_cout\,
	combout => \inst|ball_y_pos[1]~11_combout\,
	cout => \inst|ball_y_pos[1]~12\);

-- Location: FF_X33_Y12_N13
\inst|ball_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst|ball_y_pos[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(1));

-- Location: LCCOMB_X33_Y12_N14
\inst|ball_y_pos[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_y_pos[2]~13_combout\ = ((\inst|ball_y_pos\(2) $ (\inst|Add4~0_combout\ $ (\inst|ball_y_pos[1]~12\)))) # (GND)
-- \inst|ball_y_pos[2]~14\ = CARRY((\inst|ball_y_pos\(2) & ((!\inst|ball_y_pos[1]~12\) # (!\inst|Add4~0_combout\))) # (!\inst|ball_y_pos\(2) & (!\inst|Add4~0_combout\ & !\inst|ball_y_pos[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_y_pos\(2),
	datab => \inst|Add4~0_combout\,
	datad => VCC,
	cin => \inst|ball_y_pos[1]~12\,
	combout => \inst|ball_y_pos[2]~13_combout\,
	cout => \inst|ball_y_pos[2]~14\);

-- Location: FF_X33_Y12_N15
\inst|ball_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst|ball_y_pos[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(2));

-- Location: LCCOMB_X33_Y12_N16
\inst|ball_y_pos[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_y_pos[3]~15_combout\ = (\inst|ball_y_pos\(3) & ((\inst|Add4~0_combout\ & (!\inst|ball_y_pos[2]~14\)) # (!\inst|Add4~0_combout\ & (\inst|ball_y_pos[2]~14\ & VCC)))) # (!\inst|ball_y_pos\(3) & ((\inst|Add4~0_combout\ & ((\inst|ball_y_pos[2]~14\) 
-- # (GND))) # (!\inst|Add4~0_combout\ & (!\inst|ball_y_pos[2]~14\))))
-- \inst|ball_y_pos[3]~16\ = CARRY((\inst|ball_y_pos\(3) & (\inst|Add4~0_combout\ & !\inst|ball_y_pos[2]~14\)) # (!\inst|ball_y_pos\(3) & ((\inst|Add4~0_combout\) # (!\inst|ball_y_pos[2]~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_y_pos\(3),
	datab => \inst|Add4~0_combout\,
	datad => VCC,
	cin => \inst|ball_y_pos[2]~14\,
	combout => \inst|ball_y_pos[3]~15_combout\,
	cout => \inst|ball_y_pos[3]~16\);

-- Location: FF_X33_Y12_N17
\inst|ball_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst|ball_y_pos[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(3));

-- Location: LCCOMB_X33_Y12_N4
\inst|ball_y_motion~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_y_motion~2_combout\ = (\inst|ball_y_pos\(8)) # ((\inst|ball_y_pos\(3) & ((\inst|ball_y_pos\(2)) # (\inst|ball_y_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_y_pos\(8),
	datab => \inst|ball_y_pos\(2),
	datac => \inst|ball_y_pos\(1),
	datad => \inst|ball_y_pos\(3),
	combout => \inst|ball_y_motion~2_combout\);

-- Location: LCCOMB_X33_Y12_N18
\inst|ball_y_pos[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_y_pos[4]~17_combout\ = ((\inst|ball_y_pos\(4) $ (\inst|Add4~0_combout\ $ (\inst|ball_y_pos[3]~16\)))) # (GND)
-- \inst|ball_y_pos[4]~18\ = CARRY((\inst|ball_y_pos\(4) & ((!\inst|ball_y_pos[3]~16\) # (!\inst|Add4~0_combout\))) # (!\inst|ball_y_pos\(4) & (!\inst|Add4~0_combout\ & !\inst|ball_y_pos[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_y_pos\(4),
	datab => \inst|Add4~0_combout\,
	datad => VCC,
	cin => \inst|ball_y_pos[3]~16\,
	combout => \inst|ball_y_pos[4]~17_combout\,
	cout => \inst|ball_y_pos[4]~18\);

-- Location: FF_X33_Y12_N19
\inst|ball_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst|ball_y_pos[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(4));

-- Location: LCCOMB_X33_Y12_N20
\inst|ball_y_pos[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_y_pos[5]~19_combout\ = (\inst|ball_y_pos\(5) & ((\inst|Add4~0_combout\ & (!\inst|ball_y_pos[4]~18\)) # (!\inst|Add4~0_combout\ & (\inst|ball_y_pos[4]~18\ & VCC)))) # (!\inst|ball_y_pos\(5) & ((\inst|Add4~0_combout\ & ((\inst|ball_y_pos[4]~18\) 
-- # (GND))) # (!\inst|Add4~0_combout\ & (!\inst|ball_y_pos[4]~18\))))
-- \inst|ball_y_pos[5]~20\ = CARRY((\inst|ball_y_pos\(5) & (\inst|Add4~0_combout\ & !\inst|ball_y_pos[4]~18\)) # (!\inst|ball_y_pos\(5) & ((\inst|Add4~0_combout\) # (!\inst|ball_y_pos[4]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_y_pos\(5),
	datab => \inst|Add4~0_combout\,
	datad => VCC,
	cin => \inst|ball_y_pos[4]~18\,
	combout => \inst|ball_y_pos[5]~19_combout\,
	cout => \inst|ball_y_pos[5]~20\);

-- Location: FF_X33_Y12_N21
\inst|ball_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst|ball_y_pos[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(5));

-- Location: LCCOMB_X33_Y12_N2
\inst|ball_y_motion~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_y_motion~3_combout\ = (\inst|ball_y_pos\(6)) # ((\inst|ball_y_pos\(4)) # ((\inst|ball_y_pos\(7)) # (\inst|ball_y_pos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_y_pos\(6),
	datab => \inst|ball_y_pos\(4),
	datac => \inst|ball_y_pos\(7),
	datad => \inst|ball_y_pos\(5),
	combout => \inst|ball_y_motion~3_combout\);

-- Location: LCCOMB_X33_Y12_N8
\inst|ball_y_motion~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_y_motion~4_combout\ = (!\inst|ball_y_pos\(9) & ((\inst|ball_y_motion~2_combout\) # (\inst|ball_y_motion~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_y_pos\(9),
	datab => \inst|ball_y_motion~2_combout\,
	datad => \inst|ball_y_motion~3_combout\,
	combout => \inst|ball_y_motion~4_combout\);

-- Location: LCCOMB_X33_Y12_N0
\inst|ball_y_motion[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_y_motion[2]~5_combout\ = (\inst|ball_y_motion~4_combout\ & (((\inst|ball_y_motion\(2))))) # (!\inst|ball_y_motion~4_combout\ & (!\inst3|right_button~q\ & (!\inst3|left_button~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|right_button~q\,
	datab => \inst3|left_button~q\,
	datac => \inst|ball_y_motion\(2),
	datad => \inst|ball_y_motion~4_combout\,
	combout => \inst|ball_y_motion[2]~5_combout\);

-- Location: FF_X33_Y12_N1
\inst|ball_y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst|ball_y_motion[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_motion\(2));

-- Location: LCCOMB_X33_Y12_N6
\inst|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add4~0_combout\ = \inst|ball_y_motion\(2) $ (((\inst3|left_button~q\) # (\inst3|right_button~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|left_button~q\,
	datac => \inst3|right_button~q\,
	datad => \inst|ball_y_motion\(2),
	combout => \inst|Add4~0_combout\);

-- Location: LCCOMB_X33_Y12_N22
\inst|ball_y_pos[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_y_pos[6]~21_combout\ = ((\inst|ball_y_pos\(6) $ (\inst|Add4~0_combout\ $ (\inst|ball_y_pos[5]~20\)))) # (GND)
-- \inst|ball_y_pos[6]~22\ = CARRY((\inst|ball_y_pos\(6) & ((!\inst|ball_y_pos[5]~20\) # (!\inst|Add4~0_combout\))) # (!\inst|ball_y_pos\(6) & (!\inst|Add4~0_combout\ & !\inst|ball_y_pos[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_y_pos\(6),
	datab => \inst|Add4~0_combout\,
	datad => VCC,
	cin => \inst|ball_y_pos[5]~20\,
	combout => \inst|ball_y_pos[6]~21_combout\,
	cout => \inst|ball_y_pos[6]~22\);

-- Location: LCCOMB_X33_Y12_N24
\inst|ball_y_pos[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_y_pos[7]~23_combout\ = (\inst|ball_y_pos\(7) & ((\inst|Add4~0_combout\ & (!\inst|ball_y_pos[6]~22\)) # (!\inst|Add4~0_combout\ & (\inst|ball_y_pos[6]~22\ & VCC)))) # (!\inst|ball_y_pos\(7) & ((\inst|Add4~0_combout\ & ((\inst|ball_y_pos[6]~22\) 
-- # (GND))) # (!\inst|Add4~0_combout\ & (!\inst|ball_y_pos[6]~22\))))
-- \inst|ball_y_pos[7]~24\ = CARRY((\inst|ball_y_pos\(7) & (\inst|Add4~0_combout\ & !\inst|ball_y_pos[6]~22\)) # (!\inst|ball_y_pos\(7) & ((\inst|Add4~0_combout\) # (!\inst|ball_y_pos[6]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_y_pos\(7),
	datab => \inst|Add4~0_combout\,
	datad => VCC,
	cin => \inst|ball_y_pos[6]~22\,
	combout => \inst|ball_y_pos[7]~23_combout\,
	cout => \inst|ball_y_pos[7]~24\);

-- Location: FF_X33_Y12_N25
\inst|ball_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst|ball_y_pos[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(7));

-- Location: LCCOMB_X33_Y12_N26
\inst|ball_y_pos[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_y_pos[8]~25_combout\ = ((\inst|ball_y_pos\(8) $ (\inst|Add4~0_combout\ $ (\inst|ball_y_pos[7]~24\)))) # (GND)
-- \inst|ball_y_pos[8]~26\ = CARRY((\inst|ball_y_pos\(8) & ((!\inst|ball_y_pos[7]~24\) # (!\inst|Add4~0_combout\))) # (!\inst|ball_y_pos\(8) & (!\inst|Add4~0_combout\ & !\inst|ball_y_pos[7]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_y_pos\(8),
	datab => \inst|Add4~0_combout\,
	datad => VCC,
	cin => \inst|ball_y_pos[7]~24\,
	combout => \inst|ball_y_pos[8]~25_combout\,
	cout => \inst|ball_y_pos[8]~26\);

-- Location: FF_X33_Y12_N27
\inst|ball_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst|ball_y_pos[8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(8));

-- Location: LCCOMB_X31_Y12_N2
\inst|ball_on~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~10_combout\ = (\inst|Add2~8_combout\ & (\inst|ball_y_pos\(8) & (\inst|Add2~6_combout\ $ (!\inst|ball_y_pos\(7))))) # (!\inst|Add2~8_combout\ & (!\inst|ball_y_pos\(8) & (\inst|Add2~6_combout\ $ (!\inst|ball_y_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~8_combout\,
	datab => \inst|Add2~6_combout\,
	datac => \inst|ball_y_pos\(7),
	datad => \inst|ball_y_pos\(8),
	combout => \inst|ball_on~10_combout\);

-- Location: FF_X33_Y12_N23
\inst|ball_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst|ball_y_pos[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(6));

-- Location: LCCOMB_X31_Y12_N8
\inst|ball_on~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~15_combout\ = (\inst|Add2~4_combout\ & (!\inst|Add2~2_combout\ & (\inst|ball_y_pos\(5) & \inst|ball_y_pos\(6)))) # (!\inst|Add2~4_combout\ & ((\inst|ball_y_pos\(6)) # ((!\inst|Add2~2_combout\ & \inst|ball_y_pos\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~2_combout\,
	datab => \inst|ball_y_pos\(5),
	datac => \inst|Add2~4_combout\,
	datad => \inst|ball_y_pos\(6),
	combout => \inst|ball_on~15_combout\);

-- Location: LCCOMB_X31_Y12_N4
\inst|ball_on~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~11_combout\ = (\inst|Add2~2_combout\ & (\inst|ball_y_pos\(5) & (\inst|Add2~4_combout\ $ (!\inst|ball_y_pos\(6))))) # (!\inst|Add2~2_combout\ & (!\inst|ball_y_pos\(5) & (\inst|Add2~4_combout\ $ (!\inst|ball_y_pos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~2_combout\,
	datab => \inst|ball_y_pos\(5),
	datac => \inst|Add2~4_combout\,
	datad => \inst|ball_y_pos\(6),
	combout => \inst|ball_on~11_combout\);

-- Location: LCCOMB_X31_Y12_N14
\inst|ball_on~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~12_combout\ = (\inst1|pixel_row\(3) & ((\inst|ball_y_pos\(3)) # ((!\inst1|pixel_row\(2) & \inst|ball_y_pos\(2))))) # (!\inst1|pixel_row\(3) & (!\inst1|pixel_row\(2) & (\inst|ball_y_pos\(3) & \inst|ball_y_pos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(2),
	datab => \inst1|pixel_row\(3),
	datac => \inst|ball_y_pos\(3),
	datad => \inst|ball_y_pos\(2),
	combout => \inst|ball_on~12_combout\);

-- Location: LCCOMB_X31_Y12_N12
\inst|LessThan3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~2_combout\ = (\inst1|pixel_row\(2) & (\inst|ball_y_pos\(2) & (\inst1|pixel_row\(3) $ (\inst|ball_y_pos\(3))))) # (!\inst1|pixel_row\(2) & (!\inst|ball_y_pos\(2) & (\inst1|pixel_row\(3) $ (\inst|ball_y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(2),
	datab => \inst1|pixel_row\(3),
	datac => \inst|ball_y_pos\(3),
	datad => \inst|ball_y_pos\(2),
	combout => \inst|LessThan3~2_combout\);

-- Location: LCCOMB_X31_Y12_N20
\inst|ball_on~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~13_combout\ = (\inst|ball_on~12_combout\) # ((!\inst1|pixel_row\(1) & (\inst|ball_y_pos\(1) & \inst|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(1),
	datab => \inst|ball_y_pos\(1),
	datac => \inst|ball_on~12_combout\,
	datad => \inst|LessThan3~2_combout\,
	combout => \inst|ball_on~13_combout\);

-- Location: LCCOMB_X31_Y12_N10
\inst|ball_on~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~14_combout\ = (\inst|ball_on~11_combout\ & ((\inst|ball_y_pos\(4) & ((\inst|ball_on~13_combout\) # (!\inst|Add2~0_combout\))) # (!\inst|ball_y_pos\(4) & (!\inst|Add2~0_combout\ & \inst|ball_on~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_y_pos\(4),
	datab => \inst|Add2~0_combout\,
	datac => \inst|ball_on~11_combout\,
	datad => \inst|ball_on~13_combout\,
	combout => \inst|ball_on~14_combout\);

-- Location: LCCOMB_X31_Y12_N6
\inst|ball_on~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~16_combout\ = (\inst|ball_on~10_combout\ & ((\inst|ball_on~15_combout\) # (\inst|ball_on~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_on~10_combout\,
	datac => \inst|ball_on~15_combout\,
	datad => \inst|ball_on~14_combout\,
	combout => \inst|ball_on~16_combout\);

-- Location: FF_X32_Y15_N11
\inst1|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(8),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(8));

-- Location: LCCOMB_X31_Y14_N24
\inst1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = ((!\inst1|h_count\(7) & !\inst1|h_count\(8))) # (!\inst1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(7),
	datab => \inst1|h_count\(8),
	datac => \inst1|h_count\(9),
	combout => \inst1|process_0~0_combout\);

-- Location: FF_X31_Y14_N7
\inst1|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(9),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(9));

-- Location: FF_X31_Y14_N19
\inst1|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(7),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(7));

-- Location: FF_X31_Y14_N13
\inst1|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(8),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(8));

-- Location: LCCOMB_X31_Y13_N20
\inst|ball_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~2_combout\ = (\inst1|pixel_column\(9) & ((\inst|ball_on~1_combout\) # ((\inst1|pixel_column\(7)) # (\inst1|pixel_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_on~1_combout\,
	datab => \inst1|pixel_column\(9),
	datac => \inst1|pixel_column\(7),
	datad => \inst1|pixel_column\(8),
	combout => \inst|ball_on~2_combout\);

-- Location: LCCOMB_X32_Y13_N14
\inst|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst1|pixel_row\(8) & (\inst|Add2~7\ $ (GND))) # (!\inst1|pixel_row\(8) & (!\inst|Add2~7\ & VCC))
-- \inst|Add2~9\ = CARRY((\inst1|pixel_row\(8) & !\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(8),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X32_Y13_N16
\inst|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = \inst|Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\);

-- Location: FF_X31_Y14_N29
\inst1|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|h_count\(4),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_column\(4));

-- Location: LCCOMB_X31_Y13_N12
\inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = !\inst|Add0~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\);

-- Location: LCCOMB_X33_Y12_N28
\inst|ball_y_pos[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_y_pos[9]~27_combout\ = \inst|ball_y_pos\(9) $ (\inst|Add4~0_combout\ $ (!\inst|ball_y_pos[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_y_pos\(9),
	datab => \inst|Add4~0_combout\,
	cin => \inst|ball_y_pos[8]~26\,
	combout => \inst|ball_y_pos[9]~27_combout\);

-- Location: FF_X33_Y12_N29
\inst|ball_y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|vert_sync_out~clkctrl_outclk\,
	d => \inst|ball_y_pos[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ball_y_pos\(9));

-- Location: LCCOMB_X32_Y13_N22
\inst|ball_on~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~7_combout\ = ((\inst|Add2~10_combout\) # ((\inst|Add0~12_combout\) # (\inst|ball_y_pos\(9)))) # (!\inst|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~10_combout\,
	datab => \inst|Add2~10_combout\,
	datac => \inst|Add0~12_combout\,
	datad => \inst|ball_y_pos\(9),
	combout => \inst|ball_on~7_combout\);

-- Location: LCCOMB_X32_Y13_N0
\inst|ball_on~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~6_combout\ = (\inst|Add2~8_combout\ & (!\inst|Add2~6_combout\ & (\inst|ball_y_pos\(7) & \inst|ball_y_pos\(8)))) # (!\inst|Add2~8_combout\ & ((\inst|ball_y_pos\(8)) # ((!\inst|Add2~6_combout\ & \inst|ball_y_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~6_combout\,
	datab => \inst|Add2~8_combout\,
	datac => \inst|ball_y_pos\(7),
	datad => \inst|ball_y_pos\(8),
	combout => \inst|ball_on~6_combout\);

-- Location: LCCOMB_X32_Y13_N28
\inst|ball_on~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~8_combout\ = (\inst|ball_on~5_combout\) # ((\inst|ball_on~2_combout\) # ((\inst|ball_on~7_combout\) # (\inst|ball_on~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_on~5_combout\,
	datab => \inst|ball_on~2_combout\,
	datac => \inst|ball_on~7_combout\,
	datad => \inst|ball_on~6_combout\,
	combout => \inst|ball_on~8_combout\);

-- Location: LCCOMB_X32_Y12_N12
\inst|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst|ball_y_pos\(5) & (!\inst|Add3~1\)) # (!\inst|ball_y_pos\(5) & ((\inst|Add3~1\) # (GND)))
-- \inst|Add3~3\ = CARRY((!\inst|Add3~1\) # (!\inst|ball_y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ball_y_pos\(5),
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: LCCOMB_X32_Y12_N14
\inst|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = (\inst|ball_y_pos\(6) & (\inst|Add3~3\ $ (GND))) # (!\inst|ball_y_pos\(6) & (!\inst|Add3~3\ & VCC))
-- \inst|Add3~5\ = CARRY((\inst|ball_y_pos\(6) & !\inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_y_pos\(6),
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: LCCOMB_X32_Y12_N16
\inst|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst|ball_y_pos\(7) & (!\inst|Add3~5\)) # (!\inst|ball_y_pos\(7) & ((\inst|Add3~5\) # (GND)))
-- \inst|Add3~7\ = CARRY((!\inst|Add3~5\) # (!\inst|ball_y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|ball_y_pos\(7),
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X32_Y12_N4
\inst|ball_on~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|ball_on~9_combout\ = (\inst|Add3~10_combout\) # ((\inst|ball_on~8_combout\) # ((\inst1|pixel_row\(8) & !\inst|Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~10_combout\,
	datab => \inst1|pixel_row\(8),
	datac => \inst|ball_on~8_combout\,
	datad => \inst|Add3~8_combout\,
	combout => \inst|ball_on~9_combout\);

-- Location: LCCOMB_X32_Y12_N8
\inst|LessThan3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~8_combout\ = \inst1|pixel_row\(8) $ (\inst|Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|pixel_row\(8),
	datad => \inst|Add3~8_combout\,
	combout => \inst|LessThan3~8_combout\);

-- Location: LCCOMB_X32_Y12_N0
\inst|LessThan3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~6_combout\ = (\inst1|pixel_row\(7) & (\inst|Add3~6_combout\ & (\inst1|pixel_row\(6) $ (!\inst|Add3~4_combout\)))) # (!\inst1|pixel_row\(7) & (!\inst|Add3~6_combout\ & (\inst1|pixel_row\(6) $ (!\inst|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(7),
	datab => \inst1|pixel_row\(6),
	datac => \inst|Add3~4_combout\,
	datad => \inst|Add3~6_combout\,
	combout => \inst|LessThan3~6_combout\);

-- Location: LCCOMB_X32_Y12_N26
\inst|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~7_combout\ = (\inst|LessThan3~6_combout\ & (\inst1|pixel_row\(5) $ (!\inst|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pixel_row\(5),
	datac => \inst|Add3~2_combout\,
	datad => \inst|LessThan3~6_combout\,
	combout => \inst|LessThan3~7_combout\);

-- Location: FF_X32_Y15_N21
\inst1|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|v_count\(7),
	sload => VCC,
	ena => \inst1|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pixel_row\(7));

-- Location: LCCOMB_X32_Y12_N6
\inst|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~0_combout\ = (\inst1|pixel_row\(6) & (((\inst1|pixel_row\(5) & !\inst|Add3~2_combout\)) # (!\inst|Add3~4_combout\))) # (!\inst1|pixel_row\(6) & (\inst1|pixel_row\(5) & (!\inst|Add3~4_combout\ & !\inst|Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pixel_row\(5),
	datab => \inst1|pixel_row\(6),
	datac => \inst|Add3~4_combout\,
	datad => \inst|Add3~2_combout\,
	combout => \inst|LessThan3~0_combout\);

-- Location: LCCOMB_X32_Y12_N28
\inst|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~1_combout\ = (\inst|Add3~6_combout\ & (\inst1|pixel_row\(7) & \inst|LessThan3~0_combout\)) # (!\inst|Add3~6_combout\ & ((\inst1|pixel_row\(7)) # (\inst|LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add3~6_combout\,
	datac => \inst1|pixel_row\(7),
	datad => \inst|LessThan3~0_combout\,
	combout => \inst|LessThan3~1_combout\);

-- Location: LCCOMB_X32_Y12_N2
\inst|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~9_combout\ = (!\inst|LessThan3~8_combout\ & ((\inst|LessThan3~1_combout\) # ((\inst|LessThan3~5_combout\ & \inst|LessThan3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan3~5_combout\,
	datab => \inst|LessThan3~8_combout\,
	datac => \inst|LessThan3~7_combout\,
	datad => \inst|LessThan3~1_combout\,
	combout => \inst|LessThan3~9_combout\);

-- Location: LCCOMB_X32_Y12_N22
\inst1|green_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~1_combout\ = (\inst1|green_out~0_combout\ & ((\inst|ball_on~16_combout\) # ((\inst|ball_on~9_combout\) # (\inst|LessThan3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|green_out~0_combout\,
	datab => \inst|ball_on~16_combout\,
	datac => \inst|ball_on~9_combout\,
	datad => \inst|LessThan3~9_combout\,
	combout => \inst1|green_out~1_combout\);

-- Location: LCCOMB_X32_Y12_N24
\inst1|green_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|green_out~feeder_combout\ = \inst1|green_out~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|green_out~1_combout\,
	combout => \inst1|green_out~feeder_combout\);

-- Location: FF_X32_Y12_N25
\inst1|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|green_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|green_out~q\);

-- Location: FF_X32_Y12_N23
\inst1|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|green_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|blue_out~q\);

-- Location: LCCOMB_X31_Y14_N28
\inst1|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~1_combout\ = (\inst1|h_count\(7) & (\inst1|h_count\(9) & !\inst1|h_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(7),
	datab => \inst1|h_count\(9),
	datad => \inst1|h_count\(8),
	combout => \inst1|process_0~1_combout\);

-- Location: FF_X30_Y14_N25
\inst1|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|h_count\(6));

-- Location: LCCOMB_X30_Y14_N2
\inst1|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~2_combout\ = (\inst1|h_count\(3)) # ((\inst1|h_count\(0) & (!\inst1|h_count\(5) & \inst1|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(0),
	datab => \inst1|h_count\(5),
	datac => \inst1|h_count\(1),
	datad => \inst1|h_count\(3),
	combout => \inst1|process_0~2_combout\);

-- Location: LCCOMB_X31_Y14_N10
\inst1|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~3_combout\ = (\inst1|h_count\(4) & ((\inst1|h_count\(2)) # (\inst1|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|h_count\(4),
	datac => \inst1|h_count\(2),
	datad => \inst1|process_0~2_combout\,
	combout => \inst1|process_0~3_combout\);

-- Location: LCCOMB_X31_Y14_N14
\inst1|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~4_combout\ = ((\inst1|h_count\(5) & (\inst1|h_count\(6) & \inst1|process_0~3_combout\)) # (!\inst1|h_count\(5) & (!\inst1|h_count\(6) & !\inst1|process_0~3_combout\))) # (!\inst1|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|h_count\(5),
	datab => \inst1|process_0~1_combout\,
	datac => \inst1|h_count\(6),
	datad => \inst1|process_0~3_combout\,
	combout => \inst1|process_0~4_combout\);

-- Location: FF_X31_Y14_N15
\inst1|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|horiz_sync~q\);

-- Location: LCCOMB_X32_Y14_N4
\inst1|horiz_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|horiz_sync_out~feeder_combout\ = \inst1|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|horiz_sync~q\,
	combout => \inst1|horiz_sync_out~feeder_combout\);

-- Location: FF_X32_Y14_N5
\inst1|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|horiz_sync_out~q\);

-- Location: LCCOMB_X31_Y15_N0
\inst1|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|v_count~10_combout\ = (\inst1|Add1~2_combout\ & ((\inst1|process_0~11_combout\) # ((\inst1|process_0~12_combout\) # (\inst1|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~11_combout\,
	datab => \inst1|process_0~12_combout\,
	datac => \inst1|Add1~2_combout\,
	datad => \inst1|process_0~8_combout\,
	combout => \inst1|v_count~10_combout\);

-- Location: FF_X31_Y15_N1
\inst1|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|v_count~10_combout\,
	ena => \inst1|v_count[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|v_count\(1));

-- Location: LCCOMB_X31_Y15_N28
\inst1|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~5_combout\ = ((\inst1|v_count\(0) $ (!\inst1|v_count\(1))) # (!\inst1|v_count\(3))) # (!\inst1|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(2),
	datab => \inst1|v_count\(3),
	datac => \inst1|v_count\(0),
	datad => \inst1|v_count\(1),
	combout => \inst1|process_0~5_combout\);

-- Location: LCCOMB_X32_Y15_N0
\inst1|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|process_0~6_combout\ = (\inst1|v_count\(4)) # ((\inst1|process_0~5_combout\) # ((\inst1|v_count\(9)) # (!\inst1|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|v_count\(4),
	datab => \inst1|process_0~5_combout\,
	datac => \inst1|LessThan7~0_combout\,
	datad => \inst1|v_count\(9),
	combout => \inst1|process_0~6_combout\);

-- Location: FF_X32_Y15_N1
\inst1|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|vert_sync~q\);

-- Location: LCCOMB_X40_Y15_N16
\inst1|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|vert_sync_out~feeder_combout\ = \inst1|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|vert_sync~q\,
	combout => \inst1|vert_sync_out~feeder_combout\);

-- Location: FF_X40_Y15_N17
\inst1|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|vert_sync_out~q\);

-- Location: IOIBUF_X0_Y23_N15
\pb1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb1,
	o => \pb1~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\pb2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb2,
	o => \pb2~input_o\);
END structure;


