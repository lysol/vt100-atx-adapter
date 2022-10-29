EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector:ATX-24 J?
U 1 1 63386C7E
P 2150 3400
F 0 "J?" H 2150 4067 50  0000 C CNN
F 1 "ATX-24" H 2150 3976 50  0000 C CNN
F 2 "" H 2150 3300 50  0001 C CNN
F 3 "https://www.intel.com/content/dam/www/public/us/en/documents/guides/power-supply-design-guide-june.pdf#page=33" H 4550 2850 50  0001 C CNN
	1    2150 3400
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7824 U?
U 1 1 633885F7
P 4150 3200
F 0 "U?" H 4150 3442 50  0000 C CNN
F 1 "L7824" H 4150 3351 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-252-2" H 4175 3050 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 4150 3150 50  0001 C CNN
	1    4150 3200
	1    0    0    -1  
$EndComp
$Comp
L Diode_Bridge:DF04M D?
U 1 1 633897AD
P 5750 3350
F 0 "D?" H 6094 3396 50  0000 L CNN
F 1 "DF04M" H 6094 3305 50  0000 L CNN
F 2 "Diode_THT:Diode_Bridge_DIP-4_W7.62mm_P5.08mm" H 5900 3475 50  0001 L CNN
F 3 "http://www.vishay.com/docs/88571/dfm.pdf" H 5750 3350 50  0001 C CNN
	1    5750 3350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
