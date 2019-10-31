; LnxSpectrum ASM editor (www.ilnx.cz) 30.10.2019

	org	40000
	
	ld	de,music
	call	mus.LoadPlay
	
	ei
loop	call	mus.int_Patterns
	call	mus.int_SAA
	halt
	jr	loop	
	
	include	"LnxTrackerEngine.slb"	
	
music	include	"SofTB_SAA.bin"
	