
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:39:47 02/11/2024
-- Design Name:   pri_en
-- Module Name:   pri_en_test.vhd
-- Project Name:  day_02
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pri_en
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

ENTITY pri_en_test_vhd IS
END pri_en_test_vhd;

ARCHITECTURE behavior OF pri_en_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT pri_en
	PORT(
		input : IN std_logic_vector(7 downto 0);          
		output : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL input :  std_logic_vector(7 downto 0) := (others=>'0');

	--Outputs
	SIGNAL output :  std_logic_vector(2 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: pri_en PORT MAP(
		input => input,
		output => output
	);

	tb : PROCESS
	BEGIN

		-- Wait 100 ns for global reset to finish
		wait for 100 ns;
       input<="10101010";
		 wait for 100 ns;
       input<="00101010";
		 		wait for 100 ns;
       input<="00001010";
		 wait for 100 ns;
       input<="00000010";
		 		wait for 100 ns;
       input<="00000010";
		 wait for 100 ns;
       input<="00000001";
		

		wait; -- will wait forever
	END PROCESS;

END;
