
-- VHDL Instantiation Created from source file hsyncCounter.vhd -- 16:33:14 11/09/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT hsyncCounter
	PORT(
		clk : IN std_logic;
		clr : IN std_logic;          
		Q : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_hsyncCounter: hsyncCounter PORT MAP(
		clk => ,
		clr => ,
		Q => 
	);


