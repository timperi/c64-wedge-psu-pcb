# UBEC mod — e-load session (2026-04-11)

C64 **wedge PSU with UBEC mod**. Electronic load on **+5 V** after the **original harness** (aligned with project bench notes unless noted otherwise).

## What happened at 3 A

The UBEC **failed during the soak** (before the usual **10 min** plateau used for air temperature). **Peak temperature at failure was not recorded** (not under observation at the moment it quit). The **ripple numbers** for the 3 A row are from the scope captures in this folder; the **temperature** cell is **N/A**.

## Scope setup

- **Rigol DS1054Z** — **AC** coupling, **20 MHz** bandwidth limit, **peak detect**, **1×** probe  
- **Line-scale** captures: **2 ms/div**  
- **HF** captures: **2 µs/div**  
- **`noise-floor-power-off.png`** — reference with **PSU off** (noise floor)

## Results

Ripple values are **Pk‑Pk** read on the scope. **Air °C** is at the **measurement point** after **~10 min** at each load step (same rhythm for each row), except **3 A**.

| Condition | Line Pk‑Pk (2 ms/div) | HF Pk‑Pk (2 µs/div) | Air °C (~10 min) | Notes |
| --------- | --------------------: | -------------------: | ---------------: | ----- |
| Power off (noise floor) | 2.4 mV | — | 23 | Reference only |
| No load | 38.4 mV | 29.4 mV | 23 | |
| 1.0 A | 48.6 mV | 40.8 mV | 32 | |
| 1.5 A | 58.8 mV | 49.2 mV | 35 | |
| 2.0 A | 74.4 mV | 64.2 mV | 39 | |
| 2.5 A | 91.8 mV | 85.2 mV | 44 | |
| 3.0 A | 115 mV | 105 mV | — | **Failed during soak**; max T not recorded |

**Caveat:** One UBEC sample, one wedge. Not every module will behave identically. The trend is **line and HF ripple rising with load** and a **hard limit** under sustained **3 A** in this setup.

## Captures in this folder

| Pattern | Meaning |
| ------- | -------- |
| `NO-LOAD-2ms.png`, `NO-LOAD-2us.png` | No load |
| `1_0A-2ms.png`, `1_0A-2us.png` | 1.0 A |
| `1_5A-…` | 1.5 A |
| `2_0A-…` | 2.0 A |
| `2_5A-…` | 2.5 A |
| `3_0A-…` | 3.0 A |
| `noise-floor-power-off.png` | PSU off |

Suffix **`-2ms`** = line timebase, **`-2us`** = HF timebase.
