module mmc1a (  x5, x2, x4, x3, x7, x9, x8, x6, a8, a9, a0, a3, a7, a4, a5, x0, x1, x10, a2, a1, a6, x11);

	output wire x5;
	output wire x2;
	output wire x4;
	output wire x3;
	output wire x7;
	output wire x9;
	output wire x8;
	output wire x6;
	input wire a8;
	input wire a9;
	input wire a0;
	input wire a3;
	input wire a7;
	input wire a4;
	input wire a5;
	output wire x0;
	output wire x1;
	output wire x10;
	input wire a2;
	input wire a1;
	input wire a6;
	output wire x11;

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
	wire w77;
	wire w78;
	wire w79;
	wire w80;
	wire w81;
	wire w82;
	wire w83;
	wire w84;
	wire w85;
	wire w86;
	wire w87;
	wire w88;
	wire w89;
	wire w90;
	wire w91;
	wire w92;
	wire w93;
	wire w94;
	wire w95;
	wire w96;
	wire w97;
	wire w98;
	wire w99;
	wire w100;
	wire w101;
	wire w102;
	wire w103;
	wire w104;
	wire w105;
	wire w106;
	wire w107;
	wire w108;
	wire w109;
	wire w110;
	wire w111;
	wire w112;
	wire w113;
	wire w114;
	wire w115;
	wire w116;
	wire w117;
	wire w118;
	wire w119;
	wire w120;
	wire w121;
	wire w122;
	wire w123;
	wire w124;
	wire w125;
	wire w126;
	wire w127;
	wire w128;
	wire w129;
	wire w130;
	wire w131;
	wire w132;
	wire w133;
	wire w134;
	wire w135;
	wire w136;
	wire w137;
	wire w138;
	wire w139;
	wire w140;
	wire w141;
	wire w142;
	wire w143;
	wire w144;
	wire w145;
	wire w146;
	wire w147;
	wire w148;
	wire w149;
	wire w150;
	wire w151;
	wire w152;
	wire w153;
	wire w154;
	wire w155;
	wire w156;
	wire w157;
	wire w158;

	assign x5 = w15;
	assign x2 = w16;
	assign x4 = w6;
	assign x3 = w2;
	assign x7 = w19;
	assign x9 = w17;
	assign x8 = w18;
	assign x6 = w27;
	assign w61 = a8;
	assign w96 = a9;
	assign w123 = a0;
	assign w132 = a3;
	assign w47 = a7;
	assign w128 = a4;
	assign w118 = a5;
	assign x0 = w82;
	assign x1 = w109;
	assign x10 = w141;
	assign w111 = a2;
	assign w104 = a1;
	assign w148 = a6;
	assign x11 = w91;	

	// Instances

	mmc1a_not g1 (.a(w123), .x(w154) );
	mmc1a_and g2 (.a(w116), .b(w123), .x(w15) );
	mmc1a_or g3 (.a(w131), .b(w132), .x(w6) );
	mmc1a_not2 g4 (.a(w154), .x(w38) );
	mmc1a_buf2 g5 (.a(w154), .x(w39) );
	mmc1a_buf g6 (.a(w133), .x(w150) );
	mmc1a_buf g7 (.a(w150), .x(w151) );
	mmc1a_buf g8 (.a(w151), .x(w152) );
	mmc1a_buf g9 (.a(w152), .x(w153) );
	mmc1a_buf g10 (.a(w134), .x(w133) );
	mmc1a_and g11 (.a(w153), .b(w129), .x(w117) );
	mmc1a_buf g12 (.a(w124), .x(w134) );
	mmc1a_dff g13 (.d(w127), .cck(w38), .ck(w39), .q(w84) );
	mmc1a_nand g14 (.a(w40), .b(w125), .x(w149) );
	mmc1a_nand g15 (.a(w125), .b(1'b0), .x(w43) );
	mmc1a_buf g16 (.a(w132), .x(w126) );
	mmc1a_not g17 (.a(w147), .x(w125) );
	mmc1a_buf g18 (.a(w42), .x(w147) );
	mmc1a_nor g19 (.a(w43), .b(w37), .x(w45) );
	mmc1a_3or g20 (.a(w44), .b(w156), .c(w148), .x(w127) );
	mmc1a_not g21 (.a(w148), .x(w131) );
	mmc1a_not g22 (.a(w128), .x(w44) );
	mmc1a_buf g23 (.a(w130), .x(w124) );
	mmc1a_buf g24 (.a(w126), .x(w119) );
	mmc1a_nor g25 (.a(w148), .b(w156), .x(w48) );
	mmc1a_dff g26 (.d(w48), .cck(w38), .ck(w39), .q(w50) );
	mmc1a_buf g27 (.a(w119), .x(w120) );
	mmc1a_buf g28 (.a(w120), .x(w121) );
	mmc1a_buf g29 (.a(w121), .x(w156) );
	mmc1a_buf g30 (.a(w122), .x(w70) );
	mmc1a_buf g31 (.a(w55), .x(w130) );
	mmc1a_buf g32 (.a(w70), .x(w54) );
	mmc1a_buf g33 (.a(w54), .x(w129) );
	mmc1a_buf g34 (.a(w56), .x(w55) );
	mmc1a_buf g35 (.a(w60), .x(w56) );
	mmc1a_buf g36 (.a(w129), .x(w58) );
	mmc1a_buf g37 (.a(w59), .x(w60) );
	mmc1a_buf g38 (.a(w58), .x(w57) );
	mmc1a_buf g39 (.a(w69), .x(w59) );
	mmc1a_buf g40 (.a(w57), .x(w68) );
	mmc1a_buf g41 (.a(w67), .x(w69) );
	mmc1a_buf g42 (.a(w68), .x(w66) );
	mmc1a_buf g43 (.a(w65), .x(w67) );
	mmc1a_buf g44 (.a(w66), .x(w63) );
	mmc1a_buf g45 (.a(w64), .x(w65) );
	mmc1a_buf g46 (.a(w62), .x(w64) );
	mmc1a_buf g47 (.a(w63), .x(w62) );
	mmc1a_aon g48 (.a0(w108), .a1(w111), .b(w112), .x(w16) );
	mmc1a_4and g49 (.a(w132), .b(w111), .c(w104), .d(w117), .x(w116) );
	mmc1a_aon g50 (.a0(w110), .a1(w111), .b(w155), .x(w109) );
	mmc1a_buf g51 (.a(w38), .x(w85) );
	mmc1a_dffr g52 (.nres(w84), .d(w42), .cck(w39), .ck(w38), .q(w36) );
	mmc1a_dff g53 (.d(w111), .cck(w74), .ck(w39), .q(w37) );
	mmc1a_dff g54 (.d(w104), .cck(w74), .ck(w39), .q(w40) );
	mmc1a_nor g55 (.a(1'b0), .b(w149), .x(w106) );
	mmc1a_nor g56 (.a(w149), .b(w37), .x(w113) );
	mmc1a_nor g57 (.a(w43), .b(1'b0), .x(w24) );
	mmc1a_buf g58 (.a(w45), .x(w103) );
	mmc1a_buf g59 (.a(w135), .x(w122) );
	mmc1a_buf g60 (.a(w46), .x(w42) );
	mmc1a_not g61 (.a(w45), .x(w115) );
	mmc1a_dff g62 (.d(w118), .cck(w38), .ck(w39), .q(w49) );
	mmc1a_dffrnq g63 (.nres(w36), .d(w39), .cck(w74), .ck(w39), .q(w51), .nq(w39) );
	mmc1a_dffrnq g64 (.nres(w36), .d(w52), .cck(w51), .ck(w39), .q(w71), .nq(w52) );
	mmc1a_dffrnq g65 (.nres(w36), .d(w53), .cck(w71), .ck(w52), .q(w101), .nq(w53) );
	mmc1a_3nand g66 (.a(w51), .b(w52), .c(w101), .x(w46) );
	mmc1a_not g67 (.a(w99), .x(w100) );
	mmc1a_buf g68 (.a(w106), .x(w79) );
	mmc1a_not g69 (.a(w106), .x(w81) );
	mmc1a_aon g70 (.a0(w107), .a1(w77), .b(w80), .x(w112) );
	mmc1a_oan g71 (.a0(w80), .a1(w78), .b(w107), .x(w108) );
	mmc1a_aon g72 (.a0(w105), .a1(w77), .b(w80), .x(w155) );
	mmc1a_oan g73 (.a0(w80), .a1(w78), .b(w105), .x(w110) );
	mmc1a_33aon g74 (.a0(w81), .a1(w111), .a2(w75), .b0(w80), .b1(w77), .b2(w76), .x(w82) );
	mmc1a_3or g75 (.a(w76), .b(w78), .c(w80), .x(w81) );
	mmc1a_latch g76 (.d(w35), .cck(w115), .ck(w103), .q(w76) );
	mmc1a_latch g77 (.d(w72), .cck(w115), .ck(w103), .q(w105) );
	mmc1a_latch g78 (.d(w83), .cck(w115), .ck(w103), .q(w107) );
	mmc1a_latch g79 (.d(w72), .cck(w81), .ck(w79), .q(w93) );
	mmc1a_latch g80 (.d(w87), .cck(w81), .ck(w79), .q(w33) );
	mmc1a_dff g81 (.d(w49), .cck(w74), .ck(w39), .q(w87) );
	mmc1a_dff g82 (.d(w87), .cck(w74), .ck(w39), .q(w73) );
	mmc1a_latch g83 (.d(w73), .cck(w115), .ck(w103), .q(w88) );
	mmc1a_latch g84 (.d(w87), .cck(w115), .ck(w103), .q(w99) );
	mmc1a_22aon g85 (.a0(w78), .a1(w88), .b0(w80), .b1(w88), .x(w102) );
	mmc1a_33aon g86 (.a0(w100), .a1(w88), .a2(w89), .b0(w100), .b1(w80), .b2(w77), .x(w92) );
	mmc1a_nand g87 (.a(w95), .b(w50), .x(w94) );
	mmc1a_not g88 (.a(w93), .x(w97) );
	mmc1a_222aon g89 (.a0(w102), .a1(w100), .b0(w92), .b1(w111), .c0(w88), .c1(w99), .x(w2) );
	mmc1a_dffre g90 (.ena1(w84), .d(w83), .cck(w81), .ck(w79), .ena2(w84), .nres(w89), .q(w80) );
	mmc1a_dffre g91 (.ena1(w84), .d(w73), .cck(w81), .ck(w79), .ena2(w84), .nres(w89), .q(w77) );
	mmc1a_dff g92 (.d(w72), .cck(w74), .ck(w39), .q(w35) );
	mmc1a_latch g93 (.d(w73), .cck(w86), .ck(w136), .q(w137) );
	mmc1a_latch g94 (.d(w72), .cck(w86), .ck(w136), .q(w138) );
	mmc1a_latch g95 (.d(w35), .cck(w81), .ck(w79), .q(w142) );
	mmc1a_latch g96 (.d(w83), .cck(w86), .ck(w136), .q(w139) );
	mmc1a_latch g97 (.d(w87), .cck(w86), .ck(w136), .q(w140) );
	mmc1a_dff g98 (.d(w83), .cck(w74), .ck(w39), .q(w72) );
	mmc1a_dff g99 (.d(w73), .cck(w74), .ck(w39), .q(w83) );
	mmc1a_not g100 (.a(w77), .x(w78) );
	mmc1a_latch g101 (.d(w72), .cck(w143), .ck(w98), .q(w144) );
	mmc1a_latch g102 (.d(w87), .cck(w143), .ck(w98), .q(w146) );
	mmc1a_not3 g103 (.a(w145), .x(w74) );
	mmc1a_not g104 (.a(w142), .x(w90) );
	mmc1a_333aon g105 (.a0(w61), .a1(w142), .a2(w93), .b0(w90), .b1(w93), .b2(w96), .c0(w89), .c1(w142), .c2(w97), .x(w91) );
	mmc1a_buf g106 (.a(w3), .x(w7) );
	mmc1a_buf g107 (.a(w4), .x(w3) );
	mmc1a_buf g108 (.a(w5), .x(w4) );
	mmc1a_buf g109 (.a(w7), .x(w8) );
	mmc1a_buf g110 (.a(w9), .x(w5) );
	mmc1a_buf g111 (.a(w11), .x(w9) );
	mmc1a_buf g112 (.a(w8), .x(w13) );
	mmc1a_buf g113 (.a(w85), .x(w12) );
	mmc1a_buf g114 (.a(w12), .x(w10) );
	mmc1a_buf g115 (.a(w25), .x(w11) );
	mmc1a_buf g116 (.a(w10), .x(w26) );
	mmc1a_buf g117 (.a(w13), .x(w135) );
	mmc1a_buf g118 (.a(w113), .x(w136) );
	mmc1a_not g119 (.a(w113), .x(w86) );
	mmc1a_const g120 (.q1(w89) );
	mmc1a_latch g121 (.d(w35), .cck(w86), .ck(w136), .q(w14) );
	mmc1a_or g122 (.a(w14), .b(w31), .x(w32) );
	mmc1a_or g123 (.a(w31), .b(w34), .x(w22) );
	mmc1a_33aon g124 (.a0(w89), .a1(w32), .a2(w47), .b0(w34), .b1(w33), .b2(w30), .x(w27) );
	mmc1a_not g125 (.a(w33), .x(w31) );
	mmc1a_not2 g126 (.a(w47), .x(w34) );
	mmc1a_and g127 (.a(w33), .b(w47), .x(w23) );
	mmc1a_latch g128 (.d(w35), .cck(w143), .ck(w98), .q(w30) );
	mmc1a_latch g129 (.d(w83), .cck(w143), .ck(w98), .q(w29) );
	mmc1a_latch g130 (.d(w73), .cck(w143), .ck(w98), .q(w28) );
	mmc1a_22aon g131 (.a0(w22), .a1(w29), .b0(w23), .b1(w139), .x(w18) );
	mmc1a_22aon g132 (.a0(w22), .a1(w28), .b0(w23), .b1(w137), .x(w17) );
	mmc1a_buf g133 (.a(w24), .x(w98) );
	mmc1a_not g134 (.a(w157), .x(w143) );
	mmc1a_22aon g135 (.a0(w22), .a1(w144), .b0(w138), .b1(w23), .x(w19) );
	mmc1a_22aon g136 (.a0(w22), .a1(w146), .b0(w23), .b1(w140), .x(w141) );
	mmc1a_not2 g137 (.a(w94), .x(w145) );
	mmc1a_not3 g138 (.a(w94), .x(w39) );
	mmc1a_not g139 (.a(w21), .x(w95) );
	mmc1a_buf g140 (.a(w26), .x(w21) );
	mmc1a_buf g141 (.a(w20), .x(w25) );
	mmc1a_buf g142 (.a(w21), .x(w20) );
endmodule // mmc1a

// Module Definitions [It is possible to wrap here on your primitives]

module mmc1a_not (  a, x);

	input wire a;
	output wire x;

endmodule // mmc1a_not

module mmc1a_and (  a, b, x);

	input wire a;
	input wire b;
	output wire x;

endmodule // mmc1a_and

module mmc1a_or (  a, b, x);

	input wire a;
	input wire b;
	output wire x;

endmodule // mmc1a_or

module mmc1a_not2 (  a, x);

	input wire a;
	output wire x;

endmodule // mmc1a_not2

module mmc1a_buf2 (  a, x);

	input wire a;
	output wire x;

endmodule // mmc1a_buf2

module mmc1a_buf (  a, x);

	input wire a;
	output wire x;

endmodule // mmc1a_buf

module mmc1a_dff (  d, cck, ck, q);

	input wire d;
	input wire cck;
	input wire ck;
	output wire q;

endmodule // mmc1a_dff

module mmc1a_nand (  a, b, x);

	input wire a;
	input wire b;
	output wire x;

endmodule // mmc1a_nand

module mmc1a_nor (  a, b, x);

	input wire a;
	input wire b;
	output wire x;

endmodule // mmc1a_nor

module mmc1a_3or (  a, b, c, x);

	input wire a;
	input wire b;
	input wire c;
	output wire x;

endmodule // mmc1a_3or

module mmc1a_aon (  a0, a1, b, x);

	input wire a0;
	input wire a1;
	input wire b;
	output wire x;

endmodule // mmc1a_aon

module mmc1a_4and (  a, b, c, d, x);

	input wire a;
	input wire b;
	input wire c;
	input wire d;
	output wire x;

endmodule // mmc1a_4and

module mmc1a_dffr (  nres, d, cck, ck, q);

	input wire nres;
	input wire d;
	input wire cck;
	input wire ck;
	output wire q;

endmodule // mmc1a_dffr

module mmc1a_dffrnq (  nres, d, cck, ck, q, nq);

	input wire nres;
	input wire d;
	input wire cck;
	input wire ck;
	output wire q;
	output wire nq;

endmodule // mmc1a_dffrnq

module mmc1a_3nand (  a, b, c, x);

	input wire a;
	input wire b;
	input wire c;
	output wire x;

endmodule // mmc1a_3nand

module mmc1a_oan (  a0, a1, b, x);

	input wire a0;
	input wire a1;
	input wire b;
	output wire x;

endmodule // mmc1a_oan

module mmc1a_33aon (  a0, a1, a2, b0, b1, b2, x);

	input wire a0;
	input wire a1;
	input wire a2;
	input wire b0;
	input wire b1;
	input wire b2;
	output wire x;

endmodule // mmc1a_33aon

module mmc1a_latch (  d, cck, ck, q);

	input wire d;
	input wire cck;
	input wire ck;
	output wire q;

endmodule // mmc1a_latch

module mmc1a_22aon (  a0, a1, b0, b1, x);

	input wire a0;
	input wire a1;
	input wire b0;
	input wire b1;
	output wire x;

endmodule // mmc1a_22aon

module mmc1a_222aon (  a0, a1, b0, b1, c0, c1, x);

	input wire a0;
	input wire a1;
	input wire b0;
	input wire b1;
	input wire c0;
	input wire c1;
	output wire x;

endmodule // mmc1a_222aon

module mmc1a_dffre (  ena1, d, cck, ck, ena2, nres, q);

	input wire ena1;
	input wire d;
	input wire cck;
	input wire ck;
	input wire ena2;
	input wire nres;
	output wire q;

endmodule // mmc1a_dffre

module mmc1a_not3 (  a, x);

	input wire a;
	output wire x;

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

endmodule // mmc1a_333aon

module mmc1a_const (  q0, q1);

	output wire q0;
	output wire q1;

endmodule // mmc1a_const

