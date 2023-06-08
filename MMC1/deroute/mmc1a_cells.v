// Can be used instead of the stubs that were automatically added by the Deroute utility

// Module Definitions [It is possible to wrap here on your primitives]

`define DFF_INIT_VAL 1'b0
`define LATCH_INIT_VAL 1'b0

module mmc1a_not (  a, x);

	input wire a;
	output wire x;

	assign x = ~a;

endmodule // mmc1a_not

module mmc1a_and (  a, b, x);

	input wire a;
	input wire b;
	output wire x;

	and (x, a, b);

endmodule // mmc1a_and

module mmc1a_or (  a, b, x);

	input wire a;
	input wire b;
	output wire x;

	or (x, a, b);

endmodule // mmc1a_or

module mmc1a_not2 (  a, x);

	input wire a;
	output wire x;

	assign x = ~a;

endmodule // mmc1a_not2

module mmc1a_buf2 (  a, x);

	input wire a;
	output wire x;

	assign x = a;

endmodule // mmc1a_buf2

module mmc1a_buf (  a, x);

	input wire a;
	output wire x;

	assign x = a;

endmodule // mmc1a_buf

module mmc1a_dff (  d, cck, ck, q);

	input wire d;
	input wire cck;
	input wire ck;
	output wire q;

	reg val;
	initial val = `DFF_INIT_VAL;

	always @(posedge ck) begin
		val = d;
	end

	assign q = val;	

endmodule // mmc1a_dff

module mmc1a_nand (  a, b, x);

	input wire a;
	input wire b;
	output wire x;

	nand (x, a, b);

endmodule // mmc1a_nand

module mmc1a_nor (  a, b, x);

	input wire a;
	input wire b;
	output wire x;

	nor (x, a, b);

endmodule // mmc1a_nor

module mmc1a_3or (  a, b, c, x);

	input wire a;
	input wire b;
	input wire c;
	output wire x;

	or (x, a, b, c);

endmodule // mmc1a_3or

module mmc1a_aon (  a0, a1, b, x);

	input wire a0;
	input wire a1;
	input wire b;
	output wire x;

	assign x = (a0&a1) | b;

endmodule // mmc1a_aon

module mmc1a_4and (  a, b, c, d, x);

	input wire a;
	input wire b;
	input wire c;
	input wire d;
	output wire x;

	and (x, a, b, c, d);

endmodule // mmc1a_4and

module mmc1a_dffr (  nres, d, cck, ck, q);

	input wire nres;
	input wire d;
	input wire cck;
	input wire ck;
	output wire q;

	reg val;
	initial val = `DFF_INIT_VAL;

	always @(posedge ck) begin
		if (nres == 1'b0)
			val = 1'b0;
		else
			val = d;
	end

	assign q = val;

endmodule // mmc1a_dffr

module mmc1a_dffrnq (  nres, d, cck, ck, q, nq);

	input wire nres;
	input wire d;
	input wire cck;
	input wire ck;
	output wire q;
	output wire nq;

	reg val;
	initial val = `DFF_INIT_VAL;

	always @(posedge ck) begin
		if (nres == 1'b0)
			val = 1'b0;
		else
			val = d;
	end

	assign q = val;
	assign nq = ~q;

endmodule // mmc1a_dffrnq

module mmc1a_3nand (  a, b, c, x);

	input wire a;
	input wire b;
	input wire c;
	output wire x;

	nand (x, a, b, c);

endmodule // mmc1a_3nand

module mmc1a_oan (  a0, a1, b, x);

	input wire a0;
	input wire a1;
	input wire b;
	output wire x;

	assign x = (a0|a1) & b;

endmodule // mmc1a_oan

module mmc1a_33aon (  a0, a1, a2, b0, b1, b2, x);

	input wire a0;
	input wire a1;
	input wire a2;
	input wire b0;
	input wire b1;
	input wire b2;
	output wire x;

	assign x = (a0&a1&a2) | (b0&b1&b2);

endmodule // mmc1a_33aon

module mmc1a_latch (  d, cck, ck, q);

	input wire d;
	input wire cck;
	input wire ck;
	output wire q;

	reg val;
	initial val = `LATCH_INIT_VAL;

	always @(*) begin
		if (cck)
			val = d;
	end

	assign q = val;

endmodule // mmc1a_latch

module mmc1a_22aon (  a0, a1, b0, b1, x);

	input wire a0;
	input wire a1;
	input wire b0;
	input wire b1;
	output wire x;

	assign x = (a0&a1) | (b0&b1);

endmodule // mmc1a_22aon

module mmc1a_222aon (  a0, a1, b0, b1, c0, c1, x);

	input wire a0;
	input wire a1;
	input wire b0;
	input wire b1;
	input wire c0;
	input wire c1;
	output wire x;

	assign x = (a0&a1) | (b0&b1) | (c0&c1);

endmodule // mmc1a_222aon

module mmc1a_dffre (  ena1, d, cck, ck, ena2, nres, q);

	input wire ena1;
	input wire d;
	input wire cck;
	input wire ck;
	input wire ena2; 		// not used.
	input wire nres;
	output wire q;

	reg val;
	initial val = `DFF_INIT_VAL;

	always @(posedge ck) begin
		if (ena1)
			val = d;		
		if (nres == 1'b0)
			val = 1'b0;
	end

	assign q = val;

endmodule // mmc1a_dffre

module mmc1a_not3 (  a, x);

	input wire a;
	output wire x;

	assign x = ~a;

endmodule // mmc1a_not3

module mmc1a_333aon (  a0, a1, a2, b0, b1, b2, c0, c1, c2, x);

	input wire a0;
	input wire a1;
	input wire a2;
	input wire b0;
	input wire b1;
	input wire b2;
	input wire c0;
	input wire c1;
	input wire c2;
	output wire x;

	assign x = (a0&a1&a2) | (b0&b1&b2) | (c0&c1&c2);

endmodule // mmc1a_333aon

module mmc1a_const (  q0, q1);

	output wire q0;
	output wire q1;

	assign q0 = 1'b0;
	assign q1 = 1'b1;

endmodule // mmc1a_const
