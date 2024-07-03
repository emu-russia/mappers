# Bonding Pads & I/O Buffers

## MBC1 Letterless

![pads](imgstore/pads.jpg)

- The /ROM_CS and /RD pads are missing (they are also not routed on the donor cartridge)
- 2 unbonded pads present. One of them could be used to control /RESET. The second is used to generate a constant `#ena` signal for the output terminals.
- The input pads appear to contain a built-in pullup, because otherwise they would not work for D0-D4 inputs when the bus is disabled (HighZ) and for unbonded pads
