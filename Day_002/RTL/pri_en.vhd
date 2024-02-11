----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:13:38 02/11/2024 
-- Design Name: 
-- Module Name:    pri_en - Behavioral 
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
use IEEE.NUMERIC_STD.all;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pri_en is
port(input : in std_logic_vector(7 downto 0);
     output : out std_logic_vector(2 downto 0)
     );
end pri_en;

architecture Behavioral of pri_en is

begin
process (input) begin

if(input(7)='1') then output<="111";
elsif(input(6)='1') then output<="110";
elsif(input(5)='1') then output<="101";
elsif(input(4)='1') then output<="100";
elsif(input(3)='1') then output<="011";
elsif(input(2)='1') then output<="010";
elsif(input(1)='1') then output<="001";
elsif(input(0)='1') then output<="000";
else output<="XXX";
end if;
end process;

end Behavioral;

