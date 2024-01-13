----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:41:29 01/13/2024 
-- Design Name: 
-- Module Name:    dec - Behavioral 
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

entity dec is
port(in1 : in std_logic_vector (0 to 1);
     out1 : out std_logic_vector (0 to 3) 
     );
end dec;

architecture Behavioral of dec is

begin
process(in1)
begin
case in1 is
when "00"=> out1<="0001";
when "01"=> out1<="0010";
when "10"=> out1<="0100";
when "11"=> out1<="1000";
when others => out1<="0000";
end case;
end process;

end Behavioral;

