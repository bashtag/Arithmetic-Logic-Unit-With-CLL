transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/custom_gates {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/custom_gates/custom_or.v}
vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/custom_gates {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/custom_gates/custom_xor.v}
vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/arithmetic_logic_units {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/arithmetic_logic_units/alu_1_bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/multiplexers {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/multiplexers/mux_2x1_is_subtract.v}
vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/carry_lookahead {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/carry_lookahead/cll_4_input.v}
vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/carry_lookahead {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/carry_lookahead/cla_4_bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/multiplexers {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/multiplexers/mux_5x1_alu_1_bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/carry_lookahead {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/carry_lookahead/cla_16_bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/multiplexers {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/multiplexers/mux_2x1_b_xor_is_subtract_4_bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/carry_lookahead {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/carry_lookahead/cla_4_bit_msb.v}
vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/carry_lookahead {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/carry_lookahead/cla_16_bit_msb.v}
vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/arithmetic_logic_units {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/arithmetic_logic_units/alu_32_bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/mod {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/mod/mod_cu.v}
vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/mod {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/mod/mod_dp.v}
vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/mod {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/mod/mod.v}
vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/multiplexers {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/multiplexers/mux_3x1_results.v}

vlog -vlog01compat -work work +incdir+C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer\ Organization/Project2/testbenches {C:/Users/btsts/Desktop/GitHUB/Theoretical/Computer Organization/Project2/testbenches/testbench_alu_32.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testbench_alu_32

add wave *
view structure
view signals
run -all
