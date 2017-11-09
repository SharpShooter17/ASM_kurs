section .text use32
global suma
suma:
	push 	ebp
	mov		ebp, esp
	
	lea		eax, [ebp + 8]
	lea		ebx, [ebp + 12]
	add 	eax, ebx
	
	leave
	ret
	
	