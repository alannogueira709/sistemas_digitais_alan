entity AndPort3inputs is
port(and_input1,and_input2,and_input3: in bit;
    output_and: out bit);
end AndPort3inputs; 

architecture behav of AndPort3inputs is
begin
	output_and <= and_input1 and and_input2 and and_input3;
end architecture behav;
    