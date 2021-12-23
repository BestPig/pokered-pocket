; rst vectors (unused)

SECTION "rst0", ROM0[$0000]
	rst $38

	ds $08 - @, 0 ; unused

SECTION "rst8", ROM0[$0008]
	rst $38

	ds $10 - @, 0 ; unused

SECTION "rst10", ROM0[$0010]
	rst $38

	ds $18 - @, 0 ; unused

SECTION "rst18", ROM0[$0018]
	rst $38

	ds $20 - @, 0 ; unused

SECTION "rst20", ROM0[$0020]
	rst $38

	ds $28 - @, 0 ; unused

SECTION "rst28", ROM0[$0028]
	rst $38

	ds $30 - @, 0 ; unused

SECTION "rst30", ROM0[$0030]
	rst $38

	ds $38 - @, 0 ; unused

SECTION "rst38", ROM0[$0038]
	rst $38

	ds $40 - @, 0 ; unused


; Game Boy hardware interrupts

SECTION "vblank", ROM0[$0040]
	jp VBlank

	ds $48 - @, 0 ; unused

SECTION "lcd", ROM0[$0048]
	rst $38

	ds $50 - @, 0 ; unused

SECTION "timer", ROM0[$0050]
	jp Timer

	ds $58 - @, 0 ; unused

SECTION "serial", ROM0[$0058]
	jp Serial

	ds $60 - @, 0 ; unused

SECTION "joypad", ROM0[$0060]
	reti


SECTION "Header", ROM0[$0100]

Start::
; Nintendo requires all Game Boy ROMs to begin with a nop ($00) and a jp ($C3)
; to the starting address.
	nop
	jp _Start

; The Game Boy cartridge header data is patched over by rgbfix.
; This makes sure it doesn't get used for anything else.

; analogue pocket logo
    db   $01,$10,$CE,$EF,$00,$00,$44,$AA 
    db   $00,$74,$00,$18,$11,$95,$00,$34 
    db   $00,$1A,$00,$D5,$00,$22,$00,$69 
    db   $6F,$F6,$F7,$73,$09,$90,$E1,$10 
    db   $44,$40,$9A,$90,$D5,$D0,$44,$30 
    db   $A9,$21,$5D,$48,$22,$E0,$F8,$60

	ds $0150 - @
