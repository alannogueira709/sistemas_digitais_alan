entity AndPort2inputs is
port(and_input1,and_input2: in bit;
    output_and: out bit);
end AndPort2inputs; 

architecture behav of AndPort2inputs is
begin
	output_and <= and_input1 and and_input2;  
end architecture behav;
    