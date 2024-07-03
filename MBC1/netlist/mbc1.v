module mbc1 (  D2, D1, D3, D4, D0, n_WR, n_CS, A15, A14, A13, RA14, RA15, RA16, RA17, RA18, n_RESET, RAM_CS, n_RAM_CS, AA14, AA13);

	inout wire D2;
	inout wire D1;
	inout wire D3;
	inout wire D4;
	inout wire D0;
	input wire n_WR;
	input wire n_CS;
	input wire A15;
	input wire A14;
	input wire A13;
	output wire RA14;
	output wire RA15;
	output wire RA16;
	output wire RA17;
	output wire RA18;
	input wire n_RESET;
	output wire RAM_CS;
	output wire n_RAM_CS;
	output wire AA14;
	output wire AA13;

	// Wires

	wire w1;
	wire w2;
	wire w3;
	wire w4;
	wire w5;
	wire w6;
	wire w7;
	wire w8;
	wire w9;
	wire w10;
	wire w11;
	wire w12;
	wire w13;
	wire w14;
	wire w15;
	wire w16;
	wire w17;
	wire w18;
	wire w19;
	wire w20;
	wire w21;
	wire w22;
	wire w23;
	wire w24;
	wire w25;
	wire w26;
	wire w27;
	wire w28;
	wire w29;
	wire w30;
	wire w31;
	wire w32;
	wire w33;
	wire w34;
	wire w35;
	wire w36;
	wire w37;
	wire w38;
	wire w39;
	wire w40;
	wire w41;
	wire w42;
	wire w43;
	wire w44;
	wire w45;
	wire w46;
	wire w47;
	wire w48;
	wire w49;
	wire w50;
	wire w51;
	wire w52;
	wire w53;
	wire w54;
	wire w55;
	wire w56;
	wire w57;
	wire w58;
	wire w59;
	wire w60;
	wire w61;
	wire w62;
	wire w63;
	wire w64;
	wire w65;
	wire w66;
	wire w67;
	wire w68;
	wire w69;
	wire w70;
	wire w71;
	wire w72;
	wire w73;
	wire w74;
	wire w75;
	wire w76;

	assign D2 = w57;
	assign D1 = w58;
	assign D3 = w59;
	assign D4 = w60;
	assign D0 = w61;
	assign w62 = n_WR;
	assign w63 = n_CS;
	assign w64 = A15;
	assign w65 = A14;
	assign w66 = A13;
	assign RA14 = w67;
	assign RA15 = w68;
	assign RA16 = w69;
	assign RA17 = w70;
	assign RA18 = w71;
	assign w72 = n_RESET;
	assign RAM_CS = w73;
	assign n_RAM_CS = w74;
	assign AA14 = w75;
	assign AA13 = w76;

	// Instances

	mbc1_not g2 (.a(w44), .x(w40) );
	mbc1_not g5 (.a(w43), .x(w41) );
	mbc1_not g10 (.a(w44), .x(w47) );
	mbc1_not g22 (.a(w18), .x(w36) );
	mbc1_not g38 (.a(w31), .x(w6) );
	mbc1_not g37 (.a(w30), .x(w7) );
	mbc1_and4 g39 (.x(w34), .a(w6), .b(w33), .c(w7), .d(w32) );
	mbc1_not3 g40 (.a(w53), .x(w12) );
	mbc1_dff g23 (.d(w13), .cck(w35), .ck(w46), .q(w28) );
	mbc1_dff g24 (.d(w16), .cck(w35), .ck(w46), .q(w29) );
	mbc1_dffr g26 (.d(w15), .nres(w5), .cck(w26), .ck(w27), .q(w30) );
	mbc1_dffnq g19 (.d(w15), .cck(w35), .ck(w46), .nq(w50) );
	mbc1_dff g16 (.d(w14), .cck(w35), .ck(w46), .q(w48) );
	mbc1_buf2 g25 (.a(w52), .x(w35) );
	mbc1_or g1 (.a(w44), .b(w45), .x(w9) );
	mbc1_not2 g17 (.a(w51), .x(w52) );
	mbc1_not2 g18 (.a(w52), .x(w46) );
	mbc1_not2 g28 (.a(w25), .x(w27) );
	mbc1_buf2 g29 (.a(w25), .x(w26) );
	mbc1_not2 g8 (.a(w24), .x(w25) );
	mbc1_not g43 (.a(w3), .x(w4) );
	mbc1_and g42 (.a(w21), .b(w38), .x(w5) );
	mbc1_and g41 (.a(w5), .b(w37), .x(w3) );
	mbc1_and g34 (.a(w11), .b(w9), .x(w10) );
	mbc1_and g35 (.a(w8), .b(w9), .x(w2) );
	mbc1_and g14 (.a(w28), .b(w44), .x(w56) );
	mbc1_and g13 (.a(w29), .b(w44), .x(w22) );
	mbc1_and g12 (.a(w48), .b(w44), .x(w20) );
	mbc1_and g9 (.a(w50), .b(w44), .x(w19) );
	mbc1_oan g11 (.a0(w49), .a1(w55), .b(w44), .x(w23) );
	mbc1_or4 g3 (.x(w39), .a(w40), .b(w41), .c(w42), .d(w1) );
	mbc1_or4 g4 (.x(w54), .a(w40), .b(w42), .c(w1), .d(w43) );
	mbc1_or4 g6 (.x(w51), .a(w44), .b(w41), .c(w1), .d(w42) );
	mbc1_or4 g7 (.x(w24), .a(w44), .b(w43), .c(w42), .d(w1) );
	mbc1_dffnq_clk g15 (.clk(w39), .q(w45), .d(w17) );
	mbc1_dffnq_clk g30 (.q(w11), .d(w17), .clk(w54) );
	mbc1_dffr g31 (.ck(w27), .q(w32), .nres(w5), .d(w14), .cck(w26) );
	mbc1_dffr g32 (.ck(w27), .q(w31), .nres(w5), .d(w17), .cck(w26) );
	mbc1_dffr g33 (.q(w33), .ck(w27), .nres(w5), .d(w16), .cck(w26) );
	mbc1_dffnq_clk g36 (.d(w16), .q(w8), .clk(w54) );
	mbc1_nor4 g20 (.c(w50), .x(w49), .a(w48), .d(w29), .b(w28) );
	mbc1_and3 g27 (.a(w34), .b(w36), .c(w47), .x(w37) );
	mbc1_dff g21 (.d(w17), .cck(w35), .ck(w46), .q(w55) );
	mbc1_pad_in_pullup io18 (.a(w57), .x(w15) );
	mbc1_pad_in_pullup io19 (.a(w58), .x(w16) );
	mbc1_pad_in_pullup io17 (.a(w59), .x(w14) );
	mbc1_pad_in_pullup io16 (.a(w60), .x(w13) );
	mbc1_pad_in_pullup io20 (.a(w61), .x(w17) );
	mbc1_pad_in_pullup io21 (.x(w18), .a(w63) );
	mbc1_pad_in_pullup io22 (.a(w62), .x(w1) );
	mbc1_pad_in_pullup io1 (.a(w64), .x(w42) );
	mbc1_pad_in_pullup io2 (.a(w65), .x(w44) );
	mbc1_pad_in_pullup io3 (.a(w66), .x(w43) );
	mbc1_pad_out_tris io4 (.x(w67), .a(w23), .n_ena(w12) );
	mbc1_pad_out_tris io5 (.x(w68), .a(w22), .n_ena(w12) );
	mbc1_pad_out_tris io6 (.x(w69), .a(w19), .n_ena(w12) );
	mbc1_pad_out_tris io7 (.x(w70), .a(w20), .n_ena(w12) );
	mbc1_pad_out_tris io8 (.x(w71), .a(w56), .n_ena(w12) );
	mbc1_pad_in_pullup io9 (.x(w38) );
	mbc1_pad_in_pullup io10 (.a(w72), .x(w21) );
	mbc1_pad_out_tris io11 (.x(w73), .a(w3), .n_ena(w12) );
	mbc1_pad_out_tris io12 (.n_ena(w12), .a(w4), .x(w74) );
	mbc1_pad_out_tris io13 (.a(w2), .n_ena(w12), .x(w75) );
	mbc1_pad_in_pullup io14 (.x(w53) );
	mbc1_pad_out_tris io15 (.a(w10), .n_ena(w12), .x(w76) );
endmodule // mbc1

// Module Definitions [It is possible to wrap here on your primitives]

module mbc1_not (  a, x);

	input wire a;
	output wire x;

endmodule // mbc1_not

module mbc1_and4 (  x, a, b, c, d);

	output wire x;
	input wire a;
	input wire b;
	input wire c;
	input wire d;

endmodule // mbc1_and4

module mbc1_not3 (  a, x);

	input wire a;
	output wire x;

endmodule // mbc1_not3

module mbc1_dff (  d, cck, ck, q);

	input wire d;
	input wire cck;
	input wire ck;
	output wire q;

endmodule // mbc1_dff

module mbc1_dffr (  d, nres, cck, ck, q);

	input wire d;
	input wire nres;
	input wire cck;
	input wire ck;
	output wire q;

endmodule // mbc1_dffr

module mbc1_dffnq (  d, cck, ck, nq, q);

	input wire d;
	input wire cck;
	input wire ck;
	output wire nq;
	output wire q;

endmodule // mbc1_dffnq

module mbc1_buf2 (  a, x);

	input wire a;
	output wire x;

endmodule // mbc1_buf2

module mbc1_or (  a, b, x);

	input wire a;
	input wire b;
	output wire x;

endmodule // mbc1_or

module mbc1_not2 (  a, x);

	input wire a;
	output wire x;

endmodule // mbc1_not2

module mbc1_and (  a, b, x);

	input wire a;
	input wire b;
	output wire x;

endmodule // mbc1_and

module mbc1_oan (  a0, a1, b, x);

	input wire a0;
	input wire a1;
	input wire b;
	output wire x;

endmodule // mbc1_oan

module mbc1_or4 (  x, a, b, c, d);

	output wire x;
	input wire a;
	input wire b;
	input wire c;
	input wire d;

endmodule // mbc1_or4

module mbc1_dffnq_clk (  clk, q, nq, d);

	input wire clk;
	output wire q;
	output wire nq;
	input wire d;

endmodule // mbc1_dffnq_clk

module mbc1_nor4 (  c, x, a, d, b);

	input wire c;
	output wire x;
	input wire a;
	input wire d;
	input wire b;

endmodule // mbc1_nor4

module mbc1_and3 (  a, b, c, x);

	input wire a;
	input wire b;
	input wire c;
	output wire x;

endmodule // mbc1_and3

module mbc1_pad_in_pullup (  a, x);

	inout wire a;
	output wire x;

endmodule // mbc1_pad_in_pullup

module mbc1_pad_out_tris (  x, a, n_ena);

	output wire x;
	input wire a;
	input wire n_ena;

endmodule // mbc1_pad_out_tris



// WARNING: wire not driving anything w62
// WARNING: wire not driving anything w63
// WARNING: wire not driving anything w64
// WARNING: wire not driving anything w65
// WARNING: wire not driving anything w66
// WARNING: wire not driving anything w72
// WARNING: Cell mbc1_dffnq:g19 port q not connected.
// WARNING: Cell mbc1_dffnq_clk:g15 port nq not connected.
// WARNING: Cell mbc1_dffnq_clk:g30 port nq not connected.
// WARNING: Cell mbc1_dffnq_clk:g36 port nq not connected.
// WARNING: Cell mbc1_pad_in_pullup:io9 port a not connected.
// WARNING: Cell mbc1_pad_in_pullup:io14 port a not connected.
