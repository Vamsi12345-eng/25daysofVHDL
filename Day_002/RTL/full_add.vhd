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



begin

sum<= a xor b xor c;
carry<= (a and b) or (b and c) or (c and a);

end Behavioral;

