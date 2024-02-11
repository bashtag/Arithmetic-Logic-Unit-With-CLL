module mux_3x1_results(
	output [31:0] out_result,
	input slt,
	input [31:0] cla_result,
	input [31:0] mod_result,
	input [2:0] ALUop
);
	wire is_slt;
	wire [31:0] select [1:0];
	wire [2:0] first_bit_select;
	
	// is operation set less than
	and and0(is_slt, ALUop[2], !ALUop[1], !ALUop[0]);
	and and1(is_mod, ALUop[2], ALUop[1], ALUop[0]);

	// bits
	
	and and2(first_bit_select[0], is_slt, slt);
	and and3(first_bit_select[1], !is_slt, is_mod, mod_result[0]);
	and and4(first_bit_select[2], !is_slt, !is_mod, cla_result[0]);
	or or0(out_result[0], first_bit_select[0], first_bit_select[1], first_bit_select[2]);

	and and5(select[0][1], !is_slt, is_mod, mod_result[1]);
	and and6(select[1][1], !is_slt, !is_mod, cla_result[1]);
	or or1(out_result[1], select[0][1], select[1][1]);

	and and7(select[0][2], !is_slt, is_mod, mod_result[2]);
	and and8(select[1][2], !is_slt, !is_mod, cla_result[2]);
	or or2(out_result[2], select[0][2], select[1][2]);

	and and9(select[0][3], !is_slt, is_mod, mod_result[3]);
	and and10(select[1][3], !is_slt, !is_mod, cla_result[3]);
	or or3(out_result[3], select[0][3], select[1][3]);

	and and11(select[0][4], !is_slt, is_mod, mod_result[4]);
	and and12(select[1][4], !is_slt, !is_mod, cla_result[4]);
	or or4(out_result[4], select[0][4], select[1][4]);

	and and13(select[0][5], !is_slt, is_mod, mod_result[5]);
	and and14(select[1][5], !is_slt, !is_mod, cla_result[5]);
	or or5(out_result[5], select[0][5], select[1][5]);

	and and15(select[0][6], !is_slt, is_mod, mod_result[6]);
	and and16(select[1][6], !is_slt, !is_mod, cla_result[6]);
	or or6(out_result[6], select[0][6], select[1][6]);

	and and17(select[0][7], !is_slt, is_mod, mod_result[7]);
	and and18(select[1][7], !is_slt, !is_mod, cla_result[7]);
	or or7(out_result[7], select[0][7], select[1][7]);

	and and19(select[0][8], !is_slt, is_mod, mod_result[8]);
	and and20(select[1][8], !is_slt, !is_mod, cla_result[8]);
	or or8(out_result[8], select[0][8], select[1][8]);

	and and21(select[0][9], !is_slt, is_mod, mod_result[9]);
	and and22(select[1][9], !is_slt, !is_mod, cla_result[9]);
	or or9(out_result[9], select[0][9], select[1][9]);

	and and23(select[0][10], !is_slt, is_mod, mod_result[10]);
	and and24(select[1][10], !is_slt, !is_mod, cla_result[10]);
	or or10(out_result[10], select[0][10], select[1][10]);

	and and25(select[0][11], !is_slt, is_mod, mod_result[11]);
	and and26(select[1][11], !is_slt, !is_mod, cla_result[11]);
	or or11(out_result[11], select[0][11], select[1][11]);

	and and27(select[0][12], !is_slt, is_mod, mod_result[12]);
	and and28(select[1][12], !is_slt, !is_mod, cla_result[12]);
	or or12(out_result[12], select[0][12], select[1][12]);

	and and29(select[0][13], !is_slt, is_mod, mod_result[13]);
	and and30(select[1][13], !is_slt, !is_mod, cla_result[13]);
	or or13(out_result[13], select[0][13], select[1][13]);

	and and31(select[0][14], !is_slt, is_mod, mod_result[14]);
	and and32(select[1][14], !is_slt, !is_mod, cla_result[14]);
	or or14(out_result[14], select[0][14], select[1][14]);

	and and33(select[0][15], !is_slt, is_mod, mod_result[15]);
	and and34(select[1][15], !is_slt, !is_mod, cla_result[15]);
	or or15(out_result[15], select[0][15], select[1][15]);

	and and35(select[0][16], !is_slt, is_mod, mod_result[16]);
	and and36(select[1][16], !is_slt, !is_mod, cla_result[16]);
	or or16(out_result[16], select[0][16], select[1][16]);

	and and37(select[0][17], !is_slt, is_mod, mod_result[17]);
	and and38(select[1][17], !is_slt, !is_mod, cla_result[17]);
	or or17(out_result[17], select[0][17], select[1][17]);

	and and39(select[0][18], !is_slt, is_mod, mod_result[18]);
	and and40(select[1][18], !is_slt, !is_mod, cla_result[18]);
	or or18(out_result[18], select[0][18], select[1][18]);

	and and41(select[0][19], !is_slt, is_mod, mod_result[19]);
	and and42(select[1][19], !is_slt, !is_mod, cla_result[19]);
	or or19(out_result[19], select[0][19], select[1][19]);

	and and43(select[0][20], !is_slt, is_mod, mod_result[20]);
	and and44(select[1][20], !is_slt, !is_mod, cla_result[20]);
	or or20(out_result[20], select[0][20], select[1][20]);

	and and45(select[0][21], !is_slt, is_mod, mod_result[21]);
	and and46(select[1][21], !is_slt, !is_mod, cla_result[21]);
	or or21(out_result[21], select[0][21], select[1][21]);

	and and47(select[0][22], !is_slt, is_mod, mod_result[22]);
	and and48(select[1][22], !is_slt, !is_mod, cla_result[22]);
	or or22(out_result[22], select[0][22], select[1][22]);

	and and49(select[0][23], !is_slt, is_mod, mod_result[23]);
	and and50(select[1][23], !is_slt, !is_mod, cla_result[23]);
	or or23(out_result[23], select[0][23], select[1][23]);

	and and51(select[0][24], !is_slt, is_mod, mod_result[24]);
	and and52(select[1][24], !is_slt, !is_mod, cla_result[24]);
	or or24(out_result[24], select[0][24], select[1][24]);

	and and53(select[0][25], !is_slt, is_mod, mod_result[25]);
	and and54(select[1][25], !is_slt, !is_mod, cla_result[25]);
	or or25(out_result[25], select[0][25], select[1][25]);

	and and55(select[0][26], !is_slt, is_mod, mod_result[26]);
	and and56(select[1][26], !is_slt, !is_mod, cla_result[26]);
	or or26(out_result[26], select[0][26], select[1][26]);

	and and57(select[0][27], !is_slt, is_mod, mod_result[27]);
	and and58(select[1][27], !is_slt, !is_mod, cla_result[27]);
	or or27(out_result[27], select[0][27], select[1][27]);

	and and59(select[0][28], !is_slt, is_mod, mod_result[28]);
	and and60(select[1][28], !is_slt, !is_mod, cla_result[28]);
	or or28(out_result[28], select[0][28], select[1][28]);

	and and61(select[0][29], !is_slt, is_mod, mod_result[29]);
	and and62(select[1][29], !is_slt, !is_mod, cla_result[29]);
	or or29(out_result[29], select[0][29], select[1][29]);

	and and63(select[0][30], !is_slt, is_mod, mod_result[30]);
	and and64(select[1][30], !is_slt, !is_mod, cla_result[30]);
	or or30(out_result[30], select[0][30], select[1][30]);

	and and65(select[0][31], !is_slt, is_mod, mod_result[31]);
	and and66(select[1][31], !is_slt, !is_mod, cla_result[31]);
	or or31(out_result[31], select[0][31], select[1][31]);

endmodule