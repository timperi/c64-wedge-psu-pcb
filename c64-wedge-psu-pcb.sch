EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "C64 Wedge PSU PCB"
Date "2022-06-08"
Rev "1.3"
Comp "Timo Mömmö"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2450 3950 2950 3950
Wire Wire Line
	2450 3350 2950 3350
$Comp
L Regulator_Switching:LM2576T-5 U1
U 1 1 5F7E7F39
P 4600 3750
F 0 "U1" H 4600 4117 50  0000 C CNN
F 1 "LM2576T-5" H 4600 4026 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-5_P3.4x3.8mm_StaggerEven_Lead7.13mm_TabDown" H 4600 3500 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2576.pdf" H 4600 3750 50  0001 C CNN
	1    4600 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 5F7EB0E4
P 5550 3850
F 0 "L1" V 5462 3850 50  0000 C CNN
F 1 "150uH" V 5371 3850 50  0000 C CNN
F 2 "Inductor_THT:L_Toroid_Vertical_L24.6mm_W15.5mm_P11.44mm_Pulse_KM-4" H 5550 3850 50  0001 C CNN
F 3 "~" H 5550 3850 50  0001 C CNN
	1    5550 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Schottky D2
U 1 1 5F7EC7EB
P 5100 4100
F 0 "D2" V 5054 4179 50  0000 L CNN
F 1 "5A" V 5145 4179 50  0000 L CNN
F 2 "Diode_THT:D_DO-201AD_P12.70mm_Horizontal" H 5100 4100 50  0001 C CNN
F 3 "~" H 5100 4100 50  0001 C CNN
	1    5100 4100
	0    1    1    0   
$EndComp
$Comp
L Device:CP C2
U 1 1 5F7ED9FD
P 5850 4100
F 0 "C2" H 5968 4146 50  0000 L CNN
F 1 "2200uF" H 5968 4055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D16.0mm_P7.50mm" H 5888 3950 50  0001 C CNN
F 3 "~" H 5850 4100 50  0001 C CNN
	1    5850 4100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F80007A
P 2350 3950
F 0 "H1" V 2587 3953 50  0000 C CNN
F 1 "PAD_AC_IN_1" V 2496 3953 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill2mm" H 2350 3950 50  0001 C CNN
F 3 "~" H 2350 3950 50  0001 C CNN
	1    2350 3950
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5F801467
P 2350 3350
F 0 "H2" V 2587 3353 50  0000 C CNN
F 1 "PAD_AC_IN_2" V 2496 3353 50  0000 C CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill2mm" H 2350 3350 50  0001 C CNN
F 3 "~" H 2350 3350 50  0001 C CNN
	1    2350 3350
	0    -1   -1   0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5F80206F
P 8750 3650
F 0 "H3" V 8704 3800 50  0000 L CNN
F 1 "+5VDC" V 8795 3800 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill2mm" H 8750 3650 50  0001 C CNN
F 3 "~" H 8750 3650 50  0001 C CNN
	1    8750 3650
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5F8026D1
P 8750 4250
F 0 "H4" V 8704 4400 50  0000 L CNN
F 1 "GND" V 8795 4400 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill2mm" H 8750 4250 50  0001 C CNN
F 3 "~" H 8750 4250 50  0001 C CNN
	1    8750 4250
	0    1    1    0   
$EndComp
$Comp
L Diode_Bridge:VS-KBPC801 D1
U 1 1 5F8072D7
P 2950 3650
F 0 "D1" H 3294 3696 50  0000 L CNN
F 1 "6A" H 3294 3605 50  0000 L CNN
F 2 "Diode_THT:Diode_Bridge_Vishay_KBPC6" H 3100 3775 50  0001 L CNN
F 3 "http://www.vishay.com/docs/93586/kbpc8series.pdf" H 2950 3650 50  0001 C CNN
	1    2950 3650
	1    0    0    -1  
$EndComp
Text Label 2700 4250 0    50   ~ 0
GND
$Comp
L Device:R R2
U 1 1 5F7F5E49
P 8250 4000
F 0 "R2" V 8457 4000 50  0000 C CNN
F 1 "200" V 8366 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8180 4000 50  0001 C CNN
F 3 "~" H 8250 4000 50  0001 C CNN
	1    8250 4000
	0    1    -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 LED1
U 1 1 5F7F7421
P 7900 4000
F 0 "LED1" H 7818 4217 50  0000 C CNN
F 1 "LED" H 7818 4126 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7900 4000 50  0001 C CNN
F 3 "~" H 7900 4000 50  0001 C CNN
	1    7900 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8450 3650 8450 4000
Wire Wire Line
	8450 4000 8400 4000
Connection ~ 8450 3650
Wire Wire Line
	8450 3650 8650 3650
Wire Wire Line
	8450 4250 8450 4100
Wire Wire Line
	8450 4100 8100 4100
Connection ~ 8450 4250
Wire Wire Line
	8450 4250 8650 4250
$Comp
L Device:R R1
U 1 1 5F81F757
P 5850 3800
F 0 "R1" H 5780 3754 50  0000 R CNN
F 1 "150" H 5780 3845 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5780 3800 50  0001 C CNN
F 3 "~" H 5850 3800 50  0001 C CNN
	1    5850 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 3850 4100 4250
Wire Wire Line
	4100 4250 4600 4250
Wire Wire Line
	4600 4050 4600 4250
Connection ~ 4600 4250
Wire Wire Line
	4600 4250 5100 4250
Wire Wire Line
	5100 3850 5100 3950
Connection ~ 5100 4250
$Comp
L Device:CP C1
U 1 1 5F84DE16
P 3550 3950
F 0 "C1" H 3668 3996 50  0000 L CNN
F 1 "4700uF" H 3668 3905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D16.0mm_P7.50mm" H 3588 3800 50  0001 C CNN
F 3 "~" H 3550 3950 50  0001 C CNN
	1    3550 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4250 3550 4100
Wire Wire Line
	3550 3650 3550 3800
$Comp
L Device:CP C3
U 1 1 5F8576FF
P 7150 3950
F 0 "C3" H 7265 3996 50  0000 L CNN
F 1 "220uF" H 7265 3905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 7188 3800 50  0001 C CNN
F 3 "~" H 7150 3950 50  0001 C CNN
	1    7150 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 5F85825E
P 7000 3650
F 0 "L2" V 7190 3650 50  0000 C CNN
F 1 "22uH" V 7099 3650 50  0000 C CNN
F 2 "Inductor_THT:L_Toroid_Vertical_L16.0mm_W8.0mm_P7.62mm" H 7000 3650 50  0001 C CNN
F 3 "~" H 7000 3650 50  0001 C CNN
	1    7000 3650
	0    -1   -1   0   
$EndComp
Wire Notes Line
	6750 3100 6750 4550
Wire Notes Line
	7700 4550 7700 3100
Text Notes 6800 3200 0    50   ~ 0
Output ripple filter
Text Label 8450 3650 0    50   ~ 0
+5VDC
Wire Wire Line
	3550 3650 4100 3650
Wire Wire Line
	3550 4250 4100 4250
Connection ~ 4100 4250
Wire Wire Line
	2650 3650 2650 4250
Wire Wire Line
	2650 4250 3550 4250
Connection ~ 3550 4250
Wire Wire Line
	3250 3650 3550 3650
Connection ~ 3550 3650
Wire Wire Line
	7150 3800 7150 3650
Connection ~ 7150 3650
Wire Wire Line
	7150 3650 8450 3650
Wire Wire Line
	7150 4100 7150 4250
Connection ~ 7150 4250
Wire Wire Line
	7150 4250 8450 4250
Wire Wire Line
	5100 4250 5850 4250
Connection ~ 5850 4250
Wire Wire Line
	5100 3850 5400 3850
Connection ~ 5100 3850
$Comp
L Device:R R3
U 1 1 5FBCC66C
P 6000 3650
F 0 "R3" V 6207 3650 50  0000 C CNN
F 1 "10K" V 6116 3650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5930 3650 50  0001 C CNN
F 3 "~" H 6000 3650 50  0001 C CNN
	1    6000 3650
	0    -1   -1   0   
$EndComp
Wire Notes Line
	6750 3100 7700 3100
Wire Notes Line
	6750 4550 7700 4550
Wire Wire Line
	5700 3850 5700 3950
Wire Wire Line
	5700 3950 5850 3950
Connection ~ 5850 3950
Wire Wire Line
	5100 3650 5850 3650
Connection ~ 5850 3650
Wire Wire Line
	5850 4250 6300 4250
Wire Wire Line
	6150 3650 6300 3650
Wire Wire Line
	6300 3650 6300 4250
Connection ~ 6300 4250
Wire Wire Line
	6300 4250 7150 4250
Wire Wire Line
	5850 3950 6500 3950
Wire Wire Line
	6500 3950 6500 3650
Wire Wire Line
	6500 3650 6850 3650
$EndSCHEMATC
