
		global	_start

		section	.text


_start:		mov	edi, message	; move message to next register
		call	_strlen		; call the function
		mov	edx, eax	; move to next register
		mov	eax, 4		; system call number for write
		mov	ebx, 1		; file handle 1 is stdout
		mov	ecx, message	; address of string to output
		
		int 80h			; request an interrupt on libc using INT 80h
exit:		mov	eax, 1		; syscam call number for exit
		mov	ebx, 0		; return 0 status on exit - 'No Errors'
		int 80h			; request an interrupt on libc using INT 80h

_strlen:	push  ecx         	; save ecx on stack
  		xor   ecx, ecx		; set to 0

_strlen_next:	cmp   [edi], byte 0 	; condition when byte is 0
  		jz    _strlen_null  	; string is null when condition met

  		inc   ecx           	; increment ecx
 		inc   edi    		; increment to next register   
  		jmp   _strlen_next  	; jump to next string

_strlen_null:	mov   eax, ecx     	; move to next register
  		pop   ecx  		; restore eax
  		ret			; return to previous instruction

		section	.data
message:	db	"Hello, World",	0Ah
