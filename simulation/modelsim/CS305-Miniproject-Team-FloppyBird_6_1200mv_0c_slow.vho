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

-- DATE "05/19/2020 04:03:01"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	\CS305-Miniproject-Team-FloppyBird\ IS
    PORT (
	red_out : OUT std_logic;
	clk : IN std_logic;
	pb1 : IN std_logic;
	pb2 : IN std_logic;
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	vert_sync_out : OUT std_logic;
	seg0_dec : OUT std_logic;
	seg1_dec : OUT std_logic;
	seg0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END \CS305-Miniproject-Team-FloppyBird\;

-- Design Ports Information
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0_dec	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1_dec	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb2	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF \CS305-Miniproject-Team-FloppyBird\ IS
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
SIGNAL ww_pb1 : std_logic;
SIGNAL ww_pb2 : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_seg0_dec : std_logic;
SIGNAL ww_seg1_dec : std_logic;
SIGNAL ww_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \inst|filter[1]~feeder_combout\ : std_logic;
SIGNAL \inst|filter[4]~feeder_combout\ : std_logic;
SIGNAL \inst|filter[5]~feeder_combout\ : std_logic;
SIGNAL \inst|filter[6]~feeder_combout\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[9]~27\ : std_logic;
SIGNAL \inst|inhibit_wait_count[10]~28_combout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst|inhibit_wait_count[0]~30_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[1]~10_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[1]~11\ : std_logic;
SIGNAL \inst|inhibit_wait_count[2]~12_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[2]~13\ : std_logic;
SIGNAL \inst|inhibit_wait_count[3]~14_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[3]~15\ : std_logic;
SIGNAL \inst|inhibit_wait_count[4]~16_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[4]~17\ : std_logic;
SIGNAL \inst|inhibit_wait_count[5]~18_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[5]~19\ : std_logic;
SIGNAL \inst|inhibit_wait_count[6]~20_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[6]~21\ : std_logic;
SIGNAL \inst|inhibit_wait_count[7]~22_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[7]~23\ : std_logic;
SIGNAL \inst|inhibit_wait_count[8]~24_combout\ : std_logic;
SIGNAL \inst|inhibit_wait_count[8]~25\ : std_logic;
SIGNAL \inst|inhibit_wait_count[9]~26_combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst|send_char~0_combout\ : std_logic;
SIGNAL \inst|send_char~q\ : std_logic;
SIGNAL \inst|output_ready~0_combout\ : std_logic;
SIGNAL \inst|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|output_ready~feeder_combout\ : std_logic;
SIGNAL \inst|output_ready~q\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \inst|INCNT~2_combout\ : std_logic;
SIGNAL \inst|INCNT[3]~1_combout\ : std_logic;
SIGNAL \inst|INCNT~3_combout\ : std_logic;
SIGNAL \inst|INCNT~4_combout\ : std_logic;
SIGNAL \inst|INCNT~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst|READ_CHAR~q\ : std_logic;
SIGNAL \inst|iready_set~0_combout\ : std_logic;
SIGNAL \inst|iready_set~q\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \inst|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|Selector6~1_combout\ : std_logic;
SIGNAL \inst|send_data~q\ : std_logic;
SIGNAL \inst|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \inst|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst|WideOr4~combout\ : std_logic;
SIGNAL \pb1~input_o\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|h_count~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|h_count~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|h_count~2_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|Equal1~1_combout\ : std_logic;
SIGNAL \inst2|process_0~9_combout\ : std_logic;
SIGNAL \inst2|process_0~10_combout\ : std_logic;
SIGNAL \inst2|process_0~11_combout\ : std_logic;
SIGNAL \inst2|process_0~12_combout\ : std_logic;
SIGNAL \inst2|v_count[1]~1_combout\ : std_logic;
SIGNAL \inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst2|v_count~11_combout\ : std_logic;
SIGNAL \inst2|Add1~1\ : std_logic;
SIGNAL \inst2|Add1~2_combout\ : std_logic;
SIGNAL \inst2|v_count~10_combout\ : std_logic;
SIGNAL \inst2|Add1~3\ : std_logic;
SIGNAL \inst2|Add1~4_combout\ : std_logic;
SIGNAL \inst2|v_count[2]~9_combout\ : std_logic;
SIGNAL \inst2|Add1~5\ : std_logic;
SIGNAL \inst2|Add1~6_combout\ : std_logic;
SIGNAL \inst2|v_count[3]~8_combout\ : std_logic;
SIGNAL \inst2|Add1~7\ : std_logic;
SIGNAL \inst2|Add1~8_combout\ : std_logic;
SIGNAL \inst2|v_count[4]~7_combout\ : std_logic;
SIGNAL \inst2|Add1~9\ : std_logic;
SIGNAL \inst2|Add1~10_combout\ : std_logic;
SIGNAL \inst2|v_count[5]~3_combout\ : std_logic;
SIGNAL \inst2|Add1~11\ : std_logic;
SIGNAL \inst2|Add1~12_combout\ : std_logic;
SIGNAL \inst2|v_count[6]~4_combout\ : std_logic;
SIGNAL \inst2|Add1~13\ : std_logic;
SIGNAL \inst2|Add1~14_combout\ : std_logic;
SIGNAL \inst2|v_count[7]~5_combout\ : std_logic;
SIGNAL \inst2|process_0~7_combout\ : std_logic;
SIGNAL \inst2|Add1~15\ : std_logic;
SIGNAL \inst2|Add1~16_combout\ : std_logic;
SIGNAL \inst2|v_count[8]~6_combout\ : std_logic;
SIGNAL \inst2|process_0~8_combout\ : std_logic;
SIGNAL \inst2|v_count[2]~0_combout\ : std_logic;
SIGNAL \inst2|Add1~17\ : std_logic;
SIGNAL \inst2|Add1~18_combout\ : std_logic;
SIGNAL \inst2|v_count[9]~2_combout\ : std_logic;
SIGNAL \inst2|LessThan7~0_combout\ : std_logic;
SIGNAL \inst2|LessThan7~1_combout\ : std_logic;
SIGNAL \inst2|video_on_v~0_combout\ : std_logic;
SIGNAL \inst2|video_on_v~q\ : std_logic;
SIGNAL \inst2|process_0~0_combout\ : std_logic;
SIGNAL \inst2|video_on_h~0_combout\ : std_logic;
SIGNAL \inst2|video_on_h~q\ : std_logic;
SIGNAL \inst2|red_out~0_combout\ : std_logic;
SIGNAL \inst2|red_out~q\ : std_logic;
SIGNAL \pb2~input_o\ : std_logic;
SIGNAL \inst2|red_out~1_combout\ : std_logic;
SIGNAL \inst2|process_0~5_combout\ : std_logic;
SIGNAL \inst2|process_0~6_combout\ : std_logic;
SIGNAL \inst2|vert_sync~q\ : std_logic;
SIGNAL \inst2|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst2|vert_sync_out~q\ : std_logic;
SIGNAL \inst2|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|ball_x_pos[1]~10_combout\ : std_logic;
SIGNAL \inst1|ball_x_pos[1]~11\ : std_logic;
SIGNAL \inst1|ball_x_pos[2]~12_combout\ : std_logic;
SIGNAL \inst1|ball_x_pos[2]~13\ : std_logic;
SIGNAL \inst1|ball_x_pos[3]~14_combout\ : std_logic;
SIGNAL \inst1|ball_x_pos[3]~15\ : std_logic;
SIGNAL \inst1|ball_x_pos[4]~16_combout\ : std_logic;
SIGNAL \inst1|ball_x_pos[4]~17\ : std_logic;
SIGNAL \inst1|ball_x_pos[5]~18_combout\ : std_logic;
SIGNAL \inst1|ball_x_pos[5]~19\ : std_logic;
SIGNAL \inst1|ball_x_pos[6]~20_combout\ : std_logic;
SIGNAL \inst1|ball_x_pos[6]~21\ : std_logic;
SIGNAL \inst1|ball_x_pos[7]~22_combout\ : std_logic;
SIGNAL \inst1|ball_x_pos[7]~23\ : std_logic;
SIGNAL \inst1|ball_x_pos[8]~24_combout\ : std_logic;
SIGNAL \inst1|ball_x_pos[8]~25\ : std_logic;
SIGNAL \inst1|ball_x_pos[9]~26_combout\ : std_logic;
SIGNAL \inst1|ball_x_motion[2]~0_combout\ : std_logic;
SIGNAL \inst1|ball_x_motion[2]~1_combout\ : std_logic;
SIGNAL \inst1|ball_x_motion[2]~2_combout\ : std_logic;
SIGNAL \inst1|ball_x_motion[2]~3_combout\ : std_logic;
SIGNAL \inst1|ball_x_motion[2]~4_combout\ : std_logic;
SIGNAL \inst1|ball_x_pos[9]~27\ : std_logic;
SIGNAL \inst1|ball_x_pos[10]~28_combout\ : std_logic;
SIGNAL \inst1|Add1~1\ : std_logic;
SIGNAL \inst1|Add1~3\ : std_logic;
SIGNAL \inst1|Add1~5\ : std_logic;
SIGNAL \inst1|Add1~7\ : std_logic;
SIGNAL \inst1|Add1~9\ : std_logic;
SIGNAL \inst1|Add1~11\ : std_logic;
SIGNAL \inst1|Add1~12_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_cout\ : std_logic;
SIGNAL \inst1|LessThan0~3_cout\ : std_logic;
SIGNAL \inst1|LessThan0~5_cout\ : std_logic;
SIGNAL \inst1|LessThan0~7_cout\ : std_logic;
SIGNAL \inst1|LessThan0~9_cout\ : std_logic;
SIGNAL \inst1|LessThan0~11_cout\ : std_logic;
SIGNAL \inst1|LessThan0~13_cout\ : std_logic;
SIGNAL \inst1|LessThan0~15_cout\ : std_logic;
SIGNAL \inst1|LessThan0~17_cout\ : std_logic;
SIGNAL \inst1|LessThan0~18_combout\ : std_logic;
SIGNAL \inst1|Add2~1\ : std_logic;
SIGNAL \inst1|Add2~3\ : std_logic;
SIGNAL \inst1|Add2~5\ : std_logic;
SIGNAL \inst1|Add2~7\ : std_logic;
SIGNAL \inst1|Add2~9\ : std_logic;
SIGNAL \inst1|Add2~10_combout\ : std_logic;
SIGNAL \inst|SHIFTIN[8]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTIN[1]~0_combout\ : std_logic;
SIGNAL \inst|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \inst|SHIFTIN[0]~feeder_combout\ : std_logic;
SIGNAL \inst|PACKET_CHAR1[0]~feeder_combout\ : std_logic;
SIGNAL \inst|PACKET_COUNT[1]~0_combout\ : std_logic;
SIGNAL \inst|PACKET_COUNT[1]~1_combout\ : std_logic;
SIGNAL \inst|PACKET_COUNT[0]~2_combout\ : std_logic;
SIGNAL \inst|PACKET_CHAR1[1]~0_combout\ : std_logic;
SIGNAL \inst|left_button~feeder_combout\ : std_logic;
SIGNAL \inst|right_button~0_combout\ : std_logic;
SIGNAL \inst|right_button~1_combout\ : std_logic;
SIGNAL \inst|left_button~q\ : std_logic;
SIGNAL \inst1|ball_y_pos[5]~18\ : std_logic;
SIGNAL \inst1|ball_y_pos[6]~19_combout\ : std_logic;
SIGNAL \inst1|ball_y_pos[6]~20\ : std_logic;
SIGNAL \inst1|ball_y_pos[7]~21_combout\ : std_logic;
SIGNAL \inst1|ball_y_pos[7]~22\ : std_logic;
SIGNAL \inst1|ball_y_pos[8]~23_combout\ : std_logic;
SIGNAL \inst1|ball_y_motion~2_combout\ : std_logic;
SIGNAL \inst1|ball_y_motion~3_combout\ : std_logic;
SIGNAL \inst1|ball_y_pos[1]~9_combout\ : std_logic;
SIGNAL \inst1|ball_y_motion~0_combout\ : std_logic;
SIGNAL \inst1|Move_Ball~1_combout\ : std_logic;
SIGNAL \inst1|ball_y_motion~4_combout\ : std_logic;
SIGNAL \inst1|ball_y_pos[1]~10\ : std_logic;
SIGNAL \inst1|ball_y_pos[2]~11_combout\ : std_logic;
SIGNAL \inst1|ball_y_pos[2]~12\ : std_logic;
SIGNAL \inst1|ball_y_pos[3]~13_combout\ : std_logic;
SIGNAL \inst1|ball_y_pos[3]~14\ : std_logic;
SIGNAL \inst1|ball_y_pos[4]~15_combout\ : std_logic;
SIGNAL \inst1|ball_y_pos[4]~16\ : std_logic;
SIGNAL \inst1|ball_y_pos[5]~17_combout\ : std_logic;
SIGNAL \inst1|ball_y_motion~1_combout\ : std_logic;
SIGNAL \inst1|Move_Ball~0_combout\ : std_logic;
SIGNAL \inst1|ball_y_pos[8]~24\ : std_logic;
SIGNAL \inst1|ball_y_pos[9]~25_combout\ : std_logic;
SIGNAL \inst1|Add2~8_combout\ : std_logic;
SIGNAL \inst1|Add2~6_combout\ : std_logic;
SIGNAL \inst1|Add2~4_combout\ : std_logic;
SIGNAL \inst1|Add2~2_combout\ : std_logic;
SIGNAL \inst1|Add2~0_combout\ : std_logic;
SIGNAL \inst1|LessThan2~1_cout\ : std_logic;
SIGNAL \inst1|LessThan2~3_cout\ : std_logic;
SIGNAL \inst1|LessThan2~5_cout\ : std_logic;
SIGNAL \inst1|LessThan2~7_cout\ : std_logic;
SIGNAL \inst1|LessThan2~9_cout\ : std_logic;
SIGNAL \inst1|LessThan2~11_cout\ : std_logic;
SIGNAL \inst1|LessThan2~13_cout\ : std_logic;
SIGNAL \inst1|LessThan2~15_cout\ : std_logic;
SIGNAL \inst1|LessThan2~16_combout\ : std_logic;
SIGNAL \inst1|Add1~10_combout\ : std_logic;
SIGNAL \inst1|Add1~8_combout\ : std_logic;
SIGNAL \inst1|Add1~6_combout\ : std_logic;
SIGNAL \inst1|Add1~4_combout\ : std_logic;
SIGNAL \inst1|Add1~2_combout\ : std_logic;
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_cout\ : std_logic;
SIGNAL \inst1|LessThan1~3_cout\ : std_logic;
SIGNAL \inst1|LessThan1~5_cout\ : std_logic;
SIGNAL \inst1|LessThan1~7_cout\ : std_logic;
SIGNAL \inst1|LessThan1~9_cout\ : std_logic;
SIGNAL \inst1|LessThan1~11_cout\ : std_logic;
SIGNAL \inst1|LessThan1~13_cout\ : std_logic;
SIGNAL \inst1|LessThan1~15_cout\ : std_logic;
SIGNAL \inst1|LessThan1~17_cout\ : std_logic;
SIGNAL \inst1|LessThan1~18_combout\ : std_logic;
SIGNAL \inst1|ball_on~0_combout\ : std_logic;
SIGNAL \inst1|Add3~1\ : std_logic;
SIGNAL \inst1|Add3~3\ : std_logic;
SIGNAL \inst1|Add3~5\ : std_logic;
SIGNAL \inst1|Add3~7\ : std_logic;
SIGNAL \inst1|Add3~9\ : std_logic;
SIGNAL \inst1|Add3~10_combout\ : std_logic;
SIGNAL \inst1|ball_on~1_combout\ : std_logic;
SIGNAL \inst1|Add3~8_combout\ : std_logic;
SIGNAL \inst1|Add3~6_combout\ : std_logic;
SIGNAL \inst1|Add3~4_combout\ : std_logic;
SIGNAL \inst1|Add3~2_combout\ : std_logic;
SIGNAL \inst1|Add3~0_combout\ : std_logic;
SIGNAL \inst1|LessThan3~1_cout\ : std_logic;
SIGNAL \inst1|LessThan3~3_cout\ : std_logic;
SIGNAL \inst1|LessThan3~5_cout\ : std_logic;
SIGNAL \inst1|LessThan3~7_cout\ : std_logic;
SIGNAL \inst1|LessThan3~9_cout\ : std_logic;
SIGNAL \inst1|LessThan3~11_cout\ : std_logic;
SIGNAL \inst1|LessThan3~13_cout\ : std_logic;
SIGNAL \inst1|LessThan3~15_cout\ : std_logic;
SIGNAL \inst1|LessThan3~16_combout\ : std_logic;
SIGNAL \inst1|Add1~13\ : std_logic;
SIGNAL \inst1|Add1~14_combout\ : std_logic;
SIGNAL \inst1|ball_on~2_combout\ : std_logic;
SIGNAL \inst2|green_out~2_combout\ : std_logic;
SIGNAL \inst2|green_out~q\ : std_logic;
SIGNAL \inst2|green_out~3_combout\ : std_logic;
SIGNAL \inst2|blue_out~q\ : std_logic;
SIGNAL \inst2|process_0~1_combout\ : std_logic;
SIGNAL \inst2|process_0~2_combout\ : std_logic;
SIGNAL \inst2|process_0~3_combout\ : std_logic;
SIGNAL \inst2|process_0~4_combout\ : std_logic;
SIGNAL \inst2|horiz_sync~q\ : std_logic;
SIGNAL \inst2|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst2|horiz_sync_out~q\ : std_logic;
SIGNAL \inst|PACKET_CHAR1[1]~feeder_combout\ : std_logic;
SIGNAL \inst|right_button~feeder_combout\ : std_logic;
SIGNAL \inst|right_button~q\ : std_logic;
SIGNAL \inst8|cnt[0]~8_combout\ : std_logic;
SIGNAL \inst8|Equal1~0_combout\ : std_logic;
SIGNAL \inst8|cnt[6]~10_combout\ : std_logic;
SIGNAL \inst8|seconds[0]~18_combout\ : std_logic;
SIGNAL \inst8|seconds[0]~19\ : std_logic;
SIGNAL \inst8|seconds[1]~21_combout\ : std_logic;
SIGNAL \inst8|seconds[1]~22\ : std_logic;
SIGNAL \inst8|seconds[2]~23_combout\ : std_logic;
SIGNAL \inst8|seconds[2]~24\ : std_logic;
SIGNAL \inst8|seconds[3]~25_combout\ : std_logic;
SIGNAL \inst8|seconds[3]~26\ : std_logic;
SIGNAL \inst8|seconds[4]~27_combout\ : std_logic;
SIGNAL \inst8|seconds[4]~28\ : std_logic;
SIGNAL \inst8|seconds[5]~29_combout\ : std_logic;
SIGNAL \inst8|seconds[5]~30\ : std_logic;
SIGNAL \inst8|seconds[6]~31_combout\ : std_logic;
SIGNAL \inst8|seconds[6]~32\ : std_logic;
SIGNAL \inst8|seconds[7]~33_combout\ : std_logic;
SIGNAL \inst8|seconds[7]~34\ : std_logic;
SIGNAL \inst8|seconds[8]~35_combout\ : std_logic;
SIGNAL \inst8|seconds[8]~36\ : std_logic;
SIGNAL \inst8|seconds[9]~37_combout\ : std_logic;
SIGNAL \inst8|seconds[9]~38\ : std_logic;
SIGNAL \inst8|seconds[10]~39_combout\ : std_logic;
SIGNAL \inst8|seconds[10]~feeder_combout\ : std_logic;
SIGNAL \inst8|seconds[10]~40\ : std_logic;
SIGNAL \inst8|seconds[11]~41_combout\ : std_logic;
SIGNAL \inst8|seconds[11]~42\ : std_logic;
SIGNAL \inst8|seconds[12]~43_combout\ : std_logic;
SIGNAL \inst8|seconds[12]~44\ : std_logic;
SIGNAL \inst8|seconds[13]~45_combout\ : std_logic;
SIGNAL \inst8|seconds[13]~feeder_combout\ : std_logic;
SIGNAL \inst8|seconds[13]~46\ : std_logic;
SIGNAL \inst8|seconds[14]~47_combout\ : std_logic;
SIGNAL \inst8|seconds[14]~feeder_combout\ : std_logic;
SIGNAL \inst8|seconds[14]~48\ : std_logic;
SIGNAL \inst8|seconds[15]~49_combout\ : std_logic;
SIGNAL \inst8|seconds[15]~feeder_combout\ : std_logic;
SIGNAL \inst8|seconds[15]~50\ : std_logic;
SIGNAL \inst8|seconds[16]~51_combout\ : std_logic;
SIGNAL \inst8|seconds[16]~52\ : std_logic;
SIGNAL \inst8|seconds[17]~53_combout\ : std_logic;
SIGNAL \inst8|Equal0~2_combout\ : std_logic;
SIGNAL \inst8|Equal0~3_combout\ : std_logic;
SIGNAL \inst8|Equal0~0_combout\ : std_logic;
SIGNAL \inst8|Equal0~1_combout\ : std_logic;
SIGNAL \inst8|Equal0~4_combout\ : std_logic;
SIGNAL \inst8|seconds[17]~20_combout\ : std_logic;
SIGNAL \inst8|cnt[0]~9\ : std_logic;
SIGNAL \inst8|cnt[1]~11_combout\ : std_logic;
SIGNAL \inst8|cnt[1]~12\ : std_logic;
SIGNAL \inst8|cnt[2]~13_combout\ : std_logic;
SIGNAL \inst8|cnt[2]~14\ : std_logic;
SIGNAL \inst8|cnt[3]~15_combout\ : std_logic;
SIGNAL \inst8|cnt[3]~16\ : std_logic;
SIGNAL \inst8|cnt[4]~17_combout\ : std_logic;
SIGNAL \inst8|cnt[4]~18\ : std_logic;
SIGNAL \inst8|cnt[5]~19_combout\ : std_logic;
SIGNAL \inst8|cnt[5]~20\ : std_logic;
SIGNAL \inst8|cnt[6]~21_combout\ : std_logic;
SIGNAL \inst8|cnt[6]~22\ : std_logic;
SIGNAL \inst8|cnt[7]~23_combout\ : std_logic;
SIGNAL \inst8|Equal1~1_combout\ : std_logic;
SIGNAL \inst8|output~0_combout\ : std_logic;
SIGNAL \inst8|output~1_combout\ : std_logic;
SIGNAL \inst8|output~q\ : std_logic;
SIGNAL \inst4|Q[0]~0_combout\ : std_logic;
SIGNAL \inst4|Q[1]~1_combout\ : std_logic;
SIGNAL \inst4|Q[2]~2_combout\ : std_logic;
SIGNAL \inst4|Q[3]~3_combout\ : std_logic;
SIGNAL \inst4|Q[3]~4_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst7|Mux3~0_combout\ : std_logic;
SIGNAL \inst7|Mux4~0_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~0_combout\ : std_logic;
SIGNAL \inst|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst2|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|ball_x_pos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst8|seconds\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7|LED_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst1|ball_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ball_x_motion\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ball_y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst8|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|inhibit_wait_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst2|ALT_INV_v_count[1]~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;

BEGIN

red_out <= ww_red_out;
ww_clk <= clk;
ww_pb1 <= pb1;
ww_pb2 <= pb2;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
horiz_sync_out <= ww_horiz_sync_out;
vert_sync_out <= ww_vert_sync_out;
seg0_dec <= ww_seg0_dec;
seg1_dec <= ww_seg1_dec;
seg0 <= ww_seg0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst3|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst2|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|vert_sync_out~q\);

\inst|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|MOUSE_CLK_FILTER~q\);

\inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst|MOUSE_CLK_FILTER~clkctrl_outclk\;
\inst|ALT_INV_send_data~q\ <= NOT \inst|send_data~q\;
\inst2|ALT_INV_v_count[1]~1_combout\ <= NOT \inst2|v_count[1]~1_combout\;
\inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst|mouse_state.INHIBIT_TRANS~q\;
\inst2|ALT_INV_process_0~0_combout\ <= NOT \inst2|process_0~0_combout\;
\inst2|ALT_INV_LessThan7~1_combout\ <= NOT \inst2|LessThan7~1_combout\;
\inst|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \inst|mouse_state.WAIT_OUTPUT_READY~q\;

-- Location: IOOBUF_X41_Y25_N2
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|red_out~q\,
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
	i => \inst2|green_out~q\,
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
	i => \inst2|blue_out~q\,
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
	i => \inst2|horiz_sync_out~q\,
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
	i => \inst2|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vert_sync_out);

-- Location: IOOBUF_X23_Y29_N9
\seg0_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|right_button~q\,
	devoe => ww_devoe,
	o => ww_seg0_dec);

-- Location: IOOBUF_X26_Y29_N30
\seg1_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|left_button~q\,
	devoe => ww_devoe,
	o => ww_seg1_dec);

-- Location: IOOBUF_X26_Y29_N16
\seg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LED_out\(6),
	devoe => ww_devoe,
	o => ww_seg0(6));

-- Location: IOOBUF_X28_Y29_N23
\seg0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LED_out\(5),
	devoe => ww_devoe,
	o => ww_seg0(5));

-- Location: IOOBUF_X26_Y29_N9
\seg0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LED_out\(4),
	devoe => ww_devoe,
	o => ww_seg0(4));

-- Location: IOOBUF_X28_Y29_N30
\seg0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LED_out\(3),
	devoe => ww_devoe,
	o => ww_seg0(3));

-- Location: IOOBUF_X26_Y29_N2
\seg0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LED_out\(2),
	devoe => ww_devoe,
	o => ww_seg0(2));

-- Location: IOOBUF_X21_Y29_N30
\seg0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LED_out\(1),
	devoe => ww_devoe,
	o => ww_seg0(1));

-- Location: IOOBUF_X21_Y29_N23
\seg0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LED_out\(0),
	devoe => ww_devoe,
	o => ww_seg0(0));

-- Location: IOOBUF_X41_Y12_N23
\mouse_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MOUSE_DATA_BUF~q\,
	oe => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
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
	i => \inst|mouse_state.INHIBIT_TRANS~q\,
	oe => \inst|WideOr4~combout\,
	devoe => ww_devoe,
	o => mouse_clk);

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
\inst3|altpll_component|auto_generated|pll1\ : cycloneiii_pll
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
	pll_compensation_delay => 5052,
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
	fbin => \inst3|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst3|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst3|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst3|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

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

-- Location: FF_X19_Y28_N13
\inst|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \mouse_clk~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(0));

-- Location: LCCOMB_X19_Y28_N30
\inst|filter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|filter[1]~feeder_combout\ = \inst|filter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|filter\(0),
	combout => \inst|filter[1]~feeder_combout\);

-- Location: FF_X19_Y28_N31
\inst|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|filter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(1));

-- Location: FF_X19_Y28_N23
\inst|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|filter\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(2));

-- Location: FF_X19_Y28_N21
\inst|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|filter\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(3));

-- Location: LCCOMB_X19_Y28_N18
\inst|filter[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|filter[4]~feeder_combout\ = \inst|filter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|filter\(3),
	combout => \inst|filter[4]~feeder_combout\);

-- Location: FF_X19_Y28_N19
\inst|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|filter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(4));

-- Location: LCCOMB_X19_Y28_N16
\inst|filter[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|filter[5]~feeder_combout\ = \inst|filter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|filter\(4),
	combout => \inst|filter[5]~feeder_combout\);

-- Location: FF_X19_Y28_N17
\inst|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|filter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(5));

-- Location: LCCOMB_X19_Y28_N8
\inst|filter[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|filter[6]~feeder_combout\ = \inst|filter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|filter\(5),
	combout => \inst|filter[6]~feeder_combout\);

-- Location: FF_X19_Y28_N9
\inst|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|filter[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(6));

-- Location: FF_X19_Y28_N27
\inst|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|filter\(7));

-- Location: LCCOMB_X19_Y28_N26
\inst|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MOUSE_CLK_FILTER~0_combout\ = (\inst|filter\(2) & (\inst|filter\(4) & \inst|filter\(7))) # (!\inst|filter\(2) & ((\inst|filter\(4)) # (\inst|filter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|filter\(2),
	datab => \inst|filter\(4),
	datac => \inst|filter\(7),
	combout => \inst|MOUSE_CLK_FILTER~0_combout\);

-- Location: LCCOMB_X19_Y28_N28
\inst|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MOUSE_CLK_FILTER~1_combout\ = (\inst|filter\(3) & ((\inst|MOUSE_CLK_FILTER~q\) # ((\inst|filter\(5) & \inst|filter\(2))))) # (!\inst|filter\(3) & (\inst|MOUSE_CLK_FILTER~q\ & ((\inst|filter\(5)) # (\inst|filter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|filter\(3),
	datab => \inst|filter\(5),
	datac => \inst|filter\(2),
	datad => \inst|MOUSE_CLK_FILTER~q\,
	combout => \inst|MOUSE_CLK_FILTER~1_combout\);

-- Location: LCCOMB_X19_Y28_N24
\inst|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MOUSE_CLK_FILTER~2_combout\ = (\inst|filter\(0) & ((\inst|MOUSE_CLK_FILTER~q\) # ((\inst|filter\(6) & \inst|filter\(1))))) # (!\inst|filter\(0) & (\inst|MOUSE_CLK_FILTER~q\ & ((\inst|filter\(6)) # (\inst|filter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|filter\(0),
	datab => \inst|filter\(6),
	datac => \inst|filter\(1),
	datad => \inst|MOUSE_CLK_FILTER~q\,
	combout => \inst|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X19_Y28_N10
\inst|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MOUSE_CLK_FILTER~3_combout\ = (\inst|MOUSE_CLK_FILTER~0_combout\ & ((\inst|MOUSE_CLK_FILTER~q\) # ((\inst|MOUSE_CLK_FILTER~1_combout\ & \inst|MOUSE_CLK_FILTER~2_combout\)))) # (!\inst|MOUSE_CLK_FILTER~0_combout\ & (\inst|MOUSE_CLK_FILTER~q\ & 
-- ((\inst|MOUSE_CLK_FILTER~1_combout\) # (\inst|MOUSE_CLK_FILTER~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MOUSE_CLK_FILTER~0_combout\,
	datab => \inst|MOUSE_CLK_FILTER~1_combout\,
	datac => \inst|MOUSE_CLK_FILTER~q\,
	datad => \inst|MOUSE_CLK_FILTER~2_combout\,
	combout => \inst|MOUSE_CLK_FILTER~3_combout\);

-- Location: FF_X19_Y28_N11
\inst|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|MOUSE_CLK_FILTER~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G12
\inst|MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y23_N0
\inst|SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|SHIFTOUT[9]~feeder_combout\);

-- Location: LCCOMB_X26_Y23_N26
\inst|inhibit_wait_count[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[9]~26_combout\ = (\inst|inhibit_wait_count\(9) & (\inst|inhibit_wait_count[8]~25\ $ (GND))) # (!\inst|inhibit_wait_count\(9) & (!\inst|inhibit_wait_count[8]~25\ & VCC))
-- \inst|inhibit_wait_count[9]~27\ = CARRY((\inst|inhibit_wait_count\(9) & !\inst|inhibit_wait_count[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(9),
	datad => VCC,
	cin => \inst|inhibit_wait_count[8]~25\,
	combout => \inst|inhibit_wait_count[9]~26_combout\,
	cout => \inst|inhibit_wait_count[9]~27\);

-- Location: LCCOMB_X26_Y23_N28
\inst|inhibit_wait_count[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[10]~28_combout\ = \inst|inhibit_wait_count[9]~27\ $ (\inst|inhibit_wait_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|inhibit_wait_count\(10),
	cin => \inst|inhibit_wait_count[9]~27\,
	combout => \inst|inhibit_wait_count[10]~28_combout\);

-- Location: FF_X26_Y23_N29
\inst|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[10]~28_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(10));

-- Location: LCCOMB_X23_Y23_N28
\inst|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|mouse_state.INHIBIT_TRANS~q\) # ((\inst|inhibit_wait_count\(10) & \inst|inhibit_wait_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(10),
	datac => \inst|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst|inhibit_wait_count\(9),
	combout => \inst|Selector0~0_combout\);

-- Location: FF_X23_Y23_N29
\inst|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_state.INHIBIT_TRANS~q\);

-- Location: LCCOMB_X23_Y23_N8
\inst|inhibit_wait_count[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[0]~30_combout\ = \inst|inhibit_wait_count\(0) $ (!\inst|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inhibit_wait_count\(0),
	datad => \inst|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst|inhibit_wait_count[0]~30_combout\);

-- Location: FF_X23_Y23_N9
\inst|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(0));

-- Location: LCCOMB_X26_Y23_N10
\inst|inhibit_wait_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[1]~10_combout\ = (\inst|inhibit_wait_count\(1) & (\inst|inhibit_wait_count\(0) $ (VCC))) # (!\inst|inhibit_wait_count\(1) & (\inst|inhibit_wait_count\(0) & VCC))
-- \inst|inhibit_wait_count[1]~11\ = CARRY((\inst|inhibit_wait_count\(1) & \inst|inhibit_wait_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(1),
	datab => \inst|inhibit_wait_count\(0),
	datad => VCC,
	combout => \inst|inhibit_wait_count[1]~10_combout\,
	cout => \inst|inhibit_wait_count[1]~11\);

-- Location: FF_X26_Y23_N11
\inst|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[1]~10_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(1));

-- Location: LCCOMB_X26_Y23_N12
\inst|inhibit_wait_count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[2]~12_combout\ = (\inst|inhibit_wait_count\(2) & (!\inst|inhibit_wait_count[1]~11\)) # (!\inst|inhibit_wait_count\(2) & ((\inst|inhibit_wait_count[1]~11\) # (GND)))
-- \inst|inhibit_wait_count[2]~13\ = CARRY((!\inst|inhibit_wait_count[1]~11\) # (!\inst|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(2),
	datad => VCC,
	cin => \inst|inhibit_wait_count[1]~11\,
	combout => \inst|inhibit_wait_count[2]~12_combout\,
	cout => \inst|inhibit_wait_count[2]~13\);

-- Location: FF_X26_Y23_N13
\inst|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[2]~12_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(2));

-- Location: LCCOMB_X26_Y23_N14
\inst|inhibit_wait_count[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[3]~14_combout\ = (\inst|inhibit_wait_count\(3) & (\inst|inhibit_wait_count[2]~13\ $ (GND))) # (!\inst|inhibit_wait_count\(3) & (!\inst|inhibit_wait_count[2]~13\ & VCC))
-- \inst|inhibit_wait_count[3]~15\ = CARRY((\inst|inhibit_wait_count\(3) & !\inst|inhibit_wait_count[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(3),
	datad => VCC,
	cin => \inst|inhibit_wait_count[2]~13\,
	combout => \inst|inhibit_wait_count[3]~14_combout\,
	cout => \inst|inhibit_wait_count[3]~15\);

-- Location: FF_X26_Y23_N15
\inst|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[3]~14_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(3));

-- Location: LCCOMB_X26_Y23_N16
\inst|inhibit_wait_count[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[4]~16_combout\ = (\inst|inhibit_wait_count\(4) & (!\inst|inhibit_wait_count[3]~15\)) # (!\inst|inhibit_wait_count\(4) & ((\inst|inhibit_wait_count[3]~15\) # (GND)))
-- \inst|inhibit_wait_count[4]~17\ = CARRY((!\inst|inhibit_wait_count[3]~15\) # (!\inst|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(4),
	datad => VCC,
	cin => \inst|inhibit_wait_count[3]~15\,
	combout => \inst|inhibit_wait_count[4]~16_combout\,
	cout => \inst|inhibit_wait_count[4]~17\);

-- Location: FF_X26_Y23_N17
\inst|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[4]~16_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(4));

-- Location: LCCOMB_X26_Y23_N18
\inst|inhibit_wait_count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[5]~18_combout\ = (\inst|inhibit_wait_count\(5) & (\inst|inhibit_wait_count[4]~17\ $ (GND))) # (!\inst|inhibit_wait_count\(5) & (!\inst|inhibit_wait_count[4]~17\ & VCC))
-- \inst|inhibit_wait_count[5]~19\ = CARRY((\inst|inhibit_wait_count\(5) & !\inst|inhibit_wait_count[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst|inhibit_wait_count[4]~17\,
	combout => \inst|inhibit_wait_count[5]~18_combout\,
	cout => \inst|inhibit_wait_count[5]~19\);

-- Location: FF_X26_Y23_N19
\inst|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[5]~18_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(5));

-- Location: LCCOMB_X26_Y23_N20
\inst|inhibit_wait_count[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[6]~20_combout\ = (\inst|inhibit_wait_count\(6) & (!\inst|inhibit_wait_count[5]~19\)) # (!\inst|inhibit_wait_count\(6) & ((\inst|inhibit_wait_count[5]~19\) # (GND)))
-- \inst|inhibit_wait_count[6]~21\ = CARRY((!\inst|inhibit_wait_count[5]~19\) # (!\inst|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(6),
	datad => VCC,
	cin => \inst|inhibit_wait_count[5]~19\,
	combout => \inst|inhibit_wait_count[6]~20_combout\,
	cout => \inst|inhibit_wait_count[6]~21\);

-- Location: FF_X26_Y23_N21
\inst|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[6]~20_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(6));

-- Location: LCCOMB_X26_Y23_N22
\inst|inhibit_wait_count[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[7]~22_combout\ = (\inst|inhibit_wait_count\(7) & (\inst|inhibit_wait_count[6]~21\ $ (GND))) # (!\inst|inhibit_wait_count\(7) & (!\inst|inhibit_wait_count[6]~21\ & VCC))
-- \inst|inhibit_wait_count[7]~23\ = CARRY((\inst|inhibit_wait_count\(7) & !\inst|inhibit_wait_count[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(7),
	datad => VCC,
	cin => \inst|inhibit_wait_count[6]~21\,
	combout => \inst|inhibit_wait_count[7]~22_combout\,
	cout => \inst|inhibit_wait_count[7]~23\);

-- Location: FF_X26_Y23_N23
\inst|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[7]~22_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(7));

-- Location: LCCOMB_X26_Y23_N24
\inst|inhibit_wait_count[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inhibit_wait_count[8]~24_combout\ = (\inst|inhibit_wait_count\(8) & (!\inst|inhibit_wait_count[7]~23\)) # (!\inst|inhibit_wait_count\(8) & ((\inst|inhibit_wait_count[7]~23\) # (GND)))
-- \inst|inhibit_wait_count[8]~25\ = CARRY((!\inst|inhibit_wait_count[7]~23\) # (!\inst|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|inhibit_wait_count\(8),
	datad => VCC,
	cin => \inst|inhibit_wait_count[7]~23\,
	combout => \inst|inhibit_wait_count[8]~24_combout\,
	cout => \inst|inhibit_wait_count[8]~25\);

-- Location: FF_X26_Y23_N25
\inst|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[8]~24_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(8));

-- Location: FF_X26_Y23_N27
\inst|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|inhibit_wait_count[9]~26_combout\,
	ena => \inst|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inhibit_wait_count\(9));

-- Location: LCCOMB_X23_Y23_N22
\inst|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst|inhibit_wait_count\(9) & (!\inst|mouse_state.INHIBIT_TRANS~q\ & \inst|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inhibit_wait_count\(9),
	datab => \inst|mouse_state.INHIBIT_TRANS~q\,
	datac => \inst|inhibit_wait_count\(10),
	combout => \inst|Selector1~0_combout\);

-- Location: FF_X23_Y23_N23
\inst|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_state.LOAD_COMMAND~q\);

-- Location: FF_X23_Y23_N25
\inst|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|mouse_state.LOAD_COMMAND~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X23_Y23_N16
\inst|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|OUTCNT~3_combout\ = (!\inst|OUTCNT\(0) & (((!\inst|OUTCNT\(2) & !\inst|OUTCNT\(1))) # (!\inst|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OUTCNT\(3),
	datab => \inst|OUTCNT\(2),
	datac => \inst|OUTCNT\(0),
	datad => \inst|OUTCNT\(1),
	combout => \inst|OUTCNT~3_combout\);

-- Location: LCCOMB_X22_Y23_N14
\inst|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|send_char~0_combout\ = (\inst|send_char~q\) # ((\inst|mouse_state.WAIT_OUTPUT_READY~q\ & \inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst|LessThan0~0_combout\,
	datac => \inst|send_char~q\,
	combout => \inst|send_char~0_combout\);

-- Location: FF_X22_Y23_N15
\inst|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|send_char~0_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|send_char~q\);

-- Location: LCCOMB_X23_Y23_N26
\inst|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|output_ready~0_combout\ = (\inst|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst|send_char~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst|send_char~q\,
	combout => \inst|output_ready~0_combout\);

-- Location: FF_X23_Y23_N17
\inst|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|OUTCNT~3_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OUTCNT\(0));

-- Location: LCCOMB_X23_Y23_N6
\inst|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|OUTCNT~2_combout\ = (\inst|OUTCNT\(3) & (!\inst|OUTCNT\(2) & (!\inst|OUTCNT\(1) & \inst|OUTCNT\(0)))) # (!\inst|OUTCNT\(3) & ((\inst|OUTCNT\(1) $ (\inst|OUTCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OUTCNT\(3),
	datab => \inst|OUTCNT\(2),
	datac => \inst|OUTCNT\(1),
	datad => \inst|OUTCNT\(0),
	combout => \inst|OUTCNT~2_combout\);

-- Location: FF_X23_Y23_N7
\inst|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|OUTCNT~2_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OUTCNT\(1));

-- Location: LCCOMB_X23_Y23_N4
\inst|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|OUTCNT~1_combout\ = (!\inst|OUTCNT\(3) & (\inst|OUTCNT\(2) $ (((\inst|OUTCNT\(1) & \inst|OUTCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OUTCNT\(3),
	datab => \inst|OUTCNT\(1),
	datac => \inst|OUTCNT\(2),
	datad => \inst|OUTCNT\(0),
	combout => \inst|OUTCNT~1_combout\);

-- Location: FF_X23_Y23_N5
\inst|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|OUTCNT~1_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OUTCNT\(2));

-- Location: LCCOMB_X23_Y23_N18
\inst|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|OUTCNT~0_combout\ = (\inst|OUTCNT\(2) & (\inst|OUTCNT\(1) & (!\inst|OUTCNT\(3) & \inst|OUTCNT\(0)))) # (!\inst|OUTCNT\(2) & (!\inst|OUTCNT\(1) & (\inst|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OUTCNT\(2),
	datab => \inst|OUTCNT\(1),
	datac => \inst|OUTCNT\(3),
	datad => \inst|OUTCNT\(0),
	combout => \inst|OUTCNT~0_combout\);

-- Location: FF_X23_Y23_N19
\inst|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|OUTCNT~0_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|OUTCNT\(3));

-- Location: LCCOMB_X23_Y23_N24
\inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|OUTCNT\(3) & ((\inst|OUTCNT\(2)) # (\inst|OUTCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|OUTCNT\(3),
	datab => \inst|OUTCNT\(2),
	datad => \inst|OUTCNT\(1),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y23_N14
\inst|output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|output_ready~feeder_combout\ = \inst|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|output_ready~feeder_combout\);

-- Location: FF_X23_Y23_N15
\inst|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|output_ready~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|output_ready~q\);

-- Location: LCCOMB_X24_Y23_N20
\inst|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst|mouse_state.LOAD_COMMAND2~q\) # ((\inst|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst|output_ready~q\,
	combout => \inst|Selector3~0_combout\);

-- Location: FF_X24_Y23_N21
\inst|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_state.WAIT_OUTPUT_READY~q\);

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

-- Location: LCCOMB_X27_Y20_N28
\inst|INCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|INCNT~2_combout\ = (!\inst|INCNT\(3) & (\inst|INCNT\(1) $ (\inst|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|INCNT\(3),
	datac => \inst|INCNT\(1),
	datad => \inst|INCNT\(0),
	combout => \inst|INCNT~2_combout\);

-- Location: LCCOMB_X27_Y20_N18
\inst|INCNT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|INCNT[3]~1_combout\ = (!\inst|mouse_state.WAIT_OUTPUT_READY~q\ & \inst|READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst|READ_CHAR~q\,
	combout => \inst|INCNT[3]~1_combout\);

-- Location: FF_X27_Y20_N29
\inst|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|INCNT~2_combout\,
	ena => \inst|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|INCNT\(1));

-- Location: LCCOMB_X27_Y20_N30
\inst|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|INCNT~3_combout\ = (!\inst|INCNT\(0) & (((!\inst|INCNT\(2) & !\inst|INCNT\(1))) # (!\inst|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|INCNT\(3),
	datab => \inst|INCNT\(2),
	datac => \inst|INCNT\(0),
	datad => \inst|INCNT\(1),
	combout => \inst|INCNT~3_combout\);

-- Location: FF_X27_Y20_N31
\inst|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|INCNT~3_combout\,
	ena => \inst|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|INCNT\(0));

-- Location: LCCOMB_X27_Y20_N0
\inst|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|INCNT~4_combout\ = (\inst|INCNT\(2) & (\inst|INCNT\(0) & (!\inst|INCNT\(3) & \inst|INCNT\(1)))) # (!\inst|INCNT\(2) & (!\inst|INCNT\(0) & (\inst|INCNT\(3) & !\inst|INCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|INCNT\(2),
	datab => \inst|INCNT\(0),
	datac => \inst|INCNT\(3),
	datad => \inst|INCNT\(1),
	combout => \inst|INCNT~4_combout\);

-- Location: FF_X27_Y20_N1
\inst|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|INCNT~4_combout\,
	ena => \inst|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|INCNT\(3));

-- Location: LCCOMB_X27_Y20_N22
\inst|INCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|INCNT~0_combout\ = (!\inst|INCNT\(3) & (\inst|INCNT\(2) $ (((\inst|INCNT\(0) & \inst|INCNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|INCNT\(3),
	datab => \inst|INCNT\(0),
	datac => \inst|INCNT\(2),
	datad => \inst|INCNT\(1),
	combout => \inst|INCNT~0_combout\);

-- Location: FF_X27_Y20_N23
\inst|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|INCNT~0_combout\,
	ena => \inst|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|INCNT\(2));

-- Location: LCCOMB_X27_Y20_N14
\inst|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = ((!\inst|INCNT\(2) & (!\inst|INCNT\(1) & !\inst|INCNT\(0)))) # (!\inst|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|INCNT\(2),
	datab => \inst|INCNT\(1),
	datac => \inst|INCNT\(0),
	datad => \inst|INCNT\(3),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X28_Y20_N4
\inst|READ_CHAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|READ_CHAR~0_combout\ = (\inst|READ_CHAR~q\ & ((\inst|LessThan1~0_combout\))) # (!\inst|READ_CHAR~q\ & (!\mouse_data~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datac => \inst|READ_CHAR~q\,
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|READ_CHAR~0_combout\);

-- Location: FF_X28_Y20_N5
\inst|READ_CHAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|READ_CHAR~0_combout\,
	ena => \inst|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|READ_CHAR~q\);

-- Location: LCCOMB_X24_Y23_N28
\inst|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|iready_set~0_combout\ = (\inst|READ_CHAR~q\ & (((!\inst|LessThan1~0_combout\)))) # (!\inst|READ_CHAR~q\ & (\mouse_data~input_o\ & (\inst|iready_set~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datab => \inst|READ_CHAR~q\,
	datac => \inst|iready_set~q\,
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|iready_set~0_combout\);

-- Location: FF_X24_Y23_N29
\inst|iready_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|iready_set~0_combout\,
	ena => \inst|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|iready_set~q\);

-- Location: LCCOMB_X24_Y23_N6
\inst|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|mouse_state.WAIT_OUTPUT_READY~q\ & ((\inst|output_ready~q\) # ((!\inst|iready_set~q\ & \inst|mouse_state.WAIT_CMD_ACK~q\)))) # (!\inst|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst|iready_set~q\ & 
-- (\inst|mouse_state.WAIT_CMD_ACK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst|iready_set~q\,
	datac => \inst|mouse_state.WAIT_CMD_ACK~q\,
	datad => \inst|output_ready~q\,
	combout => \inst|Selector4~0_combout\);

-- Location: FF_X24_Y23_N7
\inst|mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_state.WAIT_CMD_ACK~q\);

-- Location: LCCOMB_X24_Y23_N10
\inst|mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|mouse_state.INPUT_PACKETS~0_combout\ = (\inst|mouse_state.INPUT_PACKETS~q\) # ((\inst|mouse_state.WAIT_CMD_ACK~q\ & \inst|iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.WAIT_CMD_ACK~q\,
	datac => \inst|mouse_state.INPUT_PACKETS~q\,
	datad => \inst|iready_set~q\,
	combout => \inst|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: FF_X24_Y23_N11
\inst|mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|mouse_state.INPUT_PACKETS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mouse_state.INPUT_PACKETS~q\);

-- Location: LCCOMB_X23_Y23_N30
\inst|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst|send_data~q\ & ((\inst|mouse_state.INPUT_PACKETS~q\) # (!\inst|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|mouse_state.INHIBIT_TRANS~q\,
	datac => \inst|mouse_state.INPUT_PACKETS~q\,
	datad => \inst|send_data~q\,
	combout => \inst|Selector6~0_combout\);

-- Location: LCCOMB_X23_Y23_N20
\inst|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Selector6~1_combout\ = (\inst|mouse_state.LOAD_COMMAND~q\) # ((\inst|Selector6~0_combout\) # (\inst|mouse_state.LOAD_COMMAND2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.LOAD_COMMAND~q\,
	datac => \inst|Selector6~0_combout\,
	datad => \inst|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst|Selector6~1_combout\);

-- Location: FF_X23_Y23_N21
\inst|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|send_data~q\);

-- Location: LCCOMB_X22_Y23_N24
\inst|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|MOUSE_DATA_BUF~0_combout\ = (!\inst|send_char~q\ & (\inst|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|send_char~q\,
	datab => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X22_Y23_N1
\inst|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[9]~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(9));

-- Location: LCCOMB_X22_Y23_N22
\inst|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[8]~3_combout\ = !\inst|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(9),
	combout => \inst|SHIFTOUT[8]~3_combout\);

-- Location: FF_X22_Y23_N23
\inst|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[8]~3_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(8));

-- Location: LCCOMB_X22_Y23_N12
\inst|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[7]~feeder_combout\ = \inst|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SHIFTOUT\(8),
	combout => \inst|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X22_Y23_N13
\inst|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[7]~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(7));

-- Location: LCCOMB_X22_Y23_N6
\inst|SHIFTOUT[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[6]~feeder_combout\ = \inst|SHIFTOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(7),
	combout => \inst|SHIFTOUT[6]~feeder_combout\);

-- Location: FF_X22_Y23_N7
\inst|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[6]~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(6));

-- Location: LCCOMB_X22_Y23_N16
\inst|SHIFTOUT[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[5]~feeder_combout\ = \inst|SHIFTOUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(6),
	combout => \inst|SHIFTOUT[5]~feeder_combout\);

-- Location: FF_X22_Y23_N17
\inst|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[5]~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(5));

-- Location: LCCOMB_X22_Y23_N10
\inst|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[4]~2_combout\ = !\inst|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(5),
	combout => \inst|SHIFTOUT[4]~2_combout\);

-- Location: FF_X22_Y23_N11
\inst|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[4]~2_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(4));

-- Location: LCCOMB_X22_Y23_N28
\inst|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[3]~1_combout\ = !\inst|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(4),
	combout => \inst|SHIFTOUT[3]~1_combout\);

-- Location: FF_X22_Y23_N29
\inst|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[3]~1_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(3));

-- Location: LCCOMB_X22_Y23_N2
\inst|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[2]~0_combout\ = !\inst|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(3),
	combout => \inst|SHIFTOUT[2]~0_combout\);

-- Location: FF_X22_Y23_N3
\inst|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[2]~0_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(2));

-- Location: LCCOMB_X22_Y23_N4
\inst|SHIFTOUT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTOUT[1]~feeder_combout\ = \inst|SHIFTOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTOUT\(2),
	combout => \inst|SHIFTOUT[1]~feeder_combout\);

-- Location: FF_X22_Y23_N5
\inst|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTOUT[1]~feeder_combout\,
	clrn => \inst|ALT_INV_send_data~q\,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTOUT\(1));

-- Location: FF_X22_Y23_N25
\inst|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst|SHIFTOUT\(1),
	clrn => \inst|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X23_Y23_N12
\inst|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|WideOr4~combout\ = (\inst|mouse_state.LOAD_COMMAND~q\) # ((\inst|mouse_state.LOAD_COMMAND2~q\) # (!\inst|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.LOAD_COMMAND~q\,
	datab => \inst|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst|WideOr4~combout\);

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

-- Location: LCCOMB_X32_Y22_N6
\inst2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|h_count\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: FF_X32_Y22_N7
\inst2|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(0));

-- Location: LCCOMB_X32_Y22_N8
\inst2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|h_count\(1) & (!\inst2|Add0~1\)) # (!\inst2|h_count\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: FF_X32_Y22_N9
\inst2|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(1));

-- Location: LCCOMB_X32_Y22_N10
\inst2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|h_count\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|h_count\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|h_count\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: FF_X32_Y22_N11
\inst2|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(2));

-- Location: LCCOMB_X32_Y22_N12
\inst2|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|h_count\(3) & (!\inst2|Add0~5\)) # (!\inst2|h_count\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: FF_X32_Y22_N13
\inst2|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(3));

-- Location: LCCOMB_X32_Y22_N14
\inst2|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|h_count\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|h_count\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|h_count\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: FF_X32_Y22_N15
\inst2|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(4));

-- Location: LCCOMB_X32_Y22_N2
\inst2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst2|h_count\(0) & (\inst2|h_count\(3) & (\inst2|h_count\(4) & \inst2|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(0),
	datab => \inst2|h_count\(3),
	datac => \inst2|h_count\(4),
	datad => \inst2|h_count\(1),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y22_N16
\inst2|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|h_count\(5) & (!\inst2|Add0~9\)) # (!\inst2|h_count\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X32_Y22_N18
\inst2|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|h_count\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|h_count\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|h_count\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X32_Y22_N20
\inst2|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|h_count\(7) & (!\inst2|Add0~13\)) # (!\inst2|h_count\(7) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: FF_X32_Y22_N21
\inst2|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(7));

-- Location: LCCOMB_X32_Y22_N22
\inst2|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|h_count\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|h_count\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|h_count\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X35_Y22_N22
\inst2|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|h_count~1_combout\ = (\inst2|Add0~16_combout\ & !\inst2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~16_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|h_count~1_combout\);

-- Location: FF_X35_Y22_N23
\inst2|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(8));

-- Location: LCCOMB_X33_Y22_N4
\inst2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|h_count\(2) & (!\inst2|h_count\(7) & (!\inst2|h_count\(5) & \inst2|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(2),
	datab => \inst2|h_count\(7),
	datac => \inst2|h_count\(5),
	datad => \inst2|h_count\(8),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y22_N24
\inst2|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = \inst2|Add0~17\ $ (\inst2|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|h_count\(9),
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\);

-- Location: LCCOMB_X35_Y22_N28
\inst2|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|h_count~0_combout\ = (\inst2|Add0~18_combout\ & !\inst2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~18_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|h_count~0_combout\);

-- Location: FF_X35_Y22_N29
\inst2|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(9));

-- Location: LCCOMB_X33_Y22_N6
\inst2|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|Equal0~0_combout\ & (!\inst2|h_count\(6) & (\inst2|Equal0~1_combout\ & \inst2|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|h_count\(6),
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|h_count\(9),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y22_N2
\inst2|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|h_count~2_combout\ = (\inst2|Add0~10_combout\ & !\inst2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~10_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|h_count~2_combout\);

-- Location: FF_X33_Y22_N3
\inst2|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(5));

-- Location: FF_X32_Y22_N19
\inst2|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(6));

-- Location: LCCOMB_X33_Y22_N8
\inst2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = (\inst2|h_count\(2)) # (((\inst2|h_count\(8)) # (!\inst2|h_count\(5))) # (!\inst2|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(2),
	datab => \inst2|h_count\(7),
	datac => \inst2|h_count\(5),
	datad => \inst2|h_count\(8),
	combout => \inst2|Equal1~0_combout\);

-- Location: LCCOMB_X33_Y22_N30
\inst2|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Equal1~1_combout\ = ((\inst2|h_count\(6)) # ((\inst2|Equal1~0_combout\) # (!\inst2|h_count\(9)))) # (!\inst2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|h_count\(6),
	datac => \inst2|Equal1~0_combout\,
	datad => \inst2|h_count\(9),
	combout => \inst2|Equal1~1_combout\);

-- Location: LCCOMB_X32_Y22_N26
\inst2|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~9_combout\ = ((!\inst2|h_count\(2) & ((!\inst2|h_count\(1)) # (!\inst2|h_count\(0))))) # (!\inst2|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(0),
	datab => \inst2|h_count\(3),
	datac => \inst2|h_count\(1),
	datad => \inst2|h_count\(2),
	combout => \inst2|process_0~9_combout\);

-- Location: LCCOMB_X32_Y22_N0
\inst2|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~10_combout\ = (\inst2|h_count\(4) & \inst2|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|h_count\(4),
	datad => \inst2|h_count\(5),
	combout => \inst2|process_0~10_combout\);

-- Location: LCCOMB_X32_Y22_N30
\inst2|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~11_combout\ = (!\inst2|h_count\(6) & (!\inst2|h_count\(8) & ((\inst2|process_0~9_combout\) # (!\inst2|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~9_combout\,
	datab => \inst2|h_count\(6),
	datac => \inst2|h_count\(8),
	datad => \inst2|process_0~10_combout\,
	combout => \inst2|process_0~11_combout\);

-- Location: LCCOMB_X32_Y22_N28
\inst2|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~12_combout\ = (((!\inst2|h_count\(8) & !\inst2|h_count\(7))) # (!\inst2|h_count\(9))) # (!\inst2|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(8),
	datab => \inst2|h_count\(7),
	datac => \inst2|v_count\(9),
	datad => \inst2|h_count\(9),
	combout => \inst2|process_0~12_combout\);

-- Location: LCCOMB_X32_Y21_N6
\inst2|v_count[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[1]~1_combout\ = (\inst2|Equal1~1_combout\ & ((\inst2|process_0~8_combout\) # ((\inst2|process_0~11_combout\) # (\inst2|process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~8_combout\,
	datab => \inst2|Equal1~1_combout\,
	datac => \inst2|process_0~11_combout\,
	datad => \inst2|process_0~12_combout\,
	combout => \inst2|v_count[1]~1_combout\);

-- Location: LCCOMB_X31_Y21_N10
\inst2|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~0_combout\ = \inst2|v_count\(0) $ (VCC)
-- \inst2|Add1~1\ = CARRY(\inst2|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(0),
	datad => VCC,
	combout => \inst2|Add1~0_combout\,
	cout => \inst2|Add1~1\);

-- Location: LCCOMB_X32_Y21_N12
\inst2|v_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count~11_combout\ = (\inst2|Add1~0_combout\ & ((\inst2|process_0~12_combout\) # ((\inst2|process_0~11_combout\) # (\inst2|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~0_combout\,
	datab => \inst2|process_0~12_combout\,
	datac => \inst2|process_0~11_combout\,
	datad => \inst2|process_0~8_combout\,
	combout => \inst2|v_count~11_combout\);

-- Location: FF_X31_Y21_N13
\inst2|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|v_count~11_combout\,
	sload => VCC,
	ena => \inst2|ALT_INV_v_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(0));

-- Location: LCCOMB_X31_Y21_N12
\inst2|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~2_combout\ = (\inst2|v_count\(1) & (!\inst2|Add1~1\)) # (!\inst2|v_count\(1) & ((\inst2|Add1~1\) # (GND)))
-- \inst2|Add1~3\ = CARRY((!\inst2|Add1~1\) # (!\inst2|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(1),
	datad => VCC,
	cin => \inst2|Add1~1\,
	combout => \inst2|Add1~2_combout\,
	cout => \inst2|Add1~3\);

-- Location: LCCOMB_X32_Y21_N22
\inst2|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count~10_combout\ = (\inst2|Add1~2_combout\ & ((\inst2|process_0~12_combout\) # ((\inst2|process_0~11_combout\) # (\inst2|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~2_combout\,
	datab => \inst2|process_0~12_combout\,
	datac => \inst2|process_0~11_combout\,
	datad => \inst2|process_0~8_combout\,
	combout => \inst2|v_count~10_combout\);

-- Location: FF_X32_Y21_N23
\inst2|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|v_count~10_combout\,
	ena => \inst2|ALT_INV_v_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(1));

-- Location: LCCOMB_X31_Y21_N14
\inst2|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~4_combout\ = (\inst2|v_count\(2) & (\inst2|Add1~3\ $ (GND))) # (!\inst2|v_count\(2) & (!\inst2|Add1~3\ & VCC))
-- \inst2|Add1~5\ = CARRY((\inst2|v_count\(2) & !\inst2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(2),
	datad => VCC,
	cin => \inst2|Add1~3\,
	combout => \inst2|Add1~4_combout\,
	cout => \inst2|Add1~5\);

-- Location: LCCOMB_X32_Y21_N28
\inst2|v_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[2]~9_combout\ = (\inst2|Add1~4_combout\ & ((\inst2|v_count[2]~0_combout\) # ((\inst2|v_count\(2) & \inst2|v_count[1]~1_combout\)))) # (!\inst2|Add1~4_combout\ & (((\inst2|v_count\(2) & \inst2|v_count[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~4_combout\,
	datab => \inst2|v_count[2]~0_combout\,
	datac => \inst2|v_count\(2),
	datad => \inst2|v_count[1]~1_combout\,
	combout => \inst2|v_count[2]~9_combout\);

-- Location: FF_X32_Y21_N29
\inst2|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|v_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(2));

-- Location: LCCOMB_X31_Y21_N16
\inst2|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~6_combout\ = (\inst2|v_count\(3) & (!\inst2|Add1~5\)) # (!\inst2|v_count\(3) & ((\inst2|Add1~5\) # (GND)))
-- \inst2|Add1~7\ = CARRY((!\inst2|Add1~5\) # (!\inst2|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(3),
	datad => VCC,
	cin => \inst2|Add1~5\,
	combout => \inst2|Add1~6_combout\,
	cout => \inst2|Add1~7\);

-- Location: LCCOMB_X31_Y21_N4
\inst2|v_count[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[3]~8_combout\ = (\inst2|v_count[2]~0_combout\ & ((\inst2|Add1~6_combout\) # ((\inst2|v_count\(3) & \inst2|v_count[1]~1_combout\)))) # (!\inst2|v_count[2]~0_combout\ & (((\inst2|v_count\(3) & \inst2|v_count[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[2]~0_combout\,
	datab => \inst2|Add1~6_combout\,
	datac => \inst2|v_count\(3),
	datad => \inst2|v_count[1]~1_combout\,
	combout => \inst2|v_count[3]~8_combout\);

-- Location: FF_X31_Y21_N5
\inst2|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|v_count[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(3));

-- Location: LCCOMB_X31_Y21_N18
\inst2|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~8_combout\ = (\inst2|v_count\(4) & (\inst2|Add1~7\ $ (GND))) # (!\inst2|v_count\(4) & (!\inst2|Add1~7\ & VCC))
-- \inst2|Add1~9\ = CARRY((\inst2|v_count\(4) & !\inst2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(4),
	datad => VCC,
	cin => \inst2|Add1~7\,
	combout => \inst2|Add1~8_combout\,
	cout => \inst2|Add1~9\);

-- Location: LCCOMB_X32_Y21_N26
\inst2|v_count[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[4]~7_combout\ = (\inst2|v_count[1]~1_combout\ & ((\inst2|v_count\(4)) # ((\inst2|v_count[2]~0_combout\ & \inst2|Add1~8_combout\)))) # (!\inst2|v_count[1]~1_combout\ & (\inst2|v_count[2]~0_combout\ & ((\inst2|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[1]~1_combout\,
	datab => \inst2|v_count[2]~0_combout\,
	datac => \inst2|v_count\(4),
	datad => \inst2|Add1~8_combout\,
	combout => \inst2|v_count[4]~7_combout\);

-- Location: FF_X32_Y21_N27
\inst2|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|v_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(4));

-- Location: LCCOMB_X31_Y21_N20
\inst2|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~10_combout\ = (\inst2|v_count\(5) & (!\inst2|Add1~9\)) # (!\inst2|v_count\(5) & ((\inst2|Add1~9\) # (GND)))
-- \inst2|Add1~11\ = CARRY((!\inst2|Add1~9\) # (!\inst2|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(5),
	datad => VCC,
	cin => \inst2|Add1~9\,
	combout => \inst2|Add1~10_combout\,
	cout => \inst2|Add1~11\);

-- Location: LCCOMB_X31_Y21_N6
\inst2|v_count[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[5]~3_combout\ = (\inst2|v_count[2]~0_combout\ & ((\inst2|Add1~10_combout\) # ((\inst2|v_count\(5) & \inst2|v_count[1]~1_combout\)))) # (!\inst2|v_count[2]~0_combout\ & (((\inst2|v_count\(5) & \inst2|v_count[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[2]~0_combout\,
	datab => \inst2|Add1~10_combout\,
	datac => \inst2|v_count\(5),
	datad => \inst2|v_count[1]~1_combout\,
	combout => \inst2|v_count[5]~3_combout\);

-- Location: FF_X31_Y21_N7
\inst2|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(5));

-- Location: LCCOMB_X31_Y21_N22
\inst2|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~12_combout\ = (\inst2|v_count\(6) & (\inst2|Add1~11\ $ (GND))) # (!\inst2|v_count\(6) & (!\inst2|Add1~11\ & VCC))
-- \inst2|Add1~13\ = CARRY((\inst2|v_count\(6) & !\inst2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(6),
	datad => VCC,
	cin => \inst2|Add1~11\,
	combout => \inst2|Add1~12_combout\,
	cout => \inst2|Add1~13\);

-- Location: LCCOMB_X32_Y21_N24
\inst2|v_count[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[6]~4_combout\ = (\inst2|v_count[1]~1_combout\ & ((\inst2|v_count\(6)) # ((\inst2|v_count[2]~0_combout\ & \inst2|Add1~12_combout\)))) # (!\inst2|v_count[1]~1_combout\ & (\inst2|v_count[2]~0_combout\ & ((\inst2|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[1]~1_combout\,
	datab => \inst2|v_count[2]~0_combout\,
	datac => \inst2|v_count\(6),
	datad => \inst2|Add1~12_combout\,
	combout => \inst2|v_count[6]~4_combout\);

-- Location: FF_X32_Y21_N25
\inst2|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(6));

-- Location: LCCOMB_X31_Y21_N24
\inst2|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~14_combout\ = (\inst2|v_count\(7) & (!\inst2|Add1~13\)) # (!\inst2|v_count\(7) & ((\inst2|Add1~13\) # (GND)))
-- \inst2|Add1~15\ = CARRY((!\inst2|Add1~13\) # (!\inst2|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(7),
	datad => VCC,
	cin => \inst2|Add1~13\,
	combout => \inst2|Add1~14_combout\,
	cout => \inst2|Add1~15\);

-- Location: LCCOMB_X31_Y21_N0
\inst2|v_count[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[7]~5_combout\ = (\inst2|v_count[2]~0_combout\ & ((\inst2|Add1~14_combout\) # ((\inst2|v_count\(7) & \inst2|v_count[1]~1_combout\)))) # (!\inst2|v_count[2]~0_combout\ & (((\inst2|v_count\(7) & \inst2|v_count[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[2]~0_combout\,
	datab => \inst2|Add1~14_combout\,
	datac => \inst2|v_count\(7),
	datad => \inst2|v_count[1]~1_combout\,
	combout => \inst2|v_count[7]~5_combout\);

-- Location: FF_X31_Y21_N1
\inst2|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(7));

-- Location: LCCOMB_X32_Y21_N8
\inst2|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~7_combout\ = (!\inst2|v_count\(4) & (!\inst2|v_count\(5) & ((!\inst2|v_count\(2)) # (!\inst2|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(4),
	datab => \inst2|v_count\(3),
	datac => \inst2|v_count\(5),
	datad => \inst2|v_count\(2),
	combout => \inst2|process_0~7_combout\);

-- Location: LCCOMB_X31_Y21_N26
\inst2|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~16_combout\ = (\inst2|v_count\(8) & (\inst2|Add1~15\ $ (GND))) # (!\inst2|v_count\(8) & (!\inst2|Add1~15\ & VCC))
-- \inst2|Add1~17\ = CARRY((\inst2|v_count\(8) & !\inst2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(8),
	datad => VCC,
	cin => \inst2|Add1~15\,
	combout => \inst2|Add1~16_combout\,
	cout => \inst2|Add1~17\);

-- Location: LCCOMB_X31_Y21_N2
\inst2|v_count[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[8]~6_combout\ = (\inst2|v_count[2]~0_combout\ & ((\inst2|Add1~16_combout\) # ((\inst2|v_count\(8) & \inst2|v_count[1]~1_combout\)))) # (!\inst2|v_count[2]~0_combout\ & (((\inst2|v_count\(8) & \inst2|v_count[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[2]~0_combout\,
	datab => \inst2|Add1~16_combout\,
	datac => \inst2|v_count\(8),
	datad => \inst2|v_count[1]~1_combout\,
	combout => \inst2|v_count[8]~6_combout\);

-- Location: FF_X31_Y21_N3
\inst2|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(8));

-- Location: LCCOMB_X32_Y21_N10
\inst2|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~8_combout\ = (!\inst2|v_count\(7) & (!\inst2|v_count\(6) & (\inst2|process_0~7_combout\ & !\inst2|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(7),
	datab => \inst2|v_count\(6),
	datac => \inst2|process_0~7_combout\,
	datad => \inst2|v_count\(8),
	combout => \inst2|process_0~8_combout\);

-- Location: LCCOMB_X32_Y21_N4
\inst2|v_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[2]~0_combout\ = (!\inst2|Equal1~1_combout\ & ((\inst2|process_0~8_combout\) # ((\inst2|process_0~11_combout\) # (\inst2|process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~8_combout\,
	datab => \inst2|Equal1~1_combout\,
	datac => \inst2|process_0~11_combout\,
	datad => \inst2|process_0~12_combout\,
	combout => \inst2|v_count[2]~0_combout\);

-- Location: LCCOMB_X31_Y21_N28
\inst2|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~18_combout\ = \inst2|v_count\(9) $ (\inst2|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(9),
	cin => \inst2|Add1~17\,
	combout => \inst2|Add1~18_combout\);

-- Location: LCCOMB_X31_Y21_N8
\inst2|v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[9]~2_combout\ = (\inst2|v_count[2]~0_combout\ & ((\inst2|Add1~18_combout\) # ((\inst2|v_count\(9) & \inst2|v_count[1]~1_combout\)))) # (!\inst2|v_count[2]~0_combout\ & (((\inst2|v_count\(9) & \inst2|v_count[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[2]~0_combout\,
	datab => \inst2|Add1~18_combout\,
	datac => \inst2|v_count\(9),
	datad => \inst2|v_count[1]~1_combout\,
	combout => \inst2|v_count[9]~2_combout\);

-- Location: FF_X31_Y21_N9
\inst2|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(9));

-- Location: LCCOMB_X32_Y21_N2
\inst2|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~0_combout\ = (\inst2|v_count\(7) & (\inst2|v_count\(6) & (\inst2|v_count\(5) & \inst2|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(7),
	datab => \inst2|v_count\(6),
	datac => \inst2|v_count\(5),
	datad => \inst2|v_count\(8),
	combout => \inst2|LessThan7~0_combout\);

-- Location: LCCOMB_X32_Y21_N0
\inst2|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~1_combout\ = (\inst2|v_count\(9)) # (\inst2|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(9),
	datad => \inst2|LessThan7~0_combout\,
	combout => \inst2|LessThan7~1_combout\);

-- Location: LCCOMB_X32_Y21_N20
\inst2|video_on_v~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|video_on_v~0_combout\ = !\inst2|LessThan7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|LessThan7~1_combout\,
	combout => \inst2|video_on_v~0_combout\);

-- Location: FF_X32_Y21_N21
\inst2|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|video_on_v~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|video_on_v~q\);

-- Location: LCCOMB_X33_Y22_N12
\inst2|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~0_combout\ = (\inst2|h_count\(9) & ((\inst2|h_count\(7)) # (\inst2|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(7),
	datac => \inst2|h_count\(8),
	datad => \inst2|h_count\(9),
	combout => \inst2|process_0~0_combout\);

-- Location: LCCOMB_X36_Y22_N2
\inst2|video_on_h~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|video_on_h~0_combout\ = !\inst2|process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|process_0~0_combout\,
	combout => \inst2|video_on_h~0_combout\);

-- Location: FF_X36_Y22_N3
\inst2|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|video_on_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|video_on_h~q\);

-- Location: LCCOMB_X36_Y22_N8
\inst2|red_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|red_out~0_combout\ = (\pb1~input_o\ & (\inst2|video_on_v~q\ & \inst2|video_on_h~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb1~input_o\,
	datac => \inst2|video_on_v~q\,
	datad => \inst2|video_on_h~q\,
	combout => \inst2|red_out~0_combout\);

-- Location: FF_X36_Y22_N9
\inst2|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|red_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|red_out~q\);

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

-- Location: LCCOMB_X36_Y22_N0
\inst2|red_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|red_out~1_combout\ = (\inst2|video_on_v~q\ & \inst2|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|video_on_v~q\,
	datad => \inst2|video_on_h~q\,
	combout => \inst2|red_out~1_combout\);

-- Location: LCCOMB_X31_Y21_N30
\inst2|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~5_combout\ = ((\inst2|v_count\(0) $ (!\inst2|v_count\(1))) # (!\inst2|v_count\(3))) # (!\inst2|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(0),
	datab => \inst2|v_count\(2),
	datac => \inst2|v_count\(3),
	datad => \inst2|v_count\(1),
	combout => \inst2|process_0~5_combout\);

-- Location: LCCOMB_X32_Y21_N18
\inst2|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~6_combout\ = (\inst2|v_count\(9)) # (((\inst2|v_count\(4)) # (\inst2|process_0~5_combout\)) # (!\inst2|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(9),
	datab => \inst2|LessThan7~0_combout\,
	datac => \inst2|v_count\(4),
	datad => \inst2|process_0~5_combout\,
	combout => \inst2|process_0~6_combout\);

-- Location: FF_X32_Y21_N19
\inst2|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vert_sync~q\);

-- Location: LCCOMB_X40_Y15_N16
\inst2|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|vert_sync_out~feeder_combout\ = \inst2|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|vert_sync~q\,
	combout => \inst2|vert_sync_out~feeder_combout\);

-- Location: FF_X40_Y15_N17
\inst2|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vert_sync_out~q\);

-- Location: CLKCTRL_G9
\inst2|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|vert_sync_out~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y22_N6
\inst1|ball_x_pos[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_x_pos[1]~10_combout\ = \inst1|ball_x_pos\(1) $ (VCC)
-- \inst1|ball_x_pos[1]~11\ = CARRY(\inst1|ball_x_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_pos\(1),
	datad => VCC,
	combout => \inst1|ball_x_pos[1]~10_combout\,
	cout => \inst1|ball_x_pos[1]~11\);

-- Location: FF_X38_Y22_N7
\inst1|ball_x_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_x_pos[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_x_pos\(1));

-- Location: LCCOMB_X38_Y22_N8
\inst1|ball_x_pos[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_x_pos[2]~12_combout\ = (\inst1|ball_x_motion\(2) & ((\inst1|ball_x_pos\(2) & (\inst1|ball_x_pos[1]~11\ & VCC)) # (!\inst1|ball_x_pos\(2) & (!\inst1|ball_x_pos[1]~11\)))) # (!\inst1|ball_x_motion\(2) & ((\inst1|ball_x_pos\(2) & 
-- (!\inst1|ball_x_pos[1]~11\)) # (!\inst1|ball_x_pos\(2) & ((\inst1|ball_x_pos[1]~11\) # (GND)))))
-- \inst1|ball_x_pos[2]~13\ = CARRY((\inst1|ball_x_motion\(2) & (!\inst1|ball_x_pos\(2) & !\inst1|ball_x_pos[1]~11\)) # (!\inst1|ball_x_motion\(2) & ((!\inst1|ball_x_pos[1]~11\) # (!\inst1|ball_x_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_motion\(2),
	datab => \inst1|ball_x_pos\(2),
	datad => VCC,
	cin => \inst1|ball_x_pos[1]~11\,
	combout => \inst1|ball_x_pos[2]~12_combout\,
	cout => \inst1|ball_x_pos[2]~13\);

-- Location: FF_X38_Y22_N9
\inst1|ball_x_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_x_pos[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_x_pos\(2));

-- Location: LCCOMB_X38_Y22_N10
\inst1|ball_x_pos[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_x_pos[3]~14_combout\ = ((\inst1|ball_x_pos\(3) $ (\inst1|ball_x_motion\(2) $ (!\inst1|ball_x_pos[2]~13\)))) # (GND)
-- \inst1|ball_x_pos[3]~15\ = CARRY((\inst1|ball_x_pos\(3) & ((\inst1|ball_x_motion\(2)) # (!\inst1|ball_x_pos[2]~13\))) # (!\inst1|ball_x_pos\(3) & (\inst1|ball_x_motion\(2) & !\inst1|ball_x_pos[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_pos\(3),
	datab => \inst1|ball_x_motion\(2),
	datad => VCC,
	cin => \inst1|ball_x_pos[2]~13\,
	combout => \inst1|ball_x_pos[3]~14_combout\,
	cout => \inst1|ball_x_pos[3]~15\);

-- Location: FF_X38_Y22_N11
\inst1|ball_x_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_x_pos[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_x_pos\(3));

-- Location: LCCOMB_X38_Y22_N12
\inst1|ball_x_pos[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_x_pos[4]~16_combout\ = (\inst1|ball_x_pos\(4) & ((\inst1|ball_x_motion\(2) & (\inst1|ball_x_pos[3]~15\ & VCC)) # (!\inst1|ball_x_motion\(2) & (!\inst1|ball_x_pos[3]~15\)))) # (!\inst1|ball_x_pos\(4) & ((\inst1|ball_x_motion\(2) & 
-- (!\inst1|ball_x_pos[3]~15\)) # (!\inst1|ball_x_motion\(2) & ((\inst1|ball_x_pos[3]~15\) # (GND)))))
-- \inst1|ball_x_pos[4]~17\ = CARRY((\inst1|ball_x_pos\(4) & (!\inst1|ball_x_motion\(2) & !\inst1|ball_x_pos[3]~15\)) # (!\inst1|ball_x_pos\(4) & ((!\inst1|ball_x_pos[3]~15\) # (!\inst1|ball_x_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_pos\(4),
	datab => \inst1|ball_x_motion\(2),
	datad => VCC,
	cin => \inst1|ball_x_pos[3]~15\,
	combout => \inst1|ball_x_pos[4]~16_combout\,
	cout => \inst1|ball_x_pos[4]~17\);

-- Location: FF_X38_Y22_N13
\inst1|ball_x_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_x_pos[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_x_pos\(4));

-- Location: LCCOMB_X38_Y22_N14
\inst1|ball_x_pos[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_x_pos[5]~18_combout\ = ((\inst1|ball_x_motion\(2) $ (\inst1|ball_x_pos\(5) $ (!\inst1|ball_x_pos[4]~17\)))) # (GND)
-- \inst1|ball_x_pos[5]~19\ = CARRY((\inst1|ball_x_motion\(2) & ((\inst1|ball_x_pos\(5)) # (!\inst1|ball_x_pos[4]~17\))) # (!\inst1|ball_x_motion\(2) & (\inst1|ball_x_pos\(5) & !\inst1|ball_x_pos[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_motion\(2),
	datab => \inst1|ball_x_pos\(5),
	datad => VCC,
	cin => \inst1|ball_x_pos[4]~17\,
	combout => \inst1|ball_x_pos[5]~18_combout\,
	cout => \inst1|ball_x_pos[5]~19\);

-- Location: FF_X38_Y22_N15
\inst1|ball_x_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_x_pos[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_x_pos\(5));

-- Location: LCCOMB_X38_Y22_N16
\inst1|ball_x_pos[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_x_pos[6]~20_combout\ = (\inst1|ball_x_motion\(2) & ((\inst1|ball_x_pos\(6) & (\inst1|ball_x_pos[5]~19\ & VCC)) # (!\inst1|ball_x_pos\(6) & (!\inst1|ball_x_pos[5]~19\)))) # (!\inst1|ball_x_motion\(2) & ((\inst1|ball_x_pos\(6) & 
-- (!\inst1|ball_x_pos[5]~19\)) # (!\inst1|ball_x_pos\(6) & ((\inst1|ball_x_pos[5]~19\) # (GND)))))
-- \inst1|ball_x_pos[6]~21\ = CARRY((\inst1|ball_x_motion\(2) & (!\inst1|ball_x_pos\(6) & !\inst1|ball_x_pos[5]~19\)) # (!\inst1|ball_x_motion\(2) & ((!\inst1|ball_x_pos[5]~19\) # (!\inst1|ball_x_pos\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_motion\(2),
	datab => \inst1|ball_x_pos\(6),
	datad => VCC,
	cin => \inst1|ball_x_pos[5]~19\,
	combout => \inst1|ball_x_pos[6]~20_combout\,
	cout => \inst1|ball_x_pos[6]~21\);

-- Location: FF_X38_Y22_N17
\inst1|ball_x_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_x_pos[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_x_pos\(6));

-- Location: LCCOMB_X38_Y22_N18
\inst1|ball_x_pos[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_x_pos[7]~22_combout\ = ((\inst1|ball_x_motion\(2) $ (\inst1|ball_x_pos\(7) $ (!\inst1|ball_x_pos[6]~21\)))) # (GND)
-- \inst1|ball_x_pos[7]~23\ = CARRY((\inst1|ball_x_motion\(2) & ((\inst1|ball_x_pos\(7)) # (!\inst1|ball_x_pos[6]~21\))) # (!\inst1|ball_x_motion\(2) & (\inst1|ball_x_pos\(7) & !\inst1|ball_x_pos[6]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_motion\(2),
	datab => \inst1|ball_x_pos\(7),
	datad => VCC,
	cin => \inst1|ball_x_pos[6]~21\,
	combout => \inst1|ball_x_pos[7]~22_combout\,
	cout => \inst1|ball_x_pos[7]~23\);

-- Location: FF_X38_Y22_N19
\inst1|ball_x_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_x_pos[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_x_pos\(7));

-- Location: LCCOMB_X38_Y22_N20
\inst1|ball_x_pos[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_x_pos[8]~24_combout\ = (\inst1|ball_x_motion\(2) & ((\inst1|ball_x_pos\(8) & (\inst1|ball_x_pos[7]~23\ & VCC)) # (!\inst1|ball_x_pos\(8) & (!\inst1|ball_x_pos[7]~23\)))) # (!\inst1|ball_x_motion\(2) & ((\inst1|ball_x_pos\(8) & 
-- (!\inst1|ball_x_pos[7]~23\)) # (!\inst1|ball_x_pos\(8) & ((\inst1|ball_x_pos[7]~23\) # (GND)))))
-- \inst1|ball_x_pos[8]~25\ = CARRY((\inst1|ball_x_motion\(2) & (!\inst1|ball_x_pos\(8) & !\inst1|ball_x_pos[7]~23\)) # (!\inst1|ball_x_motion\(2) & ((!\inst1|ball_x_pos[7]~23\) # (!\inst1|ball_x_pos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_motion\(2),
	datab => \inst1|ball_x_pos\(8),
	datad => VCC,
	cin => \inst1|ball_x_pos[7]~23\,
	combout => \inst1|ball_x_pos[8]~24_combout\,
	cout => \inst1|ball_x_pos[8]~25\);

-- Location: FF_X38_Y22_N21
\inst1|ball_x_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_x_pos[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_x_pos\(8));

-- Location: LCCOMB_X38_Y22_N22
\inst1|ball_x_pos[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_x_pos[9]~26_combout\ = ((\inst1|ball_x_pos\(9) $ (\inst1|ball_x_motion\(2) $ (!\inst1|ball_x_pos[8]~25\)))) # (GND)
-- \inst1|ball_x_pos[9]~27\ = CARRY((\inst1|ball_x_pos\(9) & ((\inst1|ball_x_motion\(2)) # (!\inst1|ball_x_pos[8]~25\))) # (!\inst1|ball_x_pos\(9) & (\inst1|ball_x_motion\(2) & !\inst1|ball_x_pos[8]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_pos\(9),
	datab => \inst1|ball_x_motion\(2),
	datad => VCC,
	cin => \inst1|ball_x_pos[8]~25\,
	combout => \inst1|ball_x_pos[9]~26_combout\,
	cout => \inst1|ball_x_pos[9]~27\);

-- Location: FF_X38_Y22_N23
\inst1|ball_x_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_x_pos[9]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_x_pos\(9));

-- Location: LCCOMB_X38_Y22_N26
\inst1|ball_x_motion[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_x_motion[2]~0_combout\ = (\inst1|ball_x_pos\(9)) # ((\inst1|ball_x_pos\(3) & ((\inst1|ball_x_pos\(1)) # (\inst1|ball_x_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_pos\(3),
	datab => \inst1|ball_x_pos\(1),
	datac => \inst1|ball_x_pos\(9),
	datad => \inst1|ball_x_pos\(2),
	combout => \inst1|ball_x_motion[2]~0_combout\);

-- Location: LCCOMB_X38_Y22_N0
\inst1|ball_x_motion[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_x_motion[2]~1_combout\ = (\inst1|ball_x_pos\(4) & ((\inst1|ball_x_motion\(2)) # ((\inst1|ball_x_pos\(6) & \inst1|ball_x_pos\(3))))) # (!\inst1|ball_x_pos\(4) & (\inst1|ball_x_pos\(6) & (\inst1|ball_x_motion\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_pos\(4),
	datab => \inst1|ball_x_pos\(6),
	datac => \inst1|ball_x_motion\(2),
	datad => \inst1|ball_x_pos\(3),
	combout => \inst1|ball_x_motion[2]~1_combout\);

-- Location: LCCOMB_X38_Y22_N2
\inst1|ball_x_motion[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_x_motion[2]~2_combout\ = (\inst1|ball_x_pos\(7)) # ((\inst1|ball_x_motion\(2) & ((\inst1|ball_x_pos\(5)) # (\inst1|ball_x_motion[2]~1_combout\))) # (!\inst1|ball_x_motion\(2) & (\inst1|ball_x_pos\(5) & \inst1|ball_x_motion[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_motion\(2),
	datab => \inst1|ball_x_pos\(7),
	datac => \inst1|ball_x_pos\(5),
	datad => \inst1|ball_x_motion[2]~1_combout\,
	combout => \inst1|ball_x_motion[2]~2_combout\);

-- Location: LCCOMB_X38_Y22_N28
\inst1|ball_x_motion[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_x_motion[2]~3_combout\ = (\inst1|ball_x_pos\(8)) # ((\inst1|ball_x_motion[2]~2_combout\) # ((\inst1|ball_x_motion\(2) & \inst1|ball_x_motion[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_motion\(2),
	datab => \inst1|ball_x_pos\(8),
	datac => \inst1|ball_x_motion[2]~0_combout\,
	datad => \inst1|ball_x_motion[2]~2_combout\,
	combout => \inst1|ball_x_motion[2]~3_combout\);

-- Location: LCCOMB_X38_Y22_N4
\inst1|ball_x_motion[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_x_motion[2]~4_combout\ = (!\inst1|ball_x_pos\(10) & (\inst1|ball_x_motion[2]~3_combout\ & ((\inst1|ball_x_pos\(9)) # (\inst1|ball_x_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_pos\(9),
	datab => \inst1|ball_x_pos\(10),
	datac => \inst1|ball_x_motion\(2),
	datad => \inst1|ball_x_motion[2]~3_combout\,
	combout => \inst1|ball_x_motion[2]~4_combout\);

-- Location: FF_X38_Y22_N5
\inst1|ball_x_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_x_motion[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_x_motion\(2));

-- Location: LCCOMB_X38_Y22_N24
\inst1|ball_x_pos[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_x_pos[10]~28_combout\ = \inst1|ball_x_pos\(10) $ (\inst1|ball_x_motion\(2) $ (\inst1|ball_x_pos[9]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_pos\(10),
	datab => \inst1|ball_x_motion\(2),
	cin => \inst1|ball_x_pos[9]~27\,
	combout => \inst1|ball_x_pos[10]~28_combout\);

-- Location: FF_X38_Y22_N25
\inst1|ball_x_pos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_x_pos[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_x_pos\(10));

-- Location: LCCOMB_X37_Y22_N14
\inst1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = (\inst1|ball_x_pos\(4) & (\inst1|ball_x_pos\(3) $ (VCC))) # (!\inst1|ball_x_pos\(4) & (\inst1|ball_x_pos\(3) & VCC))
-- \inst1|Add1~1\ = CARRY((\inst1|ball_x_pos\(4) & \inst1|ball_x_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_pos\(4),
	datab => \inst1|ball_x_pos\(3),
	datad => VCC,
	combout => \inst1|Add1~0_combout\,
	cout => \inst1|Add1~1\);

-- Location: LCCOMB_X37_Y22_N16
\inst1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~2_combout\ = (\inst1|ball_x_pos\(5) & (!\inst1|Add1~1\)) # (!\inst1|ball_x_pos\(5) & ((\inst1|Add1~1\) # (GND)))
-- \inst1|Add1~3\ = CARRY((!\inst1|Add1~1\) # (!\inst1|ball_x_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ball_x_pos\(5),
	datad => VCC,
	cin => \inst1|Add1~1\,
	combout => \inst1|Add1~2_combout\,
	cout => \inst1|Add1~3\);

-- Location: LCCOMB_X37_Y22_N18
\inst1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~4_combout\ = (\inst1|ball_x_pos\(6) & (\inst1|Add1~3\ $ (GND))) # (!\inst1|ball_x_pos\(6) & (!\inst1|Add1~3\ & VCC))
-- \inst1|Add1~5\ = CARRY((\inst1|ball_x_pos\(6) & !\inst1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ball_x_pos\(6),
	datad => VCC,
	cin => \inst1|Add1~3\,
	combout => \inst1|Add1~4_combout\,
	cout => \inst1|Add1~5\);

-- Location: LCCOMB_X37_Y22_N20
\inst1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~6_combout\ = (\inst1|ball_x_pos\(7) & (!\inst1|Add1~5\)) # (!\inst1|ball_x_pos\(7) & ((\inst1|Add1~5\) # (GND)))
-- \inst1|Add1~7\ = CARRY((!\inst1|Add1~5\) # (!\inst1|ball_x_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ball_x_pos\(7),
	datad => VCC,
	cin => \inst1|Add1~5\,
	combout => \inst1|Add1~6_combout\,
	cout => \inst1|Add1~7\);

-- Location: LCCOMB_X37_Y22_N22
\inst1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~8_combout\ = (\inst1|ball_x_pos\(8) & (\inst1|Add1~7\ $ (GND))) # (!\inst1|ball_x_pos\(8) & (!\inst1|Add1~7\ & VCC))
-- \inst1|Add1~9\ = CARRY((\inst1|ball_x_pos\(8) & !\inst1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_pos\(8),
	datad => VCC,
	cin => \inst1|Add1~7\,
	combout => \inst1|Add1~8_combout\,
	cout => \inst1|Add1~9\);

-- Location: LCCOMB_X37_Y22_N24
\inst1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~10_combout\ = (\inst1|ball_x_pos\(9) & (!\inst1|Add1~9\)) # (!\inst1|ball_x_pos\(9) & ((\inst1|Add1~9\) # (GND)))
-- \inst1|Add1~11\ = CARRY((!\inst1|Add1~9\) # (!\inst1|ball_x_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ball_x_pos\(9),
	datad => VCC,
	cin => \inst1|Add1~9\,
	combout => \inst1|Add1~10_combout\,
	cout => \inst1|Add1~11\);

-- Location: LCCOMB_X37_Y22_N26
\inst1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~12_combout\ = (\inst1|ball_x_pos\(10) & (\inst1|Add1~11\ $ (GND))) # (!\inst1|ball_x_pos\(10) & (!\inst1|Add1~11\ & VCC))
-- \inst1|Add1~13\ = CARRY((\inst1|ball_x_pos\(10) & !\inst1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ball_x_pos\(10),
	datad => VCC,
	cin => \inst1|Add1~11\,
	combout => \inst1|Add1~12_combout\,
	cout => \inst1|Add1~13\);

-- Location: FF_X33_Y22_N27
\inst2|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|h_count\(9),
	sload => VCC,
	ena => \inst2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(9));

-- Location: FF_X33_Y22_N25
\inst2|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|h_count\(8),
	sload => VCC,
	ena => \inst2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(8));

-- Location: FF_X33_Y22_N23
\inst2|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|h_count\(7),
	sload => VCC,
	ena => \inst2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(7));

-- Location: FF_X33_Y22_N21
\inst2|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|h_count\(6),
	sload => VCC,
	ena => \inst2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(6));

-- Location: FF_X33_Y22_N19
\inst2|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|h_count\(5),
	sload => VCC,
	ena => \inst2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(5));

-- Location: FF_X36_Y22_N19
\inst2|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|h_count\(4),
	sload => VCC,
	ena => \inst2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(4));

-- Location: FF_X33_Y22_N17
\inst2|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|h_count\(3),
	sload => VCC,
	ena => \inst2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(3));

-- Location: LCCOMB_X33_Y22_N16
\inst1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = (\inst2|pixel_column\(4) & (\inst2|pixel_column\(3) $ (VCC))) # (!\inst2|pixel_column\(4) & (\inst2|pixel_column\(3) & VCC))
-- \inst1|Add0~1\ = CARRY((\inst2|pixel_column\(4) & \inst2|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(4),
	datab => \inst2|pixel_column\(3),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X33_Y22_N18
\inst1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst2|pixel_column\(5) & (!\inst1|Add0~1\)) # (!\inst2|pixel_column\(5) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst2|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_column\(5),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X33_Y22_N20
\inst1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst2|pixel_column\(6) & (\inst1|Add0~3\ $ (GND))) # (!\inst2|pixel_column\(6) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst2|pixel_column\(6) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_column\(6),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X33_Y22_N22
\inst1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst2|pixel_column\(7) & (!\inst1|Add0~5\)) # (!\inst2|pixel_column\(7) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst2|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(7),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X33_Y22_N24
\inst1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst2|pixel_column\(8) & (\inst1|Add0~7\ $ (GND))) # (!\inst2|pixel_column\(8) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst2|pixel_column\(8) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_column\(8),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X33_Y22_N26
\inst1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst2|pixel_column\(9) & (!\inst1|Add0~9\)) # (!\inst2|pixel_column\(9) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst2|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(9),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X33_Y22_N28
\inst1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = !\inst1|Add0~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\);

-- Location: FF_X36_Y22_N21
\inst2|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|h_count\(2),
	sload => VCC,
	ena => \inst2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(2));

-- Location: FF_X33_Y22_N1
\inst2|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|h_count\(1),
	sload => VCC,
	ena => \inst2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(1));

-- Location: LCCOMB_X35_Y22_N0
\inst1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_cout\ = CARRY((\inst1|ball_x_pos\(1) & !\inst2|pixel_column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_pos\(1),
	datab => \inst2|pixel_column\(1),
	datad => VCC,
	cout => \inst1|LessThan0~1_cout\);

-- Location: LCCOMB_X35_Y22_N2
\inst1|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_cout\ = CARRY((\inst2|pixel_column\(2) & ((!\inst1|LessThan0~1_cout\) # (!\inst1|ball_x_pos\(2)))) # (!\inst2|pixel_column\(2) & (!\inst1|ball_x_pos\(2) & !\inst1|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(2),
	datab => \inst1|ball_x_pos\(2),
	datad => VCC,
	cin => \inst1|LessThan0~1_cout\,
	cout => \inst1|LessThan0~3_cout\);

-- Location: LCCOMB_X35_Y22_N4
\inst1|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~5_cout\ = CARRY((\inst1|ball_x_pos\(3) & ((\inst2|pixel_column\(3)) # (!\inst1|LessThan0~3_cout\))) # (!\inst1|ball_x_pos\(3) & (\inst2|pixel_column\(3) & !\inst1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_pos\(3),
	datab => \inst2|pixel_column\(3),
	datad => VCC,
	cin => \inst1|LessThan0~3_cout\,
	cout => \inst1|LessThan0~5_cout\);

-- Location: LCCOMB_X35_Y22_N6
\inst1|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~7_cout\ = CARRY((\inst1|ball_x_pos\(4) & (\inst1|Add0~0_combout\ & !\inst1|LessThan0~5_cout\)) # (!\inst1|ball_x_pos\(4) & ((\inst1|Add0~0_combout\) # (!\inst1|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_pos\(4),
	datab => \inst1|Add0~0_combout\,
	datad => VCC,
	cin => \inst1|LessThan0~5_cout\,
	cout => \inst1|LessThan0~7_cout\);

-- Location: LCCOMB_X35_Y22_N8
\inst1|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~9_cout\ = CARRY((\inst1|ball_x_pos\(5) & ((!\inst1|LessThan0~7_cout\) # (!\inst1|Add0~2_combout\))) # (!\inst1|ball_x_pos\(5) & (!\inst1|Add0~2_combout\ & !\inst1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_pos\(5),
	datab => \inst1|Add0~2_combout\,
	datad => VCC,
	cin => \inst1|LessThan0~7_cout\,
	cout => \inst1|LessThan0~9_cout\);

-- Location: LCCOMB_X35_Y22_N10
\inst1|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~11_cout\ = CARRY((\inst1|Add0~4_combout\ & ((!\inst1|LessThan0~9_cout\) # (!\inst1|ball_x_pos\(6)))) # (!\inst1|Add0~4_combout\ & (!\inst1|ball_x_pos\(6) & !\inst1|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~4_combout\,
	datab => \inst1|ball_x_pos\(6),
	datad => VCC,
	cin => \inst1|LessThan0~9_cout\,
	cout => \inst1|LessThan0~11_cout\);

-- Location: LCCOMB_X35_Y22_N12
\inst1|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~13_cout\ = CARRY((\inst1|ball_x_pos\(7) & ((!\inst1|LessThan0~11_cout\) # (!\inst1|Add0~6_combout\))) # (!\inst1|ball_x_pos\(7) & (!\inst1|Add0~6_combout\ & !\inst1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_pos\(7),
	datab => \inst1|Add0~6_combout\,
	datad => VCC,
	cin => \inst1|LessThan0~11_cout\,
	cout => \inst1|LessThan0~13_cout\);

-- Location: LCCOMB_X35_Y22_N14
\inst1|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~15_cout\ = CARRY((\inst1|Add0~8_combout\ & ((!\inst1|LessThan0~13_cout\) # (!\inst1|ball_x_pos\(8)))) # (!\inst1|Add0~8_combout\ & (!\inst1|ball_x_pos\(8) & !\inst1|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~8_combout\,
	datab => \inst1|ball_x_pos\(8),
	datad => VCC,
	cin => \inst1|LessThan0~13_cout\,
	cout => \inst1|LessThan0~15_cout\);

-- Location: LCCOMB_X35_Y22_N16
\inst1|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~17_cout\ = CARRY((\inst1|Add0~10_combout\ & (\inst1|ball_x_pos\(9) & !\inst1|LessThan0~15_cout\)) # (!\inst1|Add0~10_combout\ & ((\inst1|ball_x_pos\(9)) # (!\inst1|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~10_combout\,
	datab => \inst1|ball_x_pos\(9),
	datad => VCC,
	cin => \inst1|LessThan0~15_cout\,
	cout => \inst1|LessThan0~17_cout\);

-- Location: LCCOMB_X35_Y22_N18
\inst1|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~18_combout\ = (\inst1|Add0~12_combout\ & (\inst1|LessThan0~17_cout\ & \inst1|ball_x_pos\(10))) # (!\inst1|Add0~12_combout\ & ((\inst1|LessThan0~17_cout\) # (\inst1|ball_x_pos\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~12_combout\,
	datad => \inst1|ball_x_pos\(10),
	cin => \inst1|LessThan0~17_cout\,
	combout => \inst1|LessThan0~18_combout\);

-- Location: FF_X30_Y22_N19
\inst2|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|v_count\(8),
	sload => VCC,
	ena => \inst2|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(8));

-- Location: FF_X31_Y22_N29
\inst2|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|v_count\(7),
	sload => VCC,
	ena => \inst2|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(7));

-- Location: FF_X31_Y22_N19
\inst2|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|v_count\(6),
	sload => VCC,
	ena => \inst2|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(6));

-- Location: FF_X30_Y22_N21
\inst2|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|v_count\(5),
	sload => VCC,
	ena => \inst2|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(5));

-- Location: FF_X31_Y22_N11
\inst2|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|v_count\(3),
	sload => VCC,
	ena => \inst2|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(3));

-- Location: FF_X31_Y22_N15
\inst2|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|v_count\(4),
	sload => VCC,
	ena => \inst2|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(4));

-- Location: LCCOMB_X29_Y22_N0
\inst1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~0_combout\ = (\inst2|pixel_row\(3) & (\inst2|pixel_row\(4) $ (VCC))) # (!\inst2|pixel_row\(3) & (\inst2|pixel_row\(4) & VCC))
-- \inst1|Add2~1\ = CARRY((\inst2|pixel_row\(3) & \inst2|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(3),
	datab => \inst2|pixel_row\(4),
	datad => VCC,
	combout => \inst1|Add2~0_combout\,
	cout => \inst1|Add2~1\);

-- Location: LCCOMB_X29_Y22_N2
\inst1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~2_combout\ = (\inst2|pixel_row\(5) & (!\inst1|Add2~1\)) # (!\inst2|pixel_row\(5) & ((\inst1|Add2~1\) # (GND)))
-- \inst1|Add2~3\ = CARRY((!\inst1|Add2~1\) # (!\inst2|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(5),
	datad => VCC,
	cin => \inst1|Add2~1\,
	combout => \inst1|Add2~2_combout\,
	cout => \inst1|Add2~3\);

-- Location: LCCOMB_X29_Y22_N4
\inst1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~4_combout\ = (\inst2|pixel_row\(6) & (\inst1|Add2~3\ $ (GND))) # (!\inst2|pixel_row\(6) & (!\inst1|Add2~3\ & VCC))
-- \inst1|Add2~5\ = CARRY((\inst2|pixel_row\(6) & !\inst1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(6),
	datad => VCC,
	cin => \inst1|Add2~3\,
	combout => \inst1|Add2~4_combout\,
	cout => \inst1|Add2~5\);

-- Location: LCCOMB_X29_Y22_N6
\inst1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~6_combout\ = (\inst2|pixel_row\(7) & (!\inst1|Add2~5\)) # (!\inst2|pixel_row\(7) & ((\inst1|Add2~5\) # (GND)))
-- \inst1|Add2~7\ = CARRY((!\inst1|Add2~5\) # (!\inst2|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(7),
	datad => VCC,
	cin => \inst1|Add2~5\,
	combout => \inst1|Add2~6_combout\,
	cout => \inst1|Add2~7\);

-- Location: LCCOMB_X29_Y22_N8
\inst1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~8_combout\ = (\inst2|pixel_row\(8) & (\inst1|Add2~7\ $ (GND))) # (!\inst2|pixel_row\(8) & (!\inst1|Add2~7\ & VCC))
-- \inst1|Add2~9\ = CARRY((\inst2|pixel_row\(8) & !\inst1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_row\(8),
	datad => VCC,
	cin => \inst1|Add2~7\,
	combout => \inst1|Add2~8_combout\,
	cout => \inst1|Add2~9\);

-- Location: LCCOMB_X29_Y22_N10
\inst1|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~10_combout\ = \inst1|Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Add2~9\,
	combout => \inst1|Add2~10_combout\);

-- Location: LCCOMB_X26_Y20_N20
\inst|SHIFTIN[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTIN[8]~feeder_combout\ = \mouse_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_data~input_o\,
	combout => \inst|SHIFTIN[8]~feeder_combout\);

-- Location: LCCOMB_X26_Y20_N24
\inst|SHIFTIN[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTIN[1]~0_combout\ = (\inst|READ_CHAR~q\ & (!\inst|mouse_state.WAIT_OUTPUT_READY~q\ & \inst|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|READ_CHAR~q\,
	datab => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|SHIFTIN[1]~0_combout\);

-- Location: FF_X26_Y20_N21
\inst|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTIN[8]~feeder_combout\,
	ena => \inst|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(8));

-- Location: LCCOMB_X26_Y20_N10
\inst|SHIFTIN[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTIN[7]~feeder_combout\ = \inst|SHIFTIN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTIN\(8),
	combout => \inst|SHIFTIN[7]~feeder_combout\);

-- Location: FF_X26_Y20_N11
\inst|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTIN[7]~feeder_combout\,
	ena => \inst|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(7));

-- Location: LCCOMB_X26_Y20_N12
\inst|SHIFTIN[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTIN[6]~feeder_combout\ = \inst|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTIN\(7),
	combout => \inst|SHIFTIN[6]~feeder_combout\);

-- Location: FF_X26_Y20_N13
\inst|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTIN[6]~feeder_combout\,
	ena => \inst|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(6));

-- Location: LCCOMB_X26_Y20_N22
\inst|SHIFTIN[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTIN[5]~feeder_combout\ = \inst|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTIN\(6),
	combout => \inst|SHIFTIN[5]~feeder_combout\);

-- Location: FF_X26_Y20_N23
\inst|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTIN[5]~feeder_combout\,
	ena => \inst|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(5));

-- Location: LCCOMB_X26_Y20_N28
\inst|SHIFTIN[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTIN[4]~feeder_combout\ = \inst|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SHIFTIN\(5),
	combout => \inst|SHIFTIN[4]~feeder_combout\);

-- Location: FF_X26_Y20_N29
\inst|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTIN[4]~feeder_combout\,
	ena => \inst|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(4));

-- Location: LCCOMB_X26_Y20_N2
\inst|SHIFTIN[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTIN[3]~feeder_combout\ = \inst|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTIN\(4),
	combout => \inst|SHIFTIN[3]~feeder_combout\);

-- Location: FF_X26_Y20_N3
\inst|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTIN[3]~feeder_combout\,
	ena => \inst|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(3));

-- Location: LCCOMB_X26_Y20_N4
\inst|SHIFTIN[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTIN[2]~feeder_combout\ = \inst|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTIN\(3),
	combout => \inst|SHIFTIN[2]~feeder_combout\);

-- Location: FF_X26_Y20_N5
\inst|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTIN[2]~feeder_combout\,
	ena => \inst|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(2));

-- Location: FF_X26_Y20_N25
\inst|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst|SHIFTIN\(2),
	sload => VCC,
	ena => \inst|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(1));

-- Location: LCCOMB_X26_Y20_N14
\inst|SHIFTIN[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SHIFTIN[0]~feeder_combout\ = \inst|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTIN\(1),
	combout => \inst|SHIFTIN[0]~feeder_combout\);

-- Location: FF_X26_Y20_N15
\inst|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|SHIFTIN[0]~feeder_combout\,
	ena => \inst|SHIFTIN[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SHIFTIN\(0));

-- Location: LCCOMB_X27_Y20_N24
\inst|PACKET_CHAR1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PACKET_CHAR1[0]~feeder_combout\ = \inst|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTIN\(0),
	combout => \inst|PACKET_CHAR1[0]~feeder_combout\);

-- Location: LCCOMB_X28_Y20_N28
\inst|PACKET_COUNT[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PACKET_COUNT[1]~0_combout\ = (\inst|READ_CHAR~q\ & (!\inst|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|READ_CHAR~q\,
	datac => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|PACKET_COUNT[1]~0_combout\);

-- Location: LCCOMB_X28_Y20_N30
\inst|PACKET_COUNT[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PACKET_COUNT[1]~1_combout\ = \inst|PACKET_COUNT\(1) $ (((\inst|PACKET_COUNT[1]~0_combout\ & \inst|PACKET_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PACKET_COUNT[1]~0_combout\,
	datac => \inst|PACKET_COUNT\(1),
	datad => \inst|PACKET_COUNT\(0),
	combout => \inst|PACKET_COUNT[1]~1_combout\);

-- Location: FF_X28_Y20_N31
\inst|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|PACKET_COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PACKET_COUNT\(1));

-- Location: LCCOMB_X28_Y20_N24
\inst|PACKET_COUNT[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PACKET_COUNT[0]~2_combout\ = (\inst|PACKET_COUNT[1]~0_combout\ & ((\inst|PACKET_COUNT\(1)) # (!\inst|PACKET_COUNT\(0)))) # (!\inst|PACKET_COUNT[1]~0_combout\ & ((\inst|PACKET_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PACKET_COUNT\(1),
	datab => \inst|PACKET_COUNT[1]~0_combout\,
	datac => \inst|PACKET_COUNT\(0),
	combout => \inst|PACKET_COUNT[0]~2_combout\);

-- Location: FF_X28_Y20_N25
\inst|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|PACKET_COUNT[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PACKET_COUNT\(0));

-- Location: LCCOMB_X28_Y20_N18
\inst|PACKET_CHAR1[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PACKET_CHAR1[1]~0_combout\ = (\inst|PACKET_COUNT\(0) & (!\inst|PACKET_COUNT\(1) & \inst|PACKET_COUNT[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PACKET_COUNT\(0),
	datac => \inst|PACKET_COUNT\(1),
	datad => \inst|PACKET_COUNT[1]~0_combout\,
	combout => \inst|PACKET_CHAR1[1]~0_combout\);

-- Location: FF_X27_Y20_N25
\inst|PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|PACKET_CHAR1[0]~feeder_combout\,
	ena => \inst|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PACKET_CHAR1\(0));

-- Location: LCCOMB_X28_Y24_N18
\inst|left_button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|left_button~feeder_combout\ = \inst|PACKET_CHAR1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PACKET_CHAR1\(0),
	combout => \inst|left_button~feeder_combout\);

-- Location: LCCOMB_X28_Y20_N14
\inst|right_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|right_button~0_combout\ = (\inst|PACKET_COUNT\(1) & \inst|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PACKET_COUNT\(1),
	datad => \inst|PACKET_COUNT\(0),
	combout => \inst|right_button~0_combout\);

-- Location: LCCOMB_X28_Y24_N4
\inst|right_button~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|right_button~1_combout\ = (!\inst|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst|READ_CHAR~q\ & (\inst|right_button~0_combout\ & !\inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst|READ_CHAR~q\,
	datac => \inst|right_button~0_combout\,
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|right_button~1_combout\);

-- Location: FF_X28_Y24_N19
\inst|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|left_button~feeder_combout\,
	ena => \inst|right_button~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|left_button~q\);

-- Location: LCCOMB_X30_Y22_N8
\inst1|ball_y_pos[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_y_pos[5]~17_combout\ = ((\inst1|ball_y_pos\(5) $ (\inst1|ball_y_motion\(2) $ (!\inst1|ball_y_pos[4]~16\)))) # (GND)
-- \inst1|ball_y_pos[5]~18\ = CARRY((\inst1|ball_y_pos\(5) & ((\inst1|ball_y_motion\(2)) # (!\inst1|ball_y_pos[4]~16\))) # (!\inst1|ball_y_pos\(5) & (\inst1|ball_y_motion\(2) & !\inst1|ball_y_pos[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(5),
	datab => \inst1|ball_y_motion\(2),
	datad => VCC,
	cin => \inst1|ball_y_pos[4]~16\,
	combout => \inst1|ball_y_pos[5]~17_combout\,
	cout => \inst1|ball_y_pos[5]~18\);

-- Location: LCCOMB_X30_Y22_N10
\inst1|ball_y_pos[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_y_pos[6]~19_combout\ = (\inst1|ball_y_pos\(6) & ((\inst1|ball_y_motion\(2) & (\inst1|ball_y_pos[5]~18\ & VCC)) # (!\inst1|ball_y_motion\(2) & (!\inst1|ball_y_pos[5]~18\)))) # (!\inst1|ball_y_pos\(6) & ((\inst1|ball_y_motion\(2) & 
-- (!\inst1|ball_y_pos[5]~18\)) # (!\inst1|ball_y_motion\(2) & ((\inst1|ball_y_pos[5]~18\) # (GND)))))
-- \inst1|ball_y_pos[6]~20\ = CARRY((\inst1|ball_y_pos\(6) & (!\inst1|ball_y_motion\(2) & !\inst1|ball_y_pos[5]~18\)) # (!\inst1|ball_y_pos\(6) & ((!\inst1|ball_y_pos[5]~18\) # (!\inst1|ball_y_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(6),
	datab => \inst1|ball_y_motion\(2),
	datad => VCC,
	cin => \inst1|ball_y_pos[5]~18\,
	combout => \inst1|ball_y_pos[6]~19_combout\,
	cout => \inst1|ball_y_pos[6]~20\);

-- Location: FF_X30_Y22_N11
\inst1|ball_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_y_pos[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_y_pos\(6));

-- Location: LCCOMB_X30_Y22_N12
\inst1|ball_y_pos[7]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_y_pos[7]~21_combout\ = ((\inst1|ball_y_pos\(7) $ (\inst1|ball_y_motion\(2) $ (!\inst1|ball_y_pos[6]~20\)))) # (GND)
-- \inst1|ball_y_pos[7]~22\ = CARRY((\inst1|ball_y_pos\(7) & ((\inst1|ball_y_motion\(2)) # (!\inst1|ball_y_pos[6]~20\))) # (!\inst1|ball_y_pos\(7) & (\inst1|ball_y_motion\(2) & !\inst1|ball_y_pos[6]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(7),
	datab => \inst1|ball_y_motion\(2),
	datad => VCC,
	cin => \inst1|ball_y_pos[6]~20\,
	combout => \inst1|ball_y_pos[7]~21_combout\,
	cout => \inst1|ball_y_pos[7]~22\);

-- Location: FF_X30_Y22_N13
\inst1|ball_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_y_pos[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_y_pos\(7));

-- Location: LCCOMB_X30_Y22_N14
\inst1|ball_y_pos[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_y_pos[8]~23_combout\ = (\inst1|ball_y_motion\(2) & ((\inst1|ball_y_pos\(8) & (\inst1|ball_y_pos[7]~22\ & VCC)) # (!\inst1|ball_y_pos\(8) & (!\inst1|ball_y_pos[7]~22\)))) # (!\inst1|ball_y_motion\(2) & ((\inst1|ball_y_pos\(8) & 
-- (!\inst1|ball_y_pos[7]~22\)) # (!\inst1|ball_y_pos\(8) & ((\inst1|ball_y_pos[7]~22\) # (GND)))))
-- \inst1|ball_y_pos[8]~24\ = CARRY((\inst1|ball_y_motion\(2) & (!\inst1|ball_y_pos\(8) & !\inst1|ball_y_pos[7]~22\)) # (!\inst1|ball_y_motion\(2) & ((!\inst1|ball_y_pos[7]~22\) # (!\inst1|ball_y_pos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_motion\(2),
	datab => \inst1|ball_y_pos\(8),
	datad => VCC,
	cin => \inst1|ball_y_pos[7]~22\,
	combout => \inst1|ball_y_pos[8]~23_combout\,
	cout => \inst1|ball_y_pos[8]~24\);

-- Location: FF_X30_Y22_N15
\inst1|ball_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_y_pos[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_y_pos\(8));

-- Location: LCCOMB_X31_Y22_N0
\inst1|ball_y_motion~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_y_motion~2_combout\ = ((!\inst1|ball_y_pos\(5) & ((!\inst1|ball_y_pos\(3)) # (!\inst1|ball_y_pos\(4))))) # (!\inst1|ball_y_pos\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(5),
	datab => \inst1|ball_y_pos\(4),
	datac => \inst1|ball_y_pos\(3),
	datad => \inst1|ball_y_pos\(8),
	combout => \inst1|ball_y_motion~2_combout\);

-- Location: LCCOMB_X31_Y22_N30
\inst1|ball_y_motion~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_y_motion~3_combout\ = (!\inst|left_button~q\ & (((\inst1|ball_y_motion~2_combout\) # (!\inst1|ball_y_pos\(6))) # (!\inst1|ball_y_pos\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(7),
	datab => \inst1|ball_y_pos\(6),
	datac => \inst|left_button~q\,
	datad => \inst1|ball_y_motion~2_combout\,
	combout => \inst1|ball_y_motion~3_combout\);

-- Location: LCCOMB_X30_Y22_N0
\inst1|ball_y_pos[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_y_pos[1]~9_combout\ = (\inst1|ball_y_motion\(1) & (\inst1|ball_y_pos\(1) $ (VCC))) # (!\inst1|ball_y_motion\(1) & (\inst1|ball_y_pos\(1) & VCC))
-- \inst1|ball_y_pos[1]~10\ = CARRY((\inst1|ball_y_motion\(1) & \inst1|ball_y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_motion\(1),
	datab => \inst1|ball_y_pos\(1),
	datad => VCC,
	combout => \inst1|ball_y_pos[1]~9_combout\,
	cout => \inst1|ball_y_pos[1]~10\);

-- Location: FF_X30_Y22_N1
\inst1|ball_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_y_pos[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_y_pos\(1));

-- Location: LCCOMB_X31_Y22_N24
\inst1|ball_y_motion~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_y_motion~0_combout\ = (\inst1|ball_y_pos\(8)) # ((\inst1|ball_y_pos\(3) & ((\inst1|ball_y_pos\(2)) # (\inst1|ball_y_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(2),
	datab => \inst1|ball_y_pos\(3),
	datac => \inst1|ball_y_pos\(1),
	datad => \inst1|ball_y_pos\(8),
	combout => \inst1|ball_y_motion~0_combout\);

-- Location: LCCOMB_X31_Y22_N28
\inst1|Move_Ball~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Move_Ball~1_combout\ = (\inst|left_button~q\ & ((\inst1|ball_y_motion~0_combout\) # (\inst1|ball_y_motion~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|left_button~q\,
	datab => \inst1|ball_y_motion~0_combout\,
	datad => \inst1|ball_y_motion~1_combout\,
	combout => \inst1|Move_Ball~1_combout\);

-- Location: LCCOMB_X31_Y22_N4
\inst1|ball_y_motion~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_y_motion~4_combout\ = (!\inst1|ball_y_pos\(9) & ((\inst1|ball_y_motion~3_combout\) # (\inst1|Move_Ball~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(9),
	datac => \inst1|ball_y_motion~3_combout\,
	datad => \inst1|Move_Ball~1_combout\,
	combout => \inst1|ball_y_motion~4_combout\);

-- Location: FF_X31_Y22_N5
\inst1|ball_y_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_y_motion~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_y_motion\(1));

-- Location: LCCOMB_X30_Y22_N2
\inst1|ball_y_pos[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_y_pos[2]~11_combout\ = (\inst1|ball_y_motion\(2) & ((\inst1|ball_y_pos\(2) & (\inst1|ball_y_pos[1]~10\ & VCC)) # (!\inst1|ball_y_pos\(2) & (!\inst1|ball_y_pos[1]~10\)))) # (!\inst1|ball_y_motion\(2) & ((\inst1|ball_y_pos\(2) & 
-- (!\inst1|ball_y_pos[1]~10\)) # (!\inst1|ball_y_pos\(2) & ((\inst1|ball_y_pos[1]~10\) # (GND)))))
-- \inst1|ball_y_pos[2]~12\ = CARRY((\inst1|ball_y_motion\(2) & (!\inst1|ball_y_pos\(2) & !\inst1|ball_y_pos[1]~10\)) # (!\inst1|ball_y_motion\(2) & ((!\inst1|ball_y_pos[1]~10\) # (!\inst1|ball_y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_motion\(2),
	datab => \inst1|ball_y_pos\(2),
	datad => VCC,
	cin => \inst1|ball_y_pos[1]~10\,
	combout => \inst1|ball_y_pos[2]~11_combout\,
	cout => \inst1|ball_y_pos[2]~12\);

-- Location: FF_X30_Y22_N3
\inst1|ball_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_y_pos[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_y_pos\(2));

-- Location: LCCOMB_X30_Y22_N4
\inst1|ball_y_pos[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_y_pos[3]~13_combout\ = ((\inst1|ball_y_motion\(2) $ (\inst1|ball_y_pos\(3) $ (!\inst1|ball_y_pos[2]~12\)))) # (GND)
-- \inst1|ball_y_pos[3]~14\ = CARRY((\inst1|ball_y_motion\(2) & ((\inst1|ball_y_pos\(3)) # (!\inst1|ball_y_pos[2]~12\))) # (!\inst1|ball_y_motion\(2) & (\inst1|ball_y_pos\(3) & !\inst1|ball_y_pos[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_motion\(2),
	datab => \inst1|ball_y_pos\(3),
	datad => VCC,
	cin => \inst1|ball_y_pos[2]~12\,
	combout => \inst1|ball_y_pos[3]~13_combout\,
	cout => \inst1|ball_y_pos[3]~14\);

-- Location: FF_X30_Y22_N5
\inst1|ball_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_y_pos[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_y_pos\(3));

-- Location: LCCOMB_X30_Y22_N6
\inst1|ball_y_pos[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_y_pos[4]~15_combout\ = (\inst1|ball_y_motion\(2) & ((\inst1|ball_y_pos\(4) & (\inst1|ball_y_pos[3]~14\ & VCC)) # (!\inst1|ball_y_pos\(4) & (!\inst1|ball_y_pos[3]~14\)))) # (!\inst1|ball_y_motion\(2) & ((\inst1|ball_y_pos\(4) & 
-- (!\inst1|ball_y_pos[3]~14\)) # (!\inst1|ball_y_pos\(4) & ((\inst1|ball_y_pos[3]~14\) # (GND)))))
-- \inst1|ball_y_pos[4]~16\ = CARRY((\inst1|ball_y_motion\(2) & (!\inst1|ball_y_pos\(4) & !\inst1|ball_y_pos[3]~14\)) # (!\inst1|ball_y_motion\(2) & ((!\inst1|ball_y_pos[3]~14\) # (!\inst1|ball_y_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_motion\(2),
	datab => \inst1|ball_y_pos\(4),
	datad => VCC,
	cin => \inst1|ball_y_pos[3]~14\,
	combout => \inst1|ball_y_pos[4]~15_combout\,
	cout => \inst1|ball_y_pos[4]~16\);

-- Location: FF_X30_Y22_N7
\inst1|ball_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_y_pos[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_y_pos\(4));

-- Location: FF_X30_Y22_N9
\inst1|ball_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_y_pos[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_y_pos\(5));

-- Location: LCCOMB_X31_Y22_N2
\inst1|ball_y_motion~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_y_motion~1_combout\ = (\inst1|ball_y_pos\(5)) # ((\inst1|ball_y_pos\(4)) # ((\inst1|ball_y_pos\(7)) # (\inst1|ball_y_pos\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(5),
	datab => \inst1|ball_y_pos\(4),
	datac => \inst1|ball_y_pos\(7),
	datad => \inst1|ball_y_pos\(6),
	combout => \inst1|ball_y_motion~1_combout\);

-- Location: LCCOMB_X30_Y22_N30
\inst1|Move_Ball~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Move_Ball~0_combout\ = (\inst|left_button~q\ & (!\inst1|ball_y_pos\(9) & ((\inst1|ball_y_motion~1_combout\) # (\inst1|ball_y_motion~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|left_button~q\,
	datab => \inst1|ball_y_pos\(9),
	datac => \inst1|ball_y_motion~1_combout\,
	datad => \inst1|ball_y_motion~0_combout\,
	combout => \inst1|Move_Ball~0_combout\);

-- Location: FF_X30_Y22_N31
\inst1|ball_y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Move_Ball~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_y_motion\(2));

-- Location: LCCOMB_X30_Y22_N16
\inst1|ball_y_pos[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_y_pos[9]~25_combout\ = \inst1|ball_y_motion\(2) $ (\inst1|ball_y_pos[8]~24\ $ (!\inst1|ball_y_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ball_y_motion\(2),
	datad => \inst1|ball_y_pos\(9),
	cin => \inst1|ball_y_pos[8]~24\,
	combout => \inst1|ball_y_pos[9]~25_combout\);

-- Location: FF_X30_Y22_N17
\inst1|ball_y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst1|ball_y_pos[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ball_y_pos\(9));

-- Location: FF_X30_Y22_N23
\inst2|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|v_count\(2),
	sload => VCC,
	ena => \inst2|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(2));

-- Location: FF_X31_Y22_N9
\inst2|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|v_count\(1),
	sload => VCC,
	ena => \inst2|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(1));

-- Location: LCCOMB_X29_Y22_N14
\inst1|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~1_cout\ = CARRY((!\inst2|pixel_row\(1) & \inst1|ball_y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(1),
	datab => \inst1|ball_y_pos\(1),
	datad => VCC,
	cout => \inst1|LessThan2~1_cout\);

-- Location: LCCOMB_X29_Y22_N16
\inst1|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~3_cout\ = CARRY((\inst1|ball_y_pos\(2) & (\inst2|pixel_row\(2) & !\inst1|LessThan2~1_cout\)) # (!\inst1|ball_y_pos\(2) & ((\inst2|pixel_row\(2)) # (!\inst1|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(2),
	datab => \inst2|pixel_row\(2),
	datad => VCC,
	cin => \inst1|LessThan2~1_cout\,
	cout => \inst1|LessThan2~3_cout\);

-- Location: LCCOMB_X29_Y22_N18
\inst1|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~5_cout\ = CARRY((\inst2|pixel_row\(3) & ((\inst1|ball_y_pos\(3)) # (!\inst1|LessThan2~3_cout\))) # (!\inst2|pixel_row\(3) & (\inst1|ball_y_pos\(3) & !\inst1|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(3),
	datab => \inst1|ball_y_pos\(3),
	datad => VCC,
	cin => \inst1|LessThan2~3_cout\,
	cout => \inst1|LessThan2~5_cout\);

-- Location: LCCOMB_X29_Y22_N20
\inst1|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~7_cout\ = CARRY((\inst1|ball_y_pos\(4) & (\inst1|Add2~0_combout\ & !\inst1|LessThan2~5_cout\)) # (!\inst1|ball_y_pos\(4) & ((\inst1|Add2~0_combout\) # (!\inst1|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(4),
	datab => \inst1|Add2~0_combout\,
	datad => VCC,
	cin => \inst1|LessThan2~5_cout\,
	cout => \inst1|LessThan2~7_cout\);

-- Location: LCCOMB_X29_Y22_N22
\inst1|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~9_cout\ = CARRY((\inst1|ball_y_pos\(5) & ((!\inst1|LessThan2~7_cout\) # (!\inst1|Add2~2_combout\))) # (!\inst1|ball_y_pos\(5) & (!\inst1|Add2~2_combout\ & !\inst1|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(5),
	datab => \inst1|Add2~2_combout\,
	datad => VCC,
	cin => \inst1|LessThan2~7_cout\,
	cout => \inst1|LessThan2~9_cout\);

-- Location: LCCOMB_X29_Y22_N24
\inst1|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~11_cout\ = CARRY((\inst1|ball_y_pos\(6) & (\inst1|Add2~4_combout\ & !\inst1|LessThan2~9_cout\)) # (!\inst1|ball_y_pos\(6) & ((\inst1|Add2~4_combout\) # (!\inst1|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(6),
	datab => \inst1|Add2~4_combout\,
	datad => VCC,
	cin => \inst1|LessThan2~9_cout\,
	cout => \inst1|LessThan2~11_cout\);

-- Location: LCCOMB_X29_Y22_N26
\inst1|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~13_cout\ = CARRY((\inst1|Add2~6_combout\ & (\inst1|ball_y_pos\(7) & !\inst1|LessThan2~11_cout\)) # (!\inst1|Add2~6_combout\ & ((\inst1|ball_y_pos\(7)) # (!\inst1|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~6_combout\,
	datab => \inst1|ball_y_pos\(7),
	datad => VCC,
	cin => \inst1|LessThan2~11_cout\,
	cout => \inst1|LessThan2~13_cout\);

-- Location: LCCOMB_X29_Y22_N28
\inst1|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~15_cout\ = CARRY((\inst1|ball_y_pos\(8) & (\inst1|Add2~8_combout\ & !\inst1|LessThan2~13_cout\)) # (!\inst1|ball_y_pos\(8) & ((\inst1|Add2~8_combout\) # (!\inst1|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(8),
	datab => \inst1|Add2~8_combout\,
	datad => VCC,
	cin => \inst1|LessThan2~13_cout\,
	cout => \inst1|LessThan2~15_cout\);

-- Location: LCCOMB_X29_Y22_N30
\inst1|LessThan2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~16_combout\ = (\inst1|Add2~10_combout\ & (!\inst1|LessThan2~15_cout\ & \inst1|ball_y_pos\(9))) # (!\inst1|Add2~10_combout\ & ((\inst1|ball_y_pos\(9)) # (!\inst1|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~10_combout\,
	datad => \inst1|ball_y_pos\(9),
	cin => \inst1|LessThan2~15_cout\,
	combout => \inst1|LessThan2~16_combout\);

-- Location: FF_X36_Y22_N11
\inst2|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|h_count\(0),
	sload => VCC,
	ena => \inst2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(0));

-- Location: LCCOMB_X36_Y22_N10
\inst1|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_cout\ = CARRY(\inst2|pixel_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(0),
	datad => VCC,
	cout => \inst1|LessThan1~1_cout\);

-- Location: LCCOMB_X36_Y22_N12
\inst1|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~3_cout\ = CARRY((\inst2|pixel_column\(1) & (\inst1|ball_x_pos\(1) & !\inst1|LessThan1~1_cout\)) # (!\inst2|pixel_column\(1) & ((\inst1|ball_x_pos\(1)) # (!\inst1|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(1),
	datab => \inst1|ball_x_pos\(1),
	datad => VCC,
	cin => \inst1|LessThan1~1_cout\,
	cout => \inst1|LessThan1~3_cout\);

-- Location: LCCOMB_X36_Y22_N14
\inst1|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~5_cout\ = CARRY((\inst1|ball_x_pos\(2) & (\inst2|pixel_column\(2) & !\inst1|LessThan1~3_cout\)) # (!\inst1|ball_x_pos\(2) & ((\inst2|pixel_column\(2)) # (!\inst1|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_x_pos\(2),
	datab => \inst2|pixel_column\(2),
	datad => VCC,
	cin => \inst1|LessThan1~3_cout\,
	cout => \inst1|LessThan1~5_cout\);

-- Location: LCCOMB_X36_Y22_N16
\inst1|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~7_cout\ = CARRY((\inst2|pixel_column\(3) & (!\inst1|ball_x_pos\(3) & !\inst1|LessThan1~5_cout\)) # (!\inst2|pixel_column\(3) & ((!\inst1|LessThan1~5_cout\) # (!\inst1|ball_x_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(3),
	datab => \inst1|ball_x_pos\(3),
	datad => VCC,
	cin => \inst1|LessThan1~5_cout\,
	cout => \inst1|LessThan1~7_cout\);

-- Location: LCCOMB_X36_Y22_N18
\inst1|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~9_cout\ = CARRY((\inst2|pixel_column\(4) & ((!\inst1|LessThan1~7_cout\) # (!\inst1|Add1~0_combout\))) # (!\inst2|pixel_column\(4) & (!\inst1|Add1~0_combout\ & !\inst1|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(4),
	datab => \inst1|Add1~0_combout\,
	datad => VCC,
	cin => \inst1|LessThan1~7_cout\,
	cout => \inst1|LessThan1~9_cout\);

-- Location: LCCOMB_X36_Y22_N20
\inst1|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~11_cout\ = CARRY((\inst2|pixel_column\(5) & (\inst1|Add1~2_combout\ & !\inst1|LessThan1~9_cout\)) # (!\inst2|pixel_column\(5) & ((\inst1|Add1~2_combout\) # (!\inst1|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(5),
	datab => \inst1|Add1~2_combout\,
	datad => VCC,
	cin => \inst1|LessThan1~9_cout\,
	cout => \inst1|LessThan1~11_cout\);

-- Location: LCCOMB_X36_Y22_N22
\inst1|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~13_cout\ = CARRY((\inst2|pixel_column\(6) & ((!\inst1|LessThan1~11_cout\) # (!\inst1|Add1~4_combout\))) # (!\inst2|pixel_column\(6) & (!\inst1|Add1~4_combout\ & !\inst1|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(6),
	datab => \inst1|Add1~4_combout\,
	datad => VCC,
	cin => \inst1|LessThan1~11_cout\,
	cout => \inst1|LessThan1~13_cout\);

-- Location: LCCOMB_X36_Y22_N24
\inst1|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~15_cout\ = CARRY((\inst1|Add1~6_combout\ & ((!\inst1|LessThan1~13_cout\) # (!\inst2|pixel_column\(7)))) # (!\inst1|Add1~6_combout\ & (!\inst2|pixel_column\(7) & !\inst1|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~6_combout\,
	datab => \inst2|pixel_column\(7),
	datad => VCC,
	cin => \inst1|LessThan1~13_cout\,
	cout => \inst1|LessThan1~15_cout\);

-- Location: LCCOMB_X36_Y22_N26
\inst1|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~17_cout\ = CARRY((\inst2|pixel_column\(8) & ((!\inst1|LessThan1~15_cout\) # (!\inst1|Add1~8_combout\))) # (!\inst2|pixel_column\(8) & (!\inst1|Add1~8_combout\ & !\inst1|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(8),
	datab => \inst1|Add1~8_combout\,
	datad => VCC,
	cin => \inst1|LessThan1~15_cout\,
	cout => \inst1|LessThan1~17_cout\);

-- Location: LCCOMB_X36_Y22_N28
\inst1|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~18_combout\ = (\inst2|pixel_column\(9) & ((\inst1|LessThan1~17_cout\) # (!\inst1|Add1~10_combout\))) # (!\inst2|pixel_column\(9) & (\inst1|LessThan1~17_cout\ & !\inst1|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(9),
	datad => \inst1|Add1~10_combout\,
	cin => \inst1|LessThan1~17_cout\,
	combout => \inst1|LessThan1~18_combout\);

-- Location: LCCOMB_X36_Y22_N30
\inst1|ball_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_on~0_combout\ = (\inst1|LessThan0~18_combout\) # ((\inst1|LessThan2~16_combout\) # ((!\inst1|Add1~12_combout\ & \inst1|LessThan1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~12_combout\,
	datab => \inst1|LessThan0~18_combout\,
	datac => \inst1|LessThan2~16_combout\,
	datad => \inst1|LessThan1~18_combout\,
	combout => \inst1|ball_on~0_combout\);

-- Location: LCCOMB_X30_Y22_N18
\inst1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~0_combout\ = (\inst1|ball_y_pos\(4) & (\inst1|ball_y_pos\(3) $ (VCC))) # (!\inst1|ball_y_pos\(4) & (\inst1|ball_y_pos\(3) & VCC))
-- \inst1|Add3~1\ = CARRY((\inst1|ball_y_pos\(4) & \inst1|ball_y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(4),
	datab => \inst1|ball_y_pos\(3),
	datad => VCC,
	combout => \inst1|Add3~0_combout\,
	cout => \inst1|Add3~1\);

-- Location: LCCOMB_X30_Y22_N20
\inst1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~2_combout\ = (\inst1|ball_y_pos\(5) & (!\inst1|Add3~1\)) # (!\inst1|ball_y_pos\(5) & ((\inst1|Add3~1\) # (GND)))
-- \inst1|Add3~3\ = CARRY((!\inst1|Add3~1\) # (!\inst1|ball_y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ball_y_pos\(5),
	datad => VCC,
	cin => \inst1|Add3~1\,
	combout => \inst1|Add3~2_combout\,
	cout => \inst1|Add3~3\);

-- Location: LCCOMB_X30_Y22_N22
\inst1|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~4_combout\ = (\inst1|ball_y_pos\(6) & (\inst1|Add3~3\ $ (GND))) # (!\inst1|ball_y_pos\(6) & (!\inst1|Add3~3\ & VCC))
-- \inst1|Add3~5\ = CARRY((\inst1|ball_y_pos\(6) & !\inst1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(6),
	datad => VCC,
	cin => \inst1|Add3~3\,
	combout => \inst1|Add3~4_combout\,
	cout => \inst1|Add3~5\);

-- Location: LCCOMB_X30_Y22_N24
\inst1|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~6_combout\ = (\inst1|ball_y_pos\(7) & (!\inst1|Add3~5\)) # (!\inst1|ball_y_pos\(7) & ((\inst1|Add3~5\) # (GND)))
-- \inst1|Add3~7\ = CARRY((!\inst1|Add3~5\) # (!\inst1|ball_y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(7),
	datad => VCC,
	cin => \inst1|Add3~5\,
	combout => \inst1|Add3~6_combout\,
	cout => \inst1|Add3~7\);

-- Location: LCCOMB_X30_Y22_N26
\inst1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~8_combout\ = (\inst1|ball_y_pos\(8) & (\inst1|Add3~7\ $ (GND))) # (!\inst1|ball_y_pos\(8) & (!\inst1|Add3~7\ & VCC))
-- \inst1|Add3~9\ = CARRY((\inst1|ball_y_pos\(8) & !\inst1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ball_y_pos\(8),
	datad => VCC,
	cin => \inst1|Add3~7\,
	combout => \inst1|Add3~8_combout\,
	cout => \inst1|Add3~9\);

-- Location: LCCOMB_X30_Y22_N28
\inst1|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~10_combout\ = \inst1|Add3~9\ $ (\inst1|ball_y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ball_y_pos\(9),
	cin => \inst1|Add3~9\,
	combout => \inst1|Add3~10_combout\);

-- Location: LCCOMB_X29_Y22_N12
\inst1|ball_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_on~1_combout\ = (\inst1|Add2~10_combout\) # (\inst1|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~10_combout\,
	datad => \inst1|Add3~10_combout\,
	combout => \inst1|ball_on~1_combout\);

-- Location: FF_X31_Y22_N7
\inst2|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|v_count\(0),
	sload => VCC,
	ena => \inst2|ALT_INV_LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(0));

-- Location: LCCOMB_X31_Y22_N6
\inst1|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~1_cout\ = CARRY(\inst2|pixel_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(0),
	datad => VCC,
	cout => \inst1|LessThan3~1_cout\);

-- Location: LCCOMB_X31_Y22_N8
\inst1|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~3_cout\ = CARRY((\inst1|ball_y_pos\(1) & ((!\inst1|LessThan3~1_cout\) # (!\inst2|pixel_row\(1)))) # (!\inst1|ball_y_pos\(1) & (!\inst2|pixel_row\(1) & !\inst1|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(1),
	datab => \inst2|pixel_row\(1),
	datad => VCC,
	cin => \inst1|LessThan3~1_cout\,
	cout => \inst1|LessThan3~3_cout\);

-- Location: LCCOMB_X31_Y22_N10
\inst1|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~5_cout\ = CARRY((\inst1|ball_y_pos\(2) & (\inst2|pixel_row\(2) & !\inst1|LessThan3~3_cout\)) # (!\inst1|ball_y_pos\(2) & ((\inst2|pixel_row\(2)) # (!\inst1|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ball_y_pos\(2),
	datab => \inst2|pixel_row\(2),
	datad => VCC,
	cin => \inst1|LessThan3~3_cout\,
	cout => \inst1|LessThan3~5_cout\);

-- Location: LCCOMB_X31_Y22_N12
\inst1|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~7_cout\ = CARRY((\inst2|pixel_row\(3) & (!\inst1|ball_y_pos\(3) & !\inst1|LessThan3~5_cout\)) # (!\inst2|pixel_row\(3) & ((!\inst1|LessThan3~5_cout\) # (!\inst1|ball_y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(3),
	datab => \inst1|ball_y_pos\(3),
	datad => VCC,
	cin => \inst1|LessThan3~5_cout\,
	cout => \inst1|LessThan3~7_cout\);

-- Location: LCCOMB_X31_Y22_N14
\inst1|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~9_cout\ = CARRY((\inst2|pixel_row\(4) & ((!\inst1|LessThan3~7_cout\) # (!\inst1|Add3~0_combout\))) # (!\inst2|pixel_row\(4) & (!\inst1|Add3~0_combout\ & !\inst1|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(4),
	datab => \inst1|Add3~0_combout\,
	datad => VCC,
	cin => \inst1|LessThan3~7_cout\,
	cout => \inst1|LessThan3~9_cout\);

-- Location: LCCOMB_X31_Y22_N16
\inst1|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~11_cout\ = CARRY((\inst2|pixel_row\(5) & (\inst1|Add3~2_combout\ & !\inst1|LessThan3~9_cout\)) # (!\inst2|pixel_row\(5) & ((\inst1|Add3~2_combout\) # (!\inst1|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(5),
	datab => \inst1|Add3~2_combout\,
	datad => VCC,
	cin => \inst1|LessThan3~9_cout\,
	cout => \inst1|LessThan3~11_cout\);

-- Location: LCCOMB_X31_Y22_N18
\inst1|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~13_cout\ = CARRY((\inst2|pixel_row\(6) & ((!\inst1|LessThan3~11_cout\) # (!\inst1|Add3~4_combout\))) # (!\inst2|pixel_row\(6) & (!\inst1|Add3~4_combout\ & !\inst1|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(6),
	datab => \inst1|Add3~4_combout\,
	datad => VCC,
	cin => \inst1|LessThan3~11_cout\,
	cout => \inst1|LessThan3~13_cout\);

-- Location: LCCOMB_X31_Y22_N20
\inst1|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~15_cout\ = CARRY((\inst2|pixel_row\(7) & (\inst1|Add3~6_combout\ & !\inst1|LessThan3~13_cout\)) # (!\inst2|pixel_row\(7) & ((\inst1|Add3~6_combout\) # (!\inst1|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(7),
	datab => \inst1|Add3~6_combout\,
	datad => VCC,
	cin => \inst1|LessThan3~13_cout\,
	cout => \inst1|LessThan3~15_cout\);

-- Location: LCCOMB_X31_Y22_N22
\inst1|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~16_combout\ = (\inst1|Add3~8_combout\ & (!\inst1|LessThan3~15_cout\ & \inst2|pixel_row\(8))) # (!\inst1|Add3~8_combout\ & ((\inst2|pixel_row\(8)) # (!\inst1|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~8_combout\,
	datad => \inst2|pixel_row\(8),
	cin => \inst1|LessThan3~15_cout\,
	combout => \inst1|LessThan3~16_combout\);

-- Location: LCCOMB_X37_Y22_N28
\inst1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add1~14_combout\ = \inst1|Add1~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Add1~13\,
	combout => \inst1|Add1~14_combout\);

-- Location: LCCOMB_X31_Y22_N26
\inst1|ball_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|ball_on~2_combout\ = (\inst1|Add0~12_combout\) # ((\inst1|ball_on~1_combout\) # ((\inst1|LessThan3~16_combout\) # (\inst1|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~12_combout\,
	datab => \inst1|ball_on~1_combout\,
	datac => \inst1|LessThan3~16_combout\,
	datad => \inst1|Add1~14_combout\,
	combout => \inst1|ball_on~2_combout\);

-- Location: LCCOMB_X36_Y22_N6
\inst2|green_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|green_out~2_combout\ = (!\pb2~input_o\ & (\inst2|red_out~1_combout\ & ((\inst1|ball_on~0_combout\) # (\inst1|ball_on~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb2~input_o\,
	datab => \inst2|red_out~1_combout\,
	datac => \inst1|ball_on~0_combout\,
	datad => \inst1|ball_on~2_combout\,
	combout => \inst2|green_out~2_combout\);

-- Location: FF_X36_Y22_N7
\inst2|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|green_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|green_out~q\);

-- Location: LCCOMB_X36_Y22_N4
\inst2|green_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|green_out~3_combout\ = (\inst2|video_on_v~q\ & (\inst2|video_on_h~q\ & ((\inst1|ball_on~0_combout\) # (\inst1|ball_on~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|video_on_v~q\,
	datab => \inst2|video_on_h~q\,
	datac => \inst1|ball_on~0_combout\,
	datad => \inst1|ball_on~2_combout\,
	combout => \inst2|green_out~3_combout\);

-- Location: FF_X36_Y22_N5
\inst2|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|green_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|blue_out~q\);

-- Location: LCCOMB_X33_Y22_N10
\inst2|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~1_combout\ = (\inst2|h_count\(7) & (!\inst2|h_count\(8) & \inst2|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(7),
	datac => \inst2|h_count\(8),
	datad => \inst2|h_count\(9),
	combout => \inst2|process_0~1_combout\);

-- Location: LCCOMB_X32_Y22_N4
\inst2|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~2_combout\ = (\inst2|h_count\(2)) # ((\inst2|h_count\(0) & (\inst2|h_count\(1) & !\inst2|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(2),
	datab => \inst2|h_count\(0),
	datac => \inst2|h_count\(1),
	datad => \inst2|h_count\(5),
	combout => \inst2|process_0~2_combout\);

-- Location: LCCOMB_X33_Y22_N0
\inst2|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~3_combout\ = (\inst2|h_count\(4) & ((\inst2|process_0~2_combout\) # (\inst2|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(4),
	datab => \inst2|process_0~2_combout\,
	datad => \inst2|h_count\(3),
	combout => \inst2|process_0~3_combout\);

-- Location: LCCOMB_X33_Y22_N14
\inst2|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~4_combout\ = ((\inst2|h_count\(6) & (\inst2|h_count\(5) & \inst2|process_0~3_combout\)) # (!\inst2|h_count\(6) & (!\inst2|h_count\(5) & !\inst2|process_0~3_combout\))) # (!\inst2|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~1_combout\,
	datab => \inst2|h_count\(6),
	datac => \inst2|h_count\(5),
	datad => \inst2|process_0~3_combout\,
	combout => \inst2|process_0~4_combout\);

-- Location: FF_X33_Y22_N15
\inst2|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|horiz_sync~q\);

-- Location: LCCOMB_X33_Y21_N20
\inst2|horiz_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|horiz_sync_out~feeder_combout\ = \inst2|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|horiz_sync~q\,
	combout => \inst2|horiz_sync_out~feeder_combout\);

-- Location: FF_X33_Y21_N21
\inst2|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|horiz_sync_out~q\);

-- Location: LCCOMB_X27_Y20_N20
\inst|PACKET_CHAR1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|PACKET_CHAR1[1]~feeder_combout\ = \inst|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SHIFTIN\(1),
	combout => \inst|PACKET_CHAR1[1]~feeder_combout\);

-- Location: FF_X27_Y20_N21
\inst|PACKET_CHAR1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|PACKET_CHAR1[1]~feeder_combout\,
	ena => \inst|PACKET_CHAR1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PACKET_CHAR1\(1));

-- Location: LCCOMB_X28_Y24_N28
\inst|right_button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|right_button~feeder_combout\ = \inst|PACKET_CHAR1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|PACKET_CHAR1\(1),
	combout => \inst|right_button~feeder_combout\);

-- Location: FF_X28_Y24_N29
\inst|right_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst|right_button~feeder_combout\,
	ena => \inst|right_button~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|right_button~q\);

-- Location: LCCOMB_X27_Y24_N12
\inst8|cnt[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[0]~8_combout\ = \inst8|cnt\(0) $ (VCC)
-- \inst8|cnt[0]~9\ = CARRY(\inst8|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|cnt\(0),
	datad => VCC,
	combout => \inst8|cnt[0]~8_combout\,
	cout => \inst8|cnt[0]~9\);

-- Location: LCCOMB_X27_Y24_N4
\inst8|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal1~0_combout\ = (\inst8|cnt\(0)) # ((\inst8|cnt\(3)) # ((\inst8|cnt\(1)) # (!\inst8|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|cnt\(0),
	datab => \inst8|cnt\(3),
	datac => \inst8|cnt\(1),
	datad => \inst8|cnt\(2),
	combout => \inst8|Equal1~0_combout\);

-- Location: LCCOMB_X27_Y24_N0
\inst8|cnt[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[6]~10_combout\ = ((!\inst8|Equal1~1_combout\ & !\inst8|Equal1~0_combout\)) # (!\inst|left_button~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Equal1~1_combout\,
	datac => \inst8|Equal1~0_combout\,
	datad => \inst|left_button~q\,
	combout => \inst8|cnt[6]~10_combout\);

-- Location: LCCOMB_X29_Y24_N14
\inst8|seconds[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[0]~18_combout\ = \inst8|seconds\(0) $ (VCC)
-- \inst8|seconds[0]~19\ = CARRY(\inst8|seconds\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(0),
	datad => VCC,
	combout => \inst8|seconds[0]~18_combout\,
	cout => \inst8|seconds[0]~19\);

-- Location: FF_X29_Y24_N15
\inst8|seconds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|seconds[0]~18_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(0));

-- Location: LCCOMB_X29_Y24_N16
\inst8|seconds[1]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[1]~21_combout\ = (\inst8|seconds\(1) & (!\inst8|seconds[0]~19\)) # (!\inst8|seconds\(1) & ((\inst8|seconds[0]~19\) # (GND)))
-- \inst8|seconds[1]~22\ = CARRY((!\inst8|seconds[0]~19\) # (!\inst8|seconds\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(1),
	datad => VCC,
	cin => \inst8|seconds[0]~19\,
	combout => \inst8|seconds[1]~21_combout\,
	cout => \inst8|seconds[1]~22\);

-- Location: FF_X29_Y24_N17
\inst8|seconds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|seconds[1]~21_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(1));

-- Location: LCCOMB_X29_Y24_N18
\inst8|seconds[2]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[2]~23_combout\ = (\inst8|seconds\(2) & (\inst8|seconds[1]~22\ $ (GND))) # (!\inst8|seconds\(2) & (!\inst8|seconds[1]~22\ & VCC))
-- \inst8|seconds[2]~24\ = CARRY((\inst8|seconds\(2) & !\inst8|seconds[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(2),
	datad => VCC,
	cin => \inst8|seconds[1]~22\,
	combout => \inst8|seconds[2]~23_combout\,
	cout => \inst8|seconds[2]~24\);

-- Location: FF_X29_Y24_N19
\inst8|seconds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|seconds[2]~23_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(2));

-- Location: LCCOMB_X29_Y24_N20
\inst8|seconds[3]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[3]~25_combout\ = (\inst8|seconds\(3) & (!\inst8|seconds[2]~24\)) # (!\inst8|seconds\(3) & ((\inst8|seconds[2]~24\) # (GND)))
-- \inst8|seconds[3]~26\ = CARRY((!\inst8|seconds[2]~24\) # (!\inst8|seconds\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(3),
	datad => VCC,
	cin => \inst8|seconds[2]~24\,
	combout => \inst8|seconds[3]~25_combout\,
	cout => \inst8|seconds[3]~26\);

-- Location: FF_X29_Y24_N21
\inst8|seconds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|seconds[3]~25_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(3));

-- Location: LCCOMB_X29_Y24_N22
\inst8|seconds[4]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[4]~27_combout\ = (\inst8|seconds\(4) & (\inst8|seconds[3]~26\ $ (GND))) # (!\inst8|seconds\(4) & (!\inst8|seconds[3]~26\ & VCC))
-- \inst8|seconds[4]~28\ = CARRY((\inst8|seconds\(4) & !\inst8|seconds[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(4),
	datad => VCC,
	cin => \inst8|seconds[3]~26\,
	combout => \inst8|seconds[4]~27_combout\,
	cout => \inst8|seconds[4]~28\);

-- Location: FF_X29_Y24_N23
\inst8|seconds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|seconds[4]~27_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(4));

-- Location: LCCOMB_X29_Y24_N24
\inst8|seconds[5]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[5]~29_combout\ = (\inst8|seconds\(5) & (!\inst8|seconds[4]~28\)) # (!\inst8|seconds\(5) & ((\inst8|seconds[4]~28\) # (GND)))
-- \inst8|seconds[5]~30\ = CARRY((!\inst8|seconds[4]~28\) # (!\inst8|seconds\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(5),
	datad => VCC,
	cin => \inst8|seconds[4]~28\,
	combout => \inst8|seconds[5]~29_combout\,
	cout => \inst8|seconds[5]~30\);

-- Location: FF_X29_Y24_N25
\inst8|seconds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|seconds[5]~29_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(5));

-- Location: LCCOMB_X29_Y24_N26
\inst8|seconds[6]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[6]~31_combout\ = (\inst8|seconds\(6) & (\inst8|seconds[5]~30\ $ (GND))) # (!\inst8|seconds\(6) & (!\inst8|seconds[5]~30\ & VCC))
-- \inst8|seconds[6]~32\ = CARRY((\inst8|seconds\(6) & !\inst8|seconds[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(6),
	datad => VCC,
	cin => \inst8|seconds[5]~30\,
	combout => \inst8|seconds[6]~31_combout\,
	cout => \inst8|seconds[6]~32\);

-- Location: FF_X29_Y24_N27
\inst8|seconds[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|seconds[6]~31_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(6));

-- Location: LCCOMB_X29_Y24_N28
\inst8|seconds[7]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[7]~33_combout\ = (\inst8|seconds\(7) & (!\inst8|seconds[6]~32\)) # (!\inst8|seconds\(7) & ((\inst8|seconds[6]~32\) # (GND)))
-- \inst8|seconds[7]~34\ = CARRY((!\inst8|seconds[6]~32\) # (!\inst8|seconds\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(7),
	datad => VCC,
	cin => \inst8|seconds[6]~32\,
	combout => \inst8|seconds[7]~33_combout\,
	cout => \inst8|seconds[7]~34\);

-- Location: FF_X29_Y24_N29
\inst8|seconds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|seconds[7]~33_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(7));

-- Location: LCCOMB_X29_Y24_N30
\inst8|seconds[8]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[8]~35_combout\ = (\inst8|seconds\(8) & (\inst8|seconds[7]~34\ $ (GND))) # (!\inst8|seconds\(8) & (!\inst8|seconds[7]~34\ & VCC))
-- \inst8|seconds[8]~36\ = CARRY((\inst8|seconds\(8) & !\inst8|seconds[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(8),
	datad => VCC,
	cin => \inst8|seconds[7]~34\,
	combout => \inst8|seconds[8]~35_combout\,
	cout => \inst8|seconds[8]~36\);

-- Location: FF_X29_Y24_N31
\inst8|seconds[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|seconds[8]~35_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(8));

-- Location: LCCOMB_X29_Y23_N0
\inst8|seconds[9]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[9]~37_combout\ = (\inst8|seconds\(9) & (!\inst8|seconds[8]~36\)) # (!\inst8|seconds\(9) & ((\inst8|seconds[8]~36\) # (GND)))
-- \inst8|seconds[9]~38\ = CARRY((!\inst8|seconds[8]~36\) # (!\inst8|seconds\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(9),
	datad => VCC,
	cin => \inst8|seconds[8]~36\,
	combout => \inst8|seconds[9]~37_combout\,
	cout => \inst8|seconds[9]~38\);

-- Location: FF_X30_Y24_N25
\inst8|seconds[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|seconds[9]~37_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(9));

-- Location: LCCOMB_X29_Y23_N2
\inst8|seconds[10]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[10]~39_combout\ = (\inst8|seconds\(10) & (\inst8|seconds[9]~38\ $ (GND))) # (!\inst8|seconds\(10) & (!\inst8|seconds[9]~38\ & VCC))
-- \inst8|seconds[10]~40\ = CARRY((\inst8|seconds\(10) & !\inst8|seconds[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(10),
	datad => VCC,
	cin => \inst8|seconds[9]~38\,
	combout => \inst8|seconds[10]~39_combout\,
	cout => \inst8|seconds[10]~40\);

-- Location: LCCOMB_X29_Y24_N0
\inst8|seconds[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[10]~feeder_combout\ = \inst8|seconds[10]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|seconds[10]~39_combout\,
	combout => \inst8|seconds[10]~feeder_combout\);

-- Location: FF_X29_Y24_N1
\inst8|seconds[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|seconds[10]~feeder_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(10));

-- Location: LCCOMB_X29_Y23_N4
\inst8|seconds[11]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[11]~41_combout\ = (\inst8|seconds\(11) & (!\inst8|seconds[10]~40\)) # (!\inst8|seconds\(11) & ((\inst8|seconds[10]~40\) # (GND)))
-- \inst8|seconds[11]~42\ = CARRY((!\inst8|seconds[10]~40\) # (!\inst8|seconds\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(11),
	datad => VCC,
	cin => \inst8|seconds[10]~40\,
	combout => \inst8|seconds[11]~41_combout\,
	cout => \inst8|seconds[11]~42\);

-- Location: FF_X29_Y23_N5
\inst8|seconds[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|seconds[11]~41_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(11));

-- Location: LCCOMB_X29_Y23_N6
\inst8|seconds[12]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[12]~43_combout\ = (\inst8|seconds\(12) & (\inst8|seconds[11]~42\ $ (GND))) # (!\inst8|seconds\(12) & (!\inst8|seconds[11]~42\ & VCC))
-- \inst8|seconds[12]~44\ = CARRY((\inst8|seconds\(12) & !\inst8|seconds[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(12),
	datad => VCC,
	cin => \inst8|seconds[11]~42\,
	combout => \inst8|seconds[12]~43_combout\,
	cout => \inst8|seconds[12]~44\);

-- Location: FF_X30_Y24_N31
\inst8|seconds[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst8|seconds[12]~43_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(12));

-- Location: LCCOMB_X29_Y23_N8
\inst8|seconds[13]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[13]~45_combout\ = (\inst8|seconds\(13) & (!\inst8|seconds[12]~44\)) # (!\inst8|seconds\(13) & ((\inst8|seconds[12]~44\) # (GND)))
-- \inst8|seconds[13]~46\ = CARRY((!\inst8|seconds[12]~44\) # (!\inst8|seconds\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(13),
	datad => VCC,
	cin => \inst8|seconds[12]~44\,
	combout => \inst8|seconds[13]~45_combout\,
	cout => \inst8|seconds[13]~46\);

-- Location: LCCOMB_X29_Y24_N2
\inst8|seconds[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[13]~feeder_combout\ = \inst8|seconds[13]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|seconds[13]~45_combout\,
	combout => \inst8|seconds[13]~feeder_combout\);

-- Location: FF_X29_Y24_N3
\inst8|seconds[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|seconds[13]~feeder_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(13));

-- Location: LCCOMB_X29_Y23_N10
\inst8|seconds[14]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[14]~47_combout\ = (\inst8|seconds\(14) & (\inst8|seconds[13]~46\ $ (GND))) # (!\inst8|seconds\(14) & (!\inst8|seconds[13]~46\ & VCC))
-- \inst8|seconds[14]~48\ = CARRY((\inst8|seconds\(14) & !\inst8|seconds[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(14),
	datad => VCC,
	cin => \inst8|seconds[13]~46\,
	combout => \inst8|seconds[14]~47_combout\,
	cout => \inst8|seconds[14]~48\);

-- Location: LCCOMB_X29_Y24_N12
\inst8|seconds[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[14]~feeder_combout\ = \inst8|seconds[14]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|seconds[14]~47_combout\,
	combout => \inst8|seconds[14]~feeder_combout\);

-- Location: FF_X29_Y24_N13
\inst8|seconds[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|seconds[14]~feeder_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(14));

-- Location: LCCOMB_X29_Y23_N12
\inst8|seconds[15]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[15]~49_combout\ = (\inst8|seconds\(15) & (!\inst8|seconds[14]~48\)) # (!\inst8|seconds\(15) & ((\inst8|seconds[14]~48\) # (GND)))
-- \inst8|seconds[15]~50\ = CARRY((!\inst8|seconds[14]~48\) # (!\inst8|seconds\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(15),
	datad => VCC,
	cin => \inst8|seconds[14]~48\,
	combout => \inst8|seconds[15]~49_combout\,
	cout => \inst8|seconds[15]~50\);

-- Location: LCCOMB_X29_Y24_N6
\inst8|seconds[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[15]~feeder_combout\ = \inst8|seconds[15]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|seconds[15]~49_combout\,
	combout => \inst8|seconds[15]~feeder_combout\);

-- Location: FF_X29_Y24_N7
\inst8|seconds[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|seconds[15]~feeder_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(15));

-- Location: LCCOMB_X29_Y23_N14
\inst8|seconds[16]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[16]~51_combout\ = (\inst8|seconds\(16) & (\inst8|seconds[15]~50\ $ (GND))) # (!\inst8|seconds\(16) & (!\inst8|seconds[15]~50\ & VCC))
-- \inst8|seconds[16]~52\ = CARRY((\inst8|seconds\(16) & !\inst8|seconds[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|seconds\(16),
	datad => VCC,
	cin => \inst8|seconds[15]~50\,
	combout => \inst8|seconds[16]~51_combout\,
	cout => \inst8|seconds[16]~52\);

-- Location: FF_X29_Y23_N15
\inst8|seconds[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|seconds[16]~51_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(16));

-- Location: LCCOMB_X29_Y23_N16
\inst8|seconds[17]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[17]~53_combout\ = \inst8|seconds[16]~52\ $ (\inst8|seconds\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|seconds\(17),
	cin => \inst8|seconds[16]~52\,
	combout => \inst8|seconds[17]~53_combout\);

-- Location: FF_X29_Y23_N17
\inst8|seconds[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|seconds[17]~53_combout\,
	sclr => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|seconds\(17));

-- Location: LCCOMB_X29_Y23_N26
\inst8|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal0~2_combout\ = (\inst8|seconds\(10)) # ((\inst8|seconds\(11)) # ((\inst8|seconds\(8)) # (\inst8|seconds\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(10),
	datab => \inst8|seconds\(11),
	datac => \inst8|seconds\(8),
	datad => \inst8|seconds\(9),
	combout => \inst8|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y23_N24
\inst8|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal0~3_combout\ = ((\inst8|seconds\(13)) # ((!\inst8|seconds\(14)) # (!\inst8|seconds\(15)))) # (!\inst8|seconds\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(12),
	datab => \inst8|seconds\(13),
	datac => \inst8|seconds\(15),
	datad => \inst8|seconds\(14),
	combout => \inst8|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y24_N4
\inst8|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal0~0_combout\ = (\inst8|seconds\(3)) # ((\inst8|seconds\(2)) # ((\inst8|seconds\(0)) # (\inst8|seconds\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(3),
	datab => \inst8|seconds\(2),
	datac => \inst8|seconds\(0),
	datad => \inst8|seconds\(1),
	combout => \inst8|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y24_N10
\inst8|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal0~1_combout\ = (\inst8|seconds\(6)) # (((\inst8|seconds\(5)) # (!\inst8|seconds\(4))) # (!\inst8|seconds\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(6),
	datab => \inst8|seconds\(7),
	datac => \inst8|seconds\(4),
	datad => \inst8|seconds\(5),
	combout => \inst8|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y24_N8
\inst8|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal0~4_combout\ = (\inst8|Equal0~2_combout\) # ((\inst8|Equal0~3_combout\) # ((\inst8|Equal0~0_combout\) # (\inst8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal0~2_combout\,
	datab => \inst8|Equal0~3_combout\,
	datac => \inst8|Equal0~0_combout\,
	datad => \inst8|Equal0~1_combout\,
	combout => \inst8|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y24_N30
\inst8|seconds[17]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|seconds[17]~20_combout\ = ((\inst8|seconds\(16) & (\inst8|seconds\(17) & !\inst8|Equal0~4_combout\))) # (!\inst|left_button~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|seconds\(16),
	datab => \inst8|seconds\(17),
	datac => \inst8|Equal0~4_combout\,
	datad => \inst|left_button~q\,
	combout => \inst8|seconds[17]~20_combout\);

-- Location: FF_X27_Y24_N13
\inst8|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|cnt[0]~8_combout\,
	sclr => \inst8|cnt[6]~10_combout\,
	ena => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|cnt\(0));

-- Location: LCCOMB_X27_Y24_N14
\inst8|cnt[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[1]~11_combout\ = (\inst8|cnt\(1) & (!\inst8|cnt[0]~9\)) # (!\inst8|cnt\(1) & ((\inst8|cnt[0]~9\) # (GND)))
-- \inst8|cnt[1]~12\ = CARRY((!\inst8|cnt[0]~9\) # (!\inst8|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|cnt\(1),
	datad => VCC,
	cin => \inst8|cnt[0]~9\,
	combout => \inst8|cnt[1]~11_combout\,
	cout => \inst8|cnt[1]~12\);

-- Location: FF_X27_Y24_N15
\inst8|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|cnt[1]~11_combout\,
	sclr => \inst8|cnt[6]~10_combout\,
	ena => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|cnt\(1));

-- Location: LCCOMB_X27_Y24_N16
\inst8|cnt[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[2]~13_combout\ = (\inst8|cnt\(2) & (\inst8|cnt[1]~12\ $ (GND))) # (!\inst8|cnt\(2) & (!\inst8|cnt[1]~12\ & VCC))
-- \inst8|cnt[2]~14\ = CARRY((\inst8|cnt\(2) & !\inst8|cnt[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|cnt\(2),
	datad => VCC,
	cin => \inst8|cnt[1]~12\,
	combout => \inst8|cnt[2]~13_combout\,
	cout => \inst8|cnt[2]~14\);

-- Location: FF_X27_Y24_N17
\inst8|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|cnt[2]~13_combout\,
	sclr => \inst8|cnt[6]~10_combout\,
	ena => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|cnt\(2));

-- Location: LCCOMB_X27_Y24_N18
\inst8|cnt[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[3]~15_combout\ = (\inst8|cnt\(3) & (!\inst8|cnt[2]~14\)) # (!\inst8|cnt\(3) & ((\inst8|cnt[2]~14\) # (GND)))
-- \inst8|cnt[3]~16\ = CARRY((!\inst8|cnt[2]~14\) # (!\inst8|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|cnt\(3),
	datad => VCC,
	cin => \inst8|cnt[2]~14\,
	combout => \inst8|cnt[3]~15_combout\,
	cout => \inst8|cnt[3]~16\);

-- Location: FF_X27_Y24_N19
\inst8|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|cnt[3]~15_combout\,
	sclr => \inst8|cnt[6]~10_combout\,
	ena => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|cnt\(3));

-- Location: LCCOMB_X27_Y24_N20
\inst8|cnt[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[4]~17_combout\ = (\inst8|cnt\(4) & (\inst8|cnt[3]~16\ $ (GND))) # (!\inst8|cnt\(4) & (!\inst8|cnt[3]~16\ & VCC))
-- \inst8|cnt[4]~18\ = CARRY((\inst8|cnt\(4) & !\inst8|cnt[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|cnt\(4),
	datad => VCC,
	cin => \inst8|cnt[3]~16\,
	combout => \inst8|cnt[4]~17_combout\,
	cout => \inst8|cnt[4]~18\);

-- Location: FF_X27_Y24_N21
\inst8|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|cnt[4]~17_combout\,
	sclr => \inst8|cnt[6]~10_combout\,
	ena => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|cnt\(4));

-- Location: LCCOMB_X27_Y24_N22
\inst8|cnt[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[5]~19_combout\ = (\inst8|cnt\(5) & (!\inst8|cnt[4]~18\)) # (!\inst8|cnt\(5) & ((\inst8|cnt[4]~18\) # (GND)))
-- \inst8|cnt[5]~20\ = CARRY((!\inst8|cnt[4]~18\) # (!\inst8|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|cnt\(5),
	datad => VCC,
	cin => \inst8|cnt[4]~18\,
	combout => \inst8|cnt[5]~19_combout\,
	cout => \inst8|cnt[5]~20\);

-- Location: FF_X27_Y24_N23
\inst8|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|cnt[5]~19_combout\,
	sclr => \inst8|cnt[6]~10_combout\,
	ena => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|cnt\(5));

-- Location: LCCOMB_X27_Y24_N24
\inst8|cnt[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[6]~21_combout\ = (\inst8|cnt\(6) & (\inst8|cnt[5]~20\ $ (GND))) # (!\inst8|cnt\(6) & (!\inst8|cnt[5]~20\ & VCC))
-- \inst8|cnt[6]~22\ = CARRY((\inst8|cnt\(6) & !\inst8|cnt[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|cnt\(6),
	datad => VCC,
	cin => \inst8|cnt[5]~20\,
	combout => \inst8|cnt[6]~21_combout\,
	cout => \inst8|cnt[6]~22\);

-- Location: FF_X27_Y24_N25
\inst8|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|cnt[6]~21_combout\,
	sclr => \inst8|cnt[6]~10_combout\,
	ena => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|cnt\(6));

-- Location: LCCOMB_X27_Y24_N26
\inst8|cnt[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|cnt[7]~23_combout\ = \inst8|cnt\(7) $ (\inst8|cnt[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|cnt\(7),
	cin => \inst8|cnt[6]~22\,
	combout => \inst8|cnt[7]~23_combout\);

-- Location: FF_X27_Y24_N27
\inst8|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|cnt[7]~23_combout\,
	sclr => \inst8|cnt[6]~10_combout\,
	ena => \inst8|seconds[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|cnt\(7));

-- Location: LCCOMB_X27_Y24_N2
\inst8|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|Equal1~1_combout\ = (\inst8|cnt\(7)) # ((\inst8|cnt\(6)) # ((\inst8|cnt\(5)) # (!\inst8|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|cnt\(7),
	datab => \inst8|cnt\(6),
	datac => \inst8|cnt\(5),
	datad => \inst8|cnt\(4),
	combout => \inst8|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y24_N12
\inst8|output~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|output~0_combout\ = (!\inst8|Equal1~1_combout\ & (\inst8|seconds\(17) & (!\inst8|Equal1~0_combout\ & \inst8|seconds\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal1~1_combout\,
	datab => \inst8|seconds\(17),
	datac => \inst8|Equal1~0_combout\,
	datad => \inst8|seconds\(16),
	combout => \inst8|output~0_combout\);

-- Location: LCCOMB_X28_Y24_N26
\inst8|output~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst8|output~1_combout\ = (\inst|left_button~q\ & ((\inst8|output~q\) # ((\inst8|output~0_combout\ & !\inst8|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|output~0_combout\,
	datab => \inst8|Equal0~4_combout\,
	datac => \inst8|output~q\,
	datad => \inst|left_button~q\,
	combout => \inst8|output~1_combout\);

-- Location: FF_X28_Y24_N27
\inst8|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst8|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|output~q\);

-- Location: LCCOMB_X27_Y28_N22
\inst4|Q[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q[0]~0_combout\ = \inst4|Q\(0) $ (\inst8|output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Q\(0),
	datad => \inst8|output~q\,
	combout => \inst4|Q[0]~0_combout\);

-- Location: FF_X27_Y28_N23
\inst4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|Q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q\(0));

-- Location: LCCOMB_X27_Y28_N24
\inst4|Q[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q[1]~1_combout\ = \inst4|Q\(1) $ (((\inst4|Q\(0) & \inst8|output~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q\(0),
	datac => \inst4|Q\(1),
	datad => \inst8|output~q\,
	combout => \inst4|Q[1]~1_combout\);

-- Location: FF_X27_Y28_N25
\inst4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|Q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q\(1));

-- Location: LCCOMB_X27_Y28_N6
\inst4|Q[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q[2]~2_combout\ = \inst4|Q\(2) $ (((\inst4|Q\(0) & (\inst4|Q\(1) & \inst8|output~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q\(0),
	datab => \inst4|Q\(1),
	datac => \inst4|Q\(2),
	datad => \inst8|output~q\,
	combout => \inst4|Q[2]~2_combout\);

-- Location: FF_X27_Y28_N7
\inst4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|Q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q\(2));

-- Location: LCCOMB_X27_Y28_N18
\inst4|Q[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q[3]~3_combout\ = (\inst4|Q\(2) & (\inst4|Q\(1) & (\inst4|Q\(0) & \inst8|output~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q\(2),
	datab => \inst4|Q\(1),
	datac => \inst4|Q\(0),
	datad => \inst8|output~q\,
	combout => \inst4|Q[3]~3_combout\);

-- Location: LCCOMB_X27_Y28_N28
\inst4|Q[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Q[3]~4_combout\ = \inst4|Q\(3) $ (\inst4|Q[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Q\(3),
	datad => \inst4|Q[3]~3_combout\,
	combout => \inst4|Q[3]~4_combout\);

-- Location: FF_X27_Y28_N29
\inst4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|Q[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|Q\(3));

-- Location: LCCOMB_X27_Y28_N0
\inst7|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst4|Q\(0) & (!\inst4|Q\(3) & (\inst4|Q\(2) $ (!\inst4|Q\(1))))) # (!\inst4|Q\(0) & (!\inst4|Q\(1) & (\inst4|Q\(2) $ (!\inst4|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q\(2),
	datab => \inst4|Q\(1),
	datac => \inst4|Q\(0),
	datad => \inst4|Q\(3),
	combout => \inst7|Mux0~0_combout\);

-- Location: FF_X27_Y28_N1
\inst7|LED_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|LED_out\(6));

-- Location: LCCOMB_X27_Y28_N2
\inst7|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = (\inst4|Q\(2) & (\inst4|Q\(0) & (\inst4|Q\(1) $ (\inst4|Q\(3))))) # (!\inst4|Q\(2) & (!\inst4|Q\(3) & ((\inst4|Q\(1)) # (\inst4|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q\(2),
	datab => \inst4|Q\(1),
	datac => \inst4|Q\(0),
	datad => \inst4|Q\(3),
	combout => \inst7|Mux1~0_combout\);

-- Location: FF_X27_Y28_N3
\inst7|LED_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|LED_out\(5));

-- Location: LCCOMB_X27_Y28_N20
\inst7|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = (\inst4|Q\(1) & (((\inst4|Q\(0) & !\inst4|Q\(3))))) # (!\inst4|Q\(1) & ((\inst4|Q\(2) & ((!\inst4|Q\(3)))) # (!\inst4|Q\(2) & (\inst4|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q\(2),
	datab => \inst4|Q\(1),
	datac => \inst4|Q\(0),
	datad => \inst4|Q\(3),
	combout => \inst7|Mux2~0_combout\);

-- Location: FF_X27_Y28_N21
\inst7|LED_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|LED_out\(4));

-- Location: LCCOMB_X27_Y28_N10
\inst7|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux3~0_combout\ = (\inst4|Q\(1) & ((\inst4|Q\(2) & (\inst4|Q\(0))) # (!\inst4|Q\(2) & (!\inst4|Q\(0) & \inst4|Q\(3))))) # (!\inst4|Q\(1) & (!\inst4|Q\(3) & (\inst4|Q\(2) $ (\inst4|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q\(2),
	datab => \inst4|Q\(1),
	datac => \inst4|Q\(0),
	datad => \inst4|Q\(3),
	combout => \inst7|Mux3~0_combout\);

-- Location: FF_X27_Y28_N11
\inst7|LED_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|LED_out\(3));

-- Location: LCCOMB_X27_Y28_N12
\inst7|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux4~0_combout\ = (\inst4|Q\(2) & (\inst4|Q\(3) & ((\inst4|Q\(1)) # (!\inst4|Q\(0))))) # (!\inst4|Q\(2) & (\inst4|Q\(1) & (!\inst4|Q\(0) & !\inst4|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q\(2),
	datab => \inst4|Q\(1),
	datac => \inst4|Q\(0),
	datad => \inst4|Q\(3),
	combout => \inst7|Mux4~0_combout\);

-- Location: FF_X27_Y28_N13
\inst7|LED_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|LED_out\(2));

-- Location: LCCOMB_X27_Y28_N26
\inst7|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = (\inst4|Q\(1) & ((\inst4|Q\(0) & ((\inst4|Q\(3)))) # (!\inst4|Q\(0) & (\inst4|Q\(2))))) # (!\inst4|Q\(1) & (\inst4|Q\(2) & (\inst4|Q\(0) $ (\inst4|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q\(2),
	datab => \inst4|Q\(1),
	datac => \inst4|Q\(0),
	datad => \inst4|Q\(3),
	combout => \inst7|Mux5~0_combout\);

-- Location: FF_X27_Y28_N27
\inst7|LED_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|LED_out\(1));

-- Location: LCCOMB_X27_Y28_N16
\inst7|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux6~0_combout\ = (\inst4|Q\(2) & (!\inst4|Q\(1) & (\inst4|Q\(0) $ (!\inst4|Q\(3))))) # (!\inst4|Q\(2) & (\inst4|Q\(0) & (\inst4|Q\(1) $ (!\inst4|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Q\(2),
	datab => \inst4|Q\(1),
	datac => \inst4|Q\(0),
	datad => \inst4|Q\(3),
	combout => \inst7|Mux6~0_combout\);

-- Location: FF_X27_Y28_N17
\inst7|LED_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst7|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|LED_out\(0));
END structure;


