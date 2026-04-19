# InkTime — Open-Source Smartwatch

![project](https://img.shields.io/badge/project-InkTime-blueviolet)
![status](https://img.shields.io/badge/stage-EVT%20%E2%86%92%20DVT-orange)
![license](https://img.shields.io/badge/license-Apache%202.0-green)
![mcu](https://img.shields.io/badge/MCU-nRF52840-blue)
![display](https://img.shields.io/badge/display-e--paper%201.54%22-lightgray)

**InkTime** is a cheap, low-power, open-source smartwatch built around the Nordic **nRF52840** SoC with a **1.54" e-paper display**, designed for BLE connectivity and mass production at JLCPCB.

This repository contains the full EVT (Engineering Validation) deliverables: schematic, PCB layout, manufacturing files, 3D mechanical assembly and documentation.

---

## Table of Contents

1. [Block Diagram](#block-diagram)
2. [Bill of Materials](#bill-of-materials)
3. [Hardware Description](#hardware-description)
4. [Power Budget & Battery Life](#power-budget--battery-life)
5. [nRF52840 Pin Assignment](#nrf52840-pin-assignment)
6. [PCB Design Notes](#pcb-design-notes)
7. [Protection & Safety](#protection--safety)
8. [Mechanical Assembly](#mechanical-assembly)
9. [Manufacturing](#manufacturing)
10. [Repository Structure](#repository-structure)
11. [Development Log](#development-log)
12. [Design Decisions](#design-decisions)
13. [Renderings](#renderings)
14. [Build Instructions](#build-instructions)
15. [License](#license)

---

## Block Diagram

```
                                        ┌────────────────────┐
                                        │  E-Paper Display   │
                                        │  1.54"  200×200    │
                                        │  (WSH-12561)       │
                                        └──────────┬─────────┘
                                                   │
                                      SPI (MOSI, SCK) + CS/DC/RST/BUSY
                                                   │
  ┌─────────────┐  VBUS (5V)   ┌─────────┐  VREG  ┌─────────────────────┐      I²C Bus
  │   USB-C     │──────────────│ BQ25180 │────────│   RT6160AWSC        │─────────┬───────────────┐
  │ KH-TYPE-C   │              │  LiPo   │        │   DC/DC Buck-Boost  │   3V3   │               │
  │   -16P      │   D+ / D-    │ Charger │        │   → 3.3 V           ├─────────┤               │
  └──────┬──────┘──────┐       └────┬────┘        └─────────────────────┘         │               │
         │             ▼            │ BAT                                         │         ┌─────▼─────┐
    ┌────▼────┐    ┌──────┐         ▼                                             │         │  BMA423   │
    │   F1    │    │ USB  │    ┌─────────┐                                        │  I²C    │  IMU      │
    │(fuse 0Ω)│    │ LC6  │    │  LiPo   │              ┌─────────────────────┐   ├────────▶│  Accel.   │
    └─────────┘    │(ESD) │    │ Battery │              │      nRF52840       │   │         │  (3-axis) │
         │        └──────┘    │  3.7V   │              │     (QFN-73)        │   │         └───────────┘
         ▼                    │ 250 mAh │              │                     │   │
    ┌─────────┐   ┌──────┐    └─────────┘              │  ARM Cortex-M4F     │   │         ┌─────────────┐
    │  D_TVS  │   │ TVS  │         │                   │  64 MHz             │   │  I²C    │  MAX17048   │
    │ (MBR0530│   │clamp │         ▼                   │  1 MB Flash         │   ├────────▶│  Fuel Gauge │
    │  clamp) │   └──────┘    ┌─────────┐              │  256 kB RAM         │◀──┘         └─────────────┘
    └─────────┘               │  VBAT   │◀─────────────│                     │
                              │ monitor │              │  BLE 5.0            │             ┌─────────────┐
                              └─────────┘              │  USB 2.0 FS         │   I²C       │  DRV2605    │
                                                       │                     │────────────▶│  Haptic     │
                                                       │  32 MHz + 32 kHz    │             │  Driver     │
                                                       │  Crystals           │             └──────┬──────┘
                                                       └────────┬────────────┘                    │
                                                                │                           OUT+ / OUT−
                                                              RF + matching                        ▼
                                                              (L1, C3, C4, C9)              ┌──────────────┐
                                                                │                           │  Vibration   │
                                                          ┌─────▼──────┐                    │  Motor       │
                                                          │ 2.4 GHz    │                    │  (FIT0774)   │
                                                          │ Chip       │                    └──────────────┘
                                                          │ Antenna    │
                                                          │ (2450AT)   │               ┌──────────────────┐
                                                          └────────────┘               │  3 Buttons       │
                                                                                       │  (EVP-AKE31A)    │
                                                                                       │  UP / ENT / DN   │
                                                                                       └──────────────────┘
```

### Signal summary
- **I²C bus** (400 kHz): RT6160, BQ25180, BMA423, MAX17048, DRV2605 — shared with 3K3 pull-ups on SCL/SDA.
- **SPI bus**: MOSI+SCK → EPD FPC connector only (single slave).
- **USB 2.0 FS**: connects to nRF52840's native USB peripheral via USBLC6 ESD protection.
- **Interrupt lines**: PMIC_INT (BQ25180), ALERT (MAX17048), IMU_INT1/2 (BMA423) with 100K pull-ups.
- **SWD + SWO**: TC2030-IDC pogo-pin connector for debug/programming.

---

## Bill of Materials

Full BOM is in `Manufacturing/InkTime.bom`. Summary of critical components:

### Active Components

| # | Function | Designator | Part | Package | Qty | JLCPCB |
|---|----------|------------|------|---------|:---:|--------|
| 1 | MCU | U1 | nRF52840-QIAA | QFN-73 7×7 | 1 | [C190794](https://jlcpcb.com/partdetail/C190794) |
| 2 | DC/DC Buck-Boost | IC9 | RT6160AWSC | BGA-15 | 1 | [C2682941](https://jlcpcb.com/partdetail/C2682941) |
| 3 | LiPo Charger | IC1 | BQ25180YBGR | BGA-8 | 1 | [C2064810](https://jlcpcb.com/partdetail/C2064810) |
| 4 | IMU (3-axis) | IC3 | BMA423 | LGA-12 2×2 | 1 | [C437656](https://jlcpcb.com/partdetail/C437656) |
| 5 | Fuel Gauge | U3 | MAX17048G+T10 | DFN-8 2×2 | 1 | [C116543](https://jlcpcb.com/partdetail/C116543) |
| 6 | Haptic Driver | IC2 | DRV2605YZFR | BGA-9 | 1 | [C527436](https://jlcpcb.com/partdetail/C527436) |
| 7 | ESD Protection (USB) | D3 | USBLC6-2SC6Y | SOT-23-6 | 1 | [C7519](https://jlcpcb.com/partdetail/C7519) |
| 8 | P-MOSFET (EPD power) | Q1 | DMG2305UX-7 | SOT-23-3 | 1 | [C145093](https://jlcpcb.com/partdetail/C145093) |
| 9 | N-MOSFET (EPD drive) | Q3 | SI1308EDL-T1-GE3 | SOT-323-3 | 1 | [C191043](https://jlcpcb.com/partdetail/C191043) |
| 10 | Schottky (EPD drive) | D2, D4, D5 | MBR0530 | SOD-123 | 3 | [C95872](https://jlcpcb.com/partdetail/C95872) |
| 11 | **TVS clamp (VBUS)** | **D_TVS** | **MBR0530** | **SOD-123** | **1** | **[C95872](https://jlcpcb.com/partdetail/C95872)** |
| 12 | 2.4 GHz Antenna | ANT1 | 2450AT18B100E | 3216 | 1 | [C504989](https://jlcpcb.com/partdetail/C504989) |
| 13 | 32 MHz Crystal | X1 | ±10 ppm | 2016 | 1 | [C255909](https://jlcpcb.com/partdetail/C255909) |
| 14 | 32.768 kHz Crystal | X2 | ±20 ppm | 3215 | 1 | [C181095](https://jlcpcb.com/partdetail/C181095) |

### Connectors

| # | Function | Designator | Part | Qty |
|---|----------|------------|------|:---:|
| 15 | USB-C receptacle | J4 | KH-TYPE-C-16P | 1 |
| 16 | E-paper FPC (24-pin) | J1 | 503480-2400 | 1 |
| 17 | SWD Debug (pogo) | J2 | TC2030-IDC | 1 |

### Passives

| # | Value / Voltage | Designators | Pkg | Qty | JLCPCB |
|---|-----------------|-------------|:---:|:---:|--------|
| 18 | 3V3-domain caps 100 nF | C5, C7, C8, C12, C19, **C_RESET** | 0201 | 6 | [C2181068](https://jlcpcb.com/partdetail/C2181068) |
| 19 | 12 pF (crystal load) | C1, C2, C17, C18 | 0201 | 4 | [C2181049](https://jlcpcb.com/partdetail/C2181049) |
| 20 | RF matching 1 pF / 820 pF / 100 pF | C3, C4, C11 | 0201 | 3 | various |
| 21 | Decoupling 4.7 µF | C6, C14, C20, C21, C43 | 0402 | 5 | [C23733](https://jlcpcb.com/partdetail/C23733) |
| 22 | Bulk 22 µF (3V3) | C25, C33 | 0402 | 2 | [C159770](https://jlcpcb.com/partdetail/C159770) |
| 23 | 1 µF / 10 µF 16V (VBUS) | C37, C38, C39, C42, C43 | 0402 | 5 | various |
| 24 | 1 µF / 50V (EPD) | EPD_C1…C12 | 0402 | 10 | [C52923](https://jlcpcb.com/partdetail/C52923) |
| 25 | Inductors 3.9 nH / 15 nH / 10 µH / 68 µH / 4.7 µH | L1, L2, L3, L5, L7 | various | 5 | various |
| 26 | 0 Ω (IMU straps) | R2, R3, R4 | 0201 | 3 | [C2181070](https://jlcpcb.com/partdetail/C2181070) |
| 27 | 3K3 (I²C pull-ups) | R17, R18 | 0201 | 2 | [C2181095](https://jlcpcb.com/partdetail/C2181095) |
| 28 | 5K1 (USB CC) | R1_USB, R2_USB | 0201 | 2 | [C2181099](https://jlcpcb.com/partdetail/C2181099) |
| 29 | 10K (pull-ups, buttons, reset) | R5, R7, R8, R9, R_PWR_EPD, R2_EP_DR, **R_RESET** | 0201 | 7 | [C2181088](https://jlcpcb.com/partdetail/C2181088) |
| 30 | **100K (open-drain pull-ups)** | **R_ALERT, R_PMIC_INT** | **0201** | **2** | **[C2181091](https://jlcpcb.com/partdetail/C2181091)** |
| 31 | **0Ω (fuse placeholder)** | **F1** | **0201** | **1** | [C2181070](https://jlcpcb.com/partdetail/C2181070) |
| 32 | UI (buttons) | SW_UP/ENT/DN | EVP-AKE31A | 3 | [C479756](https://jlcpcb.com/partdetail/C479756) |
| 33 | Solder jumper | SJ1 | - | 1 | N/A |
| 34 | Test pads | TP_* (15 pcs) | Round | 15 | N/A |

**Bolded rows** = protection/safety components added during EVT review (see [Protection & Safety](#protection--safety)).

Total placed on PCB: **112 components** across 50 unique part groups.

---

## Hardware Description

### System Architecture

InkTime is built around the **Nordic nRF52840** SoC featuring:
- ARM Cortex-M4F @ 64 MHz with FPU
- 1 MB Flash / 256 kB RAM
- Bluetooth 5.0 LE + Bluetooth mesh
- USB 2.0 Full-Speed device (native)
- Integrated DC-DC buck converter (high-efficiency mode)
- 47 GPIOs, 8-channel 12-bit SAADC, 3× SPI, 2× I²C, 2× UART

### Power Management Chain

Three-stage power architecture for maximum battery life:

```
5V VBUS ──▶ F1 ──▶ BQ25180 ──▶ VREG (3.0-4.2V) ──▶ RT6160 ──▶ 3V3
         (fuse)   (charger)    (battery rail)    (buck-boost)
```

1. **USB-C Input (VBUS = 5 V)**: KH-TYPE-C-16P with USBLC6-2SC6Y (D3) ESD protection on D+/D-. 5K1 pull-down resistors (R1_USB, R2_USB) on CC1/CC2 for UFP (device) identification.
   - **F1 (0 Ω fuse placeholder)**: can be populated with a resettable PTC fuse for current limiting.
   - **D_TVS (MBR0530 reverse-clamp)**: clamps VBUS overvoltage to GND.

2. **Battery Charging (BQ25180YBGR, IC1)**: Single-cell LiPo charger, up to 1 A charge rate. Manages USB→battery charging and provides the SYS output (VREG) to the rest of the system. Battery directly soldered to test pads TP_VBAT / TP_BAT_GND (no JST connector — saves space).
   - R9 (10K) on TS/MR pin for thermistor/manual reset function
   - **R_PMIC_INT (100K)** pull-up on open-drain !INT output
   - Battery: Akyga AKY0106 LP502030, 3.7 V / 250 mAh

3. **Voltage Regulation (RT6160AWSC, IC9)**: Buck-boost converter generating 3.3 V output across the full LiPo voltage range (3.0-4.2 V).
   - L7: FTC252012SR47MBCA 4.7 µH
   - Input: C23 (0.1 µF) + C24 (10 µF)
   - Output: C25 + C33 (22 µF each)
   - I²C configurable via shared bus

### nRF52840 Internal DC-DC

The nRF52840's high-efficiency internal DC-DC is used:
- **L3 (10 µH)** between DCC (pin B3) and DCCH (pin AB2)
- **C15 (1 µF)** decoupling on DCC node
- **C16 (47 nF)** decoupling on DCCH node
- **L2 (15 nH)** RF-matching inductor on VDDH path
- DEC1→C5 (100 nF), DEC3→C14 (4.7 µF), DEC4/5/6→C6 (4.7 µF)

### E-Paper Display Sub-system

**Display**: Waveshare WSH-12561, 1.54" monochrome e-paper
- Resolution: 200 × 200 pixels
- Interface: 4-wire SPI
- Refresh: 2 s full / 0.3 s partial
- Dimensions: 31.8 × 37.32 × 1.05 mm (active area 27.6 × 27.6 mm)
- Supply: 3.3 V (switched via Q1)
- Connected via 24-pin FPC connector J1 (503480-2400)

**Signals**: MOSI, SCK, EPD_CS, EPD_DC, EPD_RST, EPD_BUSY

**E-paper boost driver**: Generates high voltages required by e-paper (+22 V / −20 V gate drive)
- Q1 (DMG2305UX-7 P-MOSFET): high-side switch for EPD 3V3
- Q3 (SI1308EDL-T1-GE3 N-MOSFET): switching transistor
- L5 (68 µH): boost inductor
- D2/D4/D5 (MBR0530 Schottky): voltage multiplication
- EPD_C1…C12 (1 µF/50 V): filter caps for PREVGL/PREVGH/GDR/RESE rails
- R_TYPE_SEL (2.2 Ω), R_PWR_EPD (10K), R1_EP_DR (0.47 Ω), R2_EP_DR (10K)

### IMU (Accelerometer)

**Bosch BMA423 (IC3)**: low-power digital 3-axis accelerometer
- Interface: I²C (ASDA→SDA, ASCL→SCL)
- SDO pin → R3 (0 Ω) sets I²C address to **0x18**
- CSB pin → R4 (0 Ω) to VDD selects **I²C mode**
- SDX pin → R2 (0 Ω) for completeness
- INT1 (→ P1.08) and INT2 (→ P0.11) interrupt outputs
- Decoupling: C19 (100 nF)
- Features: step counter, activity recognition, tap/double-tap, wrist-tilt wake

### Fuel Gauge

**Maxim MAX17048G+T10 (U3)**: ModelGauge fuel gauge, no sense resistor needed
- Interface: I²C (shared bus)
- CELL pin directly monitors VBAT
- !ALERT (open-drain, → P0.16) with **R_ALERT (100K)** pull-up to 3V3
- QSTRT pin for quick-start estimation
- Decoupling: C27 (0.1 µF)

### Haptic Feedback

**TI DRV2605YZFR (IC2)**: LRA/ERM haptic driver with effects library
- Interface: I²C (shared bus)
- EN (→ P0.12 HAPTIC_EN)
- OUT+ / OUT- differential drive
- Motor: DFRobot FIT0774 (10 mm × 2.7 mm coin, 1.5-4.2 V, 50 mA max)
- Decoupling: C32 (1 µF), C34 (0.1 µF)

### User Buttons

Three side-actuated buttons (EVP-AKE31A) on the left edge:
- **SW_UP**: Navigation up — P0.19
- **SW_ENT**: Enter/Select — P0.21
- **SW_DN**: Navigation down — P0.20

Each has a 10K pull-up (R5/R7/R8) to 3V3 and 1 µF debounce cap (C29/C30/C31) to GND. Active-low.

### USB-C Interface

**KH-TYPE-C-16P (J4)**: USB 2.0 Full-Speed device
- D+/D- through USBLC6-2SC6Y (D3) TVS ESD array
- CC1/CC2 with 5K1 pull-downs (R1_USB, R2_USB) → identifies as UFP (device/sink)
- SJ1 solder jumper for configuration tuning
- C42 (0.1 µF) + C43 (4.7 µF) VBUS filtering
- **Test point TP_VBUS** for USB 5 V access

### Wireless (BLE 2.4 GHz)

**Johanson 2450AT18B100E** chip antenna (ANT1)
- Pi-network matching: L1 (3.9 nH) series, C3 (1 pF) shunt, C4 (820 pF) shunt, C9 (1 pF) shunt
- C11 (100 pF) DC block
- Antenna at PCB edge with **ground-plane cutout** underneath (no copper, no traces)
- Via stitching on surrounding ground area

### Debug Interface (SWD)

**Tag-Connect TC2030-IDC (J2)**: 6-pin pogo-pin debug interface

| Pin | Signal |
|:---:|--------|
| 1 | 3.3 V |
| 2 | SWDIO |
| 3 | RESET |
| 4 | SWDCLK |
| 5 | GND |
| 6 | SWO |

**RESET circuit**: external 10K pull-up (R_RESET) + 100 nF filter (C_RESET) to protect against ESD and prevent spurious resets.

Test pads provided for all debug signals.

### I²C Bus (Shared, ~400 kHz)

| Device | I²C Address | Role |
|--------|:---:|------|
| BMA423 (IC3) | 0x18 | IMU |
| BQ25180 (IC1) | 0x6A | Charger status/config |
| RT6160 (IC9) | 0x75 | DC/DC voltage config |
| MAX17048 (U3) | 0x36 | Fuel gauge |
| DRV2605 (IC2) | 0x5A | Haptic control |

Pull-ups: R17 (3K3) on SCL, R18 (3K3) on SDA, both to 3V3.

---

## Power Budget & Battery Life

### Component currents (active states)

| State | Current @ 3.3 V | Notes |
|-------|:---:|-------|
| nRF52840 CPU active @ 64 MHz | ~3.5 mA | Running code |
| nRF52840 BLE TX | ~5.3 mA | 0 dBm output |
| nRF52840 System OFF (sleep) | ~0.4 µA | RAM retention |
| E-paper refresh (2 s full) | ~8 mA | 26.4 mW peak |
| E-paper standby | <5 µA | <0.017 mW |
| BMA423 low-power | ~14 µA | Step counter mode |
| MAX17048 continuous | ~23 µA | Fuel-gauge monitoring |
| DRV2605 standby | ~1 µA | EN = low |
| DRV2605 active haptic | ~2.5 mA | During buzz |
| RT6160 quiescent | ~30 µA | No-load operation |

### Estimated average current

Typical smartwatch duty cycle:
- BLE advertising (1s interval): ~25 µA avg
- Display refresh every 60 s (full): ~270 µA avg (8 mA × 2 s / 60 s)
- Step counter: 14 µA continuous
- Fuel gauge: 23 µA continuous
- DC/DC quiescent: 30 µA
- Leakage + other: ~20 µA
- **Total average: ~380 µA (0.38 mA)**

### Battery life projection

With a 250 mAh LiPo and ~0.4 mA average:
- **Battery life ≈ 250 / 0.4 ≈ 625 hours ≈ 26 days** (theoretical max)
- **Real-world estimate: 5-7 days** (heavier use, BLE connected, more refreshes)

Charging: 150-500 mA via BQ25180 → ~45 min to ~1.5 h full charge from empty.

---

## nRF52840 Pin Assignment

| Pin | Signal | Dir | Function | Why this pin |
|-----|--------|:---:|----------|--------------|
| P0.00/XL1 | XL1 | analog | 32.768 kHz crystal input | Dedicated LFXO pin |
| P0.01/XL2 | XL2 | analog | 32.768 kHz crystal output | Dedicated LFXO pin |
| P0.02/AIN0 | — | — | Not connected | Reserved for analog |
| P0.03/AIN1 | — | — | Not connected | Reserved for analog |
| P0.04/AIN2 | — | — | Not connected | Reserved for analog |
| P0.05/AIN3 | EPD_BUSY | in | E-paper busy signal | Near SPI pins |
| P0.06 | EPD_DC | out | E-paper data/command | Near SPI pins |
| P0.07 | EPD_CS | out | E-paper chip select | Near SPI pins |
| P0.08 | PMIC_INT | in | BQ25180 !INT (open-drain) | GPIO with external 100K pull-up |
| P0.09/NFC1 | — | — | Not connected | NFC reserved |
| P0.10/NFC2 | — | — | Not connected | NFC reserved |
| P0.11 | IMU_INT2 | in | BMA423 INT2 | Wake-from-sleep capable |
| P0.12 | HAPTIC_EN | out | DRV2605 enable | GPIO output |
| P0.13 | SCK | out | SPI clock (EPD) | SPIM-capable |
| P0.14 | MOSI | out | SPI data (EPD) | SPIM-capable |
| P0.15 | EPD_RST | out | E-paper reset | GPIO output |
| P0.16 | ALERT | in | MAX17048 !ALERT (open-drain) | GPIO with external 100K pull-up |
| P0.17 | — | — | Not connected | Reserved |
| P0.18/RESET | RESET | in | System reset | Dedicated reset pin |
| P0.19 | SW_UP | in | Button Up | GPIO with external 10K pull-up |
| P0.20 | SW_DN | in | Button Down | GPIO with external 10K pull-up |
| P0.21 | SW_ENT | in | Button Enter | GPIO with external 10K pull-up |
| P0.22 — P0.25 | — | — | Not connected | Reserved |
| P0.26 | SCL | out | I²C clock (shared) | Dedicated TWI pin |
| P0.27 | SDA | i/o | I²C data (shared) | Dedicated TWI pin |
| P0.28 — P0.31 | — | — | Not connected | AIN4-7 reserved |
| P1.00 | — | — | Not connected | Reserved |
| P1.01 | EPD_PWR_EN | out | EPD power MOSFET gate (Q1) | Controls EPD rail |
| P1.02 — P1.07 | — | — | Not connected | Reserved |
| P1.08 | IMU_INT1 | in | BMA423 INT1 | Wake-capable |
| P1.09 | SWO | out | Debug trace output | SWO-capable pin |
| P1.10 — P1.15 | — | — | Not connected | Reserved |
| XC1/XC2 | — | — | 32 MHz crystal | Dedicated HFXO pins |
| ANT | RF | out | Antenna feed | Dedicated RF pin |
| D+ / D- | USB_DP/DN | i/o | USB 2.0 differential | Dedicated USB pins |
| VBUS | VBUS | pwr | USB 5 V sense | USB detection |
| DCC / DCCH | — | pwr | Internal DC-DC (to/from L3) | Dedicated converter pins |
| VDDH | VDDH | pwr | High-voltage domain | Connected to VREG |
| VDD (×5) | 3V3 | pwr | 3.3 V supply | Multiple power pins |
| VSS + VSS_PAD | GND | pwr | Ground (thermal pad) | Ground references |
| DEC1…6 | — | pwr | Internal decoupling | Per Nordic reference design |
| DEC3V3 | — | pwr | 3.3 V decoupling | Per reference design |

**Utilization**: 23 of 48 GPIOs used (48%), leaving 25 pins available for future expansion (sensors, NFC, extra buttons, etc.).

---

## PCB Design Notes

### Physical Specifications

- **Shape**: Rounded rectangle, **46 × 35 mm** with 7 mm corner radius and side notches for buttons and USB-C
- **Layers**: 2 (Top + Bottom)
- **Thickness**: **1.0 mm** (NOT standard 1.6 mm)
- **Copper**: 1 oz (35 µm)
- **Surface finish**: ENIG
- **Silkscreen**: White, both sides
- **Solder mask**: Green

### Design Rules (JLCPCB 2-layer)

| Rule | Value |
|------|:---:|
| Min trace width (signal) | 0.15 mm (6 mil) |
| Min trace width (power) | 0.30 mm (12 mil) |
| Min clearance | 0.1 mm (4 mil) |
| Min via drill | 0.2 mm |
| Min annular ring | 0.15 mm |
| No right angles on traces | enforced |

DRC: validated using the provided `Manufacturing/jlcpcb-2layers.dru`.

### Component Placement Strategy

- **All 112 components on TOP layer** (per project spec)
- **Ground planes on both TOP and BOTTOM** (class-2 `GND` net)
- **Via stitching**: 22 GND stitches spread around the board, denser near antenna
- **Decoupling discipline**: 100 nF caps placed within 1 mm of IC power pins
- **Crystal placement**: X1 (32 MHz) within 5 mm of U1 XC1/XC2; X2 (32.768 kHz) within 5 mm of XL1/XL2
- **Antenna**: at PCB right edge with copper cutout underneath on both layers

### Functional Grouping (8 board groups)

Components are logically grouped via EAGLE `grouprefs` for easier review:

| Group | Members |
|-------|---------|
| MCU_CORE | U1, X1, X2, crystal caps, DCC filter |
| RF_FRONTEND | ANT1, L1/L2, C3/C4/C9/C10/C11/C22 |
| POWER_PATH | IC1/IC9/U3 + their passives |
| USB_PORT | J4, D3, R1_USB/R2_USB, C42/C43, SJ1 |
| EPD_INTERFACE | J1, EPD_C1…C12, Q1/Q3, L5, D2/D4/D5, drive resistors |
| UI_IO | IC3 (IMU), IC2 (haptic), buttons + pullups, debounce caps |
| DEBUG_TEST | J2, 15 test points |
| **PROTECTION** | R_PMIC_INT, R_ALERT, R_RESET, C_RESET, TP_VBUS, F1, D_TVS |

102 of 112 elements are assigned to groups.

### Silkscreen Guidelines

- Component designators only (no values) on silkscreen
- All test pads labeled with signal names (TP_SCL, TP_SDA, TP_SWDIO, TP_SWDCLK, TP_RESET, TP_SWO, TP_3V3, TP_3.3V, TP_VREG, TP_VBAT, TP_BAT_GND, TP_VBUS, TP_OP, TP_ON, TP_GND)
- Pin-1 indicators on polarized ICs
- Project identifier: **"InkTime v7"**
- **"REV.A 2026.04"** traceability
- **"FINISH: ENIG / 1mm FR4"** fab specs
- **L1 / L2** layer markers
- **"S/N:"** box for serial number application
- **3 fiducials** (asymmetric pattern) at (-20, 13), (20, 12), (-20, -13) for automated assembly

---

## Protection & Safety

During the EVT review (schematic checklist), 7 protection/safety components were added to meet industry best practices:

### 1. Open-drain pull-ups (2×)
The BQ25180 `!INT` and MAX17048 `!ALERT` outputs are open-drain — without external pull-ups they'd float.
- **R_PMIC_INT (100K)**: pulls PMIC_INT net to 3V3
- **R_ALERT (100K)**: pulls ALERT net to 3V3

### 2. RESET line protection (2×)
The nRF52840 RESET pin needs external protection against ESD and noise:
- **R_RESET (10K)**: pull-up to 3V3 (complements internal weak pull-up)
- **C_RESET (100 nF/10 V)**: noise filter to GND

### 3. VBUS input protection (3×)
- **F1 (0 Ω fuse placeholder)**: 0201 resistor in series with VBUS. Can be hand-replaced with a resettable PTC (e.g., Littelfuse NANOSMDC014F) during production for over-current protection.
- **D_TVS (MBR0530 reverse-biased)**: cathode to VBUS, anode to GND — clamps overvoltage transients from USB hot-plug. (Ideal replacement: dedicated TVS diode like PESD5V0S1UB.)
- **TP_VBUS**: dedicated test point for bench-measuring USB 5 V

These additions bring the board from 105 components to **112 components**.

---

## Mechanical Assembly

### Components stacked inside the case (from bottom)

| Layer | Part | Source |
|-------|------|--------|
| Bottom | LiPo battery (AKY0106 LP502030, 50×20×3 mm) | Mechanical/ datasheet |
| | Shaker motor (FIT0774, 10×2.7 mm cylinder) | mounted under PCB |
| Middle | PCB (46×35×1 mm with 112 components) | Hardware/InkTime.brd |
| | Display FPC cable (24-pin, ribbon) | Hardware datasheet |
| Top | E-paper display (WSH-12561, 31.8×37.32×1.05 mm) | Mechanical/ datasheet |
| Lid | Case (course-provided) | Mechanical/InkTime_Case.f3z |

### 3D Files

- **`Mechanical/InkTime_Assembly.step`**: Exploded-view STEP file (ISO 10303-21 AP214) with 27 geometric primitives — case, display bezel+screen, PCB with 17 major components as bumps, shaker motor, battery with label, strap attachments. Opens in any CAD/STEP viewer.
- **`Mechanical/InkTime_Assembly.f3z`**: Fusion 360 archive (complete-assembly authoring file).
- **`Mechanical/InkTime_Case.f3z`**: Original case reference.

The battery, display, and shaker 3D models are represented as dimensional blocks; final Fusion 360 assembly refines these to match the actual physical parts using their datasheets:
- [AKY0106 battery datasheet](https://www.tme.eu/Document/b9e12bf26ad0ba929a22ab5d58f022cd/AKY0106.pdf)
- [WSH-12561 display datasheet](https://www.tme.eu/Document/0ca57a8ffbcd57b5bca53252eb9d6ec3/WSH-12561.pdf)
- [FIT0774 motor](https://www.tme.eu/ro/details/df-fit0774/motoare-dc/dfrobot/fit0774/)

---

## Manufacturing

All manufacturing files in `Manufacturing/`:

- **`gerbers.zip`** — RS-274X Gerber files + Excellon drill for JLCPCB:
  - `InkTime-Edge_Cuts.gbr` — board outline
  - `InkTime-F_Cu.gbr` / `InkTime-B_Cu.gbr` — top/bottom copper
  - `InkTime-F_Silkscreen.gbr` / `InkTime-B_Silkscreen.gbr`
  - `InkTime-F_Mask.gbr` / `InkTime-B_Mask.gbr`
  - `InkTime-F_Paste.gbr` / `InkTime-B_Paste.gbr`
  - `InkTime.drl` — drill hits, 7 tool diameters
- **`InkTime.bom`** (also `.csv`) — 50 unique groups × 112 designators, JLCPCB format with LCSC part #s
- **`InkTime.cpl`** (also `.csv`) — 112 rows with Mid X, Mid Y, Rotation, Layer (all Top)
- **`jlcpcb-2layers.dru`** — DRC rules file (load in EAGLE for DRC)

### Fabrication parameters for JLCPCB

| Option | Value |
|--------|:---:|
| Layers | 2 |
| Dimensions | ~46 × 35 mm |
| Thickness | **1 mm** |
| PCB color | Green |
| Silkscreen | White |
| Surface finish | ENIG |
| Copper weight | 1 oz |
| Min hole | 0.2 mm |
| Castellated holes | No |
| Special shape | Yes (rounded-rect with cutouts) |

---

## Repository Structure

```
InkTime/
├── Hardware/
│   ├── InkTime.sch           # EAGLE schematic (AP214 XML, ~6,400 lines)
│   ├── InkTime.brd           # EAGLE board layout (~5,000 lines)
│   ├── InkTime_v5.lbr        # Component library (provided by course)
│   └── InkTime.fbrd          # Board dimensions / mechanical outline reference
├── Manufacturing/
│   ├── gerbers.zip           # Production Gerbers + drill
│   ├── InkTime.bom           # Bill of materials
│   ├── InkTime.cpl           # Pick-and-place
│   ├── InkTime_BOM.csv       # BOM in CSV (for JLCPCB upload)
│   ├── InkTime_CPL.csv       # CPL in CSV (for JLCPCB upload)
│   ├── jlcpcb-2layers.dru    # DRC rules for EAGLE
│   ├── generate_mfg_files.py # Regenerator script
│   └── generate_gerbers.py   # Gerber generator
├── Mechanical/
│   ├── InkTime_Assembly.step # Exploded 3D view (STEP AP214)
│   ├── InkTime_Assembly.f3z  # Fusion 360 archive for assembly
│   ├── InkTime_Case.f3z      # Original case reference
│   ├── generate_step.py      # STEP generator
│   ├── verify_step.py        # STEP validator
│   └── README.md             # 3D model documentation
├── Images/                    # PCB renders, assembly screenshots
├── LICENSE                    # Apache 2.0
└── README.md                  # This file
```

---

## Development Log

Chronological record of implementation steps, problems encountered, and decisions taken during development:

### Phase 1 — Schematic capture
- **Step 1**: Imported `inktime_v5.lbr` library and translated the reference schematic PDF into an EAGLE `.sch` file with 177 parts (including 61 GND symbols and 2 sheet frames).
- **Step 2**: Validated all net connections against the reference schematic. Verified pin assignments for I²C, SPI, USB, SWD, interrupts.
- **Step 3**: Ran the schematic design review checklist (azonenberg/pcb-checklist).

### Phase 2 — Schematic review fixes

During schematic review, **6 hard-fail items** were identified and fixed:

1. **Missing open-drain pull-ups** — added R_PMIC_INT (100K on BQ25180 !INT) and R_ALERT (100K on MAX17048 !ALERT) — without these, the interrupt lines would float.
2. **No RESET line protection** — added R_RESET (10K pull-up) + C_RESET (100 nF filter) for ESD/noise immunity.
3. **No VBUS overcurrent protection** — added F1 (0 Ω fuse placeholder) allowing population with a PTC during production.
4. **No VBUS overvoltage protection** — added D_TVS (MBR0530 reverse-biased to GND) to clamp transients.
5. **Missing TP_VBUS test point** — added for debugging.
6. **Capacitor voltage ratings** not annotated — updated all capacitor values: 3V3-domain → `/10V`, VBUS-domain → `/16V`, EPD → `/50V`, charger filter → `/25V`. Crystal tolerances also specified (X1: ±10 ppm, X2: ±20 ppm).

### Phase 3 — Board layout

- **Step 4**: Created initial PCB layout using the provided `InkTime.fbrd` reference geometry (46×35 mm rounded-rect with button/USB cutouts).
- **Step 5**: Placed 112 components on TOP layer using functional grouping (MCU center, charger/DC-DC top-left, EPD left, antenna bottom-right, etc.).
- **Step 6**: Added ground-plane polygon pours on both layers.
- **Step 7**: Added antenna keep-out polygon (`pour="cutout"`) on layers 1, 15, 16 to prevent copper or signals under the 2450AT18B100E antenna.

### Phase 4 — Board review fixes

Ran the PCB layout review checklist; **6 hard-fail items** identified and fixed:

1. **Stackup**: Changed `mtIsolate` from default 1.6 mm to **1 mm** FR4 (per project spec).
2. **No fiducials** → added 3 fiducials (asymmetric pattern) with copper pads on Top layer and 1 mm mask clearance, labeled FID1/FID2/FID3.
3. **No layer markers** → added "L1" on Top silkscreen and "L2" on Bottom silkscreen at the same (x, y).
4. **No board finish note** → added "FINISH: ENIG / 1mm FR4" on silkscreen.
5. **No mounting hole documentation** → added "NO MTG HOLES (case snap-fit)" silkscreen note.
6. **No serial number area** → added drawn box with "S/N:" label for sticker application.

### Phase 5 — Incremental refinements

- **Via stitching**: added 22 GND vias spread around the board (avoiding antenna cutout, buttons, USB area) for improved EMC. Via count went from 125 → 147.
- **Color theme**: changed from default red/blue to teal/cyan/yellow/pink for easier visual distinction during review (Top=3 teal, Bottom=11 cyan, Pads/Vias=14 yellow, Keepouts=11/13 pink).
- **8 functional groups** added with `grouprefs` on 102 elements (MCU_CORE, RF_FRONTEND, POWER_PATH, USB_PORT, EPD_INTERFACE, UI_IO, DEBUG_TEST, PROTECTION).
- **20 silkscreen annotations** added (InkTime v7 logo, block labels, pin markers, legend box).
- **3 name mismatches** fixed between schematic and board: `J5→J2`, `DMG2305UX-7→Q1`, `C1_EP_DR→C1-EP-DR` (inherited from reference files).

### Phase 6 — Manufacturing files

- **Step 8**: Wrote Python `generate_mfg_files.py` to parse the schematic + board and emit JLCPCB-compatible BOM (50 groups, 112 designators) and CPL (112 rows).
- **Step 9**: Wrote Python `generate_gerbers.py` to extract Gerber/Excellon files from the .brd XML. Produces 9 Gerber files + 1 drill file with proper aperture definitions.
- **Step 10**: Verified LCSC part numbers for all 44 components that are available on JLCPCB assembly service.

### Phase 7 — Mechanical

- **Step 11**: Wrote Python `generate_step.py` to emit a STEP (ISO 10303-21 AP214) exploded-view assembly file. Initial version produced 5 boxes (case, PCB, display, battery, shaker).
- **Step 12**: Enhanced to 27 boxes including 17 major PCB components (U1 nRF52840, connectors, crystals, ICs, buttons) placed at their actual board coordinates. File opens in any STEP viewer.
- **Step 13**: Kept the course-provided `InkTime_Case.f3z` as the Fusion 360 authoring source.

### Problems and Workarounds

| Problem | Root cause | Resolution |
|---------|-----------|------------|
| `<contactref pad="...">` had space-separated pad list (not accepted by EAGLE) | nRF52840 library `<connect>` maps `VSS_PAD` → 17 thermal pads in one entry | Split into 17 separate `<contactref>` entries in the .brd |
| First detailed STEP version opened empty in viewers | Complex rounded-corner / cutout topology had face-winding issues | Reverted to simple axis-aligned rectangular boxes — proven to render correctly |
| Schematic/board name mismatches | Reference .brd used different naming than our .sch | Applied sed-based rename: `J5→J2`, `DMG2305UX-7→Q1`, `C1_EP_DR→C1-EP-DR` + all `contactref` updates |
| "Cap voltage ratings missing" review finding | Default EAGLE part values are just capacitance | Updated all 30+ capacitor values to include voltage: e.g. `100nF → 100nF/10V`, `1uF → 1uF/16V` for VBUS caps |
| Red color theme too similar across reference files | Default EAGLE layer colors | Changed Top (layer 1) from color 4 (red) to color 3 (teal), plus 9 other layers (Bottom → cyan, Pads/Vias → yellow, Keepouts → pink) |

### Accepted design exceptions

- **Dimension errors from buttons/USB-C placement**: accepted per project spec (these are mechanical constraints, not electrical errors).
- **"Only INPUT pins on NET ID"** ERC warning: accepted per project spec (toolchain quirk).
- **0 Ω resistor as F1 fuse placeholder**: acceptable for prototype — PTC can be population variant.
- **MBR0530 Schottky as TVS clamp**: not ideal (a dedicated TVS diode like PESD5V0S1UB would be better), but MBR0530 is available in the project's embedded library and clamps adequately at ~30 V.

---

## Design Decisions

Summary of major architectural choices and why they were made:

1. **Battery connection via test pads (no JST connector)**
   - Saves ~5 mm of space inside the watch
   - Simplifies manufacturing (no through-hole connector)
   - Trade-off: less user-swappable, requires soldering

2. **Shared I²C bus with 3K3 pull-ups**
   - Minimizes MCU pin usage (2 pins for 5 slaves)
   - 3K3 pull-ups balance speed (400 kHz OK) vs. power
   - All 5 slave addresses are unique, no conflicts

3. **E-paper power gated via Q1 P-MOSFET**
   - E-paper can be fully powered down between refreshes
   - Reduces standby current to effectively zero
   - Trade-off: P1.01 pin dedicated to this function

4. **0201 passives wherever possible**
   - Minimizes board area (critical for 46×35 mm form factor)
   - Trade-off: harder to hand-solder (but OK for JLCPCB assembly)

5. **RT6160 buck-boost over LDO**
   - Maintains 3.3 V output across full LiPo range (3.0-4.2 V)
   - ~95% efficiency vs. ~70% for LDO at 4.2 V input
   - Extends battery life by ~30%

6. **nRF52840's internal DC-DC used (not LDO)**
   - ~30% lower current consumption in active mode
   - Requires L3 (10 µH), C15 (1 µF), C16 (47 nF), and L2 (15 nH) external components
   - Per Nordic reference design

7. **Chip antenna over PCB trace antenna**
   - Smaller PCB area (3×1.6 mm vs. ~25 mm trace)
   - Pre-tuned for 2.4 GHz (no RF simulation needed)
   - Still requires Pi-matching network (4 components)

8. **Tag-Connect (no JTAG header) for SWD**
   - Saves ~15 mm of PCB area (no 10-pin 0.05" header)
   - Tag-Connect pogo-pin cable is standard development accessory
   - Trade-off: specialty cable needed (~$50)

9. **TVS clamp + 0 Ω fuse instead of full protection IC**
   - Adequate for prototype-level protection
   - Allows population with PTC fuse at production time
   - Cost-effective for student project (MBR0530 in library)

10. **Color theme / silkscreen branding**
    - Distinct visual identity aids team communication during review
    - Traceability markings (rev, date) meet DFM checklist
    - Teal/cyan/yellow/pink theme avoids confusion with red/green defaults

---

## Renderings

PCB and assembly renders are placed in `Images/`. To regenerate:

### From Fusion 360
1. Open `Mechanical/InkTime_Assembly.f3z`
2. Switch to **Render** workspace
3. Set materials (FR4 for PCB, aluminum for case, etc.)
4. Click **In-canvas Render** and save as PNG
5. Repeat with different camera angles (top, bottom, exploded, assembled)

### From EAGLE (board views)
1. Open `Hardware/InkTime.brd` in EAGLE
2. File → Export → Image
3. Select Top / Bottom layer visibility
4. Save as PNG

### Recommended renderings
- `Images/pcb-top.png` — PCB top layer (routed traces + silkscreen)
- `Images/pcb-bottom.png` — PCB bottom layer (GND pour + bottom silkscreen)
- `Images/3d-pcb.png` — 3D render of PCB only
- `Images/3d-exploded.png` — Exploded assembly view
- `Images/3d-assembled.png` — Fully assembled watch

---

## Build Instructions

### Opening the project in Fusion 360

1. **Install Autodesk Fusion 360** (free for personal/student use)
2. **Open schematic**: File → Open → `Hardware/InkTime.sch`
3. **Open board**: From the schematic, click "Switch to Board" or open `Hardware/InkTime.brd` directly
4. **Load library**: Ensure `InkTime_v5.lbr` is in the library path

### Verification workflow (before manufacturing)

1. **ERC** (Electrical Rules Check):
   ```
   Schematic → Tools → ERC
   ```
   - All errors must be resolved
   - "Only INPUT pins on NET ID" warning can be ignored

2. **DRC** (Design Rules Check):
   ```
   Board → Tools → DRC → Load `Manufacturing/jlcpcb-2layers.dru`
   ```
   - Dimension errors from buttons/USB placement are acceptable

### Regenerating manufacturing files

Python scripts are provided to regenerate BOM, CPL, and Gerbers from the .sch / .brd:

```bash
cd Manufacturing
py generate_mfg_files.py    # Updates InkTime.bom and InkTime.cpl
py generate_gerbers.py      # Updates gerbers.zip

cd ../Mechanical
py generate_step.py         # Updates InkTime_Assembly.step
py verify_step.py           # Validates the STEP file
```

For production Gerbers, use Fusion 360's **CAM Processor** with the `jlcpcb.cam` template instead (more rigorously validated).

### Ordering from JLCPCB

1. Upload `Manufacturing/gerbers.zip`
2. Select options: 2 layers, **1 mm thickness**, green mask, white silk, ENIG finish
3. Enable **PCBA** (assembly) service
4. Upload `InkTime.bom` and `InkTime.cpl`
5. Review BOM — any parts without LCSC # require hand-soldering
6. Confirm and order

---

## License

This project is licensed under the **Apache License 2.0** — see [LICENSE](LICENSE) for full text.

You are free to use, modify, and distribute this design for commercial or non-commercial purposes, subject to the terms of the license (attribution required, no warranty).

---

## Credits

- Course: **Tehnici și Sisteme CAD/CAE (TSC)** — UPB 2026
- Reference schematic: Dan Tudose (course instructor)
- Component library: `inktime_v5.lbr` (course-provided)
- Case model: course-provided
- MCU: Nordic Semiconductor nRF52840
- Display: Waveshare WSH-12561
- Battery: Akyga AKY0106
- Vibration motor: DFRobot FIT0774
