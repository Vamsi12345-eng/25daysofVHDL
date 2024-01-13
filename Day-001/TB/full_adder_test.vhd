
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:21:52 01/13/2024
-- Design Name:   full_add
-- Module Name:   full_adder_test.vhd
-- Project Name:  day_001
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_add
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

ENTITY full_adder_test_vhd IS
END full_adder_test_vhd;

ARCHITECTURE behavior OF full_adder_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT full_add
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		c : IN std_logic;          
		sum : OUT std_logic;
		carry : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a :  std_logic := '0';
	SIGNAL b :  std_logic := '0';
	SIGNAL c :  std_logic := '0';

	--Outputs
	SIGNAL sum :  std_logic;
	SIGNAL carry :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: full_add PORT MAP(
		a => a,
		b => b,
		c => c,
		sum => sum,
		carry => carry
	);

	tb : PROCESS
	BEGIN
    a<= '0';
	 b<= '1';
	 c<= '0';
	 wait for 10ns;
	 
	     a<= '1';
	 b<= '1';
	 c<= '0';
	 wait for 10ns;
	 
	     a<= '1';
	 b<= '1';
	 c<= '1';
	 wait for 10ns;
	 
	     a<= '0';
	 b<= '0';
	 c<= '0';
	 wait for 10ns;
	 
	     a<= '0';
	 b<= '1';
	 c<= '1';
	 wait for 10ns;
	 
	     a<= '1';
	 b<= '1';
	 c<= '1';
	 wait;
	END PROCESS;

END;
