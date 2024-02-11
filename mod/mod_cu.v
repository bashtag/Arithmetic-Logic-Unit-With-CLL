module mod_cu(
	input CLK,
	input reset,
	input less_than,
	output reg select,
	output reg write_enable,
	output reg result_enable
);

	reg [1:0] curr_state, next_state;

	localparam 	BEGIN	= 2'b00,
					SUB	= 2'b01,
					RES	= 2'b10,
					END	= 2'b11;
					
	// state registers
	always @(negedge CLK)
		begin
			if (reset)
				curr_state <= BEGIN;
			else
				curr_state <= next_state;
		end
		
	// next state
	always @(*)
		begin
			case (curr_state)
			
				BEGIN:
					begin
						next_state = SUB;
					end
				SUB:
					begin
						if (less_than)
							next_state = RES;
						else
							next_state = SUB;
					end
				RES:
					begin
						next_state = END;
					end
				END:
					begin
					end
			endcase
		end
		
	// output logic
	always @(*)
		begin
			select = 1'b0;
			write_enable = 1'b0;
			result_enable = 1'b0;
			case (curr_state)
				BEGIN:
					begin
						write_enable = 1'b1;
						select = 1'b0;
						result_enable = 1'b0;
					end
				SUB:
					begin
							write_enable = 1'b1;
							select = 1'b1;
							result_enable = 1'b0;
					end
				RES:
					begin
						write_enable = 1'b0;
						select = 1'b0;
						result_enable = 1'b1;
					end
				END:
					begin
					end
			endcase
		end

endmodule