; tu mo¿na wstawiæ:
section .text
; aby daæ znaæ NASMowi, ¿e to bêdzie w sekcji kodu.
; Nie jest to jednak wymagane, bo to jest sekcja domyœlna.

org 100h

start:				; nawet tego NASM nie wymaga
	mov	ah, 9
	mov	dx, info	; nie ma s³owa "offset"
	int	21h

	mov	ah, 0
	int	16h

	mov	ax, 4C00h
	int	21h

info db	"Czesc.$"