library ieee;
use ieee.std_logic_1164.all;

entity contador is
    port (
        c: in bit;
        reset: in bit;
        q: out integer range 6 downto 0;
        tc: out bit
    );
end contador;

architecture behavior of contador is
    signal q_var: integer range 6 downto 0 := 6; 
begin
    counter_process: process(c, reset)
    begin
        if reset = '1' then
            tc <= '0';
            q_var <= 6;
        elsif c'event and c = '1' then
            if q_var = 0 then
                tc <= '1';
                q_var <= 6; 
            else
                q_var <= q_var - 1;
            end if;
        end if;
        q <= q_var; 
    end process;
end behavior;