
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:102

00:00:142	
506.5822	
198.090Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental {C:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/utils_1/imports/synth_1/UART_top.dcp}Z12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2}
{C:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/utils_1/imports/synth_1/UART_top.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
c
Command: %s
53*	vivadotcl22
0synth_design -top UART_top -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 
Z
$Part: %s does not have CEAM library.966*device2
xc7a35tcpg236-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
15016Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1360.102 ; gain = 449.449
h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
receive_state_output2
wire2r
nC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/Receive.v2
478@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
baud_clk_x22
wire2r
nC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/Receive.v2
508@Z8-11241h px� 
�
synthesizing module '%s'%s4497*oasys2

UART_top2
 2s
oC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/UART_top.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

clk_gen22
 2q
mC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/clkgen.v2
468@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

clk_gen22
 2
02
12q
mC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/clkgen.v2
468@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

Transmit2
 2s
oC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/Transmit.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Transmit2
 2
02
12s
oC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/Transmit.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
Receive2
 2r
nC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/Receive.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
Oversample_clk2
 2q
mC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/clkgen.v2
708@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Oversample_clk2
 2
02
12q
mC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/clkgen.v2
708@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
Receive2
 2
02
12r
nC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/Receive.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
sseg_x4_top2
 2w
sC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/sseg_x4_top_.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
digit_selector2
 2t
pC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/digit_sel.v2
238@Z8-6157h px� 
�
default block is never used226*oasys2t
pC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/digit_sel.v2
368@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
digit_selector2
 2
02
12t
pC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/digit_sel.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
hex_num_gen2
 2w
sC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/sseg_x4_top_.v2
518@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2w
sC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/sseg_x4_top_.v2
578@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
hex_num_gen2
 2
02
12w
sC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/sseg_x4_top_.v2
518@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

Single7Seg2
 2v
rC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/single_sseg.v2
18@Z8-6157h px� 
�
default block is never used226*oasys2v
rC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/single_sseg.v2
108@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Single7Seg2
 2
02
12v
rC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/single_sseg.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sseg_x4_top2
 2
02
12w
sC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/sseg_x4_top_.v2
238@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82
sw2
162
sseg_x4_top2s
oC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/UART_top.v2
458@Z8-689h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

UART_top2
 2
02
12s
oC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/UART_top.v2
238@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
prev_RX_reg2r
nC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/Receive.v2
558@Z8-6014h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[15]2

UART_topZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[14]2

UART_topZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2

UART_topZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2

UART_topZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2

UART_topZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2

UART_topZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2

UART_topZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2

UART_topZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:12 ; elapsed = 00:00:14 . Memory (MB): peak = 1471.312 ; gain = 560.660
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:12 ; elapsed = 00:00:14 . Memory (MB): peak = 1471.312 ; gain = 560.660
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:14 . Memory (MB): peak = 1471.312 ; gain = 560.660
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0032

1471.3122
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2x
tC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/constrs_1/new/constraints.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2x
tC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/constrs_1/new/constraints.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2v
tC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/constrs_1/new/constraints.xdc2
.Xil/UART_top_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1574.9652
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0052

1574.9652
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:24 ; elapsed = 00:00:26 . Memory (MB): peak = 1574.965 ; gain = 664.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1574.965 ; gain = 664.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1574.965 ; gain = 664.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2

TransmitZ8-802h px� 
k
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2	
ReceiveZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    IDLE |                             0001 |                               00
h p
x
� 
y
%s
*synth2a
_                   START |                             0010 |                               01
h p
x
� 
y
%s
*synth2a
_                    DATA |                             0100 |                               10
h p
x
� 
y
%s
*synth2a
_                    STOP |                             1000 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2

TransmitZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                    IDLE |                             0001 |                               00
h p
x
� 
y
%s
*synth2a
_                   BEGIN |                             0010 |                               01
h p
x
� 
y
%s
*synth2a
_                    DATA |                             0100 |                               10
h p
x
� 
y
%s
*synth2a
_                    STOP |                             1000 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2	
one-hot2	
ReceiveZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
hex_num_reg2w
sC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.srcs/sources_1/new/sseg_x4_top_.v2
588@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1574.965 ; gain = 664.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               11 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                9 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                6 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 10    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    9 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 10    
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 7     
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
d
+design %s has port %s driven by constant %s3447*oasys2

UART_top2
dp2
1Z8-3917h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[15]2

UART_topZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[14]2

UART_topZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2

UART_topZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2

UART_topZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2

UART_topZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2

UART_topZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2

UART_topZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2

UART_topZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 1574.965 ; gain = 664.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:39 ; elapsed = 00:00:41 . Memory (MB): peak = 1574.965 ; gain = 664.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:39 ; elapsed = 00:00:41 . Memory (MB): peak = 1574.965 ; gain = 664.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
0displayReceivedData/hex_generator/hex_num_reg[3]2

UART_topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
0displayReceivedData/hex_generator/hex_num_reg[2]2

UART_topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
0displayReceivedData/hex_generator/hex_num_reg[1]2

UART_topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
0displayReceivedData/hex_generator/hex_num_reg[0]2

UART_topZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:39 ; elapsed = 00:00:42 . Memory (MB): peak = 1574.965 ; gain = 664.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:48 ; elapsed = 00:00:50 . Memory (MB): peak = 1574.965 ; gain = 664.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:48 ; elapsed = 00:00:50 . Memory (MB): peak = 1574.965 ; gain = 664.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:48 ; elapsed = 00:00:50 . Memory (MB): peak = 1574.965 ; gain = 664.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:48 ; elapsed = 00:00:50 . Memory (MB): peak = 1574.965 ; gain = 664.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:48 ; elapsed = 00:00:50 . Memory (MB): peak = 1574.965 ; gain = 664.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:48 ; elapsed = 00:00:50 . Memory (MB): peak = 1574.965 ; gain = 664.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|      |Cell |Count |
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|1     |BUFG |     1|
h px� 
0
%s*synth2
|2     |LUT1 |     4|
h px� 
0
%s*synth2
|3     |LUT2 |    11|
h px� 
0
%s*synth2
|4     |LUT3 |    15|
h px� 
0
%s*synth2
|5     |LUT4 |    35|
h px� 
0
%s*synth2
|6     |LUT5 |    37|
h px� 
0
%s*synth2
|7     |LUT6 |    19|
h px� 
0
%s*synth2
|8     |FDCE |    37|
h px� 
0
%s*synth2
|9     |FDPE |     1|
h px� 
0
%s*synth2
|10    |FDRE |    46|
h px� 
0
%s*synth2
|11    |FDSE |     7|
h px� 
0
%s*synth2
|12    |IBUF |    12|
h px� 
0
%s*synth2
|13    |OBUF |    21|
h px� 
0
%s*synth2
+------+-----+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:48 ; elapsed = 00:00:50 . Memory (MB): peak = 1574.965 ; gain = 664.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 15 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:33 ; elapsed = 00:00:47 . Memory (MB): peak = 1574.965 ; gain = 560.660
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:48 ; elapsed = 00:00:51 . Memory (MB): peak = 1574.965 ; gain = 664.312
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

1574.9652
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1574.9652
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

14d19d83Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
472
252
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:562

00:01:112

1574.9652

1063.859Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0022

1574.9652
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2m
kC:/Users/Admin/ECEN340Vivado/UARTLab - Copy/uartputtytransmission/UARTLab/UARTLab.runs/synth_1/UART_top.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2[
Yreport_utilization -file UART_top_utilization_synth.rpt -pb UART_top_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Dec 11 15:47:47 2024Z17-206h px� 


End Record