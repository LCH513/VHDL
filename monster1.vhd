LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_unsigned.all;

ENTITY monster1 IS
	PORT( CLK,n,y,b,m3,m2,m1,clear : IN STD_LOGIC;
		 x : in std_LOGIC_vector(1 downto 0);
	      col_Green,row_Green:OUT std_logic_vector(0 to 7);
		col_Red,row_Red:OUT std_logic_vector(0 to 7));
END monster1;

ARCHITECTURE a OF monster1 IS
signal cnt1: std_logic_vector (2 downto 0);
signal cnt2: std_logic_vector (2 downto 0);
signal cnt3: std_logic_vector (2 downto 0);
signal cnt4: std_logic_vector (2 downto 0);
BEGIN
PROCESS(clk)
BEGIN
	IF clk'event and clk = '1' then
	------monster1-----------------------------------------------------------------------------------------------------------------------------------------	
IF m1 = '1' then
	IF b = '0' then
			IF x = "00" then 
					CASE cnt1 IS
						WHEN "000" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="01000000";
						WHEN "010" => col_Red <= "00100100";col_Green <= "01011010"; row_Green<="00100000";
						WHEN "011" => col_Red <= "00000000";col_Green <= "01111110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00000000";col_Green <= "11111111"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00111100";col_Green <= "01000010"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "01111110"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "11111111"; row_Green<="00000001";
					END CASE;
				ELSIF x = "01" then
					CASE cnt2 IS
						WHEN "000" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="01000000";
						WHEN "010" => col_Red <= "00100100";col_Green <= "01011010"; row_Green<="00100000";
						WHEN "011" => col_Red <= "00000000";col_Green <= "01111111"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00111100";col_Green <= "01000010"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "11111110"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "01111110"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "11111111"; row_Green<="00000001";
					END CASE;
				ELSIF x = "10" then
						CASE cnt3 Is
						WHEN "000" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="01000000";
						WHEN "010" => col_Red <= "00100100";col_Green <= "01011010"; row_Green<="00100000";
						WHEN "011" => col_Red <= "00000000";col_Green <= "01111110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "11100111"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00011000";col_Green <= "01100110"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "01111110"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "11111111"; row_Green<="00000001";
					END CASE;
				ELSIF x = "11" then
					CASE cnt4 Is
						WHEN "000" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="01000000";
						WHEN "010" => col_Red <= "00100100";col_Green <= "01011010"; row_Green<="00100000";
						WHEN "011" => col_Red <= "00000000";col_Green <= "11111110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00111100";col_Green <= "01000010"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00111100";col_Green <= "01000011"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "01111110"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "11111111"; row_Green<="00000001";
					END CASE;
				end if;
	
	
	
	ELSIF b = '1' then
		If y = '0' then
		IF n = '0' then
				IF x = "00" then 
					CASE cnt1 IS
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01100110";col_Green <= "01100110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				ELSIF x = "01" then
					CASE cnt2 IS
						WHEN "000" => col_Red <= "00110000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "01111000";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "11111100";col_Green <= "00110000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "11001100";col_Green <= "11001100"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00110000";col_Green <= "11111100"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "01111000"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00110000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "10" then
					CASE cnt3 Is
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01100110";col_Green <= "01100110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "11" then
					CASE cnt4 Is
						WHEN "000" => col_Red <= "00001100";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00011110";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "00111111";col_Green <= "00001100"; row_Green<="00100000";
						WHEN "011" => col_Red <= "00110011";col_Green <= "00110011"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00001100";col_Green <= "00111111"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00011110"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00001100"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				end if;		end if;	
		IF n = '1' then
		IF x = "00" then 
					CASE cnt1 IS
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01111110";col_Green <= "01100110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				ELSIF x = "01" then
					CASE cnt2 IS
						WHEN "000" => col_Red <= "00110000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "01111000";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "11111100";col_Green <= "00110000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "11111100";col_Green <= "11001100"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00110000";col_Green <= "11111100"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "01111000"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00110000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "10" then
					CASE cnt3 Is
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01111110";col_Green <= "01100110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "11" then
					CASE cnt4 Is
						WHEN "000" => col_Red <= "00001100";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00011110";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "00111111";col_Green <= "00001100"; row_Green<="00100000";
						WHEN "011" => col_Red <= "00111111";col_Green <= "00110011"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00001100";col_Green <= "00111111"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00011110"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00001100"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				end if;
				end if;	
		
		elsif y = '1' then
						IF x = "00" then 
					CASE cnt1 IS
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01100110";col_Green <= "01111110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				ELSIF x = "01" then
					CASE cnt2 IS
						WHEN "000" => col_Red <= "00110000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "01111000";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "11111100";col_Green <= "00110000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "11001100";col_Green <= "11111100"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00110000";col_Green <= "11111100"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "01111000"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00110000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "10" then
					CASE cnt3 Is
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01100110";col_Green <= "01111110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "11" then
					CASE cnt4 Is
						WHEN "000" => col_Red <= "00001100";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00011110";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "00111111";col_Green <= "00001100"; row_Green<="00100000";
						WHEN "011" => col_Red <= "00110011";col_Green <= "00111111"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00001100";col_Green <= "00111111"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00011110"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00001100"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				end if;
		
		end if;
	end if;
------monster2-----------------------------------------------------------------------------------------------------------------------------------------	
elsif m2 = '1' then
	IF b = '0' then
				IF x = "00" then 
					CASE cnt1 IS
						WHEN "000" => col_Red <= "00100100";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01011010";col_Green <= "00100100"; row_Green<="00100000";
						WHEN "011" => col_Red <= "11111111";col_Green <= "00000000"; row_Green<="00010000";
						WHEN "100" => col_Red <= "01011010";col_Green <= "00100100"; row_Green<="00001000";
						WHEN "101" => col_Red <= "01100110";col_Green <= "00011000"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="00000010";
						when others=> col_Red <= "00100100";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				ELSIF x = "01" then
					CASE cnt2 IS
						WHEN "000" => col_Red <= "00100100";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01011010";col_Green <= "00100100"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01111111";col_Green <= "00000000"; row_Green<="00010000";
						WHEN "100" => col_Red <= "11000010";col_Green <= "00111100"; row_Green<="00001000";
						WHEN "101" => col_Red <= "01111110";col_Green <= "00000000"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="00000010";
						when others=> col_Red <= "00100100";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				ELSIF x = "10" then
					CASE cnt3 Is
						WHEN "000" => col_Red <= "00100100";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01011010";col_Green <= "00100100"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01111110";col_Green <= "00000000"; row_Green<="00010000";
						WHEN "100" => col_Red <= "01100110";col_Green <= "00011000"; row_Green<="00001000";
						WHEN "101" => col_Red <= "11011011";col_Green <= "00100100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="00000010";
						when others=> col_Red <= "00100100";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				ELSIF x = "11" then
					CASE cnt4 Is
						WHEN "000" => col_Red <= "00100100";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01011010";col_Green <= "00100100"; row_Green<="00100000";
						WHEN "011" => col_Red <= "11111110";col_Green <= "00000000"; row_Green<="00010000";
						WHEN "100" => col_Red <= "01111111";col_Green <= "00000000"; row_Green<="00001000";
						WHEN "101" => col_Red <= "01000010";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="00000010";
						when others=> col_Red <= "00100100";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				end if;
	
	
	
	
ELSIF b = '1' then
		If y = '0' then
		IF n = '0' then
				IF x = "00" then 
					CASE cnt1 IS
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01100110";col_Green <= "01100110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				ELSIF x = "01" then
					CASE cnt2 IS
						WHEN "000" => col_Red <= "00110000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "01111000";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "11111100";col_Green <= "00110000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "11001100";col_Green <= "11001100"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00110000";col_Green <= "11111100"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "01111000"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00110000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "10" then
					CASE cnt3 Is
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01100110";col_Green <= "01100110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "11" then
					CASE cnt4 Is
						WHEN "000" => col_Red <= "00001100";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00011110";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "00111111";col_Green <= "00001100"; row_Green<="00100000";
						WHEN "011" => col_Red <= "00110011";col_Green <= "00110011"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00001100";col_Green <= "00111111"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00011110"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00001100"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				end if;		end if;	
		IF n = '1' then
		IF x = "00" then 
					CASE cnt1 IS
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01111110";col_Green <= "01100110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				ELSIF x = "01" then
					CASE cnt2 IS
						WHEN "000" => col_Red <= "00110000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "01111000";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "11111100";col_Green <= "00110000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "11111100";col_Green <= "11001100"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00110000";col_Green <= "11111100"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "01111000"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00110000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "10" then
					CASE cnt3 Is
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01111110";col_Green <= "01100110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "11" then
					CASE cnt4 Is
						WHEN "000" => col_Red <= "00001100";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00011110";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "00111111";col_Green <= "00001100"; row_Green<="00100000";
						WHEN "011" => col_Red <= "00111111";col_Green <= "00110011"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00001100";col_Green <= "00111111"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00011110"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00001100"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				end if;
				end if;	
		
		elsif y = '1' then
						IF x = "00" then 
					CASE cnt1 IS
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01100110";col_Green <= "01111110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				ELSIF x = "01" then
					CASE cnt2 IS
						WHEN "000" => col_Red <= "00110000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "01111000";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "11111100";col_Green <= "00110000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "11001100";col_Green <= "11111100"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00110000";col_Green <= "11111100"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "01111000"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00110000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "10" then
					CASE cnt3 Is
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01100110";col_Green <= "01111110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "11" then
					CASE cnt4 Is
						WHEN "000" => col_Red <= "00001100";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00011110";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "00111111";col_Green <= "00001100"; row_Green<="00100000";
						WHEN "011" => col_Red <= "00110011";col_Green <= "00111111"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00001100";col_Green <= "00111111"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00011110"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00001100"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				end if;		
		end if;
	end if;
------monster3-----------------------------------------------------------------------------------------------------------------------------------------	
elsif m3 = '1' then
	IF b = '0' then
				IF x = "00" then 
					CASE cnt1 IS
							WHEN "000" => col_Red <= "00100100";col_Green <= "00000000"; row_Green<="10000000";
							WHEN "001" => col_Red <= "00100100";col_Green <= "00100100"; row_Green<="01000000";
							WHEN "010" => col_Red <= "01111110";col_Green <= "01011010"; row_Green<="00100000";
							WHEN "011" => col_Red <= "01111110";col_Green <= "11111110"; row_Green<="00010000";
							WHEN "100" => col_Red <= "00111100";col_Green <= "11100100"; row_Green<="00001000";
							WHEN "101" => col_Red <= "00111110";col_Green <= "01111110"; row_Green<="00000100";
							WHEN "110" => col_Red <= "01111100";col_Green <= "01111100"; row_Green<="00000010";
							when others=> col_Red <= "00011100";col_Green <= "01111100"; row_Green<="00000001";
					END CASE;
				ELSIF x = "01" then
					CASE cnt2 IS
							WHEN "000" => col_Red <= "00100100";col_Green <= "00000000"; row_Green<="10000000";
							WHEN "001" => col_Red <= "00100100";col_Green <= "00100100"; row_Green<="01000000";
							WHEN "010" => col_Red <= "01111110";col_Green <= "01011010"; row_Green<="00100000";
							WHEN "011" => col_Red <= "01111110";col_Green <= "01111111"; row_Green<="00010000";
							WHEN "100" => col_Red <= "00111100";col_Green <= "00100111"; row_Green<="00001000";
							WHEN "101" => col_Red <= "01111100";col_Green <= "01111110"; row_Green<="00000100";
							WHEN "110" => col_Red <= "00111110";col_Green <= "00111110"; row_Green<="00000010";
							when others=> col_Red <= "00111000";col_Green <= "00111110"; row_Green<="00000001";
					END CASE;
				ELSIF x = "10" then
					CASE cnt3 Is
							WHEN "000" => col_Red <= "00100100";col_Green <= "00000000"; row_Green<="10000000";
							WHEN "001" => col_Red <= "00100100";col_Green <= "00100100"; row_Green<="01000000";
							WHEN "010" => col_Red <= "01111110";col_Green <= "01011010"; row_Green<="00100000";
							WHEN "011" => col_Red <= "01111110";col_Green <= "01111111"; row_Green<="00010000";
							WHEN "100" => col_Red <= "00111100";col_Green <= "00100111"; row_Green<="00001000";
							WHEN "101" => col_Red <= "00111110";col_Green <= "00111110"; row_Green<="00000100";
							WHEN "110" => col_Red <= "01111100";col_Green <= "01111110"; row_Green<="00000010";
							when others=> col_Red <= "00111000";col_Green <= "00111110"; row_Green<="00000001";
					END CASE;
				ELSIF x = "11" then
					CASE cnt4 Is					
							WHEN "000" => col_Red <= "00100100";col_Green <= "00000000"; row_Green<="10000000";
							WHEN "001" => col_Red <= "00100100";col_Green <= "00100100"; row_Green<="01000000";
							WHEN "010" => col_Red <= "01111110";col_Green <= "01011010"; row_Green<="00100000";
							WHEN "011" => col_Red <= "01111110";col_Green <= "11111110"; row_Green<="00010000";
							WHEN "100" => col_Red <= "00111100";col_Green <= "11100100"; row_Green<="00001000";
							WHEN "101" => col_Red <= "01111100";col_Green <= "01111100"; row_Green<="00000100";
							WHEN "110" => col_Red <= "00111110";col_Green <= "01111110"; row_Green<="00000010";
							when others=> col_Red <= "00011100";col_Green <= "01111100"; row_Green<="00000001";
					END CASE;
				end if;	
	
	
	
	
	ELSIF b = '1' then
		If y = '0' then
		IF n = '0' then
				IF x = "00" then 
					CASE cnt1 IS
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01100110";col_Green <= "01100110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				ELSIF x = "01" then
					CASE cnt2 IS
						WHEN "000" => col_Red <= "00110000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "01111000";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "11111100";col_Green <= "00110000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "11001100";col_Green <= "11001100"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00110000";col_Green <= "11111100"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "01111000"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00110000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "10" then
					CASE cnt3 Is
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01100110";col_Green <= "01100110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "11" then
					CASE cnt4 Is
						WHEN "000" => col_Red <= "00001100";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00011110";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "00111111";col_Green <= "00001100"; row_Green<="00100000";
						WHEN "011" => col_Red <= "00110011";col_Green <= "00110011"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00001100";col_Green <= "00111111"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00011110"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00001100"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				end if;		end if;	
		IF n = '1' then
		IF x = "00" then 
					CASE cnt1 IS
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01111110";col_Green <= "01100110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				ELSIF x = "01" then
					CASE cnt2 IS
						WHEN "000" => col_Red <= "00110000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "01111000";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "11111100";col_Green <= "00110000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "11111100";col_Green <= "11001100"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00110000";col_Green <= "11111100"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "01111000"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00110000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "10" then
					CASE cnt3 Is
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01111110";col_Green <= "01100110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "11" then
					CASE cnt4 Is
						WHEN "000" => col_Red <= "00001100";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00011110";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "00111111";col_Green <= "00001100"; row_Green<="00100000";
						WHEN "011" => col_Red <= "00111111";col_Green <= "00110011"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00001100";col_Green <= "00111111"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00011110"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00001100"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				end if;
				end if;	
		
		elsif y = '1' then
						IF x = "00" then 
					CASE cnt1 IS
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01100110";col_Green <= "01111110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				ELSIF x = "01" then
					CASE cnt2 IS
						WHEN "000" => col_Red <= "00110000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "01111000";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "11111100";col_Green <= "00110000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "11001100";col_Green <= "11111100"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00110000";col_Green <= "11111100"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "01111000"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00110000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "10" then
					CASE cnt3 Is
						WHEN "000" => col_Red <= "00011000";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00111100";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "01111110";col_Green <= "00011000"; row_Green<="00100000";
						WHEN "011" => col_Red <= "01100110";col_Green <= "01111110"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00011000";col_Green <= "01111110"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00111100"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00011000"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
				END CASE;
				ELSIF x = "11" then
					CASE cnt4 Is
						WHEN "000" => col_Red <= "00001100";col_Green <= "00000000"; row_Green<="10000000";
						WHEN "001" => col_Red <= "00011110";col_Green <= "00000000"; row_Green<="01000000";
						WHEN "010" => col_Red <= "00111111";col_Green <= "00001100"; row_Green<="00100000";
						WHEN "011" => col_Red <= "00110011";col_Green <= "00111111"; row_Green<="00010000";
						WHEN "100" => col_Red <= "00001100";col_Green <= "00111111"; row_Green<="00001000";
						WHEN "101" => col_Red <= "00000000";col_Green <= "00011110"; row_Green<="00000100";
						WHEN "110" => col_Red <= "00000000";col_Green <= "00001100"; row_Green<="00000010";
						when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
					END CASE;
				end if;
		
		
		end if;
	end if;		
------clear-----------------------------------------------------------------------------------------------------------------------------------------		
ELSIF clear = '0' then
	IF x = "00" then 
		CASE cnt1 IS
			WHEN "000" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="10000000";
			WHEN "001" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="01000000";
			WHEN "010" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00100000";
			WHEN "011" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00010000";
			WHEN "100" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00001000";
			WHEN "101" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000100";
			WHEN "110" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000010";
			when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
		END CASE;
	ELSIF x = "01" then
		CASE cnt2 IS
			WHEN "000" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="10000000";
			WHEN "001" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="01000000";
			WHEN "010" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00100000";
			WHEN "011" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00010000";
			WHEN "100" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00001000";
			WHEN "101" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000100";
			WHEN "110" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000010";
			when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
		END CASE;
	ELSIF x = "10" then
		CASE cnt3 Is
			WHEN "000" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="10000000";
			WHEN "001" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="01000000";
			WHEN "010" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00100000";
			WHEN "011" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00010000";
			WHEN "100" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00001000";
			WHEN "101" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000100";
			WHEN "110" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000010";
			when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
		END CASE;
	ELSIF x = "11" then
		CASE cnt4 Is
			WHEN "000" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="10000000";
			WHEN "001" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="01000000";
			WHEN "010" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00100000";
			WHEN "011" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00010000";
			WHEN "100" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00001000";
			WHEN "101" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000100";
			WHEN "110" => col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000010";
			when others=> col_Red <= "00000000";col_Green <= "00000000"; row_Green<="00000001";
		END CASE;
	end if;
end if;

	end if;
END PROCESS;

PROCESS(clk)
BEGIN
	IF clk'event and clk='1' then
		IF x = "00" then
			cnt1<=cnt1+1;
		ELSIF x = "01" then
			cnt2<=cnt2+1;
		ELSIF x = "10" then
			cnt3<=cnt3+1;
		ELSIF x = "11" then
			cnt4<=cnt4+1;
		end if;
	end if;
END PROCESS;

END a;