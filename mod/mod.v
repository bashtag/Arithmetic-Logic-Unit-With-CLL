module mod(
	input CLK,
	input reset,
	input [31:0] a, b,
	output [31:0] result
);
	wire less_t,
		select,
		write_e,
		res_e;

	mod_cu control_unit(
		.CLK(CLK),
		.reset(reset),
		.less_than(less_t),
		.select(select),
		.write_enable(write_e),
		.result_enable(res_e)
	);

	mod_dp data_path(
		.CLK(CLK),
		.select(select),
		.write_enable(write_e),
		.result_enable(res_e),
		.a(a),
		.b(b),
		.less_than(less_t),
		.result(result)
	);

endmodule