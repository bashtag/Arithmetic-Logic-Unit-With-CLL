`timescale 1ns/1ns
module testbench_mod();
	reg [31:0] a, b;
	reg CLK;
	reg reset;
	wire [31:0] result;
	
	mod mod0(
		.CLK(CLK),
		.reset(reset),
		.a(a),
		.b(b),
		.result(result)
	);
	
	initial
		begin
			CLK = 1'b0;
			reset = 1'b1;
			a = 32'd32;
			b = 32'd9;
			
			#5
			reset = 1'b0;
			
			#100
			$display("%d mod %d = %d", a, b, result);
			reset = 1'b1;
			#10
			
			
			#5
			reset = 1'b0;
		end
		
	always
		begin
			#1
			CLK = ~CLK;
		end

endmodule