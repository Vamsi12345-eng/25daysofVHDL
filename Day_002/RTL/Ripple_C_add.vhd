----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:15:55 02/11/2024 
-- Design Name: 
-- Module Name:    Ripple_C_add - Behavioral 
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

entity Ripple_C_add is
generic (width : natural:=3);
port(a: in std_logic_vector(width downto 0);
     b: in std_logic_vector(width downto 0);
	  cin : in std_logic;
	  sum : out std_logic_vector(width downto 0);
	  cout : out std_logic);
end Ripple_C_add;

architecture Behavioral of Ripple_C_add is
signal c1 : std_logic;
signal c2 : std_logic;
signal c3 : std_logic;
component full_add is
port(a : in std_logic;
     b : in std_logic;
	  c : in std_logic;
	  sum : out std_logic;
	  carry : out std_logic);
end component;

begin
fa1 : full_add port map(a(0),b(0),cin,sum(0),c1);
fa2: full_add port map(a(1),b(1),c1,sum(1),c2);
fa3: full_add port map(a(2),b(2),c2,sum(2),c3);
fa4: full_add port map(a(3),b(3),c3,sum(3),cout);
end Behavioral;

