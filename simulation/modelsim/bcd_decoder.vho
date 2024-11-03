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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/03/2024 12:42:24"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE STD.STANDARD.ALL;

ENTITY 	bcd_decoder IS
    PORT (
	entrada1 : IN std_logic;
	entrada2 : IN std_logic;
	entrada3 : IN std_logic;
	entrada4 : IN std_logic;
	saida1 : OUT STD.STANDARD.bit;
	saida2 : OUT STD.STANDARD.bit;
	saida3 : OUT STD.STANDARD.bit;
	saida4 : OUT STD.STANDARD.bit;
	saida5 : OUT STD.STANDARD.bit;
	saida6 : OUT STD.STANDARD.bit;
	saida7 : OUT STD.STANDARD.bit
	);
END bcd_decoder;

-- Design Ports Information
-- saida1	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida2	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida3	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida4	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida5	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida6	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saida7	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- entrada1	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada3	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada2	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- entrada4	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF bcd_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada1 : std_logic;
SIGNAL ww_entrada2 : std_logic;
SIGNAL ww_entrada3 : std_logic;
SIGNAL ww_entrada4 : std_logic;
SIGNAL ww_saida1 : std_logic;
SIGNAL ww_saida2 : std_logic;
SIGNAL ww_saida3 : std_logic;
SIGNAL ww_saida4 : std_logic;
SIGNAL ww_saida5 : std_logic;
SIGNAL ww_saida6 : std_logic;
SIGNAL ww_saida7 : std_logic;
SIGNAL \entrada4~combout\ : std_logic;
SIGNAL \entrada1~combout\ : std_logic;
SIGNAL \entrada2~combout\ : std_logic;
SIGNAL \entrada3~combout\ : std_logic;
SIGNAL \saida1~0_combout\ : std_logic;
SIGNAL \saida2~0_combout\ : std_logic;
SIGNAL \saida3~0_combout\ : std_logic;
SIGNAL \saida4~0_combout\ : std_logic;
SIGNAL \saida5~0_combout\ : std_logic;
SIGNAL \saida6~0_combout\ : std_logic;
SIGNAL \saida7~0_combout\ : std_logic;
SIGNAL \ALT_INV_saida2~0_combout\ : std_logic;
SIGNAL \ALT_INV_saida1~0_combout\ : std_logic;

BEGIN

ww_entrada1 <= entrada1;
ww_entrada2 <= entrada2;
ww_entrada3 <= entrada3;
ww_entrada4 <= entrada4;
saida1 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_saida1);
saida2 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_saida2);
saida3 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_saida3);
saida4 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_saida4);
saida5 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_saida5);
saida6 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_saida6);
saida7 <= IEEE.STD_LOGIC_1164.TO_BIT(ww_saida7);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_saida2~0_combout\ <= NOT \saida2~0_combout\;
\ALT_INV_saida1~0_combout\ <= NOT \saida1~0_combout\;

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entrada4,
	combout => \entrada4~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entrada1,
	combout => \entrada1~combout\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entrada2,
	combout => \entrada2~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\entrada3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_entrada3,
	combout => \entrada3~combout\);

-- Location: LCCOMB_X29_Y35_N0
\saida1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida1~0_combout\ = (\entrada1~combout\) # ((\entrada3~combout\) # (\entrada4~combout\ $ (!\entrada2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4~combout\,
	datab => \entrada1~combout\,
	datac => \entrada2~combout\,
	datad => \entrada3~combout\,
	combout => \saida1~0_combout\);

-- Location: LCCOMB_X29_Y35_N10
\saida2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida2~0_combout\ = (\entrada1~combout\) # ((\entrada4~combout\ $ (!\entrada3~combout\)) # (!\entrada2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4~combout\,
	datab => \entrada1~combout\,
	datac => \entrada2~combout\,
	datad => \entrada3~combout\,
	combout => \saida2~0_combout\);

-- Location: LCCOMB_X29_Y35_N28
\saida3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida3~0_combout\ = (!\entrada4~combout\ & (!\entrada1~combout\ & (!\entrada2~combout\ & \entrada3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4~combout\,
	datab => \entrada1~combout\,
	datac => \entrada2~combout\,
	datad => \entrada3~combout\,
	combout => \saida3~0_combout\);

-- Location: LCCOMB_X29_Y35_N22
\saida4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida4~0_combout\ = (\entrada4~combout\ & (!\entrada2~combout\ & ((!\entrada3~combout\) # (!\entrada1~combout\)))) # (!\entrada4~combout\ & (!\entrada1~combout\ & (\entrada2~combout\ $ (\entrada3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4~combout\,
	datab => \entrada1~combout\,
	datac => \entrada2~combout\,
	datad => \entrada3~combout\,
	combout => \saida4~0_combout\);

-- Location: LCCOMB_X29_Y35_N24
\saida5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida5~0_combout\ = (\entrada3~combout\ & (\entrada4~combout\ & (!\entrada1~combout\))) # (!\entrada3~combout\ & ((\entrada2~combout\ & ((!\entrada1~combout\))) # (!\entrada2~combout\ & (\entrada4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4~combout\,
	datab => \entrada1~combout\,
	datac => \entrada2~combout\,
	datad => \entrada3~combout\,
	combout => \saida5~0_combout\);

-- Location: LCCOMB_X29_Y35_N2
\saida6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida6~0_combout\ = (!\entrada1~combout\ & ((\entrada4~combout\ & ((\entrada3~combout\) # (!\entrada2~combout\))) # (!\entrada4~combout\ & (!\entrada2~combout\ & \entrada3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4~combout\,
	datab => \entrada1~combout\,
	datac => \entrada2~combout\,
	datad => \entrada3~combout\,
	combout => \saida6~0_combout\);

-- Location: LCCOMB_X29_Y35_N4
\saida7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \saida7~0_combout\ = (!\entrada1~combout\ & ((\entrada2~combout\ & (\entrada4~combout\ & \entrada3~combout\)) # (!\entrada2~combout\ & ((!\entrada3~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada4~combout\,
	datab => \entrada1~combout\,
	datac => \entrada2~combout\,
	datad => \entrada3~combout\,
	combout => \saida7~0_combout\);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_saida1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida1);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_saida2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida2);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \saida3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida3);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \saida4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida4);

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida5~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \saida5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida5);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida6~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \saida6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida6);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saida7~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \saida7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saida7);
END structure;


