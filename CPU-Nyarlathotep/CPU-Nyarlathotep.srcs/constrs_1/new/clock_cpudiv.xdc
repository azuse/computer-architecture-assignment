
create_clock -period 10.000 -name clk_computer_pin -waveform {0.000 5.000} [get_ports clk_in]

create_generated_clock -name clk_divided -source [get_ports clk_in] -divide_by 4 [get_pins cpu_clk/clk_out_r_reg/Q]


