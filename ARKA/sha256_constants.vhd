library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.sha256_types.all;

package sha256_constants is
	-- Initial intermediate hash values:
	constant INITIAL_A : std_logic_vector(7 downto 0) := x"45";
	constant INITIAL_B : std_logic_vector(7 downto 0) := x"11";
	
	-- Array of constants used in the algorithm:
	constant constants : constant_array := (
			x"e1", x"84", x"e2", x"ad",
			x"11", x"ab", x"b3", x"9c"
		);
end package; 