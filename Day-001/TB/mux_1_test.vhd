
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:49:07 01/13/2024
-- Design Name:   mux1
-- Module Name:   mux_1_test.vhd
-- Project Name:  day_001
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux1
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY mux_1_test_vhd IS
END mux_1_test_vhd;

ARCHITECTURE behavior OF mux_1_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT mux1
	PORT(
		in1 : IN std_logic;
		sel : IN std_logic_vector(0 to 1);          
		out1 : OUT std_logic_vector(0 to 3)
		);
	END COMPONENT;

	--Inputs
	SIGNAL in1 :  std_logic := '0';
	SIGNAL sel :  std_logic_vector(0 to 1) := (others=>'0');

	--Outputs
	SIGNAL out1 :  std_logic_vector(0 to 3);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: mux1 PORT MAP(
		in1 => in1,
		out1 => out1,
		sel => sel
	);

	tb : PROCESS
	BEGIN

    in1<='1';
	 sel<="00";
	 
	 wait for 10ns;
	 
	 in1<='1';
	 sel<="01";
	 
	 wait for 10ns;
	 
     in1<='1';
	 sel<="10";
	 
	 wait for 10ns;
	 
	      in1<='1';
	 sel<="11";
	 
	

		wait; -- will wait forever
	END PROCESS;

END;
