module alu_1_bit(
	input A, B, C;
	input [3:0] ALUop;
	output Result, Propagate, Generate;
);

'define AND 3'b000
'define OR 3'b001
'define XOR 3'b010
'define NOR 3'b011
'define LST 3'b100
'define ADD 3'b101
'define SUB 3'b110
'define MOD 3'b111

// ALU opcodes
always @(*)
	begin
	case (ALUop)
	AND:	begin
			assign Result = A & B;
			end
	OR:	begin
			assign Result = A | B;
			end
	XOR:	begin
			assign Result = 