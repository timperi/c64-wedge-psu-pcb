# UBEC vs wedge PCB — comparison memo (minimal, honest)

**Printable bench sheet:** open [`ubec-vs-pcb-comparison-memo.html`](ubec-vs-pcb-comparison-memo.html) in a browser → **Print** (Ctrl+P) → PDF or paper (A4).

**Goal:** Measure the **same wedge PSU hardware** twice: once **UBEC-modded**, then after **swapping to your PCB** (same transformer, harness, and enclosure where practical). Report **what the data shows** under fixed conditions — not which side “wins” by default.

**Honesty rule:** Only claim what this session supports. If results are close, say **comparable under these conditions**. Note **PCB revision** and **whether the case was open or closed**.

**What a UBEC is (here):** In RC use it’s a **small DC‑DC buck** (often ~5 V out) on a **tiny PCB** — SMD controller, inductor, sometimes **heat-shrink or potting**. C64 wedge “UBEC mods” wire that module to the **rectified DC** from the original transformer. There is **no TO‑220 tab** and **no user heatsink** like your LM2576 + **HS1**; cooling is whatever the module’s copper and enclosure allow. So this comparison is **electrical first** (V, ripple); **thermals are not symmetric** between the two.

---

## 0. Before you start

- [ ] **Photo or sketch** of probe points (e.g. **+5 V / GND at C64 connector** or defined pads — use the **same** for both DUTs).
- [ ] **Record:** date, ambient °C, mains (e.g. 230 V / 50 Hz), **scope model**, probe (**1×** / 10×), **AC** + **20 MHz BW** + **peak detect** (or whatever you use — **same** for both runs).
- [ ] **E-load** and **cabling** path documented (e.g. original harness → connector → short pigtail to load).

**PCB build:** Note **KiCad / Git revision** or BOM date and whether this is **current assembled board** or **new boards when they arrive**. If the second pass uses a **different PCB rev**, say so in the results — it’s not cheating, it’s **disclosure**.

---

## 1. Phase A — UBEC mod (measure first)

**DUT:** Wedge with **UBEC** as installed today.

**Minimum measurements** (same for Phase B):

| Step | What | How / note |
|------|------|------------|
| A1 | **DC at load** | E-load (or DMM) **after** the same cable as Phase B. Record **no load** (or ~0 A if load shows it) and **loaded** (see below). |
| A2 | **Line ripple Pk-Pk** | Scope **AC**, 20 MHz BW, peak detect, **short ground** at measurement GND. Timebase: **~2 ms/div** @ 50 Hz mains (two 100 Hz periods on ~10 divs). **Pk-Pk** on that trace. |
| A3 | **Loaded condition** | Prefer **~1.2–1.5 A** as “C64-ish” **plus** optionally **one** heavier point (e.g. **2.5 A** or **3 A**) if you want headroom — only if you’re willing; **one** loaded line is enough for a honest snapshot. |
| A4 | **HF / switching (optional)** | Only if the trace looks **spiky or messy** vs expectations, or UBEC **Fsw** is unclear: zoom until **~1–2 periods** of the dominant ripple; note **timebase** and **Pk-Pk**. Skip if line + DC already answer your question. |

**Save:** One **line-ripple** PNG per condition you care about; name files so you know **UBEC** vs **PCB** (e.g. `ubec-line-1p5A.png`).

---

## 2. Phase B — Your PCB (after swap)

- Remove UBEC mod; install **your PCB** with **same transformer**, **same harness length/connector**, **same e-load wiring**.
- Repeat **A1–A4** with **identical** scope settings and **same** probe points.
- Note **case open vs closed** for **both** phases the same way (affects airflow for UBEC module and for your board).

**Temperature (don’t force a fake “UBEC vs PCB” thermal contest):**

- **UBEC:** There is **no standard probe point**. The hot spots are usually the **SMD IC** and/or **inductor**, often under **shrink-wrap or epoxy** — a thermocouple bead is **awkward** and placement varies by brand. **Skip °C on the UBEC** unless you already have a repeatable method (e.g. **IR camera** on the exposed surface, or a bead on a specific exposed pad you document). Don’t guess “case temperature” as regulator junction temp.
- **Your PCB (optional):** If you want **one number for your design only**, use the same rule as [`measurement-procedure-and-report.html`](measurement-procedure-and-report.html): **bead on the LM2576 metal tab** (heat path into **HS1**), **leads under the heatsink screw** — not under the screw head. That documents **your** build; it is **not** comparable to an un-heatsinked UBEC in a °C-for-°C sense.

---

## 3. Results table (copy and fill)

**Session meta**

| Field | UBEC run | PCB run |
|-------|----------|---------|
| Date | | |
| Ambient °C | | |
| PCB identity | UBEC mod | (rev / git / notes) |
| Case open / closed | | |
| Line ripple timebase | e.g. 2 ms/div | same |
| T °C regulator (optional) | UBEC: usually **skip** (no tab; see §2) | LM2576 **tab** + HS1 (see main checklist) |

**Electrical**

| Condition | DUT | V @ load | Line Pk-Pk (mV) | HF Pk-Pk (mV) (optional) | Notes |
|-----------|-----|----------|-----------------|---------------------------|-------|
| No load (~0 A) | UBEC | | | | |
| No load (~0 A) | PCB | | | | |
| ~1.5 A (or your “C64-ish”) | UBEC | | | | |
| ~1.5 A | PCB | | | | |
| Heavier (optional) | UBEC | | | | |
| Heavier (optional) | PCB | | | | |

---

## 4. Afterword — ordering new PCBs

- If **Phase B** happens on **older PCB** and later you get **new boards**, you can add **Phase C** (same procedure, one row in the table) or treat this memo as **“comparison at rev X.”**
- **V2.0 tag** (per README) is separate: tag when **that** build is verified and re-measured if you promise that in the project notes.

---

## 5. One-paragraph conclusion template

> Under [open/closed] case, [ambient] °C, and probing [node], with [same harness and load], the UBEC mod showed [V / line ripple summary] at [I load], and the [PCB rev] showed […]. The difference was [small / mainly in … / not significant for a stock C64 load]. This compares **these two implementations** only, not every UBEC or every build.

Use that even when the answer is **“similar”** — that’s still valuable data.
