entity OrPort4inputs is
port(or_input1, or_input2, or_input3, or_input4 : in bit;
    output_or : out bit);
end OrPort4inputs;
architecture behav of OrPort4inputs is
begin
    output_or <= or_input1 or or_input2 or or_input3 or or_input4;
end architecture behav;
