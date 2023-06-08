
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

module Bogus_HostIF (nROMSEL, PPUA, CPU_D0, CPU_D7, CPU_A13, CPU_A14, CPU_RnW);

	output nROMSEL;
	output [2:0] PPUA;
	output CPU_D0;
	output CPU_D7;
	output CPU_A13;
	output CPU_A14;
	output CPU_RnW;

	assign nROMSEL = 1'b0;
	assign PPUA = 3'b0;
	assign CPU_D0 = 1'b0;
	assign CPU_D7 = 1'b0;
	assign CPU_A13 = 1'b0;
	assign CPU_A14 = 1'b0;
	assign CPU_RnW = 1'b1;

endmodule // Bogus_HostIF
