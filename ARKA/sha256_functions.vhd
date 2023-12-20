library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.sha256_types.all;
use work.sha256_constants.all;

package sha256_functions is

	-- Function used to index arrays using std_logic_vector:
	function index(input : in std_logic_vector) return integer;
	
	-- Resets the intermediate hash values to their initial values:
	procedure reset_intermediate(signal a, b : out std_logic_vector);

	-- The SHA256 compression function for iteration j:
	procedure compress(
			-- Intermediate hash values from the previous iteration:
			signal h0, h1 : inout std_logic_vector(7 downto 0);
			
			-- The expanded message block value for this iteration:
			constant W : in std_logic_vector(7 downto 0);
			constant K : in std_logic_vector(7 downto 0));

end package sha256_functions;

package body sha256_functions is
	function index(input : in std_logic_vector) return integer is
	begin
		return to_integer(unsigned(input));
	end function index;
	
	procedure reset_intermediate(signal a, b : out std_logic_vector) is
	begin
		a <= INITIAL_A;
		b <= INITIAL_B;
	end procedure reset_intermediate;
	
	procedure compress(
		-- Intermediate hash values from the previous iteration:
		signal h0, h1 : inout std_logic_vector(7 downto 0);
		-- The expanded message block value for this iteration:
		constant W : in std_logic_vector(7 downto 0);
		-- The constant for this iteration:
		constant K : in std_logic_vector(7 downto 0))
	is
		variable t1, t2 : std_logic_vector(7 downto 0);
		variable a, b : std_logic_vector(7 downto 0);
	begin
		-- Assign intermediate hash values to working variables:
		a := h0;
		b := h1;

		-- Assign new values to working variables:
		t1 := b xor K;
		t2 := a xor W;

		-- Assign new values to the intermediate hash values:
		h0 <= t1;
		h1 <= t2;
	end procedure compress;
	
end package body sha256_functions;