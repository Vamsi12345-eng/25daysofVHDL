----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:04:33 01/13/2024 
-- Design Name: 
-- Module Name:    mux1 - Behavioral 
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

entity mux1 is
port(in1: in std_logic;
     out1 : out std_logic_vector(0 to 3);
	  sel : in std_logic_vector(0 to 1)
     );
end mux1;

architecture Behavioral of mux1 is

begin
process(sel)
begin
case sel is
when "00" => out1<= "000" & in1;
when "01" => out1<= '0' &in1 & "00";
when "10" => out1<= "00" &in1 & '0';
when "11" => out1<= in1 & "000" ;
when others => out1<= "0000";
end case;
end process;

end Behavioral;

