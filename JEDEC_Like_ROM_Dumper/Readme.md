# Dumper of JEDEC roms using an Arduino

If you have nothing at all except an Arduino and a bread board, you can use this set-up:

![IMG_9821.jpg](IMG_9821.jpg)

VPP and #PGM should not be touched, let them hang around.

You have to take into account that sometimes roms are not exactly JEDEC:

![jedec-nonjedec.jpg](jedec-nonjedec.jpg)

https://www.jammarcade.net/1mbit-eprom-confusion-jedec-vs-non-jedec/

Also sometimes pin30 (NC) is A17:

![27C020.png](27C020.png)

The script is included, the dump is dumped on the com port, you can use the putty:

![putty.jpg](putty.jpg)

You can figure out the dump format on your own.

You can load the dump for checking in PPUPlayer:

![CHR.png](CHR.png)

TODO: Interleaved dump of 1 bit of data bus followed by deinterleaving.
