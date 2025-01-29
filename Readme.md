# NES/Famicom/Famiclones Mappers Research

- https://drive.google.com/drive/folders/1OPsf35CCF5uWQVp9imoV0mNcNpwR9icr?usp=sharing

- https://forums.nesdev.org/viewtopic.php?t=23566

## Terminology

To avoid confusion, the following terminology is used in this repository:
- CPU Address Space: address space available to the CPU (A0-A15), hereafter the definition "CPU memory" is used to refer to addressing
- PPU Address Space: the address space available to the PPU (PA0-13), hereafter "PPU memory" is used to refer to addressing
- RAM: CPU memory on the NES/Famicom motherboard
- VRAM: PPU memory on the NES/Famicom motherboard (what nesdev calls "CIRAM", but we do not use this term)
- CHR Memory (Character Memory): PPU memory on the cartridge board used as CHR-ROM or CHR-RAM
- PRG Memory (Program Memory): CPU memory on the cartridge board, used to store the program
- WRAM (Work RAM): additional CPU memory on the cartridge, usually supplemented by a battery, used to store game states (saves)
