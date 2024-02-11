module mod_dp(
	input CLK,
	input select,
	input write_enable,
	input result_enable,
	input [31:0] a, b,
	output less_than,
	output reg [31:0] result
);

	reg [31:0] temp;
	wire [31:0] a_or_tempsubt;
	wire [31:0] sub_res;

	always @(posedge CLK)
		begin
			if (write_enable)
			begin
				temp <= a_or_tempsubt;
			end else if (result_enable)
			begin
				result <= temp;
			end
		end

	assign a_or_tempsubt = select ? sub_res : a;
	assign sub_res = temp - b;
	assign less_than = temp < b;

	// I did this. But It causes design loop.
	//alu_32_bit alu0(
	//	.result(alu_res),
	//	.a(temp),
	//	.b(b),
	//	.ALUop(3'b110)
	//);

	//alu_32_bit alu1(
	//	.result(slt_32),
	//	.a(temp),
	//	.b(b),
	//	.ALUop(3'b100)
	//);

	//buf buf0(less_than, slt_32[0]);

endmodule