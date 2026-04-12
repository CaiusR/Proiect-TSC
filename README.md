# InkTime - Open Source Smartwatch

InkTime is an affordable, open-source smartwatch built around the Nordic nRF52840 SoC with an e-paper display, designed for mass production.

## Block Diagram

```
                                    +-------------------+
                                    |   E-Paper Display |
                                    |  1.54" 200x200px  |
                                    |    (WSH-12561)    |
                                    +--------+----------+
                                             |
                                       SPI (MOSI, SCK)
                                       + Control (CS, DC,
                                         RST, BUSY)
                                             |
+----------+    VBUS     +-----------+  SYS  +------------------+        I2C (SCL, SDA)
| USB-C    +------------>| BQ25180   +------>| RT6160AWSC       +---+-------------------------+
| (KH-TYPE |   D+/D-    | LiPo      | VREG  | DC/DC Buck-Boost |   |    3V3                  |
| -C-16P)  +---+------->| Charger   |       | 3.3V Output      |   |                         |
+----------+   |        +-----+-----+       +------------------+   |                         |
               |              | BAT                                 |                         |
               |              v                                     |                         |
               |        +-----+-----+                              |                         |
               |        | LiPo      |                    +---------+---------+                |
               |        | Battery   |                    |    nRF52840       |    I2C     +---+-------+
               |        | 3.7V      |                    |    (QFN 7x7mm)   +----------->| BMA423    |
               |        | 250mAh   |                    |                   |            | IMU       |
               |        +-----------+                    |  - BLE 5.0       |            | Accel.    |
               |              |                          |  - ARM Cortex-M4 |            +-----------+
               |              v                          |  - 1MB Flash     |
               |        +-----+-----+                   |  - 256KB RAM     |    I2C     +-----------+
               |        | MAX17048  |      I2C           |                   +----------->| DRV2605   |
               |        | Fuel      +<------------------>+  USB 2.0         |            | Haptic    |
               |        | Gauge     |                    |                   |            | Driver    |
               |        +-----------+                    |  32MHz + 32kHz   |            +-----+-----+
               |                                         |  Crystals        |                  |
               |   +---+                                 |                   |            +-----+-----+
               |   |ESD|  USBLC6-2SC6Y                   +---+---+---+------+            | Vibration |
               +-->|   |                                     |   |   |                   | Motor     |
                   +---+                                     |   |   |                   +-----------+
                                                             |   |   |
                                                     +------++  |  ++------+
                                                     |BTN_UP |  |  |BTN_DN|
                                                     +-------+  |  +------+
                                                            +----+----+
                                                            |BTN_ENT  |
                                                            +---------+
                                                    
                                          2.4GHz Chip Antenna
                                          (2450AT18B100E)
                                                |
                                          Matching Network
                                          (L1, C3, C4, C9)
```

## Bill of Materials (BOM)

| # | Component | Designator | Value/Part | Package | Qty | Datasheet | JLC Parts |
|---|-----------|-----------|------------|---------|-----|-----------|-----------|
| 1 | MCU | U1 | nRF52840-QIAA | QFN-73 7x7mm | 1 | [Datasheet](https://infocenter.nordicsemi.com/pdf/nRF52840_PS_v1.8.pdf) | [C190794](https://jlcpcb.com/partdetail/Nordic_Semiconductor-NRF52840_QIAA_R7/C190794) |
| 2 | DC/DC Converter | IC9 | RT6160AWSC | BGA-15 1.4x2.3mm | 1 | [Datasheet](https://www.richtek.com/assets/product_file/RT6160A/DS6160A-05.pdf) | [C2682941](https://jlcpcb.com/partdetail/C2682941) |
| 3 | LiPo Charger | IC1 | BQ25180YBGR | BGA-8 1.0x1.55mm | 1 | [Datasheet](https://www.ti.com/lit/ds/symlink/bq25180.pdf) | [C2064810](https://jlcpcb.com/partdetail/C2064810) |
| 4 | IMU/Accelerometer | IC3 | BMA423 | LGA-12 2x2mm | 1 | [Datasheet](https://www.bosch-sensortec.com/media/boschsensortec/downloads/datasheets/bst-bma423-ds000.pdf) | [C437656](https://jlcpcb.com/partdetail/C437656) |
| 5 | Fuel Gauge | U3 | MAX17048G+T10 | DFN-8 2x2mm | 1 | [Datasheet](https://datasheets.maximintegrated.com/en/ds/MAX17048-MAX17049.pdf) | [C116543](https://jlcpcb.com/partdetail/C116543) |
| 6 | Haptic Driver | IC2 | DRV2605YZFR | BGA-9 1.44x1.44mm | 1 | [Datasheet](https://www.ti.com/lit/ds/symlink/drv2605.pdf) | [C527436](https://jlcpcb.com/partdetail/C527436) |
| 7 | ESD Protection | D3 | USBLC6-2SC6Y | SOT-23-6 | 1 | [Datasheet](https://www.st.com/resource/en/datasheet/usblc6-2.pdf) | [C7519](https://jlcpcb.com/partdetail/C7519) |
| 8 | P-MOSFET | Q1 | DMG2305UX-7 | SOT-23-3 | 1 | [Datasheet](https://www.diodes.com/assets/Datasheets/DMG2305UX.pdf) | [C145093](https://jlcpcb.com/partdetail/C145093) |
| 9 | N-MOSFET | Q3 | SI1308EDL-T1-GE3 | SOT-323-3 | 1 | [Datasheet](https://www.vishay.com/docs/63399/si1308edl.pdf) | [C191043](https://jlcpcb.com/partdetail/C191043) |
| 10 | Schottky Diode | D2, D4, D5 | MBR0530 | SOD-323 | 3 | [Datasheet](https://www.onsemi.com/pdf/datasheet/mbr0530-d.pdf) | [C95872](https://jlcpcb.com/partdetail/C95872) |
| 11 | 2.4GHz Antenna | ANT1 | 2450AT18B100E | 3216 | 1 | [Datasheet](https://www.johansontechnology.com/datasheets/2450AT18B100/2450AT18B100.pdf) | [C504989](https://jlcpcb.com/partdetail/C504989) |
| 12 | 32MHz Crystal | X1 | 32MHz | 2016 | 1 | - | [C255909](https://jlcpcb.com/partdetail/C255909) |
| 13 | 32.768kHz Crystal | X2 | 32.768kHz | 3215 | 1 | - | [C181095](https://jlcpcb.com/partdetail/C181095) |
| 14 | Inductor 4.7uH | L7 | FTC252012SR47MBCA | 2012 | 1 | - | [C5121938](https://jlcpcb.com/partdetail/C5121938) |
| 15 | Inductor 3.9nH | L1 | 3.9nH | 0201 | 1 | - | [C75803](https://jlcpcb.com/partdetail/C75803) |
| 16 | Inductor 15nH | L2 | 15nH | 0201 | 1 | - | [C171128](https://jlcpcb.com/partdetail/C171128) |
| 17 | Inductor 10uH | L3 | 10uH | 0402 | 1 | - | [C272134](https://jlcpcb.com/partdetail/C272134) |
| 18 | Inductor 68uH | L5 | 68uH | 4828 | 1 | - | [C339764](https://jlcpcb.com/partdetail/C339764) |
| 19 | USB-C Connector | J4 | KH-TYPE-C-16P | USB-C-16P | 1 | - | [C2765186](https://jlcpcb.com/partdetail/C2765186) |
| 20 | E-Paper FPC Connector | J1 | 503480-2400 | FPC-24P-0.5mm | 1 | - | [C148419](https://jlcpcb.com/partdetail/C148419) |
| 21 | SWD Debug Connector | J2 | TC2030-IDC | TC2030 | 1 | - | N/A (Tag-Connect) |
| 22 | Push Button | SW_UP, SW_DN, SW_ENT | EVP-AKE31A | Side-actuated | 3 | - | [C479756](https://jlcpcb.com/partdetail/C479756) |
| 23 | Capacitor 100nF | C5, C7, C8, C12, C19 | 100nF | 0201 | 5 | - | [C2181068](https://jlcpcb.com/partdetail/C2181068) |
| 24 | Capacitor 12pF | C1, C2, C17, C18 | 12pF | 0201 | 4 | - | [C2181049](https://jlcpcb.com/partdetail/C2181049) |
| 25 | Capacitor 1pF | C3, C9 | 1pF | 0201 | 2 | - | [C2181030](https://jlcpcb.com/partdetail/C2181030) |
| 26 | Capacitor 820pF | C4 | 820pF | 0201 | 1 | - | [C2181065](https://jlcpcb.com/partdetail/C2181065) |
| 27 | Capacitor 100pF | C11 | 100pF | 0201 | 1 | - | [C2181060](https://jlcpcb.com/partdetail/C2181060) |
| 28 | Capacitor 4.7uF | C6, C14, C20, C21, C43 | 4.7uF | 0402 | 5 | - | [C23733](https://jlcpcb.com/partdetail/C23733) |
| 29 | Capacitor 10uF | C15, C24, C39 | 10uF | 0402 | 3 | - | [C15525](https://jlcpcb.com/partdetail/C15525) |
| 30 | Capacitor 47nF | C16 | 47nF | 0201 | 1 | - | [C2181067](https://jlcpcb.com/partdetail/C2181067) |
| 31 | Capacitor 0.1uF | C23, C27, C34, C42 | 0.1uF | 0201/0402 | 4 | - | [C2181068](https://jlcpcb.com/partdetail/C2181068) |
| 32 | Capacitor 22uF | C25, C33 | 22uF | 0402 | 2 | - | [C159770](https://jlcpcb.com/partdetail/C159770) |
| 33 | Capacitor 1uF | C37, C38, C29-C32 | 1uF | 0201/0402 | 6 | - | [C52923](https://jlcpcb.com/partdetail/C52923) |
| 34 | Capacitor 1uF/50V (EPD) | EPD_C1-C12 | 1uF/50V | 0402 | 10 | - | [C52923](https://jlcpcb.com/partdetail/C52923) |
| 35 | Capacitor 0.1uF/50V (EPD) | C2-EP-DR | 0.1uF/50V | 0402 | 1 | - | [C307331](https://jlcpcb.com/partdetail/C307331) |
| 36 | Capacitor 4.7uF/25V (EPD) | C1-EP-DR | 4.7uF/25V | 0402 | 1 | - | [C23733](https://jlcpcb.com/partdetail/C23733) |
| 37 | Resistor 3K3 | R17, R18 | 3.3K | 0201 | 2 | - | [C2181095](https://jlcpcb.com/partdetail/C2181095) |
| 38 | Resistor 10K | R9, R_PWR_EPD, R5, R7, R8, R2_EP_DR | 10K | 0201 | 6 | - | [C2181088](https://jlcpcb.com/partdetail/C2181088) |
| 39 | Resistor 0 Ohm | R2, R3, R4 | 0R | 0201 | 3 | - | [C2181070](https://jlcpcb.com/partdetail/C2181070) |
| 40 | Resistor 5K1 | R1_USB, R2_USB | 5.1K | 0201 | 2 | - | [C2181099](https://jlcpcb.com/partdetail/C2181099) |
| 41 | Resistor 2.2 Ohm | R_TYPE_SEL | 2.2R | 0201 | 1 | - | [C2181072](https://jlcpcb.com/partdetail/C2181072) |
| 42 | Resistor 0.47 Ohm | R1_EP_DR | 0.47R | 0201 | 1 | - | [C2181071](https://jlcpcb.com/partdetail/C2181071) |
| 43 | Solder Jumper | SJ1 | SJ | - | 1 | - | N/A |

## Hardware Description

### System Architecture

InkTime is built around the **Nordic nRF52840** System-on-Chip featuring:
- ARM Cortex-M4F processor at 64MHz
- 1MB Flash / 256KB RAM
- Bluetooth 5.0 / BLE
- USB 2.0 Full Speed
- Integrated DC-DC converter

### Power Management

The power architecture consists of three stages:

1. **USB-C Input (VBUS = 5V)**: Power enters through a KH-TYPE-C-16P USB-C connector (J4) with ESD protection (USBLC6-2SC6Y D3). Two 5.1K resistors (R1_USB, R2_USB) on CC1/CC2 lines identify the device as a UFP (sink).

2. **Battery Charging (BQ25180YBGR - IC1)**: Single-cell LiPo charger that manages charging from USB and provides the SYS output (VREG). The charger connects to a 3.7V 250mAh LiPo battery (LP502030). The battery is directly soldered to test pads (TP_VBAT, TP_BAT_GND) to save space (no JST connector).

3. **Voltage Regulation (RT6160AWSC - IC9)**: Buck-boost converter that generates a stable 3.3V (3V3) output from the VREG rail. Uses a 4.7uH inductor (L7, FTC252012SR47MBCA) and output capacitors (22uF x2). The RT6160 supports I2C for voltage configuration via SCL/SDA (shared I2C bus). Input/output decoupling: C23 (0.1uF input), C24 (10uF input), C25+C33 (22uF output).

### Power Consumption Estimate

| State | Current (3.3V) | Notes |
|-------|---------------|-------|
| nRF52840 Active (CPU) | ~3.5 mA | Running at 64MHz |
| nRF52840 BLE TX | ~5.3 mA | 0 dBm output |
| nRF52840 System OFF | ~0.4 uA | RAM retention |
| E-Paper Refresh | ~26.4 mW | ~8 mA during 2s full refresh |
| E-Paper Standby | <0.017 mW | Ultra-low, <5 uA |
| BMA423 Low Power | ~14 uA | Step counter mode |
| MAX17048 | ~23 uA | Continuous monitoring |
| DRV2605 Standby | ~1 uA | EN pin low |
| DRV2605 Active | ~2.5 mA | During haptic feedback |

**Estimated battery life**: With a 250mAh battery, assuming average 2mA current draw (BLE advertising + periodic display refresh + step counting), estimated battery life is approximately **5 days**.

### nRF52840 Internal DC-DC

The nRF52840's internal DC-DC converter is used and connected as follows:
- **L3 (10uH)**: Connected between DCC (pin B3) and DCCH (pin AB2)
- **C15 (10uF)**: Decoupling on DCC node
- **C16 (47nF)**: Decoupling on DCCH node
- DEC1 -> C5 (100nF), DEC3 -> C14 (4.7uF), DEC4+DEC5+DEC6 -> C6 (4.7uF)

### E-Paper Display

**Display**: Waveshare 1.54" e-paper (WSH-12561)
- Resolution: 200 x 200 pixels
- Interface: 4-wire SPI
- Refresh: 2s full / 0.3s partial
- Dimensions: 31.8 x 37.32 x 1.05 mm
- Active area: 27.6 x 27.6 mm

Connected via 24-pin FPC connector (503480-2400, J1). The display communicates over SPI and requires:
- SPI data lines (MOSI, SCK)
- Control signals (CS, DC, RST, BUSY)
- Separate 3.3V power rail (EPD_3V3) through MOSFET switch

**E-Paper Drive Circuit**: The display requires high-voltage drive signals generated by a boost converter circuit:
- Q1 (DMG2305UX-7, P-MOSFET): Controls EPD power supply
- Q3 (SI1308EDL-T1-GE3, N-MOSFET): Drive signal switching
- L5 (68uH inductor): Boost converter inductor
- D2, D4, D5 (MBR0530): Rectifier diodes for voltage generation
- Multiple 1uF/50V capacitors (EPD_C1-C12): Filter and storage capacitors for generated voltages (PREVGL, PREVGH, GDR, RESE)

### IMU (Accelerometer)

**Bosch BMA423 (IC3)**: 3-axis digital accelerometer
- Interface: I2C (shared bus)
- ASDA -> SDA, ASCL -> SCL
- SDO pin (address select) connected through R3 (0 ohm)
- CSB pin (SPI/I2C select) connected through R4 (0 ohm) to VDD (I2C mode)
- Two interrupt outputs: INT1, INT2
- Decoupling: C19 (100nF)
- Features: Step counter, activity recognition, tap detection

### Fuel Gauge

**Maxim MAX17048G+T10 (U3)**: LiPo fuel gauge
- Interface: I2C (shared bus)
- Directly monitors battery cell voltage (CELL pin -> VBAT)
- ALERT output for low-battery interrupt
- QSTRT pin for quick-start estimation
- Decoupling: C27 (0.1uF)

### Haptic Feedback

**TI DRV2605YZFR (IC2)**: Haptic driver
- Interface: I2C (shared bus)
- Enable: HAPTIC_EN from nRF52840
- Output: OUT+ / OUT- differential drive to vibration motor
- Motor: FIT0774 (10mm x 2.7mm coin motor), 1.5-4.2V, 50mA max
- Decoupling: C32 (1uF), C34 (0.1uF)

### Buttons

Three side-actuated push buttons (EVP-AKE31A):
- **SW_UP**: Navigation up
- **SW_DN**: Navigation down
- **SW_ENT**: Enter/Select

Each button has:
- 10K pull-up resistor (R5, R7, R8) to 3V3
- 1uF debounce capacitor (C29, C30, C31) to GND
- Active-low configuration (pressed = LOW)

### USB-C Interface

**Connector**: KH-TYPE-C-16P (J4)
- USB 2.0 Full Speed for charging and data
- ESD protection: USBLC6-2SC6Y (D3) on D+/D- lines
- CC1/CC2: 5.1K pull-down resistors (R1_USB, R2_USB) for UFP identification
- Solder jumper SJ1 for configuration

### Wireless (BLE)

**2.4GHz Antenna**: Johanson 2450AT18B100E chip antenna (ANT1)
- Matching network: L1 (3.9nH) + C3 (1pF) + C4 (820pF) + C9 (1pF)
- L2 (15nH) in the feed path
- Antenna placed at PCB edge with ground plane cutout underneath
- No traces routed under antenna area

### Debug Interface (SWD)

**Tag-Connect TC2030-IDC (J2)**: 6-pin pogo-pin debug interface
- Pin 1: VCC (3.3V)
- Pin 2: SWDIO
- Pin 3: RESET
- Pin 4: SWDCLK
- Pin 5: GND
- Pin 6: SWO

Test pads provided for all debug signals: TP_SWDIO, TP_SWDCLK, TP_RESET, TP_SWO, TP_3.3V, TP_GND.

### I2C Bus

Shared I2C bus connecting all peripherals:
- **nRF52840** (P0.26 = SCL, P0.27 = SDA)
- **RT6160AWSC** (IC9) - DC/DC voltage configuration
- **BQ25180** (IC1) - Battery charger status/config
- **BMA423** (IC3) - Accelerometer data
- **MAX17048** (U3) - Battery fuel gauge
- **DRV2605** (IC2) - Haptic driver control

Pull-up resistors: R17 (3.3K) on SCL, R18 (3.3K) on SDA, both to 3V3.

## nRF52840 Pin Assignment

| Pin | Signal | Direction | Function | Why this pin |
|-----|--------|-----------|----------|--------------|
| P0.00/XL1 | XL1 | - | 32.768kHz crystal input | Dedicated low-freq crystal pin |
| P0.01/XL2 | XL2 | - | 32.768kHz crystal output | Dedicated low-freq crystal pin |
| P0.02/AIN0 | - | - | Not connected | Reserved for future analog input |
| P0.03/AIN1 | - | - | Not connected | Reserved for future analog input |
| P0.04/AIN2 | - | - | Not connected | Reserved for future use |
| P0.05/AIN3 | EPD_BUSY | Input | E-Paper busy signal | GPIO input, no special requirement |
| P0.06 | EPD_DC | Output | E-Paper data/command select | GPIO output, no special requirement |
| P0.07 | EPD_CS | Output | E-Paper chip select (active low) | GPIO output, near SPI pins |
| P0.08 | PMIC_INT | Input | BQ25180 interrupt (active low) | GPIO input with internal pull-up |
| P0.09/NFC1 | - | - | Not connected | NFC pin reserved (could be used for NFC) |
| P0.10/NFC2 | - | - | Not connected | NFC pin reserved |
| P0.11 | IMU_INT2 | Input | BMA423 interrupt 2 | GPIO input, supports wake from sleep |
| P0.12 | HAPTIC_EN | Output | DRV2605 enable | GPIO output |
| P0.13 | SCK | Output | SPI clock for E-Paper | Can be assigned to any SPI-capable pin |
| P0.14 | MOSI | Output | SPI data to E-Paper | Can be assigned to any SPI-capable pin |
| P0.15 | EPD_RST | Output | E-Paper reset (active low) | GPIO output |
| P0.16 | ALERT | Input | MAX17048 battery alert (active low) | GPIO input |
| P0.17 | - | - | Not connected | Reserved |
| P0.18/RESET | RESET | Input | System reset | Dedicated reset pin |
| P0.19 | SW_UP | Input | Button Up (active low) | GPIO input with external pull-up |
| P0.20 | SW_DN | Input | Button Down (active low) | GPIO input with external pull-up |
| P0.21 | SW_ENT | Input | Button Enter (active low) | GPIO input with external pull-up |
| P0.22 - P0.25 | - | - | Not connected | Reserved for future use |
| P0.26 | SCL | Output | I2C Clock (shared bus) | Dedicated TWI/I2C capable pin |
| P0.27 | SDA | I/O | I2C Data (shared bus) | Dedicated TWI/I2C capable pin |
| P0.28 - P0.31 | - | - | Not connected | AIN4-AIN7, reserved for analog |
| P1.00 | - | - | Not connected | Reserved |
| P1.01 | EPD_PWR_EN | Output | E-Paper power MOSFET gate | Controls Q1 for EPD power |
| P1.02 | - | - | Not connected | Reserved |
| P1.03 - P1.07 | - | - | Not connected | Reserved |
| P1.08 | IMU_INT1 | Input | BMA423 interrupt 1 | GPIO input, supports wake from sleep |
| P1.09 | SWO | Output | Debug trace output | Supports SWO debug trace |
| P1.10 - P1.15 | - | - | Not connected | Reserved for future use |
| XC1, XC2 | - | - | 32MHz crystal | Dedicated high-freq crystal pins |
| ANT | RF | Output | Antenna feed | Dedicated RF output |
| D+ | USB_DP | I/O | USB Data+ | Dedicated USB pin |
| D- | USB_DN | I/O | USB Data- | Dedicated USB pin |
| VBUS | VBUS | Power | USB 5V input | Dedicated USB power detection |
| DCC | DCC | Power | Internal DC-DC (to L3) | Dedicated converter pin |
| DCCH | DCCH | Power | Internal DC-DC (from L3) | Dedicated converter pin |
| VDDH | VDDH | Power | High voltage domain | Connected to VREG via inductor |
| VDD (x5) | 3V3 | Power | 3.3V supply | Multiple power pins |
| VSS, VSS_PAD | GND | Power | Ground | Ground connections |
| DEC1-6 | - | Power | Decoupling nodes | Per nRF52840 reference design |
| DEC3V3 | - | Power | 3.3V decoupling | Per nRF52840 reference design |

## PCB Design Notes

### Physical Specifications
- **Board shape**: Circular, approximately 36mm diameter
- **Layers**: 2 (Top + Bottom)
- **PCB thickness**: 1.0mm (NOT standard 1.6mm)
- **Copper weight**: 1oz
- **Surface finish**: HASL or ENIG

### Design Rules
- **Power trace width**: 0.3mm (VBUS, VREG, 3V3, VBAT)
- **Signal trace width**: 0.15mm minimum
- **No right angles** on any traces (use 45-degree bends)
- **Via drill**: 0.2mm minimum
- **Clearance**: 0.1mm minimum

### Component Placement
- All components placed on **TOP layer only**
- Ground planes on both TOP and BOTTOM
- Via stitching between ground planes, especially near antenna area
- Decoupling capacitors (100nF) placed as close as possible to IC power pins
- Crystal X1 (32MHz) placed within 5mm of nRF52840 XC1/XC2 pins
- Crystal X2 (32.768kHz) placed within 5mm of nRF52840 XL1/XL2 pins

### Antenna Considerations
- 2450AT18B100E chip antenna placed at PCB edge
- **PCB cutout** under antenna (no copper, no ground plane, no traces)
- Keep-out zone enforced on both layers under antenna
- Matching network (L1, C3, C4, C9) placed between nRF52840 ANT pin and antenna
- Via stitching around antenna ground transition

### Silkscreen Guidelines
- Component names only (no values) on silkscreen
- All test pads clearly labeled (TP_MISO, TP_MOSI, TP_GND, etc.)
- Pin 1 indicators on all ICs
- Board revision and project name included

### DRC
- Design rules verified using JLCPCB 2-layer DRC file (jlcpcb-2layers.dru)
- "Only INPUT pins on NET ID" warnings can be ignored
- Dimension errors from button and USB placement are acceptable

## Design Decisions

1. **Battery connection**: Battery connects directly to test pads (no JST connector) to save space in the watch enclosure.

2. **I2C bus sharing**: All peripherals share a single I2C bus (SCL/SDA) with 3.3K pull-ups. This minimizes pin usage on the nRF52840 while all devices have unique I2C addresses.

3. **E-Paper power switching**: Q1 (P-MOSFET) allows complete power shutdown of the e-paper display when not refreshing, significantly reducing standby power.

4. **0201 passives**: Used for resistors and small capacitors (<=100nF) to minimize board area. Larger capacitors use 0402.

5. **RT6160 buck-boost**: Selected over a simple LDO to maximize battery life across the full LiPo voltage range (3.0V-4.2V) while providing stable 3.3V output.

6. **Antenna placement**: Chip antenna at PCB edge with ground plane cutout ensures good RF performance without external antenna.

## Repository Structure

```
InkTime/
  Hardware/
  |-- InkTime.sch          (EAGLE schematic)
  |-- InkTime.brd          (EAGLE board layout)
  |-- InkTime_v5.lbr       (Component library)
  Manufacturing/
  |-- gerbers.zip           (Gerber fabrication files)
  |-- InkTime_BOM.csv       (Bill of Materials - JLCPCB format)
  |-- InkTime_CPL.csv       (Pick and Place - JLCPCB format)
  Mechanical/
  |-- InkTime_assembly.step (3D assembly - exploded view)
  |-- InkTime_assembly.f3z  (Fusion360 3D project)
  Images/
  |-- (PCB renders and assembly images)
  LICENSE                    (Apache 2.0)
  README.md                  (This file)
```

## Build & Manufacturing

1. Open `Hardware/InkTime.sch` in Autodesk Fusion 360 (Electronics workspace) or EAGLE
2. Load the `InkTime_v5.lbr` library
3. Generate Gerber files following [this tutorial](https://www.pcbway.com/blog/PCB_Design_Tutorial/How_to_Generate_Gerber_Files_in_Fusion_360_7c039fbf.html)
4. Generate BOM and CPL following [this tutorial](https://jlcpcb.com/help/article/how-to-generate-bom-and-cpl-from-fusion360)
5. Upload to JLCPCB for PCB fabrication and assembly

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.
