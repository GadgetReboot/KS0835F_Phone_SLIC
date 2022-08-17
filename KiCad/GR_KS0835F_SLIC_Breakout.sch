EESchema Schematic File Version 4
LIBS:GR_KS0835F_SLIC_Breakout-cache
EELAYER 29 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "KS0835F SLIC Breakout"
Date "2022-08-06"
Rev "1"
Comp "Gadget Reboot"
Comment1 "https://www.youtube.com/gadgetreboot"
Comment2 "https://github.com/GadgetReboot/KS0835F_Phone_SLIC"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:CP1_Small C4
U 1 1 627282D2
P 5900 4700
F 0 "C4" H 5991 4746 50  0000 L CNN
F 1 "10uF 16v" H 5991 4655 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P5.00mm" H 5900 4700 50  0001 C CNN
F 3 "~" H 5900 4700 50  0001 C CNN
	1    5900 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 62729322
P 5500 4675
F 0 "C3" H 5575 4700 50  0000 L CNN
F 1 "100nF" H 5575 4600 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 5500 4675 50  0001 C CNN
F 3 "~" H 5500 4675 50  0001 C CNN
	1    5500 4675
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR03
U 1 1 6272932C
P 5500 4825
F 0 "#PWR03" H 5500 4575 50  0001 C CNN
F 1 "GNDREF" H 5750 4550 50  0001 C CNN
F 2 "" H 5500 4825 50  0001 C CNN
F 3 "" H 5500 4825 50  0001 C CNN
	1    5500 4825
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5500 4825 5500 4775
Wire Wire Line
	5500 4575 5500 4550
Wire Wire Line
	5900 4600 5900 4550
Wire Wire Line
	5900 4550 5500 4550
$Comp
L power:GNDREF #PWR05
U 1 1 6273E10E
P 5900 4825
F 0 "#PWR05" H 5900 4575 50  0001 C CNN
F 1 "GNDREF" H 6150 4550 50  0001 C CNN
F 2 "" H 5900 4825 50  0001 C CNN
F 3 "" H 5900 4825 50  0001 C CNN
	1    5900 4825
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5900 4825 5900 4800
Wire Wire Line
	6100 4550 5900 4550
Connection ~ 5900 4550
$Comp
L Device:R_Small_US R1
U 1 1 6289222C
P 4375 2850
F 0 "R1" H 4500 2825 50  0000 C CNN
F 1 "1 MEG" H 4550 2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" H 4375 2850 50  0001 C CNN
F 3 "~" H 4375 2850 50  0001 C CNN
	1    4375 2850
	-1   0    0    1   
$EndComp
Text Notes 7475 2975 0    50   ~ 0
Telephony \nDevice
$Comp
L Connector:TestPoint TP9
U 1 1 6276F9B2
P 6225 2300
F 0 "TP9" H 6175 2500 50  0000 L CNN
F 1 "TestPoint" V 6270 2488 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6425 2300 50  0001 C CNN
F 3 "~" H 6425 2300 50  0001 C CNN
	1    6225 2300
	1    0    0    -1  
$EndComp
$Comp
L KS0835F:KS0835F U1
U 1 1 62EFDCB0
P 3325 3800
F 0 "U1" H 3483 4687 60  0000 C CNN
F 1 "KS0835F" H 3483 4581 60  0000 C CNN
F 2 "footprints:KS0835F" H 3525 4000 60  0001 L CNN
F 3 "http://file2.dzsc.com/product/17/12/27/1130655_113518007.pdf" H 3525 4100 60  0001 L CNN
F 4 "RING Subscriber Line Interface Circuit Module" H 3525 4800 60  0001 L CNN "Description"
	1    3325 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ12 J1
U 1 1 62F12F43
P 7125 2850
F 0 "J1" H 6900 3325 50  0000 R CNN
F 1 "RJ" H 7400 3325 50  0000 R CNN
F 2 "footprints:RJ_6p6c" V 7125 2875 50  0001 C CNN
F 3 "~" V 7125 2875 50  0001 C CNN
	1    7125 2850
	-1   0    0    1   
$EndComp
$Comp
L Device:D_ALT D2
U 1 1 62F1944F
P 4925 2650
F 0 "D2" H 4875 2750 50  0000 L CNN
F 1 "1N4004" H 4775 2550 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4925 2650 50  0001 C CNN
F 3 "~" H 4925 2650 50  0001 C CNN
	1    4925 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Zener_ALT D6
U 1 1 62F1B0F4
P 5775 2875
F 0 "D6" H 5775 3000 50  0000 C CNN
F 1 "P6KE82" H 5775 2750 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5775 2875 50  0001 C CNN
F 3 "~" H 5775 2875 50  0001 C CNN
	1    5775 2875
	1    0    0    -1  
$EndComp
$Comp
L Device:D_ALT D4
U 1 1 62F1D78B
P 5325 2650
F 0 "D4" H 5275 2750 50  0000 L CNN
F 1 "1N4004" H 5175 2550 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5325 2650 50  0001 C CNN
F 3 "~" H 5325 2650 50  0001 C CNN
	1    5325 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:D_ALT D3
U 1 1 62F1E32C
P 4925 3100
F 0 "D3" H 4875 3000 50  0000 L CNN
F 1 "1N4004" H 4800 3225 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 4925 3100 50  0001 C CNN
F 3 "~" H 4925 3100 50  0001 C CNN
	1    4925 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:D_ALT D5
U 1 1 62F1E336
P 5325 3100
F 0 "D5" H 5275 3000 50  0000 L CNN
F 1 "1N4004" H 5175 3225 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 5325 3100 50  0001 C CNN
F 3 "~" H 5325 3100 50  0001 C CNN
	1    5325 3100
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR02
U 1 1 62F220DE
P 4600 2975
F 0 "#PWR02" H 4600 2725 50  0001 C CNN
F 1 "GNDREF" H 4850 2700 50  0001 C CNN
F 2 "" H 4600 2975 50  0001 C CNN
F 3 "" H 4600 2975 50  0001 C CNN
	1    4600 2975
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4775 2650 4750 2650
Wire Wire Line
	4750 2650 4750 2875
Wire Wire Line
	4750 2875 4750 3100
Wire Wire Line
	4750 3100 4775 3100
Connection ~ 4750 2875
Wire Wire Line
	5475 3100 5525 3100
Wire Wire Line
	5525 3100 5525 2875
Wire Wire Line
	5525 2650 5475 2650
Wire Wire Line
	5625 2875 5525 2875
Connection ~ 5525 2875
Wire Wire Line
	5525 2875 5525 2650
$Comp
L power:GNDREF #PWR06
U 1 1 62F26C38
P 6050 2975
F 0 "#PWR06" H 6050 2725 50  0001 C CNN
F 1 "GNDREF" H 6300 2700 50  0001 C CNN
F 2 "" H 6050 2975 50  0001 C CNN
F 3 "" H 6050 2975 50  0001 C CNN
	1    6050 2975
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 2975 6050 2875
Wire Wire Line
	6050 2875 5925 2875
Wire Wire Line
	5075 3100 5125 3100
Wire Wire Line
	5175 2650 5125 2650
Wire Wire Line
	4600 2875 4600 2975
Wire Wire Line
	4600 2875 4750 2875
Wire Wire Line
	3825 3350 4375 3350
Wire Wire Line
	5125 3350 5125 3100
Connection ~ 5125 3100
Wire Wire Line
	5125 3100 5175 3100
Wire Wire Line
	3825 3250 4050 3250
Wire Wire Line
	4050 3250 4050 2350
Wire Wire Line
	4050 2350 4375 2350
Wire Wire Line
	5125 2350 5125 2650
Connection ~ 5125 2650
Wire Wire Line
	5125 2650 5075 2650
Wire Wire Line
	5125 3350 6250 3350
Wire Wire Line
	6500 3350 6500 2950
Wire Wire Line
	6500 2950 6725 2950
Connection ~ 5125 3350
Wire Wire Line
	6725 2850 6500 2850
Wire Wire Line
	6500 2850 6500 2350
Wire Wire Line
	6500 2350 6225 2350
Connection ~ 5125 2350
Wire Wire Line
	4375 2950 4375 3350
Connection ~ 4375 3350
Wire Wire Line
	4375 3350 5125 3350
Wire Wire Line
	4375 2750 4375 2350
Connection ~ 4375 2350
Wire Wire Line
	4375 2350 5125 2350
$Comp
L Device:D_ALT D1
U 1 1 62F5365F
P 4150 4650
F 0 "D1" H 4100 4750 50  0000 L CNN
F 1 "1N4148" H 4025 4825 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4150 4650 50  0001 C CNN
F 3 "~" H 4150 4650 50  0001 C CNN
	1    4150 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3825 4650 4000 4650
$Comp
L power:VCC #PWR07
U 1 1 62F5D427
P 6100 4425
F 0 "#PWR07" H 6100 4275 50  0001 C CNN
F 1 "VCC" H 6117 4598 50  0000 C CNN
F 2 "" H 6100 4425 50  0001 C CNN
F 3 "" H 6100 4425 50  0001 C CNN
	1    6100 4425
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 4425 6100 4550
Wire Wire Line
	3825 4550 5500 4550
Connection ~ 5500 4550
Text Label 4950 4650 0    50   ~ 0
~PD
$Comp
L power:GNDREF #PWR01
U 1 1 62F708F3
P 4125 4425
F 0 "#PWR01" H 4125 4175 50  0001 C CNN
F 1 "GNDREF" H 4375 4150 50  0001 C CNN
F 2 "" H 4125 4425 50  0001 C CNN
F 3 "" H 4125 4425 50  0001 C CNN
	1    4125 4425
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3825 4450 3975 4450
Wire Wire Line
	3975 4450 3975 4375
Wire Wire Line
	3975 4375 4125 4375
Wire Wire Line
	4125 4375 4125 4425
$Comp
L Device:C_Small C2
U 1 1 62F72F0D
P 4325 4250
F 0 "C2" V 4275 4075 50  0000 L CNN
F 1 "100nF" V 4275 4300 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4325 4250 50  0001 C CNN
F 3 "~" H 4325 4250 50  0001 C CNN
	1    4325 4250
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 62F74C7F
P 4100 4150
F 0 "C1" V 4050 3975 50  0000 L CNN
F 1 "100nF" V 4050 4200 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4100 4150 50  0001 C CNN
F 3 "~" H 4100 4150 50  0001 C CNN
	1    4100 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	3825 4150 4000 4150
Wire Wire Line
	3825 4250 4225 4250
Wire Wire Line
	4200 4150 4675 4150
Wire Wire Line
	4425 4250 4825 4250
Text Label 4875 4150 0    50   ~ 0
Ain
Text Label 4875 4250 0    50   ~ 0
Aout
Text Label 4900 3450 0    50   ~ 0
F_R
Text Label 4900 3550 0    50   ~ 0
RM
Text Label 4900 3650 0    50   ~ 0
SHK
Wire Wire Line
	4300 4650 4825 4650
Wire Wire Line
	3825 3450 4000 3450
Wire Wire Line
	3825 3550 4150 3550
Wire Wire Line
	3825 3650 4300 3650
$Comp
L Connector_Generic:Conn_01x10 J2
U 1 1 62F98780
P 7375 4300
F 0 "J2" H 7325 3675 50  0000 L CNN
F 1 "Conn_01x10" H 7455 4201 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 7375 4300 50  0001 C CNN
F 3 "~" H 7375 4300 50  0001 C CNN
	1    7375 4300
	1    0    0    -1  
$EndComp
Text Label 6975 3900 2    50   ~ 0
F_R
Text Label 6950 4000 2    50   ~ 0
RM
Text Label 7000 4100 2    50   ~ 0
SHK
Wire Wire Line
	7175 3900 6850 3900
Wire Wire Line
	7175 4000 6850 4000
Wire Wire Line
	7175 4100 6850 4100
Text Label 6950 4200 2    50   ~ 0
~PD
Wire Wire Line
	7175 4200 6850 4200
$Comp
L power:VCC #PWR08
U 1 1 62FA3521
P 6600 4650
F 0 "#PWR08" H 6600 4500 50  0001 C CNN
F 1 "VCC" H 6617 4823 50  0000 C CNN
F 2 "" H 6600 4650 50  0001 C CNN
F 3 "" H 6600 4650 50  0001 C CNN
	1    6600 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR09
U 1 1 62FAC0FD
P 7100 4875
F 0 "#PWR09" H 7100 4625 50  0001 C CNN
F 1 "GNDREF" H 7350 4600 50  0001 C CNN
F 2 "" H 7100 4875 50  0001 C CNN
F 3 "" H 7100 4875 50  0001 C CNN
	1    7100 4875
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7175 4800 7100 4800
Wire Wire Line
	7100 4800 7100 4875
Wire Wire Line
	7175 4700 6600 4700
Wire Wire Line
	6600 4700 6600 4650
Wire Wire Line
	7175 4600 6850 4600
Text Label 6850 4600 0    50   ~ 0
Aout
Wire Wire Line
	7175 4400 6850 4400
Text Label 6850 4400 0    50   ~ 0
Ain
Wire Wire Line
	7175 4500 7100 4500
Wire Wire Line
	7100 4500 7100 4800
Connection ~ 7100 4800
Wire Wire Line
	7175 4300 7100 4300
Wire Wire Line
	7100 4300 7100 4500
Connection ~ 7100 4500
Text Notes 7450 3925 0    50   ~ 0
Fwd/Rev
Text Notes 7450 4025 0    50   ~ 0
Ring Mode
Text Notes 7450 4125 0    50   ~ 0
Switch Hook
Text Notes 7450 4225 0    50   ~ 0
~Power Down
Text Notes 7450 4325 0    50   ~ 0
GND
Text Notes 7450 4425 0    50   ~ 0
Audio In
Text Notes 7450 4525 0    50   ~ 0
GND
Text Notes 7450 4625 0    50   ~ 0
Audio Out
Text Notes 7450 4725 0    50   ~ 0
VCC 3.3V - 5V
Text Notes 7450 4825 0    50   ~ 0
GND
Wire Wire Line
	6225 2300 6225 2350
Connection ~ 6225 2350
Wire Wire Line
	6225 2350 5125 2350
$Comp
L Connector:TestPoint TP10
U 1 1 62FD69A5
P 6250 3300
F 0 "TP10" H 6200 3500 50  0000 L CNN
F 1 "TestPoint" V 6295 3488 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 6450 3300 50  0001 C CNN
F 3 "~" H 6450 3300 50  0001 C CNN
	1    6250 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3300 6250 3350
Connection ~ 6250 3350
Wire Wire Line
	6250 3350 6500 3350
$Comp
L Connector:TestPoint TP4
U 1 1 62FD8A85
P 4675 4050
F 0 "TP4" H 4625 4250 50  0000 L CNN
F 1 "TestPoint" V 4720 4238 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4875 4050 50  0001 C CNN
F 3 "~" H 4875 4050 50  0001 C CNN
	1    4675 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 62FD93AC
P 4825 4050
F 0 "TP5" H 4775 4250 50  0000 L CNN
F 1 "TestPoint" V 4870 4238 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5025 4050 50  0001 C CNN
F 3 "~" H 5025 4050 50  0001 C CNN
	1    4825 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4675 4050 4675 4150
Connection ~ 4675 4150
Wire Wire Line
	4675 4150 5050 4150
Wire Wire Line
	4825 4050 4825 4250
Connection ~ 4825 4250
Wire Wire Line
	4825 4250 5050 4250
$Comp
L Connector:TestPoint TP2
U 1 1 62FDCECB
P 4150 3700
F 0 "TP2" H 4100 3900 50  0000 L CNN
F 1 "TestPoint" V 4195 3888 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4350 3700 50  0001 C CNN
F 3 "~" H 4350 3700 50  0001 C CNN
	1    4150 3700
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP1
U 1 1 62FDCED5
P 4000 3700
F 0 "TP1" H 3950 3900 50  0000 L CNN
F 1 "TestPoint" V 4045 3888 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4200 3700 50  0001 C CNN
F 3 "~" H 4200 3700 50  0001 C CNN
	1    4000 3700
	-1   0    0    1   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 62FDFB05
P 4300 3700
F 0 "TP3" H 4250 3900 50  0000 L CNN
F 1 "TestPoint" V 4345 3888 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 4500 3700 50  0001 C CNN
F 3 "~" H 4500 3700 50  0001 C CNN
	1    4300 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 3700 4000 3450
Connection ~ 4000 3450
Wire Wire Line
	4000 3450 5050 3450
Wire Wire Line
	4150 3700 4150 3550
Connection ~ 4150 3550
Wire Wire Line
	4150 3550 5050 3550
Wire Wire Line
	4300 3700 4300 3650
Connection ~ 4300 3650
Wire Wire Line
	4300 3650 5050 3650
$Comp
L Connector:TestPoint TP6
U 1 1 62FE5BD6
P 4825 4725
F 0 "TP6" H 4775 4925 50  0000 L CNN
F 1 "TestPoint" V 4870 4913 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5025 4725 50  0001 C CNN
F 3 "~" H 5025 4725 50  0001 C CNN
	1    4825 4725
	-1   0    0    1   
$EndComp
Wire Wire Line
	4825 4725 4825 4650
Connection ~ 4825 4650
Wire Wire Line
	4825 4650 5050 4650
$Comp
L Connector:TestPoint TP7
U 1 1 62FE849B
P 5500 4250
F 0 "TP7" H 5450 4450 50  0000 L CNN
F 1 "TestPoint" V 5545 4438 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5700 4250 50  0001 C CNN
F 3 "~" H 5700 4250 50  0001 C CNN
	1    5500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4250 5500 4550
$Comp
L Connector:TestPoint TP8
U 1 1 62FEAD43
P 5700 4250
F 0 "TP8" H 5650 4450 50  0000 L CNN
F 1 "TestPoint" V 5745 4438 50  0001 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.0mm" H 5900 4250 50  0001 C CNN
F 3 "~" H 5900 4250 50  0001 C CNN
	1    5700 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR04
U 1 1 62FEBEF0
P 5700 4300
F 0 "#PWR04" H 5700 4050 50  0001 C CNN
F 1 "GNDREF" H 5950 4025 50  0001 C CNN
F 2 "" H 5700 4300 50  0001 C CNN
F 3 "" H 5700 4300 50  0001 C CNN
	1    5700 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 4250 5700 4300
$EndSCHEMATC
