module Mux_mod (
		input i_a,
		input i_b,
		input i_state,
		output o_x
);

reg r_x;

always@(i_a or i_b)
begin
	case(i_state)
		1'b0:
		begin
			r_x = i_a;
		end
		1'b1:
		begin
			r_x = i_b;
		end
	endcase
end

assign o_x = r_x;

endmodule