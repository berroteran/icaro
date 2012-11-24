;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.1 #4482 (Jul 27 2012)
; This file generated Fri Jul 27 21:33:25 2012
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f4550

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global _null_function
	global _device_descriptor
	global _default_cfg
	global _flash_cfg
	global _application_cfg
	global _configuration_descriptor
	global _str0
	global _str1
	global _str2
	global _str3
	global _str4
	global _str5
	global _string_descriptor
	global _ep_init
	global _ep_in
	global _ep_out
	global _ep_setup

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern _usb_device_state
	extern _usb_active_cfg
	extern _usb_active_alt_setting
	extern _ep0_init
	extern _ep1_init
	extern _ep2_init
	extern _ep0_in
	extern _ep2_in
	extern _ep1_out
	extern _ep0_setup

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
S_usb_descriptors__null_function	code
_null_function:
	return
	
; ; Starting pCode block for Ival
	code
_device_descriptor:
	DB	0x12, 0x01, 0x00, 0x02, 0xff, 0x00, 0xff, 0x08, 0xa5, 0xa5, 0x01, 0x00
	DB	0x00, 0x01, 0x01, 0x02, 0x03, 0x03
; ; Starting pCode block for Ival
_default_cfg:
	DB	0x09, 0x02, 0x12, 0x00, 0x01, 0x01, 0x04, 0xc0, 0x00, 0x09, 0x04, 0x00
	DB	0x00, 0x00, 0xff, 0xff, 0xff, 0x04
; ; Starting pCode block for Ival
_flash_cfg:
	DB	0x09, 0x02, 0x20, 0x00, 0x01, 0x02, 0x05, 0xc0, 0x00, 0x09, 0x04, 0x00
	DB	0x00, 0x02, 0xff, 0xff, 0xff, 0x05, 0x07, 0x05, 0x01, 0x02, 0x40, 0x00
	DB	0x00, 0x07, 0x05, 0x82, 0x02, 0x40, 0x00, 0x00
; ; Starting pCode block for Ival
_application_cfg:
	DB	0x09, 0x02, 0x12, 0x00, 0x01, 0x03, 0x04, 0xc0, 0x00, 0x09, 0x04, 0x00
	DB	0x00, 0x00, 0xff, 0xff, 0xff, 0x04
; ; Starting pCode block for Ival
_configuration_descriptor:
	DB	LOW(_default_cfg), HIGH(_default_cfg), UPPER(_default_cfg), LOW(_flash_cfg), HIGH(_flash_cfg), UPPER(_flash_cfg), LOW(_application_cfg), HIGH(_application_cfg), UPPER(_application_cfg)
; ; Starting pCode block for Ival
_str0:
	DB	0x04, 0x03, 0x09, 0x04
; ; Starting pCode block for Ival
_str1:
	DB	0x1c, 0x03, 0x56, 0x00, 0x61, 0x00, 0x73, 0x00, 0x63, 0x00, 0x6f, 0x00
	DB	0x20, 0x00, 0x50, 0x00, 0x72, 0x00, 0x6f, 0x00, 0x6a, 0x00, 0x65, 0x00
	DB	0x63, 0x00, 0x74, 0x00
; ; Starting pCode block for Ival
_str2:
	DB	0x1c, 0x03, 0x54, 0x00, 0x6f, 0x00, 0x67, 0x00, 0x67, 0x00, 0x6c, 0x00
	DB	0x65, 0x00, 0x20, 0x00, 0x6d, 0x00, 0x6f, 0x00, 0x64, 0x00, 0x75, 0x00
	DB	0x6c, 0x00, 0x65, 0x00
; ; Starting pCode block for Ival
_str3:
	DB	0x04, 0x03, 0x31, 0x00
; ; Starting pCode block for Ival
_str4:
	DB	0x10, 0x03, 0x44, 0x00, 0x65, 0x00, 0x66, 0x00, 0x61, 0x00, 0x75, 0x00
	DB	0x6c, 0x00, 0x74, 0x00
; ; Starting pCode block for Ival
_str5:
	DB	0x0c, 0x03, 0x46, 0x00, 0x6c, 0x00, 0x61, 0x00, 0x73, 0x00, 0x68, 0x00
; ; Starting pCode block for Ival
_string_descriptor:
	DB	LOW(_str0), HIGH(_str0), UPPER(_str0), LOW(_str1), HIGH(_str1), UPPER(_str1), LOW(_str2), HIGH(_str2), UPPER(_str2), LOW(_str3), HIGH(_str3), UPPER(_str3)
	DB	LOW(_str4), HIGH(_str4), UPPER(_str4), LOW(_str5), HIGH(_str5), UPPER(_str5)
; ; Starting pCode block for Ival
_ep_init_cfg0:
	DB	LOW(_ep0_init), HIGH(_ep0_init), UPPER(_ep0_init), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
; ; Starting pCode block for Ival
_ep_init_cfg1:
	DB	LOW(_ep0_init), HIGH(_ep0_init), UPPER(_ep0_init), LOW(_ep1_init), HIGH(_ep1_init), UPPER(_ep1_init), LOW(_ep2_init), HIGH(_ep2_init), UPPER(_ep2_init), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
; ; Starting pCode block for Ival
_ep_init:
	DB	LOW(_ep_init_cfg0), HIGH(_ep_init_cfg0), UPPER(_ep_init_cfg0), LOW(_ep_init_cfg0), HIGH(_ep_init_cfg0), UPPER(_ep_init_cfg0), LOW(_ep_init_cfg1), HIGH(_ep_init_cfg1), UPPER(_ep_init_cfg1), LOW(_ep_init_cfg0), HIGH(_ep_init_cfg0), UPPER(_ep_init_cfg0)
; ; Starting pCode block for Ival
_ep_in_cfg0:
	DB	LOW(_ep0_in), HIGH(_ep0_in), UPPER(_ep0_in), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
; ; Starting pCode block for Ival
_ep_in_cfg1:
	DB	LOW(_ep0_in), HIGH(_ep0_in), UPPER(_ep0_in), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_ep2_in), HIGH(_ep2_in), UPPER(_ep2_in), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
; ; Starting pCode block for Ival
_ep_in:
	DB	LOW(_ep_in_cfg0), HIGH(_ep_in_cfg0), UPPER(_ep_in_cfg0), LOW(_ep_in_cfg0), HIGH(_ep_in_cfg0), UPPER(_ep_in_cfg0), LOW(_ep_in_cfg1), HIGH(_ep_in_cfg1), UPPER(_ep_in_cfg1), LOW(_ep_in_cfg0), HIGH(_ep_in_cfg0), UPPER(_ep_in_cfg0)
; ; Starting pCode block for Ival
_ep_out_cfg0:
	DB	LOW(_ep0_init), HIGH(_ep0_init), UPPER(_ep0_init), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
; ; Starting pCode block for Ival
_ep_out_cfg1:
	DB	LOW(_ep0_init), HIGH(_ep0_init), UPPER(_ep0_init), LOW(_ep1_out), HIGH(_ep1_out), UPPER(_ep1_out), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
; ; Starting pCode block for Ival
_ep_out:
	DB	LOW(_ep_out_cfg0), HIGH(_ep_out_cfg0), UPPER(_ep_out_cfg0), LOW(_ep_out_cfg0), HIGH(_ep_out_cfg0), UPPER(_ep_out_cfg0), LOW(_ep_out_cfg1), HIGH(_ep_out_cfg1), UPPER(_ep_out_cfg1), LOW(_ep_out_cfg0), HIGH(_ep_out_cfg0), UPPER(_ep_out_cfg0)
; ; Starting pCode block for Ival
_ep_setup_cfg0:
	DB	LOW(_ep0_setup), HIGH(_ep0_setup), UPPER(_ep0_setup), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
	DB	LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function), LOW(_null_function), HIGH(_null_function), UPPER(_null_function)
; ; Starting pCode block for Ival
_ep_setup:
	DB	LOW(_ep_setup_cfg0), HIGH(_ep_setup_cfg0), UPPER(_ep_setup_cfg0), LOW(_ep_setup_cfg0), HIGH(_ep_setup_cfg0), UPPER(_ep_setup_cfg0), LOW(_ep_setup_cfg0), HIGH(_ep_setup_cfg0), UPPER(_ep_setup_cfg0), LOW(_ep_setup_cfg0), HIGH(_ep_setup_cfg0), UPPER(_ep_setup_cfg0)


; Statistics:
; code size:	  116 (0x0074) bytes ( 0.09%)
;           	   58 (0x003a) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    0 (0x0000) bytes


	end
