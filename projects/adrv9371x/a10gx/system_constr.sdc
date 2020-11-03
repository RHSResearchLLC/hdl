
source ../../common/a10gx/a10gx_system_constr.sdc

create_clock -period  "8.138 ns"  -name ref_clk0            [get_ports {ref_clk0}]
create_clock -period  "8.138 ns"  -name ref_clk1            [get_ports {ref_clk1}]

derive_pll_clocks
derive_clock_uncertainty

