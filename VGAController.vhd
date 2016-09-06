----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:29:06 11/09/2014 
-- Design Name: 
-- Module Name:    VGAController - Behavioral 
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

entity VGAController is
	port (
		clk : in std_logic;
		clr : in std_logic;
		vsync : out std_logic;
		hsync : out std_logic;
		vcount : out std_logic_vector(9 downto 0);
		hcount : out std_logic_vector(9 downto 0)
		);
		
end VGAController;

architecture Behavioral of VGAController is

	COMPONENT hsyncCounter
	PORT(
		clk : IN std_logic;
		clr : IN std_logic;          
		Q : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;
	
	COMPONENT vsyncCounter
	PORT(
		clk : IN std_logic;
		clr : IN std_logic;          
		Q : OUT std_logic_vector(9 downto 0)
		);
	END COMPONENT;
	
	COMPONENT VGASync
	PORT(
		clk : IN std_logic;
		clr : IN std_logic;
		vcount : IN std_logic_vector(9 downto 0);
		hcount : IN std_logic_vector(9 downto 0);          
		vsync : OUT std_logic;
		hsync : OUT std_logic
		);
	END COMPONENT;

	signal hcount_s : std_logic_vector(9 downto 0);
	signal vcount_s : std_logic_vector(9 downto 0);	

begin

	Inst_hsyncCounter: hsyncCounter PORT MAP(
		clk => clk,
		clr => clr,
		Q => hcount_s
	);

	Inst_vsyncCounter: vsyncCounter PORT MAP(
		clk => clk,
		clr => clr,
		Q => vcount_s
	);
	
	Inst_VGASync: VGASync PORT MAP(
		clk => clk,
		clr => clr,
		vcount => vcount_s,
		hcount => hcount_s,
		vsync => vsync,
		hsync => hsync
	);	
	
	hcount <= hcount_s;
	vcount <= vcount_s;


end Behavioral;

