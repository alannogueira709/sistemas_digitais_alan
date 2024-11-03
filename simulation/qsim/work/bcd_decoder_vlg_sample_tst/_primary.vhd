library verilog;
use verilog.vl_types.all;
entity bcd_decoder_vlg_sample_tst is
    port(
        entrada1        : in     vl_logic;
        entrada2        : in     vl_logic;
        entrada3        : in     vl_logic;
        entrada4        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end bcd_decoder_vlg_sample_tst;
