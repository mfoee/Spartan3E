
-- VHDL Instantiation Created from source file VGASync.vhd -- 16:59:48 11/09/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT VGASync
	PORT(
		clk : IN std_logic;
		clr : IN std_logic;
		vcount : IN std_logic_vector(2 downto 0);
		hcount : IN std_logic_vector(2 downto 0);          
		vsync : OUT std_logic;
		hsync : OUT std_logic
		);
	END COMPONENT;

	Inst_VGASync: VGASync PORT MAP(
		clk => ,
		clr => ,
		vcount => ,
		hcount => ,
		vsync => ,
		hsync => 
	);


