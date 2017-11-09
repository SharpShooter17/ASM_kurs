format PE Console 4.0

include 'WIN32A.INC'

	push _ask
	call [printf]
	add esp, 4

	push _b
	push _a
	push _fmt
	call [scanf]
	add esp, 12
	
	mov eax, [_a]
	add eax, [_b]
	
	push eax
	push _fmt1
	call [printf]
	add esp, 8
	
	mov eax, [_a]
	sub eax, [_b]
	push eax
	push _fmt1
	call [printf]
	add esp, 8
	
	mov eax, [_a]
	mul [_b]
	push eax
	push _fmt1
	call [printf]
	add esp, 8
	
	mov edx, 0
	mov eax, [_a]
	div [_b]
	push eax
	push _fmt1
	call [printf]
	add esp, 8	

	mov eax, 0
	ret
	
_ask 	db "Podaj dwie liczby: ", 0
_fmt	db "%i %i", 0
_a		dd	0
_b		dd 	0
_fmt1	db	" = %i", 0Ah, 0
	
data import
	library msvcrt,'MSVCRT.DLL'
	import msvcrt,\
		printf,'printf',\
		scanf,'scanf'

end data