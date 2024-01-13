----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:53:09 01/13/2024 
-- Design Name: 
-- Module Name:    full_add - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity full_add is
port(a,b,c : in std_logic;
     sum,carry : out std_logic 
     );
end full_add;

architecture Behavioral of full_add is
component half_add is
port(a : in std_logic;
     b : in std_logic;
	  sum : out std_logic;
	  carry : out std_logic);
end component;
signal s1 : std_logic;
signal s2 : std_logic;
signal s3 : std_logic;

begin

u1 : half_add port map(a=>a,b=>b,sum=>s1,carry=>s2);
u2 : half_add port map(a=>s1,b=>c,sum=>sum,carry=>s3);
carry <= s2 or s3;
end Behavioral;

