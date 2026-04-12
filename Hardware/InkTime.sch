<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.7.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="yes" active="yes"/>
<layer number="2" name="Route2" color="16" fill="1" visible="yes" active="yes"/>
<layer number="3" name="Route3" color="17" fill="1" visible="yes" active="yes"/>
<layer number="4" name="Route4" color="18" fill="1" visible="yes" active="yes"/>
<layer number="5" name="Route5" color="19" fill="1" visible="yes" active="yes"/>
<layer number="6" name="Route6" color="25" fill="1" visible="yes" active="yes"/>
<layer number="7" name="Route7" color="26" fill="1" visible="yes" active="yes"/>
<layer number="8" name="Route8" color="27" fill="1" visible="yes" active="yes"/>
<layer number="9" name="Route9" color="28" fill="1" visible="yes" active="yes"/>
<layer number="10" name="Route10" color="29" fill="1" visible="yes" active="yes"/>
<layer number="11" name="Route11" color="30" fill="1" visible="yes" active="yes"/>
<layer number="12" name="Route12" color="20" fill="1" visible="yes" active="yes"/>
<layer number="13" name="Route13" color="21" fill="1" visible="yes" active="yes"/>
<layer number="14" name="Route14" color="22" fill="1" visible="yes" active="yes"/>
<layer number="15" name="Route15" color="23" fill="1" visible="yes" active="yes"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="yes"/>
<layer number="17" name="Pads" color="2" fill="1" visible="yes" active="yes"/>
<layer number="18" name="Vias" color="2" fill="1" visible="yes" active="yes"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="yes"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="yes" active="yes"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="yes"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="yes" active="yes"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="yes" active="yes"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="yes" active="yes"/>
<layer number="25" name="tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="26" name="bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="27" name="tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="28" name="bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="yes"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="yes"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="yes"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="yes"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="yes"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="yes"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="yes"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="yes"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="yes"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="yes"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="yes" active="yes"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="yes" active="yes"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="yes" active="yes"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="yes" active="yes"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="yes" active="yes"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="yes"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="yes"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="yes"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="yes"/>
<layer number="48" name="Document" color="7" fill="1" visible="yes" active="yes"/>
<layer number="49" name="Reference" color="7" fill="1" visible="yes" active="yes"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="InkTime_v5">
<description>InkTime Smartwatch Component Library v5</description>
</library>
</libraries>
<attributes>
<attribute name="TITLE" value="InkTime Smartwatch"/>
<attribute name="REVISION" value="5.0"/>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
<class number="1" name="power" width="0.254" drill="0">
</class>
</classes>
<parts>
<!-- Frame -->
<part name="FRAME1" library="InkTime_v5" deviceset="FRAMES_A3L-LOC" device="" value="InkTime - MCU/Power/IMU/SWD"/>
<part name="FRAME2" library="InkTime_v5" deviceset="FRAMES_A3L-LOC" device="" value="InkTime - EPD/Peripherals"/>
<!-- nRF52840 MCU -->
<part name="U1" library="InkTime_v5" deviceset="NORDIC_NRF_4_NRF52840_QF" device="" value="nRF52840"/>
<!-- DC/DC Converter -->
<part name="IC9" library="InkTime_v5" deviceset="RT6160AWSC_RT6160AWSC" device="" value="RT6160"/>
<!-- LiPo Charger -->
<part name="IC1" library="InkTime_v5" deviceset="BQ25180YBGR_BQ25180YBGR" device="" value="BQ25180"/>
<!-- IMU -->
<part name="IC3" library="InkTime_v5" deviceset="BMA423_BMA423" device="" value="BMA423"/>
<!-- Fuel Gauge -->
<part name="U3" library="InkTime_v5" deviceset="ESP32_C6_LIBRARY_MAX17048G+T10" device="" value="MAX17048"/>
<!-- Haptic Driver -->
<part name="IC2" library="InkTime_v5" deviceset="DRV2605YZFR_DRV2605YZFR" device="" value="DRV2605"/>
<!-- ESD Protection -->
<part name="D3" library="InkTime_v5" deviceset="ESP32_C6_LIBRARY_3_USBLC6-2SC6Y" device="" value="USBLC6-2SC6Y"/>
<!-- P-MOSFET -->
<part name="Q1" library="InkTime_v5" deviceset="ESP32_C6_LIBRARY_4_ESP32_WROVER_SPARKFUN-DISCRETESEMI_MOSFET_PCH" device="-DMG2305UX-7" value="DMG2305"/>
<!-- N-MOSFET -->
<part name="Q3" library="InkTime_v5" deviceset="ESP32_C6_LIBRARY_6_SI1308EDL-T1-GE3" device="" value="SI1308"/>
<!-- Schottky Diodes -->
<part name="D2" library="InkTime_v5" deviceset="ESP32_C6_LIBRARY_5_MBR0530" device="" value="MBR0530"/>
<part name="D4" library="InkTime_v5" deviceset="ESP32_C6_LIBRARY_5_MBR0530" device="" value="MBR0530"/>
<part name="D5" library="InkTime_v5" deviceset="ESP32_C6_LIBRARY_5_MBR0530" device="" value="MBR0530"/>
<!-- Antenna -->
<part name="ANT1" library="InkTime_v5" deviceset="2450AT18B100E_2450AT18B100E" device="" value="2450AT18B100"/>
<!-- Crystals -->
<part name="X1" library="InkTime_v5" deviceset="NORDIC_NRF_XTAL_32MHZ" device="" value="32MHz"/>
<part name="X2" library="InkTime_v5" deviceset="NORDIC_NRF_1_XTAL_32KHZ" device="" value="32.768kHz"/>
<!-- Inductors -->
<part name="L1" library="InkTime_v5" deviceset="NORDIC_NRF_2_INDUCTOR" device="_0201_L" value="3.9nH"/>
<part name="L2" library="InkTime_v5" deviceset="NORDIC_NRF_2_INDUCTOR" device="_0201_L" value="15nH"/>
<part name="L3" library="InkTime_v5" deviceset="NORDIC_NRF_2_INDUCTOR" device="_0402_L" value="10uH"/>
<part name="L5" library="InkTime_v5" deviceset="ESP32_C6_LIBRARY_2_744043680" device="IND_4828-WE-TPC_WRE" value="68uH"/>
<part name="L7" library="InkTime_v5" deviceset="MLP2016SR47MT0S1_FTC252012SR47MBCA" device="" value="4.7uH"/>
<!-- Connectors -->
<part name="J1" library="InkTime_v5" deviceset="503480-2400_503480-2400" device="" value="EPD FPC 24pin"/>
<part name="J4" library="InkTime_v5" deviceset="KH-TYPE-C-16P_KH-TYPE-C-16P" device="" value="USB-C"/>
<part name="J2" library="InkTime_v5" deviceset="TC2030-IDC_TC2030-IDC" device="" value="TC2030-IDC"/>
<!-- Buttons -->
<part name="SW_UP" library="InkTime_v5" deviceset="2025-10-22_07-23-44_LIBRARY_EVP-AKE31A" device="SW_EVP-AKE31A_PAN" value="EVP-AKE31A"/>
<part name="SW_DN" library="InkTime_v5" deviceset="2025-10-22_07-23-44_LIBRARY_EVP-AKE31A" device="SW_EVP-AKE31A_PAN" value="EVP-AKE31A"/>
<part name="SW_ENT" library="InkTime_v5" deviceset="2025-10-22_07-23-44_LIBRARY_EVP-AKE31A" device="SW_EVP-AKE31A_PAN" value="EVP-AKE31A"/>
<!-- Solder Jumper -->
<part name="SJ1" library="InkTime_v5" deviceset="ESP32_C6_LIBRARY_7_JUMPER_SJ" device="" value="SJ"/>
<!-- Capacitors - 0201 (<=100nF) -->
<part name="C1" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="12pF"/>
<part name="C2" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="12pF"/>
<part name="C3" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="0.8pF"/>
<part name="C4" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="0.5pF"/>
<part name="C5" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="100nF"/>
<part name="C7" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="100nF"/>
<part name="C8" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="100nF"/>
<part name="C9" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="1pF"/>
<part name="C10" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="100nF"/>
<part name="C11" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="100nF"/>
<part name="C12" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="100nF"/>
<part name="C13" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="100nF"/>
<part name="C17" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="12pF"/>
<part name="C18" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="12pF"/>
<part name="C19" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="100nF"/>
<part name="C20" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="100nF"/>
<part name="C21" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="100nF"/>
<part name="C22" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="100nF"/>
<part name="C23" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="100nF"/>
<part name="C24" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="47nF"/>
<!-- Capacitors - 0402 (>100nF) -->
<part name="C6" library="InkTime_v5" deviceset="PERFECT_0402_CAP_0402" device="" value="4.7uF"/>
<part name="C14" library="InkTime_v5" deviceset="PERFECT_0402_CAP_0402" device="" value="4.7uF"/>
<part name="C15" library="InkTime_v5" deviceset="PERFECT_0402_CAP_0402" device="" value="10uF"/>
<part name="C16" library="InkTime_v5" deviceset="NORDIC_NRF_3_CAPACITOR" device="_0201_L" value="47nF"/>
<part name="C25" library="InkTime_v5" deviceset="PERFECT_0402_CAP_0402" device="" value="10uF"/>
<part name="C26" library="InkTime_v5" deviceset="PERFECT_0402_CAP_0402" device="" value="10uF"/>
<part name="C27" library="InkTime_v5" deviceset="PERFECT_0402_CAP_0402" device="" value="10uF"/>
<part name="C28" library="InkTime_v5" deviceset="PERFECT_0402_CAP_0402" device="" value="4.7uF"/>
<part name="C29" library="InkTime_v5" deviceset="PERFECT_0402_CAP_0402" device="" value="1uF"/>
<part name="C30" library="InkTime_v5" deviceset="PERFECT_0402_CAP_0402" device="" value="1uF"/>
<part name="C31" library="InkTime_v5" deviceset="PERFECT_0402_CAP_0402" device="" value="1uF"/>
<part name="C32" library="InkTime_v5" deviceset="PERFECT_0402_CAP_0402" device="" value="1uF"/>
<part name="C33" library="InkTime_v5" deviceset="PERFECT_0402_CAP_0402" device="" value="4.7uF"/>
<!-- EPD 50V Capacitors -->
<part name="C34" library="InkTime_v5" deviceset="ESP32_C6_LIBRARY_1_ESP32_WROVER_EAGLE-LTSPICE_C" device="C0402" value="1uF/50V"/>
<part name="C35" library="InkTime_v5" deviceset="ESP32_C6_LIBRARY_1_ESP32_WROVER_EAGLE-LTSPICE_C" device="C0402" value="1uF/50V"/>
<part name="C36" library="InkTime_v5" deviceset="ESP32_C6_LIBRARY_1_ESP32_WROVER_EAGLE-LTSPICE_C" device="C0402" value="1uF/50V"/>
<part name="C37" library="InkTime_v5" deviceset="ESP32_C6_LIBRARY_1_ESP32_WROVER_EAGLE-LTSPICE_C" device="C0402" value="1uF/50V"/>
<!-- Resistors -->
<part name="R1" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="10K"/>
<part name="R2" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="10K"/>
<part name="R3" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="5.1K"/>
<part name="R4" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="5.1K"/>
<part name="R5" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="10K"/>
<part name="R6" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="100K"/>
<part name="R7" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="10K"/>
<part name="R8" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="10K"/>
<part name="R9" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="10K"/>
<part name="R10" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="100K"/>
<part name="R11" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="100K"/>
<part name="R12" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="3K3"/>
<part name="R13" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="1M"/>
<part name="R14" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="1M"/>
<part name="R15" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="10K"/>
<part name="R16" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="100K"/>
<part name="R17" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="4K7"/>
<part name="R18" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="4K7"/>
<part name="R19" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="10K"/>
<part name="R20" library="InkTime_v5" deviceset="CPF0201D7K68C1_CPF0201D7K68C1" device="" value="47K"/>
<!-- Test Pads -->
<part name="TP1" library="InkTime_v5" deviceset="HECTOR_WATCH_1_TP" device="TP20R" value="SWO"/>
<part name="TP2" library="InkTime_v5" deviceset="HECTOR_WATCH_1_TP" device="TP20R" value="SWDCLK"/>
<part name="TP3" library="InkTime_v5" deviceset="HECTOR_WATCH_1_TP" device="TP20R" value="SWDIO"/>
<part name="TP4" library="InkTime_v5" deviceset="HECTOR_WATCH_1_TP" device="TP20R" value="RESET"/>
<part name="TP5" library="InkTime_v5" deviceset="HECTOR_WATCH_1_TP" device="TP20R" value="VBAT"/>
<part name="TP6" library="InkTime_v5" deviceset="HECTOR_WATCH_1_TP" device="TP20R" value="3V3"/>
<part name="TP7" library="InkTime_v5" deviceset="HECTOR_WATCH_1_TP" device="TP20R" value="GND"/>
<!-- GND Symbols -->
<part name="GND1" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND2" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND3" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND4" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND5" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND6" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND7" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND8" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND9" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND10" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND11" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND12" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND13" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND14" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND15" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND16" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND17" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND18" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND19" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND20" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND21" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND22" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND23" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND24" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND25" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND26" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND27" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND28" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND29" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
<part name="GND30" library="InkTime_v5" deviceset="SUPPLY1_GND" device=""/>
</parts>
<sheets>
<!-- ============================================================ -->
<!-- SHEET 1: MCU, Power, IMU, SWD                                -->
<!-- ============================================================ -->
<sheet>
<description>MCU, Power, IMU, SWD</description>
<plain>
<text x="17.78" y="279.4" size="5.08" layer="97" font="vector">InkTime Smartwatch - Sheet 1: MCU / Power / IMU / SWD</text>
<text x="17.78" y="261.62" size="2.54" layer="97" font="vector">nRF52840 SoC</text>
<text x="17.78" y="134.62" size="2.54" layer="97" font="vector">Power Management</text>
<text x="228.6" y="261.62" size="2.54" layer="97" font="vector">RF Matching Network &amp; Antenna</text>
<text x="228.6" y="134.62" size="2.54" layer="97" font="vector">IMU (BMA423)</text>
<text x="330.2" y="261.62" size="2.54" layer="97" font="vector">SWD Debug / Test Points</text>
<text x="330.2" y="134.62" size="2.54" layer="97" font="vector">Buttons</text>
<text x="152.4" y="134.62" size="2.54" layer="97" font="vector">Fuel Gauge / Haptic Driver</text>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<!-- nRF52840 MCU - center of sheet -->
<instance part="U1" gate="G$1" x="101.6" y="203.2"/>
<!-- 32MHz Crystal -->
<instance part="X1" gate="X$1" x="55.88" y="228.6"/>
<instance part="C1" gate="C$1" x="45.72" y="233.68"/>
<instance part="C2" gate="C$1" x="45.72" y="223.52"/>
<!-- 32.768kHz Crystal -->
<instance part="X2" gate="X$1" x="55.88" y="185.42"/>
<instance part="C17" gate="C$1" x="45.72" y="190.5"/>
<instance part="C18" gate="C$1" x="45.72" y="180.34"/>
<!-- nRF52840 Decoupling Caps -->
<instance part="C5" gate="C$1" x="66.04" y="248.92"/>
<instance part="C6" gate="G$1" x="76.2" y="248.92"/>
<instance part="C14" gate="G$1" x="86.36" y="248.92"/>
<instance part="C7" gate="C$1" x="96.52" y="248.92"/>
<instance part="C8" gate="C$1" x="106.68" y="248.92"/>
<instance part="C24" gate="C$1" x="116.84" y="248.92"/>
<!-- DCC/DCCH Inductor and Caps -->
<instance part="L3" gate="L$1" x="50.8" y="254"/>
<instance part="C15" gate="G$1" x="40.64" y="248.92"/>
<instance part="C16" gate="C$1" x="60.96" y="259.08"/>
<!-- DEC3V3 Cap -->
<instance part="C19" gate="C$1" x="127" y="248.92"/>
<!-- VBUS Cap -->
<instance part="C20" gate="C$1" x="137.16" y="248.92"/>
<!-- RF Matching Network -->
<instance part="L1" gate="L$1" x="243.84" y="243.84"/>
<instance part="L2" gate="L$1" x="259.08" y="243.84"/>
<instance part="C3" gate="C$1" x="248.92" y="236.22"/>
<instance part="C4" gate="C$1" x="264.16" y="236.22"/>
<instance part="C9" gate="C$1" x="236.22" y="236.22"/>
<instance part="ANT1" gate="G$1" x="279.4" y="243.84"/>
<!-- Power: LiPo Charger BQ25180 -->
<instance part="IC1" gate="G$1" x="55.88" y="104.14"/>
<instance part="C25" gate="G$1" x="30.48" y="96.52"/>
<instance part="C26" gate="G$1" x="83.82" y="96.52"/>
<instance part="R6" gate="G$1" x="83.82" y="111.76" rot="R90"/>
<!-- Power: DC/DC RT6160 -->
<instance part="IC9" gate="G$1" x="55.88" y="60.96"/>
<instance part="L7" gate="G$1" x="55.88" y="78.74"/>
<instance part="C27" gate="G$1" x="83.82" y="53.34"/>
<instance part="C28" gate="G$1" x="93.98" y="53.34"/>
<instance part="R9" gate="G$1" x="30.48" y="71.12" rot="R90"/>
<!-- Fuel Gauge MAX17048 -->
<instance part="U3" gate="G$1" x="175.26" y="104.14"/>
<instance part="C32" gate="G$1" x="200.66" y="96.52"/>
<!-- Haptic Driver DRV2605 -->
<instance part="IC2" gate="G$1" x="175.26" y="60.96"/>
<instance part="C33" gate="G$1" x="200.66" y="53.34"/>
<instance part="R12" gate="G$1" x="200.66" y="68.58" rot="R90"/>
<!-- IMU BMA423 -->
<instance part="IC3" gate="G$1" x="261.62" y="104.14"/>
<instance part="C21" gate="C$1" x="292.1" y="96.52"/>
<instance part="C22" gate="C$1" x="302.26" y="96.52"/>
<instance part="R1" gate="G$1" x="233.68" y="116.84" rot="R90"/>
<!-- I2C Pull-ups -->
<instance part="R17" gate="G$1" x="139.7" y="165.1" rot="R90"/>
<instance part="R18" gate="G$1" x="149.86" y="165.1" rot="R90"/>
<!-- SWD Debug Header -->
<instance part="J2" gate="G$1" x="355.6" y="236.22"/>
<instance part="TP1" gate="G$1" x="337.82" y="251.46"/>
<instance part="TP2" gate="G$1" x="345.44" y="251.46"/>
<instance part="TP3" gate="G$1" x="353.06" y="251.46"/>
<instance part="TP4" gate="G$1" x="360.68" y="251.46"/>
<instance part="TP5" gate="G$1" x="368.3" y="251.46"/>
<instance part="TP6" gate="G$1" x="375.92" y="251.46"/>
<instance part="TP7" gate="G$1" x="383.54" y="251.46"/>
<instance part="R15" gate="G$1" x="370.84" y="226.06" rot="R90"/>
<!-- Buttons -->
<instance part="SW_UP" gate="A" x="345.44" y="114.3"/>
<instance part="SW_DN" gate="A" x="345.44" y="96.52"/>
<instance part="SW_ENT" gate="A" x="345.44" y="78.74"/>
<instance part="R5" gate="G$1" x="332.74" y="124.46" rot="R90"/>
<instance part="R7" gate="G$1" x="332.74" y="106.68" rot="R90"/>
<instance part="R8" gate="G$1" x="332.74" y="88.9" rot="R90"/>
<instance part="C29" gate="G$1" x="360.68" y="106.68"/>
<instance part="C30" gate="G$1" x="360.68" y="88.9"/>
<instance part="C31" gate="G$1" x="360.68" y="71.12"/>
<!-- USB-C Connector -->
<instance part="J4" gate="G$1" x="345.44" y="182.88"/>
<instance part="D3" gate="G$1" x="309.88" y="190.5"/>
<instance part="R3" gate="G$1" x="322.58" y="172.72" rot="R90"/>
<instance part="R4" gate="G$1" x="330.2" y="172.72" rot="R90"/>
<!-- GND symbols for sheet 1 -->
<instance part="GND1" gate="1" x="101.6" y="152.4"/>
<instance part="GND2" gate="1" x="45.72" y="215.9"/>
<instance part="GND3" gate="1" x="45.72" y="172.72"/>
<instance part="GND4" gate="1" x="55.88" y="86.36"/>
<instance part="GND5" gate="1" x="55.88" y="40.64"/>
<instance part="GND6" gate="1" x="248.92" y="226.06"/>
<instance part="GND7" gate="1" x="261.62" y="83.82"/>
<instance part="GND8" gate="1" x="175.26" y="86.36"/>
<instance part="GND9" gate="1" x="175.26" y="43.18"/>
<instance part="GND10" gate="1" x="345.44" y="167.64"/>
<instance part="GND11" gate="1" x="355.6" y="220.98"/>
<instance part="GND12" gate="1" x="30.48" y="86.36"/>
<instance part="GND13" gate="1" x="83.82" y="86.36"/>
<instance part="GND14" gate="1" x="83.82" y="43.18"/>
<instance part="GND15" gate="1" x="93.98" y="43.18"/>
<instance part="GND16" gate="1" x="200.66" y="86.36"/>
<instance part="GND17" gate="1" x="200.66" y="43.18"/>
<instance part="GND18" gate="1" x="292.1" y="86.36"/>
<instance part="GND19" gate="1" x="302.26" y="86.36"/>
<instance part="GND20" gate="1" x="360.68" y="96.52"/>
<instance part="GND21" gate="1" x="360.68" y="78.74"/>
<instance part="GND22" gate="1" x="360.68" y="60.96"/>
</instances>
<busses>
</busses>
<nets>
<!-- ==================== GND ==================== -->
<net name="GND" class="1">
<segment>
<pinref part="U1" gate="G$1" pin="VSS@B7"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="101.6" y1="157.48" x2="101.6" y2="154.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VSS_PAD"/>
<wire x1="101.6" y1="157.48" x2="101.6" y2="154.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C1" gate="C$1" pin="2"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="45.72" y1="228.6" x2="45.72" y2="218.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C18" gate="C$1" pin="2"/>
<pinref part="GND3" gate="1" pin="GND"/>
<wire x1="45.72" y1="175.26" x2="45.72" y2="175.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GND"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="55.88" y1="91.44" x2="55.88" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC9" gate="G$1" pin="AGND"/>
<pinref part="GND5" gate="1" pin="GND"/>
<wire x1="55.88" y1="48.26" x2="55.88" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC9" gate="G$1" pin="PGND_1"/>
<wire x1="55.88" y1="48.26" x2="55.88" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC9" gate="G$1" pin="PGND_2"/>
<wire x1="55.88" y1="48.26" x2="55.88" y2="43.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C3" gate="C$1" pin="2"/>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="248.92" y1="231.14" x2="248.92" y2="228.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C4" gate="C$1" pin="2"/>
<wire x1="264.16" y1="231.14" x2="264.16" y2="228.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C9" gate="C$1" pin="2"/>
<wire x1="236.22" y1="231.14" x2="236.22" y2="228.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="GND"/>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="261.62" y1="91.44" x2="261.62" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="GNDIO"/>
<wire x1="261.62" y1="91.44" x2="261.62" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="GND"/>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="175.26" y1="91.44" x2="175.26" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="EP"/>
<wire x1="175.26" y1="91.44" x2="175.26" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="GND"/>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="175.26" y1="48.26" x2="175.26" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="GND"/>
<pinref part="GND10" gate="1" pin="GND"/>
<wire x1="345.44" y1="172.72" x2="345.44" y2="170.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="SHIELD"/>
<wire x1="345.44" y1="172.72" x2="345.44" y2="170.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="3"/>
<pinref part="GND11" gate="1" pin="GND"/>
<wire x1="355.6" y1="228.6" x2="355.6" y2="223.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="5"/>
<wire x1="355.6" y1="228.6" x2="355.6" y2="223.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C25" gate="G$1" pin="2"/>
<pinref part="GND12" gate="1" pin="GND"/>
<wire x1="30.48" y1="91.44" x2="30.48" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C26" gate="G$1" pin="2"/>
<pinref part="GND13" gate="1" pin="GND"/>
<wire x1="83.82" y1="91.44" x2="83.82" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C27" gate="G$1" pin="2"/>
<pinref part="GND14" gate="1" pin="GND"/>
<wire x1="83.82" y1="48.26" x2="83.82" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C28" gate="G$1" pin="2"/>
<pinref part="GND15" gate="1" pin="GND"/>
<wire x1="93.98" y1="48.26" x2="93.98" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C32" gate="G$1" pin="2"/>
<pinref part="GND16" gate="1" pin="GND"/>
<wire x1="200.66" y1="91.44" x2="200.66" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C33" gate="G$1" pin="2"/>
<pinref part="GND17" gate="1" pin="GND"/>
<wire x1="200.66" y1="48.26" x2="200.66" y2="45.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C21" gate="C$1" pin="2"/>
<pinref part="GND18" gate="1" pin="GND"/>
<wire x1="292.1" y1="91.44" x2="292.1" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C22" gate="C$1" pin="2"/>
<pinref part="GND19" gate="1" pin="GND"/>
<wire x1="302.26" y1="91.44" x2="302.26" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SW_UP" gate="A" pin="2"/>
<wire x1="350.52" y1="114.3" x2="360.68" y2="114.3" width="0.1524" layer="91"/>
<pinref part="C29" gate="G$1" pin="2"/>
<wire x1="360.68" y1="114.3" x2="360.68" y2="101.6" width="0.1524" layer="91"/>
<pinref part="GND20" gate="1" pin="GND"/>
<wire x1="360.68" y1="101.6" x2="360.68" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SW_DN" gate="A" pin="2"/>
<wire x1="350.52" y1="96.52" x2="360.68" y2="96.52" width="0.1524" layer="91"/>
<pinref part="C30" gate="G$1" pin="2"/>
<wire x1="360.68" y1="96.52" x2="360.68" y2="83.82" width="0.1524" layer="91"/>
<pinref part="GND21" gate="1" pin="GND"/>
<wire x1="360.68" y1="83.82" x2="360.68" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SW_ENT" gate="A" pin="2"/>
<wire x1="350.52" y1="78.74" x2="360.68" y2="78.74" width="0.1524" layer="91"/>
<pinref part="C31" gate="G$1" pin="2"/>
<wire x1="360.68" y1="78.74" x2="360.68" y2="66.04" width="0.1524" layer="91"/>
<pinref part="GND22" gate="1" pin="GND"/>
<wire x1="360.68" y1="66.04" x2="360.68" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D3" gate="G$1" pin="GND"/>
<wire x1="309.88" y1="182.88" x2="309.88" y2="180.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VSS_PA@F23"/>
<wire x1="101.6" y1="157.48" x2="101.6" y2="154.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="TP7" gate="G$1" pin="TP"/>
<wire x1="383.54" y1="251.46" x2="383.54" y2="248.92" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== 3V3 ==================== -->
<net name="3V3" class="1">
<segment>
<pinref part="IC9" gate="G$1" pin="VOUT_1"/>
<wire x1="73.66" y1="66.04" x2="83.82" y2="66.04" width="0.1524" layer="91"/>
<pinref part="IC9" gate="G$1" pin="VOUT_2"/>
<wire x1="73.66" y1="63.5" x2="83.82" y2="63.5" width="0.1524" layer="91"/>
<wire x1="83.82" y1="66.04" x2="83.82" y2="63.5" width="0.1524" layer="91"/>
<pinref part="C27" gate="G$1" pin="1"/>
<wire x1="83.82" y1="63.5" x2="83.82" y2="58.42" width="0.1524" layer="91"/>
<pinref part="C28" gate="G$1" pin="1"/>
<wire x1="93.98" y1="58.42" x2="93.98" y2="63.5" width="0.1524" layer="91"/>
<wire x1="93.98" y1="63.5" x2="83.82" y2="63.5" width="0.1524" layer="91"/>
<label x="96.52" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VDD@W1"/>
<wire x1="101.6" y1="248.92" x2="101.6" y2="246.38" width="0.1524" layer="91"/>
<label x="101.6" y="248.92" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VDD@B1"/>
<wire x1="101.6" y1="248.92" x2="101.6" y2="246.38" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VDD@A22"/>
<wire x1="101.6" y1="248.92" x2="101.6" y2="246.38" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VDD@AD14"/>
<wire x1="101.6" y1="248.92" x2="101.6" y2="246.38" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VDD@AD23"/>
<wire x1="101.6" y1="248.92" x2="101.6" y2="246.38" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C7" gate="C$1" pin="1"/>
<wire x1="96.52" y1="251.46" x2="96.52" y2="248.92" width="0.1524" layer="91"/>
<label x="96.52" y="251.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C8" gate="C$1" pin="1"/>
<wire x1="106.68" y1="251.46" x2="106.68" y2="248.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="VDD"/>
<wire x1="274.32" y1="116.84" x2="279.4" y2="116.84" width="0.1524" layer="91"/>
<label x="279.4" y="116.84" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="VDDIO"/>
<wire x1="274.32" y1="114.3" x2="279.4" y2="114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C21" gate="C$1" pin="1"/>
<wire x1="292.1" y1="99.06" x2="292.1" y2="101.6" width="0.1524" layer="91"/>
<label x="292.1" y="101.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C22" gate="C$1" pin="1"/>
<wire x1="302.26" y1="99.06" x2="302.26" y2="101.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="VDD"/>
<wire x1="190.5" y1="109.22" x2="195.58" y2="109.22" width="0.1524" layer="91"/>
<label x="195.58" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C32" gate="G$1" pin="1"/>
<wire x1="200.66" y1="101.6" x2="200.66" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="VDD"/>
<wire x1="190.5" y1="66.04" x2="195.58" y2="66.04" width="0.1524" layer="91"/>
<label x="195.58" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C33" gate="G$1" pin="1"/>
<wire x1="200.66" y1="58.42" x2="200.66" y2="55.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R17" gate="G$1" pin="1"/>
<wire x1="139.7" y1="170.18" x2="139.7" y2="172.72" width="0.1524" layer="91"/>
<label x="139.7" y="172.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R18" gate="G$1" pin="1"/>
<wire x1="149.86" y1="170.18" x2="149.86" y2="172.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="332.74" y1="129.54" x2="332.74" y2="132.08" width="0.1524" layer="91"/>
<label x="332.74" y="132.08" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="332.74" y1="111.76" x2="332.74" y2="114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="332.74" y1="93.98" x2="332.74" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="TP6" gate="G$1" pin="TP"/>
<wire x1="375.92" y1="251.46" x2="375.92" y2="248.92" width="0.1524" layer="91"/>
<label x="375.92" y="248.92" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R15" gate="G$1" pin="1"/>
<wire x1="370.84" y1="231.14" x2="370.84" y2="233.68" width="0.1524" layer="91"/>
<label x="370.84" y="233.68" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== VREG ==================== -->
<net name="VREG" class="1">
<segment>
<pinref part="IC1" gate="G$1" pin="SYS"/>
<wire x1="68.58" y1="109.22" x2="83.82" y2="109.22" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="83.82" y1="109.22" x2="83.82" y2="106.68" width="0.1524" layer="91"/>
<pinref part="C26" gate="G$1" pin="1"/>
<wire x1="83.82" y1="101.6" x2="83.82" y2="99.06" width="0.1524" layer="91"/>
<label x="88.9" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC9" gate="G$1" pin="EN"/>
<wire x1="38.1" y1="68.58" x2="30.48" y2="68.58" width="0.1524" layer="91"/>
<label x="25.4" y="68.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC9" gate="G$1" pin="VIN_1"/>
<wire x1="38.1" y1="66.04" x2="30.48" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC9" gate="G$1" pin="VIN_2"/>
<wire x1="38.1" y1="63.5" x2="30.48" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== VBAT ==================== -->
<net name="VBAT" class="1">
<segment>
<pinref part="IC1" gate="G$1" pin="BAT"/>
<wire x1="68.58" y1="104.14" x2="76.2" y2="104.14" width="0.1524" layer="91"/>
<label x="76.2" y="104.14" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="CELL"/>
<wire x1="160.02" y1="109.22" x2="154.94" y2="109.22" width="0.1524" layer="91"/>
<label x="149.86" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TP5" gate="G$1" pin="TP"/>
<wire x1="368.3" y1="251.46" x2="368.3" y2="248.92" width="0.1524" layer="91"/>
<label x="368.3" y="248.92" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== VBUS ==================== -->
<net name="VBUS" class="1">
<segment>
<pinref part="J4" gate="G$1" pin="VBUS"/>
<wire x1="335.28" y1="193.04" x2="322.58" y2="193.04" width="0.1524" layer="91"/>
<label x="314.96" y="193.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="IN"/>
<wire x1="43.18" y1="109.22" x2="30.48" y2="109.22" width="0.1524" layer="91"/>
<pinref part="C25" gate="G$1" pin="1"/>
<wire x1="30.48" y1="101.6" x2="30.48" y2="99.06" width="0.1524" layer="91"/>
<label x="25.4" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="VBUS@AD2"/>
<wire x1="134.62" y1="218.44" x2="139.7" y2="218.44" width="0.1524" layer="91"/>
<label x="139.7" y="218.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="D3" gate="G$1" pin="VBUS"/>
<wire x1="309.88" y1="198.12" x2="309.88" y2="200.66" width="0.1524" layer="91"/>
<label x="309.88" y="200.66" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== SCL (I2C Clock) ==================== -->
<net name="SCL" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P0.26@G1"/>
<wire x1="134.62" y1="213.36" x2="139.7" y2="213.36" width="0.1524" layer="91"/>
<label x="139.7" y="213.36" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC9" gate="G$1" pin="SCL"/>
<wire x1="73.66" y1="60.96" x2="78.74" y2="60.96" width="0.1524" layer="91"/>
<label x="78.74" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="SCL"/>
<wire x1="43.18" y1="104.14" x2="38.1" y2="104.14" width="0.1524" layer="91"/>
<label x="33.02" y="104.14" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="ASCL"/>
<wire x1="248.92" y1="109.22" x2="243.84" y2="109.22" width="0.1524" layer="91"/>
<label x="238.76" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="SCL"/>
<wire x1="160.02" y1="104.14" x2="154.94" y2="104.14" width="0.1524" layer="91"/>
<label x="149.86" y="104.14" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="SCL"/>
<wire x1="160.02" y1="60.96" x2="154.94" y2="60.96" width="0.1524" layer="91"/>
<label x="149.86" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R17" gate="G$1" pin="2"/>
<wire x1="139.7" y1="160.02" x2="139.7" y2="157.48" width="0.1524" layer="91"/>
<label x="139.7" y="154.94" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== SDA (I2C Data) ==================== -->
<net name="SDA" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P0.27@H2"/>
<wire x1="134.62" y1="210.82" x2="139.7" y2="210.82" width="0.1524" layer="91"/>
<label x="139.7" y="210.82" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC9" gate="G$1" pin="SDA"/>
<wire x1="73.66" y1="58.42" x2="78.74" y2="58.42" width="0.1524" layer="91"/>
<label x="78.74" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="SDA"/>
<wire x1="43.18" y1="101.6" x2="38.1" y2="101.6" width="0.1524" layer="91"/>
<label x="33.02" y="101.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="ASDA"/>
<wire x1="248.92" y1="106.68" x2="243.84" y2="106.68" width="0.1524" layer="91"/>
<label x="238.76" y="106.68" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="SDA"/>
<wire x1="160.02" y1="101.6" x2="154.94" y2="101.6" width="0.1524" layer="91"/>
<label x="149.86" y="101.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="SDA"/>
<wire x1="160.02" y1="58.42" x2="154.94" y2="58.42" width="0.1524" layer="91"/>
<label x="149.86" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R18" gate="G$1" pin="2"/>
<wire x1="149.86" y1="160.02" x2="149.86" y2="157.48" width="0.1524" layer="91"/>
<label x="149.86" y="154.94" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== PMIC_INT ==================== -->
<net name="PMIC_INT" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P0.08@N1"/>
<wire x1="134.62" y1="205.74" x2="139.7" y2="205.74" width="0.1524" layer="91"/>
<label x="139.7" y="205.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="!INT"/>
<wire x1="43.18" y1="114.3" x2="38.1" y2="114.3" width="0.1524" layer="91"/>
<label x="25.4" y="114.3" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== IMU_INT1 ==================== -->
<net name="IMU_INT1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P1.08@P2"/>
<wire x1="134.62" y1="203.2" x2="139.7" y2="203.2" width="0.1524" layer="91"/>
<label x="139.7" y="203.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="INT1"/>
<wire x1="274.32" y1="109.22" x2="279.4" y2="109.22" width="0.1524" layer="91"/>
<label x="279.4" y="109.22" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== IMU_INT2 ==================== -->
<net name="IMU_INT2" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P0.11@T2"/>
<wire x1="134.62" y1="200.66" x2="139.7" y2="200.66" width="0.1524" layer="91"/>
<label x="139.7" y="200.66" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="INT2"/>
<wire x1="274.32" y1="106.68" x2="279.4" y2="106.68" width="0.1524" layer="91"/>
<label x="279.4" y="106.68" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== HAPTIC_EN ==================== -->
<net name="HAPTIC_EN" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P0.12@U1"/>
<wire x1="134.62" y1="198.12" x2="139.7" y2="198.12" width="0.1524" layer="91"/>
<label x="139.7" y="198.12" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC2" gate="G$1" pin="EN"/>
<wire x1="160.02" y1="68.58" x2="154.94" y2="68.58" width="0.1524" layer="91"/>
<label x="144.78" y="68.58" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== ALERT (Fuel Gauge) ==================== -->
<net name="ALERT" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P0.16@AC11"/>
<wire x1="134.62" y1="195.58" x2="139.7" y2="195.58" width="0.1524" layer="91"/>
<label x="139.7" y="195.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="!ALERT"/>
<wire x1="190.5" y1="99.06" x2="195.58" y2="99.06" width="0.1524" layer="91"/>
<label x="195.58" y="99.06" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== MOSI ==================== -->
<net name="MOSI" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P0.13@AD8"/>
<wire x1="134.62" y1="193.04" x2="139.7" y2="193.04" width="0.1524" layer="91"/>
<label x="139.7" y="193.04" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== SCK ==================== -->
<net name="SCK" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P0.14@AC9"/>
<wire x1="134.62" y1="190.5" x2="139.7" y2="190.5" width="0.1524" layer="91"/>
<label x="139.7" y="190.5" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== EPD_RST ==================== -->
<net name="EPD_RST" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P0.15@AD10"/>
<wire x1="134.62" y1="187.96" x2="139.7" y2="187.96" width="0.1524" layer="91"/>
<label x="139.7" y="187.96" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== EPD_BUSY ==================== -->
<net name="EPD_BUSY" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P0.05/AIN3@K2"/>
<wire x1="68.58" y1="205.74" x2="63.5" y2="205.74" width="0.1524" layer="91"/>
<label x="50.8" y="205.74" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== EPD_DC ==================== -->
<net name="EPD_DC" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P0.06@L1"/>
<wire x1="68.58" y1="203.2" x2="63.5" y2="203.2" width="0.1524" layer="91"/>
<label x="50.8" y="203.2" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== EPD_CS ==================== -->
<net name="EPD_CS" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P0.07@M2"/>
<wire x1="68.58" y1="200.66" x2="63.5" y2="200.66" width="0.1524" layer="91"/>
<label x="50.8" y="200.66" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== SWDIO ==================== -->
<net name="SWDIO" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SWDIO@AC24"/>
<wire x1="134.62" y1="228.6" x2="139.7" y2="228.6" width="0.1524" layer="91"/>
<label x="139.7" y="228.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="2"/>
<wire x1="347.98" y1="236.22" x2="342.9" y2="236.22" width="0.1524" layer="91"/>
<label x="335.28" y="236.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TP3" gate="G$1" pin="TP"/>
<wire x1="353.06" y1="251.46" x2="353.06" y2="248.92" width="0.1524" layer="91"/>
<label x="353.06" y="248.92" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<!-- ==================== SWDCLK ==================== -->
<net name="SWDCLK" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SWDCLK@AA24"/>
<wire x1="134.62" y1="226.06" x2="139.7" y2="226.06" width="0.1524" layer="91"/>
<label x="139.7" y="226.06" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="4"/>
<wire x1="347.98" y1="233.68" x2="342.9" y2="233.68" width="0.1524" layer="91"/>
<label x="335.28" y="233.68" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TP2" gate="G$1" pin="TP"/>
<wire x1="345.44" y1="251.46" x2="345.44" y2="248.92" width="0.1524" layer="91"/>
<label x="345.44" y="248.92" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<!-- ==================== SWO ==================== -->
<net name="SWO" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P1.09@R1"/>
<wire x1="134.62" y1="215.9" x2="139.7" y2="215.9" width="0.1524" layer="91"/>
<label x="139.7" y="215.9" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TP1" gate="G$1" pin="TP"/>
<wire x1="337.82" y1="251.46" x2="337.82" y2="248.92" width="0.1524" layer="91"/>
<label x="337.82" y="248.92" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<!-- ==================== RESET ==================== -->
<net name="RESET" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P0.18/RESET@AC13"/>
<wire x1="134.62" y1="223.52" x2="139.7" y2="223.52" width="0.1524" layer="91"/>
<label x="139.7" y="223.52" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="6"/>
<wire x1="363.22" y1="236.22" x2="370.84" y2="236.22" width="0.1524" layer="91"/>
<pinref part="R15" gate="G$1" pin="2"/>
<wire x1="370.84" y1="220.98" x2="370.84" y2="218.44" width="0.1524" layer="91"/>
<label x="373.38" y="236.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="TP4" gate="G$1" pin="TP"/>
<wire x1="360.68" y1="251.46" x2="360.68" y2="248.92" width="0.1524" layer="91"/>
<label x="360.68" y="248.92" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<!-- ==================== D+ (USB) ==================== -->
<net name="D+" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="D+@AD6"/>
<wire x1="134.62" y1="220.98" x2="139.7" y2="220.98" width="0.1524" layer="91"/>
<label x="139.7" y="220.98" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="D3" gate="G$1" pin="I/O1_1"/>
<wire x1="302.26" y1="195.58" x2="297.18" y2="195.58" width="0.1524" layer="91"/>
<label x="292.1" y="195.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="D3" gate="G$1" pin="I/O1_2"/>
<wire x1="317.5" y1="195.58" x2="322.58" y2="195.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="DP1"/>
<wire x1="335.28" y1="190.5" x2="330.2" y2="190.5" width="0.1524" layer="91"/>
<label x="325.12" y="190.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="DP2"/>
<wire x1="335.28" y1="185.42" x2="330.2" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== D- (USB) ==================== -->
<net name="D-" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="D-@AD4"/>
<wire x1="134.62" y1="218.44" x2="139.7" y2="218.44" width="0.1524" layer="91"/>
<label x="139.7" y="218.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="D3" gate="G$1" pin="I/O2_1"/>
<wire x1="302.26" y1="190.5" x2="297.18" y2="190.5" width="0.1524" layer="91"/>
<label x="292.1" y="190.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="D3" gate="G$1" pin="I/O2_2"/>
<wire x1="317.5" y1="190.5" x2="322.58" y2="190.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="DN1"/>
<wire x1="335.28" y1="187.96" x2="330.2" y2="187.96" width="0.1524" layer="91"/>
<label x="325.12" y="187.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="DN2"/>
<wire x1="335.28" y1="182.88" x2="330.2" y2="182.88" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== CC1 ==================== -->
<net name="CC1" class="0">
<segment>
<pinref part="J4" gate="G$1" pin="CC1"/>
<wire x1="335.28" y1="177.8" x2="322.58" y2="177.8" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="322.58" y1="177.8" x2="322.58" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== CC2 ==================== -->
<net name="CC2" class="0">
<segment>
<pinref part="J4" gate="G$1" pin="CC2"/>
<wire x1="335.28" y1="175.26" x2="330.2" y2="175.26" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="330.2" y1="175.26" x2="330.2" y2="175.26" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== RF ==================== -->
<net name="RF" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="ANT@H23"/>
<wire x1="101.6" y1="157.48" x2="101.6" y2="152.4" width="0.1524" layer="91"/>
<label x="101.6" y="149.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="L1" gate="L$1" pin="1"/>
<wire x1="238.76" y1="243.84" x2="236.22" y2="243.84" width="0.1524" layer="91"/>
<pinref part="C9" gate="C$1" pin="1"/>
<wire x1="236.22" y1="243.84" x2="236.22" y2="238.76" width="0.1524" layer="91"/>
<label x="231.14" y="243.84" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== N$1 (L1 to L2 junction) ==================== -->
<net name="N$1" class="0">
<segment>
<pinref part="L1" gate="L$1" pin="2"/>
<pinref part="L2" gate="L$1" pin="1"/>
<wire x1="248.92" y1="243.84" x2="254" y2="243.84" width="0.1524" layer="91"/>
<pinref part="C3" gate="C$1" pin="1"/>
<wire x1="248.92" y1="238.76" x2="248.92" y2="243.84" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== N$2 (L2 to Antenna) ==================== -->
<net name="N$2" class="0">
<segment>
<pinref part="L2" gate="L$1" pin="2"/>
<pinref part="ANT1" gate="G$1" pin="FEED"/>
<wire x1="264.16" y1="243.84" x2="274.32" y2="243.84" width="0.1524" layer="91"/>
<pinref part="C4" gate="C$1" pin="1"/>
<wire x1="264.16" y1="238.76" x2="264.16" y2="243.84" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== XC1 ==================== -->
<net name="XC1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="XC1@B24"/>
<wire x1="68.58" y1="228.6" x2="63.5" y2="228.6" width="0.1524" layer="91"/>
<label x="55.88" y="228.6" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X1" gate="X$1" pin="1"/>
<wire x1="53.34" y1="228.6" x2="50.8" y2="228.6" width="0.1524" layer="91"/>
<pinref part="C1" gate="C$1" pin="1"/>
<wire x1="45.72" y1="236.22" x2="45.72" y2="238.76" width="0.1524" layer="91"/>
<wire x1="50.8" y1="228.6" x2="45.72" y2="236.22" width="0.1524" layer="91"/>
<label x="43.18" y="238.76" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== XC2 ==================== -->
<net name="XC2" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="XC2@A23"/>
<wire x1="68.58" y1="226.06" x2="63.5" y2="226.06" width="0.1524" layer="91"/>
<label x="55.88" y="226.06" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X1" gate="X$1" pin="2"/>
<wire x1="58.42" y1="228.6" x2="60.96" y2="228.6" width="0.1524" layer="91"/>
<pinref part="C2" gate="C$1" pin="1"/>
<wire x1="45.72" y1="226.06" x2="45.72" y2="220.98" width="0.1524" layer="91"/>
<label x="43.18" y="218.44" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== XL1 ==================== -->
<net name="XL1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P0.00/XL1@D2"/>
<wire x1="68.58" y1="190.5" x2="63.5" y2="190.5" width="0.1524" layer="91"/>
<label x="55.88" y="190.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X2" gate="X$1" pin="1"/>
<wire x1="53.34" y1="185.42" x2="50.8" y2="185.42" width="0.1524" layer="91"/>
<pinref part="C17" gate="C$1" pin="1"/>
<wire x1="45.72" y1="193.04" x2="45.72" y2="195.58" width="0.1524" layer="91"/>
<wire x1="50.8" y1="185.42" x2="45.72" y2="193.04" width="0.1524" layer="91"/>
<label x="43.18" y="195.58" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== XL2 ==================== -->
<net name="XL2" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P0.01/XL2@F2"/>
<wire x1="68.58" y1="187.96" x2="63.5" y2="187.96" width="0.1524" layer="91"/>
<label x="55.88" y="187.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="X2" gate="X$1" pin="2"/>
<wire x1="58.42" y1="185.42" x2="60.96" y2="185.42" width="0.1524" layer="91"/>
<pinref part="C18" gate="C$1" pin="1"/>
<wire x1="45.72" y1="182.88" x2="45.72" y2="177.8" width="0.1524" layer="91"/>
<label x="43.18" y="175.26" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== DEC1 ==================== -->
<net name="DEC1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="DEC1@C1"/>
<wire x1="68.58" y1="248.92" x2="66.04" y2="248.92" width="0.1524" layer="91"/>
<pinref part="C5" gate="C$1" pin="1"/>
<wire x1="66.04" y1="251.46" x2="66.04" y2="248.92" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== DEC4_6 ==================== -->
<net name="DEC4_6" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="DEC4@B5"/>
<wire x1="68.58" y1="246.38" x2="63.5" y2="246.38" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="DEC5@N24"/>
<wire x1="68.58" y1="246.38" x2="63.5" y2="246.38" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="DEC6@E24"/>
<wire x1="68.58" y1="246.38" x2="63.5" y2="246.38" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="1"/>
<wire x1="76.2" y1="251.46" x2="76.2" y2="248.92" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== DEC3 ==================== -->
<net name="DEC3" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="DEC3@D23"/>
<wire x1="68.58" y1="243.84" x2="63.5" y2="243.84" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C14" gate="G$1" pin="1"/>
<wire x1="86.36" y1="251.46" x2="86.36" y2="248.92" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== DCC ==================== -->
<net name="DCC" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="DCC@B3"/>
<wire x1="68.58" y1="254" x2="55.88" y2="254" width="0.1524" layer="91"/>
<pinref part="L3" gate="L$1" pin="1"/>
<wire x1="45.72" y1="254" x2="40.64" y2="254" width="0.1524" layer="91"/>
<pinref part="C15" gate="G$1" pin="1"/>
<wire x1="40.64" y1="254" x2="40.64" y2="251.46" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== DCCH ==================== -->
<net name="DCCH" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="DCCH@AB2"/>
<wire x1="134.62" y1="254" x2="60.96" y2="259.08" width="0.1524" layer="91"/>
<pinref part="L3" gate="L$1" pin="2"/>
<wire x1="55.88" y1="254" x2="60.96" y2="254" width="0.1524" layer="91"/>
<pinref part="C16" gate="C$1" pin="1"/>
<wire x1="60.96" y1="261.62" x2="60.96" y2="259.08" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== VDDH ==================== -->
<net name="VDDH" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="VDDH@Y2"/>
<wire x1="134.62" y1="248.92" x2="137.16" y2="248.92" width="0.1524" layer="91"/>
<pinref part="C20" gate="C$1" pin="1"/>
<wire x1="137.16" y1="251.46" x2="137.16" y2="248.92" width="0.1524" layer="91"/>
<label x="137.16" y="251.46" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== DEC3V3 ==================== -->
<net name="DEC3V3" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="DEC3V3@AC5"/>
<wire x1="134.62" y1="243.84" x2="127" y2="243.84" width="0.1524" layer="91"/>
<pinref part="C19" gate="C$1" pin="1"/>
<wire x1="127" y1="251.46" x2="127" y2="248.92" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== LX1 ==================== -->
<net name="LX1" class="1">
<segment>
<pinref part="IC9" gate="G$1" pin="SW1_1"/>
<wire x1="55.88" y1="73.66" x2="50.8" y2="78.74" width="0.1524" layer="91"/>
<pinref part="IC9" gate="G$1" pin="SW1_2"/>
<wire x1="55.88" y1="73.66" x2="50.8" y2="78.74" width="0.1524" layer="91"/>
<pinref part="L7" gate="G$1" pin="1"/>
<wire x1="50.8" y1="78.74" x2="48.26" y2="78.74" width="0.1524" layer="91"/>
<label x="43.18" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== LX2 ==================== -->
<net name="LX2" class="1">
<segment>
<pinref part="IC9" gate="G$1" pin="SW2_1"/>
<wire x1="55.88" y1="73.66" x2="60.96" y2="78.74" width="0.1524" layer="91"/>
<pinref part="IC9" gate="G$1" pin="SW2_2"/>
<wire x1="55.88" y1="73.66" x2="60.96" y2="78.74" width="0.1524" layer="91"/>
<pinref part="L7" gate="G$1" pin="2"/>
<wire x1="60.96" y1="78.74" x2="63.5" y2="78.74" width="0.1524" layer="91"/>
<label x="63.5" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== SW_UP_NET ==================== -->
<net name="SW_UP_NET" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P1.03@V23"/>
<wire x1="68.58" y1="172.72" x2="63.5" y2="172.72" width="0.1524" layer="91"/>
<label x="50.8" y="172.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SW_UP" gate="A" pin="1"/>
<wire x1="340.36" y1="114.3" x2="332.74" y2="114.3" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="332.74" y1="119.38" x2="332.74" y2="114.3" width="0.1524" layer="91"/>
<pinref part="C29" gate="G$1" pin="1"/>
<wire x1="360.68" y1="111.76" x2="360.68" y2="114.3" width="0.1524" layer="91"/>
<wire x1="360.68" y1="114.3" x2="350.52" y2="114.3" width="0.1524" layer="91"/>
<label x="325.12" y="114.3" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== SW_DN_NET ==================== -->
<net name="SW_DN_NET" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P1.04@U24"/>
<wire x1="68.58" y1="170.18" x2="63.5" y2="170.18" width="0.1524" layer="91"/>
<label x="50.8" y="170.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SW_DN" gate="A" pin="1"/>
<wire x1="340.36" y1="96.52" x2="332.74" y2="96.52" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="332.74" y1="101.6" x2="332.74" y2="96.52" width="0.1524" layer="91"/>
<pinref part="C30" gate="G$1" pin="1"/>
<wire x1="360.68" y1="93.98" x2="360.68" y2="96.52" width="0.1524" layer="91"/>
<wire x1="360.68" y1="96.52" x2="350.52" y2="96.52" width="0.1524" layer="91"/>
<label x="325.12" y="96.52" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== SW_ENT_NET ==================== -->
<net name="SW_ENT_NET" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="P1.05@T23"/>
<wire x1="68.58" y1="167.64" x2="63.5" y2="167.64" width="0.1524" layer="91"/>
<label x="50.8" y="167.64" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="SW_ENT" gate="A" pin="1"/>
<wire x1="340.36" y1="78.74" x2="332.74" y2="78.74" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="332.74" y1="83.82" x2="332.74" y2="78.74" width="0.1524" layer="91"/>
<pinref part="C31" gate="G$1" pin="1"/>
<wire x1="360.68" y1="76.2" x2="360.68" y2="78.74" width="0.1524" layer="91"/>
<wire x1="360.68" y1="78.74" x2="350.52" y2="78.74" width="0.1524" layer="91"/>
<label x="325.12" y="78.74" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== IMU SDO/CSB tie ==================== -->
<net name="N$3" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="SDO"/>
<wire x1="248.92" y1="116.84" x2="243.84" y2="116.84" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="233.68" y1="121.92" x2="233.68" y2="119.38" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== Haptic OUT+ ==================== -->
<net name="OUT+" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="OUT+"/>
<wire x1="190.5" y1="63.5" x2="195.58" y2="63.5" width="0.1524" layer="91"/>
<label x="195.58" y="63.5" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== Haptic OUT- ==================== -->
<net name="OUT-" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="OUT-"/>
<wire x1="190.5" y1="55.88" x2="195.58" y2="55.88" width="0.1524" layer="91"/>
<label x="195.58" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== Haptic REG ==================== -->
<net name="N$4" class="0">
<segment>
<pinref part="IC2" gate="G$1" pin="REG"/>
<wire x1="190.5" y1="60.96" x2="200.66" y2="60.96" width="0.1524" layer="91"/>
<pinref part="R12" gate="G$1" pin="2"/>
<wire x1="200.66" y1="63.5" x2="200.66" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== Fuel Gauge QSTRT ==================== -->
<net name="N$5" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="QSTRT"/>
<wire x1="160.02" y1="114.3" x2="154.94" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== Fuel Gauge CTG ==================== -->
<net name="N$6" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="CTG"/>
<wire x1="190.5" y1="104.14" x2="195.58" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
<!-- ============================================================ -->
<!-- SHEET 2: E-Paper & Peripherals                                -->
<!-- ============================================================ -->
<sheet>
<description>E-Paper Display &amp; Peripherals</description>
<plain>
<text x="17.78" y="279.4" size="5.08" layer="97" font="vector">InkTime Smartwatch - Sheet 2: EPD / Peripherals</text>
<text x="17.78" y="261.62" size="2.54" layer="97" font="vector">E-Paper Display FPC Connector</text>
<text x="17.78" y="134.62" size="2.54" layer="97" font="vector">EPD Power (MOSFET switch &amp; boost)</text>
<text x="228.6" y="261.62" size="2.54" layer="97" font="vector">EPD Drive Circuit</text>
<text x="228.6" y="134.62" size="2.54" layer="97" font="vector">Solder Jumper / Misc</text>
</plain>
<instances>
<instance part="FRAME2" gate="G$1" x="0" y="0"/>
<!-- EPD FPC Connector -->
<instance part="J1" gate="G$1" x="76.2" y="218.44"/>
<!-- EPD Power MOSFET -->
<instance part="Q1" gate="G$1" x="55.88" y="104.14"/>
<instance part="R10" gate="G$1" x="40.64" y="111.76" rot="R90"/>
<instance part="R11" gate="G$1" x="40.64" y="96.52" rot="R90"/>
<!-- Q3 for EPD gate drive -->
<instance part="Q3" gate="G$1" x="101.6" y="104.14"/>
<!-- Schottky Diodes for EPD -->
<instance part="D2" gate="G$1" x="134.62" y="116.84"/>
<instance part="D4" gate="G$1" x="154.94" y="116.84"/>
<instance part="D5" gate="G$1" x="175.26" y="116.84"/>
<!-- EPD Boost Inductor -->
<instance part="L5" gate="A" x="116.84" y="127"/>
<!-- EPD 50V Caps -->
<instance part="C34" gate="G$1" x="134.62" y="96.52"/>
<instance part="C35" gate="G$1" x="154.94" y="96.52"/>
<instance part="C36" gate="G$1" x="175.26" y="96.52"/>
<instance part="C37" gate="G$1" x="195.58" y="96.52"/>
<!-- EPD Resistors -->
<instance part="R2" gate="G$1" x="48.26" y="104.14"/>
<instance part="R13" gate="G$1" x="195.58" y="116.84" rot="R90"/>
<instance part="R14" gate="G$1" x="208.28" y="116.84" rot="R90"/>
<instance part="R16" gate="G$1" x="218.44" y="116.84" rot="R90"/>
<instance part="R19" gate="G$1" x="228.6" y="116.84" rot="R90"/>
<instance part="R20" gate="G$1" x="238.76" y="116.84" rot="R90"/>
<!-- Misc passives for EPD -->
<instance part="C10" gate="C$1" x="88.9" y="198.12"/>
<instance part="C11" gate="C$1" x="99.06" y="198.12"/>
<instance part="C12" gate="C$1" x="109.22" y="198.12"/>
<instance part="C13" gate="C$1" x="119.38" y="198.12"/>
<instance part="C23" gate="C$1" x="129.54" y="198.12"/>
<!-- Solder Jumper -->
<instance part="SJ1" gate="G$1" x="248.92" y="109.22"/>
<!-- Remaining passives -->
<instance part="R9" gate="G$1" x="259.08" y="109.22"/>
<!-- GND symbols for sheet 2 -->
<instance part="GND23" gate="1" x="76.2" y="190.5"/>
<instance part="GND24" gate="1" x="134.62" y="86.36"/>
<instance part="GND25" gate="1" x="154.94" y="86.36"/>
<instance part="GND26" gate="1" x="175.26" y="86.36"/>
<instance part="GND27" gate="1" x="195.58" y="86.36"/>
<instance part="GND28" gate="1" x="55.88" y="88.9"/>
<instance part="GND29" gate="1" x="101.6" y="88.9"/>
<instance part="GND30" gate="1" x="88.9" y="190.5"/>
</instances>
<busses>
</busses>
<nets>
<!-- ==================== GND ==================== -->
<net name="GND" class="1">
<segment>
<pinref part="J1" gate="G$1" pin="MP1"/>
<pinref part="GND23" gate="1" pin="GND"/>
<wire x1="76.2" y1="195.58" x2="76.2" y2="193.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="MP2"/>
<wire x1="76.2" y1="195.58" x2="76.2" y2="193.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C34" gate="G$1" pin="2"/>
<pinref part="GND24" gate="1" pin="GND"/>
<wire x1="134.62" y1="91.44" x2="134.62" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C35" gate="G$1" pin="2"/>
<pinref part="GND25" gate="1" pin="GND"/>
<wire x1="154.94" y1="91.44" x2="154.94" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C36" gate="G$1" pin="2"/>
<pinref part="GND26" gate="1" pin="GND"/>
<wire x1="175.26" y1="91.44" x2="175.26" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C37" gate="G$1" pin="2"/>
<pinref part="GND27" gate="1" pin="GND"/>
<wire x1="195.58" y1="91.44" x2="195.58" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q1" gate="G$1" pin="S"/>
<pinref part="GND28" gate="1" pin="GND"/>
<wire x1="55.88" y1="96.52" x2="55.88" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q3" gate="G$1" pin="S"/>
<pinref part="GND29" gate="1" pin="GND"/>
<wire x1="101.6" y1="96.52" x2="101.6" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C10" gate="C$1" pin="2"/>
<pinref part="GND30" gate="1" pin="GND"/>
<wire x1="88.9" y1="193.04" x2="88.9" y2="193.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C11" gate="C$1" pin="2"/>
<wire x1="99.06" y1="193.04" x2="99.06" y2="193.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C12" gate="C$1" pin="2"/>
<wire x1="109.22" y1="193.04" x2="109.22" y2="193.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C13" gate="C$1" pin="2"/>
<wire x1="119.38" y1="193.04" x2="119.38" y2="193.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C23" gate="C$1" pin="2"/>
<wire x1="129.54" y1="193.04" x2="129.54" y2="193.04" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== 3V3 ==================== -->
<net name="3V3" class="1">
<segment>
<pinref part="Q1" gate="G$1" pin="D"/>
<wire x1="55.88" y1="111.76" x2="55.88" y2="116.84" width="0.1524" layer="91"/>
<label x="55.88" y="116.84" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R10" gate="G$1" pin="1"/>
<wire x1="40.64" y1="116.84" x2="40.64" y2="119.38" width="0.1524" layer="91"/>
<label x="40.64" y="119.38" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== EPD_3V3 ==================== -->
<net name="EPD_3V3" class="1">
<segment>
<pinref part="Q1" gate="G$1" pin="S"/>
<wire x1="55.88" y1="96.52" x2="55.88" y2="93.98" width="0.1524" layer="91"/>
<label x="55.88" y="91.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C10" gate="C$1" pin="1"/>
<wire x1="88.9" y1="200.66" x2="88.9" y2="203.2" width="0.1524" layer="91"/>
<label x="88.9" y="203.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C11" gate="C$1" pin="1"/>
<wire x1="99.06" y1="200.66" x2="99.06" y2="203.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C12" gate="C$1" pin="1"/>
<wire x1="109.22" y1="200.66" x2="109.22" y2="203.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C13" gate="C$1" pin="1"/>
<wire x1="119.38" y1="200.66" x2="119.38" y2="203.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C23" gate="C$1" pin="1"/>
<wire x1="129.54" y1="200.66" x2="129.54" y2="203.2" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== MOSI ==================== -->
<net name="MOSI" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="7"/>
<wire x1="88.9" y1="233.68" x2="96.52" y2="233.68" width="0.1524" layer="91"/>
<label x="96.52" y="233.68" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== SCK ==================== -->
<net name="SCK" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="8"/>
<wire x1="88.9" y1="231.14" x2="96.52" y2="231.14" width="0.1524" layer="91"/>
<label x="96.52" y="231.14" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== EPD_RST ==================== -->
<net name="EPD_RST" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="10"/>
<wire x1="88.9" y1="228.6" x2="96.52" y2="228.6" width="0.1524" layer="91"/>
<label x="96.52" y="228.6" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== EPD_BUSY ==================== -->
<net name="EPD_BUSY" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="11"/>
<wire x1="88.9" y1="226.06" x2="96.52" y2="226.06" width="0.1524" layer="91"/>
<label x="96.52" y="226.06" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== EPD_DC ==================== -->
<net name="EPD_DC" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="9"/>
<wire x1="88.9" y1="223.52" x2="96.52" y2="223.52" width="0.1524" layer="91"/>
<label x="96.52" y="223.52" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== EPD_CS ==================== -->
<net name="EPD_CS" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="6"/>
<wire x1="88.9" y1="236.22" x2="96.52" y2="236.22" width="0.1524" layer="91"/>
<label x="96.52" y="236.22" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== PREVGL ==================== -->
<net name="PREVGL" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="3"/>
<wire x1="88.9" y1="243.84" x2="96.52" y2="243.84" width="0.1524" layer="91"/>
<label x="96.52" y="243.84" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="D4" gate="G$1" pin="K"/>
<wire x1="154.94" y1="121.92" x2="154.94" y2="124.46" width="0.1524" layer="91"/>
<label x="154.94" y="124.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C35" gate="G$1" pin="1"/>
<wire x1="154.94" y1="101.6" x2="154.94" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== PREVGH ==================== -->
<net name="PREVGH" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="4"/>
<wire x1="88.9" y1="241.3" x2="96.52" y2="241.3" width="0.1524" layer="91"/>
<label x="96.52" y="241.3" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="D2" gate="G$1" pin="K"/>
<wire x1="134.62" y1="121.92" x2="134.62" y2="124.46" width="0.1524" layer="91"/>
<label x="134.62" y="124.46" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C34" gate="G$1" pin="1"/>
<wire x1="134.62" y1="101.6" x2="134.62" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== GDR ==================== -->
<net name="GDR" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="2"/>
<wire x1="88.9" y1="246.38" x2="96.52" y2="246.38" width="0.1524" layer="91"/>
<label x="96.52" y="246.38" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="L5" gate="A" pin="1"/>
<wire x1="111.76" y1="127" x2="106.68" y2="127" width="0.1524" layer="91"/>
<label x="101.6" y="127" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== RESE ==================== -->
<net name="RESE" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="5"/>
<wire x1="88.9" y1="238.76" x2="96.52" y2="238.76" width="0.1524" layer="91"/>
<label x="96.52" y="238.76" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R16" gate="G$1" pin="1"/>
<wire x1="218.44" y1="121.92" x2="218.44" y2="124.46" width="0.1524" layer="91"/>
<label x="218.44" y="124.46" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== N$10 (Boost inductor output) ==================== -->
<net name="N$10" class="0">
<segment>
<pinref part="L5" gate="A" pin="2"/>
<wire x1="121.92" y1="127" x2="127" y2="127" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="A"/>
<wire x1="134.62" y1="111.76" x2="127" y2="111.76" width="0.1524" layer="91"/>
<wire x1="127" y1="127" x2="127" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== N$11 (D4 anode) ==================== -->
<net name="N$11" class="0">
<segment>
<pinref part="D4" gate="G$1" pin="A"/>
<wire x1="154.94" y1="111.76" x2="147.32" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== N$12 (D5 chain) ==================== -->
<net name="N$12" class="0">
<segment>
<pinref part="D5" gate="G$1" pin="K"/>
<wire x1="175.26" y1="121.92" x2="175.26" y2="124.46" width="0.1524" layer="91"/>
<pinref part="C36" gate="G$1" pin="1"/>
<wire x1="175.26" y1="101.6" x2="175.26" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<!-- ==================== Q1 Gate Control ==================== -->
<net name="EPD_EN" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="G"/>
<wire x1="50.8" y1="104.14" x2="48.26" y2="104.14" width="0.1524" layer="91"/>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="40.64" y1="106.68" x2="40.64" y2="104.14" width="0.1524" layer="91"/>
<pinref part="R11" gate="G$1" pin="1"/>
<wire x1="40.64" y1="101.6" x2="40.64" y2="104.14" width="0.1524" layer="91"/>
<label x="33.02" y="104.14" size="1.778" layer="95"/>
</segment>
</net>
<!-- ==================== SJ1 ==================== -->
<net name="N$20" class="0">
<segment>
<pinref part="SJ1" gate="G$1" pin="1"/>
<wire x1="243.84" y1="109.22" x2="241.3" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="SJ1" gate="G$1" pin="2"/>
<wire x1="254" y1="109.22" x2="256.54" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
