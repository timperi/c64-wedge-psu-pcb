# c64-wedge-psu-pcb
<img src="images/pcb-pics/2020-12-13-15.00.52.jpg" alt="PSU" width="25%" align="right">

A replacement PCB for the C64 Wedge PSU

This PCB is a direct replacement for the PCB in the "wedge" shaped C64 PSU.
The old linear regulator, which often fails causing overvoltage, is replaced with a modern switching regulator.
All components are through-hole.

The switching regulator used in this design is LM2576T-5.

It has a fixed output voltage of 5 volts, but I am slightly boosting the output, because the voltage drops under load, and there is also voltage drop in the cable.

So I have added a voltage divider to the feedback line of the LM2576 in order to boost the voltage to ~5.2V.

When this reaches the C64, it has dropped very close to 5 volts.

I have not used the LM2576-ADJ regulator, which is designed to be an adjustable output device. The reason for this decision are:
* Keep this design simple
* I already had LM2576T-5 regulators
* I asked in the TI technical support forum if it is acceptable to boost the voltage by 0.2V using a voltage divider in the feedback line, and they answered yes it's okay.

<img src="images/pcb-pics/2020-12-14-14.37.jpg" alt="PSU" width="25%" align="right">
<img src="images/pcb-pics/2020-12-14-14.36.jpg" alt="PSU" width="25%" align="right">

You can skip the voltage boosting by leaving out R1 & R3, and shorting the R1 pads with a wire.

There is also an optional place for a power indicator led (LED1), and a resistor (R2) for it. They can be skipped by just leaving them out.

I have included a second stage output ripple filter, which greatly reduces ripple, but if you choose so, it can also be left out by omitting L2 and C3, and shorting the pads of L2.
All of the components I've used are rated for at least 3A, so please use at least 0.5mm wire to short the L2 pads in order to stay within specs. I am not sure about the wire thickness, but 0.5mm is definitely more than enough.

I measured the ripple voltage with this design, using a regular C64 as a load.
The average ripple voltage for this setup was around 10mV peak to peak.
I was using 20MHz bandwith filtering and High-resolution mode in the scope while measuring. Measuring point was at the output pads, using a very short ground lead.

<br clear="all">

I also measured the same PSU (for comparison) with the common UBEC-modification. The results can be seen below.

| LM2576        | UBEC          |
| ------------- | ------------- |
| <img src="images/measurements/LM2576-5mV-100us.png" alt="LM2576-ripple" width="100%" />  | <img src="images/measurements/UBEC-5mV-100us.png" alt="UBEC-ripple" width="100%" />  |
 

