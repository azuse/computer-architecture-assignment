
create_clock -period 10.000 -name clk_computer_pin -waveform {0.000 5.000} [get_ports clk_in]

create_generated_clock -name clk_divided -source [get_ports clk_in] -divide_by 4 [get_pins cpu_clk/clk_out_r_reg/Q]



set_multicycle_path -from [get_pins {sccpu/pc_reg[2]/C}] -to [get_pins {dmem/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/DIADI[28]}] 25
set_multicycle_path -from [get_pins {sccpu/pc_reg[2]/C}] -to [get_pins {dmem/U0/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/prim_noinit.ram/DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram/DIADI[28]}] 1
