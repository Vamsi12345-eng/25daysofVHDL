
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:21:10 02/11/2024
-- Design Name:   Ripple_C_add
-- Module Name:   ripple_test.vhd
-- Project Name:  day_02
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Ripple_C_add
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

ENTITY ripple_test_vhd IS
END ripple_test_vhd;

ARCHITECTURE behavior OF ripple_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT Ripple_C_add
	PORT(
		a : IN std_logic_vector(3 downto 0);
		b : IN std_logic_vector(3 downto 0);
		cin : IN std_logic;          
		sum : OUT std_logic_vector(3 downto 0);
		cout : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL cin :  std_logic := '0';
	SIGNAL a :  std_logic_vector(3 downto 0) := (others=>'0');
	SIGNAL b :  std_logic_vector(3 downto 0) := (others=>'0');

	--Outputs
	SIGNAL sum :  std_logic_vector(3 downto 0);
	SIGNAL cout :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: Ripple_C_add PORT MAP(
		a => a,
		b => b,
		cin => cin,
		sum => sum,
		cout => cout
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;
		
		a<="0101";
		b<="0010";
		cin<='0';
		
		wait for 100 ns;
		
		a<="0101";
		b<="0101";
		cin<='1';
		


		-- Place stimulus here

		wait; -- will wait forever
	END PROCESS;

END;
