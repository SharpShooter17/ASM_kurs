format PE Console 4.0

include 'WIN32A.INC'

	push MB_OK
	push _title
	push _tresc
	push 0
	call [MessageBoxA]

	mov eax, 0
	ret

_tresc db "Hello, World!", 0
_title db "Witaj!", 0
	
data import
	library user32,'USER32.DLL'
	import user32,\
		MessageBoxA,'MessageBoxA'

end data