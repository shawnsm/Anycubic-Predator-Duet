; Configuration file for Duet WiFi (firmware version 1.21)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v2 on Tue Feb 26 2019 21:31:01 GMT+0000 (Greenwich Mean Time)

; General preferences
G90                                         				; Send absolute coordinates...
M83                                         				; ...but relative extruder moves

; Delta Settings
M665 L440.380 R226.821 H408 B185.0 X0 y0 z0      			; Set delta radius, diagonal rod length, printable radius and homed height
M666 X0 y0 z0 A0.00 B0.00                               	; Put your endstop adjustments here, or let auto calibration find them

; Network
M550 P"Anycubic Predator"                     				; Set machine name
M551 P""                         							; Set password
M552 P192.168.1.30 S1                          				; Enable network and acquire dynamic address via DHCP
M586 P0 S1                                  				; Enable HTTP
M586 P1 S0                                  				; Disable FTP
M586 P2 S0                                  				; Disable Telnet

; Drives
M569 P0 S1                                  				; Drive 0 goes forwards
M569 P1 S1                                  				; Drive 1 goes forwards
M569 P2 S1                                  				; Drive 2 goes forwards
M569 P3 S0                                  				; Drive 3 goes forwards
M584 X0 Y1 Z2 E3                                    		; set drive mapping
M350 X16 Y16 Z16 E16 I1                     				; Configure microstepping with interpolation
M92 X80.00 Y80.00 Z80.00 E415             					; Set steps per mm
M566 X3000 Y3000 Z3000 E3000    	            			; Set maximum instantaneous speed changes (mm/min)
M203 X12000.00 Y12000.00 Z12000.00 E12000 					; Set maximum speeds (mm/min)
M201 X9000.00 Y9000.00 Z9000.00 E6000.00    				; Set accelerations (mm/s^2)
M906 X1400.00 Y1400.00 Z1400.00 E1000.00 I30 				; Set motor currents (mA) and motor idle factor in per cent
M84 S30                                     				; Set idle timeout

; Retraction
M207 S2.5 F7000 R0.1 T2500 Z0.5								; Firmware retraction

; Axis Limits
M208 Z0 S1                                  				; Set minimum Z

; Endstops
M574 X2 S1 P"xstop"											; configure active-high endstop for high end on X via pin xstop
M574 Y2 S1 P"ystop"                                 		; configure active-high endstop for high end on Y via pin ystop
M574 Z2 S1 P"zstop"                                 		; configure active-high endstop for high end on Z via pin zstop

; Z-Probe
M558 P8 R0.4 F1200 H3 T6000 C"zprobe.in+zprobe.mod"			; Set Z probe type to switch and the dive height + speeds
G31 P100 X0 Y0 Z-0.1                    					; Set Z probe trigger value, offset and trigger height
M557 R175 S16                               				; Define mesh grid

; Bed Heater
M308 S0 P"bedtemp" Y"thermistor" T100000 B4300 C0 R4700				; Set thermistor + ADC parameters for heater 0
M950 H0 C"bedheat" T0                               		; create bed heater output on bedheat and map it to sensor 0
M307 H0 A137.8 C533.3 D1.5 V24.3 B0                       	; Disable bang-bang mode for the bed heater and set PWM limit
M143 H0 S125                               					; Set temperature limit for heater 0 to 120C

; Extruder Heater
M308 S1 P"e0temp" Y"thermistor" T100000 B4300 C0 R4700							;PT100 Temperature Sensor
M950 H1 C"e0heat" T1                                		; create nozzle heater output on e0heat and map it to sensor 1
M305 P1 X200		                						; Set thermistor + ADC parameters for heater 1
M143 H1 S400                                				; Set temperature limit for heater 1 to 240C

; Fans
M950 F0 C"fan0" Q500                                		; create fan 0 on pin fan0 and set its frequency
M106 P0 S0 H-1                    							; set fan 0 value. Thermostatic control is turned off
M950 F1 C"fan1" Q500                                		; create fan 1 on pin fan1 and set its frequency
M106 P1 S1 H1 T45                                   		; set fan 1 value. Thermostatic control is turned on

; Tools
M563 P0 D0 H1                               				; Define tool 0
G10 P0 X0 Y0 Z0                             				; Set tool 0 axis offsets
G10 P0 R0 S0                                				; Set initial tool 0 active and standby temperatures to 0C

; Automatic saving after power loss is not enabled

; Custom settings are not configured
;M591 D0 P2 C4 S1											; Activate filament sensor
M404 N1.75 													; Set for print monitor
M575 P1 B57600 S1											; Paneldue baud rate


; Miscellaneous
M501                                               			; Load saved parameters from non-volatile memory
