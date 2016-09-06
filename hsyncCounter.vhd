----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:44:59 11/06/2014 
-- Design Name: 
-- Module Name:    hsyncCounter - Behavioral 
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

entity hsyncCounter is
	port(
		clk: in std_logic;
		clr: in std_logic;
		Q : out std_logic_vector(9 downto 0)
	);
end hsyncCounter;

architecture Behavioral of hsyncCounter is
	signal tmp : std_logic_vector(9 downto 0);

begin

	process(clk, clr)
	begin
		if(clk'Event and clk = '1') then
			if (clr = '1') then
				tmp <= B"0000000000";
			else
				if ((conv_integer(tmp)) >= 799) then
					tmp <= "0000000000";
				else
					tmp <= tmp + '1';
				end if;
			end if;
		end if;
	end process;
	
	Q <= tmp;

end Behavioral;

