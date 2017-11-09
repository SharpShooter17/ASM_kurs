	.file	"tga_hax.c"
	.intel_syntax
	.text
.globl _odczytaj_obraz_z_tga
	.def	_odczytaj_obraz_z_tga;	.scl	2;	.type	32;	.endef
_odczytaj_obraz_z_tga:
	push	ebp
	mov	ebp, esp
	sub	esp, 24
	mov	DWORD PTR [ebp-4], 0
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [ebp-8], eax
	mov	eax, DWORD PTR [ebp-8]
	cmp	BYTE PTR [eax+2], 2
	je	L2
	mov	DWORD PTR [ebp-20], 0
	jmp	L1
L2:
	mov	eax, DWORD PTR [ebp-8]
	movzx	edx, WORD PTR [eax+12]
	mov	eax, DWORD PTR [ebp-8]
	movzx	eax, WORD PTR [eax+14]
	imul	edx, eax
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-12]
	add	eax, 8
	mov	DWORD PTR [esp], eax
	call	_malloc
	mov	DWORD PTR [ebp-4], eax
	cmp	DWORD PTR [ebp-4], 0
	jne	L3
	mov	DWORD PTR [ebp-20], 0
	jmp	L1
L3:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp-8]
	movzx	eax, WORD PTR [eax+12]
	mov	DWORD PTR [edx], eax
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp-8]
	movzx	eax, WORD PTR [eax+14]
	mov	DWORD PTR [edx+4], eax
	mov	DWORD PTR [ebp-16], 0
L4:
	mov	eax, DWORD PTR [ebp-16]
	cmp	eax, DWORD PTR [ebp-12]
	jge	L5
	mov	eax, DWORD PTR [ebp-4]
	add	eax, DWORD PTR [ebp-16]
	lea	edx, [eax+8]
	mov	eax, DWORD PTR [ebp-8]
	movzx	eax, BYTE PTR [eax]
	add	eax, DWORD PTR [ebp+8]
	add	eax, DWORD PTR [ebp-16]
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	lea	eax, [ebp-16]
	inc	DWORD PTR [eax]
	jmp	L4
L5:
	mov	eax, DWORD PTR [ebp-4]
	mov	DWORD PTR [ebp-20], eax
L1:
	mov	eax, DWORD PTR [ebp-20]
	leave
	ret
	.def	_malloc;	.scl	2;	.type	32;	.endef
