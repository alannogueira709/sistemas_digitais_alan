LIBRARY ieee;
USE ieee.std_logic_1164.all ;
ENTITY flipflopd IS
PORT(d, clk : IN BIT;
	q : OUT BIT);
END;
ARCHITECTURE behav OF flipflopd IS
BEGIN
PROCESS (d, clk)
BEGIN
IF (clk ' EVENT AND clk = '1' AND d = '1') THEN
	q <= '1';
ELSIF (clk ' EVENT AND clk = '1' AND d = '0') THEN
	q <= '0';
END IF;
END PROCESS;
END;