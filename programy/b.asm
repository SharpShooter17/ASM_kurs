; tu mo�na wstawi�:
section .text
; aby da� zna� NASMowi, �e to b�dzie w sekcji kodu.
; Nie jest to jednak wymagane, bo to jest sekcja domy�lna.

org 100h

start:				; nawet tego NASM nie wymaga
	mov	ah, 9
	mov	dx, info	; nie ma s�owa "offset"
	int	21h

	mov	ah, 0
	int	16h

	mov	ax, 4C00h
	int	21h

info db	"Czesc.$"