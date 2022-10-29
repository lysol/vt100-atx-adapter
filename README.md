VT100 ATX Adapter
-----------------

Like others with DEC VT10X terminals, the power supply board in mine
wasn't working. I've started off with bbenchoff's (here)[https://github.com/bbenchoff/VT100Adapter],
but had to modify it to make it work with my VT105, which is essentially
a stock VT100 with Advanced Video and Waveform Graphics boards.

This version corrects the 12V/GND pin placement on the edge
connector (12V GND 12V GND, rather than 12V GND GND GND),
and uses a soon-to-be obsolete DC-DC converter
for converting +5V to negative voltages, specifically -24V,
which is in tolerance for the NVRAM for the VT10X terminals,
which is absolutely required for the self-check to even complete
on startup. Turns out weird negative supplies are not all
that common these days.

I've also corrected the edge trace pitch, as bbenchoff's,
while still functional, is slightly off and some of the pins
are close to the edge of the traces.

You could still use this board with a linear supply setup
if you can't source the NMT0572SC; you'll need to supply
your own step-down transformer and rectifier, but those
sorts of circuits are extremely simple and widely available
on the internet, and bbenchoff's adapter is a good reference
for such a design. The current draw of a VT100's -23V rail
is specified as 10mA, so you have a lot of rectifiers that
would work, not necessarily the one in the BOM for the other
adapter.

For now the NMT0572SC seems to be widely available, and a
convenient option.

For silly reasons I have a large rectangle on both F.MASK
and B.MASK, making it a solder mask-less board. Delete them
in KiCAD if you'd like a reasonable looking solder mask,
as I designed it with a normal solder mask to begin with.

