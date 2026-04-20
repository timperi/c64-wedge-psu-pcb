# c64-wedge-psu-pcb
<img src="images/pcb-pics/2020-12-13-15.00.52.jpg" alt="PSU" width="25%" align="right">

A replacement PCB for the C64 Wedge PSU.

This PCB is a direct replacement for the PCB in the “wedge” shaped C64 PSU. The old linear regulator, which often fails and can cause overvoltage, is replaced with a modern switching regulator. All components are through-hole.

## PCB layout (revisions 2.0 / 2.1)

The **KiCad PCB** was reworked for rev **2.0** (current silk **2.1**): **U1 (LM2576)** is placed **closer to the wedge middle wall** (the **inner** case wall along that edge of the PCB — not the outer wedge shell). That frees **vertical space** for the TO-220 **heatsink** and usually means **little or no lead forming** on the regulator compared to older layouts. Other parts were **rearranged** for clearance and assembly flow. **Silkscreen** shows **component values** (not only references) to make population easier. A **logo / graphic** is included on the board.

## Before you build

**Maintainer note:** Bench comparison (UBEC vs LM2576, ripple + temperatures, scope PNGs) is in **[`measurements/README.md`](measurements/README.md)**. Tagged **`v2.0.0`** is the **V2** design: PCB layout with room for a **TO-220 heatsink** on the LM2576—the fix for the thermal limitations of builds that could not fit a proper sink. **[Issue #4 — thermal capability and “3 A” marking](https://github.com/timperi/c64-wedge-psu-pcb/issues/4)** has the background on older layouts and realistic loads.

If you build from **older Gerbers or third‑party kits**, read Issue #4 first. Third‑party kits may not match the BOM here; treat any build as your own responsibility.

## Regulator and output voltage

The design uses **LM2576T-ADJ** with a classic feedback divider:

| Ref | Value   | Role |
| --- | ------- | ---- |
| **R1** | 1 kΩ   | FB to GND |
| **R2** | 3.3 kΩ | Regulated output (before the second-stage filter) to FB |

Nominal setpoint at the feedback node is about **5.29 V** (1.23 V × (1 + R2/R1)). That is intentionally a little above 5 V to offset load regulation, the drop across the second-stage inductor (L2 DCR), and cable loss, so the voltage at the C64 ends up closer to 5 V.

Feedback is taken **before** the output LC filter (L2 / C3), which is a common choice for stability with an extra post filter. **L2** and **C3** are **part of the intended build** (second-stage ripple filter); populate both unless you are deliberately experimenting with a modified topology. The voltage at the **+5VDC** pads can be slightly lower than the sensed node under heavy load because of L2 and trace resistance.

To target a different output, change **R1/R2** using the LM2576-ADJ divider relationship in the datasheet (e.g. closer to 5.0 V would use a lower R2 for the same R1).

## Optional parts

- **Power LED:** **LED1** with **R3** (220 Ω). Omit both if you do not want an indicator.

<img src="images/pcb-pics/2020-12-14-14.37.jpg" alt="PSU" width="25%" align="right">
<img src="images/pcb-pics/2020-12-14-14.36.jpg" alt="PSU" width="25%" align="right">

## Bench measurements

UBEC vs LM2576 **ripple** (Pk‑Pk @ 2 ms/div), **temperatures**, and **side‑by‑side scope captures**: **[`measurements/README.md`](measurements/README.md)**.

**Practical current guidance:** The LM2576 family is **rated** to **3 A**, and this board **can** be pushed there briefly, but **continuous 3 A is not recommended**. In the latest bench run, at **3 A** the rail was **4.74 V** at the load and **air near the case vent** read **79 °C** with the **case open** (see comparison page). Inside a **closed wedge** with stagnant air and a warm transformer, expect worse results.

For **continuous** use, treat roughly **2 A to 2.5 A** as a more realistic ceiling unless you repeat these checks in your own enclosure and wiring. A stock **C64** (often **~1.2 A** average) sits comfortably in the **~5 V** region with plenty of thermal margin when a **heatsink** is fitted as in the BOM.

---

**Project:** schematic and PCB rev **2.1** (title blocks in `c64-wedge-psu-pcb.kicad_sch` / `c64-wedge-psu-pcb.kicad_pcb`). BOM: `c64-wedge-psu-pcb-BOM.csv`.
