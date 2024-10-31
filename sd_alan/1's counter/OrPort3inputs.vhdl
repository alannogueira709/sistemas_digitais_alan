entity OrPort3inputs is
port(or_input1, or_input2, or_input3 : in bit;
    output_or : out bit);
end OrPort3inputs;
architecture behav of OrPort3inputs is
begin
    output_or <= or_input1 or or_input2 or or_input3;
end architecture behav;
