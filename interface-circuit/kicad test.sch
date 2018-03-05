EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:kicad test-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Conn_02x20_Odd_Even J3
U 1 1 5A8BF3C9
P 6350 3500
F 0 "J3" H 6400 4500 50  0000 C CNN
F 1 "GPIO" H 6400 2400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 6350 3500 50  0001 C CNN
F 3 "" H 6350 3500 50  0001 C CNN
	1    6350 3500
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5A8BF3DF
P 7200 2700
F 0 "R3" V 7280 2700 50  0000 C CNN
F 1 "1R" V 7200 2700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 7130 2700 50  0001 C CNN
F 3 "" H 7200 2700 50  0001 C CNN
	1    7200 2700
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 5A8BF40C
P 7300 3600
F 0 "R4" V 7380 3600 50  0000 C CNN
F 1 "1R" V 7300 3600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 7230 3600 50  0001 C CNN
F 3 "" H 7300 3600 50  0001 C CNN
	1    7300 3600
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5A8BF45F
P 7200 2100
F 0 "R1" V 7280 2100 50  0000 C CNN
F 1 "1R" V 7200 2100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 7130 2100 50  0001 C CNN
F 3 "" H 7200 2100 50  0001 C CNN
	1    7200 2100
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5A8BF4D2
P 5700 2600
F 0 "R2" V 5780 2600 50  0000 C CNN
F 1 "4R7" V 5700 2600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 5630 2600 50  0001 C CNN
F 3 "" H 5700 2600 50  0001 C CNN
	1    5700 2600
	0    1    1    0   
$EndComp
$Comp
L USB_A J7
U 1 1 5A8BF5B4
P 10000 4600
F 0 "J7" H 9800 5050 50  0000 L CNN
F 1 "Rpi PWR" H 9800 4950 50  0000 L CNN
F 2 "Connectors:USB_A" H 10150 4550 50  0001 C CNN
F 3 "" H 10150 4550 50  0001 C CNN
	1    10000 4600
	-1   0    0    1   
$EndComp
$Comp
L Q_NPN_CBE Q2
U 1 1 5A8CC4FE
P 7600 2700
F 0 "Q2" H 7800 2750 50  0000 L CNN
F 1 "2N3904" H 7800 2650 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 7800 2800 50  0001 C CNN
F 3 "" H 7600 2700 50  0001 C CNN
	1    7600 2700
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_CBE Q3
U 1 1 5A8CC56C
P 8100 3600
F 0 "Q3" H 8300 3650 50  0000 L CNN
F 1 "2N3904" H 8300 3550 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 8300 3700 50  0001 C CNN
F 3 "" H 8100 3600 50  0001 C CNN
	1    8100 3600
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_CBE Q1
U 1 1 5A8CC5C6
P 7600 2100
F 0 "Q1" H 7800 2150 50  0000 L CNN
F 1 "2N3904" H 7800 2050 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 7800 2200 50  0001 C CNN
F 3 "" H 7600 2100 50  0001 C CNN
	1    7600 2100
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J4
U 1 1 5A8CC648
P 8150 2400
F 0 "J4" H 8150 2500 50  0000 C CNN
F 1 "Buzzer" H 8150 2200 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 8150 2400 50  0001 C CNN
F 3 "" H 8150 2400 50  0001 C CNN
	1    8150 2400
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J1
U 1 1 5A8CC6D8
P 8300 1800
F 0 "J1" H 8300 1900 50  0000 C CNN
F 1 "PumpSSR" H 8300 1600 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B02B-XH-A_02x2.50mm_Straight" H 8300 1800 50  0001 C CNN
F 3 "" H 8300 1800 50  0001 C CNN
	1    8300 1800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J6
U 1 1 5A8CC75E
P 9200 3700
F 0 "J6" H 9200 3800 50  0000 C CNN
F 1 "FanPWR" H 9200 3500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 9200 3700 50  0001 C CNN
F 3 "" H 9200 3700 50  0001 C CNN
	1    9200 3700
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J2
U 1 1 5A8CC7AE
P 4750 2600
F 0 "J2" H 4750 2800 50  0000 C CNN
F 1 "Probe" H 4750 2400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4750 2600 50  0001 C CNN
F 3 "" H 4750 2600 50  0001 C CNN
	1    4750 2600
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x03 J5
U 1 1 5A8CC827
P 8700 3050
F 0 "J5" H 8700 3250 50  0000 C CNN
F 1 "CoilSwitch" H 8700 2850 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B03B-XH-A_03x2.50mm_Straight" H 8700 3050 50  0001 C CNN
F 3 "" H 8700 3050 50  0001 C CNN
	1    8700 3050
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D1
U 1 1 5A8CC87C
P 8850 3600
F 0 "D1" H 8850 3700 50  0000 C CNN
F 1 "1N5819" H 8850 3500 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8850 3600 50  0001 C CNN
F 3 "" H 8850 3600 50  0001 C CNN
	1    8850 3600
	0    1    1    0   
$EndComp
$Comp
L +12V #PWR01
U 1 1 5A8CCBBD
P 9000 1450
F 0 "#PWR01" H 9000 1300 50  0001 C CNN
F 1 "+12V" H 9000 1590 50  0000 C CNN
F 2 "" H 9000 1450 50  0001 C CNN
F 3 "" H 9000 1450 50  0001 C CNN
	1    9000 1450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 5A8CCC1C
P 9450 1450
F 0 "#PWR02" H 9450 1300 50  0001 C CNN
F 1 "+5V" H 9450 1590 50  0000 C CNN
F 2 "" H 9450 1450 50  0001 C CNN
F 3 "" H 9450 1450 50  0001 C CNN
	1    9450 1450
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR03
U 1 1 5A8CCC6C
P 7700 5100
F 0 "#PWR03" H 7700 4850 50  0001 C CNN
F 1 "Earth" H 7700 4950 50  0001 C CNN
F 2 "" H 7700 5100 50  0001 C CNN
F 3 "" H 7700 5100 50  0001 C CNN
	1    7700 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2700 7400 2700
Wire Wire Line
	7700 2900 7700 3150
Wire Wire Line
	7700 3150 7700 3800
Wire Wire Line
	7700 3800 7700 4200
Wire Wire Line
	7700 4200 7700 5100
Wire Wire Line
	6650 3300 7050 3300
Wire Wire Line
	7050 3300 7050 2700
Text Label 7100 3100 0    60   ~ 0
GPIO23
Wire Wire Line
	7950 2400 7950 1450
Wire Wire Line
	7950 1450 8100 1450
Wire Wire Line
	8100 1450 8500 1450
Wire Wire Line
	8500 1450 9000 1450
Text Label 6850 3500 0    60   ~ 0
GPIO25
Wire Wire Line
	6650 3600 7150 3600
Wire Wire Line
	7450 3600 7900 3600
Wire Wire Line
	8500 2950 8500 1450
Connection ~ 8500 1450
Wire Wire Line
	8200 3400 8200 3050
Wire Wire Line
	8200 3050 8500 3050
Wire Wire Line
	7400 3150 7700 3150
Wire Wire Line
	7700 3150 8500 3150
Connection ~ 7700 3150
Wire Wire Line
	9000 1450 9000 3450
Wire Wire Line
	9000 3450 9000 3700
Connection ~ 9000 1450
Wire Wire Line
	7700 3800 8200 3800
Wire Wire Line
	8200 3800 8850 3800
Wire Wire Line
	8850 3800 9000 3800
Connection ~ 7700 3800
Wire Wire Line
	8850 3750 8850 3800
Connection ~ 8850 3800
Wire Wire Line
	8850 3450 9000 3450
Connection ~ 9000 3450
Wire Wire Line
	6650 4200 7700 4200
Wire Wire Line
	7700 4200 10000 4200
Connection ~ 7700 4200
$Comp
L Conn_01x02 J8
U 1 1 5A8CE6B4
P 4750 3250
F 0 "J8" H 4750 3350 50  0000 C CNN
F 1 "PiScreen Power" H 4750 3050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4750 3250 50  0001 C CNN
F 3 "" H 4750 3250 50  0001 C CNN
	1    4750 3250
	-1   0    0    -1  
$EndComp
Text Label 6950 4150 0    60   ~ 0
GND
Wire Wire Line
	5850 2600 6150 2600
Text Label 5950 2600 0    60   ~ 0
3v3
Wire Wire Line
	5550 2600 5550 2900
Wire Wire Line
	5550 2900 6150 2900
Text Label 5750 2850 0    60   ~ 0
GPIO4
Wire Wire Line
	6650 2500 6650 2600
Wire Wire Line
	4950 2500 5150 2500
Wire Wire Line
	5150 2500 6650 2500
Text Label 5200 2500 0    60   ~ 0
5V
Wire Wire Line
	4950 2600 5550 2600
Wire Wire Line
	4950 2700 4950 3000
Text Label 5250 3000 0    60   ~ 0
GND
Wire Wire Line
	8200 3800 8200 3800
Connection ~ 8200 3800
Connection ~ 7950 1450
Wire Wire Line
	6650 3100 6850 3100
Wire Wire Line
	6850 3100 6850 2100
Wire Wire Line
	6850 2100 7050 2100
Text Label 6700 2050 0    60   ~ 0
GPIO18
Wire Wire Line
	7350 2100 7400 2100
Wire Wire Line
	7700 1900 8100 1900
Wire Wire Line
	8100 1800 8100 1450
Connection ~ 8100 1450
Wire Wire Line
	7700 2300 7400 2300
Wire Wire Line
	7400 2300 7400 3150
Wire Wire Line
	9450 4800 9700 4800
Wire Wire Line
	7950 2500 7700 2500
$Comp
L Conn_01x04 J9
U 1 1 5A8E615F
P 9750 1450
F 0 "J9" H 9750 1650 50  0000 C CNN
F 1 "ATX PWR IN" H 9750 1150 50  0000 C CNN
F 2 "Connectors_Phoenix:PhoenixContact_MSTBVA-G_04x5.08mm_Vertical" H 9750 1450 50  0001 C CNN
F 3 "" H 9750 1450 50  0001 C CNN
	1    9750 1450
	0    -1   -1   0   
$EndComp
$Comp
L +12V #PWR04
U 1 1 5A8E6215
P 9650 1900
F 0 "#PWR04" H 9650 1750 50  0001 C CNN
F 1 "+12V" H 9650 2040 50  0000 C CNN
F 2 "" H 9650 1900 50  0001 C CNN
F 3 "" H 9650 1900 50  0001 C CNN
	1    9650 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	9650 1650 9650 1900
$Comp
L +5V #PWR05
U 1 1 5A8E6304
P 9950 1900
F 0 "#PWR05" H 9950 1750 50  0001 C CNN
F 1 "+5V" H 9950 2040 50  0000 C CNN
F 2 "" H 9950 1900 50  0001 C CNN
F 3 "" H 9950 1900 50  0001 C CNN
	1    9950 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	9950 1900 9950 1650
$Comp
L Earth #PWR06
U 1 1 5A8E654C
P 9750 1950
F 0 "#PWR06" H 9750 1700 50  0001 C CNN
F 1 "Earth" H 9750 1800 50  0001 C CNN
F 2 "" H 9750 1950 50  0001 C CNN
F 3 "" H 9750 1950 50  0001 C CNN
	1    9750 1950
	1    0    0    -1  
$EndComp
$Comp
L Earth #PWR07
U 1 1 5A8E65A4
P 9850 1950
F 0 "#PWR07" H 9850 1700 50  0001 C CNN
F 1 "Earth" H 9850 1800 50  0001 C CNN
F 2 "" H 9850 1950 50  0001 C CNN
F 3 "" H 9850 1950 50  0001 C CNN
	1    9850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 1650 9750 1950
Wire Wire Line
	9850 1650 9850 1950
Wire Wire Line
	9450 1450 9450 4800
Wire Wire Line
	5150 2500 5150 3250
Wire Wire Line
	5150 3250 4950 3250
Connection ~ 5150 2500
Wire Wire Line
	4950 3000 6150 3000
Wire Wire Line
	4950 3350 5150 3350
Wire Wire Line
	5150 3350 5150 3800
Wire Wire Line
	5150 3800 6150 3800
Text Label 5250 3800 0    60   ~ 0
GND
$EndSCHEMATC
