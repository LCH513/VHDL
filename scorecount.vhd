library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity scorecount is
port(CLK	:in std_logic;
	x :in std_logic;
	cop		:out std_logic_vector(3 downto 0));
	
end scorecount;

ARCHITECTURE a of scorecount is
Begin
Process (CLK)
variable present_state:std_logic_vector(3 downto 0);
	Begin
	if CLK'event and CLK = '0' then
		if x = '0' then
			case present_state is
				WHEN "0000" => present_state:="0001";
				WHEN "0001" => present_state:="0010";
				WHEN "0010" => present_state:="0011";
				WHEN "0011" => present_state:="0100";
				WHEN "0100" => present_state:="0101";
				WHEN "0101" => present_state:="0110";
				WHEN "0110" => present_state:="0111";
				WHEN "0111" => present_state:="1000";
				WHEN "1000" => present_state:="1001";
				WHEN "1001" => present_state:="0000";
				WHEN OTHERS => present_state:="0000";
			end case;
		end if;
	end if;
	if x = '1' then
		present_state := "0000";
	end if;
	cop<=present_state;
	
end process;
end a;