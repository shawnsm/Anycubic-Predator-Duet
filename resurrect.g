; File "0:/gcodes/D_CalibrationCube_v2.gcode" resume print after print paused at 2019-08-12 23:12
G21
M140 P0 S65.0
; Delta parameters
M665 L440.380:440.380:440.380 R225.703 H418.560 B185.0 X0.234 Y0.863 Z0.000
M666 X-0.451 Y-0.331 Z0.782 A0.00 B0.00
T-1 P0
G92 X14.400 Y-14.400 Z14.340
G60 S1
M98 P"resurrect-prologue.g"
M116
M290 X0.000 Y0.000 Z0.000 R0
G10 L2 P1 X0.00 Y0.00 Z0.00
G10 L2 P2 X0.00 Y0.00 Z0.00
G10 L2 P3 X0.00 Y0.00 Z0.00
G10 L2 P4 X0.00 Y0.00 Z0.00
G10 L2 P5 X0.00 Y0.00 Z0.00
G10 L2 P6 X0.00 Y0.00 Z0.00
G10 L2 P7 X0.00 Y0.00 Z0.00
G10 L2 P8 X0.00 Y0.00 Z0.00
G10 L2 P9 X0.00 Y0.00 Z0.00
G54
G10 P0 S210 R210
T0 P6
M106 S0.65
M106 P0 S0.65
M106 P2 S0.00
M106 P3 S0.00
M106 P4 S0.00
M106 P5 S0.00
M106 P6 S0.00
M106 P7 S0.00
M106 P8 S0.00
M116
G92 E0.00000
M83
M23 "0:/gcodes/D_CalibrationCube_v2.gcode"
M26 S1011220 P0.000
G0 F6000 Z16.340
G0 F6000 X14.400 Y-14.400
G0 F6000 Z14.340
G1 F3000.0 P0
G21
M24
