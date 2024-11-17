library ieee;
use ieee.std_logic_1164.all;

entity marca_passo is
    port (
        s : in bit;    
        clk : in bit;
        p : out bit   
    );
end marca_passo;

architecture behavior of marca_passo is
    type statetype is (RstTimer, WaitS, Pace);
    signal currentstate, nextstate: statetype;
    signal fc, sc : bit;
    component contador is
        port(
            c : in bit;
            reset : in bit;
            tc : out bit
        );
    end component;
    
begin
    Timer : contador port map(reset => sc, c => clk, tc => fc);
    
    statereg: process(clk)
    begin
        if (clk'event and clk = '1') then
            currentstate <= nextstate;
        end if;
    end process;
    
    comblogic: process (currentstate, s, fc)
    begin
        p <= '0'; -- redefinir saída padrão
        case currentstate is
            when RstTimer =>
                sc <= '1';
                nextstate <= WaitS;
            when WaitS =>
                sc <= '0';
                if s = '0' and fc = '1' then
                    nextstate <= Pace;
                elsif s = '1' then
                    nextstate <= RstTimer;
                else
                    nextstate <= WaitS;
                end if;
            when Pace =>
                p <= '1'; -- forçar contração
                sc <= '1'; -- Reinicializa o contador
                nextstate <= RstTimer;
        end case;
    end process;
end architecture behavior;