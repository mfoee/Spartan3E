----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:03:35 11/09/2014 
-- Design Name: 
-- Module Name:    RGBGen - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RGBGen is
	port(
		clk : in std_logic;
		clr : in std_logic;
		vsync : in std_logic;
		hsync : in std_logic;
		R : out std_logic_vector(7 downto 0);
		G : out std_logic_vector(7 downto 0);
		B : out std_logic_vector(7 downto 0)
		);
end RGBGen;

architecture Behavioral of RGBGen is

begin

process(clk)
begin
	if(clk'Event and clk = '1') then
--		if(hsync == '1') then
--			R <= '0';
--			G <= '0';
--			B <= '0';
--		end if;
	end if;
end process;

end Behavioral;

