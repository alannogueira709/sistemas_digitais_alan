entity bcd_decoder is
port(entrada1,entrada2,entrada3,entrada4: in bit;
	  saida1,saida2,saida3,saida4,saida5,saida6,saida7: out bit);
end;

architecture behav of bcd_decoder is 
begin

saida1 <= (not entrada1 and not entrada2 and not entrada3 and entrada4) or (not entrada1 and entrada2 and not entrada3 and not entrada4);
saida2 <= (not entrada1 and entrada2 and not entrada3 and entrada4)or(not entrada1 and entrada2 and entrada3 and not entrada4);
saida3 <= (not entrada1 and not entrada2 and entrada3 and not entrada4);
saida4 <= (entrada4 and not entrada2 and not entrada3) or (not entrada1 and entrada2 and not entrada3 and not entrada4) or (not entrada1 and not entrada2 and entrada3);
saida5 <= (not entrada1 and entrada4) or (entrada2 and not entrada1 and not entrada3) or (entrada4 and not entrada2 and not entrada3);
saida6 <= not entrada1 and (entrada3 or entrada4) and (entrada3 or not entrada2) and (entrada4 or not entrada2);
saida7 <= ((not entrada2 and not entrada3) or (entrada2 and entrada3 and entrada4)) and not entrada1;
END;