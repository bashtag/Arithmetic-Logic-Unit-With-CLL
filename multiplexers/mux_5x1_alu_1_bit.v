module mux_5x1_alu_1_bit(
	output mux_result,
	input [4:0] results,
	input [2:0] ALUop
);
	wire is_and_or_or,
		is_xor_or_nor;
		
	wire [4:0] selects;
		
	and and0(is_and_or_or, !ALUop[2], !ALUop[1]);
	and and1(is_xor_or_nor, !ALUop[2], ALUop[1]);
	
	// is and
	and and2(selects[0], is_and_or_or, !ALUop[0], results[0]);

	// is or
	and and3(selects[1], is_and_or_or, ALUop[0], results[1]);
	
	// is xor
	and and4(selects[2], is_xor_or_nor, !ALUop[0], results[2]);
	
	// is nor
	and and5(selects[3], is_xor_or_nor, ALUop[0], results[3]);
	
	// is add
	and and6(selects[4], ALUop[2], results[4]);
	
	or or0(mux_result,
		selects[0],
		selects[1],
		selects[2],
		selects[3],
		selects[4]
		);

endmodule