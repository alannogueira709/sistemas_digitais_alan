entity circuito is 
port(A,B,C: in bit;
    output1,output2: out bit
    );
end circuito

architecture behav of circuito is 

    signal S1: bit;
    signal S2: bit;
    signal S3: bit;
    signal S4: bit;
    signal S5: bit;
    signal S6: bit;
    signal S7: bit;

    component AndPort2inputs is
       port(and_input1,and_input2: in bit; 
       output_and: out bit);
    end component;

    component AndPort3inputs is
        port(and_input1,and_input2,and_input3: in bit;
        output_and: out bit);
    end component
    
    component OrPort3inputs is
        port(or_input1, or_input2, or_input3 : in bit;
        output_or : out bit);

    component OrPort4inputs is
        port(or_input1, or_input2, or_input3, or_input4 : in bit;
        output_or : out bit);
    end component

begin
u1: AndPort2inputs port map(and_input1 => A , and_input2 => B, output_and => S1);
u2: AndPort2inputs port map(and_input1 => A , and_input2 => B, output_and => S2);
u3: AndPort2inputs port map(and_input1 => A , and_input2 => B, output_and => S3);

u4: AndPort3inputs port map(and_input1 => not(A) , and_input2 => not(B), and_input3 => C, output_and => S4);
u5: AndPort3inputs port map(and_input1 => not(A) , and_input2 => B, and_input3 => not(C), output_and => S5);
u6: AndPort3inputs port map(and_input1 => A , and_input2 => not(B), and_input3 => not(C), output_and => S6);
u7: AndPort3inputs port map(and_input1 => A , and_input2 => B, and_input3 => C, output_and => S7);

u8: OrPort3inputs port map(or_input1 => S1, or_input2 => S2, or_input3 => S3, output_or => output1);
u9: OrPort4inputs port map(or_input1 => S4, or_input2 => S5, or_input3 => S6, or_input4 => S7, output_or => output2);

end architecture behav; 
