
-- VHDL Instantiation Created from source file VGAController.vhd -- 16:50:49 11/09/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT VGAController
	PORT(
		clk : IN std_logic;
		clr : IN std_logic;          
		vsync : OUT std_logic;
		hsync : OUT std_logic;
		vcount : OUT std_logic_vector(2 downto 0);
		hcount : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_VGAController: VGAController PORT MAP(
		clk => ,
		clr => ,
		vsync => ,
		hsync => ,
		vcount => ,
		hcount => 
	);


