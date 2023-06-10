// Can be used instead of the stubs that were automatically added by the Deroute utility

// Module Definitions [It is possible to wrap here on your primitives]

`timescale 1ns/1ns

`define DFF_INIT_VAL 1'b0
`define LATCH_INIT_VAL 1'b0

`define BUF_DELAY #0 		// Delay for buffers (but not for buf2's)
`define DELAY #1 		// Delay for everyone else (including buf2's)

// Delays are necessary due to the fragile internal implementation of MMC1 and delays for M2.
// As they say: Shit In -> Shit Out.

module mmc1a_not (  a, x);

	input wire a;
	output wire x;

	not `DELAY (x, a);

endmodule // mmc1a_not

module mmc1a_and (  a, b, x);

	input wire a;
	input wire b;
	output wire x;

	and `DELAY (x, a, b);

endmodule // mmc1a_and

module mmc1a_or (  a, b, x);

	input wire a;
	input wire b;
	output wire x;

	or `DELAY (x, a, b);

endmodule // mmc1a_or

module mmc1a_not2 (  a, x);

	input wire a;
	output wire x;

	not `DELAY (x, a);

endmodule // mmc1a_not2

module mmc1a_buf2 (  a, x);

	input wire a;
	output wire x;

	buf `DELAY (x, a);

endmodule // mmc1a_buf2

module mmc1a_buf (  a, x);

	input wire a;
	output wire x;

	buf `BUF_DELAY (x, a);

endmodule // mmc1a_buf

module mmc1a_nand (  a, b, x);

	input wire a;
	input wire b;
	output wire x;

	nand `DELAY (x, a, b);

endmodule // mmc1a_nand

module mmc1a_nor (  a, b, x);

	input wire a;
	input wire b;
	output wire x;

	nor `DELAY (x, a, b);

endmodule // mmc1a_nor

module mmc1a_3or (  a, b, c, x);

	input wire a;
	input wire b;
	input wire c;
	output wire x;

	or `DELAY (x, a, b, c);

endmodule // mmc1a_3or

module mmc1a_aon (  a0, a1, b, x);

	input wire a0;
	input wire a1;
	input wire b;
	output wire x;

	assign `DELAY x = (a0&a1) | b;

endmodule // mmc1a_aon

module mmc1a_4and (  a, b, c, d, x);

	input wire a;
	input wire b;
	input wire c;
	input wire d;
	output wire x;

	and `DELAY (x, a, b, c, d);

endmodule // mmc1a_4and

module mmc1a_3nand (  a, b, c, x);

	input wire a;
	input wire b;
	input wire c;
	output wire x;

	nand `DELAY (x, a, b, c);

endmodule // mmc1a_3nand

module mmc1a_oan (  a0, a1, b, x);

	input wire a0;
	input wire a1;
	input wire b;
	output wire x;

	assign `DELAY x = (a0|a1) & b;

endmodule // mmc1a_oan

module mmc1a_33aon (  a0, a1, a2, b0, b1, b2, x);

	input wire a0;
	input wire a1;
	input wire a2;
	input wire b0;
	input wire b1;
	input wire b2;
	output wire x;

	assign `DELAY x = (a0&a1&a2) | (b0&b1&b2);

endmodule // mmc1a_33aon

module mmc1a_22aon (  a0, a1, b0, b1, x);

	input wire a0;
	input wire a1;
	input wire b0;
	input wire b1;
	output wire x;

	assign `DELAY x = (a0&a1) | (b0&b1);

endmodule // mmc1a_22aon

module mmc1a_222aon (  a0, a1, b0, b1, c0, c1, x);

	input wire a0;
	input wire a1;
	input wire b0;
	input wire b1;
	input wire c0;
	input wire c1;
	output wire x;

	assign `DELAY x = (a0&a1) | (b0&b1) | (c0&c1);

endmodule // mmc1a_222aon

module mmc1a_not3 (  a, x);

	input wire a;
	output wire x;

	not `DELAY (x, a);

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

	assign `DELAY x = (a0&a1&a2) | (b0&b1&b2) | (c0&c1&c2);

endmodule // mmc1a_333aon

module mmc1a_const (  q0, q1);

	output wire q0;
	output wire q1;

	assign q0 = 1'b0;
	assign q1 = 1'b1;

endmodule // mmc1a_const

module mmc1a_latch (  d, cck, ck, q);

	input wire d;
	input wire cck;
	input wire ck;
	output reg q;

	initial q = `LATCH_INIT_VAL;

	always @(*) begin
		if (ck)
			q <= d;
	end

endmodule // mmc1a_latch

module mmc1a_dff (  d, cck, ck, q);

	input wire d;
	input wire cck;
	input wire ck;
	output reg q;

	initial q = `DFF_INIT_VAL;

	always @(posedge ck) begin
		q <= d;
	end

endmodule // mmc1a_dff

module mmc1a_dffnq (  d, cck, ck, q, nq);

	input wire d;
	input wire cck;
	input wire ck;
	output reg q;
	output wire nq;

	initial q = `DFF_INIT_VAL;

	always @(posedge ck) begin
		q <= d;
	end

	assign nq = ~q;

endmodule // mmc1a_dffnq

module mmc1a_dffr (  nres, d, cck, ck, q);

	input wire nres;
	input wire d;
	input wire cck;
	input wire ck;
	output reg q;

	initial q = `DFF_INIT_VAL;

	always @(posedge ck or negedge nres) begin
		if (!nres)
			q <= 0;
		else
			q <= d;
	end

endmodule // mmc1a_dffr

module mmc1a_dffrnq (  nres, d, cck, ck, q, nq);

	input wire nres;
	input wire d;
	input wire cck;
	input wire ck;
	output reg q;
	output wire nq;

	initial q = `DFF_INIT_VAL;

	always @(posedge ck or negedge nres) begin
		if (!nres)
			q <= 0;
		else
			q <= d;
	end

	assign nq = ~q;

endmodule // mmc1a_dffrnq

module mmc1a_dffre (  ena1, d, cck, ck, ena2, nres, q);

	input wire ena1;
	input wire d;
	input wire cck;
	input wire ck;
	input wire ena2; 		// not used.
	input wire nres;
	output reg q;

	initial q = `DFF_INIT_VAL;

	always @(posedge ck or negedge nres) begin
		if (!nres)
			q <= 0;
		else if (ena1)
			q <= d;
	end

endmodule // mmc1a_dffre
