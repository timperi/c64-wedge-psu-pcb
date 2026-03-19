# c64-wedge-psu-pcb
<img src="images/pcb-pics/2020-12-13-15.00.52.jpg" alt="PSU" width="25%" align="right">

A replacement PCB for the C64 Wedge PSU.

This PCB is a direct replacement for the PCB in the “wedge” shaped C64 PSU. The old linear regulator, which often fails and can cause overvoltage, is replaced with a modern switching regulator. All components are through-hole.

## Regulator and output voltage

The design uses **LM2576T-ADJ** with a classic feedback divider:

| Ref | Value   | Role |
| --- | ------- | ---- |
| **R1** | 1 kΩ   | FB to GND |
| **R2** | 3.2 kΩ | Regulated output (before the second-stage filter) to FB |

Nominal setpoint at the feedback node is about **5.17 V** (1.23 V × (1 + R2/R1)). That is intentionally a little above 5 V to offset load regulation, the drop across the second-stage inductor (L2 DCR), and cable loss, so the voltage at the C64 ends up closer to 5 V.

Feedback is taken **before** the output LC filter (L2 / C3), which is a common choice for stability with an extra post filter. The voltage at the **+5VDC** pads can be slightly lower than the sensed node under heavy load because of L2 and trace resistance.

To target a different output, change **R1/R2** using the LM2576-ADJ divider relationship in the datasheet (e.g. closer to 5.0 V would use a lower R2 for the same R1).

## Optional parts

- **Power LED:** **LED1** with **R3** (200 Ω). Omit both if you do not want an indicator.
- **Second-stage ripple filter:** **L2** and **C3**. To omit it, leave out L2 and C3 and **short the L2 pads** (see schematic).

<img src="images/pcb-pics/2020-12-14-14.37.jpg" alt="PSU" width="25%" align="right">
<img src="images/pcb-pics/2020-12-14-14.36.jpg" alt="PSU" width="25%" align="right">

## Measurements and figures *(to be updated)*

Ripple figures, photos, and any numeric results below are from an **earlier build / revision**. They are left here for reference until a **new unit** is assembled and measured; then this section (and the images) should be refreshed.

Previously, with a regular C64 as load, output ripple at the pads was on the order of **~10 mV peak‑peak** (20 MHz bandwidth limit, peak triggering on the scope, short ground lead). The same PSU was also compared to a common UBEC-style modification; captures from that session are in the table below.

<br clear="all">

| LM2576 (earlier capture) | UBEC (comparison) |
| ------------------------ | ----------------- |
| <img src="images/measurements/LM2576-5mV-100us.png" alt="LM2576 ripple (historical)" width="100%" /> | <img src="images/measurements/UBEC-5mV-100us.png" alt="UBEC ripple (comparison)" width="100%" /> |

---

**Project:** schematic rev **2.0** (see title block in `c64-wedge-psu-pcb.kicad_sch`). BOM: `c64-wedge-psu-pcb-BOM.csv`.
