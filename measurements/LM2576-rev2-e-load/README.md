# LM2576 wedge PCB — e-load session (schematic rev 2.0 build)

This folder holds the **authoritative write-up** for the LM2576 e-load run **until it is repeated** with **scope PNGs** and **methodology aligned** with [UBEC-2026-04-11](../UBEC-2026-04-11/README.md) (same naming pattern, line/HF timebases, and capture discipline) so the two sessions are easy to compare side by side.

## Status (methodology)

| Item | This session | UBEC session (2026-04-11) | After planned rerun |
| ---- | ------------ | --------------------------- | --------------------- |
| Scope PNGs in folder | **None yet** | Yes (`*_2ms.png`, `*_2us.png`, …) | Add PNGs here |
| Line ripple timebase | **2 ms/div** | 2 ms/div | Keep **2 ms/div** |
| HF / switching timebase | **5 µs/div** (~LM2576 Fsw) | 2 µs/div | **TBD** — match UBEC **or** keep 5 µs for LM2576 and document both |

Printable step-by-step checklist used for this run: [docs/measurement-procedure-and-report.html](../../docs/measurement-procedure-and-report.html).

## Test setup

- **Electronic load** on **+5 V** after **original C64 harness to the power plug** and short wires to the load  
- **Ambient ~23 °C**  
- Board **in open air** (wedge **case not closed**)  
- **Voltage @ load:** e-load readout (after that cable path)  
- **Scope:** Rigol DS1054Z, **1×** probe, **AC**, **20 MHz** BW limit, **peak detect**  
- **Line ripple:** **2 ms/div** (~two **100 Hz** cycles @ 50 Hz mains on a 10-division display)  
- **Switching ripple:** **5 µs/div**  
- **Heatsink °C:** thermocouple **bead** on **LM2576 tab** (heat path into heatsink); **lead wires** under **heatsink screw** for strain relief (bead not under screw head)

## Results

| Condition | V @ load | Line Pk‑Pk | Switching Pk‑Pk | T heatsink (°C) | Notes |
| --------- | -------- | ---------- | --------------- | ---------------- | ----- |
| No load | 5.36 V | 4.72 mV | 3.04 mV | 23 | — |
| 1.5 A | 5.03 V | 11.6 mV | 3.6 mV | 49 | — |
| 3 A | 4.75 V | 21.2 mV | 3.6 mV | 86 | ~25 min at 3 A before readings |
| 2.5 A | 4.84 V | 16.8 mV | 3.8 mV | 75 | Measured **after** the 3 A step; temperature still **falling** (not a plateau) |

## Practical current guidance

The LM2576 family is **rated** to **3 A**, and this board **can** be pushed there briefly, but **continuous 3 A is not recommended**. At **3 A** the rail was already **4.75 V** at the load (the low end of the usual C64 tolerance), and the **heatsink reached 86 °C** in **open air**. Inside a **closed wedge** with stagnant air and a warm transformer, the regulator and output voltage will be **worse**.

For **continuous** use, treat roughly **2 A to 2.5 A** as a more realistic ceiling unless you repeat these checks in your own enclosure and wiring. A stock **C64** (often **~1.2 A** average) sits comfortably in the **~5 V** region with plenty of thermal margin when a **heatsink** is fitted as in the rev 2.0 BOM.
