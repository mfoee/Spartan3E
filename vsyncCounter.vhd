----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:00:54 11/06/2014 
-- Design Name: 
-- Module Name:    vsyncCounter - Behavioral 
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vsyncCounter is
	port(
		clk: in std_logic;
		clr: in std_logic;
		Q: out std_logic_vector(9 downto 0)
	);
end vsyncCounter;

architecture Behavioral of vsyncCounter is
	signal tmp : std_logic_vector(9 downto 0);
	
begin

	process(clk, clr)
	begin
		if(clk'Event and clk = '1') then
			if (clk = '1') then
				tmp <= B"0000000000";
			else
				if ((conv_integer(tmp)) >= 524) then
					tmp <= B"0000000000";
				else
					tmp <= tmp + '1';
				end if;
			end if;
		end if;
	end process;
	
	Q <= tmp;

end Behavioral;

