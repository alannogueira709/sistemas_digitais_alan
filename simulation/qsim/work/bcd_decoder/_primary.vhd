library verilog;
use verilog.vl_types.all;
entity bcd_decoder is
    port(
        entrada1        : in     vl_logic;
        entrada2        : in     vl_logic;
        entrada3        : in     vl_logic;
        entrada4        : in     vl_logic;
        saida1          : out    vl_logic;
        saida2          : out    vl_logic;
        saida3          : out    vl_logic;
        saida4          : out    vl_logic;
        saida5          : out    vl_logic;
        saida6          : out    vl_logic;
        saida7          : out    vl_logic
    );
end bcd_decoder;
