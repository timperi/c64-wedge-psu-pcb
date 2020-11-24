# c64-wedge-psu-pcb
A replacement PCB for the C64 Wedge PSU

This PCB is a direct replacement for the PCB in the "wedge" shaped C64 PSU.
The old linear regulator, which often fails causing overvoltage, is replaced with a modern switching regulator.
All components are through-hole.

The switching regulator used in this design is LM2576T-5.
It has a fixed output voltage of 5 volts, but I am slightly boosting the output, because the voltage drops under load, and there is also voltage drop in the cable.
So I have added a voltage divider to the feedback line of the LM2576 in order to boost the voltage to ~5.2V.
When this reaches the C64, it has dropped very close to 5 volts.
I have not used the LM2576-ADJ regulator, which is designed to be an adjustable output device.
The reason for this decision are:
-Keep this design simple
-I already had LM2576T-5 regulators
-I checked from the manufacturer that it is acceptable to boost the voltage by 0.2V using a voltage divider in the feedback line
