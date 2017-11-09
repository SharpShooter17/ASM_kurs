[bits 32]
[org 0x4041a5]
call 0x402118 ; memcmp
test eax, eax
jnz next1 ; stupid nasm hack
jmp long 0x40184e ; gogo BMP
next1:
mov eax, [ebp-8] ; buffer address
cmp [eax+2], byte 2
jz next2 ; stupid nasm hack
jmp long 0x4018b5
next2:
mov [esp], eax
call 0x004040E4 ; my tga
jmp 0x401859 ; go back to main branch


