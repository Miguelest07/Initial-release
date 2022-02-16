module Mux_mod #(parameter MuxWide = 1)(
		input [MuxWide - 1: 0] i_a,
		input [MuxWide - 1: 0] i_b,
		input i_state,
		output [MuxWide - 1: 0]  o_x 
);

reg [MuxWide - 1: 0] r_x;

always@(i_a or i_b)
begin
	case(i_state)
		1'b0:
		begin
			r_x <= i_a; 
		end
		1'b1:
		begin
			r_x <= i_b;
		end
	endcase
end

assign o_x = r_x;

endmodule