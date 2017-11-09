[bits 32]
[org 0x004040E4]


_odczytaj_obraz_z_tga:
	push	ebp
	mov	ebp, esp
	sub	esp, 24
	mov	DWORD  [ebp-4], 0
	mov	eax, DWORD  [ebp+8]
	mov	DWORD  [ebp-8], eax
	mov	eax, DWORD  [ebp-8]
	cmp	BYTE  [eax+2], 2
	je	L2
	mov	DWORD  [ebp-20], 0
	jmp	L1
L2:
	mov	eax, DWORD  [ebp-8]
	movzx	edx, WORD  [eax+12]
	mov	eax, DWORD  [ebp-8]
	movzx	eax, WORD  [eax+14]
	imul	edx, eax
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	mov	DWORD  [ebp-12], eax
	mov	eax, DWORD  [ebp-12]
	add	eax, 8
	mov	DWORD  [esp], eax
	call	0x00402160
	mov	DWORD  [ebp-4], eax
	cmp	DWORD  [ebp-4], 0
	jne	L3
	mov	DWORD  [ebp-20], 0
	jmp	L1
L3:
	mov	edx, DWORD  [ebp-4]
	mov	eax, DWORD  [ebp-8]
	movzx	eax, WORD  [eax+12]
	mov	DWORD  [edx], eax
	mov	edx, DWORD  [ebp-4]
	mov	eax, DWORD  [ebp-8]
	movzx	eax, WORD  [eax+14]
	mov	DWORD  [edx+4], eax
	mov	DWORD  [ebp-16], 0
L4:
	mov	eax, DWORD  [ebp-16]
	cmp	eax, DWORD  [ebp-12]
	jge	L5
	mov	eax, DWORD  [ebp-4]
	add	eax, DWORD  [ebp-16]
	lea	edx, [eax+8]
	mov	eax, DWORD  [ebp-8]
	movzx	eax, BYTE  [eax]
	add	eax, DWORD  [ebp+8]
	add	eax, DWORD  [ebp-16]
	movzx	eax, BYTE  [eax]
	mov	BYTE  [edx], al
	lea	eax, [ebp-16]
	inc	DWORD  [eax]
	jmp	L4
L5:
	mov	eax, DWORD  [ebp-4]
	mov	DWORD  [ebp-20], eax
L1:
	mov	eax, DWORD  [ebp-20]
	leave
	ret

