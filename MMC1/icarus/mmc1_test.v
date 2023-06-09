
`timescale 1ns/1ns

module MMC1_Run ();

	reg CLK;
	always #1 CLK = ~CLK;

	// MMC1 -> Board

	wire CIRAM_A10; 		// To VRAM
	wire [4:0] CHR; 		// CHR high addr bits
	wire [3:0] PRG; 		// PRG high addr bits
	wire PRG_nCE; 			// 0: PRG enable
	wire SRAM_CE; 			// 1: SRAM enable

	// Host -> MMC1

	wire nROMSEL;
	wire [2:0] PPUA;
	wire CPU_D0;
	wire CPU_D7;
	wire CPU_A13;
	wire CPU_A14;
	wire CPU_RnW;

	mmc1a mmc (
		.M2(CLK),
		.nROMSEL,		
		.PRG_A14(PRG[0]),
		.PRG_A15(PRG[1]),
		.PRG_A16(PRG[2]),
		.PRG_A17(PRG[3]),
		.PPU_A10(PPUA[0]),
		.PPU_A11(PPUA[1]),
		.PPU_A12(PPUA[2]),
		.CHR_A12(CHR[0]),
		.CHR_A13(CHR[1]),
		.CHR_A14(CHR[2]),
		.CHR_A15(CHR[3]),
		.CHR_A16(CHR[4]),
		.PRG_nCE(PRG_nCE),
		.SRAM_CE(SRAM_CE),
		.CPU_D0(CPU_D0),
		.CPU_D7(CPU_D7),		
		.CPU_A13(CPU_A13),
		.CPU_A14(CPU_A14),
		.CPU_RnW(CPU_RnW),
		.CIRAM_A10(CIRAM_A10) );

	Bogus_HostIF host_if (
		.CLK(CLK),
		.nROMSEL(nROMSEL), 
		.PPUA(PPUA), 
		.CPU_D0(CPU_D0), 
		.CPU_D7(CPU_D7), 
		.CPU_A13(CPU_A13), 
		.CPU_A14(CPU_A14), 
		.CPU_RnW(CPU_RnW) );

	initial begin

		$dumpfile("mmc1_test.vcd");
		$dumpvars(0, MMC1_Run);

		CLK <= 1'b0;

		// Run the number of cycles

		repeat (256) @ (posedge CLK);
		$finish;
	end

endmodule // MMC1_Run

// We need someone to poke MMC1 I/F from the outside, pretending to be the CPU

module Bogus_HostIF (CLK, nROMSEL, PPUA, CPU_D0, CPU_D7, CPU_A13, CPU_A14, CPU_RnW);

	input CLK;
	output nROMSEL;
	output [2:0] PPUA;
	output CPU_D0;
	output CPU_D7;
	output CPU_A13;
	output CPU_A14;
	output CPU_RnW;

	reg [8:0] test_vector [0:32767];
	reg [15:0] addr_cnt;
	reg [8:0] test_word;
	integer i;

	initial begin
		for (i = 0; i < 32768; i = i + 1) test_vector[i] = 9'h0;
		$readmemb("mmc1_test_vector.mem", test_vector);
		test_word <= 0;
		addr_cnt <= 0;
	end	

	always @(negedge CLK) begin
		addr_cnt = addr_cnt + 1;
		test_word = test_vector[addr_cnt];
	end	

	assign nROMSEL = test_word[8];
	assign PPUA = test_word[7:5];
	assign CPU_D0 = test_word[4];
	assign CPU_D7 = test_word[3];
	assign CPU_A13 = test_word[2];
	assign CPU_A14 = test_word[1];
	assign CPU_RnW = test_word[0];

endmodule // Bogus_HostIF
