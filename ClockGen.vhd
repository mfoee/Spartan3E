----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:46:13 11/06/2014 
-- Design Name: 
-- Module Name:    ClockGen - Behavioral 
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

entity ClockGen is
		port (
			clk: in std_logic;
			vgaclk : out std_logic
		);
end ClockGen;

architecture Behavioral of ClockGen is

	signal count : std_logic_vector (0 downto 0);

begin
	process(clk)
	begin
	if (clk'Event and clk = '1') then
		count <= count + 1;
		if ((conv_integer(count)) >= 2) then
			vgaclk <= clk; -- want to send out 25 MHz clock signal
			count <= "0";
		end if;
	end if;
	end process;

end Behavioral;

