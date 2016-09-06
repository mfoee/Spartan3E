----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:11:22 11/06/2014 
-- Design Name: 
-- Module Name:    VGASync - Behavioral 
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

entity VGASync is
	port (
		clk : in std_logic;
		clr : in std_logic;
		vcount : in std_logic_vector(9 downto 0);
		hcount : in std_logic_vector(9 downto 0);	
		vsync : out std_logic;
		hsync : out std_logic
		);
		
end VGASync;

architecture Behavioral of VGASync is

begin

process(clk)
begin
	if(clk'Event and clk = '1') then
		if((conv_integer(hcount)) >= 95) then
			hsync <= '1';
		elsif((conv_integer(vcount)) >= 2) then
			vsync <= '1';
		else
			hsync <= '0';
			vsync <= '0';
		end if;

	end if;
end process;


end Behavioral;