[bits 32]
[org 0x41B034]

call    0x412449
movzx   eax, byte [ebp+0x4123C0]
test    eax, eax
jz      my_code
call    0x411C30
my_code:
push 0x418B40
call 0x411C55

jmp 0x412421    ;kontynuuj wykonywanie kodu
