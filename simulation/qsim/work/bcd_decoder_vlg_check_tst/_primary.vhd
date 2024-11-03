library verilog;
use verilog.vl_types.all;
entity bcd_decoder_vlg_check_tst is
    port(
        saida1          : in     vl_logic;
        saida2          : in     vl_logic;
        saida3          : in     vl_logic;
        saida4          : in     vl_logic;
        saida5          : in     vl_logic;
        saida6          : in     vl_logic;
        saida7          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end bcd_decoder_vlg_check_tst;
