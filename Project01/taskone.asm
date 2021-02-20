
	global	_start

	section	.text
_start:	mov	eax, 4		; system call number for write
	mov	ebx, 1		; file handle 1 is stdout
	mov	ecx, message	; address of string to output
	mov	edx, 26		; number of bytes
	int 80h			; request an interrupt on libc using INT 80h
exit:	mov	eax, 1		; syscam call number for exit
	mov	ebx, 0		; return 0 status on exit - 'No Errors'
	int 80h			; request an interrupt on libc using INT 80h

	section	.data
message:db	"Josh Miranda 23775071 CC2",	0Ah

	




