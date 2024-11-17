library ieee;
use ieee.std_logic_1164.all;

entity registrador_4bits is 
port(i1, i2, i3, i4, clk : in bit;
	 q1, q2, q3, q4: out bit);
	 
end registrador_4bits;

architecture comp of registrador_4bits is
	component flipflopd is 
		port(d, c: in bit;
				  q:out bit);
	end component;
	
	begin 
		u1: flipflopd port map(d => i1, c => clk, q => q1);
		u2: flipflopd port map(d => i2, c => clk, q => q2);
		u3: flipflopd port map(d => i3, c => clk, q => q3);
		u4: flipflopd port map(d => i4, c => clk, q => q4);
	end;