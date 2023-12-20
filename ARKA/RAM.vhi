
-- VHDL Instantiation Created from source file RAM.vhd -- 17:12:01 12/04/2023
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT RAM
	PORT(
		clk : IN std_logic;
		data_in : IN std_logic_vector(0 to 3);
		r_addr : IN std_logic_vector(0 to 5);
		w_addr : IN std_logic_vector(0 to 5);
		mode_w : IN std_logic;          
		data_out : OUT std_logic_vector(0 to 3)
		);
	END COMPONENT;

	Inst_RAM: RAM PORT MAP(
		clk => ,
		data_in => ,
		data_out => ,
		r_addr => ,
		w_addr => ,
		mode_w => 
	);


