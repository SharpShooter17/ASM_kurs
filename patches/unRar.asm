%define u(x) __utf16__(x)
%define w(x) __utf32__(x)

segment .text

0x140001000:
 mov qword ptr [rsp+0x8], rcx
 push rbx
 sub rsp, 0x30
 mov qword ptr [rsp+0x20], -2
 mov rbx, rcx
 add rcx, 0x3ae0
 call 0x140011520
 nop 
 lea rcx, [rbx+0x2e90]
 call 0x140011520
 nop 
 lea rcx, [rbx+0x2240]
 call 0x140011520
 nop 
 lea rcx, [rbx+0x1138]
 call 0x14000a4b4
 nop 
 lea rcx, [rbx+0x78]
 add rsp, 0x30
 pop rbx
 jmp 0x14000a4b4
; --------------------------------------------------------------------------
; sub_140001058
; --------------------------------------------------------------------------
sub_140001058   proc
 xor r8d, r8d
 cmp rdx, 0x1
 jb 0x1400010db
 cmp byte ptr [rcx], 0x52
 jne 0x1400010db
 lea r9d, [r8+4]
 cmp rdx, r9
 jb 0x140001087
 cmp byte ptr [rcx+1], 0x45
 jne 0x140001087
 cmp byte ptr [rcx+2], 0x7e
 jne 0x140001087
 cmp byte ptr [rcx+3], 0x5e
 jne 0x140001087
 lea r8d, [r9-3]
 jmp 0x1400010db

0x140001087:
 cmp rdx, 7
 jb 0x1400010db
 cmp byte ptr [rcx+1], 0x61
 jne 0x1400010db
 cmp byte ptr [rcx+2], 0x72
 jne 0x1400010db
 cmp byte ptr [rcx+3], 0x21
 jne 0x1400010db
 cmp byte ptr [rcx+4], 0x1a
 jne 0x1400010db
 cmp byte ptr [rcx+5], 7
 jne 0x1400010db
 cmp byte ptr [rcx+6], r8b
 jne 0x1400010b9
 mov r8d, 2
 jmp 0x1400010db

0x1400010b9:
 cmp byte ptr [rcx+6], 0x1
 jne 0x1400010c7
 mov r8d, 3
 jmp 0x1400010db

0x1400010c7:
 mov eax, r8d
 mov r8d, 2
 cmp byte ptr [rcx+6], r8b
 cmove eax, r9d
 mov r8d, eax

0x1400010db:
 mov eax, r8d
 ret 
sub_140001058   endp
 
 int3 

0x1400010e0:
 mov rax, qword ptr [rcx]
 mov rdx, qword ptr [rcx+0xc4e8]
 xor r8d, r8d
 jmp qword ptr [rax+0x18]
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400010f4
; --------------------------------------------------------------------------
sub_1400010f4   proc
 cmp byte ptr [rcx+0xc4fc], 0x0
 je 0x14000111f
 mov rax, rdx
 not rax
 inc rax
 and eax, 0xf
 add rdx, rax
 cmp dword ptr [rcx+0xc4f0], 3
 jne 0x14000111b
 add rdx, 0x10
 jmp 0x14000111f

0x14000111b:
 add rdx, 8

0x14000111f:
 mov eax, edx
 ret 
sub_1400010f4   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140001124
; --------------------------------------------------------------------------
sub_140001124   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x38]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x40]

 mov qword ptr [arg_2], rbx
 mov qword ptr [arg_3], rsi
 push rdi
 sub rsp, 0x20
 mov rsi, rcx
 lea r9, [arg_1]
 add rcx, 0x6860
 mov rbx, r8
 mov rdi, rdx
 call sub_14001569c
 test al, al
 je 0x140001157
 mov eax, dword ptr [arg_1]
 jmp 0x140001165

0x140001157:
 mov r8, rbx
 mov rdx, rdi
 mov rcx, rsi
 call sub_14000fbe8

0x140001165:
 mov rbx, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop rdi
 ret 
sub_140001124   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140001178
; --------------------------------------------------------------------------
sub_140001178   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 mov rsi, rcx
 add rcx, 0x6860
 mov ebx, r8d
 mov rdi, rdx
 call sub_140015510
 test al, al
 jne 0x1400011ae
 mov r8d, ebx
 mov rdx, rdi
 mov rcx, rsi
 call sub_14000fd98

0x1400011ae:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_140001178   endp
 
 int3 
 int3 
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 lea rdx, [rsp+0x30]
 add rcx, 0x6860
 call 0x140014fa8
 test al, al
 je 0x1400011e5
 mov rax, qword ptr [rsp+0x30]
 jmp 0x1400011ed

0x1400011e5:
 mov rcx, rbx
 call 0x14000f830

0x1400011ed:
 add rsp, 0x20
 pop rbx
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_1400011f4
; --------------------------------------------------------------------------
sub_1400011f4   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 add qword ptr [rcx+0x8], rdx
 mov rax, qword ptr [rcx+0x8]
 mov rbx, rcx
 cmp rax, qword ptr [rcx+0x10]
 jbe 0x140001281
 mov r8, qword ptr [rcx+0x18]
 test r8, r8
 je 0x140001241
 cmp rax, r8
 jbe 0x140001241
 lea rdx, [0x14003c5e0]
 lea rcx, [0x140050e70]
 call sub_14000b39c
 lea rcx, [0x140050e70]
 call 0x14000b140

0x140001241:
 mov rdx, qword ptr [rbx+0x10]
 mov rcx, qword ptr [rbx]
 mov rax, rdx
 shr rax, 2
 lea rdi, [rax+rdx+0x20]
 cmp qword ptr [rbx+0x8], rdi
 cmova rdi, qword ptr [rbx+0x8]
 lea rdx, [rdi+rdi]
 call 0x14002cfec
 mov rsi, rax
 test rax, rax
 jne 0x14000127a
 lea rcx, [0x140050e70]
 call 0x14000b140

0x14000127a:
 mov qword ptr [rbx], rsi
 mov qword ptr [rbx+0x10], rdi

0x140001281:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_1400011f4   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140001294
; --------------------------------------------------------------------------
sub_140001294   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 add qword ptr [rcx+0x8], rdx
 mov rax, qword ptr [rcx+0x8]
 mov rbx, rcx
 cmp rax, qword ptr [rcx+0x10]
 jbe 0x140001320
 mov r8, qword ptr [rcx+0x18]
 test r8, r8
 je 0x1400012e1
 cmp rax, r8
 jbe 0x1400012e1
 lea rdx, [0x14003c5e0]
 lea rcx, [0x140050e70]
 call sub_14000b39c
 lea rcx, [0x140050e70]
 call 0x14000b140

0x1400012e1:
 mov rdx, qword ptr [rbx+0x10]
 mov rcx, qword ptr [rbx]
 mov rax, rdx
 shr rax, 2
 lea rdi, [rax+rdx+0x20]
 cmp qword ptr [rbx+0x8], rdi
 cmova rdi, qword ptr [rbx+0x8]
 mov rdx, rdi
 call 0x14002cfec
 mov rsi, rax
 test rax, rax
 jne 0x140001319
 lea rcx, [0x140050e70]
 call 0x14000b140

0x140001319:
 mov qword ptr [rbx], rsi
 mov qword ptr [rbx+0x10], rdi

0x140001320:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_140001294   endp
 

0x140001330:
 mov rdx, qword ptr [rcx+0x8]
 mov rcx, qword ptr [rcx]
 xor r8d, r8d
 mov rax, qword ptr [rcx]
 jmp qword ptr [rax+0x18]
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140001344
; --------------------------------------------------------------------------
sub_140001344   proc
 sub rsp, 0x28
 mov rcx, qword ptr [rcx+0x1020]
 test rcx, rcx
 je 0x140001359
 call sub_14002cfac

0x140001359:
 add rsp, 0x28
 ret 
sub_140001344   endp
 
 int3 
 int3 

0x140001360:
 mov qword ptr [rsp+0x8], rcx
 push rdi
 sub rsp, 0x30
 mov qword ptr [rsp+0x20], -2
 mov qword ptr [rsp+0x50], rbx
 mov rdi, rcx
 lea rax, [0x14003c660]
 mov qword ptr [rcx], rax
 cmp byte ptr [rcx+0x6828], 0x0
 je 0x1400013ab
 mov rbx, qword ptr [rcx+0x6830]
 test rbx, rbx
 je 0x1400013ab
 mov rcx, rbx
 call 0x140013364
 mov rcx, rbx
 call 0x14002cfa4
 nop 

0x1400013ab:
 mov rcx, qword ptr [rdi+0xadd0]
 test rcx, rcx
 je 0x1400013bd
 call sub_14002cfac
 nop 

0x1400013bd:
 mov rcx, qword ptr [rdi+0x8a78]
 test rcx, rcx
 je 0x1400013cf
 call sub_14002cfac
 nop 

0x1400013cf:
 lea rcx, [rdi+0x6860]
 call 0x140014fc4
 nop 
 lea rbx, [rdi+0x20f0]
 mov qword ptr [rsp+0x48], rbx
 lea rcx, [rbx+0x3ae0]
 call 0x140011520
 nop 
 lea rcx, [rbx+0x2e90]
 call 0x140011520
 nop 
 lea rcx, [rbx+0x2240]
 call 0x140011520
 nop 
 lea rcx, [rbx+0x1138]
 call 0x14000a4b4
 nop 
 lea rcx, [rbx+0x78]
 call 0x14000a4b4
 nop 
 lea rcx, [rdi+0x1030]
 call 0x14000a4b4
 nop 
 mov rcx, rdi
 mov rbx, qword ptr [rsp+0x50]
 add rsp, 0x30
 pop rdi
 jmp sub_14000f94c
 int3 
 int3 
 int3 

0x140001448:
 mov byte ptr [rcx+0x7950], 0x0
 jmp 0x14000f2b8
; --------------------------------------------------------------------------
; sub_140001454
; --------------------------------------------------------------------------
sub_140001454   proc
 mov rax, rsp
 sub rsp, 0x98
 and dword ptr [rax-0x14], 0x0
 mov dword ptr [rax-0x10], ecx
 lea rcx, [rax-0x78]
 mov qword ptr [rax-0x78], rdx
 mov dword ptr [rax-0x18], 0x1
 call sub_140020600
 add rsp, 0x98
 ret 
sub_140001454   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140001484
; --------------------------------------------------------------------------
sub_140001484   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov dil, dl
 mov edx, 0x1
 mov rbx, rcx
 call sub_140001294
 mov r11, qword ptr [rbx+0x8]
 mov rax, qword ptr [rbx]
 mov rbx, qword ptr [arg_1]
 mov byte ptr [r11+rax-1], dil
 add rsp, 0x20
 pop rdi
 ret 
sub_140001484   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400014b8
; --------------------------------------------------------------------------
sub_1400014b8   proc
 mov rax, rsp
 sub rsp, 0x98
 and dword ptr [rax-0x14], 0x0
 mov dword ptr [rax-0x10], ecx
 lea rcx, [rax-0x78]
 mov qword ptr [rax-0x78], rdx
 mov qword ptr [rax-0x70], r8
 mov dword ptr [rax-0x18], 2
 call sub_140020600
 add rsp, 0x98
 ret 
sub_1400014b8   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400014ec
; --------------------------------------------------------------------------
sub_1400014ec   proc \
 arg_1 : qword, ; [rsp+0x60]
 arg_2 : qword, ; [rsp+0x68]
 arg_3 : qword ; [rsp+0x70]

 local local_1: qword ; [rsp+0x20]
 local local_2: qword ; [rsp+0x28]
 local local_3: qword ; [rsp+0x30]

 mov rax, rsp
 push rdi
 sub rsp, 0x50
 mov qword ptr [local_1], -2
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov rbx, rdx
 mov rdi, rcx
 xor ebp, ebp
 mov qword ptr [rax-0x30], rbp
 mov qword ptr [rax-0x28], rbp
 mov qword ptr [rax-0x20], rbp
 mov qword ptr [rax-0x18], rbp
 xor r8d, r8d
 lea rdx, [rax-0x30]
 call 0x140004070
 cmp al, bpl
 jne 0x140001548
 mov rcx, qword ptr [local_2]
 cmp rcx, rbp
 je 0x140001541
 call sub_14002cfac

0x140001541:
 xor al, al
 jmp 0x140001605

0x140001548:
 mov rsi, qword ptr [local_3]
 xor edx, edx
 lea rcx, [local_2]
 call sub_140001484
 lea rdx, [rsi+1]
 cmp rdx, qword ptr [rbx+0x10]
 jbe 0x140001571
 sub rdx, qword ptr [rbx+0x8]
 mov rcx, rbx
 call sub_1400011f4
 jmp 0x140001575

0x140001571:
 mov qword ptr [rbx+0x8], rdx

0x140001575:
 cmp dword ptr [rdi+0xc4f0], 3
 jne 0x140001591
 mov r8, qword ptr [rbx+0x8]
 mov rdx, qword ptr [rbx]
 mov rcx, qword ptr [local_2]
 call sub_1400212c0
 jmp 0x1400015c7

0x140001591:
 test byte ptr [rdi+0x9dcc], 0x1
 je 0x1400015b6
 shr rsi, 0x1
 mov r8, rsi
 mov rdx, qword ptr [rbx]
 mov rcx, qword ptr [local_2]
 call sub_140021190
 mov rdx, qword ptr [rbx]
 mov word ptr [rdx+rsi*2], bp
 jmp 0x1400015c7

0x1400015b6:
 mov r8, qword ptr [rbx+0x8]
 mov rdx, qword ptr [rbx]
 mov rcx, qword ptr [local_2]
 call sub_14002110c

0x1400015c7:
 xor eax, eax
 or rcx, 0xffffffffffffffff
 mov rdi, qword ptr [rbx]
 repne scasd eax, dword ptr [rdi]
 not rcx
 dec rcx
 cmp rcx, qword ptr [rbx+0x10]
 jbe 0x1400015f0
 sub rcx, qword ptr [rbx+0x8]
 mov rdx, rcx
 mov rcx, rbx
 call sub_1400011f4
 jmp 0x1400015f4

0x1400015f0:
 mov qword ptr [rbx+0x8], rcx

0x1400015f4:
 mov rcx, qword ptr [local_2]
 cmp rcx, rbp
 je 0x140001603
 call sub_14002cfac

0x140001603:
 mov al, 0x1

0x140001605:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x50
 pop rdi
 ret 
sub_1400014ec   endp
 
 int3 
 int3 
 mov qword ptr [rsp+0x8], rbx
 push rdi
 sub rsp, 0x20
 mov ebx, edx
 mov rdi, rcx
 call 0x140001360
 test bl, 0x1
 je 0x14000163d
 mov rcx, rdi
 call 0x14002cfa4

0x14000163d:
 mov rax, rdi
 mov rbx, qword ptr [rsp+0x30]
 add rsp, 0x20
 pop rdi
 ret 
 int3 

0x14000164c:
 mov rax, rsp
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x50
 mov qword ptr [rsp+0x20], -2
 mov qword ptr [rax+0x10], rbx
 mov qword ptr [rax+0x18], rbp
 mov qword ptr [rax+0x20], rsi
 mov r15b, dl
 mov rdi, rcx
 xor r14d, r14d
 mov byte ptr [rcx+0xc4fc], r14b
 mov byte ptr [rcx+0xc508], r14b
 call sub_14000f91c
 cmp al, r14b
 je 0x1400016a9
 lea rdx, [rdi+0x26]
 mov r8, rdx
 lea ecx, [r14+0x3a]
 call sub_1400014b8
 xor al, al
 jmp 0x140001a71

0x1400016a9:
 mov rax, qword ptr [rdi]
 mov r8d, 7
 lea rdx, [rdi+0x79d4]
 mov rcx, rdi
 call qword ptr [rax+0x10]
 cmp eax, 7
 je 0x1400016cb
 xor al, al
 jmp 0x140001a71

0x1400016cb:
 mov qword ptr [rdi+0xc500], r14
 mov edx, 7
 lea rcx, [rdi+0x79d4]
 call sub_140001058
 cmp eax, r14d
 je 0x140001714
 mov dword ptr [rdi+0xc4f0], eax
 lea esi, [rdx-6]
 cmp eax, esi
 jne 0x14000185f
 mov rbx, qword ptr [rdi]
 mov rcx, rdi
 call qword ptr [rbx+0x20]
 xor r8d, r8d
 lea rdx, [rax-7]
 mov rcx, rdi
 call qword ptr [rbx+0x18]
 jmp 0x14000185f

0x140001714:
 mov qword ptr [rsp+0x28], r14
 mov qword ptr [rsp+0x30], r14
 mov qword ptr [rsp+0x38], r14
 mov qword ptr [rsp+0x40], r14
 mov edx, 0x100000
 lea rcx, [rsp+0x28]
 call sub_140001294
 nop 
 mov rax, qword ptr [rdi]
 mov rcx, rdi
 call qword ptr [rax+0x20]
 mov rsi, rax
 mov qword ptr [rsp+0x80], rax
 mov r9, qword ptr [rdi]
 mov r8, qword ptr [rsp+0x30]
 add r8, -0x10
 mov rbx, qword ptr [rsp+0x28]
 mov rdx, rbx
 mov rcx, rdi
 call qword ptr [r9+0x10]
 movsxd r12, eax
 mov r10d, r14d
 mov r11, r14
 movsxd r14, esi
 mov r13, r12
 mov esi, 0x1
 test eax, eax
 jle 0x140001832

0x140001783:
 cmp byte ptr [r11+rbx], 0x52
 jne 0x1400017d8
 movsxd rdx, r12d
 movsxd rcx, r10d
 add rcx, rbx
 call sub_140001058
 test eax, eax
 je 0x1400017d8
 mov dword ptr [rdi+0xc4f0], eax
 cmp eax, esi
 jne 0x1400017e8
 test r10d, r10d
 jle 0x1400017e8
 cmp r14, 0x1c
 jge 0x1400017e8
 cmp r13, 0x1f
 jle 0x1400017e8
 mov rax, rbx
 sub rax, r14
 add rax, 0x1c
 cmp byte ptr [rax], 0x52
 jne 0x1400017d8
 cmp byte ptr [rax+1], 0x53
 jne 0x1400017d8
 cmp byte ptr [rax+2], 0x46
 jne 0x1400017d8
 cmp byte ptr [rax+3], 0x58
 je 0x1400017e8

0x1400017d8:
 add r10d, esi
 sub r12d, esi
 add r11, rsi
 cmp r11, r13
 jge 0x140001832
 jmp 0x140001783

0x1400017e8:
 mov rax, qword ptr [rsp+0x80]
 add eax, r10d
 movsxd rdx, eax
 mov qword ptr [rdi+0xc500], rdx
 mov rax, qword ptr [rdi]
 xor r8d, r8d
 mov rcx, rdi
 call qword ptr [rax+0x18]
 mov r11d, dword ptr [rdi+0xc4f0]
 cmp r11d, 2
 je 0x14000181c
 cmp r11d, 3
 jne 0x140001832

0x14000181c:
 mov rax, qword ptr [rdi]
 mov r8d, 7
 lea rdx, [rdi+0x79d4]
 mov rcx, rdi
 call qword ptr [rax+0x10]

0x140001832:
 xor r14d, r14d
 cmp qword ptr [rdi+0xc500], r14
 jne 0x140001852
 cmp rbx, r14
 je 0x14000184b
 mov rcx, rbx
 call sub_14002cfac

0x14000184b:
 xor al, al
 jmp 0x140001a71

0x140001852:
 cmp rbx, r14
 je 0x14000185f
 mov rcx, rbx
 call sub_14002cfac

0x14000185f:
 mov eax, dword ptr [rdi+0xc4f0]
 cmp eax, 4
 jne 0x14000187d
 lea rdx, [rdi+0x26]
 lea ecx, [rax+0x37]
 call sub_140001454
 xor al, al
 jmp 0x140001a71

0x14000187d:
 cmp eax, 3
 jne 0x1400018b1
 mov rax, qword ptr [rdi]
 mov r8, rsi
 lea rdx, [rdi+0x79db]
 mov rcx, rdi
 call qword ptr [rax+0x10]
 cmp byte ptr [rdi+0x79db], r14b
 je 0x1400018a5
 xor al, al
 jmp 0x140001a71

0x1400018a5:
 mov dword ptr [rdi+0x79dc], 8
 jmp 0x1400018bb

0x1400018b1:
 mov dword ptr [rdi+0x79dc], 7

0x1400018bb:
 mov rcx, rdi
 call sub_140004df0
 cmp rax, r14
 je 0x140001900

0x1400018c8:
 mov eax, dword ptr [rdi+0x6854]
 cmp eax, esi
 je 0x140001900
 cmp byte ptr [rdi+0x6858], r14b
 je 0x1400018e0
 cmp eax, 4
 je 0x140001900

0x1400018e0:
 mov rax, qword ptr [rdi]
 xor r8d, r8d
 mov rdx, qword ptr [rdi+0xc4e8]
 mov rcx, rdi
 call qword ptr [rax+0x18]
 mov rcx, rdi
 call sub_140004df0
 cmp rax, r14
 jne 0x1400018c8

0x140001900:
 cmp byte ptr [rdi+0xc509], r14b
 je 0x140001915
 cmp r15b, r14b
 jne 0x140001915
 xor al, al
 jmp 0x140001a71

0x140001915:
 mov rax, qword ptr [rdi]
 xor r8d, r8d
 mov rdx, qword ptr [rdi+0xc4e8]
 mov rcx, rdi
 call qword ptr [rax+0x18]
 cmp byte ptr [rdi+0xc508], r14b
 je 0x14000194b
 lea rdx, [rdi+0x26]
 mov ecx, 0x19
 call sub_140001454
 cmp r15b, r14b
 jne 0x14000194b
 xor al, al
 jmp 0x140001a71

0x14000194b:
 mov al, byte ptr [rdi+0x79fc]
 mov byte ptr [rdi+0xc4f6], al
 cmp byte ptr [rdi+0x6858], r14b
 je 0x14000196d
 cmp byte ptr [rdi+0xc4fc], r14b
 jne 0x140001a40

0x14000196d:
 mov qword ptr [rsp+0x28], rdi
 mov rax, qword ptr [rdi]
 mov rcx, rdi
 call qword ptr [rax+0x20]
 mov rbx, rax
 mov qword ptr [rsp+0x30], rax
 mov rbp, qword ptr [rdi+0xc4e0]
 mov r12, qword ptr [rdi+0xc4e8]
 mov r13d, dword ptr [rdi+0x6854]
 mov rcx, rdi
 call sub_140004df0
 cmp rax, r14
 je 0x140001a1c

0x1400019a5:
 mov eax, dword ptr [rdi+0x6854]
 cmp eax, 3
 jne 0x1400019d1
 cmp byte ptr [rdi+0xc4f5], r14b
 je 0x1400019c6
 cmp byte ptr [rdi+0xae48], r14b
 jne 0x1400019c6
 mov eax, esi
 jmp 0x1400019c9

0x1400019c6:
 mov eax, r14d

0x1400019c9:
 mov byte ptr [rdi+0xc4f9], al
 jmp 0x1400019db

0x1400019d1:
 cmp eax, 2
 je 0x1400019fd
 cmp eax, 5
 je 0x140001a1c

0x1400019db:
 mov rax, qword ptr [rdi]
 xor r8d, r8d
 mov rdx, qword ptr [rdi+0xc4e8]
 mov rcx, rdi
 call qword ptr [rax+0x18]
 mov rcx, rdi
 call sub_140004df0
 cmp rax, r14
 jne 0x1400019a5
 jmp 0x140001a1c

0x1400019fd:
 cmp byte ptr [rdi+0xc4f5], r14b
 je 0x140001a13
 cmp byte ptr [rdi+0x8af0], r14b
 jne 0x140001a13
 mov eax, esi
 jmp 0x140001a16

0x140001a13:
 mov eax, r14d

0x140001a16:
 mov byte ptr [rdi+0xc4f9], al

0x140001a1c:
 mov qword ptr [rdi+0xc4e0], rbp
 mov qword ptr [rdi+0xc4e8], r12
 mov dword ptr [rdi+0x6854], r13d
 mov rax, qword ptr [rdi]
 xor r8d, r8d
 mov rdx, rbx
 mov rcx, rdi
 call qword ptr [rax+0x18]

0x140001a40:
 cmp byte ptr [rdi+0xc4f5], r14b
 je 0x140001a52
 cmp byte ptr [rdi+0xc4f9], r14b
 je 0x140001a6e

0x140001a52:
 lea rdx, [rdi+0x26]
 sub rdi, rdx

0x140001a59:
 movzx ecx, word ptr [rdx]
 mov word ptr [rdi+rdx+0xc53a], cx
 add rdx, 2
 cmp cx, r14w
 jne 0x140001a59

0x140001a6e:
 mov al, sil

0x140001a71:
 lea r11, [rsp+0x50]
 mov rbx, qword ptr [r11+0x38]
 mov rbp, qword ptr [r11+0x40]
 mov rsi, qword ptr [r11+0x48]
 mov rsp, r11
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 ret 
 int3 

0x140001a90:
 push rsi
 push rdi
 push r12
 push r13
 push r14
 mov eax, 0x13130
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x60], -2
 mov qword ptr [rsp+0x13170], rbx
 mov qword ptr [rsp+0x13178], rbp
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x13120], rax
 mov rsi, rdx
 mov rbx, rcx
 cmp byte ptr [rcx+0xc4f6], 0x0
 jne 0x140001ae7
 xor al, al
 jmp 0x140001ff5

0x140001ae7:
 mov qword ptr [rsp+0x50], rcx
 mov rax, qword ptr [rcx]
 call qword ptr [rax+0x20]
 mov r12, rax
 mov qword ptr [rsp+0x58], rax
 mov ebp, 0x1
 cmp dword ptr [rbx+0xc4f0], ebp
 jne 0x140001b42
 mov rax, qword ptr [rbx]
 mov rdx, qword ptr [rbx+0xc500]
 add rdx, 7
 xor r8d, r8d
 mov rcx, rbx
 call qword ptr [rax+0x18]
 mov rcx, rbx
 call sub_14000f8bc
 movzx edi, al
 mov rcx, rbx
 call sub_14000f8bc
 movzx edx, al
 mov eax, 0x100
 imul dx, ax
 add di, dx
 jmp 0x140001ba7

0x140001b42:
 cmp byte ptr [rbx+0x79fc], 0x0
 je 0x140001fa6
 mov rax, qword ptr [rbx]
 mov rdx, qword ptr [rbx+0xc500]
 add rdx, 0x14
 xor r8d, r8d
 mov rcx, rbx
 call qword ptr [rax+0x18]
 mov rcx, rbx
 call sub_140004df0
 cmp byte ptr [rbx+0xc508], 0x0
 je 0x140001b9c
 lea rdx, [rbx+0x26]
 mov ecx, 0x39
 call sub_140001454
 nop 
 mov rax, qword ptr [rbx]
 xor r8d, r8d
 mov rdx, r12
 mov rcx, rbx
 call qword ptr [rax+0x18]
 xor al, al
 jmp 0x140001ff5

0x140001b9c:
 mov di, word ptr [rbx+0xc0d4]
 sub di, 0xd

0x140001ba7:
 mov eax, dword ptr [rbx+0xc4f0]
 cmp eax, ebp
 jne 0x140001bba
 cmp byte ptr [rbx+0x79fd], 0x0
 jne 0x140001bcf

0x140001bba:
 cmp eax, ebp
 je 0x140001e6f
 cmp byte ptr [rbx+0xc0df], 0x30
 je 0x140001e6f

0x140001bcf:
 cmp eax, ebp
 je 0x140001c00
 mov al, byte ptr [rbx+0xc0de]
 cmp al, 0xf
 jb 0x140001bea
 cmp al, 0x1d
 ja 0x140001bea
 cmp byte ptr [rbx+0xc0df], 0x35
 jbe 0x140001c00

0x140001bea:
 mov rax, qword ptr [rbx]
 xor r8d, r8d
 mov rdx, r12
 mov rcx, rbx
 call qword ptr [rax+0x18]
 xor al, al
 jmp 0x140001ff5

0x140001c00:
 lea rcx, [rsp+0x70]
 call sub_140016a98
 nop 
 mov byte ptr [rsp+0xb9], bpl
 cmp dword ptr [rbx+0xc4f0], ebp
 jne 0x140001c53
 mov rcx, rbx
 call sub_14000f8bc
 movzx r13d, al
 mov rcx, rbx
 call sub_14000f8bc
 movzx edx, al
 shl edx, 8
 add r13d, edx
 mov eax, 0xfffe
 add di, ax
 lea rcx, [rsp+0x70]
 call 0x140016a74
 mov byte ptr [rbx+0xc0de], 0xf
 jmp 0x140001c5b

0x140001c53:
 movzx r13d, word ptr [rbx+0xc0dc]

0x140001c5b:
 xor r8d, r8d
 mov rdx, rbx
 lea rcx, [rsp+0x70]
 call sub_1400169d0
 mov byte ptr [rsp+0xb8], 0x0
 movzx eax, di
 mov qword ptr [rsp+0xb0], rax
 mov r8d, ebp
 mov edx, 2
 lea rcx, [rsp+0x3b50]
 call sub_140011558
 lea rdx, [rsp+0x70]
 lea rcx, [rsp+0x47b0]
 call sub_14002897c
 nop 
 xor r8d, r8d
 mov edx, 0x10000
 lea rcx, [rsp+0x47b0]
 call sub_140022980
 mov edx, r13d
 mov qword ptr [rsp+0x9550], rdx
 mov byte ptr [rsp+0x9568], 0x0
 movzx edx, byte ptr [rbx+0xc0de]
 xor r8d, r8d
 lea rcx, [rsp+0x47b0]
 call sub_14002c46c
 cmp dword ptr [rbx+0xc4f0], ebp
 je 0x140001d80
 lea rcx, [rsp+0x3b50]
 call 0x14001164c
 cmp ax, word ptr [rbx+0xc0e0]
 je 0x140001d80
 lea rdx, [rbx+0x26]
 mov ecx, 0x39
 call sub_140001454
 nop 
 lea rcx, [rsp+0x47b0]
 call 0x140025c2c
 nop 
 lea rcx, [rsp+0x3b50]
 call 0x140011520
 nop 
 lea rcx, [rsp+0x2f00]
 call 0x140011520
 nop 
 lea rcx, [rsp+0x22b0]
 call 0x140011520
 nop 
 lea rcx, [rsp+0x11a8]
 call 0x14000a4b4
 nop 
 lea rcx, [rsp+0xe8]
 call 0x14000a4b4
 nop 
 mov rax, qword ptr [rbx]
 xor r8d, r8d
 mov rdx, r12
 mov rcx, rbx
 call qword ptr [rax+0x18]
 xor al, al
 jmp 0x140001ff5

0x140001d80:
 lea r8, [rsp+0x20]
 lea rdx, [rsp+0x28]
 lea rcx, [rsp+0x70]
 call sub_1400169ec
 mov r8d, dword ptr [rsp+0x20]
 mov rcx, qword ptr [rsp+0x28]
 mov rdx, rcx
 call qword ptr [OemToCharBuffA]
 mov rdx, qword ptr [rsp+0x20]
 inc rdx
 cmp rdx, qword ptr [rsi+0x10]
 jbe 0x140001dc3
 sub rdx, qword ptr [rsi+0x8]
 mov rcx, rsi
 call sub_1400011f4
 jmp 0x140001dc7

0x140001dc3:
 mov qword ptr [rsi+0x8], rdx

0x140001dc7:
 mov r8, qword ptr [rsi+0x8]
 add r8, r8
 xor edx, edx
 mov rcx, qword ptr [rsi]
 call 0x14002d190
 mov r8, qword ptr [rsp+0x20]
 mov rdx, qword ptr [rsi]
 mov rcx, qword ptr [rsp+0x28]
 call sub_14002110c
 xor eax, eax
 or rcx, 0xffffffffffffffff
 mov rdi, qword ptr [rsi]
 repne scasd eax, dword ptr [rdi]
 not rcx
 sub rcx, rbp
 cmp rcx, qword ptr [rsi+0x10]
 jbe 0x140001e13
 sub rcx, qword ptr [rsi+0x8]
 mov rdx, rcx
 mov rcx, rsi
 call sub_1400011f4
 jmp 0x140001e17

0x140001e13:
 mov qword ptr [rsi+0x8], rcx

0x140001e17:
 lea rcx, [rsp+0x47b0]
 call 0x140025c2c
 nop 
 lea rcx, [rsp+0x3b50]
 call 0x140011520
 nop 
 lea rcx, [rsp+0x2f00]
 call 0x140011520
 nop 
 lea rcx, [rsp+0x22b0]
 call 0x140011520
 nop 
 lea rcx, [rsp+0x11a8]
 call 0x14000a4b4
 nop 
 lea rcx, [rsp+0xe8]
 call 0x14000a4b4
 jmp 0x140001f89

0x140001e6f:
 and qword ptr [rsp+0x30], 0x0
 and qword ptr [rsp+0x38], 0x0
 and qword ptr [rsp+0x40], 0x0
 and qword ptr [rsp+0x48], 0x0
 movzx r14d, di
 mov rdx, r14
 lea rcx, [rsp+0x30]
 call sub_140001294
 nop 
 mov rax, qword ptr [rbx]
 mov r8, r14
 mov r13, qword ptr [rsp+0x30]
 mov rdx, r13
 mov rcx, rbx
 call qword ptr [rax+0x10]
 cmp dword ptr [rbx+0xc4f0], ebp
 je 0x140001f01
 mov r8, r14
 mov rdx, r13
 or ecx, 0xffffffff
 call sub_140009710
 not eax
 cmp word ptr [rbx+0xc0e0], ax
 je 0x140001f01
 lea rdx, [rbx+0x26]
 mov ecx, 0x39
 call sub_140001454
 nop 
 test r13, r13
 je 0x140001eeb
 mov rcx, r13
 call sub_14002cfac
 nop 

0x140001eeb:
 mov rax, qword ptr [rbx]
 xor r8d, r8d
 mov rdx, r12
 mov rcx, rbx
 call qword ptr [rax+0x18]
 xor al, al
 jmp 0x140001ff5

0x140001f01:
 movzx eax, di
 add eax, ebp
 movsxd rcx, eax
 cmp rcx, qword ptr [rsi+0x10]
 jbe 0x140001f20
 sub rcx, qword ptr [rsi+0x8]
 mov rdx, rcx
 mov rcx, rsi
 call sub_1400011f4
 jmp 0x140001f24

0x140001f20:
 mov qword ptr [rsi+0x8], rcx

0x140001f24:
 xor edx, edx
 lea rcx, [rsp+0x30]
 call sub_140001484
 mov r13, qword ptr [rsp+0x30]
 mov rdx, r13
 mov rcx, r13
 call qword ptr [OemToCharA]
 mov r8, r14
 mov rdx, qword ptr [rsi]
 mov rcx, r13
 call sub_14002110c
 xor eax, eax
 or rcx, 0xffffffffffffffff
 mov rdi, qword ptr [rsi]
 repne scasd eax, dword ptr [rdi]
 not rcx
 sub rcx, rbp
 cmp rcx, qword ptr [rsi+0x10]
 jbe 0x140001f78
 sub rcx, qword ptr [rsi+0x8]
 mov rdx, rcx
 mov rcx, rsi
 call sub_1400011f4
 jmp 0x140001f7c

0x140001f78:
 mov qword ptr [rsi+0x8], rcx

0x140001f7c:
 test r13, r13
 je 0x140001f89
 mov rcx, r13
 call sub_14002cfac

0x140001f89:
 cmp qword ptr [rsi+0x8], 0x0
 seta dil
 mov rax, qword ptr [rbx]
 xor r8d, r8d
 mov rdx, r12
 mov rcx, rbx
 call qword ptr [rax+0x18]
 mov al, dil
 jmp 0x140001ff5

0x140001fa6:
 mov rdi, qword ptr [rbx]
 mov rcx, rbx
 call sub_14000248c
 mov rdx, rax
 xor r8d, r8d
 mov rcx, rbx
 call qword ptr [rdi+0x18]
 lea rdx, [0x14003c700]
 mov rcx, rbx
 call sub_140004ef0
 test rax, rax
 je 0x140001fe0
 mov rdx, rsi
 mov rcx, rbx
 call sub_1400014ec
 test al, al
 jne 0x140001fe3

0x140001fe0:
 xor bpl, bpl

0x140001fe3:
 mov rax, qword ptr [rbx]
 xor r8d, r8d
 mov rdx, r12
 mov rcx, rbx
 call qword ptr [rax+0x18]
 mov al, bpl

0x140001ff5:
 mov rcx, qword ptr [rsp+0x13120]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x13130]
 mov rbx, qword ptr [r11+0x40]
 mov rbp, qword ptr [r11+0x48]
 mov rsp, r11
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 ret 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140002024
; --------------------------------------------------------------------------
sub_140002024   proc
 local local_1: qword ; [rsp+0x20]
 local local_2: qword ; [rsp+0x28]
 local local_3: qword ; [rsp+0x30]

 mov r11, rsp
 push rdi
 sub rsp, 0x50
 mov qword ptr [local_1], -2
 mov rax, qword ptr [rcx+0x6830]
 cmp byte ptr [rax+0x615e], 0x0
 jne 0x1400020b6
 and qword ptr [r11-0x30], 0x0
 and qword ptr [r11-0x28], 0x0
 and qword ptr [r11-0x20], 0x0
 and qword ptr [r11-0x18], 0x0
 lea rdx, [r11-0x30]
 call 0x140001a90
 test al, al
 je 0x1400020a4
 mov rdi, qword ptr [local_3]
 mov edx, 0x1a
 mov rcx, qword ptr [local_2]
 call 0x14002cf84
 test rax, rax
 je 0x14000208a
 mov rdi, rax
 sub rdi, qword ptr [local_2]
 sar rdi, 0x1

0x14000208a:
 lea rcx, [0x14003c730]
 call sub_140008e10
 mov rdx, rdi
 mov rcx, qword ptr [local_2]
 call sub_14000904c
 nop 

0x1400020a4:
 cmp qword ptr [local_2], 0x0
 je 0x1400020b6
 mov rcx, qword ptr [local_2]
 call sub_14002cfac

0x1400020b6:
 add rsp, 0x50
 pop rdi
 ret 
sub_140002024   endp
 
; --------------------------------------------------------------------------
; sub_1400020bc
; --------------------------------------------------------------------------
sub_1400020bc   proc \
 arg_1 : qword, ; [rsp+0x8]
 arg_2 : qword, ; [rsp+0x48]
 arg_3 : qword, ; [rsp+0x50]
 arg_4 : qword ; [rsp+0x58]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_1], rcx
 push rdi
 sub rsp, 0x30
 mov qword ptr [local_1], -2
 mov qword ptr [arg_3], rbx
 mov qword ptr [arg_4], rsi
 mov rdi, rdx
 mov rbx, rcx
 call sub_14000f274
 nop 
 lea rax, [0x14003c660]
 mov qword ptr [rbx], rax
 lea rcx, [rbx+0x1030]
 call sub_14000a92c
 nop 
 lea rcx, [rbx+0x20f0]
 call sub_140016a98
 nop 
 xor esi, esi
 mov qword ptr [rbx+0x6848], rsi
 lea rcx, [rbx+0x6860]
 call sub_1400152f0
 nop 
 mov qword ptr [rbx+0x8a78], rsi
 mov qword ptr [rbx+0x8a80], rsi
 mov qword ptr [rbx+0x8a88], rsi
 mov qword ptr [rbx+0x8a90], rsi
 mov qword ptr [rbx+0x8a98], rsi
 mov qword ptr [rbx+0x8aa0], rsi
 mov qword ptr [rbx+0x8aa8], rsi
 mov qword ptr [rbx+0xadd0], rsi
 mov qword ptr [rbx+0xadd8], rsi
 mov qword ptr [rbx+0xade0], rsi
 mov qword ptr [rbx+0xade8], rsi
 mov qword ptr [rbx+0xadf0], rsi
 mov qword ptr [rbx+0xadf8], rsi
 mov qword ptr [rbx+0xae00], rsi
 mov qword ptr [rbx+0x6830], rsi
 cmp rdi, rsi
 sete al
 mov byte ptr [rbx+0x6828], al
 cmp al, sil
 je 0x1400021bc
 mov ecx, 0x83c0
 call 0x14002d27c
 mov qword ptr [arg_2], rax
 cmp rax, rsi
 je 0x1400021b7
 mov rcx, rax
 call sub_14001339c
 jmp 0x1400021ba

0x1400021b7:
 mov rax, rsi

0x1400021ba:
 jmp 0x1400021bf

0x1400021bc:
 mov rax, rdi

0x1400021bf:
 mov qword ptr [rbx+0x6830], rax
 mov al, byte ptr [rax+0x61b5]
 mov byte ptr [rbx+0x24], al
 mov dword ptr [rbx+0xc4f0], 2
 mov byte ptr [rbx+0xc4f4], sil
 mov byte ptr [rbx+0xc4f5], sil
 mov byte ptr [rbx+0xc4f6], sil
 mov byte ptr [rbx+0xc4f7], sil
 mov byte ptr [rbx+0xc4f8], sil
 mov byte ptr [rbx+0xc4f9], sil
 mov byte ptr [rbx+0xc4fa], sil
 mov qword ptr [rbx+0xc500], rsi
 mov qword ptr [rbx+0x6848], rsi
 mov byte ptr [rbx+0xc4fb], sil
 mov byte ptr [rbx+0xc4fc], sil
 mov byte ptr [rbx+0xc509], sil
 mov byte ptr [rbx+0xc508], sil
 mov dword ptr [rbx+0x6850], esi
 mov qword ptr [rbx+0xc4e0], rsi
 mov qword ptr [rbx+0xc4e8], rsi
 or rax, 0xffffffffffffffff
 mov qword ptr [rbx+0x6838], rax
 mov dword ptr [rbx+0x6840], eax
 lea rcx, [rbx+0x79e0]
 xor edx, edx
 lea r8d, [rax+0x41]
 call 0x14002d190
 lea rcx, [rbx+0x7a20]
 xor edx, edx
 lea r8d, [rdx+0x34]
 call 0x14002d190
 lea rcx, [rbx+0x9d70]
 xor edx, edx
 lea r8d, [rdx+0x20]
 call 0x14002d190
 mov dword ptr [rbx+0xc51c], esi
 mov qword ptr [rbx+0xc520], rsi
 mov qword ptr [rbx+0xc528], rsi
 mov qword ptr [rbx+0xc530], rsi
 mov word ptr [rbx+0xc53a], si
 mov byte ptr [rbx+0xc51a], sil
 mov byte ptr [rbx+0xc538], sil
 mov byte ptr [rbx+0x6858], sil
 mov rax, rbx
 mov rbx, qword ptr [arg_3]
 mov rsi, qword ptr [arg_4]
 add rsp, 0x30
 pop rdi
 ret 
sub_1400020bc   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400022dc
; --------------------------------------------------------------------------
sub_1400022dc   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 call 0x14000164c
 test al, al
 jne 0x140002315
 cmp byte ptr [rbx+0xc509], al
 jne 0x140002304
 lea rdx, [rbx+0x26]
 mov ecx, 0x38
 call sub_140001454

0x140002304:
 lea rcx, [0x140050e70]
 mov edx, 2
 call 0x14000b114

0x140002315:
 add rsp, 0x20
 pop rbx
 ret 
sub_1400022dc   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_14000231c
; --------------------------------------------------------------------------
sub_14000231c   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 call sub_14000f43c
 test al, al
 jne 0x140002332

0x14000232e:
 xor al, al
 jmp 0x14000235a

0x140002332:
 xor edx, edx
 mov rcx, rbx
 call 0x14000164c
 test al, al
 jne 0x140002358
 lea rdx, [rbx+0x26]
 mov ecx, 0x38
 call sub_140001454
 mov rcx, rbx
 call sub_14000f5d0
 jmp 0x14000232e

0x140002358:
 mov al, 0x1

0x14000235a:
 add rsp, 0x20
 pop rbx
 ret 
sub_14000231c   endp
 
; --------------------------------------------------------------------------
; sub_140002360
; --------------------------------------------------------------------------
sub_140002360   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rax, qword ptr [rcx+0x6830]
 mov rbx, rdx
 mov rdi, rcx
 cmp dword ptr [rax+0x61a4], 0x1
 jne 0x140002388
 mov rcx, rdx
 call sub_14002150c

0x140002388:
 mov rax, qword ptr [rdi+0x6830]
 cmp dword ptr [rax+0x61a4], 2
 jne 0x1400023a0
 mov rcx, rbx
 call sub_1400214f4

0x1400023a0:
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_140002360   endp
 
 int3 

0x1400023ac:
 mov al, byte ptr [rcx+0x8b49]
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_1400023b4
; --------------------------------------------------------------------------
sub_1400023b4   proc
 cmp dword ptr [rcx+0x8b5c], 0x0
 je 0x1400023d3
 mov al, byte ptr [rcx+0x8b49]
 neg al
 sbb edx, edx
 and edx, 0xfffffff0
 add edx, 0x20
 mov dword ptr [rcx+0x7a74], edx

0x1400023d3:
 ret 
sub_1400023b4   endp
 
; --------------------------------------------------------------------------
; sub_1400023d4
; --------------------------------------------------------------------------
sub_1400023d4   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 cmp dword ptr [rcx+0xc4f0], 2
 mov rbx, rdx
 mov rdi, rcx
 jne 0x140002400
 cmp byte ptr [rdx+0x19], 0x14
 jae 0x140002400
 test byte ptr [rdx+0x1c], 0x10
 je 0x140002400
 mov byte ptr [rdx+0x10f1], 0x1

0x140002400:
 mov edx, dword ptr [rdx+0x1104]
 cmp edx, 2
 jne 0x14000241e
 mov al, byte ptr [rbx+0x10f1]
 neg al
 sbb ecx, ecx
 and ecx, 0xfffffff0
 add ecx, 0x20
 mov dword ptr [rbx+0x1c], ecx

0x14000241e:
 cmp edx, 0x1
 jne 0x140002431
 lea rcx, [rbx+0x20]
 mov edx, 0x800
 call 0x140013b8c

0x140002431:
 add rbx, 0x20
 cmp word ptr [rbx], 0x0
 je 0x14000247e
 mov eax, 0x5c
 lea ecx, [rax+3]

0x140002443:
 cmp word ptr [rbx], ax
 jne 0x140002454
 cmp dword ptr [rdi+0xc4f0], 3
 jne 0x140002454
 mov word ptr [rbx], cx

0x140002454:
 cmp word ptr [rbx], 0x3a
 jne 0x14000245d
 mov word ptr [rbx], cx

0x14000245d:
 cmp word ptr [rbx], 0x2f
 je 0x140002471
 cmp word ptr [rbx], ax
 jne 0x140002474
 cmp dword ptr [rdi+0xc4f0], 3
 je 0x140002474

0x140002471:
 mov word ptr [rbx], ax

0x140002474:
 add rbx, 2
 cmp word ptr [rbx], 0x0
 jne 0x140002443

0x14000247e:
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_1400023d4   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000248c
; --------------------------------------------------------------------------
sub_14000248c   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov ebx, dword ptr [rcx+0x79dc]
 mov rdi, rcx
 add rbx, qword ptr [rcx+0xc500]
 cmp dword ptr [rcx+0xc4f0], 2
 jne 0x1400024ba
 mov eax, dword ptr [rcx+0x79ec]
 add rbx, rax
 jmp 0x1400024d0

0x1400024ba:
 mov edx, dword ptr [rcx+0x79ec]
 call sub_1400010f4
 add eax, dword ptr [rdi+0x7a2c]
 mov ecx, eax
 add rbx, rcx

0x1400024d0:
 mov rax, rbx
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_14000248c   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400024e0
; --------------------------------------------------------------------------
sub_1400024e0   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 mov rcx, qword ptr [rcx]
 test rcx, rcx
 je 0x1400024fa
 call sub_14002cfac
 and qword ptr [rbx], 0x0

0x1400024fa:
 and qword ptr [rbx+0x8], 0x0
 and qword ptr [rbx+0x10], 0x0
 add rsp, 0x20
 pop rbx
 ret 
sub_1400024e0   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000250c
; --------------------------------------------------------------------------
sub_14000250c   proc
 local local_1[0x60]: byte ; [rsp+0x20]
 local local_2: dword ; [rsp+0x80]
 local local_3: dword ; [rsp+0x84]
 local local_4: dword ; [rsp+0x88]

 push rbx
 sub rsp, 0x90
 mov r8, qword ptr [rcx+0x6830]
 mov rbx, rcx
 cmp byte ptr [r8+0x5130], 0x0
 jne 0x14000259e
 lea rdx, [rcx+0x26]
 add r8, 0x5030
 mov ecx, 2
 call 0x140020bdc
 test al, al
 je 0x140002552
 mov rax, qword ptr [rbx+0x6830]
 cmp byte ptr [rax+0x5130], 0x0
 jne 0x140002590

0x140002552:
 mov rcx, rbx
 call sub_14000f5d0
 and dword ptr [local_2], 0x0
 and dword ptr [local_3], 0x0
 lea rcx, [local_1]
 mov dword ptr [local_4], 2
 call sub_140020600
 lea rcx, [0x140050e70]
 mov edx, 0xff
 call 0x14000b114

0x140002590:
 mov rax, qword ptr [rbx+0x6830]
 mov byte ptr [rax+0x5133], 0x1

0x14000259e:
 add rsp, 0x90
 pop rbx
 ret 
sub_14000250c   endp
 
 int3 

0x1400025a8:
 mov rax, rsp
 push rdi
 sub rsp, 0x880
 mov qword ptr [rsp+0x68], -2
 mov qword ptr [rax+0x10], rbx
 mov qword ptr [rax+0x18], rsi
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x870], rax
 mov rsi, rcx
 mov rdx, rcx
 lea rcx, [rsp+0x20]
 call sub_140016924
 nop 
 mov rax, qword ptr [rsi+0xc500]
 cmp qword ptr [rsi+0xc4e0], rax
 jg 0x1400026aa
 mov edx, 7
 lea rcx, [rsp+0x20]
 call sub_1400165d4
 lea rcx, [rsi+0x79e0]
 call sub_140011928
 mov r8d, 4
 lea rdx, [rsp+0x60]
 lea rcx, [rsp+0x20]
 call sub_140016840
 lea rcx, [rsp+0x20]
 call 0x140016728
 movzx ebx, ax
 lea rcx, [rsp+0x20]
 call sub_140016708
 mov r11b, al
 mov rcx, rbx
 add rcx, qword ptr [rsi+0xc4e0]
 mov qword ptr [rsi+0xc4e8], rcx
 mov dword ptr [rsi+0x6854], 0x1
 mov cl, al
 and cl, 0x1
 mov byte ptr [rsi+0xc4f5], cl
 mov cl, al
 shr cl, 3
 and cl, 0x1
 mov byte ptr [rsi+0xc4f4], cl
 mov cl, al
 shr cl, 2
 and cl, 0x1
 mov byte ptr [rsi+0xc4f7], cl
 shr al, 0x1
 and al, 0x1
 mov byte ptr [rsi+0x79fc], al
 shr r11b, 4
 and r11b, 0x1
 mov byte ptr [rsi+0x79fd], r11b
 mov rdx, qword ptr [rsp+0x48]
 jmp 0x140002892

0x1400026aa:
 mov edx, 0x15
 lea rcx, [rsp+0x20]
 call sub_1400165d4
 lea rcx, [rsi+0x7a58]
 xor edx, edx
 call sub_14001194c
 mov dword ptr [rsi+0x7a5c], 2
 lea rcx, [rsp+0x20]
 call 0x140016760
 mov dword ptr [rsi+0x7a6c], eax
 lea rcx, [rsp+0x20]
 call 0x140016760
 mov r11d, eax
 mov qword ptr [rsi+0x8ab8], r11
 mov dword ptr [rsi+0x8ac8], 0x1
 lea rcx, [rsp+0x20]
 call 0x140016728
 movzx r11d, ax
 mov dword ptr [rsi+0x8acc], r11d
 lea rcx, [rsp+0x20]
 call 0x140016728
 movzx r11d, ax
 mov dword ptr [rsi+0x7a64], r11d
 lea rcx, [rsp+0x20]
 call 0x140016760
 mov edi, eax
 lea rcx, [rsp+0x20]
 call sub_140016708
 movzx r11d, al
 mov dword ptr [rsi+0x7a74], r11d
 lea rcx, [rsp+0x20]
 call sub_140016708
 movzx r11d, al
 bts r11d, 0xf
 mov dword ptr [rsi+0x7a60], r11d
 lea rcx, [rsp+0x20]
 call sub_140016708
 mov ecx, 0xa
 lea edx, [rcx+3]
 cmp al, 2
 cmove ecx, edx
 mov byte ptr [rsi+0x7a71], cl
 lea rcx, [rsp+0x20]
 call sub_140016708
 movzx ebx, al
 lea rcx, [rsp+0x20]
 call sub_140016708
 mov byte ptr [rsi+0x7a72], al
 mov al, byte ptr [rsi+0x7a60]
 and al, 0x1
 mov byte ptr [rsi+0x8af0], al
 mov ecx, dword ptr [rsi+0x7a60]
 mov eax, ecx
 shr eax, 0x1
 and al, 0x1
 mov byte ptr [rsi+0x8af1], al
 shr ecx, 2
 and cl, 0x1
 mov byte ptr [rsi+0x8af3], cl
 mov eax, 0x0
 setne al
 mov dword ptr [rsi+0x8af4], eax
 mov eax, dword ptr [rsi+0x7a6c]
 mov qword ptr [rsi+0x8ab0], rax
 mov qword ptr [rsi+0x8b50], 0x10000
 lea rcx, [rsi+0x8a98]
 mov edx, edi
 call sub_14002027c
 mov rdx, rbx
 lea rcx, [rsp+0x20]
 call sub_1400165d4
 mov edi, 0x800
 mov r8, rdi
 cmp rbx, rdi
 cmovb r8, rbx
 lea rdx, [rsp+0x70]
 lea rcx, [rsp+0x20]
 call sub_140016840
 mov byte ptr [rsp+rbx+0x70], 0x0
 mov r8, rdi
 lea rdx, [rsp+0x70]
 lea rcx, [rsp+0x70]
 call sub_14001ed7c
 mov r8, rdi
 lea rdx, [rsi+0x7a78]
 lea rcx, [rsp+0x70]
 call sub_14002110c
 lea rdx, [rsi+0x7a78]
 mov rcx, rsi
 call sub_140002360
 mov rdx, qword ptr [rsp+0x48]
 test rdx, rdx
 je 0x140002888
 mov eax, dword ptr [rsi+0x7a64]
 add rax, qword ptr [rsi+0x8ab0]
 add rax, qword ptr [rsi+0xc4e0]
 mov qword ptr [rsi+0xc4e8], rax

0x140002888:
 mov dword ptr [rsi+0x6854], 2

0x140002892:
 xor ebx, ebx
 mov rcx, qword ptr [rsi+0xc4e0]
 cmp qword ptr [rsi+0xc4e8], rcx
 cmovg rbx, rdx
 mov rcx, qword ptr [rsp+0x20]
 test rcx, rcx
 je 0x1400028b5
 call sub_14002cfac

0x1400028b5:
 mov rax, rbx
 mov rcx, qword ptr [rsp+0x870]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x880]
 mov rbx, qword ptr [r11+0x18]
 mov rsi, qword ptr [r11+0x20]
 mov rsp, r11
 pop rdi
 ret 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400028e0
; --------------------------------------------------------------------------
sub_1400028e0   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 call sub_14000fb48
 cmp qword ptr [rbx+0xc4e0], rax
 jne 0x140002900
 cmp qword ptr [rbx+0xc4e8], rax
 je 0x14000291f

0x140002900:
 lea rdx, [rbx+0x26]
 mov ecx, 0x37
 call sub_140001454
 lea rcx, [0x140050e70]
 mov edx, 0x1
 call 0x14000af6c

0x14000291f:
 add rsp, 0x20
 pop rbx
 ret 
sub_1400028e0   endp
 
 int3 
 int3 
 int3 

0x140002928:
 push rbx
 sub rsp, 0x20
 lea rdx, [rcx+0x26]
 mov rbx, rcx
 mov ecx, 0x18
 call sub_140001454
 lea rcx, [0x140050e70]
 mov edx, 3
 mov byte ptr [rbx+0xc508], 0x1
 add rsp, 0x20
 pop rbx
 jmp 0x14000af6c

0x14000295c:
 sub rsp, 0x28
 mov r8, rdx
 lea rdx, [rcx+0x26]
 mov ecx, 0x20
 call sub_1400014b8
 lea rcx, [0x140050e70]
 mov edx, 0x1
 add rsp, 0x28
 jmp 0x14000af6c
 int3 
 int3 

0x140002988:
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x2910
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0xe8], -2
 mov qword ptr [rsp+0x2948], rbx
 mov qword ptr [rsp+0x2950], rbp
 mov qword ptr [rsp+0x2958], rsi
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x2900], rax
 mov rbx, rcx
 mov rdx, rcx
 lea rcx, [rsp+0x60]
 call sub_140016924
 nop 
 mov esi, 8
 lea r15d, [rsi-7]
 lea r12d, [rsi-1]
 xor r13d, r13d
 cmp byte ptr [rbx+0xc4fc], r13b
 je 0x140002aac
 mov rax, qword ptr [rbx+0xc500]
 add rax, r12
 cmp qword ptr [rbx+0xc4e0], rax
 jle 0x140002aac
 mov byte ptr [rsp+0x50], r15b
 mov rcx, rbx
 call sub_14000250c
 mov rax, qword ptr [rbx]
 mov r8, rsi
 lea rdx, [rsp+0xf0]
 mov rcx, rbx
 call qword ptr [rax+0x10]
 cmp eax, esi
 je 0x140002a5e
 mov rcx, rbx
 call sub_1400028e0
 nop 
 mov rcx, qword ptr [rsp+0x60]
 cmp rcx, r13
 je 0x140002a57
 call sub_14002cfac

0x140002a57:
 xor eax, eax
 jmp 0x140003a62

0x140002a5e:
 lea rdi, [rbx+0x1030]
 mov r9, qword ptr [rbx+0x6830]
 add r9, 0x5030
 mov qword ptr [rsp+0x40], r13
 mov qword ptr [rsp+0x38], r13
 mov dword ptr [rsp+0x30], r13d
 mov qword ptr [rsp+0x28], r13
 lea rax, [rsp+0xf0]
 mov qword ptr [rsp+0x20], rax
 xor edx, edx
 lea r8d, [rdx+4]
 mov rcx, rdi
 call sub_14000ac20
 mov qword ptr [rsp+0x98], rdi
 jmp 0x140002ab1

0x140002aac:
 mov byte ptr [rsp+0x50], r13b

0x140002ab1:
 mov rdx, r12
 lea rcx, [rsp+0x60]
 call sub_1400165d4
 cmp qword ptr [rsp+0x88], r13
 jne 0x140002ae7
 mov rcx, rbx
 call sub_1400028e0
 nop 
 mov rcx, qword ptr [rsp+0x60]
 cmp rcx, r13
 je 0x140002ae0
 call sub_14002cfac

0x140002ae0:
 xor eax, eax
 jmp 0x140003a62

0x140002ae7:
 lea r14, [rbx+0x79c0]
 lea rcx, [rsp+0x60]
 call 0x140016728
 movzx edx, ax
 mov dword ptr [r14], edx
 mov byte ptr [rbx+0x79d0], r13b
 lea rcx, [rsp+0x60]
 call sub_140016708
 movzx edi, al
 lea rcx, [rsp+0x60]
 call 0x140016728
 movzx edx, ax
 mov dword ptr [rbx+0x79c8], edx
 shr edx, 0xe
 and dl, r15b
 mov byte ptr [rbx+0x79d0], dl
 lea rcx, [rsp+0x60]
 call 0x140016728
 movzx edx, ax
 mov dword ptr [rbx+0x79cc], edx
 mov dword ptr [rbx+0x79c4], edi
 cmp edx, r12d
 jae 0x140002b6e
 mov rcx, rbx
 call 0x140002928
 nop 
 mov rcx, qword ptr [rsp+0x60]
 cmp rcx, r13
 je 0x140002b67
 call sub_14002cfac

0x140002b67:
 xor eax, eax
 jmp 0x140003a62

0x140002b6e:
 mov ecx, 6
 sub edi, 0x73
 je 0x140002baa
 sub edi, r15d
 je 0x140002b9e
 sub edi, ecx
 je 0x140002b92
 cmp edi, r15d
 jne 0x140002bb1
 mov dword ptr [rbx+0x79c4], 5
 jmp 0x140002bb1

0x140002b92:
 mov dword ptr [rbx+0x79c4], 3
 jmp 0x140002bb1

0x140002b9e:
 mov dword ptr [rbx+0x79c4], 2
 jmp 0x140002bb1

0x140002baa:
 mov dword ptr [rbx+0x79c4], r15d

0x140002bb1:
 mov eax, dword ptr [rbx+0x79c4]
 mov dword ptr [rbx+0x6854], eax
 cmp eax, 0x75
 jne 0x140002bd1
 mov rdx, rcx
 lea rcx, [rsp+0x60]
 call sub_1400165d4
 jmp 0x140002bfb

0x140002bd1:
 cmp eax, r15d
 jne 0x140002bee
 test byte ptr [rbx+0x79c8], 2
 je 0x140002bee
 mov rdx, rcx
 lea rcx, [rsp+0x60]
 call sub_1400165d4
 jmp 0x140002bfb

0x140002bee:
 add edx, -7
 lea rcx, [rsp+0x60]
 call sub_1400165d4

0x140002bfb:
 mov edx, dword ptr [rbx+0x79cc]
 mov rcx, rbx
 call sub_1400010f4
 mov edx, eax
 add rdx, qword ptr [rbx+0xc4e0]
 mov qword ptr [rbx+0xc4e8], rdx
 mov eax, dword ptr [rbx+0x79c4]
 cmp eax, r15d
 je 0x14000381e
 cmp eax, r15d
 jle 0x1400037f3
 cmp eax, 3
 jle 0x140003143
 cmp eax, 5
 je 0x1400030ad
 cmp eax, 0x75
 je 0x14000304c
 cmp eax, 0x76
 je 0x140002fed
 cmp eax, 0x77
 je 0x140002d4f
 cmp eax, 0x78
 je 0x140002cbb
 cmp eax, 0x79
 jne 0x1400037f3
 lea rcx, [rbx+0xc128]
 mov rdx, r14
 lea r8d, [rax-0x65]
 call 0x14002d490
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov dword ptr [rbx+0xc13c], eax
 lea rcx, [rsp+0x60]
 call 0x140016728
 mov word ptr [rbx+0xc140], ax
 lea rcx, [rsp+0x60]
 call 0x140016728
 mov word ptr [rbx+0xc142], ax
 mov bpl, byte ptr [rsp+0x50]
 jmp 0x140003932

0x140002cbb:
 lea rcx, [rbx+0xc0e4]
 mov rdx, r14
 mov r8d, 0x14
 call 0x14002d490
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov dword ptr [rbx+0xc0f8], eax
 lea rcx, [rsp+0x60]
 call sub_140016708
 mov byte ptr [rbx+0xc0fc], al
 lea rcx, [rsp+0x60]
 call 0x140016728
 mov word ptr [rbx+0xc0fe], ax
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov dword ptr [rbx+0xc100], eax
 lea rdx, [rbx+0xc104]
 mov r8, rsi
 lea rcx, [rsp+0x60]
 call sub_140016840
 mov edx, dword ptr [rbx+0xc0f8]
 add qword ptr [rbx+0xc4e8], rdx
 movzx eax, word ptr [rbx+0xc0fe]
 shl eax, 9
 cdqe 
 mov qword ptr [rbx+0x6838], rax
 mov bpl, byte ptr [rsp+0x50]
 jmp 0x140003932

0x140002d4f:
 lea rcx, [rbx+0x9d90]
 mov rdx, r14
 mov r8d, 0x14
 call 0x14002d490
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov edx, eax
 mov dword ptr [rbx+0x9da4], edx
 add qword ptr [rbx+0xc4e8], rdx
 lea rcx, [rsp+0x60]
 call 0x140016728
 mov word ptr [rbx+0x9da8], ax
 lea rcx, [rsp+0x60]
 call sub_140016708
 mov byte ptr [rbx+0x9daa], al
 movzx eax, word ptr [rbx+0x9da8]
 mov esi, 0x100
 cmp eax, esi
 je 0x140002f8a
 cmp eax, 0x101
 je 0x140002ed4
 lea ecx, [rsi+2]
 cmp eax, ecx
 je 0x140002e91
 cmp eax, ecx
 jle 0x14000392d
 lea esi, [rcx+2]
 cmp eax, esi
 jle 0x140002f8a
 cmp eax, 0x105
 jne 0x140003926
 lea rcx, [rbx+0xc3b0]
 lea rdx, [rbx+0x9d90]
 mov r8d, 0x1c
 call 0x14002d490
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov dword ptr [rbx+0xc3cc], eax
 lea rcx, [rsp+0x60]
 call sub_140016708
 mov byte ptr [rbx+0xc3d0], al
 lea rcx, [rsp+0x60]
 call sub_140016708
 mov byte ptr [rbx+0xc3d1], al
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov dword ptr [rbx+0xc3d4], eax
 lea rcx, [rsp+0x60]
 call 0x140016728
 mov word ptr [rbx+0xc3d8], ax
 cmp ax, si
 jb 0x140002e5f
 lea eax, [rsi-1]
 mov word ptr [rbx+0xc3d8], ax

0x140002e5f:
 movzx r8d, word ptr [rbx+0xc3d8]
 lea rdx, [rbx+0xc3da]
 lea rcx, [rsp+0x60]
 call sub_140016840
 movzx edx, word ptr [rbx+0xc3d8]
 mov byte ptr [rdx+rbx+0xc3da], r13b
 mov bpl, byte ptr [rsp+0x50]
 jmp 0x140003932

0x140002e91:
 lea rcx, [rbx+0xc364]
 lea rdx, [rbx+0x9d90]
 mov r8d, 0x1c
 call 0x14002d490
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov dword ptr [rbx+0xc380], eax
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov dword ptr [rbx+0xc384], eax
 mov bpl, byte ptr [rsp+0x50]
 jmp 0x140003932

0x140002ed4:
 lea rcx, [rbx+0xc144]
 lea rdx, [rbx+0x9d90]
 mov r8d, 0x1c
 call 0x14002d490
 lea rcx, [rsp+0x60]
 call 0x140016728
 mov word ptr [rbx+0xc160], ax
 lea rcx, [rsp+0x60]
 call 0x140016728
 mov word ptr [rbx+0xc162], ax
 mov ecx, 0xff
 cmp word ptr [rbx+0xc160], si
 jb 0x140002f24
 mov word ptr [rbx+0xc160], cx

0x140002f24:
 cmp ax, si
 jb 0x140002f30
 mov word ptr [rbx+0xc162], cx

0x140002f30:
 movzx r8d, word ptr [rbx+0xc160]
 lea rdx, [rbx+0xc164]
 lea rcx, [rsp+0x60]
 call sub_140016840
 movzx r8d, word ptr [rbx+0xc162]
 lea rdx, [rbx+0xc264]
 lea rcx, [rsp+0x60]
 call sub_140016840
 movzx edx, word ptr [rbx+0xc160]
 mov byte ptr [rdx+rbx+0xc164], r13b
 movzx eax, word ptr [rbx+0xc162]
 mov byte ptr [rax+rbx+0xc264], r13b
 mov bpl, byte ptr [rsp+0x50]
 jmp 0x140003932

0x140002f8a:
 lea rcx, [rbx+0xc388]
 lea rdx, [rbx+0x9d90]
 mov r8d, 0x1c
 call 0x14002d490
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov dword ptr [rbx+0xc3a4], eax
 lea rcx, [rsp+0x60]
 call sub_140016708
 mov byte ptr [rbx+0xc3a8], al
 lea rcx, [rsp+0x60]
 call sub_140016708
 mov byte ptr [rbx+0xc3a9], al
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov dword ptr [rbx+0xc3ac], eax
 mov bpl, byte ptr [rsp+0x50]
 jmp 0x140003932

0x140002fed:
 lea rcx, [rbx+0xc10c]
 mov rdx, r14
 mov r8d, 0x14
 call 0x14002d490
 lea rcx, [rsp+0x60]
 call sub_140016708
 mov byte ptr [rbx+0xc120], al
 lea rcx, [rsp+0x60]
 call sub_140016708
 mov byte ptr [rbx+0xc121], al
 lea rcx, [rsp+0x60]
 call sub_140016708
 mov byte ptr [rbx+0xc122], al
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov dword ptr [rbx+0xc124], eax
 mov bpl, byte ptr [rsp+0x50]
 jmp 0x140003932

0x14000304c:
 lea rcx, [rbx+0xc0c8]
 mov rdx, r14
 mov r8d, 0x14
 call 0x14002d490
 lea rcx, [rsp+0x60]
 call 0x140016728
 mov word ptr [rbx+0xc0dc], ax
 lea rcx, [rsp+0x60]
 call sub_140016708
 mov byte ptr [rbx+0xc0de], al
 lea rcx, [rsp+0x60]
 call sub_140016708
 mov byte ptr [rbx+0xc0df], al
 lea rcx, [rsp+0x60]
 call 0x140016728
 mov word ptr [rbx+0xc0e0], ax
 mov bpl, byte ptr [rsp+0x50]
 jmp 0x140003932

0x1400030ad:
 lea rcx, [rbx+0x9d70]
 mov rdx, r14
 mov r8d, 0x14
 call 0x14002d490
 mov al, byte ptr [rbx+0x9d78]
 and al, r15b
 mov byte ptr [rbx+0x9d8c], al
 mov edx, dword ptr [rbx+0x9d78]
 mov ecx, edx
 shr ecx, 0x1
 and cl, r15b
 mov byte ptr [rbx+0x9d8d], cl
 mov eax, edx
 shr eax, 2
 and al, r15b
 mov byte ptr [rbx+0x9d8e], al
 shr edx, 3
 and dl, r15b
 mov byte ptr [rbx+0x9d8f], dl
 cmp cl, r13b
 je 0x140003113
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov dword ptr [rbx+0x9d84], eax

0x140003113:
 cmp byte ptr [rbx+0x9d8f], r13b
 je 0x14000391f
 lea rcx, [rsp+0x60]
 call 0x140016728
 movzx edx, ax
 mov dword ptr [rbx+0x9d88], edx
 mov dword ptr [rbx+0xc51c], edx
 mov bpl, byte ptr [rsp+0x50]
 jmp 0x140003932

0x140003143:
 cmp eax, 2
 sete sil
 lea rax, [rbx+0x7a58]
 lea rbp, [rbx+0x9db0]
 cmp sil, r13b
 cmovne rbp, rax
 xor edx, edx
 mov rcx, rbp
 call sub_14001194c
 mov rcx, rbp
 mov rdx, r14
 mov r8d, 0x14
 call 0x14002d490
 mov al, byte ptr [rbp+0x8]
 and al, r15b
 mov byte ptr [rbp+0x1098], al
 mov edx, dword ptr [rbp+0x8]
 mov eax, edx
 shr eax, 0x1
 and al, r15b
 mov byte ptr [rbp+0x1099], al
 mov eax, edx
 shr eax, 2
 and al, r15b
 mov byte ptr [rbp+0x109b], al
 mov eax, edx
 shr eax, 0xa
 and al, r15b
 mov byte ptr [rbp+0x10a0], al
 cmp sil, r13b
 je 0x1400031c1
 test dl, 0x10
 je 0x1400031c1
 mov eax, r15d
 jmp 0x1400031c4

0x1400031c1:
 mov eax, r13d

0x1400031c4:
 mov byte ptr [rbp+0x10f0], al
 cmp sil, r13b
 jne 0x1400031d9
 test dl, 0x10
 je 0x1400031d9
 mov eax, r15d
 jmp 0x1400031dc

0x1400031d9:
 mov eax, r13d

0x1400031dc:
 mov byte ptr [rbp+0x1102], al
 mov eax, edx
 and eax, 0xe0
 cmp al, 0xe0
 sete al
 mov byte ptr [rbp+0x10f1], al
 cmp al, r13b
 je 0x1400031fe
 mov edi, r13d
 jmp 0x14000320d

0x1400031fe:
 mov ecx, edx
 shr ecx, 5
 and ecx, r12d
 mov edi, 0x10000
 shl edi, cl

0x14000320d:
 movsxd rax, edi
 mov qword ptr [rbp+0x10f8], rax
 mov eax, edx
 shr eax, 3
 and al, r15b
 mov byte ptr [rbp+0x10f2], al
 shr edx, 0xb
 and dl, r15b
 mov byte ptr [rbp+0x10f3], dl
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov dword ptr [rbp+0x14], eax
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov r12d, eax
 lea rcx, [rsp+0x60]
 call sub_140016708
 mov byte ptr [rbp+0x18], al
 mov edi, 2
 mov dword ptr [rbp+0x1070], edi
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov dword ptr [rbp+0x1074], eax
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov r15d, eax
 lea rcx, [rsp+0x60]
 call sub_140016708
 mov byte ptr [rbp+0x19], al
 lea rcx, [rsp+0x60]
 call sub_140016708
 sub al, 0x30
 mov byte ptr [rbp+0x1a], al
 lea rcx, [rsp+0x60]
 call 0x140016728
 movzx r13d, ax
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov edx, eax
 mov dword ptr [rbp+0x1c], eax
 xor ecx, ecx
 mov dword ptr [rbp+0x109c], ecx
 cmp byte ptr [rbp+0x109b], cl
 je 0x140003312
 mov cl, byte ptr [rbp+0x19]
 cmp cl, 0xd
 je 0x140003306
 cmp cl, 0xf
 je 0x1400032fc
 cmp cl, 0x14
 je 0x1400032ee
 cmp cl, 0x1a
 je 0x1400032ee
 mov dword ptr [rbp+0x109c], 4
 xor ecx, ecx
 jmp 0x140003312

0x1400032ee:
 mov dword ptr [rbp+0x109c], 3
 xor ecx, ecx
 jmp 0x140003312

0x1400032fc:
 mov dword ptr [rbp+0x109c], edi
 xor ecx, ecx
 jmp 0x140003312

0x140003306:
 mov dword ptr [rbp+0x109c], 0x1
 xor ecx, ecx

0x140003312:
 mov dword ptr [rbp+0x1104], edi
 mov al, byte ptr [rbp+0x18]
 cmp al, 3
 je 0x14000332f
 cmp al, 5
 je 0x14000332f
 cmp al, 6
 jae 0x140003339
 mov dword ptr [rbp+0x1104], ecx
 jmp 0x140003339

0x14000332f:
 mov dword ptr [rbp+0x1104], 0x1

0x140003339:
 mov dword ptr [rbp+0x1108], ecx
 cmp al, 3
 jne 0x140003362
 mov eax, edx
 and eax, 0xf000
 cmp eax, 0xa000
 jne 0x140003362
 mov dword ptr [rbp+0x1108], 0x1
 mov word ptr [rbp+0x110c], cx

0x140003362:
 cmp sil, cl
 jne 0x140003374
 bt edx, 0x1f
 jae 0x140003374
 mov eax, 0x1
 jmp 0x140003376

0x140003374:
 mov eax, ecx

0x140003376:
 mov byte ptr [rbp+0x1100], al
 mov eax, dword ptr [rbp+0x8]
 shr eax, 8
 and al, 0x1
 mov byte ptr [rbp+0x1101], al
 je 0x1400033c8
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov edi, eax
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov edx, eax
 or ecx, 0xffffffff
 cmp r12d, ecx
 jne 0x1400033ba
 cmp eax, ecx
 jne 0x1400033ba
 mov ecx, 0x1
 xor r8d, r8d
 jmp 0x1400033c0

0x1400033ba:
 xor r8d, r8d
 mov ecx, r8d

0x1400033c0:
 mov byte ptr [rbp+0x109a], cl
 jmp 0x1400033de

0x1400033c8:
 mov edx, ecx
 mov edi, ecx
 or ecx, 0xffffffff
 cmp r12d, ecx
 sete al
 mov byte ptr [rbp+0x109a], al
 xor r8d, r8d

0x1400033de:
 mov ecx, edi
 shl rcx, 0x20
 mov eax, dword ptr [rbp+0x14]
 add rcx, rax
 mov qword ptr [rbp+0x1058], rcx
 mov ecx, edx
 shl rcx, 0x20
 add rcx, r12
 mov qword ptr [rbp+0x1060], rcx
 cmp byte ptr [rbp+0x109a], r8b
 je 0x14000341b
 movabs rax, 0x7fffffff7fffffff
 mov qword ptr [rbp+0x1060], rax

0x14000341b:
 mov edi, 0x1fff
 cmp r13, rdi
 cmovb rdi, r13
 mov r8, rdi
 lea rdx, [rsp+0x900]
 lea rcx, [rsp+0x60]
 call sub_140016840
 xor eax, eax
 mov byte ptr [rsp+rdi+0x900], al
 cmp sil, al
 je 0x1400034ff
 mov esi, 0x800
 bt dword ptr [rbp+0x8], 9
 jae 0x1400034ad
 lea rcx, [rsp+0xa0]
 call sub_14000adb0
 xor eax, eax
 or rcx, 0xffffffffffffffff
 lea rdi, [rsp+0x900]
 repne scasb al, byte ptr [rdi]
 not rcx
 lea r12, [rbp+0x20]
 sub r13, rcx
 lea r8, [rsp+rcx+0x900]
 mov qword ptr [rsp+0x28], rsi
 mov qword ptr [rsp+0x20], r12
 mov r9, r13
 lea rdx, [rsp+0x900]
 lea rcx, [rsp+0xa0]
 call 0x14000adc4
 jmp 0x1400034b6

0x1400034ad:
 lea r12, [rbp+0x20]
 mov word ptr [r12], ax

0x1400034b6:
 mov r8, rsi
 lea rdx, [rsp+0x100]
 lea rcx, [rsp+0x900]
 call sub_14001ed7c
 mov r9, rsi
 mov r8, r12
 mov rdx, r12
 lea rcx, [rsp+0x100]
 call sub_1400138c8
 mov rdx, r12
 mov rcx, rbx
 call sub_140002360
 mov rdx, rbp
 mov rcx, rbx
 call sub_1400023d4
 jmp 0x140003639

0x1400034ff:
 lea r12, [rbp+0x20]
 mov r8d, 0x800
 mov rdx, r12
 lea rcx, [rsp+0x900]
 call sub_14002110c
 mov edx, dword ptr [rbp+0xc]
 sub edx, r13d
 sub edx, 0x20
 bt dword ptr [rbp+0x8], 0xa
 jae 0x14000352c
 sub edx, 8

0x14000352c:
 xor r8d, r8d
 cmp edx, r8d
 jle 0x14000361e
 movsxd rdi, edx
 cmp rdi, qword ptr [rbp+0x1030]
 jbe 0x14000355c
 mov rdx, rdi
 sub rdx, qword ptr [rbp+0x1028]
 lea rcx, [rbp+0x1020]
 call sub_140001294
 jmp 0x140003563

0x14000355c:
 mov qword ptr [rbp+0x1028], rdi

0x140003563:
 mov r8, rdi
 mov rdx, qword ptr [rbp+0x1020]
 lea rcx, [rsp+0x60]
 call sub_140016840
 lea rdi, [0x14003c7b0]
 mov rsi, r12
 mov ecx, 3
 repe cmpsd dword ptr [rsi], dword ptr [rdi]
 jne 0x14000361e
 mov rdx, qword ptr [rbp+0x1020]
 movzx ecx, byte ptr [rdx+0xb]
 shl ecx, 8
 movzx eax, byte ptr [rdx+0xa]
 add ecx, eax
 shl ecx, 8
 movzx eax, byte ptr [rdx+9]
 add ecx, eax
 shl ecx, 8
 movzx eax, byte ptr [rdx+0x8]
 add eax, ecx
 shl rax, 9
 mov qword ptr [rbx+0x6838], rax
 mov rax, qword ptr [rbx]
 mov rcx, rbx
 call qword ptr [rax+0x20]
 mov rdi, rax
 mov rdx, rax
 mov rcx, qword ptr [rbx+0x6838]
 call 0x14001ed44
 mov esi, eax
 mov dword ptr [rbx+0x6840], eax
 movabs rax, -0x5c28f5c28f5c28f5
 imul rdi
 lea rcx, [rdi+rdx]
 sar rcx, 7
 mov rdx, rcx
 shr rdx, 0x3f
 add rcx, rdx
 add rcx, qword ptr [rbx+0x6838]
 mov rdx, rdi
 call 0x14001ed44
 cmp eax, esi
 jle 0x14000361e
 lea eax, [rsi+1]
 mov dword ptr [rbx+0x6840], eax

0x14000361e:
 lea rdi, [0x14003c700]
 mov rsi, r12
 mov ecx, 4
 repe cmpsd dword ptr [rsi], dword ptr [rdi]
 jne 0x140003639
 mov byte ptr [rbx+0xc4f6], 0x1

0x140003639:
 bt dword ptr [rbp+0x8], 0xa
 jae 0x140003657
 lea rdx, [rbp+0x10a1]
 mov r8d, 8
 lea rcx, [rsp+0x60]
 call sub_140016840

0x140003657:
 lea rcx, [rbp+0x1040]
 mov edx, r15d
 call sub_14002027c
 bt dword ptr [rbp+0x8], 0xc
 jae 0x140003783
 lea rcx, [rsp+0x60]
 call 0x140016728
 lea rcx, [rbx+0x8a98]
 mov qword ptr [rsp+0xa0], rcx
 lea rcx, [rbx+0x8aa0]
 mov qword ptr [rsp+0xa8], rcx
 lea rcx, [rbx+0x8aa8]
 mov qword ptr [rsp+0xb0], rcx
 xor esi, esi
 mov qword ptr [rsp+0xb8], rsi
 mov r13, rsi
 movzx eax, ax
 mov dword ptr [rsp+0xf0], eax
 lea r15d, [rsi+0xc]

0x1400036c3:
 mov r14, qword ptr [rsp+r13*8+0xa0]
 mov ecx, r15d
 mov edi, eax
 shr edi, cl
 test dil, 8
 je 0x14000376b
 cmp r14, rsi
 je 0x14000376b
 cmp r13, rsi
 je 0x1400036fe
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov edx, eax
 mov rcx, r14
 call sub_14002027c

0x1400036fe:
 lea rdx, [rsp+0xc0]
 mov rcx, r14
 call sub_14001ff94
 test dil, 4
 je 0x14000371b
 inc dword ptr [rsp+0xd4]

0x14000371b:
 mov dword ptr [rsp+0xd8], esi
 and edi, 3
 jle 0x140003754
 mov esi, 3
 sub esi, edi
 shl esi, 3

0x140003731:
 lea rcx, [rsp+0x60]
 call sub_140016708
 movzx edx, al
 mov ecx, esi
 shl edx, cl
 or dword ptr [rsp+0xd8], edx
 add esi, 8
 sub rdi, 0x1
 jne 0x140003731
 xor esi, esi

0x140003754:
 lea rdx, [rsp+0xc0]
 mov rcx, r14
 call sub_140020128
 mov eax, dword ptr [rsp+0xf0]

0x14000376b:
 sub r15d, 4
 inc r13
 cmp r13, 4
 jl 0x1400036c3
 lea r14, [rbx+0x79c0]

0x140003783:
 mov rax, qword ptr [rbp+0x1058]
 add qword ptr [rbx+0xc4e8], rax
 mov dl, byte ptr [rbp+0x10f2]
 lea rcx, [rsp+0x60]
 call sub_1400168bc
 movzx eax, ax
 cmp dword ptr [rbp], eax
 je 0x1400038fb
 mov r15d, 0x1
 mov byte ptr [rbx+0xc508], r15b
 mov edx, r15d
 lea rcx, [0x140050e70]
 call 0x14000af6c
 mov bpl, byte ptr [rsp+0x50]
 xor r13d, r13d
 cmp bpl, r13b
 jne 0x140003910
 lea rdx, [rbx+0x26]
 mov r8, r12
 lea ecx, [r15+0x19]
 call sub_1400014b8
 lea r12d, [r15+6]
 jmp 0x140003932

0x1400037f3:
 bt dword ptr [rbx+0x79c8], 0xf
 jae 0x140003918
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov edx, eax
 add qword ptr [rbx+0xc4e8], rdx
 mov bpl, byte ptr [rsp+0x50]
 jmp 0x140003932

0x14000381e:
 lea rcx, [rbx+0x79e0]
 call sub_140011928
 lea rcx, [rbx+0x79e0]
 mov rdx, r14
 mov r8d, 0x14
 call 0x14002d490
 lea rcx, [rsp+0x60]
 call 0x140016728
 mov word ptr [rbx+0x79f4], ax
 lea rcx, [rsp+0x60]
 call 0x140016760
 mov edx, eax
 mov dword ptr [rbx+0x79f8], eax
 mov cl, byte ptr [rbx+0x79e8]
 and cl, r15b
 mov byte ptr [rbx+0xc4f5], cl
 mov edi, dword ptr [rbx+0x79e8]
 mov ecx, edi
 shr ecx, 3
 and cl, r15b
 mov byte ptr [rbx+0xc4f4], cl
 mov ecx, edi
 shr ecx, 2
 and cl, r15b
 mov byte ptr [rbx+0xc4f7], cl
 mov eax, edi
 shr eax, 6
 and al, r15b
 mov byte ptr [rbx+0xc4fb], al
 mov eax, edi
 shr eax, 7
 and al, r15b
 mov byte ptr [rbx+0xc4fc], al
 cmp edx, r13d
 jne 0x1400038c3
 cmp word ptr [rbx+0x79f4], r13w
 jne 0x1400038c3
 mov eax, r13d
 jmp 0x1400038c6

0x1400038c3:
 mov eax, r15d

0x1400038c6:
 mov byte ptr [rbx+0xc4f8], al
 mov eax, edi
 shr eax, 0x1
 and al, r15b
 mov byte ptr [rbx+0x79fc], al
 mov eax, edi
 shr eax, 8
 and al, r15b
 mov byte ptr [rbx+0xc4f9], al
 shr edi, 4
 and dil, r15b
 mov byte ptr [rbx+0xc4fa], dil
 mov bpl, byte ptr [rsp+0x50]
 jmp 0x140003932

0x1400038fb:
 mov r12d, 7
 mov bpl, byte ptr [rsp+0x50]
 xor r13d, r13d
 lea r15d, [r12-6]
 jmp 0x140003932

0x140003910:
 mov r12d, 7
 jmp 0x140003932

0x140003918:
 mov bpl, byte ptr [rsp+0x50]
 jmp 0x140003932

0x14000391f:
 mov bpl, byte ptr [rsp+0x50]
 jmp 0x140003932

0x140003926:
 mov bpl, byte ptr [rsp+0x50]
 jmp 0x140003932

0x14000392d:
 mov bpl, byte ptr [rsp+0x50]

0x140003932:
 xor edx, edx
 lea rcx, [rsp+0x60]
 call sub_1400168bc
 movzx eax, ax
 cmp dword ptr [r14], eax
 je 0x140003a1c
 mov eax, dword ptr [rbx+0x79c4]
 cmp eax, 0x79
 je 0x140003a1c
 cmp eax, 0x76
 je 0x140003a1c
 cmp eax, 5
 jne 0x1400039d4
 cmp byte ptr [rbx+0x9d8e], r13b
 je 0x1400039d4
 mov qword ptr [rsp+0xf0], rbx
 mov rax, qword ptr [rbx]
 mov rcx, rbx
 call qword ptr [rax+0x20]
 mov rsi, rax
 mov qword ptr [rsp+0xf8], rax
 mov rdx, qword ptr [rbx]
 mov rcx, rbx
 call qword ptr [rdx+0x20]
 mov rdi, qword ptr [rbx]
 lea rdx, [rax-7]
 xor r8d, r8d
 mov rcx, rbx
 call qword ptr [rdi+0x18]
 mov dil, r15b

0x1400039a8:
 mov rcx, rbx
 call sub_14000f8bc
 movzx edi, dil
 cmp al, r13b
 cmovne edi, r13d
 sub r12, r15
 jne 0x1400039a8
 mov rax, qword ptr [rbx]
 xor r8d, r8d
 mov rdx, rsi
 mov rcx, rbx
 call qword ptr [rax+0x18]
 cmp dil, r13b
 jne 0x140003a1c

0x1400039d4:
 mov byte ptr [rbx+0xc508], r15b
 mov edx, 3
 lea rcx, [0x140050e70]
 call 0x14000af6c
 cmp bpl, r13b
 je 0x140003a1c
 lea rdx, [rbx+0x26]
 mov r8, rdx
 mov ecx, 4
 call sub_1400014b8
 mov byte ptr [rbx+0xc509], r15b
 mov rcx, qword ptr [rsp+0x60]
 cmp rcx, r13
 je 0x140003a18
 call sub_14002cfac

0x140003a18:
 xor eax, eax
 jmp 0x140003a62

0x140003a1c:
 mov rax, qword ptr [rbx+0xc4e0]
 cmp qword ptr [rbx+0xc4e8], rax
 jg 0x140003a48
 mov rcx, rbx
 call 0x140002928
 nop 
 mov rcx, qword ptr [rsp+0x60]
 cmp rcx, r13
 je 0x140003a44
 call sub_14002cfac

0x140003a44:
 xor eax, eax
 jmp 0x140003a62

0x140003a48:
 mov rdi, qword ptr [rsp+0x88]
 mov rcx, qword ptr [rsp+0x60]
 cmp rcx, r13
 je 0x140003a5f
 call sub_14002cfac

0x140003a5f:
 mov rax, rdi

0x140003a62:
 mov rcx, qword ptr [rsp+0x2900]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x2910]
 mov rbx, qword ptr [r11+0x38]
 mov rbp, qword ptr [r11+0x40]
 mov rsi, qword ptr [r11+0x48]
 mov rsp, r11
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 ret 
 int3 

0x140003a94:
 mov qword ptr [rsp+0x18], rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x20e0
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x20d0], rax
 mov rdi, rdx
 mov rdx, qword ptr [rdx+0x28]
 mov rsi, r9
 mov rax, rdx
 mov r14, rcx
 sub rax, r8
 cmp rax, qword ptr [rdi+0x30]
 jb 0x140004045
 sub rdx, rax
 mov qword ptr [rdi+0x30], rax
 cmp rdx, 2
 jb 0x140004045
 mov r13d, 0x1

0x140003af7:
 mov rcx, rdi
 call 0x1400167d0
 test rax, rax
 je 0x140004045
 mov rdx, qword ptr [rdi+0x30]
 mov rcx, qword ptr [rdi+0x28]
 sub rcx, rdx
 je 0x140004045
 cmp rax, rcx
 jg 0x140004045
 mov rcx, rdi
 lea r15, [rdx+rax]
 call 0x1400167d0
 mov rbp, r15
 sub rbp, qword ptr [rdi+0x30]
 mov rbx, rax
 cmp dword ptr [rsi+4], r13d
 jne 0x140003b91
 cmp rax, r13
 jne 0x140003b91
 mov rcx, rdi
 mov byte ptr [rsi+0x1e], r13b
 call 0x1400167d0
 mov r12, rax
 test al, r13b
 je 0x140003b73
 mov rcx, rdi
 call 0x1400167d0
 test rax, rax
 je 0x140003b73
 mov rcx, qword ptr [r14+0xc4e0]
 lea rdx, [rax+rcx]
 mov qword ptr [rsi+0x20], rdx

0x140003b73:
 test r12b, 2
 je 0x140003b91
 mov rcx, rdi
 call 0x1400167d0
 test rax, rax
 je 0x140003b91
 add rax, qword ptr [r14+0xc4e0]
 mov qword ptr [rsi+0x30], rax

0x140003b91:
 cmp dword ptr [rsi+4], 2
 je 0x140003ba1
 cmp dword ptr [rsi+4], 3
 jne 0x140004030

0x140003ba1:
 sub rbx, r13
 je 0x140003ef3
 sub rbx, r13
 je 0x140003ec1
 sub rbx, r13
 je 0x140003dfb
 sub rbx, r13
 je 0x140003d98
 sub rbx, r13
 je 0x140003d09
 sub rbx, r13
 je 0x140003c28
 cmp rbx, r13
 jne 0x140004030
 cmp dword ptr [rsi+4], 3
 jne 0x140003bf1
 mov rax, qword ptr [rdi+0x28]
 sub rax, r15
 cmp rax, r13
 jne 0x140003bf1
 add rbp, r13

0x140003bf1:
 cmp rbp, qword ptr [rsi+0x1030]
 jbe 0x140003c12
 mov rdx, rbp
 lea rcx, [rsi+0x1020]
 sub rdx, qword ptr [rsi+0x1028]
 call sub_140001294
 jmp 0x140003c19

0x140003c12:
 mov qword ptr [rsi+0x1028], rbp

0x140003c19:
 mov rdx, qword ptr [rsi+0x1020]
 mov r8, rbp
 jmp 0x140003ee6

0x140003c28:
 mov rcx, rdi
 call 0x1400167d0
 mov byte ptr [rsi+0x2210], 0x0
 mov byte ptr [rsi+0x2110], 0x0
 mov ecx, eax
 mov rbp, rax
 shr ecx, 2
 and cl, r13b
 mov byte ptr [rsi+0x210e], cl
 mov ecx, eax
 shr ecx, 3
 and cl, r13b
 mov byte ptr [rsi+0x210f], cl
 test al, 0x1
 je 0x140003c92
 mov rcx, rdi
 call 0x1400167d0
 mov ecx, 0xff
 lea rdx, [rsi+0x2110]
 cmp rax, rcx
 mov rbx, rcx
 mov rcx, rdi
 cmovb rbx, rax
 mov r8, rbx
 call sub_140016840
 mov byte ptr [rsi+rbx+0x2110], 0x0

0x140003c92:
 test bpl, 2
 je 0x140003cc9
 mov rcx, rdi
 call 0x1400167d0
 mov ecx, 0xff
 lea rdx, [rsi+0x2210]
 cmp rax, rcx
 mov rbx, rcx
 mov rcx, rdi
 cmovb rbx, rax
 mov r8, rbx
 call sub_140016840
 mov byte ptr [rsi+rbx+0x2210], 0x0

0x140003cc9:
 cmp byte ptr [rsi+0x210e], 0x0
 je 0x140003ce0
 mov rcx, rdi
 call 0x1400167d0
 mov dword ptr [rsi+0x2310], eax

0x140003ce0:
 cmp byte ptr [rsi+0x210f], 0x0
 je 0x140003cf7
 mov rcx, rdi
 call 0x1400167d0
 mov dword ptr [rsi+0x2314], eax

0x140003cf7:
 mov r13d, 0x1
 mov byte ptr [rsi+0x210d], r13b
 jmp 0x140004030

0x140003d09:
 mov rcx, rdi
 call 0x1400167d0
 mov rcx, rdi
 mov dword ptr [rsi+0x1108], eax
 call 0x1400167d0
 mov rcx, rdi
 and al, r13b
 mov byte ptr [rsi+0x210c], al
 call 0x1400167d0
 mov byte ptr [rsp+0xd0], 0x0
 mov rbx, rax
 cmp rax, 0x1fff
 jae 0x140003d5e
 lea rdx, [rsp+0xd0]
 mov r8, rax
 mov rcx, rdi
 call sub_140016840
 mov byte ptr [rsp+rbx+0xd0], 0x0

0x140003d5e:
 lea rdx, [rsp+0xd0]
 lea rcx, [rsp+0xd0]
 mov r8d, 0x2000
 call sub_140013778
 lea rdx, [rsi+0x110c]
 lea rcx, [rsp+0xd0]
 mov r8d, 0x800
 call sub_1400212c0
 jmp 0x140004030

0x140003d98:
 cmp rbp, r13
 jl 0x140004030
 mov rcx, rdi
 call 0x1400167d0
 mov rcx, rdi
 call 0x1400167d0
 test eax, eax
 je 0x140004030
 lea r8, [0x14003c7c8]
 lea rcx, [rsp+0xa0]
 mov r9d, eax
 mov edx, 0x14
 mov byte ptr [rsi+0x10f3], r13b
 call sub_140019504
 lea rcx, [r14+0x7a78]
 lea rdx, [rsp+0xa0]
 mov r8d, 0x800
 call sub_14001effc
 jmp 0x140004030

0x140003dfb:
 cmp rbp, 9
 jl 0x140004030
 mov rcx, rdi
 call 0x1400167d0
 mov bl, al
 mov rbp, rax
 and bl, r13b
 test al, 2
 je 0x140003e49
 mov rcx, rdi
 test bl, bl
 je 0x140003e35
 call 0x140016760
 lea rcx, [rsi+0x1040]
 mov edx, eax
 call sub_14001fedc
 jmp 0x140003e49

0x140003e35:
 call sub_1400167a8
 lea rcx, [rsi+0x1040]
 mov rdx, rax
 call 0x14001fef8

0x140003e49:
 test bpl, 4
 je 0x140003e7f
 mov rcx, rdi
 test bl, bl
 je 0x140003e6b
 call 0x140016760
 lea rcx, [rsi+0x1048]
 mov edx, eax
 call sub_14001fedc
 jmp 0x140003e7f

0x140003e6b:
 call sub_1400167a8
 lea rcx, [rsi+0x1048]
 mov rdx, rax
 call 0x14001fef8

0x140003e7f:
 test bpl, 8
 je 0x140004030
 mov rcx, rdi
 test bl, bl
 je 0x140003ea8
 call 0x140016760
 lea rcx, [rsi+0x1050]
 mov edx, eax
 call sub_14001fedc
 jmp 0x140004030

0x140003ea8:
 call sub_1400167a8
 lea rcx, [rsi+0x1050]
 mov rdx, rax
 call 0x14001fef8
 jmp 0x140004030

0x140003ec1:
 mov rcx, rdi
 call 0x1400167d0
 test eax, eax
 jne 0x140004030
 mov dword ptr [rsi+0x1070], 3
 lea rdx, [rsi+0x1074]
 lea r8d, [rax+0x20]

0x140003ee6:
 mov rcx, rdi
 call sub_140016840
 jmp 0x140004030

0x140003ef3:
 mov rcx, rdi
 call 0x1400167d0
 test eax, eax
 je 0x140003f10
 lea rdx, [rsi+0x20]
 mov rcx, r14
 call 0x14000295c
 jmp 0x140004030

0x140003f10:
 mov rcx, rdi
 call 0x1400167d0
 mov cl, al
 shr eax, 0x1
 and cl, r13b
 and al, r13b
 mov byte ptr [rsi+0x10c1], cl
 mov rcx, rdi
 mov byte ptr [rsi+0x10ca], al
 call sub_140016708
 movzx r11d, al
 mov dword ptr [rsi+0x10ec], r11d
 cmp r11d, 0x18
 jbe 0x140003f53
 lea rdx, [rsi+0x20]
 mov rcx, r14
 call 0x14000295c

0x140003f53:
 lea rdx, [rsi+0x10a1]
 mov r8d, 0x10
 mov rcx, rdi
 call sub_140016840
 lea rdx, [rsi+0x10b1]
 mov r8d, 0x10
 mov rcx, rdi
 call sub_140016840
 cmp byte ptr [rsi+0x10c1], 0x0
 je 0x140004018
 lea rdx, [rsi+0x10c2]
 mov r8d, 8
 mov rcx, rdi
 call sub_140016840
 lea rdx, [rsp+0x20]
 mov r8d, 4
 mov rcx, rdi
 call sub_140016840
 lea rcx, [rsp+0x30]
 call sub_14001e8a0
 lea rdx, [rsi+0x10c2]
 lea rcx, [rsp+0x30]
 mov r8d, 8
 call 0x14001eb2c
 lea rdx, [rsp+0xa0]
 lea rcx, [rsp+0x30]
 call 0x14001ebf0
 mov r11d, dword ptr [rsp+0x20]
 cmp r11d, dword ptr [rsp+0xa0]
 sete al
 cmp dword ptr [rsi+4], 3
 mov byte ptr [rsi+0x10c1], al
 jne 0x140004018
 mov rax, qword ptr [rsi+0x10c2]
 cmp rax, qword ptr [0x14003c7b8]
 jne 0x140004018
 mov byte ptr [rsi+0x10c1], 0x0

0x140004018:
 mov byte ptr [rsi+0x10a0], r13b
 mov dword ptr [rsi+0x109c], 5
 mov byte ptr [rsi+0x109b], r13b

0x140004030:
 mov qword ptr [rdi+0x30], r15
 mov rax, qword ptr [rdi+0x28]
 sub rax, r15
 cmp rax, 2
 jae 0x140003af7

0x140004045:
 mov rcx, qword ptr [rsp+0x20d0]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x2130]
 add rsp, 0x20e0
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 

0x140004070:
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 mov eax, 0xe9e0
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x50], -2
 mov qword ptr [rsp+0xea28], rbx
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0xe9d0], rax
 mov r13, r8
 mov rdi, rdx
 mov rbx, rcx
 cmp byte ptr [rcx+0xc508], 0x0
 je 0x1400040e0
 lea rdx, [rcx+0x26]
 mov ecx, 0x1b
 call sub_140001454
 mov edx, 3
 lea rcx, [0x140050e70]
 call 0x14000af6c
 xor al, al
 jmp 0x140004392

0x1400040e0:
 cmp byte ptr [rcx+0x9dca], 5
 ja 0x140004382
 mov ecx, 0x1d
 lea eax, [rcx+0x15]
 cmp dword ptr [rbx+0xc4f0], 3
 cmove ecx, eax
 movzx eax, byte ptr [rbx+0x9dc9]
 cmp eax, ecx
 jg 0x140004382
 cmp qword ptr [rbx+0xae08], 0x0
 jne 0x140004128
 cmp byte ptr [rbx+0xae49], 0x0
 jne 0x140004128
 mov al, 0x1
 jmp 0x140004392

0x140004128:
 lea rcx, [rbx+0x20f0]
 call sub_14001694c
 lea rdx, [rbx+0x20f0]
 lea rcx, [rsp+0x60]
 call sub_14002897c
 nop 
 xor r8d, r8d
 mov rdx, qword ptr [rbx+0xaea8]
 lea rcx, [rsp+0x60]
 call sub_140022980
 test r13, r13
 jne 0x1400041cc
 mov rax, qword ptr [rbx+0xae10]
 cmp rax, 0x1000000
 jle 0x14000418d
 lea rdx, [rbx+0x26]
 lea ecx, [r13+0x1c]
 call sub_140001454
 nop 
 lea rcx, [rsp+0x60]
 call 0x140025c2c
 xor al, al
 jmp 0x140004392

0x14000418d:
 test rdi, rdi
 jne 0x14000419b
 mov byte ptr [rbx+0x2139], 0x1
 jmp 0x1400041cc

0x14000419b:
 cmp rax, qword ptr [rdi+0x10]
 jbe 0x1400041b2
 sub rax, qword ptr [rdi+0x8]
 mov rdx, rax
 mov rcx, rdi
 call sub_140001294
 jmp 0x1400041b6

0x1400041b2:
 mov qword ptr [rdi+0x8], rax

0x1400041b6:
 mov r8d, dword ptr [rbx+0xae10]
 mov rdx, qword ptr [rdi]
 lea rcx, [rbx+0x20f0]
 call sub_140016a88

0x1400041cc:
 cmp byte ptr [rbx+0xae4b], 0x0
 je 0x140004261
 mov r9, qword ptr [rbx+0x6830]
 cmp byte ptr [r9+0x5130], 0x0
 je 0x140004250
 lea r8, [rbx+0xae72]
 lea r10, [rbx+0xae7b]
 lea r11, [rbx+0xae61]
 mov al, byte ptr [rbx+0xae50]
 lea rcx, [rbx+0xae51]
 neg al
 sbb rdx, rdx
 and rdx, rcx
 add r9, 0x5030
 mov qword ptr [rsp+0x40], r8
 mov qword ptr [rsp+0x38], r10
 mov eax, dword ptr [rbx+0xae9c]
 mov dword ptr [rsp+0x30], eax
 mov qword ptr [rsp+0x28], r11
 mov qword ptr [rsp+0x20], rdx
 mov r8d, dword ptr [rbx+0xae4c]
 xor edx, edx
 lea rcx, [rbx+0x20f0]
 call sub_1400169fc
 jmp 0x140004261

0x140004250:
 lea rcx, [rsp+0x60]
 call 0x140025c2c
 xor al, al
 jmp 0x140004392

0x140004261:
 mov r8d, 0x1
 mov edx, dword ptr [rbx+0xae20]
 lea rcx, [rbx+0x5bd0]
 call sub_140011558
 mov r11, qword ptr [rbx+0xae08]
 mov qword ptr [rbx+0x2130], r11
 mov byte ptr [rbx+0x2138], 0x0
 mov r8, r13
 mov rdx, rbx
 lea rcx, [rbx+0x20f0]
 call sub_1400169d0
 mov r11b, byte ptr [rbx+0xae49]
 mov byte ptr [rbx+0x42ef], r11b
 lea rax, [rbx+0x9db0]
 mov qword ptr [rbx+0x2158], rax
 and qword ptr [rbx+0x2160], 0x0
 mov rdx, qword ptr [rbx+0xae10]
 mov qword ptr [rsp+0x4e00], rdx
 mov byte ptr [rsp+0x4e18], 0x0
 cmp byte ptr [rbx+0x9dca], 0x0
 jne 0x1400042f2
 lea rcx, [rbx+0x20f0]
 call sub_14000cf64
 jmp 0x140004306

0x1400042f2:
 movzx edx, byte ptr [rbx+0x9dc9]
 xor r8d, r8d
 lea rcx, [rsp+0x60]
 call sub_14002c46c

0x140004306:
 mov al, byte ptr [rbx+0xae7a]
 lea r9, [rbx+0xae7b]
 neg al
 sbb r8, r8
 and r8, r9
 lea rdx, [rbx+0xae20]
 lea rcx, [rbx+0x5bd0]
 call sub_1400118e4
 test al, al
 jne 0x140004374
 lea r8, [rbx+0x9dd0]
 lea rdx, [rbx+0x26]
 mov ecx, 0x1d
 call sub_1400014b8
 mov edx, 3
 lea rcx, [0x140050e70]
 call 0x14000af6c
 test rdi, rdi
 je 0x140004366
 mov rcx, rdi
 call sub_1400024e0
 nop 

0x140004366:
 lea rcx, [rsp+0x60]
 call 0x140025c2c
 xor al, al
 jmp 0x140004392

0x140004374:
 lea rcx, [rsp+0x60]
 call 0x140025c2c
 mov al, 0x1
 jmp 0x140004392

0x140004382:
 lea rdx, [rbx+0x26]
 mov ecx, 0x1c
 call sub_140001454
 xor al, al

0x140004392:
 mov rcx, qword ptr [rsp+0xe9d0]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0xea28]
 add rsp, 0xe9e0
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
 int3 
 int3 
 int3 

0x1400043bc:
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x2150
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x90], -2
 mov qword ptr [rsp+0x2188], rbx
 mov qword ptr [rsp+0x2190], rbp
 mov qword ptr [rsp+0x2198], rsi
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x2140], rax
 mov r12, rcx
 mov rdx, rcx
 lea rcx, [rsp+0x50]
 call sub_140016924
 nop 
 mov ebx, 0x1
 xor r14d, r14d
 cmp byte ptr [r12+0xc4fc], r14b
 je 0x140004551
 mov rax, qword ptr [r12+0xc500]
 add rax, 8
 cmp qword ptr [r12+0xc4e0], rax
 jle 0x140004551
 mov r13b, bl
 mov rcx, r12
 call sub_14000250c
 mov rax, qword ptr [r12]
 lea r8d, [rbx+0xf]
 lea rdx, [rsp+0x118]
 mov rcx, r12
 call qword ptr [rax+0x10]
 cmp eax, 0x10
 je 0x14000448f
 mov rcx, r12
 call sub_1400028e0
 nop 
 mov rcx, qword ptr [rsp+0x50]
 cmp rcx, r14
 je 0x140004488
 call sub_14002cfac

0x140004488:
 xor eax, eax
 jmp 0x140004dbd

0x14000448f:
 lea rdi, [r12+0x1030]
 lea rcx, [r12+0x7a3c]
 mov r9, qword ptr [r12+0x6830]
 add r9, 0x5030
 lea rax, [rsp+0x110]
 mov qword ptr [rsp+0x40], rax
 mov qword ptr [rsp+0x38], r14
 mov eax, dword ptr [r12+0x7a38]
 mov dword ptr [rsp+0x30], eax
 lea rax, [rsp+0x118]
 mov qword ptr [rsp+0x28], rax
 mov qword ptr [rsp+0x20], rcx
 xor edx, edx
 lea r8d, [rdx+5]
 mov rcx, rdi
 call sub_14000ac20
 cmp byte ptr [r12+0x7a34], r14b
 je 0x140004547
 mov rax, qword ptr [rsp+0x110]
 cmp rax, qword ptr [r12+0x7a4c]
 je 0x140004547
 lea rdx, [r12+0x26]
 mov ecx, 6
 call sub_140001454
 mov byte ptr [r12+0xc509], bl
 mov edx, 0xb
 lea rcx, [0x140050e70]
 call 0x14000af6c
 nop 
 mov rcx, qword ptr [rsp+0x50]
 cmp rcx, r14
 je 0x140004540
 call sub_14002cfac

0x140004540:
 xor eax, eax
 jmp 0x140004dbd

0x140004547:
 mov qword ptr [rsp+0x88], rdi
 jmp 0x140004554

0x140004551:
 mov r13b, r14b

0x140004554:
 mov edx, 7
 lea rcx, [rsp+0x50]
 call sub_1400165d4
 cmp rax, 7
 jae 0x140004588
 mov rcx, r12
 call sub_1400028e0
 nop 
 mov rcx, qword ptr [rsp+0x50]
 cmp rcx, r14
 je 0x140004581
 call sub_14002cfac

0x140004581:
 xor eax, eax
 jmp 0x140004dbd

0x140004588:
 mov byte ptr [r12+0x79d0], r14b
 lea rcx, [rsp+0x50]
 call 0x140016760
 mov dword ptr [r12+0x79c0], eax
 mov edx, 4
 lea rcx, [rsp+0x50]
 call 0x140016818
 mov edi, eax
 lea rcx, [rsp+0x50]
 call 0x1400167d0
 cmp rax, r14
 je 0x140004da3
 cmp edi, r14d
 je 0x140004da3
 lea ecx, [rax+rdi-3]
 lea esi, [rax+rdi+4]
 cmp ecx, r14d
 jl 0x140004d87
 cmp esi, 7
 jb 0x140004d87
 movsxd rdx, ecx
 lea rcx, [rsp+0x50]
 call sub_1400165d4
 mov edx, esi
 cmp qword ptr [rsp+0x78], rdx
 jae 0x14000461e
 mov rcx, r12
 call sub_1400028e0
 nop 
 mov rcx, qword ptr [rsp+0x50]
 cmp rcx, r14
 je 0x140004617
 call sub_14002cfac

0x140004617:
 xor eax, eax
 jmp 0x140004dbd

0x14000461e:
 lea rcx, [rsp+0x50]
 call sub_1400168f4
 mov edi, eax
 lea rcx, [rsp+0x50]
 call 0x1400167d0
 mov dword ptr [r12+0x79c4], eax
 lea rcx, [rsp+0x50]
 call 0x1400167d0
 mov dword ptr [r12+0x79c8], eax
 shr eax, 2
 and al, bl
 mov byte ptr [r12+0x79d0], al
 mov dword ptr [r12+0x79cc], esi
 mov eax, dword ptr [r12+0x79c4]
 mov dword ptr [r12+0x6854], eax
 cmp dword ptr [r12+0x79c0], edi
 setne r15b
 cmp r15b, r14b
 je 0x1400046da
 mov rcx, r12
 call 0x140002928
 mov byte ptr [r12+0xc508], bl
 mov edx, 3
 lea rcx, [0x140050e70]
 call 0x14000af6c
 cmp r13b, r14b
 je 0x1400046da
 lea rdx, [r12+0x26]
 mov r8, rdx
 mov ecx, 4
 call sub_1400014b8
 mov byte ptr [r12+0xc509], bl
 mov rcx, qword ptr [rsp+0x50]
 cmp rcx, r14
 je 0x1400046d3
 call sub_14002cfac

0x1400046d3:
 xor eax, eax
 jmp 0x140004dbd

0x1400046da:
 mov r13, r14
 test byte ptr [r12+0x79c8], bl
 je 0x140004720
 lea rcx, [rsp+0x50]
 call 0x1400167d0
 mov r13, rax
 mov ecx, dword ptr [r12+0x79cc]
 cmp rax, rcx
 jb 0x140004720
 mov rcx, r12
 call 0x140002928
 nop 
 mov rcx, qword ptr [rsp+0x50]
 cmp rcx, r14
 je 0x140004719
 call sub_14002cfac

0x140004719:
 xor eax, eax
 jmp 0x140004dbd

0x140004720:
 mov rdi, r14
 test byte ptr [r12+0x79c8], 2
 je 0x14000473b
 lea rcx, [rsp+0x50]
 call 0x1400167d0
 mov rdi, rax

0x14000473b:
 mov edx, dword ptr [r12+0x79cc]
 mov rcx, r12
 call sub_1400010f4
 mov edx, eax
 add rdx, rdi
 add rdx, qword ptr [r12+0xc4e0]
 mov qword ptr [r12+0xc4e8], rdx
 mov ecx, dword ptr [r12+0x79c4]
 cmp ecx, ebx
 je 0x140004bea
 cmp ecx, ebx
 jle 0x140004d40
 cmp ecx, 3
 jle 0x140004931
 cmp ecx, 4
 je 0x1400047db
 cmp ecx, 5
 jne 0x140004d40
 lea rcx, [r12+0x9d70]
 lea rdx, [r12+0x79c0]
 mov r8d, 0x14
 call 0x14002d490
 lea rcx, [rsp+0x50]
 call 0x1400167d0
 and al, bl
 mov byte ptr [r12+0x9d8c], al
 mov byte ptr [r12+0x9d8f], r14b
 mov byte ptr [r12+0x9d8d], r14b
 mov byte ptr [r12+0x9d8e], r14b
 jmp 0x140004d40

0x1400047db:
 lea rcx, [r12+0x7a20]
 lea rdx, [r12+0x79c0]
 mov r8d, 0x14
 call 0x14002d490
 lea rcx, [rsp+0x50]
 call 0x1400167d0
 cmp eax, r14d
 jbe 0x140004829
 lea rdx, [r12+0x26]
 mov rcx, r12
 call 0x14000295c
 nop 
 mov rcx, qword ptr [rsp+0x50]
 cmp rcx, r14
 je 0x140004822
 call sub_14002cfac

0x140004822:
 xor eax, eax
 jmp 0x140004dbd

0x140004829:
 lea rcx, [rsp+0x50]
 call 0x1400167d0
 and al, bl
 mov byte ptr [r12+0x7a34], al
 lea rcx, [rsp+0x50]
 call sub_140016708
 movzx edx, al
 mov dword ptr [r12+0x7a38], edx
 cmp edx, 0x18
 jbe 0x14000487b
 lea rdx, [r12+0x26]
 mov rcx, r12
 call 0x14000295c
 nop 
 mov rcx, qword ptr [rsp+0x50]
 cmp rcx, r14
 je 0x140004874
 call sub_14002cfac

0x140004874:
 xor eax, eax
 jmp 0x140004dbd

0x14000487b:
 lea rdx, [r12+0x7a3c]
 mov r8d, 0x10
 lea rcx, [rsp+0x50]
 call sub_140016840
 cmp byte ptr [r12+0x7a34], r14b
 je 0x140004924
 mov esi, 8
 mov r8, rsi
 lea rdx, [r12+0x7a4c]
 lea rcx, [rsp+0x50]
 call sub_140016840
 lea r8d, [rsi-4]
 lea rdx, [rsp+0x110]
 lea rcx, [rsp+0x50]
 call sub_140016840
 lea rcx, [rsp+0xa0]
 call sub_14001e8a0
 mov r8, rsi
 lea rdx, [r12+0x7a4c]
 lea rcx, [rsp+0xa0]
 call 0x14001eb2c
 lea rdx, [rsp+0x118]
 lea rcx, [rsp+0xa0]
 call 0x14001ebf0
 mov edx, dword ptr [rsp+0x110]
 cmp edx, dword ptr [rsp+0x118]
 sete al
 mov byte ptr [r12+0x7a34], al

0x140004924:
 mov byte ptr [r12+0xc4fc], bl
 jmp 0x140004d40

0x140004931:
 lea rax, [r12+0x7a58]
 lea rsi, [r12+0x9db0]
 cmp ecx, 2
 cmove rsi, rax
 xor edx, edx
 mov rcx, rsi
 call sub_14001194c
 mov rcx, rsi
 lea rdx, [r12+0x79c0]
 mov r8d, 0x14
 call 0x14002d490
 cmp dword ptr [r12+0x79c4], 2
 sete r14b
 mov byte ptr [rsi+0x1101], bl
 mov qword ptr [rsi+0x1058], rdi
 lea rcx, [rsp+0x50]
 call 0x1400167d0
 mov dword ptr [rsi+0x1094], eax
 lea rcx, [rsp+0x50]
 call 0x1400167d0
 mov qword ptr [rsi+0x1060], rax
 mov eax, dword ptr [rsi+0x1094]
 shr eax, 3
 and al, bl
 mov byte ptr [rsi+0x109a], al
 je 0x1400049c7
 movabs rax, 0x7fffffff7fffffff
 mov qword ptr [rsi+0x1060], rax

0x1400049c7:
 mov rax, qword ptr [rsi+0x1058]
 mov rcx, qword ptr [rsi+0x1060]
 cmp rax, rcx
 cmovg rcx, rax
 mov qword ptr [rsi+0x1068], rcx
 lea rcx, [rsp+0x50]
 call 0x1400167d0
 mov dword ptr [rsi+0x1c], eax
 test byte ptr [rsi+0x1094], 2
 je 0x140004a11
 lea rcx, [rsp+0x50]
 call 0x140016760
 mov edx, eax
 lea rcx, [rsi+0x1040]
 call sub_14001fedc

0x140004a11:
 xor ebp, ebp
 mov dword ptr [rsi+0x1070], ebp
 test byte ptr [rsi+0x1094], 4
 je 0x140004a3c
 mov dword ptr [rsi+0x1070], 2
 lea rcx, [rsp+0x50]
 call 0x140016760
 mov dword ptr [rsi+0x1074], eax

0x140004a3c:
 mov dword ptr [rsi+0x1108], ebp
 lea rcx, [rsp+0x50]
 call 0x1400167d0
 mov rdi, rax
 mov ecx, eax
 shr ecx, 7
 and cl, 7
 mov byte ptr [rsi+0x1a], cl
 mov cl, al
 and cl, 0x3f
 add cl, 0x32
 mov byte ptr [rsi+0x19], cl
 lea rcx, [rsp+0x50]
 call 0x1400167d0
 mov byte ptr [rsi+0x18], al
 lea rcx, [rsp+0x50]
 call 0x1400167d0
 mov r11, rax
 mov ecx, dword ptr [r12+0x79c8]
 shr ecx, 6
 and cl, bl
 mov byte ptr [rsi+0x1100], cl
 mov dword ptr [rsi+0x1104], 2
 cmp byte ptr [rsi+0x18], bl
 jne 0x140004aa9
 mov dword ptr [rsi+0x1104], ebx
 jmp 0x140004ab5

0x140004aa9:
 cmp byte ptr [rsi+0x18], bpl
 jne 0x140004ab5
 mov dword ptr [rsi+0x1104], ebp

0x140004ab5:
 mov ecx, dword ptr [rsi+0x8]
 mov eax, ecx
 shr eax, 3
 and al, bl
 mov byte ptr [rsi+0x1098], al
 mov eax, ecx
 shr eax, 4
 and al, bl
 mov byte ptr [rsi+0x1099], al
 shr ecx, 5
 and cl, bl
 mov byte ptr [rsi+0x1102], cl
 cmp r14b, bpl
 je 0x140004aec
 test dil, 0x40
 je 0x140004aec
 mov eax, ebx
 jmp 0x140004aee

0x140004aec:
 mov eax, ebp

0x140004aee:
 mov byte ptr [rsi+0x10f0], al
 mov dl, byte ptr [rsi+0x1094]
 and dl, bl
 mov byte ptr [rsi+0x10f1], dl
 shr edi, 0xa
 and edi, 0xf
 mov eax, 0x20000
 mov cl, dil
 shl rax, cl
 cmp dl, bpl
 cmovne rax, rbp
 mov qword ptr [rsi+0x10f8], rax
 mov al, byte ptr [rsi+0x109b]
 neg al
 sbb ecx, ecx
 and ecx, 5
 mov dword ptr [rsi+0x109c], ecx
 mov edi, 0x1fff
 cmp r11, rdi
 cmovb rdi, r11
 mov r8, rdi
 lea rdx, [rsp+0x140]
 lea rcx, [rsp+0x50]
 call sub_140016840
 mov byte ptr [rsp+rdi+0x140], bpl
 lea rbp, [rsi+0x20]
 mov r8d, 0x800
 mov rdx, rbp
 lea rcx, [rsp+0x140]
 call sub_1400212c0
 test r13, r13
 je 0x140004b8f
 mov r9, rsi
 mov r8, r13
 lea rdx, [rsp+0x50]
 mov rcx, r12
 call 0x140003a94

0x140004b8f:
 test r14b, r14b
 je 0x140004bac
 mov rdx, rbp
 mov rcx, r12
 call sub_140002360
 mov rdx, rsi
 mov rcx, r12
 call sub_1400023d4
 jmp 0x140004bc8

0x140004bac:
 lea rdi, [0x14003c700]
 mov rsi, rbp
 mov ecx, 4
 repe cmpsd dword ptr [rsi], dword ptr [rdi]
 jne 0x140004bc8
 mov byte ptr [r12+0xc4f6], bl

0x140004bc8:
 xor r14d, r14d
 cmp r15b, r14b
 je 0x140004d40
 lea rdx, [r12+0x26]
 mov r8, rbp
 lea ecx, [r14+0x1a]
 call sub_1400014b8
 jmp 0x140004d40

0x140004bea:
 lea rcx, [r12+0x79e0]
 call sub_140011928
 lea rcx, [r12+0x79e0]
 lea rdx, [r12+0x79c0]
 mov r8d, 0x14
 call 0x14002d490
 lea rcx, [rsp+0x50]
 call 0x1400167d0
 mov rdx, rax
 mov cl, al
 and cl, bl
 mov byte ptr [r12+0xc4f5], cl
 mov ecx, eax
 shr ecx, 2
 and cl, bl
 mov byte ptr [r12+0xc4f4], cl
 mov ecx, eax
 shr ecx, 4
 and cl, bl
 mov byte ptr [r12+0xc4f7], cl
 shr eax, 3
 and al, bl
 mov byte ptr [r12+0xc4fb], al
 mov byte ptr [r12+0xc4f8], r14b
 mov byte ptr [r12+0xc4fa], bl
 test dl, 2
 je 0x140004c7f
 lea rcx, [rsp+0x50]
 call 0x1400167d0
 mov dword ptr [r12+0xc51c], eax
 jmp 0x140004c87

0x140004c7f:
 mov dword ptr [r12+0xc51c], r14d

0x140004c87:
 cmp byte ptr [r12+0xc4f5], r14b
 je 0x140004c9b
 cmp dword ptr [r12+0xc51c], r14d
 je 0x140004c9e

0x140004c9b:
 mov ebx, r14d

0x140004c9e:
 mov byte ptr [r12+0xc4f9], bl
 cmp r13, r14
 je 0x140004cc3
 lea r9, [r12+0x79e0]
 mov r8, r13
 lea rdx, [rsp+0x50]
 mov rcx, r12
 call 0x140003a94

0x140004cc3:
 cmp byte ptr [r12+0x79fe], r14b
 je 0x140004d40
 cmp qword ptr [r12+0x7a00], r14
 jbe 0x140004d40
 mov rax, qword ptr [r12+0x6830]
 cmp dword ptr [rax+0x2018], r14d
 je 0x140004d40
 mov rsi, qword ptr [r12+0xc4e0]
 mov rbx, qword ptr [r12+0xc4e8]
 mov ebp, dword ptr [r12+0x6854]
 xor r8d, r8d
 mov rdx, r12
 lea rcx, [r12+0x6860]
 call sub_140014ffc
 mov rdx, qword ptr [r12+0x7a00]
 lea rcx, [r12+0x6860]
 call 0x14001534c
 mov qword ptr [r12+0xc4e0], rsi
 mov qword ptr [r12+0xc4e8], rbx
 mov dword ptr [r12+0x6854], ebp

0x140004d40:
 mov rax, qword ptr [r12+0xc4e0]
 cmp qword ptr [r12+0xc4e8], rax
 jg 0x140004d6e
 mov rcx, r12
 call 0x140002928
 nop 
 mov rcx, qword ptr [rsp+0x50]
 cmp rcx, r14
 je 0x140004d6a
 call sub_14002cfac

0x140004d6a:
 xor eax, eax
 jmp 0x140004dbd

0x140004d6e:
 mov rdi, qword ptr [rsp+0x78]
 mov rcx, qword ptr [rsp+0x50]
 cmp rcx, r14
 je 0x140004d82
 call sub_14002cfac

0x140004d82:
 mov rax, rdi
 jmp 0x140004dbd

0x140004d87:
 mov rcx, r12
 call 0x140002928
 nop 
 mov rcx, qword ptr [rsp+0x50]
 cmp rcx, r14
 je 0x140004d9f
 call sub_14002cfac

0x140004d9f:
 xor eax, eax
 jmp 0x140004dbd

0x140004da3:
 mov rcx, r12
 call 0x140002928
 nop 
 mov rcx, qword ptr [rsp+0x50]
 cmp rcx, r14
 je 0x140004dbb
 call sub_14002cfac

0x140004dbb:
 xor eax, eax

0x140004dbd:
 mov rcx, qword ptr [rsp+0x2140]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x2150]
 mov rbx, qword ptr [r11+0x38]
 mov rbp, qword ptr [r11+0x40]
 mov rsi, qword ptr [r11+0x48]
 mov rsp, r11
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140004df0
; --------------------------------------------------------------------------
sub_140004df0   proc \
 arg_1 : qword ; [rsp+0x30]

 push rbx
 sub rsp, 0x20
 cmp byte ptr [rcx+0xc509], 0x0
 mov rbx, rcx
 je 0x140004e06

0x140004e02:
 xor eax, eax
 jmp 0x140004e70

0x140004e06:
 mov rax, qword ptr [rcx]
 call qword ptr [rax+0x20]
 mov ecx, dword ptr [rbx+0xc4f0]
 sub ecx, 0x1
 mov qword ptr [rbx+0xc4e0], rax
 je 0x140004e43
 sub ecx, 0x1
 je 0x140004e39
 cmp ecx, 0x1
 jne 0x140004e32
 mov rcx, rbx
 call 0x1400043bc
 jmp 0x140004e4b

0x140004e32:
 mov r11, qword ptr [arg_1]
 jmp 0x140004e4e

0x140004e39:
 mov rcx, rbx
 call 0x140002988
 jmp 0x140004e4b

0x140004e43:
 mov rcx, rbx
 call 0x1400025a8

0x140004e4b:
 mov r11, rax

0x140004e4e:
 test r11, r11
 je 0x140004e6d
 mov rax, qword ptr [rbx+0xc4e0]
 cmp qword ptr [rbx+0xc4e8], rax
 jg 0x140004e6d
 mov rcx, rbx
 call 0x140002928
 jmp 0x140004e02

0x140004e6d:
 mov rax, r11

0x140004e70:
 add rsp, 0x20
 pop rbx
 ret 
sub_140004df0   endp
 
 int3 
 int3 

0x140004e78:
 mov qword ptr [rsp+0x8], rbx
 mov qword ptr [rsp+0x10], rbp
 mov qword ptr [rsp+0x18], rsi
 push rdi
 sub rsp, 0x20
 mov ebp, edx
 mov rbx, rcx
 xor esi, esi
 jmp 0x140004ec4

0x140004e95:
 cmp ebp, 5
 je 0x140004ea3
 cmp dword ptr [rbx+0x6854], 5
 je 0x140004ed1

0x140004ea3:
 inc rsi
 test sil, 0x7f
 jne 0x140004eb1
 call 0x14001f5e0

0x140004eb1:
 cmp dword ptr [rbx+0x6854], ebp
 je 0x140004ee8
 mov rcx, rbx
 call 0x1400010e0
 mov rcx, rbx

0x140004ec4:
 call sub_140004df0
 mov rdi, rax
 test rax, rax
 jne 0x140004e95

0x140004ed1:
 xor eax, eax

0x140004ed3:
 mov rbx, qword ptr [rsp+0x30]
 mov rbp, qword ptr [rsp+0x38]
 mov rsi, qword ptr [rsp+0x40]
 add rsp, 0x20
 pop rdi
 ret 

0x140004ee8:
 mov rax, rdi
 jmp 0x140004ed3
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140004ef0
; --------------------------------------------------------------------------
sub_140004ef0   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rdi, rdx
 mov rbx, rcx

0x140004f00:
 call sub_140004df0
 test rax, rax
 je 0x140004f51
 mov r8d, dword ptr [rbx+0x6854]
 cmp r8d, 5
 je 0x140004f51
 cmp r8d, 3
 jne 0x140004f44
 lea rcx, [rbx+0x9dd0]
 mov r8, rdi
 sub r8, rcx

0x140004f2a:
 movzx edx, word ptr [rcx]
 movzx r9d, word ptr [rcx+r8]
 sub edx, r9d
 jne 0x140004f40
 add rcx, 2
 test r9d, r9d
 jne 0x140004f2a

0x140004f40:
 test edx, edx
 je 0x140004f53

0x140004f44:
 mov rcx, rbx
 call 0x1400010e0
 mov rcx, rbx
 jmp 0x140004f00

0x140004f51:
 xor eax, eax

0x140004f53:
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_140004ef0   endp
 
 int3 
 int3 

0x140004f60:
 mov rax, rsp
 sub rsp, 0x138
 movaps xmmword ptr [rax-0x18], xmm6
 movaps xmmword ptr [rax-0x28], xmm7
 movaps xmmword ptr [rax-0x38], xmm8
 movaps xmmword ptr [rax-0x48], xmm9
 movaps xmmword ptr [rax-0x58], xmm10
 movaps xmmword ptr [rax-0x68], xmm11
 movaps xmmword ptr [rax-0x78], xmm12
 movaps xmmword ptr [rax-0x88], xmm13
 movaps xmmword ptr [rax-0x98], xmm14
 movaps xmmword ptr [rax-0xa8], xmm15
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x80], rax
 movdqa xmm11, xmmword ptr [0x140046de0]
 movd xmm0, dword ptr [rdx+0x10]
 mov r8, qword ptr [rcx+0xf8]
 mov rax, qword ptr [rcx+0x100]
 movdqa xmm2, xmmword ptr [r8+0x10]
 movdqa xmm13, xmmword ptr [r8]
 movd xmm9, dword ptr [rdx+0x14]
 movd xmm7, dword ptr [rdx]
 movd xmm12, dword ptr [rdx+0x8]
 movd xmm8, dword ptr [rdx+0x18]
 movdqa xmm4, xmmword ptr [0x140046e00]
 movd xmm5, dword ptr [rdx+0x1c]
 movdqa xmm3, xmmword ptr [0x140046e10]
 pxor xmm4, xmmword ptr [rax]
 movd xmm15, dword ptr [rdx+0xc]
 movd xmm10, dword ptr [rdx+0x20]
 movd xmm14, dword ptr [rdx+0x28]
 movdqa xmmword ptr [rsp+0x70], xmm2
 movdqa xmmword ptr [rsp+0x50], xmm13
 movdqa xmm6, xmm7
 punpckldq xmm6, xmm0
 movdqa xmm1, xmm12
 movdqa xmm0, xmm6
 movdqa xmmword ptr [rsp+0x60], xmm9
 punpckldq xmm1, xmm8
 punpckldq xmm0, xmm1
 paddd xmm13, xmm0
 movdqa xmm0, xmm2
 movdqa xmmword ptr [rsp+0x10], xmm1
 paddd xmm13, xmm2
 pxor xmm4, xmm13
 pshufb xmm4, xmm11
 paddd xmm3, xmm4
 pxor xmm0, xmm3
 movdqa xmm2, xmm0
 pslld xmm0, 0x14
 psrld xmm2, 0xc
 pxor xmm2, xmm0
 movd xmm0, dword ptr [rdx+4]
 movdqa xmm1, xmm0
 movdqa xmm0, xmm15
 punpckldq xmm0, xmm5
 punpckldq xmm1, xmm9
 movd xmm9, dword ptr [rdx+0x38]
 punpckldq xmm1, xmm0
 paddd xmm13, xmm1
 paddd xmm13, xmm2
 movdqa xmm1, xmm10
 pxor xmm4, xmm13
 pshufb xmm4, xmmword ptr [0x140046df0]
 paddd xmm3, xmm4
 pshufd xmm4, xmm4, 0x93
 pxor xmm2, xmm3
 pshufd xmm5, xmm3, 0x4e
 movdqa xmm0, xmm2
 pslld xmm2, 0x19
 psrld xmm0, 7
 pxor xmm0, xmm2
 pshufd xmm2, xmm0, 0x39
 movd xmm0, dword ptr [rdx+0x30]
 punpckldq xmm1, xmm0
 movdqa xmm0, xmm14
 punpckldq xmm0, xmm9
 punpckldq xmm1, xmm0
 paddd xmm13, xmm1
 movd xmm0, dword ptr [rdx+0x2c]
 paddd xmm13, xmm2
 pxor xmm4, xmm13
 pshufb xmm4, xmm11
 movdqa xmmword ptr [rsp], xmm13
 movd xmm13, dword ptr [rdx+0x34]
 paddd xmm5, xmm4
 movd xmm11, dword ptr [rdx+0x24]
 pxor xmm2, xmm5
 movdqa xmm3, xmm2
 pslld xmm2, 0x14
 psrld xmm3, 0xc
 pxor xmm3, xmm2
 movdqa xmm2, xmm11
 punpckldq xmm2, xmm13
 movdqa xmmword ptr [rsp+0x20], xmm2
 movd xmm1, dword ptr [rdx+0x3c]
 movdqa xmmword ptr [rsp+0x40], xmm0
 punpckldq xmm9, xmm11
 punpckldq xmm0, xmm1
 movdqa xmm1, xmm2
 punpckldq xmm1, xmm0
 movdqa xmm0, xmmword ptr [rsp]
 paddd xmm0, xmm1
 movdqa xmm1, xmm9
 paddd xmm0, xmm3
 pxor xmm4, xmm0
 pshufb xmm4, xmmword ptr [0x140046df0]
 movdqa xmmword ptr [rsp], xmm0
 paddd xmm5, xmm4
 pshufd xmm4, xmm4, 0x39
 pxor xmm3, xmm5
 pshufd xmm5, xmm5, 0x4e
 movdqa xmm0, xmm3
 psrld xmm0, 7
 pslld xmm3, 0x19
 pxor xmm0, xmm3
 pshufd xmm2, xmm0, 0x93
 movd xmm0, dword ptr [rdx+0x10]
 punpckldq xmm0, xmm13
 punpckldq xmm1, xmm0
 movdqa xmm0, xmmword ptr [rsp]
 paddd xmm0, xmm1
 movdqa xmm1, xmm14
 paddd xmm0, xmm2
 pxor xmm4, xmm0
 pshufb xmm4, xmmword ptr [0x140046de0]
 movdqa xmmword ptr [rsp], xmm0
 movd xmm0, dword ptr [rdx+0x3c]
 punpckldq xmm1, xmm0
 paddd xmm5, xmm4
 movdqa xmm0, xmm10
 punpckldq xmm0, xmm8
 pxor xmm2, xmm5
 punpckldq xmm1, xmm0
 movdqa xmm3, xmm2
 movdqa xmm0, xmmword ptr [rsp]
 paddd xmm0, xmm1
 psrld xmm3, 0xc
 pslld xmm2, 0x14
 pxor xmm3, xmm2
 paddd xmm0, xmm3
 pxor xmm4, xmm0
 pshufb xmm4, xmmword ptr [0x140046df0]
 movdqa xmmword ptr [rsp], xmm0
 paddd xmm5, xmm4
 pshufd xmm4, xmm4, 0x93
 pxor xmm3, xmm5
 pshufd xmm5, xmm5, 0x4e
 movdqa xmm0, xmm3
 psrld xmm0, 7
 pslld xmm3, 0x19
 pxor xmm0, xmm3
 pshufd xmm2, xmm0, 0x39
 movd xmm3, dword ptr [rdx+0x2c]
 movd xmm0, dword ptr [rdx+4]
 movdqa xmm1, xmm0
 movdqa xmm0, xmm7
 punpckldq xmm1, xmm3
 movd xmm3, dword ptr [rdx+0x14]
 punpckldq xmm0, xmm3
 punpckldq xmm1, xmm0
 movdqa xmm0, xmmword ptr [rsp]
 paddd xmm0, xmm1
 movd xmm1, dword ptr [rdx+0x30]
 paddd xmm0, xmm2
 pxor xmm4, xmm0
 pshufb xmm4, xmmword ptr [0x140046de0]
 movdqa xmmword ptr [rsp], xmm0
 movd xmm0, dword ptr [rdx+0x1c]
 paddd xmm5, xmm4
 punpckldq xmm1, xmm0
 pxor xmm2, xmm5
 movdqa xmm3, xmm2
 pslld xmm2, 0x14
 psrld xmm3, 0xc
 pxor xmm3, xmm2
 movdqa xmm0, xmm12
 punpckldq xmm0, xmm15
 punpckldq xmm1, xmm0
 movdqa xmm0, xmmword ptr [rsp]
 paddd xmm0, xmm1
 paddd xmm0, xmm3
 pxor xmm4, xmm0
 pshufb xmm4, xmmword ptr [0x140046df0]
 movdqa xmmword ptr [rsp], xmm0
 paddd xmm5, xmm4
 pshufd xmm4, xmm4, 0x39
 pxor xmm3, xmm5
 pshufd xmm5, xmm5, 0x4e
 movdqa xmm0, xmm3
 psrld xmm0, 7
 pslld xmm3, 0x19
 pxor xmm0, xmm3
 pshufd xmm2, xmm0, 0x93
 movd xmm3, dword ptr [rdx+0x3c]
 movd xmm0, dword ptr [rdx+0x2c]
 movdqa xmm1, xmm0
 movd xmm0, dword ptr [rdx+0x14]
 punpckldq xmm1, xmm0
 movd xmm0, dword ptr [rdx+0x30]
 punpckldq xmm0, xmm3
 punpckldq xmm1, xmm0
 movdqa xmm0, xmmword ptr [rsp]
 paddd xmm0, xmm1
 movdqa xmm1, xmm10
 movdqa xmm10, xmm14
 paddd xmm0, xmm2
 punpckldq xmm1, xmm12
 movdqa xmmword ptr [rsp], xmm0
 pxor xmm4, xmm0
 movdqa xmm0, xmm7
 movdqa xmm7, xmmword ptr [0x140046df0]
 pshufb xmm4, xmmword ptr [0x140046de0]
 punpckldq xmm0, xmm13
 paddd xmm5, xmm4
 punpckldq xmm1, xmm0
 pxor xmm2, xmm5
 movdqa xmm0, xmmword ptr [rsp]
 movdqa xmm3, xmm2
 paddd xmm0, xmm1
 psrld xmm3, 0xc
 pslld xmm2, 0x14
 pxor xmm3, xmm2
 paddd xmm0, xmm3
 pxor xmm4, xmm0
 pshufb xmm4, xmm7
 movdqa xmmword ptr [rsp], xmm0
 paddd xmm5, xmm4
 pshufd xmm4, xmm4, 0x93
 pxor xmm3, xmm5
 pshufd xmm5, xmm5, 0x4e
 movdqa xmm0, xmm3
 psrld xmm0, 7
 pslld xmm3, 0x19
 pxor xmm0, xmm3
 pshufd xmm2, xmm0, 0x39
 movd xmm0, dword ptr [rdx+0x1c]
 punpckldq xmm10, xmm0
 movdqa xmm0, xmm15
 punpckldq xmm0, xmm11
 movdqa xmm1, xmm10
 punpckldq xmm1, xmm0
 movdqa xmm0, xmmword ptr [rsp]
 paddd xmm0, xmm1
 paddd xmm0, xmm2
 pxor xmm4, xmm0
 pshufb xmm4, xmmword ptr [0x140046de0]
 movdqa xmmword ptr [rsp], xmm0
 movd xmm0, dword ptr [rdx+0x38]
 paddd xmm5, xmm4
 movdqa xmm1, xmm0
 movd xmm0, dword ptr [rdx+4]
 pxor xmm2, xmm5
 movdqa xmm3, xmm2
 pslld xmm2, 0x14
 psrld xmm3, 0xc
 pxor xmm3, xmm2
 punpckldq xmm1, xmm0
 movd xmm2, dword ptr [rdx+0x10]
 movdqa xmm0, xmm8
 movdqa xmm8, xmmword ptr [rsp]
 punpckldq xmm0, xmm2
 punpckldq xmm1, xmm0
 paddd xmm8, xmm1
 paddd xmm8, xmm3
 pxor xmm4, xmm8
 pshufb xmm4, xmm7
 paddd xmm5, xmm4
 movdqa xmm7, xmm15
 pxor xmm3, xmm5
 movdqa xmm0, xmm3
 pslld xmm3, 0x19
 psrld xmm0, 7
 pxor xmm0, xmm3
 pshufd xmm3, xmm4, 0x39
 pshufd xmm4, xmm5, 0x4e
 movd xmm5, dword ptr [rdx+0x38]
 pshufd xmm1, xmm0, 0x93
 movd xmm0, dword ptr [rdx+0x2c]
 punpckldq xmm7, xmm0
 movd xmm0, dword ptr [rdx+0x1c]
 punpckldq xmm0, xmm13
 punpckldq xmm0, xmm7
 paddd xmm8, xmm0
 paddd xmm8, xmm1
 movd xmm0, dword ptr [rdx+0x30]
 pxor xmm3, xmm8
 pshufb xmm3, xmmword ptr [0x140046de0]
 paddd xmm4, xmm3
 pxor xmm1, xmm4
 movdqa xmm2, xmm1
 pslld xmm1, 0x14
 psrld xmm2, 0xc
 pxor xmm2, xmm1
 movdqa xmm1, xmm11
 punpckldq xmm1, xmm0
 movd xmm0, dword ptr [rdx+4]
 punpckldq xmm0, xmm5
 punpckldq xmm1, xmm0
 paddd xmm8, xmm1
 paddd xmm8, xmm2
 movd xmm1, dword ptr [rdx+0x3c]
 pxor xmm3, xmm8
 pshufb xmm3, xmmword ptr [0x140046df0]
 movdqa xmmword ptr [rsp], xmm8
 movdqa xmm8, xmm12
 paddd xmm4, xmm3
 pshufd xmm5, xmm3, 0x93
 pxor xmm2, xmm4
 pshufd xmm4, xmm4, 0x4e
 movdqa xmm0, xmm2
 psrld xmm0, 7
 pslld xmm2, 0x19
 pxor xmm0, xmm2
 pshufd xmm2, xmm0, 0x39
 movd xmm0, dword ptr [rdx+0x10]
 punpckldq xmm8, xmm0
 movd xmm0, dword ptr [rdx+0x14]
 punpckldq xmm0, xmm1
 movdqa xmm1, xmm8
 punpckldq xmm1, xmm0
 movdqa xmm0, xmmword ptr [rsp]
 paddd xmm0, xmm1
 movd xmm1, dword ptr [rdx+0x18]
 paddd xmm0, xmm2
 pxor xmm5, xmm0
 pshufb xmm5, xmmword ptr [0x140046de0]
 movdqa xmmword ptr [rsp], xmm0
 movd xmm0, dword ptr [rdx]
 paddd xmm4, xmm5
 punpckldq xmm1, xmm0
 movdqa xmm0, xmm14
 pxor xmm2, xmm4
 movdqa xmm3, xmm2
 pslld xmm2, 0x14
 psrld xmm3, 0xc
 pxor xmm3, xmm2
 movd xmm2, dword ptr [rdx+0x20]
 punpckldq xmm0, xmm2
 punpckldq xmm1, xmm0
 movdqa xmm0, xmmword ptr [rsp]
 paddd xmm0, xmm1
 movdqa xmm1, xmm11
 paddd xmm0, xmm3
 punpckldq xmm1, xmm12
 pxor xmm5, xmm0
 movdqa xmmword ptr [rsp], xmm0
 pshufb xmm5, xmmword ptr [0x140046df0]
 paddd xmm4, xmm5
 pxor xmm3, xmm4
 pshufd xmm4, xmm4, 0x4e
 movdqa xmm0, xmm3
 psrld xmm0, 7
 pslld xmm3, 0x19
 pxor xmm0, xmm3
 pshufd xmm3, xmm5, 0x39
 movdqa xmm5, xmmword ptr [rsp]
 pshufd xmm2, xmm0, 0x93
 movd xmm0, dword ptr [rdx+0x14]
 punpckldq xmm0, xmm14
 punpckldq xmm1, xmm0
 paddd xmm5, xmm1
 movd xmm0, dword ptr [rdx+0x1c]
 paddd xmm5, xmm2
 pxor xmm3, xmm5
 pshufb xmm3, xmmword ptr [0x140046de0]
 paddd xmm4, xmm3
 pxor xmm2, xmm4
 movdqa xmm1, xmm2
 pslld xmm2, 0x14
 psrld xmm1, 0xc
 pxor xmm1, xmm2
 movd xmm2, dword ptr [rdx+0x3c]
 punpckldq xmm0, xmm2
 punpckldq xmm6, xmm0
 paddd xmm5, xmm6
 paddd xmm5, xmm1
 movd xmm6, dword ptr [rdx+0x18]
 pxor xmm3, xmm5
 pshufb xmm3, xmmword ptr [0x140046df0]
 movdqa xmmword ptr [rsp], xmm5
 paddd xmm4, xmm3
 pshufd xmm5, xmm3, 0x93
 pxor xmm1, xmm4
 pshufd xmm4, xmm4, 0x4e
 movdqa xmm0, xmm1
 psrld xmm0, 7
 pslld xmm1, 0x19
 pxor xmm0, xmm1
 pshufd xmm2, xmm0, 0x39
 movd xmm0, dword ptr [rdx+0x38]
 movdqa xmm1, xmm0
 movd xmm0, dword ptr [rdx+0x2c]
 punpckldq xmm1, xmm6
 punpckldq xmm0, xmm15
 punpckldq xmm1, xmm0
 movdqa xmm0, xmmword ptr [rsp]
 paddd xmm0, xmm1
 paddd xmm0, xmm2
 pxor xmm5, xmm0
 pshufb xmm5, xmmword ptr [0x140046de0]
 movdqa xmmword ptr [rsp], xmm0
 movd xmm0, dword ptr [rdx+4]
 paddd xmm4, xmm5
 movdqa xmm1, xmm0
 movd xmm0, dword ptr [rdx+0x30]
 pxor xmm2, xmm4
 punpckldq xmm0, xmm13
 movdqa xmm3, xmm2
 pslld xmm2, 0x14
 psrld xmm3, 0xc
 pxor xmm3, xmm2
 movd xmm2, dword ptr [rdx+0x20]
 punpckldq xmm1, xmm2
 punpckldq xmm1, xmm0
 movdqa xmm0, xmmword ptr [rsp]
 paddd xmm0, xmm1
 paddd xmm0, xmm3
 movdqa xmmword ptr [rsp], xmm0
 pxor xmm5, xmm0
 punpckldq xmm6, xmm2
 movd xmm2, dword ptr [rdx]
 pshufb xmm5, xmmword ptr [0x140046df0]
 paddd xmm4, xmm5
 pxor xmm3, xmm4
 movdqa xmm0, xmm3
 pslld xmm3, 0x19
 psrld xmm0, 7
 pxor xmm0, xmm3
 pshufd xmm3, xmm5, 0x39
 pshufd xmm5, xmm4, 0x4e
 movdqa xmm4, xmmword ptr [rsp]
 pshufd xmm1, xmm0, 0x93
 movdqa xmm0, xmm12
 punpckldq xmm0, xmm2
 punpckldq xmm0, xmm6
 paddd xmm4, xmm0
 paddd xmm4, xmm1
 movd xmm0, dword ptr [rdx+0x30]
 pxor xmm3, xmm4
 pshufb xmm3, xmmword ptr [0x140046de0]
 paddd xmm5, xmm3
 pxor xmm1, xmm5
 movdqa xmm2, xmm1
 pslld xmm1, 0x14
 psrld xmm2, 0xc
 pxor xmm2, xmm1
 movdqa xmm1, xmm0
 movd xmm0, dword ptr [rdx+0x2c]
 punpckldq xmm1, xmm0
 movdqa xmm0, xmm14
 punpckldq xmm0, xmm15
 punpckldq xmm1, xmm0
 paddd xmm4, xmm1
 paddd xmm4, xmm2
 pxor xmm3, xmm4
 pshufb xmm3, xmmword ptr [0x140046df0]
 movdqa xmmword ptr [rsp], xmm4
 paddd xmm5, xmm3
 pshufd xmm4, xmm3, 0x93
 movd xmm3, dword ptr [rdx+4]
 pxor xmm2, xmm5
 pshufd xmm5, xmm5, 0x4e
 movdqa xmm0, xmm2
 psrld xmm0, 7
 pslld xmm2, 0x19
 pxor xmm0, xmm2
 pshufd xmm2, xmm0, 0x39
 movd xmm0, dword ptr [rdx+0x10]
 movdqa xmm1, xmm0
 movd xmm0, dword ptr [rdx+0x3c]
 punpckldq xmm1, xmm0
 movd xmm0, dword ptr [rdx+0x1c]
 punpckldq xmm0, xmm3
 punpckldq xmm1, xmm0
 movdqa xmm0, xmmword ptr [rsp]
 paddd xmm0, xmm1
 movdqa xmm1, xmm13
 paddd xmm0, xmm2
 pxor xmm4, xmm0
 pshufb xmm4, xmmword ptr [0x140046de0]
 movdqa xmmword ptr [rsp], xmm0
 movd xmm0, dword ptr [rdx+0x38]
 punpckldq xmm1, xmm0
 paddd xmm5, xmm4
 movd xmm0, dword ptr [rdx+0x14]
 punpckldq xmm0, xmm11
 pxor xmm2, xmm5
 punpckldq xmm1, xmm0
 movdqa xmm3, xmm2
 movdqa xmm0, xmmword ptr [rsp]
 psrld xmm3, 0xc
 pslld xmm2, 0x14
 paddd xmm0, xmm1
 pxor xmm3, xmm2
 paddd xmm0, xmm3
 pxor xmm4, xmm0
 pshufb xmm4, xmmword ptr [0x140046df0]
 movdqa xmmword ptr [rsp], xmm0
 paddd xmm5, xmm4
 pxor xmm3, xmm5
 pshufd xmm4, xmm4, 0x39
 pshufd xmm5, xmm5, 0x4e
 movdqa xmm0, xmm3
 psrld xmm0, 7
 pslld xmm3, 0x19
 pxor xmm0, xmm3
 pshufd xmm2, xmm0, 0x93
 movd xmm3, dword ptr [rdx+0x10]
 movd xmm0, dword ptr [rdx+0x30]
 movdqa xmm1, xmm0
 movd xmm0, dword ptr [rdx+0x38]
 punpckldq xmm1, xmm0
 movd xmm0, dword ptr [rdx+4]
 punpckldq xmm0, xmm3
 punpckldq xmm1, xmm0
 movdqa xmm0, xmmword ptr [rsp]
 paddd xmm0, xmm1
 paddd xmm0, xmm2
 pxor xmm4, xmm0
 pshufb xmm4, xmmword ptr [0x140046de0]
 movdqa xmmword ptr [rsp], xmm0
 movd xmm0, dword ptr [rdx+0x14]
 paddd xmm5, xmm4
 movdqa xmm1, xmm0
 movd xmm0, dword ptr [rdx+0x3c]
 pxor xmm2, xmm5
 punpckldq xmm0, xmm14
 punpckldq xmm1, xmm13
 movdqa xmm3, xmm2
 punpckldq xmm1, xmm0
 pslld xmm2, 0x14
 psrld xmm3, 0xc
 pxor xmm3, xmm2
 movdqa xmm2, xmmword ptr [rsp]
 paddd xmm2, xmm1
 paddd xmm2, xmm3
 pxor xmm4, xmm2
 pshufb xmm4, xmmword ptr [0x140046df0]
 paddd xmm5, xmm4
 pxor xmm3, xmm5
 movdqa xmm0, xmm3
 pslld xmm3, 0x19
 psrld xmm0, 7
 pxor xmm0, xmm3
 pshufd xmm3, xmm4, 0x93
 pshufd xmm4, xmm5, 0x4e
 pshufd xmm1, xmm0, 0x39
 movd xmm0, dword ptr [rdx]
 punpckldq xmm0, xmm11
 punpckldq xmm0, xmm6
 paddd xmm2, xmm0
 movd xmm6, dword ptr [rdx+0x1c]
 movdqa xmm0, xmm6
 paddd xmm2, xmm1
 pxor xmm3, xmm2
 punpckldq xmm0, xmm12
 movdqa xmmword ptr [rsp], xmm2
 pshufb xmm3, xmmword ptr [0x140046de0]
 punpckldq xmm0, xmm7
 movdqa xmm7, xmmword ptr [0x140046df0]
 paddd xmm4, xmm3
 pxor xmm1, xmm4
 movdqa xmm2, xmm1
 pslld xmm1, 0x14
 psrld xmm2, 0xc
 pxor xmm2, xmm1
 movdqa xmm1, xmmword ptr [rsp]
 paddd xmm1, xmm0
 paddd xmm1, xmm2
 pxor xmm3, xmm1
 pshufb xmm3, xmm7
 movdqa xmmword ptr [rsp], xmm1
 paddd xmm4, xmm3
 pshufd xmm5, xmm3, 0x39
 pxor xmm2, xmm4
 pshufd xmm3, xmm4, 0x4e
 movdqa xmm0, xmm2
 psrld xmm0, 7
 pslld xmm2, 0x19
 pxor xmm0, xmm2
 movdqa xmm4, xmmword ptr [rsp]
 pshufd xmm2, xmm0, 0x93
 movd xmm0, dword ptr [rdx+0x30]
 movdqa xmm1, xmm13
 punpckldq xmm1, xmm0
 movdqa xmm0, xmm6
 movdqa xmm6, xmmword ptr [0x140046de0]
 punpckldq xmm0, xmm15
 punpckldq xmm1, xmm0
 movd xmm0, dword ptr [rdx+0x2c]
 paddd xmm4, xmm1
 paddd xmm4, xmm2
 pxor xmm5, xmm4
 pshufb xmm5, xmm6
 paddd xmm3, xmm5
 pxor xmm2, xmm3
 movdqa xmm1, xmm2
 pslld xmm2, 0x14
 psrld xmm1, 0xc
 pxor xmm1, xmm2
 movd xmm2, dword ptr [rdx+4]
 punpckldq xmm0, xmm2
 punpckldq xmm0, xmm9
 paddd xmm4, xmm0
 movd xmm9, dword ptr [rdx+0x3c]
 paddd xmm4, xmm1
 pxor xmm5, xmm4
 pshufb xmm5, xmm7
 movdqa xmmword ptr [rsp], xmm4
 movd xmm7, dword ptr [rdx+0x20]
 paddd xmm3, xmm5
 pshufd xmm4, xmm5, 0x93
 pxor xmm1, xmm3
 pshufd xmm5, xmm3, 0x4e
 movdqa xmm0, xmm1
 psrld xmm0, 7
 pslld xmm1, 0x19
 pxor xmm0, xmm1
 pshufd xmm2, xmm0, 0x39
 movd xmm0, dword ptr [rdx+0x14]
 movdqa xmm1, xmm0
 movdqa xmm0, xmm9
 punpckldq xmm0, xmm12
 movdqa xmm12, xmmword ptr [rsp]
 punpckldq xmm1, xmm7
 punpckldq xmm1, xmm0
 movd xmm0, dword ptr [rdx+0x10]
 paddd xmm12, xmm1
 paddd xmm12, xmm2
 punpckldq xmm0, xmm14
 pxor xmm4, xmm12
 pshufb xmm4, xmm6
 paddd xmm5, xmm4
 movd xmm6, dword ptr [rdx+0x18]
 pxor xmm2, xmm5
 movdqa xmm3, xmm2
 pslld xmm2, 0x14
 psrld xmm3, 0xc
 pxor xmm3, xmm2
 movd xmm2, dword ptr [rdx]
 movdqa xmm1, xmm2
 punpckldq xmm1, xmm6
 punpckldq xmm1, xmm0
 paddd xmm12, xmm1
 paddd xmm12, xmm3
 pxor xmm4, xmm12
 pshufb xmm4, xmmword ptr [0x140046df0]
 movdqa xmmword ptr [rsp], xmm12
 movdqa xmm12, xmmword ptr [rsp+0x40]
 paddd xmm5, xmm4
 pxor xmm3, xmm5
 movdqa xmm0, xmm3
 pslld xmm3, 0x19
 psrld xmm0, 7
 pxor xmm0, xmm3
 pshufd xmm3, xmm4, 0x39
 pshufd xmm4, xmm5, 0x4e
 pshufd xmm1, xmm0, 0x93
 movd xmm0, dword ptr [rdx+0x38]
 punpckldq xmm0, xmm2
 movdqa xmmword ptr [rsp+0x30], xmm0
 movdqa xmm5, xmmword ptr [rsp]
 punpckldq xmm13, xmm14
 punpckldq xmm6, xmm12
 punpckldq xmm6, xmm0
 punpckldq xmm11, xmm7
 punpckldq xmm9, xmm15
 movdqa xmm15, xmmword ptr [0x140046df0]
 movdqa xmm0, xmm9
 punpckldq xmm0, xmm11
 paddd xmm5, xmm6
 movd xmm11, dword ptr [rdx+0x30]
 movdqa xmm6, xmmword ptr [rsp+0x60]
 paddd xmm5, xmm1
 pxor xmm3, xmm5
 paddd xmm5, xmm0
 pshufb xmm3, xmmword ptr [0x140046de0]
 paddd xmm4, xmm3
 pxor xmm1, xmm4
 movdqa xmm2, xmm1
 pslld xmm1, 0x14
 psrld xmm2, 0xc
 pxor xmm2, xmm1
 paddd xmm5, xmm2
 pxor xmm3, xmm5
 pshufb xmm3, xmm15
 movdqa xmmword ptr [rsp], xmm5
 movd xmm5, dword ptr [rdx+4]
 paddd xmm4, xmm3
 pshufd xmm3, xmm3, 0x93
 punpckldq xmm7, xmm5
 movdqa xmm14, xmmword ptr [rsp]
 pxor xmm2, xmm4
 pshufd xmm4, xmm4, 0x4e
 punpckldq xmm10, xmm7
 movdqa xmm0, xmm2
 psrld xmm0, 7
 pslld xmm2, 0x19
 pxor xmm0, xmm2
 pshufd xmm1, xmm0, 0x39
 movdqa xmm0, xmm11
 punpckldq xmm0, xmm5
 punpckldq xmm0, xmm13
 paddd xmm14, xmm0
 movdqa xmm13, xmmword ptr [0x140046de0]
 movd xmm0, dword ptr [rdx+0x1c]
 paddd xmm14, xmm1
 pxor xmm3, xmm14
 punpckldq xmm0, xmm6
 pshufb xmm3, xmm13
 punpckldq xmm8, xmm0
 paddd xmm4, xmm3
 paddd xmm14, xmm8
 pxor xmm1, xmm4
 movdqa xmm2, xmm1
 pslld xmm1, 0x14
 psrld xmm2, 0xc
 pxor xmm2, xmm1
 paddd xmm14, xmm2
 pxor xmm3, xmm14
 paddd xmm14, xmm10
 pshufb xmm3, xmm15
 paddd xmm4, xmm3
 pshufd xmm3, xmm3, 0x39
 pxor xmm2, xmm4
 pshufd xmm4, xmm4, 0x4e
 movdqa xmm0, xmm2
 pslld xmm2, 0x19
 psrld xmm0, 7
 pxor xmm0, xmm2
 pshufd xmm1, xmm0, 0x93
 paddd xmm14, xmm1
 pxor xmm3, xmm14
 pshufb xmm3, xmm13
 paddd xmm4, xmm3
 pxor xmm1, xmm4
 movdqa xmm2, xmm1
 pslld xmm1, 0x14
 psrld xmm2, 0xc
 pxor xmm2, xmm1
 movd xmm1, dword ptr [rdx+0x10]
 punpckldq xmm1, xmm6
 movdqa xmm0, xmmword ptr [rsp+0x10]
 punpckldq xmm9, xmmword ptr [rsp+0x20]
 movdqa xmm5, xmmword ptr [rsp+0x30]
 punpckldq xmm0, xmm1
 punpckldq xmm12, xmm11
 paddd xmm14, xmm0
 punpckldq xmm12, xmm5
 paddd xmm14, xmm2
 pxor xmm3, xmm14
 paddd xmm14, xmm9
 pshufb xmm3, xmm15
 paddd xmm4, xmm3
 pxor xmm2, xmm4
 pshufd xmm4, xmm4, 0x4e
 movdqa xmm0, xmm2
 psrld xmm0, 7
 pslld xmm2, 0x19
 pxor xmm0, xmm2
 pshufd xmm2, xmm3, 0x93
 pshufd xmm1, xmm0, 0x39
 paddd xmm14, xmm1
 pxor xmm2, xmm14
 paddd xmm14, xmm12
 pshufb xmm2, xmm13
 paddd xmm4, xmm2
 pxor xmm1, xmm4
 movdqa xmm0, xmm1
 pslld xmm1, 0x14
 psrld xmm0, 0xc
 pxor xmm0, xmm1
 paddd xmm14, xmm0
 pxor xmm2, xmm14
 pshufb xmm2, xmm15
 paddd xmm4, xmm2
 pshufd xmm3, xmm2, 0x39
 pxor xmm0, xmm4
 movdqa xmm1, xmm0
 pslld xmm0, 0x19
 psrld xmm1, 7
 pxor xmm1, xmm0
 pshufd xmm0, xmm4, 0x4e
 pxor xmm14, xmm0
 pshufd xmm2, xmm1, 0x93
 movdqa xmm0, xmmword ptr [rsp+0x50]
 pxor xmm0, xmm14
 pxor xmm2, xmm3
 movdqa xmmword ptr [r8], xmm0
 mov rax, qword ptr [rcx+0xf8]
 movdqa xmm0, xmmword ptr [rsp+0x70]
 pxor xmm0, xmm2
 movdqa xmmword ptr [rax+0x10], xmm0
 xor eax, eax
 mov rcx, qword ptr [rsp+0x80]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x138]
 movaps xmm6, xmmword ptr [r11-0x18]
 movaps xmm7, xmmword ptr [r11-0x28]
 movaps xmm8, xmmword ptr [r11-0x38]
 movaps xmm9, xmmword ptr [r11-0x48]
 movaps xmm10, xmmword ptr [r11-0x58]
 movaps xmm11, xmmword ptr [r11-0x68]
 movaps xmm12, xmmword ptr [r11-0x78]
 movaps xmm13, xmmword ptr [r11-0x88]
 movaps xmm14, xmmword ptr [r11-0x98]
 movaps xmm15, xmmword ptr [r11-0xa8]
 mov rsp, r11
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_140005eac
; --------------------------------------------------------------------------
sub_140005eac   proc \
 arg_1 : qword, ; [rsp+0x10] ; [rsp+0x38]
 arg_2 : qword ; [rsp+0x18] ; [rsp+0x40]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 cmp dword ptr [0x14005a138], 2
 mov edi, r8d
 mov esi, edx
 mov rbx, rcx
 jl 0x140005f08
 movaps xmm0, xmmword ptr [0x14003c8e0]
 movaps xmm1, xmmword ptr [0x14003c8f0]
 movdqa xmmword ptr [0x140046e10], xmm0
 movaps xmm0, xmmword ptr [0x14003c900]
 movdqa xmmword ptr [0x140046e00], xmm1
 movaps xmm1, xmmword ptr [0x14003c910]
 movdqa xmmword ptr [0x140046df0], xmm0
 movdqa xmmword ptr [0x140046de0], xmm1

0x140005f08:
 xor edx, edx
 mov r8d, 0xf0
 call 0x14002d190
 xor r11d, r11d
 mov qword ptr [rbx+0x110], r11
 mov byte ptr [rbx+0x118], r11b

0x140005f26:
 mov rcx, qword ptr [rbx+0xf8]
 lea rax, [0x14003c820]
 mov eax, dword ptr [r11+rax]
 mov dword ptr [r11+rcx], eax
 add r11, 4
 cmp r11, 0x20
 jl 0x140005f26
 mov rax, qword ptr [rbx+0xf8]
 bts edi, 0xd
 xor dword ptr [rax], 0x2080020
 mov rax, qword ptr [rbx+0xf8]
 shl edi, 0x10
 xor dword ptr [rax+0x8], esi
 mov rax, qword ptr [rbx+0xf8]
 mov rbx, qword ptr [arg_1]
 xor dword ptr [rax+0xc], edi
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_140005eac   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140005f80
; --------------------------------------------------------------------------
sub_140005f80   proc \
 arg_1 : qword, ; [rsp+0x100]
 arg_2 : qword, ; [rsp+0x108]
 arg_3 : qword, ; [rsp+0x110]
 arg_4 : qword ; [rsp+0x118]

 local local_1: dword ; [rsp+0x20]
 local local_2: dword ; [rsp+0x24]
 local local_3: dword ; [rsp+0x28]
 local local_4: dword ; [rsp+0x2c]
 local local_5: dword ; [rsp+0x30]
 local local_6: dword ; [rsp+0x34]
 local local_7: dword ; [rsp+0x38]
 local local_8: dword ; [rsp+0x3c]
 local local_9: dword ; [rsp+0x40]
 local local_10: dword ; [rsp+0x44]
 local local_11: dword ; [rsp+0x48]
 local local_12: dword ; [rsp+0x4c]
 local local_13: dword ; [rsp+0x50]
 local local_14: dword ; [rsp+0x54]
 local local_15: dword ; [rsp+0x58]
 local local_16: dword ; [rsp+0x5c]
 local local_17: dword ; [rsp+0x60]
 local local_18: dword ; [rsp+0x64]
 local local_19: dword ; [rsp+0x68]
 local local_20: dword ; [rsp+0x6c]
 local local_21: dword ; [rsp+0x70]

 mov rax, rsp
 mov qword ptr [rax+0x10], rbx
 mov qword ptr [rax+0x8], rcx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0xc0
 mov rbx, rcx
 lea rcx, [rax-0x78]
 mov r8d, 0x40
 call 0x14002d490
 mov rdx, qword ptr [rbx+0xf8]
 mov r15d, 0x6a09e667
 mov rax, qword ptr [rdx]
 mov dword ptr [arg_4], 0x3c6ef372
 mov dword ptr [local_1], 0xa54ff53a
 mov qword ptr [local_5], rax
 mov rax, qword ptr [rdx+0x8]
 mov r9d, dword ptr [local_5]
 mov qword ptr [local_7], rax
 mov rax, qword ptr [rdx+0x10]
 mov ecx, dword ptr [local_7]
 mov qword ptr [local_9], rax
 mov rax, qword ptr [rdx+0x18]
 mov r12d, dword ptr [local_10]
 mov r13d, dword ptr [local_9]
 mov qword ptr [local_11], rax
 mov rax, qword ptr [rbx+0x100]
 mov r8d, dword ptr [rax]
 mov r10d, dword ptr [rax+4]
 mov rax, qword ptr [rbx+0x108]
 mov r11d, dword ptr [rax]
 mov edi, dword ptr [rax+4]
 mov eax, dword ptr [local_8]
 mov esi, dword ptr [local_12]
 mov ebp, dword ptr [local_11]
 mov dword ptr [local_3], eax
 mov eax, dword ptr [local_6]
 xor r8d, 0x510e527f
 xor r10d, 0x9b05688c
 xor r11d, 0x1f83d9ab
 lea r14, [0x14003c841]
 mov qword ptr [local_21], 0xa
 mov dword ptr [local_2], eax
 xor edi, 0x5be0cd19
 mov dword ptr [arg_3], ecx
 mov ebx, 0xbb67ae85

0x14000606f:
 movzx eax, byte ptr [r14-1]
 mov ecx, dword ptr [rsp+rax*4+0x80]
 movzx eax, byte ptr [r14]
 add ecx, r13d
 add r9d, ecx
 mov ecx, dword ptr [rsp+rax*4+0x80]
 movzx eax, byte ptr [r14+1]
 mov edx, r9d
 xor edx, r8d
 mov r8d, dword ptr [local_2]
 ror edx, 0x10
 add r15d, edx
 xor r13d, r15d
 ror r13d, 0xc
 add ecx, r13d
 add r9d, ecx
 mov ecx, dword ptr [rsp+rax*4+0x80]
 movzx eax, byte ptr [r14+2]
 add ecx, r12d
 mov dword ptr [local_4], r9d
 xor r9d, edx
 add r8d, ecx
 mov ecx, dword ptr [rsp+rax*4+0x80]
 movzx eax, byte ptr [r14+3]
 ror r9d, 8
 mov edx, r8d
 xor edx, r10d
 add r15d, r9d
 xor r13d, r15d
 ror r13d, 7
 ror edx, 0x10
 add ebx, edx
 xor r12d, ebx
 ror r12d, 0xc
 add ecx, r12d
 add r8d, ecx
 mov ecx, dword ptr [rsp+rax*4+0x80]
 mov eax, dword ptr [arg_3]
 add ecx, ebp
 mov r10d, r8d
 mov dword ptr [local_2], r8d
 mov r8d, dword ptr [arg_4]
 add eax, ecx
 xor r10d, edx
 ror r10d, 8
 mov edx, eax
 mov dword ptr [arg_3], eax
 movzx eax, byte ptr [r14+4]
 xor edx, r11d
 add ebx, r10d
 mov ecx, dword ptr [rsp+rax*4+0x80]
 mov eax, dword ptr [arg_3]
 xor r12d, ebx
 ror r12d, 7
 ror edx, 0x10
 add r8d, edx
 xor ebp, r8d
 ror ebp, 0xc
 add ecx, ebp
 add eax, ecx
 mov r11d, eax
 mov dword ptr [arg_3], eax
 movzx eax, byte ptr [r14+5]
 mov ecx, dword ptr [rsp+rax*4+0x80]
 movzx eax, byte ptr [r14+6]
 xor r11d, edx
 ror r11d, 8
 add ecx, esi
 add r8d, r11d
 xor ebp, r8d
 mov dword ptr [arg_4], r8d
 mov r8d, dword ptr [local_3]
 add r8d, ecx
 ror ebp, 7
 mov edx, r8d
 xor edx, edi
 mov edi, dword ptr [local_1]
 ror edx, 0x10
 add edi, edx
 xor esi, edi
 ror esi, 0xc
 mov ecx, dword ptr [rsp+rax*4+0x80]
 movzx eax, byte ptr [r14+7]
 add ecx, esi
 add r8d, ecx
 mov ecx, dword ptr [rsp+rax*4+0x80]
 movzx eax, byte ptr [r14+0x8]
 add ecx, r12d
 mov dword ptr [local_3], r8d
 xor r8d, edx
 ror r8d, 8
 add edi, r8d
 xor esi, edi
 mov dword ptr [local_1], edi
 mov edi, dword ptr [local_4]
 add edi, ecx
 mov ecx, dword ptr [rsp+rax*4+0x80]
 movzx eax, byte ptr [r14+9]
 ror esi, 7
 mov edx, edi
 xor edx, r8d
 mov r8d, dword ptr [arg_4]
 ror edx, 0x10
 add r8d, edx
 xor r12d, r8d
 ror r12d, 0xc
 add ecx, r12d
 add edi, ecx
 mov ecx, dword ptr [rsp+rax*4+0x80]
 movzx eax, byte ptr [r14+0xa]
 add ecx, ebp
 mov dword ptr [local_4], edi
 mov dword ptr [local_5], edi
 xor edi, edx
 ror edi, 8
 add r8d, edi
 xor r12d, r8d
 mov dword ptr [arg_4], r8d
 mov dword ptr [local_15], r8d
 mov r8d, dword ptr [local_2]
 ror r12d, 7
 add r8d, ecx
 mov ecx, dword ptr [rsp+rax*4+0x80]
 movzx eax, byte ptr [r14+0xb]
 mov edx, r8d
 xor edx, r9d
 mov r9d, dword ptr [local_1]
 ror edx, 0x10
 add r9d, edx
 xor ebp, r9d
 ror ebp, 0xc
 add ecx, ebp
 add r8d, ecx
 mov ecx, dword ptr [rsp+rax*4+0x80]
 movzx eax, byte ptr [r14+0xc]
 add ecx, esi
 mov dword ptr [local_2], r8d
 mov dword ptr [local_6], r8d
 xor r8d, edx
 ror r8d, 8
 add r9d, r8d
 xor ebp, r9d
 mov dword ptr [local_1], r9d
 mov dword ptr [local_16], r9d
 mov r9d, dword ptr [arg_3]
 ror ebp, 7
 add r9d, ecx
 mov ecx, dword ptr [rsp+rax*4+0x80]
 mov edx, r9d
 xor edx, r10d
 ror edx, 0x10
 add r15d, edx
 xor esi, r15d
 ror esi, 0xc
 add ecx, esi
 add r9d, ecx
 mov r10d, r9d
 mov dword ptr [arg_3], r9d
 mov dword ptr [local_7], r9d
 xor r10d, edx
 ror r10d, 8
 add r15d, r10d
 movzx eax, byte ptr [r14+0xd]
 mov r9d, dword ptr [local_3]
 xor esi, r15d
 mov ecx, dword ptr [rsp+rax*4+0x80]
 movzx eax, byte ptr [r14+0xe]
 ror esi, 7
 add ecx, r13d
 add r14, 0x10
 add r9d, ecx
 mov ecx, dword ptr [rsp+rax*4+0x80]
 mov edx, r9d
 xor edx, r11d
 ror edx, 0x10
 add ebx, edx
 xor r13d, ebx
 ror r13d, 0xc
 add ecx, r13d
 add r9d, ecx
 mov r11d, r9d
 mov dword ptr [local_3], r9d
 mov dword ptr [local_8], r9d
 mov r9d, dword ptr [local_4]
 xor r11d, edx
 ror r11d, 8
 add ebx, r11d
 xor r13d, ebx
 ror r13d, 7
 sub qword ptr [local_21], 0x1
 jne 0x14000606f
 mov dword ptr [local_14], ebx
 mov rbx, qword ptr [arg_1]
 mov dword ptr [local_17], r8d
 mov dword ptr [local_18], r10d
 mov dword ptr [local_19], r11d
 mov dword ptr [local_20], edi
 mov dword ptr [local_12], esi
 mov dword ptr [local_11], ebp
 mov dword ptr [local_10], r12d
 mov dword ptr [local_9], r13d
 mov dword ptr [local_13], r15d
 xor edx, edx

0x140006399:
 mov rcx, qword ptr [rbx+0xf8]
 mov eax, dword ptr [rsp+rdx+0x50]
 xor eax, dword ptr [rcx+rdx]
 xor eax, dword ptr [rsp+rdx+0x30]
 mov dword ptr [rcx+rdx], eax
 add rdx, 4
 cmp rdx, 0x20
 jb 0x140006399
 mov rbx, qword ptr [arg_2]
 add rsp, 0xc0
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
sub_140005f80   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_1400063d4
; --------------------------------------------------------------------------
sub_1400063d4   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x38]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x40]

 test r8, r8
 je 0x1400064b8
 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 sub rsp, 0x20
 mov rdi, r8
 mov rbp, rdx
 mov rbx, rcx

0x1400063fa:
 mov rcx, qword ptr [rbx+0x110]
 mov esi, 0x80
 mov rdx, rbp
 sub rsi, rcx
 add rcx, qword ptr [rbx+0xf0]
 cmp rdi, rsi
 jbe 0x140006487
 mov r8, rsi
 call 0x14002d490
 add qword ptr [rbx+0x110], rsi
 mov rax, qword ptr [rbx+0x100]
 add dword ptr [rax], 0x40
 mov rax, qword ptr [rbx+0x100]
 mov rcx, rbx
 cmp dword ptr [rax], 0x40
 adc dword ptr [rax+4], 0x0
 cmp dword ptr [0x14005a138], 3
 mov rdx, qword ptr [rbx+0xf0]
 jl 0x140006459
 call 0x140004f60
 jmp 0x14000645e

0x140006459:
 call sub_140005f80

0x14000645e:
 mov rdx, qword ptr [rbx+0xf0]
 mov r8d, 0x40
 mov rcx, rdx
 add rdx, 0x40
 call 0x14002d490
 add qword ptr [rbx+0x110], -0x40
 add rbp, rsi
 sub rdi, rsi
 jmp 0x14000649b

0x140006487:
 mov r8, rdi
 call 0x14002d490
 add qword ptr [rbx+0x110], rdi
 add rbp, rdi
 xor edi, edi

0x14000649b:
 test rdi, rdi
 jne 0x1400063fa
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop rdi

0x1400064b8:
 ret 
sub_1400063d4   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400064bc
; --------------------------------------------------------------------------
sub_1400064bc   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 xor edi, edi
 cmp qword ptr [rcx+0x110], 0x40
 mov rsi, rdx
 mov rbx, rcx
 jbe 0x14000651f
 mov rax, qword ptr [rcx+0x100]
 add dword ptr [rax], 0x40
 mov rax, qword ptr [rcx+0x100]
 cmp dword ptr [rax], 0x40
 adc dword ptr [rax+4], edi
 mov rdx, qword ptr [rcx+0xf0]
 call sub_140005f80
 mov rcx, qword ptr [rbx+0xf0]
 add qword ptr [rbx+0x110], -0x40
 mov r8, qword ptr [rbx+0x110]
 lea rdx, [rcx+0x40]
 call 0x14002d490

0x14000651f:
 mov ecx, dword ptr [rbx+0x110]
 mov rax, qword ptr [rbx+0x100]
 add dword ptr [rax], ecx
 mov rax, qword ptr [rbx+0x100]
 cmp dword ptr [rax], ecx
 adc dword ptr [rax+4], edi
 or ecx, 0xffffffff
 cmp byte ptr [rbx+0x118], dil
 je 0x140006550
 mov rax, qword ptr [rbx+0x108]
 mov dword ptr [rax+4], ecx

0x140006550:
 mov rax, qword ptr [rbx+0x108]
 mov r8d, 0x80
 xor edx, edx
 mov dword ptr [rax], ecx
 mov rcx, qword ptr [rbx+0x110]
 sub r8, rcx
 add rcx, qword ptr [rbx+0xf0]
 call 0x14002d190
 mov rdx, qword ptr [rbx+0xf0]
 mov rcx, rbx
 call sub_140005f80

0x140006586:
 mov rax, qword ptr [rbx+0xf8]
 mov ecx, dword ptr [rdi+rax]
 mov dword ptr [rdi+rsi], ecx
 add rdi, 4
 cmp rdi, 0x20
 jl 0x140006586
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_1400064bc   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400065b0
; --------------------------------------------------------------------------
sub_1400065b0   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 mov rdi, rcx
 xor edx, edx
 mov r8d, 0x200
 add rcx, 0xa20
 call 0x14002d190
 xor ebx, ebx
 lea rcx, [rdi+0x900]
 lea r8d, [rbx+1]
 xor edx, edx
 mov qword ptr [rdi+0xc20], rbx
 call sub_140005eac
 mov rsi, rdi

0x1400065f4:
 xor r8d, r8d
 mov edx, ebx
 mov rcx, rsi
 call sub_140005eac
 inc ebx
 add rsi, 0x120
 cmp ebx, 8
 jb 0x1400065f4
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 mov byte ptr [rdi+0xa18], 0x1
 mov byte ptr [rdi+0x8f8], 0x1
 add rsp, 0x20
 pop rdi
 ret 
sub_1400065b0   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140006630
; --------------------------------------------------------------------------
sub_140006630   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x38]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x40]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 sub rsp, 0x20
 mov rbx, qword ptr [rcx+0x10]
 mov rsi, qword ptr [rcx+0x8]
 mov rdi, rcx
 mov ebp, 0x200
 jmp 0x140006686

0x140006656:
 cmp dword ptr [0x14005a138], 0x1
 jl 0x14000666f
 cmp rbx, 0x400
 jb 0x14000666f
 prefetcht0 byte ptr [rsi+0x200]

0x14000666f:
 mov rcx, qword ptr [rdi]
 mov r8d, 0x40
 mov rdx, rsi
 call sub_1400063d4
 add rsi, rbp
 sub rbx, rbp

0x140006686:
 cmp rbx, rbp
 jae 0x140006656
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop rdi
 ret 
sub_140006630   endp
 

0x1400066a0:
 jmp sub_140006630
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400066a8
; --------------------------------------------------------------------------
sub_1400066a8   proc \
 arg_1 : qword, ; [rsp+0x120]
 arg_2 : qword, ; [rsp+0x128]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x130]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_3], rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0xe0
 mov r12, qword ptr [rcx+0xc20]
 mov ebx, 0x200
 mov rdi, r8
 sub rbx, r12
 mov rbp, rdx
 mov rsi, rcx
 test r12, r12
 je 0x14000672c
 cmp r8, rbx
 jb 0x14000672c
 lea rcx, [r12+rcx+0xa20]
 mov r8, rbx
 call 0x14002d490
 mov r12, rsi
 lea r13, [rsi+0xa20]
 mov r14d, 8

0x140006701:
 mov r8d, 0x40
 mov rdx, r13
 mov rcx, r12
 call sub_1400063d4
 add r13, 0x40
 add r12, 0x120
 sub r14, 0x1
 jne 0x140006701
 add rbp, rbx
 sub rdi, rbx
 xor r12d, r12d

0x14000672c:
 cmp rdi, 0x1000
 jae 0x14000673c
 mov ebx, 0x1
 jmp 0x140006751

0x14000673c:
 mov ebx, dword ptr [rsi+0xc30]
 cmp ebx, 6
 je 0x14000674c
 cmp ebx, 7
 jne 0x140006751

0x14000674c:
 mov ebx, 4

0x140006751:
 xor r14d, r14d

0x140006754:
 xor r15d, r15d
 test ebx, ebx
 je 0x1400067f9
 lea rax, [r14+r14*8]
 mov rcx, r14
 lea r13, [local_1]
 shl rax, 5
 shl rcx, 6
 add rax, rsi
 add rcx, rbp
 mov qword ptr [arg_1], rcx
 mov qword ptr [arg_2], rax

0x140006789:
 cmp r14, 8
 jae 0x1400067f9
 mov qword ptr [r13+0x10], rdi
 mov qword ptr [r13+0x8], rcx
 mov qword ptr [r13], rax
 cmp ebx, 0x1
 jbe 0x1400067b8
 mov rcx, qword ptr [rsi+0xc28]
 lea rdx, [0x1400066a0]
 mov r8, r13
 call sub_14001fe2c
 jmp 0x1400067c0

0x1400067b8:
 mov rcx, r13
 call sub_140006630

0x1400067c0:
 mov rcx, qword ptr [arg_1]
 mov rax, qword ptr [arg_2]
 inc r15d
 add rcx, 0x40
 add rax, 0x120
 inc r14
 add r13, 0x18
 mov qword ptr [arg_1], rcx
 mov qword ptr [arg_2], rax
 cmp r15d, ebx
 jb 0x140006789

0x1400067f9:
 mov rcx, qword ptr [rsi+0xc28]
 test rcx, rcx
 je 0x14000680a
 call sub_14001fabc

0x14000680a:
 cmp r14, 8
 jb 0x140006754
 mov rbx, rdi
 and ebx, 0x1ff
 sub rdi, rbx
 add rbp, rdi
 test rbx, rbx
 je 0x14000683b
 lea rcx, [r12+rsi+0xa20]
 mov r8, rbx
 mov rdx, rbp
 call 0x14002d490

0x14000683b:
 lea rax, [r12+rbx]
 mov rbx, qword ptr [arg_3]
 mov qword ptr [rsi+0xc20], rax
 add rsp, 0xe0
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
sub_1400066a8   endp
 
 int3 
 int3 
 int3 

0x140006864:
 mov qword ptr [rsp+0x18], rbx
 mov qword ptr [rsp+0x20], rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 sub rsp, 0x130
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x120], rax
 xor ebx, ebx
 mov r13, rdx
 mov rdi, rcx
 mov rsi, rcx
 lea rbp, [rsp+0x20]
 lea r12, [rcx+0xa20]
 lea r14d, [rbx+0x40]

0x1400068aa:
 mov r8, qword ptr [rdi+0xc20]
 cmp r8, rbx
 jbe 0x1400068cb
 sub r8, rbx
 mov rdx, r12
 mov rcx, rsi
 cmp r8, r14
 cmova r8, r14
 call sub_1400063d4

0x1400068cb:
 mov rdx, rbp
 mov rcx, rsi
 call sub_1400064bc
 add rbx, r14
 add r12, r14
 add rbp, 0x20
 add rsi, 0x120
 cmp rbx, 0x200
 jb 0x1400068aa
 lea rbx, [rsp+0x20]
 mov esi, 8

0x1400068fa:
 lea rcx, [rdi+0x900]
 mov r8d, 0x20
 mov rdx, rbx
 call sub_1400063d4
 add rbx, 0x20
 sub rsi, 0x1
 jne 0x1400068fa
 lea rcx, [rdi+0x900]
 mov rdx, r13
 call sub_1400064bc
 mov rcx, qword ptr [rsp+0x120]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x130]
 mov rbx, qword ptr [r11+0x40]
 mov rbp, qword ptr [r11+0x48]
 mov rsp, r11
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 ret 
; --------------------------------------------------------------------------
; sub_140006954
; --------------------------------------------------------------------------
sub_140006954   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 mov rsi, rdx
 xor r8d, r8d
 xor edx, edx
 mov rdi, rcx
 call sub_14001f180
 mov rbx, rax
 test rax, rax
 jne 0x14000697f

0x14000697b:
 xor eax, eax
 jmp 0x1400069a6

0x14000697f:
 sub rbx, rdi
 sar rbx, 0x1
 lea rcx, [rbx+rbx+4]
 call sub_14002d848
 mov qword ptr [rsi], rax
 test rax, rax
 je 0x14000697b
 lea r8, [rbx+2]
 mov rdx, rax
 mov rcx, rdi
 call sub_14001f180

0x1400069a6:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_140006954   endp
 
 int3 
 int3 

0x1400069b8:
 push rbx
 sub rsp, 0x20
 mov ecx, 0xe4e
 mov rbx, rdx
 call sub_140019e20
 mov rdx, rbx
 mov rcx, rax
 call sub_140008e10
 lea rcx, [0x140050e70]
 mov edx, 7
 add rsp, 0x20
 pop rbx
 jmp 0x14000b114

0x1400069ec:
 mov qword ptr [rsp+0x10], rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x3050
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x3040], rax
 mov r14b, dl
 mov r13, rcx
 xor edx, edx
 mov rcx, r8
 mov bpl, r9b
 mov r12, r8
 call 0x140013c84
 xor r15d, r15d
 mov rcx, r13
 mov rsi, rax
 mov word ptr [rsp+0x1030], r15w
 call 0x14001f384

0x140006a48:
 mov ebx, 0x800

0x140006a4d:
 lea rdx, [rsp+0x20]
 mov r8, rbx
 mov rcx, r13
 call sub_14001f584
 cmp al, r15b
 je 0x140006b94
 lea rcx, [rsp+0x20]
 call sub_140013400
 mov rdi, rax
 movzx ecx, word ptr [rax]
 call 0x140013458
 cmp r14b, r15b
 je 0x140006aa4
 cmp al, r15b
 je 0x140006a8b
 mov word ptr [rdi], r15w
 jmp 0x140006ac0

0x140006a8b:
 lea rcx, [rsp+0x20]
 call 0x140013c20
 mov rcx, rax
 call sub_140013430
 cmp al, r15b
 jne 0x140006a4d
 jmp 0x140006ac0

0x140006aa4:
 cmp al, r15b
 je 0x140006ac0
 xor eax, eax
 lea rdi, [rsp+0x20]
 or rcx, 0xffffffffffffffff
 repne scasd eax, dword ptr [rdi]
 mov eax, dword ptr [0x14003c920]
 mov dword ptr [rdi-2], eax

0x140006ac0:
 cmp bpl, r15b
 je 0x140006b16
 lea rcx, [rsp+0x20]
 call sub_1400137f8
 cmp al, r15b
 je 0x140006b16
 cmp word ptr [rsp+0x1030], r15w
 jne 0x140006af2
 lea rdx, [rsp+0x1030]
 mov r8, rbx
 mov rcx, r12
 call 0x14001435c

0x140006af2:
 mov r8d, dword ptr [rsp+0x30b0]
 lea rdx, [rsp+0x1030]
 lea rcx, [rsp+0x20]
 call 0x1400130dc
 cmp al, r15b
 jne 0x140006b90
 jmp 0x140006a4d

0x140006b16:
 lea rcx, [rsp+0x20]
 xor edx, edx
 mov rbx, rsi
 call 0x140013c84
 mov rdi, rax
 cmp word ptr [rax], 0x2a
 jne 0x140006b74
 movzx ecx, word ptr [rax+2]
 call 0x140013458
 cmp al, r15b
 je 0x140006b74
 mov eax, 0x2e
 lea rcx, [rsp+0x2034]
 mov r8d, 0x800
 mov word ptr [rsp+0x2030], ax
 mov eax, 0x5c
 mov rdx, rsi
 mov word ptr [rsp+0x2032], ax
 call sub_14001efc0
 lea rbx, [rsp+0x2030]

0x140006b74:
 mov r8d, dword ptr [rsp+0x30b0]
 mov rdx, rbx
 mov rcx, rdi
 call 0x1400130dc
 cmp al, r15b
 je 0x140006a48

0x140006b90:
 mov al, 0x1
 jmp 0x140006b96

0x140006b94:
 xor al, al

0x140006b96:
 mov rcx, qword ptr [rsp+0x3040]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x3098]
 add rsp, 0x3050
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
 int3 
 int3 
 int3 

0x140006bc4:
 bt edx, 0xa
 jae 0x140006bd3
 bt dword ptr [rcx], 0xa
 jae 0x140006bd3
 mov al, 0x1
 ret 

0x140006bd3:
 xor al, al
 ret 
 int3 
 int3 

0x140006bd8:
 mov rax, qword ptr [rcx+0x62d0]
 movabs r8, 0x7fffffff7fffffff
 cmp rax, r8
 je 0x140006bf6
 cmp rdx, rax
 jl 0x140006bf6

0x140006bf3:
 mov al, 0x1
 ret 

0x140006bf6:
 mov rax, qword ptr [rcx+0x62d8]
 cmp rax, r8
 je 0x140006c07
 cmp rdx, rax
 jle 0x140006bf3

0x140006c07:
 xor al, al
 ret 
 int3 
 int3 

0x140006c0c:
 movsxd r8, r8d
 add rcx, 0xa618
 jmp sub_14001f584
 int3 
; --------------------------------------------------------------------------
; sub_140006c1c
; --------------------------------------------------------------------------
sub_140006c1c   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 movzx ecx, word ptr [rdx]
 mov rdi, rdx
 call sub_14001ee50
 xor esi, esi
 cmp al, sil
 je 0x140006c4c
 xor r8d, r8d
 xor edx, edx
 mov rcx, rdi
 call sub_14002dc2c
 jmp 0x140006c96

0x140006c4c:
 mov ebx, esi
 jmp 0x140006c8c

0x140006c50:
 movzx ecx, ax
 call 0x140021524
 sub eax, 0x41
 je 0x140006c85
 sub eax, 3
 je 0x140006c80
 sub eax, 4
 je 0x140006c7b
 sub eax, 0xa
 je 0x140006c76
 sub eax, 0x1
 jne 0x140006c88
 or ebx, 4
 jmp 0x140006c88

0x140006c76:
 or ebx, 0x1
 jmp 0x140006c88

0x140006c7b:
 or ebx, 2
 jmp 0x140006c88

0x140006c80:
 or ebx, 0x10
 jmp 0x140006c88

0x140006c85:
 or ebx, 0x20

0x140006c88:
 add rdi, 2

0x140006c8c:
 movzx eax, word ptr [rdi]
 cmp ax, si
 jne 0x140006c50
 mov eax, ebx

0x140006c96:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_140006c1c   endp
 
 int3 
 int3 

0x140006ca8:
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 call sub_1400132e0
 xor r11d, r11d
 lea rcx, [rbx+0xa3f0]
 mov word ptr [rbx+0x83ca], r11w
 mov word ptr [rbx+0x93ea], r11w
 mov byte ptr [rbx+0x83c0], r11b
 mov dword ptr [rbx+0x83c4], r11d
 mov byte ptr [rbx+0x83c8], r11b
 call sub_14001f38c
 lea rcx, [rbx+0xa4a8]
 call sub_14001f38c
 lea rcx, [rbx+0xa560]
 call sub_14001f38c
 lea rcx, [rbx+0xa6d0]
 call sub_14001f38c
 lea rcx, [rbx+0xa618]
 call sub_14001f38c
 lea rcx, [rbx+0x6178]
 add rsp, 0x20
 pop rbx
 jmp sub_1400024e0
 int3 
; --------------------------------------------------------------------------
; sub_140006d2c
; --------------------------------------------------------------------------
sub_140006d2c   proc
 push rbx
 sub rsp, 0x20
 cmp dword ptr [rcx+0xa418], 0x0
 mov rbx, rcx
 jne 0x140006d5a
 cmp byte ptr [rcx+0x83c0], 0x0
 jne 0x140006d5a
 lea rdx, [0x14003c920]
 add rcx, 0xa3f0
 call sub_14001f3b4

0x140006d5a:
 movzx ecx, word ptr [rbx+0x83ca]
 call 0x140021524
 cmp ax, 0x58
 je 0x140006d7c
 cmp ax, 0x45
 je 0x140006d7c
 cmp ax, 0x50
 je 0x140006d7c
 xor cl, cl
 jmp 0x140006d7e

0x140006d7c:
 mov cl, 0x1

0x140006d7e:
 cmp byte ptr [rbx+0x62e1], 0x0
 je 0x140006d92
 test cl, cl
 je 0x140006d92
 mov byte ptr [rbx+0x62e1], 0x0

0x140006d92:
 cmp ax, 0x4c
 je 0x140006d9e
 cmp ax, 0x56
 jne 0x140006daf

0x140006d9e:
 cmp word ptr [rbx+0x83cc], 0x42
 jne 0x140006daf
 mov byte ptr [rbx+0x83c8], 0x1

0x140006daf:
 add rsp, 0x20
 pop rbx
 ret 
sub_140006d2c   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140006db8
; --------------------------------------------------------------------------
sub_140006db8   proc
 local local_1[0x10]: byte ; [rsp+0x20]
 local local_2[0x70]: byte ; [rsp+0x30]
 local local_3[0x70]: byte ; [rsp+0xa0]

 sub rsp, 0xb8
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_3], rax
 xor eax, eax
 cmp byte ptr [rcx+0x83c8], al
 jne 0x140006e2f
 cmp byte ptr [rcx+0x6151], al
 jne 0x140006e2f
 cmp byte ptr [0x140046e20], al
 jne 0x140006e2f
 lea r9d, [rax+5]
 lea r8, [0x14003c928]
 lea edx, [rax+0x32]
 lea rcx, [local_2]
 mov byte ptr [0x140046e20], 0x1
 mov dword ptr [local_1], 0x1f
 call sub_140019504
 mov ecx, 0xbcc
 call sub_140019e20
 lea rdx, [local_2]
 mov r8d, 0x7e0
 mov rcx, rax
 call sub_140008e10

0x140006e2f:
 mov rcx, qword ptr [local_3]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0xb8
 ret 
sub_140006db8   endp
 
 int3 

0x140006e48:
 mov qword ptr [rsp+0x8], rbx
 mov qword ptr [rsp+0x10], rsi
 push rdi
 sub rsp, 0x20
 mov esi, edx
 call sub_140006db8
 lea rbx, [0x140045000]
 mov edi, 0x3a

0x140006e6a:
 cmp dword ptr [rbx], 0xcbe
 je 0x140006e81
 mov ecx, dword ptr [rbx]
 call sub_140019e20
 mov rcx, rax
 call sub_140008e10

0x140006e81:
 add rbx, 4
 sub rdi, 0x1
 jne 0x140006e6a
 lea rcx, [0x14003c730]
 call sub_140008e10
 lea rcx, [0x140050e70]
 mov edx, esi
 mov rbx, qword ptr [rsp+0x30]
 mov rsi, qword ptr [rsp+0x38]
 add rsp, 0x20
 pop rdi
 jmp 0x14000b114
; --------------------------------------------------------------------------
; sub_140006eb4
; --------------------------------------------------------------------------
sub_140006eb4   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x48]
 arg_3[0x10] : byte, ; [rsp+0x50]
 arg_4 : byte ; [rsp+0x60]

 local local_1: dword ; [rsp+0x20]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 push rdi
 sub rsp, 0x30
 mov sil, r8b
 mov rbp, rdx
 mov rbx, rcx
 mov r8, rdx
 add rcx, 0xa4a8
 mov dl, sil
 mov dil, r9b
 mov dword ptr [rax-0x18], 5
 call 0x1400069ec
 test al, al
 je 0x140006ef5
 mov al, 0x1
 jmp 0x140006f2b

0x140006ef5:
 cmp byte ptr [arg_4], 0x0
 je 0x140006f29
 cmp dword ptr [rbx+0xa588], 0x0
 je 0x140006f29
 lea rcx, [rbx+0xa560]
 mov r9b, dil
 mov r8, rbp
 mov dl, sil
 mov dword ptr [local_1], 5
 call 0x1400069ec
 test al, al
 sete al
 jmp 0x140006f2b

0x140006f29:
 xor al, al

0x140006f2b:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x30
 pop rdi
 ret 
sub_140006eb4   endp
 

0x140006f40:
 cmp qword ptr [rcx+0x62c0], 0x0
 je 0x140006f5b
 mov rax, qword ptr [rcx+0x62c0]
 cmp qword ptr [rdx], rax
 ja 0x140006f58
 jne 0x140006f5b

0x140006f58:
 mov al, 0x1
 ret 

0x140006f5b:
 cmp qword ptr [rcx+0x62c8], 0x0
 je 0x140006f73
 mov rax, qword ptr [rcx+0x62c8]
 cmp qword ptr [rdx], rax
 jb 0x140006f58
 je 0x140006f58

0x140006f73:
 xor al, al
 ret 
 int3 
 int3 

0x140006f78:
 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r13
 push r14
 push r15
 sub rsp, 0x30
 mov rsi, qword ptr [rsp+0x70]
 xor eax, eax
 mov r15d, r9d
 mov r14, r8
 mov rbp, rdx
 mov rbx, rcx
 cmp rsi, rax
 je 0x140006fb6
 cmp dword ptr [rsp+0x78], eax
 jbe 0x140006fb6
 mov word ptr [rsi], ax

0x140006fb6:
 or rcx, 0xffffffffffffffff
 lea r13, [rdx+0x20]
 mov rdi, r13
 repne scasd eax, dword ptr [rdi]
 not rcx
 dec rcx
 cmp rcx, 0x800
 jae 0x14000706e
 mov dil, byte ptr [rdx+0x10f1]
 xor r9d, r9d
 mov rcx, rbx
 mov rdx, r13
 mov r8b, dil
 mov byte ptr [rsp+0x20], 0x1
 call sub_140006eb4
 test al, al
 jne 0x14000706c
 lea rdx, [rbp+0x1040]
 mov rcx, rbx
 call 0x140006f40
 test al, al
 jne 0x14000706c
 mov eax, dword ptr [rbp+0x1c]
 test dword ptr [rbx], eax
 jne 0x14000706c
 cmp byte ptr [rbx+0x8], 0x0
 je 0x14000701d
 test dword ptr [rbx+4], eax
 je 0x14000706c

0x14000701d:
 test dil, dil
 jne 0x140007032
 mov rdx, qword ptr [rbp+0x1060]
 call 0x140006bd8
 test al, al
 jne 0x14000706c

0x140007032:
 lea rbp, [rbx+0xa3f0]
 mov rcx, rbp
 call 0x14001f384
 mov ebx, 0x1
 jmp 0x14000705c

0x140007048:
 mov r8d, r15d
 mov rdx, r13
 mov rcx, rdi
 call 0x1400130dc
 test al, al
 jne 0x14000708d
 inc ebx

0x14000705c:
 mov rcx, rbp
 call sub_14001f5b8
 mov rdi, rax
 test rax, rax
 jne 0x140007048

0x14000706c:
 xor eax, eax

0x14000706e:
 mov rbx, qword ptr [rsp+0x50]
 mov rbp, qword ptr [rsp+0x58]
 mov rsi, qword ptr [rsp+0x60]
 mov rdi, qword ptr [rsp+0x68]
 add rsp, 0x30
 pop r15
 pop r14
 pop r13
 ret 

0x14000708d:
 test r14, r14
 je 0x1400070a5
 mov rdx, r13
 mov rcx, rdi
 call 0x14001ef88
 test eax, eax
 sete dl
 mov byte ptr [r14], dl

0x1400070a5:
 test rsi, rsi
 je 0x1400070ba
 mov r8d, dword ptr [rsp+0x78]
 mov rdx, rdi
 mov rcx, rsi
 call sub_14001efc0

0x1400070ba:
 mov eax, ebx
 jmp 0x14000706e
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400070c0
; --------------------------------------------------------------------------
sub_1400070c0   proc \
 arg_1 : qword ; [rsp+0x8]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_1], rcx
 push rbx
 sub rsp, 0x30
 mov qword ptr [local_1], -2
 mov rbx, rcx
 call sub_14001339c
 nop 
 lea rcx, [rbx+0xa3f0]
 call sub_14001f55c
 nop 
 lea rcx, [rbx+0xa4a8]
 call sub_14001f55c
 nop 
 lea rcx, [rbx+0xa560]
 call sub_14001f55c
 nop 
 lea rcx, [rbx+0xa618]
 call sub_14001f55c
 nop 
 lea rcx, [rbx+0xa6d0]
 call sub_14001f55c
 nop 
 mov rcx, rbx
 call 0x140006ca8
 nop 
 mov rax, rbx
 add rsp, 0x30
 pop rbx
 ret 
sub_1400070c0   endp
 
 int3 

0x140007130:
 mov qword ptr [rsp+0x18], rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x1870
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1860], rax
 mov rdi, rcx
 movzx ecx, word ptr [rdx]
 mov rbp, rdx
 call 0x140021524
 cmp eax, 0x4f
 mov r11d, eax
 jg 0x140007a8f
 je 0x14000799d
 cmp eax, 0x46
 jg 0x140007430
 je 0x140007416
 sub r11d, 0x3f
 je 0x140007407
 mov ebx, 0x1
 sub r11d, ebx
 je 0x1400073eb
 sub r11d, ebx
 je 0x1400072fc
 sub r11d, 2
 je 0x1400072ab
 sub r11d, ebx
 je 0x140007262
 cmp r11d, ebx
 jne 0x140007345
 movzx ecx, word ptr [rbp+2]
 call 0x140021524
 cmp eax, 0x50
 je 0x14000720b
 lea r15d, [rbx+0x2a]
 mov rcx, rdi
 cmp word ptr [rbp+2], r15w
 jne 0x1400071fb
 lea rdx, [rbp+4]
 call sub_140006c1c
 mov byte ptr [rdi+0x8], bl
 or dword ptr [rdi+4], eax
 jmp 0x140008095

0x1400071fb:
 lea rdx, [rbp+2]
 call sub_140006c1c
 or dword ptr [rdi], eax
 jmp 0x140008095

0x14000720b:
 movzx ecx, word ptr [rbp+4]
 xor esi, esi
 cmp ecx, esi
 je 0x140007257
 sub ecx, 0x31
 je 0x140007248
 sub ecx, ebx
 je 0x140007236
 cmp ecx, ebx
 jne 0x140008095
 lea r13d, [rsi+4]
 mov dword ptr [rdi+0x6164], r13d
 jmp 0x140008095

0x140007236:
 mov r12d, 3
 mov dword ptr [rdi+0x6164], r12d
 jmp 0x140008095

0x140007248:
 mov dword ptr [rdi+0x6164], 2
 jmp 0x140008095

0x140007257:
 mov dword ptr [rdi+0x6164], ebx
 jmp 0x140008095

0x140007262:
 xor esi, esi
 cmp word ptr [rbp+4], si
 jne 0x140008095
 movzx ecx, word ptr [rbp+2]
 call 0x140021524
 cmp eax, 0x46
 je 0x1400072a0
 cmp eax, 0x48
 je 0x140007295
 cmp eax, 0x53
 jne 0x140008095
 mov byte ptr [rdi+0x619d], bl
 jmp 0x140008095

0x140007295:
 mov byte ptr [rdi+0x61b5], bl
 jmp 0x140008095

0x1400072a0:
 mov byte ptr [rdi+0x61b6], bl
 jmp 0x140008095

0x1400072ab:
 xor esi, esi
 cmp word ptr [rbp+4], si
 jne 0x140008095
 movzx ecx, word ptr [rbp+2]
 call 0x140021524
 lea r14d, [rsi+0x2d]
 cmp eax, r14d
 je 0x1400072f1
 cmp eax, 0x4c
 je 0x1400072e2
 cmp eax, 0x55
 jne 0x140008095
 mov dword ptr [rdi+0x61a4], ebx
 jmp 0x140008095

0x1400072e2:
 mov dword ptr [rdi+0x61a4], 2
 jmp 0x140008095

0x1400072f1:
 mov byte ptr [rdi+0x615e], bl
 jmp 0x140008095

0x1400072fc:
 movzx ecx, word ptr [rbp+2]
 call 0x140021524
 sub eax, 0x43
 je 0x1400073e0
 sub eax, ebx
 je 0x1400073d5
 mov r12d, 3
 sub eax, r12d
 je 0x140007399
 sub eax, 2
 je 0x14000738e
 sub eax, 5
 je 0x140008095
 sub eax, ebx
 je 0x140007383
 sub eax, ebx
 je 0x140007360
 sub eax, r12d
 je 0x140007355
 cmp eax, r12d
 je 0x140008095

0x140007345:
 mov rdx, rbp
 mov rcx, rdi
 call 0x1400069b8
 jmp 0x140008095

0x140007355:
 mov byte ptr [rdi+0x62b8], bl
 jmp 0x140008095

0x140007360:
 add rbp, 4
 sub rdi, rbp
 xor esi, esi

0x140007369:
 movzx eax, word ptr [rbp]
 add rbp, 2
 mov word ptr [rdi+rbp+0x402e], ax
 cmp ax, si
 jne 0x140007369
 jmp 0x140008095

0x140007383:
 mov byte ptr [rdi+0x615d], bl
 jmp 0x140008095

0x14000738e:
 mov byte ptr [rdi+0x62bc], bl
 jmp 0x140008095

0x140007399:
 lea rdx, [rbp+4]
 mov r14d, 0x2d
 cmp word ptr [rdx], r14w
 jne 0x1400073bd
 xor esi, esi
 cmp word ptr [rbp+6], si
 jne 0x1400073bd
 mov byte ptr [rdi+0x61b7], sil
 jmp 0x140008095

0x1400073bd:
 mov byte ptr [rdi+0x61b7], bl
 lea rcx, [rdi+0x61b8]
 mov r8d, 0x80
 jmp 0x140007808

0x1400073d5:
 mov byte ptr [rdi+0x73a8], bl
 jmp 0x140008095

0x1400073e0:
 mov byte ptr [rdi+0x615c], bl
 jmp 0x140008095

0x1400073eb:
 xor esi, esi
 lea r15d, [rsi+0x2b]
 cmp word ptr [rbp+2], r15w
 sete sil
 add esi, ebx
 mov dword ptr [rdi+0x83c4], esi
 jmp 0x140008095

0x140007407:
 xor edx, edx
 mov rcx, rdi
 call 0x140006e48
 jmp 0x140008095

0x140007416:
 xor esi, esi
 cmp word ptr [rbp+2], si
 jne 0x140007345
 lea ebx, [rsi+1]
 mov byte ptr [rdi+0x615f], bl
 jmp 0x140008095

0x140007430:
 sub r11d, 0x48
 je 0x140007922
 mov ebx, 0x1
 sub r11d, ebx
 je 0x1400077ca
 sub r11d, 2
 je 0x14000779c
 sub r11d, 2
 je 0x1400074d4
 cmp r11d, ebx
 jne 0x140007345

0x140007461:
 xor esi, esi
 cmp word ptr [rbp+2], si
 je 0x140008095
 movzx ecx, word ptr [rbp]
 call 0x140021524
 lea rcx, [rdi+0xa560]
 lea r12, [rdi+0xa4a8]
 cmp eax, 0x4e
 cmove r12, rcx
 cmp word ptr [rbp+2], 0x40
 jne 0x140007ff9
 mov rcx, rbp
 call sub_140013430
 cmp al, sil
 jne 0x140007ff9
 mov eax, dword ptr [rdi+0x4024]
 mov byte ptr [rsp+0x38], bl
 mov byte ptr [rsp+0x30], bl
 lea rcx, [rbp+4]
 mov r9b, bl
 xor r8d, r8d
 mov rdx, r12
 mov byte ptr [rsp+0x28], bl
 mov dword ptr [rsp+0x20], eax
 call 0x140010ac4
 jmp 0x140008095

0x1400074d4:
 movzx ecx, word ptr [rbp+2]
 call 0x140021524
 sub eax, 0x43
 je 0x140007614
 sub eax, ebx
 je 0x140008095
 sub eax, 9
 je 0x140008095
 sub eax, 6
 je 0x14000754a
 cmp eax, ebx
 je 0x140007525
 movzx eax, word ptr [rbp+2]
 add eax, -0x30
 cmp eax, 5
 mov dword ptr [rdi+0x6140], eax
 jg 0x140007345
 xor esi, esi
 cmp eax, esi
 jge 0x140008095
 jmp 0x140007345

0x140007525:
 lea rcx, [rbp+4]
 call 0x1400215ec
 mov dword ptr [rdi+0x83b8], eax
 cmp eax, 0x20
 ja 0x140007345
 cmp eax, ebx
 jae 0x140008095
 jmp 0x140007345

0x14000754a:
 lea rdx, [rbp+4]
 lea rax, [0x14003c9d0]
 xor esi, esi
 cmp word ptr [rdx], si
 lea rcx, [rsp+0x60]
 mov r8d, 0x400
 cmove rdx, rax
 call sub_14001efc0
 lea rbp, [rsp+0x60]
 cmp word ptr [rsp+0x60], si
 je 0x140008095
 lea r12, [rdi+0xa6d0]
 mov ebx, 0x800

0x14000758a:
 mov edx, 0x3b
 mov rcx, rbp
 call 0x14002cf84
 mov rdi, rax
 cmp rax, rsi
 je 0x1400075a2
 mov word ptr [rax], si

0x1400075a2:
 cmp word ptr [rbp], 0x2e
 jne 0x1400075ad
 add rbp, 2

0x1400075ad:
 lea rdx, [0x14003c9c8]
 mov rcx, rbp
 call 0x14002d900
 lea rcx, [rsp+0x860]
 cmp rax, rsi
 jne 0x1400075dd
 lea r8, [0x14003c9b8]
 mov r9, rbp
 mov rdx, rbx
 call sub_140019504
 jmp 0x1400075e8

0x1400075dd:
 mov r8, rbx
 mov rdx, rbp
 call sub_14001efc0

0x1400075e8:
 lea rdx, [rsp+0x860]
 mov rcx, r12
 call sub_14001f3b4
 cmp rdi, rsi
 je 0x140008095
 lea rbp, [rdi+2]
 cmp word ptr [rbp], si
 jne 0x14000758a
 jmp 0x140008095

0x140007614:
 add rbp, 4
 mov r14d, 0x2d
 movzx eax, word ptr [rbp]
 cmp ax, r14w
 jne 0x140007648
 add rdi, 0x62e4
 lea eax, [r14-0x1d]
 lea r12d, [r14-0x2a]

0x140007637:
 mov dword ptr [rdi], r12d
 add rdi, 0xc
 sub rax, rbx
 jne 0x140007637
 jmp 0x140008095

0x140007648:
 xor esi, esi
 cmp ax, si
 je 0x140008095
 lea r15d, [rsi+0x2b]
 lea r13d, [rsi+4]
 lea r12d, [rsi+3]

0x14000765f:
 movzx ecx, ax
 mov dword ptr [rsp+0x44], esi
 mov dword ptr [rsp+0x40], esi
 mov qword ptr [rsp+0x58], 8
 call sub_14001ee50
 cmp al, sil
 je 0x14000769d
 mov rcx, rbp
 call 0x1400215ec
 mov dword ptr [rsp+0x44], eax
 jmp 0x14000768f

0x14000768b:
 add rbp, 2

0x14000768f:
 movzx ecx, word ptr [rbp]
 call sub_14001ee50
 cmp al, sil
 jne 0x14000768b

0x14000769d:
 mov eax, 0x3a
 cmp word ptr [rbp], ax
 jne 0x1400076e3
 lea rax, [rbp+2]
 mov qword ptr [rsp+0x50], rax
 movzx ecx, word ptr [rax]
 call sub_14001ee50
 cmp al, sil
 je 0x1400076e3
 mov rbp, qword ptr [rsp+0x50]
 mov rcx, rbp
 call 0x1400215ec
 mov dword ptr [rsp+0x40], eax
 jmp 0x1400076d5

0x1400076d1:
 add rbp, 2

0x1400076d5:
 movzx ecx, word ptr [rbp]
 call sub_14001ee50
 cmp al, sil
 jne 0x1400076d1

0x1400076e3:
 movzx ecx, word ptr [rbp]
 call 0x140021524
 add rbp, 2
 sub eax, 0x41
 je 0x140007733
 sub eax, 2
 je 0x14000772c
 sub eax, ebx
 je 0x140007727
 sub eax, ebx
 je 0x140007722
 sub eax, r13d
 je 0x14000771b
 sub eax, 9
 je 0x140007716
 sub eax, 2
 jne 0x140007738
 lea edx, [rax+7]
 jmp 0x14000773d

0x140007716:
 mov rdx, r12
 jmp 0x14000773d

0x14000771b:
 mov edx, 6
 jmp 0x14000773d

0x140007722:
 mov rdx, rbx
 jmp 0x14000773d

0x140007727:
 mov rdx, rsi
 jmp 0x14000773d

0x14000772c:
 mov edx, 5
 jmp 0x14000773d

0x140007733:
 mov rdx, r13
 jmp 0x14000773d

0x140007738:
 mov rdx, qword ptr [rsp+0x58]

0x14000773d:
 movzx eax, word ptr [rbp]
 cmp ax, r15w
 je 0x14000774d
 cmp ax, r14w
 jne 0x140007763

0x14000774d:
 add rbp, 2
 cmp ax, r15w
 jne 0x14000775e
 mov eax, 2
 jmp 0x140007765

0x14000775e:
 mov eax, r12d
 jmp 0x140007765

0x140007763:
 mov eax, ebx

0x140007765:
 lea rcx, [rdx+rdx*2]
 mov dword ptr [rdi+rcx*4+0x62e4], eax
 lea rax, [rdx+rdx*2+0x18ba]
 mov edx, dword ptr [rsp+0x44]
 mov dword ptr [rdi+rax*4], edx
 mov eax, dword ptr [rsp+0x40]
 mov dword ptr [rdi+rcx*4+0x62ec], eax
 mov ax, word ptr [rbp]
 cmp ax, si
 jne 0x14000765f
 jmp 0x140008095

0x14000779c:
 movzx ecx, word ptr [rbp+2]
 call 0x140021524
 xor esi, esi
 cmp eax, esi
 je 0x1400077bf
 cmp eax, 0x42
 jne 0x140008095
 mov byte ptr [rdi+0x61b4], bl
 jmp 0x140008095

0x1400077bf:
 mov byte ptr [rdi+0x62e0], bl
 jmp 0x140008095

0x1400077ca:
 mov r12d, 3
 lea rdx, [0x14003c9b0]
 lea rcx, [rbp+2]
 mov r8, r12
 call sub_140021494
 xor esi, esi
 cmp eax, esi
 jne 0x140007812
 lea rdx, [0x14003c9a0]
 lea rcx, [rdi+0x5134]

0x1400077f7:
 lea rax, [rbp+0x8]
 cmp word ptr [rax], si
 cmovne rdx, rax

0x140007802:
 mov r8d, 0x800

0x140007808:
 call sub_14001efc0
 jmp 0x140008095

0x140007812:
 lea rdx, [0x14003c998]
 lea rcx, [rbp+2]
 call sub_140021464
 cmp eax, esi
 jne 0x140007831
 mov byte ptr [rdi+0x6138], bl
 jmp 0x140008095

0x140007831:
 lea rdx, [0x14003c990]
 lea rcx, [rbp+2]
 call sub_140021464
 cmp eax, esi
 jne 0x140007850
 mov dword ptr [rdi+0x6134], ebx
 jmp 0x140008095

0x140007850:
 lea rdx, [0x14003c988]
 lea rcx, [rbp+2]
 mov r8, r12
 call sub_140021494
 cmp eax, esi
 jne 0x140007877
 lea rdx, [0x14003c980]
 lea rcx, [rdi+0x63a4]
 jmp 0x1400077f7

0x140007877:
 lea rdx, [0x14003c978]
 lea rcx, [rbp+2]
 call sub_140021464
 cmp eax, esi
 jne 0x140007897
 mov dword ptr [rdi+0x6134], r12d
 jmp 0x140008095

0x140007897:
 movzx ecx, word ptr [rbp+2]
 call 0x140021524
 cmp eax, 0x44
 jne 0x1400078ff
 lea rax, [rbp+4]
 mov r12d, 2
 jmp 0x1400078f5

0x1400078b1:
 movzx ecx, word ptr [rax]
 call 0x140021524
 sub eax, 0x43
 je 0x1400078e7
 sub eax, ebx
 je 0x1400078df
 sub eax, 0xc
 je 0x1400078d7
 cmp eax, ebx
 jne 0x1400078ed
 mov dword ptr [rdi+0x6134], 2
 jmp 0x1400078ed

0x1400078d7:
 mov byte ptr [rdi+0x6150], bl
 jmp 0x1400078ed

0x1400078df:
 mov byte ptr [rdi+0x6152], bl
 jmp 0x1400078ed

0x1400078e7:
 mov byte ptr [rdi+0x6151], bl

0x1400078ed:
 add r12, rbx
 lea rax, [rbp+r12*2]

0x1400078f5:
 cmp word ptr [rax], si
 jne 0x1400078b1
 jmp 0x140008095

0x1400078ff:
 lea rdx, [0x14003c970]
 lea rcx, [rbp+2]
 call sub_140021464
 cmp eax, esi
 jne 0x140008095
 mov byte ptr [rdi+0x73a9], bl
 jmp 0x140008095

0x140007922:
 movzx ecx, word ptr [rbp+2]
 call 0x140021524
 cmp eax, 0x50
 jne 0x140007345
 lea ebx, [rax-0x4f]
 lea rdx, [rbp+4]
 xor esi, esi
 mov byte ptr [rdi+0x5132], bl
 cmp word ptr [rdx], si
 je 0x14000796f
 lea rcx, [rdi+0x5030]
 call sub_14001cffc
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, rbp
 repne scasd eax, dword ptr [rdi]
 not rcx
 sub rcx, rbx
 lea rdx, [rcx+rcx]
 jmp 0x140007f62

0x14000796f:
 cmp byte ptr [rdi+0x5130], sil
 jne 0x140008095

0x14000797c:
 lea r8, [rdi+0x5030]
 xor edx, edx
 xor ecx, ecx
 call 0x140020bdc
 lea rcx, [0x14003c730]
 call sub_140008e80
 jmp 0x140008095

0x14000799d:
 movzx ecx, word ptr [rbp+2]
 call 0x140021524
 xor esi, esi
 cmp eax, esi
 je 0x140007a7d
 sub eax, 0x2b
 je 0x140007a6d
 sub eax, 2
 je 0x140007a5e
 sub eax, 0x16
 je 0x140007a4e
 sub eax, 5
 je 0x140007a3e
 lea r13d, [rsi+4]
 sub eax, r13d
 je 0x140007a16
 sub eax, 6
 je 0x140007a04
 lea ebx, [rsi+1]
 sub eax, ebx
 je 0x1400079f9
 cmp eax, r13d
 jne 0x140007345
 mov byte ptr [rdi+0x61a8], bl
 jmp 0x140008095

0x1400079f9:
 mov byte ptr [rdi+0x62ba], bl
 jmp 0x140008095

0x140007a04:
 mov r12d, 3
 mov dword ptr [rdi+0x613c], r12d
 jmp 0x140008095

0x140007a16:
 mov ebx, 0x1
 mov byte ptr [rdi+0x61a9], bl
 movzx ecx, word ptr [rbp+4]
 call 0x140021524
 cmp eax, 0x41
 jne 0x140008095
 mov byte ptr [rdi+0x61ab], bl
 jmp 0x140008095

0x140007a3e:
 mov ebx, 0x1
 mov byte ptr [rdi+0x61aa], bl
 jmp 0x140008095

0x140007a4e:
 mov ebx, 0x1
 mov byte ptr [rdi+0x62bb], bl
 jmp 0x140008095

0x140007a5e:
 mov dword ptr [rdi+0x613c], 2
 jmp 0x140008095

0x140007a6d:
 mov ebx, 0x1
 mov dword ptr [rdi+0x613c], ebx
 jmp 0x140008095

0x140007a7d:
 mov r13d, 4
 mov dword ptr [rdi+0x613c], r13d
 jmp 0x140008095

0x140007a8f:
 cmp eax, 0x55
 jg 0x140007f89
 je 0x140007f6f
 sub r11d, 0x50
 je 0x140007f33
 mov ebx, 0x1
 sub r11d, ebx
 je 0x140007ed7
 sub r11d, ebx
 je 0x140007e09
 sub r11d, ebx
 je 0x140007c50
 cmp r11d, ebx
 jne 0x140007345
 movzx ecx, word ptr [rbp+2]
 call 0x140021524
 xor esi, esi
 cmp eax, esi
 je 0x140007c45
 lea r14d, [rbx+0x2c]
 sub eax, r14d
 je 0x140007c39
 sub eax, 0x14
 je 0x140007c30
 sub eax, ebx
 je 0x140007c1b
 sub eax, 9
 je 0x140007c10
 sub eax, ebx
 je 0x140007c01
 sub eax, 2
 je 0x140007bf8
 sub eax, ebx
 je 0x140007be3
 lea r13d, [rbx+3]
 cmp eax, r13d
 jne 0x140007345
 movzx ecx, word ptr [rbp+4]
 lea edx, [rbx+0x2f]
 cmp cx, dx
 jb 0x140007b4c
 cmp cx, 0x34
 ja 0x140007b4c
 movzx r13d, cx
 sub r13d, edx
 jmp 0x140007b4f

0x140007b4c:
 mov bl, sil

0x140007b4f:
 cmp cx, r14w
 cmove r13d, esi
 cmp bl, sil
 jne 0x140007bc9
 cmp cx, r14w
 je 0x140007bc9
 mov r15d, 0x2b
 cmp cx, r15w
 je 0x140007bc9
 cmp cx, si
 je 0x140007bc9
 movzx r8d, word ptr [rbp+6]
 cmp r8w, dx
 jb 0x140007b8c
 cmp r8w, 0x34
 ja 0x140007b8c
 movzx r13d, r8w
 sub r13d, edx

0x140007b8c:
 cmp r8w, r14w
 movzx ecx, cx
 cmove r13d, esi
 call 0x140021524
 cmp eax, 0x41
 je 0x140007bbd
 cmp eax, 0x43
 je 0x140007bb1
 cmp eax, 0x4d
 jne 0x140008095
 jmp 0x140007bd7

0x140007bb1:
 mov dword ptr [rdi+0x73b0], r13d
 jmp 0x140008095

0x140007bbd:
 mov dword ptr [rdi+0x73b4], r13d
 jmp 0x140008095

0x140007bc9:
 mov dword ptr [rdi+0x73b4], r13d
 mov dword ptr [rdi+0x73b0], r13d

0x140007bd7:
 mov dword ptr [rdi+0x73ac], r13d
 jmp 0x140008095

0x140007be3:
 lea rcx, [rdi+0x62c0]

0x140007bea:
 lea rdx, [rbp+4]
 call sub_1400204b4
 jmp 0x140008095

0x140007bf8:
 lea rcx, [rdi+0x62c8]
 jmp 0x140007bea

0x140007c01:
 mov dword ptr [rdi+0x61a0], 2
 jmp 0x140008095

0x140007c10:
 mov dword ptr [rdi+0x61a0], ebx
 jmp 0x140008095

0x140007c1b:
 lea rcx, [rdi+0x62c0]

0x140007c22:
 lea rdx, [rbp+4]
 call 0x1400203cc
 jmp 0x140008095

0x140007c30:
 lea rcx, [rdi+0x62c8]
 jmp 0x140007c22

0x140007c39:
 mov byte ptr [rdi+0x62e1], sil
 jmp 0x140008095

0x140007c45:
 mov byte ptr [rdi+0x62e1], bl
 jmp 0x140008095

0x140007c50:
 movzx ecx, word ptr [rbp+2]
 call sub_14001ee50
 xor esi, esi
 cmp al, sil
 je 0x140007c7b
 or dword ptr [rdi+0x6154], 2
 lea rcx, [rbp+2]
 call 0x1400215ec
 mov dword ptr [rdi+0x6158], eax
 jmp 0x140008095

0x140007c7b:
 movzx ecx, word ptr [rbp+2]
 call 0x140021524
 cmp eax, esi
 je 0x140007dfe
 mov r14d, 0x2d
 sub eax, r14d
 je 0x140007df3
 sub eax, 0x16
 je 0x140007d43
 sub eax, ebx
 je 0x140007d3c
 sub eax, ebx
 je 0x140007d2a
 sub eax, 7
 je 0x140007d03
 sub eax, ebx
 je 0x140007cdc
 cmp eax, 9
 jne 0x140008095
 cmp word ptr [rbp+4], r14w
 lea eax, [r14-0x1d]
 lea ecx, [rax-8]
 cmove eax, ecx

0x140007cd1:
 or dword ptr [rdi+0x6154], eax
 jmp 0x140008095

0x140007cdc:
 movzx ecx, word ptr [rbp+4]
 call sub_14001ee50
 cmp al, sil
 je 0x140008095
 lea rcx, [rbp+4]
 call sub_140021530
 mov qword ptr [rdi+0x62d8], rax
 jmp 0x140008095

0x140007d03:
 movzx ecx, word ptr [rbp+4]
 call sub_14001ee50
 cmp al, sil
 je 0x140008095
 lea rcx, [rbp+4]
 call sub_140021530
 mov qword ptr [rdi+0x62d0], rax
 jmp 0x140008095

0x140007d2a:
 mov r13d, 4
 or dword ptr [rdi+0x6154], r13d
 jmp 0x140008095

0x140007d3c:
 mov eax, 8
 jmp 0x140007cd1

0x140007d43:
 movzx ecx, word ptr [rbp+4]
 mov r14b, sil
 call 0x140021524
 cmp eax, 0x41
 je 0x140007d70
 cmp eax, 0x4f
 je 0x140007d68
 cmp eax, 0x55
 jne 0x140007345
 lea r12d, [rax-0x52]
 jmp 0x140007d73

0x140007d68:
 mov r12d, 2
 jmp 0x140007d73

0x140007d70:
 mov r12d, ebx

0x140007d73:
 lea r13, [rbp+6]
 cmp word ptr [r13], si
 jne 0x140007d98
 mov dword ptr [rdi+0x4028], r12d
 mov dword ptr [rdi+0x4024], r12d
 mov dword ptr [rdi+0x4020], r12d
 jmp 0x140008095

0x140007d98:
 cmp r14b, sil
 jne 0x140008095
 movzx ecx, word ptr [r13]
 call 0x140021524
 cmp eax, 0x43
 je 0x140007ddc
 cmp eax, 0x4c
 je 0x140007dd3
 cmp eax, 0x52
 je 0x140007dca
 mov rdx, rbp
 mov rcx, rdi
 call 0x1400069b8
 mov r14b, bl
 jmp 0x140007de3

0x140007dca:
 mov dword ptr [rdi+0x402c], r12d
 jmp 0x140007de3

0x140007dd3:
 mov dword ptr [rdi+0x4024], r12d
 jmp 0x140007de3

0x140007ddc:
 mov dword ptr [rdi+0x4020], r12d

0x140007de3:
 add r13, 2
 cmp word ptr [r13], si
 jne 0x140007d98
 jmp 0x140008095

0x140007df3:
 mov dword ptr [rdi+0x6154], esi
 jmp 0x140008095

0x140007dfe:
 or dword ptr [rdi+0x6154], ebx
 jmp 0x140008095

0x140007e09:
 movzx ecx, word ptr [rbp+2]
 call 0x140021524
 xor esi, esi
 cmp eax, esi
 je 0x140007ec8
 lea r14d, [rsi+0x2d]
 cmp eax, r14d
 je 0x140007ebd
 lea edx, [rsi+0x30]
 cmp eax, edx
 je 0x140007eab
 cmp eax, 0x49
 jne 0x140008095
 lea rcx, [rbp+4]
 call 0x1400215ec
 cmp eax, esi
 mov dword ptr [rdi+0x61ac], eax
 jl 0x140007e51
 cmp eax, 0xf
 jle 0x140007e5c

0x140007e51:
 mov rdx, rbp
 mov rcx, rdi
 call 0x1400069b8

0x140007e5c:
 lea rcx, [rbp+4]
 mov edx, 0x3a
 call 0x14002cf84
 cmp rax, rsi
 je 0x140007e9b
 lea rcx, [rax+2]
 call 0x1400215ec
 cmp eax, 0x3e8
 mov dword ptr [rdi+0x61b0], eax
 jle 0x140007e90
 mov rdx, rbp
 mov rcx, rdi
 call 0x1400069b8

0x140007e90:
 mov ecx, dword ptr [rdi+0x61b0]
 call 0x14001f5d0

0x140007e9b:
 mov ecx, dword ptr [rdi+0x61ac]
 call sub_14001f828
 jmp 0x140008095

0x140007eab:
 mov r12d, 3
 mov dword ptr [rdi+0x6168], r12d
 jmp 0x140008095

0x140007ebd:
 mov dword ptr [rdi+0x6168], ebx
 jmp 0x140008095

0x140007ec8:
 mov dword ptr [rdi+0x6168], 2
 jmp 0x140008095

0x140007ed7:
 movzx ecx, word ptr [rbp+2]
 call 0x140021524
 cmp eax, 0x4f
 jne 0x140007345
 movzx ecx, word ptr [rbp+4]
 call 0x140021524
 xor esi, esi
 cmp eax, esi
 je 0x140007f28
 lea r15d, [rsi+0x2b]
 cmp eax, r15d
 je 0x140007f19
 lea r14d, [rsi+0x2d]
 cmp eax, r14d
 jne 0x140007345
 mov dword ptr [rdi+0x2018], esi
 jmp 0x140008095

0x140007f19:
 mov dword ptr [rdi+0x2018], 2
 jmp 0x140008095

0x140007f28:
 mov dword ptr [rdi+0x2018], ebx
 jmp 0x140008095

0x140007f33:
 lea rdx, [rbp+2]
 xor esi, esi
 cmp word ptr [rdx], si
 je 0x14000797c
 lea rcx, [rdi+0x5030]
 call sub_14001cffc
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, rbp
 repne scasd eax, dword ptr [rdi]
 not rcx
 lea rdx, [rcx+rcx-2]

0x140007f62:
 mov rcx, rbp
 call sub_14001cf34
 jmp 0x140008095

0x140007f6f:
 xor esi, esi
 cmp word ptr [rbp+2], si
 jne 0x140007345
 lea ebx, [rsi+1]
 mov byte ptr [rdi+0x6160], bl
 jmp 0x140008095

0x140007f89:
 sub r11d, 0x56
 je 0x14000802d
 mov ebx, 0x1
 sub r11d, ebx
 je 0x14000800a
 sub r11d, ebx
 je 0x140007461
 sub r11d, ebx
 je 0x140007fee
 cmp r11d, ebx
 jne 0x140007345
 lea rdx, [rbp+2]
 xor esi, esi
 cmp word ptr [rdx], si
 jne 0x140007fe2
 lea rcx, [0x14003c960]
 sub rdi, rcx

0x140007fc9:
 movzx eax, word ptr [rcx]
 add rcx, 2
 mov word ptr [rcx+rdi+0x301c], ax
 cmp ax, si
 jne 0x140007fc9
 jmp 0x140008095

0x140007fe2:
 lea rcx, [rdi+0x301e]
 jmp 0x140007802

0x140007fee:
 mov byte ptr [rdi+0x619c], bl
 jmp 0x140008095

0x140007ff9:
 lea rdx, [rbp+2]
 mov rcx, r12
 call sub_14001f3b4
 jmp 0x140008095

0x14000800a:
 mov ebx, 0x800
 lea rdx, [rbp+2]
 lea rcx, [rdi+0x18]
 mov r8, rbx
 call sub_14001efc0
 lea rcx, [rdi+0x18]
 mov rdx, rbx
 call sub_1400134a8
 jmp 0x140008095

0x14000802d:
 movzx ecx, word ptr [rbp+2]
 call 0x140021524
 mov r14d, 0x2d
 cmp eax, r14d
 je 0x14000808c
 cmp eax, 0x45
 je 0x14000806b
 cmp eax, 0x50
 je 0x14000805e
 movabs rax, 0x7fffffff7fffffff
 mov qword ptr [rdi+0x6170], rax
 jmp 0x140008095

0x14000805e:
 mov ebx, 0x1
 mov byte ptr [rdi+0x62e2], bl
 jmp 0x140008095

0x14000806b:
 movzx ecx, word ptr [rbp+4]
 call 0x140021524
 cmp eax, 0x52
 jne 0x140008095
 lea rcx, [rbp+6]
 call 0x1400215ec
 inc eax
 mov dword ptr [rdi+0x73a4], eax
 jmp 0x140008095

0x14000808c:
 xor esi, esi
 mov qword ptr [rdi+0x6170], rsi

0x140008095:
 mov rcx, qword ptr [rsp+0x1860]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x18c0]
 add rsp, 0x1870
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 

0x1400080c0:
 push rdi
 mov eax, 0x78d0
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x30], -2
 mov qword ptr [rsp+0x78e8], rbx
 mov qword ptr [rsp+0x78f0], rsi
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x78c0], rax
 mov rbx, rcx
 movzx edx, word ptr [rcx+0x83ca]
 xor esi, esi
 cmp dx, si
 je 0x140008125
 cmp word ptr [rcx+0x83cc], si
 je 0x140008125
 lea rcx, [0x14003ca98]
 call 0x14002cf84
 cmp rax, rsi
 jne 0x14000812e

0x140008125:
 cmp word ptr [rbx+0x93ea], si
 jne 0x140008145

0x14000812e:
 movzx eax, word ptr [rbx+0x83ca]
 neg ax
 sbb edx, edx
 and edx, 7
 mov rcx, rbx
 call 0x140006e48

0x140008145:
 lea rcx, [rbx+0x93ea]
 call sub_140013e3c
 cmp rax, rsi
 jne 0x14000816f
 mov r8d, 0x800
 lea rdx, [0x14003ca88]
 lea rcx, [rbx+0x93ea]
 call sub_14001effc

0x14000816f:
 movzx edx, word ptr [rbx+0x83ca]
 lea rcx, [0x14003ca78]
 call 0x14002cf84
 cmp rax, rsi
 jne 0x14000826d
 cmp byte ptr [rbx+0x61b7], sil
 je 0x1400081af
 lea r8, [rbx+0x61b8]
 xor r9d, r9d
 mov edx, 0x800
 lea rcx, [rbx+0x93ea]
 call 0x140014c58

0x1400081af:
 lea rcx, [rsp+0x40]
 call sub_14001f55c
 nop 
 lea rdx, [rbx+0x93ea]
 lea rcx, [rsp+0x40]
 call sub_14001f3b4
 mov dword ptr [rsp+0x20], esi
 mov r9b, byte ptr [rbx+0x61a9]
 mov r8d, dword ptr [rbx+0x6168]
 lea rdx, [rsp+0x40]
 lea rcx, [rsp+0x1150]
 call sub_14001bf84
 nop 
 mov qword ptr [rsp+0x1110], rsi
 mov qword ptr [rsp+0x1118], rsi
 mov qword ptr [rsp+0x1120], rsi
 lea rdx, [rsp+0x100]
 lea rcx, [rsp+0x1150]
 call sub_14001cce4
 cmp eax, esi
 jne 0x14000824e

0x140008221:
 lea rdx, [rsp+0x100]
 lea rcx, [rbx+0xa618]
 call sub_14001f3b4
 lea rdx, [rsp+0x100]
 lea rcx, [rsp+0x1150]
 call sub_14001cce4
 cmp eax, esi
 je 0x140008221

0x14000824e:
 lea rcx, [rsp+0x1150]
 call sub_14001becc
 nop 
 mov rcx, qword ptr [rsp+0x40]
 cmp rcx, rsi
 je 0x140008280
 call sub_14002cfac
 jmp 0x140008280

0x14000826d:
 lea rcx, [rbx+0xa618]
 lea rdx, [rbx+0x93ea]
 call sub_14001f3b4

0x140008280:
 movzx eax, word ptr [rbx+0x83ca]
 cmp eax, 0x45
 je 0x1400082c3
 cmp eax, 0x49
 je 0x1400082c3
 cmp eax, 0x4c
 je 0x1400082b9
 cmp eax, 0x50
 je 0x1400082c3
 cmp eax, 0x54
 je 0x1400082c3
 cmp eax, 0x56
 je 0x1400082b9
 cmp eax, 0x58
 je 0x1400082c3
 mov edx, 7
 mov rcx, rbx
 call 0x140006e48
 jmp 0x1400082ef

0x1400082b9:
 mov rcx, rbx
 call 0x1400126f8
 jmp 0x1400082ef

0x1400082c3:
 mov rdx, rbx
 lea rcx, [rsp+0x1150]
 call sub_14000ced0
 nop 
 lea rcx, [rsp+0x1150]
 call 0x14000ec04
 nop 
 lea rcx, [rsp+0x1150]
 call 0x14000ccb4

0x1400082ef:
 cmp byte ptr [rbx+0x83c8], sil
 jne 0x140008304
 lea rcx, [0x14003c730]
 call sub_140008e10

0x140008304:
 mov rcx, qword ptr [rsp+0x78c0]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x78d0]
 mov rbx, qword ptr [r11+0x18]
 mov rsi, qword ptr [r11+0x20]
 mov rsp, r11
 pop rdi
 ret 
 int3 
 int3 
 int3 

0x14000832c:
 mov qword ptr [rsp+0x18], rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 mov eax, 0x10a0
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1090], rax
 movzx eax, word ptr [rdx]
 xor r13d, r13d
 mov rbx, rcx
 lea ecx, [r13+0x2d]
 mov rsi, rdx
 cmp eax, ecx
 je 0x140008370
 cmp eax, 0x2f
 jne 0x1400083a2

0x140008370:
 cmp byte ptr [rbx+0x83c1], r13b
 jne 0x1400083a2
 add rdx, 2
 cmp word ptr [rdx], cx
 jne 0x140008395
 cmp word ptr [rsi+4], r13w
 jne 0x140008395
 mov byte ptr [rbx+0x83c1], 0x1
 jmp 0x14000859f

0x140008395:
 mov rcx, rbx
 call 0x140007130
 jmp 0x14000859f

0x1400083a2:
 cmp word ptr [rbx+0x83ca], r13w
 jne 0x1400083f6
 lea rcx, [rbx+0x83ca]
 mov r8d, 0x810
 call sub_14002dc5c
 movzx ecx, word ptr [rbx+0x83ca]
 call 0x140021524
 mov word ptr [rbx+0x83ca], ax
 cmp ax, 0x49
 je 0x14000859f
 cmp ax, 0x53
 je 0x14000859f
 lea rcx, [rbx+0x83ca]
 call sub_14002150c
 jmp 0x14000859f

0x1400083f6:
 lea rcx, [rbx+0x93ea]
 cmp word ptr [rcx], r13w
 je 0x14000848b
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, rdx
 repne scasd eax, dword ptr [rdi]
 not rcx
 sub rcx, 0x1
 je 0x140008421
 movzx eax, word ptr [rdx+rcx*2-2]

0x140008421:
 movzx edi, ax
 mov ecx, edi
 call sub_14001346c
 cmp al, r13b
 jne 0x14000843f
 mov ecx, edi
 call 0x140013458
 mov dil, r13b
 cmp al, r13b
 je 0x140008442

0x14000843f:
 mov dil, 0x1

0x140008442:
 movzx ecx, word ptr [rbx+0x83ca]
 call 0x140021524
 lea rcx, [0x14003cab0]
 movzx edx, ax
 mov ebp, eax
 call 0x14002cf84
 cmp rax, r13
 setne al
 cmp bp, 0x58
 je 0x140008474
 mov r12b, r13b
 cmp bp, 0x45
 jne 0x140008477

0x140008474:
 mov r12b, 0x1

0x140008477:
 cmp dil, r13b
 je 0x14000849b
 cmp al, r13b
 jne 0x1400084a6
 lea rcx, [rbx+0x201e]
 mov rdx, rsi

0x14000848b:
 mov r8d, 0x800
 call sub_14001efc0
 jmp 0x14000859f

0x14000849b:
 cmp al, r13b
 jne 0x1400084a6
 cmp bp, 0x54
 jne 0x1400084bd

0x1400084a6:
 cmp word ptr [rsi], 0x40
 jne 0x140008590
 cmp dword ptr [rbx+0x83c4], 0x1
 je 0x140008590

0x1400084bd:
 lea rdx, [rsp+0x40]
 xor r8d, r8d
 mov rcx, rsi
 mov qword ptr [rsp+0x1050], r13
 mov qword ptr [rsp+0x1058], r13
 mov qword ptr [rsp+0x1060], r13
 call sub_140011338
 mov dil, al
 cmp al, r13b
 je 0x1400084f6
 cmp dword ptr [rbx+0x83c4], 2
 jne 0x14000854a

0x1400084f6:
 cmp dword ptr [rbx+0x83c4], 0x1
 je 0x14000854a
 cmp word ptr [rsi], 0x40
 jne 0x14000854a
 mov rcx, rsi
 call sub_140013430
 cmp al, r13b
 jne 0x14000854a
 mov eax, dword ptr [rbx+0x4024]
 mov byte ptr [rsp+0x38], 0x1
 mov byte ptr [rsp+0x30], 0x1
 lea rdx, [rbx+0xa3f0]
 lea rcx, [rsi+2]
 mov r9b, 0x1
 xor r8d, r8d
 mov byte ptr [rsp+0x28], 0x1
 mov byte ptr [rbx+0x83c0], 0x1
 mov dword ptr [rsp+0x20], eax
 call 0x140010ac4
 jmp 0x14000859f

0x14000854a:
 cmp dil, r13b
 je 0x140008590
 cmp byte ptr [rsp+0x104c], r13b
 je 0x140008590
 cmp r12b, r13b
 je 0x140008590
 cmp word ptr [rbx+0x201e], r13w
 jne 0x140008590
 mov edi, 0x800
 lea rcx, [rbx+0x201e]
 mov rdx, rsi
 mov r8, rdi
 call sub_14001efc0
 lea rcx, [rbx+0x201e]
 mov rdx, rdi
 call sub_1400134a8
 jmp 0x14000859f

0x140008590:
 lea rcx, [rbx+0xa3f0]
 mov rdx, rsi
 call sub_14001f3b4

0x14000859f:
 mov rcx, qword ptr [rsp+0x1090]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x10e0]
 add rsp, 0x10a0
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400085c8
; --------------------------------------------------------------------------
sub_1400085c8   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 movzx eax, word ptr [rdx]
 xor esi, esi
 mov rbx, rcx
 lea ecx, [rsi+0x2d]
 mov rdi, rdx
 cmp eax, ecx
 je 0x1400085f2
 cmp eax, 0x2f
 jne 0x1400086a2

0x1400085f2:
 cmp byte ptr [rbx+0x83c1], sil
 jne 0x1400086a2
 add rdi, 2
 cmp word ptr [rdi], cx
 jne 0x140008615
 cmp word ptr [rdi+2], si
 jne 0x140008615
 mov byte ptr [rbx+0x83c1], 0x1

0x140008615:
 lea rdx, [0x14003cad8]
 mov rcx, rdi
 call sub_140021464
 cmp eax, esi
 jne 0x14000862f
 mov byte ptr [rbx+0x201c], 0x1

0x14000862f:
 lea rdx, [0x14003cac8]
 mov r8d, 4
 mov rcx, rdi
 call sub_140021494
 cmp eax, esi
 jne 0x140008665
 mov rdx, rdi
 mov rcx, rbx
 call 0x140007130
 mov edx, dword ptr [rbx+0x4028]
 lea rcx, [rbx+0x5134]
 call sub_140008a70

0x140008665:
 lea rdx, [0x14003cabc]
 mov r8d, 2
 mov rcx, rdi
 call sub_140021494
 cmp eax, esi
 jne 0x1400086b9
 mov rdx, rdi
 mov rcx, rbx
 call 0x140007130
 lea rcx, [rbx+0x5134]
 cmp word ptr [rcx], si
 je 0x1400086b9
 mov edx, dword ptr [rbx+0x4028]
 call sub_140008a70
 jmp 0x1400086b9

0x1400086a2:
 lea rcx, [rbx+0x83ca]
 cmp word ptr [rcx], si
 jne 0x1400086b9
 mov r8d, 0x810
 call sub_14002dc5c

0x1400086b9:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_1400085c8   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400086cc
; --------------------------------------------------------------------------
sub_1400086cc   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x38]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x40]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_3], rsi
 push rdi
 sub rsp, 0x20
 mov rdi, rcx
 mov rax, rdx
 mov rcx, rdx
 jmp 0x14000870f

0x1400086e6:
 mov rbx, qword ptr [arg_2]
 movzx edx, word ptr [rbx]
 cmp edx, 0x2d
 je 0x1400086f8
 cmp edx, 0x2f
 jne 0x140008704

0x1400086f8:
 lea rdx, [rbx+2]
 mov rcx, rdi
 call 0x140007130

0x140008704:
 mov rcx, rbx
 call sub_14002cfac
 mov rcx, rsi

0x14000870f:
 lea rdx, [arg_2]
 call sub_140006954
 mov rsi, rax
 test rax, rax
 jne 0x1400086e6
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop rdi
 ret 
sub_1400086cc   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140008734
; --------------------------------------------------------------------------
sub_140008734   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x48]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x50]

 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 push r12
 push r13
 sub rsp, 0x20
 xor r13d, r13d
 mov sil, dl
 mov rdi, rcx
 mov word ptr [rcx+0x83ca], r13w
 mov byte ptr [rcx+0x83c1], r13b
 call qword ptr [GetCommandLineW]
 mov rcx, rax
 mov bpl, 0x1
 jmp 0x14000879b

0x14000876d:
 cmp bpl, r13b
 jne 0x14000878b
 mov rdx, qword ptr [arg_1]
 mov rcx, rdi
 cmp sil, r13b
 je 0x140008786
 call sub_1400085c8
 jmp 0x14000878b

0x140008786:
 call 0x14000832c

0x14000878b:
 mov rcx, qword ptr [arg_1]
 call sub_14002cfac
 mov bpl, r13b
 mov rcx, r12

0x14000879b:
 lea rdx, [arg_1]
 call sub_140006954
 mov r12, rax
 cmp rax, r13
 jne 0x14000876d
 cmp sil, r13b
 jne 0x1400087ba
 mov rcx, rdi
 call sub_140006d2c

0x1400087ba:
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop r13
 pop r12
 pop rdi
 ret 
sub_140008734   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400087d0
; --------------------------------------------------------------------------
sub_1400087d0   proc \
 arg_1 : qword, ; [rsp+0x60]
 arg_2 : qword ; [rsp+0x68]

 local local_1: qword ; [rsp+0x20]
 local local_2: qword ; [rsp+0x28]
 local local_3: qword ; [rsp+0x30]
 local local_4: qword ; [rsp+0x38]
 local local_5: qword ; [rsp+0x40]

 push rdi
 sub rsp, 0x50
 mov qword ptr [local_1], -2
 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 mov rsi, rcx
 lea rcx, [0x14003cb10]
 call sub_14002dd48
 mov rbx, rax
 test rax, rax
 je 0x14000885e
 xor eax, eax
 or rcx, 0xffffffffffffffff
 mov rdi, rbx
 repne scasb al, byte ptr [rdi]
 not rcx
 and qword ptr [local_2], rax
 and qword ptr [local_3], rax
 and qword ptr [local_4], rax
 and qword ptr [local_5], rax
 mov rdx, rcx
 lea rcx, [local_2]
 call sub_1400011f4
 nop 
 mov r8, qword ptr [local_3]
 mov rdi, qword ptr [local_2]
 mov rdx, rdi
 mov rcx, rbx
 call sub_14002110c
 mov rdx, rdi
 mov rcx, rsi
 call sub_1400086cc
 nop 
 test rdi, rdi
 je 0x14000885e
 mov rcx, rdi
 call sub_14002cfac

0x14000885e:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x50
 pop rdi
 ret 
sub_1400087d0   endp
 
 int3 
 int3 

0x140008870:
 mov rax, rsp
 push rsi
 push rdi
 push r12
 sub rsp, 0x180
 mov qword ptr [rsp+0x40], -2
 mov qword ptr [rax+0x10], rbx
 mov qword ptr [rax+0x18], rbp
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x170], rax
 mov rsi, rcx
 lea rcx, [rsp+0x50]
 call sub_14001f55c
 nop 
 xor r12d, r12d
 mov byte ptr [rsp+0x38], r12b
 mov byte ptr [rsp+0x30], r12b
 mov byte ptr [rsp+0x28], r12b
 mov dword ptr [rsp+0x20], r12d
 xor r9d, r9d
 mov r8b, 0x1
 lea rdx, [rsp+0x50]
 lea rcx, [0x14003cb78]
 call 0x140010ac4
 cmp al, r12b
 je 0x140008a39
 lea rcx, [rsp+0x50]
 call sub_14001f5b8
 mov rbx, rax
 cmp rax, r12
 je 0x140008a39

0x1400088fc:
 movzx ecx, word ptr [rbx]
 call 0x14001ee5c
 cmp al, r12b
 je 0x14000891a

0x140008909:
 add rbx, 2
 movzx ecx, word ptr [rbx]
 call 0x14001ee5c
 cmp al, r12b
 jne 0x140008909

0x14000891a:
 mov r8d, 9
 lea rdx, [0x14003cb60]
 mov rcx, rbx
 call sub_140021494
 cmp eax, r12d
 jne 0x140008940
 lea rdx, [rbx+0x12]
 mov rcx, rsi
 call sub_1400086cc

0x140008940:
 cmp word ptr [rsi+0x83ca], r12w
 je 0x140008a23
 mov r8d, 0x10
 lea rdx, [rsi+0x83ca]
 lea rcx, [rsp+0x110]
 call sub_14001efc0
 movzx ecx, word ptr [rsp+0x110]
 call 0x140021524
 mov edi, eax
 movzx ecx, word ptr [rsp+0x112]
 call 0x140021524
 cmp di, 0x49
 je 0x1400089a2
 cmp di, 0x4c
 je 0x1400089a2
 cmp di, 0x4d
 je 0x1400089a2
 cmp di, 0x53
 je 0x1400089a2
 cmp di, 0x56
 jne 0x1400089ab

0x1400089a2:
 mov word ptr [rsp+0x112], r12w

0x1400089ab:
 cmp di, 0x52
 jne 0x1400089c5
 cmp ax, di
 je 0x1400089bc
 cmp ax, 0x56
 jne 0x1400089c5

0x1400089bc:
 mov word ptr [rsp+0x114], r12w

0x1400089c5:
 lea r9, [rsp+0x110]
 lea r8, [0x14003cb40]
 mov edx, 0x20
 lea rcx, [rsp+0x130]
 call sub_140019504
 xor eax, eax
 or rcx, 0xffffffffffffffff
 lea rdi, [rsp+0x130]
 repne scasd eax, dword ptr [rdi]
 not rcx
 lea rdi, [rcx-1]
 lea r8, [rcx-1]
 lea rdx, [rsp+0x130]
 mov rcx, rbx
 call sub_140021494
 cmp eax, r12d
 jne 0x140008a23
 lea rdx, [rbx+rdi*2]
 mov rcx, rsi
 call sub_1400086cc

0x140008a23:
 lea rcx, [rsp+0x50]
 call sub_14001f5b8
 mov rbx, rax
 cmp rax, r12
 jne 0x1400088fc

0x140008a39:
 mov rcx, qword ptr [rsp+0x50]
 cmp rcx, r12
 je 0x140008a48
 call sub_14002cfac

0x140008a48:
 mov rcx, qword ptr [rsp+0x170]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x180]
 mov rbx, qword ptr [r11+0x28]
 mov rbp, qword ptr [r11+0x30]
 mov rsp, r11
 pop r12
 pop rdi
 pop rsi
 ret 
; --------------------------------------------------------------------------
; sub_140008a70
; --------------------------------------------------------------------------
sub_140008a70   proc
 push rbx
 sub rsp, 0x20
 mov ebx, edx
 mov rdx, rcx
 lea rcx, [0x140046e30]
 mov r8d, 0x800
 call sub_14001efc0
 mov dword ptr [0x140047e30], ebx
 add rsp, 0x20
 pop rbx
 ret 
sub_140008a70   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140008a9c
; --------------------------------------------------------------------------
sub_140008a9c   proc \
 arg_1 : qword ; [rsp+0x38]

 push rbx
 sub rsp, 0x20
 call qword ptr [GetStdHandle]
 mov rcx, rax
 mov rbx, rax
 call qword ptr [GetFileType]
 cmp eax, 2
 jne 0x140008acd
 lea rdx, [arg_1]
 mov rcx, rbx
 call qword ptr [GetConsoleMode]
 xor ecx, ecx
 cmp eax, ecx
 jne 0x140008ad2

0x140008acd:
 mov ecx, 0x1

0x140008ad2:
 mov al, cl
 add rsp, 0x20
 pop rbx
 ret 
sub_140008a9c   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140008adc
; --------------------------------------------------------------------------
sub_140008adc   proc
 sub rsp, 0x28
 call 0x14002e064
 xor edx, edx
 lea rcx, [rax+0x30]
 call 0x14002e048
 call 0x14002e064
 xor edx, edx
 lea rcx, [rax+0x60]
 call 0x14002e048
 mov ecx, 0xfffffff5
 call sub_140008a9c
 mov ecx, 0xfffffff4
 mov byte ptr [0x140047e3c], al
 call sub_140008a9c
 mov ecx, 0xfffffff6
 mov byte ptr [0x140047e3d], al
 call sub_140008a9c
 cmp byte ptr [0x140047e3c], 0x0
 mov byte ptr [0x140047e3e], al
 jne 0x140008b53
 call 0x14002e064
 lea rcx, [rax+0x30]
 call sub_14002e010
 mov edx, 0x20000
 mov ecx, eax
 call sub_14002deb8

0x140008b53:
 cmp byte ptr [0x140047e3d], 0x0
 jne 0x140008b76
 call 0x14002e064
 lea rcx, [rax+0x60]
 call sub_14002e010
 mov edx, 0x20000
 mov ecx, eax
 call sub_14002deb8

0x140008b76:
 add rsp, 0x28
 ret 
sub_140008adc   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140008b7c
; --------------------------------------------------------------------------
sub_140008b7c   proc
 mov dword ptr [0x140047e34], ecx
 mov dword ptr [0x140047e38], edx
 ret 
sub_140008b7c   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140008b8c
; --------------------------------------------------------------------------
sub_140008b8c   proc \
 arg_1 : qword, ; [rsp+0x68]
 arg_2 : qword, ; [rsp+0x70]
 arg_3 : qword ; [rsp+0x78]

 local local_1: qword ; [rsp+0x20]

 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 sub rsp, 0x30
 xor r12d, r12d
 mov ebx, edx
 mov rbp, rcx
 cmp edx, r12d
 je 0x140008c4f
 mov ecx, 0xfffffff6
 call qword ptr [GetStdHandle]
 mov ecx, 0xfffffff5
 mov rdi, rax
 call qword ptr [GetStdHandle]
 lea rdx, [arg_2]
 mov rcx, rdi
 mov dword ptr [arg_1], r12d
 mov rsi, rax
 call qword ptr [GetConsoleMode]
 lea rdx, [arg_3]
 mov rcx, rsi
 call qword ptr [GetConsoleMode]
 lea edx, [r12+2]
 mov rcx, rdi
 call qword ptr [SetConsoleMode]
 lea edx, [r12+3]
 mov rcx, rsi
 call qword ptr [SetConsoleMode]
 dec ebx
 lea r9, [arg_1]
 mov r8d, ebx
 mov rdx, rbp
 mov rcx, rdi
 mov qword ptr [local_1], r12
 call qword ptr [ReadConsoleW]
 mov r11d, dword ptr [arg_1]
 mov word ptr [rbp+r11*2], r12w
 mov edx, dword ptr [arg_2]
 mov rcx, rdi
 call qword ptr [SetConsoleMode]
 mov edx, dword ptr [arg_3]
 mov rcx, rsi
 call qword ptr [SetConsoleMode]
 mov rcx, rbp
 mov word ptr [rbp+rbx*2], r12w
 call sub_14001edcc

0x140008c4f:
 add rsp, 0x30
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
sub_140008b8c   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140008c5c
; --------------------------------------------------------------------------
sub_140008c5c   proc \
 arg_1 : qword ; [rsp+0x20] ; [rsp+0x888]

 local local_1[0x10]: byte ; [rsp+0x20]
 local local_2: dword ; [rsp+0x30]
 local local_3[0xc]: byte ; [rsp+0x34]
 local local_4[0x800]: byte ; [rsp+0x40]
 local local_5: dword ; [rsp+0x840]

 mov qword ptr [arg_1], rbx
 push rbp
 push rsi
 push rdi
 sub rsp, 0x850
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_5], rax
 mov rax, rdx
 mov rbx, r8
 mov rdi, rcx
 lea rdx, [local_4]
 mov r8d, 0x400
 mov rcx, rax
 call sub_14001f23c
 call 0x14002e064
 add rax, 0x30
 cmp rdi, rax
 jne 0x140008cb0
 cmp byte ptr [0x140047e3c], 0x0
 jne 0x140008ccf

0x140008cb0:
 call 0x14002e064
 add rax, 0x60
 cmp rdi, rax
 jne 0x140008d86
 cmp byte ptr [0x140047e3d], 0x0
 je 0x140008d86

0x140008ccf:
 call 0x14002e064
 add rax, 0x30
 sub rdi, rax
 neg rdi
 sbb ecx, ecx
 add ecx, -0xb
 call qword ptr [GetStdHandle]
 mov qword ptr [local_1], rbx
 lea rbx, [0x140049640]
 mov esi, 0x1800
 lea r8, [local_4]
 mov rcx, rbx
 xor r9d, r9d
 mov rdx, rsi
 mov rbp, rax
 call sub_14002d43c
 cmp dword ptr [0x140047e38], 3
 jne 0x140008d32
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, rbx
 repne scasd eax, dword ptr [rdi]
 mov rdx, rbx
 not rcx
 lea r8d, [rcx+rcx-2]
 jmp 0x140008d71

0x140008d32:
 mov r8, rsi
 lea rsi, [0x140047e40]
 mov rcx, rbx
 mov rdx, rsi
 call sub_1400210b8
 cmp dword ptr [0x140047e38], 0x1
 je 0x140008d5c
 mov rdx, rsi
 mov rcx, rsi
 call qword ptr [CharToOemA]

0x140008d5c:
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, rsi
 repne scasb al, byte ptr [rdi]
 mov rdx, rsi
 not rcx
 lea r8, [rcx-1]

0x140008d71:
 and qword ptr [local_1], rax
 lea r9, [local_2]
 mov rcx, rbp
 call qword ptr [WriteFile]
 jmp 0x140008ded

0x140008d86:
 mov qword ptr [local_1], rbx
 lea rbx, [0x140049640]
 lea r8, [local_4]
 xor r9d, r9d
 mov edx, 0x1800
 mov rcx, rbx
 call sub_14002d43c
 call 0x14002e064
 xor ecx, ecx
 add rax, 0x60
 cmp rdi, rax
 setne cl
 add ecx, -0xc
 call qword ptr [GetStdHandle]
 or rcx, 0xffffffffffffffff
 mov rdi, rbx
 mov r11, rax
 xor eax, eax
 lea r9, [local_3]
 and qword ptr [local_1], rax
 repne scasd eax, dword ptr [rdi]
 mov rdx, rbx
 not rcx
 lea r8, [rcx-1]
 mov rcx, r11
 call qword ptr [WriteConsoleW]

0x140008ded:
 mov rcx, qword ptr [local_5]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [arg_1]
 add rsp, 0x850
 pop rdi
 pop rsi
 pop rbp
 ret 
sub_140008c5c   endp
 
; --------------------------------------------------------------------------
; sub_140008e10
; --------------------------------------------------------------------------
sub_140008e10   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x38]

 mov rax, rsp
 mov qword ptr [rax+0x8], rcx
 mov qword ptr [rax+0x10], rdx
 mov qword ptr [rax+0x18], r8
 mov qword ptr [rax+0x20], r9
 push rbx
 sub rsp, 0x20
 mov eax, dword ptr [0x140047e34]
 cmp eax, 3
 je 0x140008e78
 cmp eax, 2
 je 0x140008e78
 call 0x14002e064
 lea rcx, [rax+0x60]
 call sub_14002e440
 cmp dword ptr [0x140047e34], 0x1
 lea rbx, [arg_2]
 jne 0x140008e5f
 call 0x14002e064
 add rax, 0x60
 jmp 0x140008e68

0x140008e5f:
 call 0x14002e064
 add rax, 0x30

0x140008e68:
 mov rdx, qword ptr [arg_1]
 mov r8, rbx
 mov rcx, rax
 call sub_140008c5c

0x140008e78:
 add rsp, 0x20
 pop rbx
 ret 
sub_140008e10   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140008e80
; --------------------------------------------------------------------------
sub_140008e80   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x38]

 mov rax, rsp
 mov qword ptr [rax+0x8], rcx
 mov qword ptr [rax+0x10], rdx
 mov qword ptr [rax+0x18], r8
 mov qword ptr [rax+0x20], r9
 push rbx
 sub rsp, 0x20
 cmp dword ptr [0x140047e34], 3
 je 0x140008eca
 call 0x14002e064
 lea rcx, [rax+0x30]
 call sub_14002e440
 lea rbx, [arg_2]
 call 0x14002e064
 mov rdx, qword ptr [arg_1]
 lea rcx, [rax+0x60]
 mov r8, rbx
 call sub_140008c5c

0x140008eca:
 add rsp, 0x20
 pop rbx
 ret 
sub_140008e80   endp
 

0x140008ed0:
 mov qword ptr [rsp+0x8], rbx
 mov qword ptr [rsp+0x20], rbp
 push rsi
 push rdi
 push r12
 sub rsp, 0x230
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x220], rax
 mov ebx, ecx
 mov ecx, 2
 mov rdi, r8
 mov rsi, rdx
 call sub_140020be4
 xor ebp, ebp
 mov r12d, 0x100

0x140008f11:
 cmp ebx, ebp
 jne 0x140008f2b
 mov ecx, 0xcda
 call sub_140019e20
 lea rcx, [0x14003cb88]
 mov rdx, rax
 jmp 0x140008f3b

0x140008f2b:
 mov ecx, 0xcdc
 call sub_140019e20
 mov rdx, rsi
 mov rcx, rax

0x140008f3b:
 call sub_140008e80
 lea rcx, [rsp+0x20]
 mov edx, 0x80
 call sub_140008b8c
 cmp word ptr [rsp+0x20], bp
 jne 0x140008f5e
 cmp ebx, ebp
 je 0x140008ff2

0x140008f5e:
 cmp ebx, ebp
 jne 0x140009006
 mov ecx, 0xcde
 call sub_140019e20
 mov rcx, rax
 call sub_140008e80
 lea rcx, [rsp+0x120]
 mov edx, 0x80
 call sub_140008b8c
 cmp word ptr [rsp+0x120], bp
 je 0x140008fbe
 lea rax, [rsp+0x20]
 lea rdx, [rsp+0x120]
 sub rdx, rax

0x140008fa4:
 movzx ecx, word ptr [rax]
 movzx r8d, word ptr [rax+rdx]
 sub ecx, r8d
 jne 0x140008fba
 add rax, 2
 test r8d, r8d
 jne 0x140008fa4

0x140008fba:
 cmp ecx, ebp
 je 0x140008ff6

0x140008fbe:
 mov ecx, 0xce0
 call sub_140019e20
 mov rcx, rax
 call sub_140008e80
 lea rcx, [rsp+0x20]
 mov rdx, r12
 call sub_14001cf34
 lea rcx, [rsp+0x120]
 mov rdx, r12
 call sub_14001cf34
 jmp 0x140008f11

0x140008ff2:
 xor al, al
 jmp 0x140009022

0x140008ff6:
 lea rcx, [rsp+0x120]
 mov rdx, r12
 call sub_14001cf34

0x140009006:
 lea rdx, [rsp+0x20]
 mov rcx, rdi
 call sub_14001cffc
 lea rcx, [rsp+0x20]
 mov rdx, r12
 call sub_14001cf34
 mov al, 0x1

0x140009022:
 mov rcx, qword ptr [rsp+0x220]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x230]
 mov rbx, qword ptr [r11+0x20]
 mov rbp, qword ptr [r11+0x38]
 mov rsp, r11
 pop r12
 pop rdi
 pop rsi
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000904c
; --------------------------------------------------------------------------
sub_14000904c   proc \
 arg_1 : qword ; [rsp+0x18] ; [rsp+0x880]

 local local_1[0x810]: byte ; [rsp+0x20]
 local local_2[0x810]: byte ; [rsp+0x830]

 mov qword ptr [arg_1], rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 sub rsp, 0x840
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_2], rax
 xor r12d, r12d
 mov rsi, rdx
 mov rbp, rcx
 mov rbx, r12
 cmp rdx, r12
 jbe 0x1400090cb

0x140009082:
 cmp word ptr [rbp+rbx*2], 0x1b
 jne 0x1400090c3
 cmp word ptr [rbp+rbx*2+2], 0x5b
 jne 0x1400090c3
 lea rdi, [rbx+2]
 jmp 0x1400090be

0x140009098:
 cmp word ptr [rbp+rdi*2], 0x22
 je 0x140009128
 movzx ecx, word ptr [rbp+rdi*2]
 call sub_14001ee50
 cmp al, r12b
 jne 0x1400090bb
 cmp word ptr [rbp+rdi*2], 0x3b
 jne 0x1400090c3

0x1400090bb:
 inc rdi

0x1400090be:
 cmp rdi, rsi
 jb 0x140009098

0x1400090c3:
 inc rbx
 cmp rbx, rsi
 jb 0x140009082

0x1400090cb:
 mov rdi, r12
 cmp rsi, r12
 jbe 0x14000911c
 mov r13d, 0x400

0x1400090d9:
 mov rbx, rsi
 lea rcx, [local_1]
 mov rdx, rbp
 sub rbx, rdi
 cmp rbx, r13
 cmova rbx, r13
 mov r8, rbx
 call sub_14002dc5c
 lea rdx, [local_1]
 lea rcx, [0x14003cb94]
 mov word ptr [rsp+rbx*2+0x20], r12w
 call sub_140008e10
 add rdi, r13
 add rbp, 0x800
 cmp rdi, rsi
 jb 0x1400090d9

0x14000911c:
 lea rcx, [0x14003c730]
 call sub_140008e10

0x140009128:
 mov rcx, qword ptr [local_2]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [arg_1]
 add rsp, 0x840
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
sub_14000904c   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140009150
; --------------------------------------------------------------------------
sub_140009150   proc \
 arg_1 : qword, ; [rsp+0x10] ; [rsp+0x858]
 arg_2 : qword, ; [rsp+0x18] ; [rsp+0x860]
 arg_3 : qword ; [rsp+0x20]

 local local_1[0x10]: byte ; [rsp+0x20]
 local local_2[0x800]: byte ; [rsp+0x30]
 local local_3[0x800]: byte ; [rsp+0x830]

 mov qword ptr [arg_1], rdx
 mov qword ptr [arg_2], r8
 mov qword ptr [arg_3], r9
 push rbx
 sub rsp, 0x840
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_3], rax
 lea rcx, [0x140050e70]
 call 0x14000b0ac
 xor ecx, ecx
 mov ebx, eax
 call sub_140020be4
 mov rcx, qword ptr [arg_1]
 lea rdx, [local_2]
 mov r8d, 0x400
 call sub_14001f23c
 lea r11, [arg_2]
 lea r8, [local_2]
 lea rcx, [0x14004c640]
 xor r9d, r9d
 mov edx, 0x1400
 mov qword ptr [local_1], r11
 call sub_14002d43c
 lea rdx, [0x14004c640]
 lea rcx, [0x14003cba0]
 call sub_140008e80
 lea rcx, [0x140050e70]
 mov edx, ebx
 call 0x14000b0b4
 mov rcx, qword ptr [local_3]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x840
 pop rbx
 ret 
sub_140009150   endp
 
 int3 
 int3 

0x140009208:
 push rsi
 push rdi
 push r12
 mov eax, 0x10a0
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x58], -2
 mov qword ptr [rsp+0x10d0], rbx
 mov qword ptr [rsp+0x10d8], rbp
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1090], rax
 mov rsi, rdx
 mov rdi, rcx
 call 0x14002e064
 lea rcx, [rax+0x60]
 call sub_14002e440
 xor r12d, r12d
 mov word ptr [rdi], r12w
 cmp byte ptr [0x140047e3e], r12b
 je 0x14000930b
 mov qword ptr [rsp+0x38], r12
 mov qword ptr [rsp+0x40], r12
 mov qword ptr [rsp+0x48], r12
 mov qword ptr [rsp+0x50], r12
 mov rdx, rsi
 shl rdx, 2
 lea rcx, [rsp+0x38]
 call sub_140001294
 nop 
 lea rcx, [rsp+0x60]
 call sub_14000f274
 nop 
 mov dword ptr [rsp+0x74], 0x1
 mov r8, qword ptr [rsp+0x40]
 dec r8
 mov rbx, qword ptr [rsp+0x38]
 mov rdx, rbx
 lea rcx, [rsp+0x60]
 call sub_14000fbe8
 mov ebp, eax
 cmp eax, r12d
 jg 0x1400092d8
 mov edx, 0xff
 lea rcx, [0x140050e70]
 call 0x14000b114

0x1400092d8:
 lea eax, [rbp-1]
 movsxd rcx, eax
 mov byte ptr [rcx+rbx], r12b
 mov r8, rsi
 mov rdx, rdi
 mov rcx, rbx
 call sub_14002110c
 nop 
 lea rcx, [rsp+0x60]
 call sub_14000f94c
 nop 
 cmp rbx, r12
 je 0x140009347
 mov rcx, rbx
 call sub_14002cfac
 jmp 0x140009347

0x14000930b:
 mov dword ptr [rsp+0x30], r12d
 mov ecx, 0xfffffff6
 call qword ptr [GetStdHandle]
 mov rcx, rax
 mov qword ptr [rsp+0x20], r12
 lea r9, [rsp+0x30]
 lea r8d, [rsi-1]
 mov rdx, rdi
 call qword ptr [ReadConsoleW]
 cmp eax, r12d
 jne 0x14000933e
 xor al, al
 jmp 0x140009351

0x14000933e:
 mov edx, dword ptr [rsp+0x30]
 mov word ptr [rdi+rdx*2], r12w

0x140009347:
 mov rcx, rdi
 call sub_14001edcc
 mov al, 0x1

0x140009351:
 mov rcx, qword ptr [rsp+0x1090]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x10a0]
 mov rbx, qword ptr [r11+0x30]
 mov rbp, qword ptr [r11+0x38]
 mov rsp, r11
 pop r12
 pop rdi
 pop rsi
 ret 
 int3 
 int3 
 int3 

0x14000937c:
 mov qword ptr [rsp+0x10], rbx
 mov qword ptr [rsp+0x18], rbp
 mov qword ptr [rsp+0x20], rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x410
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x400], rax
 mov rbx, rcx
 mov ecx, 2
 call sub_140020be4
 xor edi, edi
 mov r14d, edi
 mov r12, rdi
 cmp rbx, rdi
 je 0x1400094e0
 lea rsi, [rsp+0xe0]

0x1400093d3:
 lea rax, [rbx+2]
 mov r8d, 0x28
 mov rcx, rsi
 mov rdx, rax
 mov qword ptr [rsp+0x38], rax
 call sub_14001efc0
 mov edx, 0x5f
 mov rcx, rsi
 call 0x14002cf84
 cmp rax, rdi
 je 0x140009402
 mov word ptr [rax], di

0x140009402:
 movzx ebp, word ptr [rsi]
 mov eax, edi
 mov dword ptr [rsp+0x20], eax
 cmp ebp, edi
 je 0x1400094b3
 mov r13, rsi
 mov r8d, 0x1

0x14000941c:
 cmp r12, rdi
 mov rcx, rdi
 mov r15b, dil
 mov qword ptr [rsp+0x28], rcx
 jle 0x140009490
 mov rdx, rdi
 mov qword ptr [rsp+0x30], rdx

0x140009434:
 cmp r15b, dil
 jne 0x140009497
 movsxd rax, dword ptr [rsp+rcx*4+0x40]
 add rax, rdx
 movzx ecx, word ptr [rsp+rax*2+0xe0]
 call 0x140021524
 mov ecx, ebp
 mov ebx, eax
 call 0x140021524
 mov rcx, qword ptr [rsp+0x28]
 mov rdx, qword ptr [rsp+0x30]
 mov r8d, 0x1
 cmp ebx, eax
 movzx r15d, r15b
 cmove r15d, r8d
 add rcx, r8
 add rdx, 0x28
 cmp rcx, r12
 mov qword ptr [rsp+0x28], rcx
 mov qword ptr [rsp+0x30], rdx
 jl 0x140009434
 mov eax, dword ptr [rsp+0x20]
 cmp r15b, dil
 jne 0x14000949b

0x140009490:
 cmp ebp, 0x20
 jne 0x1400094b3
 jmp 0x14000949b

0x140009497:
 mov eax, dword ptr [rsp+0x20]

0x14000949b:
 add r13, 2
 add eax, r8d
 movzx ebp, word ptr [r13]
 mov dword ptr [rsp+0x20], eax
 cmp ebp, edi
 jne 0x14000941c

0x1400094b3:
 mov rcx, qword ptr [rsp+0x38]
 mov ebp, 0x1
 mov dword ptr [rsp+r12*4+0x40], eax
 lea edx, [rbp+0x5e]
 add r14d, ebp
 add r12, rbp
 add rsi, 0x50
 call 0x14002cf84
 mov rbx, rax
 cmp rax, rdi
 jne 0x1400093d3

0x1400094e0:
 movsxd rbx, r14d
 mov r13d, edi
 mov r15, rdi
 cmp rbx, rdi
 jle 0x1400095c1
 lea rax, [0x14003c730]
 lea rbp, [0x14003cbf0]
 lea rsi, [rsp+0xe0]
 cmp r14d, 4
 mov r12, rdi
 mov qword ptr [rsp+0x28], rdi
 cmovg rbp, rax
 mov qword ptr [rsp+0x30], rsi

0x14000951d:
 lea rcx, [0x14003cbe8]
 cmp r13d, edi
 cmove rcx, rbp
 call sub_140008e80
 movsxd rax, dword ptr [rsp+r15*4+0x40]
 cmp rax, rdi
 mov r14, rax
 jle 0x140009563
 mov r12, rax

0x140009540:
 movzx edx, word ptr [rsi]
 lea rcx, [0x14003cbe0]
 call sub_140008e80
 add rsi, 2
 sub r12, 0x1
 jne 0x140009540
 mov rsi, qword ptr [rsp+0x30]
 mov r12, qword ptr [rsp+0x28]

0x140009563:
 movsxd rax, r13d
 lea rdx, [rax+rax*4]
 mov eax, dword ptr [rsp+r15*4+0x40]
 inc eax
 movsxd rcx, eax
 lea rax, [rcx+rdx*8]
 lea rcx, [0x14003cbd0]
 lea r8, [rsp+rax*2+0xe0]
 lea rax, [r12+r14]
 movzx edx, word ptr [rsp+rax*2+0xe0]
 call sub_140008e80
 mov r14d, 0x1
 add rsi, 0x50
 add r12, 0x28
 add r15, r14
 add r13d, r14d
 cmp r15, rbx
 mov qword ptr [rsp+0x30], rsi
 mov qword ptr [rsp+0x28], r12
 jl 0x14000951d
 jmp 0x1400095c7

0x1400095c1:
 mov r14d, 0x1

0x1400095c7:
 lea rcx, [0x14003cbf0]
 call sub_140008e80
 lea rcx, [rsp+0x70]
 mov edx, 0x32
 call 0x140009208
 movzx ecx, word ptr [rsp+0x70]
 call 0x140021524
 cmp rbx, rdi
 mov rdx, rdi
 jle 0x140009618
 mov r8, rdi

0x1400095f7:
 movsxd rcx, dword ptr [rsp+rdx*4+0x40]
 add rcx, r8
 cmp ax, word ptr [rsp+rcx*2+0xe0]
 je 0x14000964b
 add rdx, r14
 add edi, r14d
 add r8, 0x28
 cmp rdx, rbx
 jl 0x1400095f7

0x140009618:
 xor eax, eax

0x14000961a:
 mov rcx, qword ptr [rsp+0x400]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x410]
 mov rbx, qword ptr [r11+0x38]
 mov rbp, qword ptr [r11+0x40]
 mov rsi, qword ptr [r11+0x48]
 mov rsp, r11
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 ret 

0x14000964b:
 lea eax, [rdi+1]
 jmp 0x14000961a
; --------------------------------------------------------------------------
; sub_140009650
; --------------------------------------------------------------------------
sub_140009650   proc
 cmp dword ptr [rcx+4], 0x0
 mov r8, rcx
 jne 0x140009697
 xor r9d, r9d

0x14000965c:
 mov r10d, r9d
 mov r11d, 8

0x140009665:
 mov edx, r10d
 mov ecx, r10d
 shr edx, 0x1
 mov eax, edx
 mov r10d, edx
 xor eax, 0xedb88320
 and cl, 0x1
 cmovne r10d, eax
 sub r11, 0x1
 jne 0x140009665
 inc r9d
 mov dword ptr [r8], r10d
 add r8, 4
 cmp r9d, 0x100
 jb 0x14000965c

0x140009697:
 ret 
sub_140009650   endp
 
 int3 
 int3 
 int3 

0x14000969c:
 mov qword ptr [rsp+0x8], rbx
 push rdi
 sub rsp, 0x20
 mov rbx, rcx
 lea rdi, [0x14004ee40]
 mov rcx, rdi
 call sub_140009650
 lea r11, [0x14004f240]
 mov edx, 0x100

0x1400096c4:
 mov r8d, dword ptr [r11-0x400]
 mov r9, r11
 mov r10d, 7

0x1400096d4:
 mov eax, r8d
 movzx ecx, r8b
 mov r8d, dword ptr [rdi+rcx*4]
 shr eax, 8
 xor r8d, eax
 mov dword ptr [r9], r8d
 add r9, 0x400
 sub r10, 0x1
 jne 0x1400096d4
 add r11, 4
 sub rdx, 0x1
 jne 0x1400096c4
 mov rax, rbx
 mov rbx, qword ptr [rsp+0x30]
 add rsp, 0x20
 pop rdi
 ret 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140009710
; --------------------------------------------------------------------------
sub_140009710   proc \
 arg_1 : qword, ; [rsp+0x8]
 arg_2 : qword, ; [rsp+0x10]
 arg_3 : qword ; [rsp+0x18]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 mov qword ptr [arg_3], rdi
 mov r10, r8
 mov rbx, rdx
 mov r11d, ecx
 lea rsi, [0x14004ee40]
 test r8, r8
 je 0x140009759

0x140009734:
 test bl, 7
 je 0x140009759
 movzx ecx, byte ptr [rbx]
 movzx eax, r11b
 inc rbx
 xor rcx, rax
 mov eax, r11d
 mov r11d, dword ptr [rsi+rcx*4]
 shr eax, 8
 xor r11d, eax
 sub r10, 0x1
 jne 0x140009734

0x140009759:
 cmp r10, 8
 jb 0x140009806
 mov rdi, r10
 shr rdi, 3
 mov rax, rdi
 imul rax, rax, -8
 add r10, rax

0x140009774:
 xor r11d, dword ptr [rbx]
 mov r9d, dword ptr [rbx+4]
 add rbx, 8
 mov eax, r9d
 shr eax, 0x10
 movzx edx, al
 mov eax, r9d
 mov r8d, dword ptr [rsi+rdx*4+0x400]
 shr eax, 0x18
 movzx ecx, al
 mov eax, r9d
 xor r8d, dword ptr [rsi+rcx*4]
 shr eax, 8
 movzx ecx, al
 mov eax, r11d
 xor r8d, dword ptr [rsi+rcx*4+0x800]
 shr eax, 0x18
 movzx ecx, al
 mov eax, r11d
 xor r8d, dword ptr [rsi+rcx*4+0x1000]
 shr eax, 0x10
 movzx ecx, al
 mov eax, r11d
 xor r8d, dword ptr [rsi+rcx*4+0x1400]
 shr eax, 8
 movzx ecx, al
 movzx eax, r9b
 xor r8d, dword ptr [rsi+rcx*4+0x1800]
 xor r8d, dword ptr [rsi+rax*4+0xc00]
 movzx eax, r11b
 mov r11d, r8d
 xor r11d, dword ptr [rsi+rax*4+0x1c00]
 sub rdi, 0x1
 jne 0x140009774

0x140009806:
 test r10, r10
 je 0x14000982b

0x14000980b:
 movzx ecx, byte ptr [rbx]
 movzx eax, r11b
 inc rbx
 xor rcx, rax
 mov eax, r11d
 mov r11d, dword ptr [rsi+rcx*4]
 shr eax, 8
 xor r11d, eax
 sub r10, 0x1
 jne 0x14000980b

0x14000982b:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 mov rdi, qword ptr [arg_3]
 mov eax, r11d
 ret 
sub_140009710   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140009840
; --------------------------------------------------------------------------
sub_140009840   proc
 xor r9d, r9d
 cmp r8, r9
 jbe 0x14000985b

0x140009848:
 movzx eax, byte ptr [r9+rdx]
 inc r9
 add cx, ax
 rol cx, 0x1
 cmp r9, r8
 jb 0x140009848

0x14000985b:
 mov ax, cx
 ret 
sub_140009840   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140009860
; --------------------------------------------------------------------------
sub_140009860   proc
 xor r8d, r8d
 mov byte ptr [rcx+0x10b6], r8b
 mov byte ptr [rcx+0x10b5], r8b
 mov byte ptr [rcx+0x10b4], r8b
 jmp 0x140009897

0x14000987a:
 add byte ptr [rcx+0x10b4], al
 xor byte ptr [rcx+0x10b5], al
 add al, byte ptr [rcx+0x10b6]
 rol al, 0x1
 inc rdx
 mov byte ptr [rcx+0x10b6], al

0x140009897:
 mov al, byte ptr [rdx]
 cmp al, r8b
 jne 0x14000987a
 ret 
sub_140009860   endp
 
; --------------------------------------------------------------------------
; sub_1400098a0
; --------------------------------------------------------------------------
sub_1400098a0   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 mov rbx, rcx
 add rcx, 0xba4
 mov rsi, rdx
 call sub_140009650
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, rsi
 mov rdx, rsi
 repne scasb al, byte ptr [rdi]
 not rcx
 lea r8, [rcx-1]
 or ecx, 0xffffffff
 call sub_140009710
 mov word ptr [rbx+0x10b8], ax
 shr eax, 0x10
 xor edi, edi
 mov word ptr [rbx+0x10be], di
 mov word ptr [rbx+0x10bc], di
 mov word ptr [rbx+0x10ba], ax
 jmp 0x140009935

0x140009901:
 movzx edx, al
 movzx ecx, al
 movzx eax, word ptr [rbx+rdx*4+0xba4]
 xor ax, word ptr [rbx+0x10bc]
 xor ax, cx
 mov word ptr [rbx+0x10bc], ax
 movzx eax, word ptr [rbx+rdx*4+0xba6]
 add ax, cx
 add word ptr [rbx+0x10be], ax
 inc rsi

0x140009935:
 mov al, byte ptr [rsi]
 cmp al, dil
 jne 0x140009901
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_1400098a0   endp
 

0x14000994c:
 mov dword ptr [rcx+0xa98], 0x1
 mov byte ptr [rcx+0x10b4], 0x0
 mov byte ptr [rcx+0x10b5], 7
 mov byte ptr [rcx+0x10b6], 0x4d
 ret 
; --------------------------------------------------------------------------
; sub_14000996c
; --------------------------------------------------------------------------
sub_14000996c   proc
 test r8, r8
 je 0x14000999a

0x140009971:
 mov al, byte ptr [rcx+0x10b6]
 add byte ptr [rcx+0x10b5], al
 mov al, byte ptr [rcx+0x10b5]
 add byte ptr [rcx+0x10b4], al
 mov al, byte ptr [rcx+0x10b4]
 sub byte ptr [rdx], al
 inc rdx
 sub r8, 0x1
 jne 0x140009971

0x14000999a:
 ret 
sub_14000996c   endp
 
; --------------------------------------------------------------------------
; sub_14000999c
; --------------------------------------------------------------------------
sub_14000999c   proc
 mov r10, rdx
 mov r9, rcx
 test r8, r8
 je 0x140009a4e

0x1400099ab:
 mov eax, 0x1234
 add word ptr [r9+0x10b8], ax
 mov dx, word ptr [r9+0x10b8]
 mov rax, rdx
 shr rax, 0x1
 movzx eax, al
 movzx ecx, word ptr [r9+rax*4+0xba4]
 mov rax, rdx
 xor word ptr [r9+0x10ba], cx
 shr rax, 0x1
 movzx eax, al
 movzx ecx, word ptr [r9+rax*4+0xba6]
 sub word ptr [r9+0x10bc], cx
 movzx eax, word ptr [r9+0x10bc]
 mov ecx, 0x1
 xor ax, dx
 mov word ptr [r9+0x10b8], ax
 movzx eax, word ptr [r9+0x10be]
 ror ax, cl
 xor ax, word ptr [r9+0x10ba]
 ror ax, cl
 xor word ptr [r9+0x10b8], ax
 mov word ptr [r9+0x10be], ax
 movzx eax, word ptr [r9+0x10b8]
 shr ax, 8
 xor byte ptr [r10], al
 inc r10
 sub r8, 0x1
 jne 0x1400099ab

0x140009a4e:
 ret 
sub_14000999c   endp
 
; --------------------------------------------------------------------------
; sub_140009a50
; --------------------------------------------------------------------------
sub_140009a50   proc
 mov r8, rcx
 lea r9, [rdx+1]
 mov r10d, 4

0x140009a5d:
 movzx eax, byte ptr [r9-1]
 mov edx, dword ptr [r8+rax*4+0xba4]
 xor dword ptr [r8+0x10a4], edx
 movzx eax, byte ptr [r9]
 add r9, 4
 mov ecx, dword ptr [r8+rax*4+0xba4]
 xor dword ptr [r8+0x10a8], ecx
 movzx eax, byte ptr [r9-3]
 mov ecx, dword ptr [r8+rax*4+0xba4]
 xor dword ptr [r8+0x10ac], ecx
 movzx eax, byte ptr [r9-2]
 mov ecx, dword ptr [r8+rax*4+0xba4]
 xor dword ptr [r8+0x10b0], ecx
 sub r10, 0x1
 jne 0x140009a5d
 ret 
sub_140009a50   endp
 

0x140009ab8:
 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x2f8
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x2e0], rax
 mov rbp, qword ptr [rsp+0x360]
 mov r13, r9
 mov r14, r8
 mov r15b, dl
 mov rbx, rcx
 xor edi, edi
 lea rsi, [rcx+0x12a]

0x140009afb:
 mov r12d, edi
 mov rdx, r14
 imul r12, r12, 0x12c
 add r12, rbx
 mov rcx, r12
 call sub_14001d05c
 test al, al
 je 0x140009b38
 test rbp, rbp
 jne 0x140009b21
 cmp byte ptr [rsi], bpl
 jmp 0x140009b32

0x140009b21:
 cmp byte ptr [rsi], 0x0
 je 0x140009b38
 mov rax, qword ptr [r12+0x102]
 cmp rax, qword ptr [rbp]

0x140009b32:
 je 0x140009da6

0x140009b38:
 inc edi
 add rsi, 0x12c
 cmp edi, 4
 jb 0x140009afb
 lea rdx, [rsp+0x1d0]
 mov r8d, 0x108
 mov rcx, r13
 call sub_140021160
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, r13
 repne scasd eax, dword ptr [rdi]
 not rcx
 lea rdi, [rcx-1]
 add rdi, rdi
 test rbp, rbp
 je 0x140009b87
 mov rax, qword ptr [rbp]
 add rdi, 8
 mov qword ptr [rsp+rdi+0x1c8], rax

0x140009b87:
 lea rcx, [rsp+0x70]
 call sub_14001e608
 xor esi, esi
 mov r13d, 0x3fff

0x140009b99:
 lea rdx, [rsp+0x1d0]
 lea rcx, [rsp+0x70]
 xor r9d, r9d
 mov r8, rdi
 call sub_14001e634
 mov eax, esi
 xor r9d, r9d
 sar eax, 8
 lea rdx, [rsp+0x30]
 lea rcx, [rsp+0x70]
 mov byte ptr [rsp+0x31], al
 mov eax, esi
 lea r8d, [r9+3]
 sar eax, 0x10
 mov byte ptr [rsp+0x30], sil
 mov byte ptr [rsp+0x32], al
 call sub_14001e634
 mov eax, esi
 cdq 
 and edx, r13d
 add eax, edx
 mov r12d, eax
 and eax, r13d
 sar r12d, 0xe
 cmp eax, edx
 jne 0x140009c2f
 lea rcx, [rsp+0x110]
 lea rdx, [rsp+0x70]
 mov r8d, 0x9c
 call 0x14002d490
 lea rdx, [rsp+0x38]
 lea rcx, [rsp+0x110]
 xor r8d, r8d
 call sub_14001e720
 mov al, byte ptr [rsp+0x48]
 movsxd rdx, r12d
 mov byte ptr [rsp+rdx+0x1c0], al

0x140009c2f:
 inc esi
 cmp esi, 0x40000
 jl 0x140009b99
 lea rdx, [rsp+0x50]
 lea rcx, [rsp+0x70]
 xor r8d, r8d
 call sub_14001e720
 xor edx, edx

0x140009c51:
 lea rdi, [rsp+rdx+0x1b0]
 xor ecx, ecx

0x140009c5b:
 mov eax, dword ptr [rsp+rdx+0x50]
 shr eax, cl
 add ecx, 8
 mov byte ptr [rdi], al
 inc rdi
 cmp ecx, 0x20
 jl 0x140009c5b
 add rdx, 4
 cmp rdx, 0x10
 jl 0x140009c51
 mov ecx, dword ptr [rbx+0x4b0]
 mov rdx, r14
 mov r8d, 0x102
 imul rcx, rcx, 0x12c
 add rcx, rbx
 call 0x14002d490
 mov eax, dword ptr [rbx+0x4b0]
 test rbp, rbp
 setne cl
 imul rax, rax, 0x12c
 mov byte ptr [rax+rbx+0x12a], cl
 mov ecx, dword ptr [rbx+0x4b0]
 imul rcx, rcx, 0x12c
 cmp byte ptr [rcx+rbx+0x12a], 0x1
 jne 0x140009cd3
 mov rax, qword ptr [rbp]
 mov qword ptr [rcx+rbx+0x102], rax

0x140009cd3:
 mov eax, dword ptr [rbx+0x4b0]
 movdqu xmm0, xmmword ptr [rsp+0x1b0]
 lea rcx, [rsp+0x1d0]
 mov edx, 0x108
 imul rax, rax, 0x12c
 movdqu xmmword ptr [rax+rbx+0x10a], xmm0
 mov eax, dword ptr [rbx+0x4b0]
 movdqu xmm0, xmmword ptr [rsp+0x1c0]
 imul rax, rax, 0x12c
 movdqu xmmword ptr [rax+rbx+0x11a], xmm0
 mov eax, dword ptr [rbx+0x4b0]
 inc eax
 and eax, 3
 mov dword ptr [rbx+0x4b0], eax
 call sub_14001cf34

0x140009d34:
 lea rax, [rsp+0x1c0]
 lea rcx, [rbx+0xa9c]
 lea r8, [rsp+0x1b0]
 mov r9d, 0x80
 mov dl, r15b
 mov qword ptr [rsp+0x20], rax
 call sub_14001a750
 lea rcx, [rsp+0x1b0]
 mov edx, 0x10
 call sub_14001cf34
 lea rcx, [rsp+0x1c0]
 mov edx, 0x10
 call sub_14001cf34
 mov rcx, qword ptr [rsp+0x2e0]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x2f8
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 

0x140009da6:
 mov eax, edi
 imul rax, rax, 0x12c
 movdqu xmm0, xmmword ptr [rax+rbx+0x10a]
 movdqu xmm1, xmmword ptr [rax+rbx+0x11a]
 movdqu xmmword ptr [rsp+0x1b0], xmm0
 movdqu xmmword ptr [rsp+0x1c0], xmm1
 jmp 0x140009d34
; --------------------------------------------------------------------------
; sub_140009dd8
; --------------------------------------------------------------------------
sub_140009dd8   proc \
 arg_1 : qword ; [rsp+0x260]

 local local_1[0x70]: byte ; [rsp+0x20]
 local local_2[0x70]: byte ; [rsp+0x90]
 local local_3[0x70]: byte ; [rsp+0x100]
 local local_4[0x40]: byte ; [rsp+0x170]
 local local_5[0x20]: byte ; [rsp+0x1b0]
 local local_6[0x20]: byte ; [rsp+0x1d0]
 local local_7[0x70]: byte ; [rsp+0x1f0]

 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 sub rsp, 0x200
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_7], rax
 mov rbp, qword ptr [arg_1]
 mov r14d, 0x40
 mov r13, r9
 mov r12, r8
 mov rbx, rdx
 mov rsi, rcx
 cmp rdx, r14
 jbe 0x140009e5c
 lea rcx, [local_3]
 call sub_14001e8a0
 lea rcx, [local_3]
 mov r8, rbx
 mov rdx, rsi
 call 0x14001eb2c
 lea rdx, [local_5]
 lea rcx, [local_3]
 call 0x14001ebf0
 lea rsi, [local_5]
 lea ebx, [r14-0x20]

0x140009e5c:
 xor edi, edi
 mov dl, 0x36
 mov r8, rdi
 cmp rbx, rdi
 jbe 0x140009e8e
 lea rax, [local_4]
 mov r9, rsi
 sub r9, rax

0x140009e76:
 lea rcx, [rsp+r8+0x170]
 inc r8
 mov al, byte ptr [r9+rcx]
 xor al, dl
 mov byte ptr [rcx], al
 cmp r8, rbx
 jb 0x140009e76

0x140009e8e:
 cmp rbx, r14
 jae 0x140009ea6
 mov r8, r14
 lea rcx, [rsp+rbx+0x170]
 sub r8, rbx
 call 0x14002d190

0x140009ea6:
 lea rcx, [local_1]
 call sub_14001e8a0
 lea rdx, [local_4]
 lea rcx, [local_1]
 mov r8, r14
 call 0x14001eb2c
 lea rcx, [local_1]
 mov r8, r13
 mov rdx, r12
 call 0x14001eb2c
 lea rdx, [local_6]
 lea rcx, [local_1]
 call 0x14001ebf0
 lea rcx, [local_2]
 call sub_14001e8a0
 mov dl, 0x5c
 cmp rbx, rdi
 jbe 0x140009f1d
 lea rax, [local_4]
 sub rsi, rax

0x140009f06:
 lea rcx, [rsp+rdi+0x170]
 inc rdi
 mov al, byte ptr [rsi+rcx]
 xor al, dl
 mov byte ptr [rcx], al
 cmp rdi, rbx
 jb 0x140009f06

0x140009f1d:
 cmp rbx, r14
 jae 0x140009f35
 mov r8, r14
 lea rcx, [rsp+rbx+0x170]
 sub r8, rbx
 call 0x14002d190

0x140009f35:
 lea rdx, [local_4]
 lea rcx, [local_2]
 mov r8, r14
 call 0x14001eb2c
 lea rdx, [local_6]
 lea rcx, [local_2]
 mov r8d, 0x20
 call 0x14001eb2c
 lea rcx, [local_2]
 mov rdx, rbp
 call 0x14001ebf0
 mov rcx, qword ptr [local_7]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x200
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
sub_140009dd8   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140009f9c
; --------------------------------------------------------------------------
sub_140009f9c   proc \
 arg_1 : qword, ; [rsp+0x180]
 arg_2 : qword, ; [rsp+0x188]
 arg_3 : qword, ; [rsp+0x190]
 arg_4 : dword ; [rsp+0x198]

 local local_1[0x10]: byte ; [rsp+0x20]
 local local_2: dword ; [rsp+0x30]
 local local_3: dword ; [rsp+0x34]
 local local_4: qword ; [rsp+0x38]
 local local_5: qword ; [rsp+0x40]
 local local_6: qword ; [rsp+0x48]
 local local_7: qword ; [rsp+0x50]
 local local_8[0x20]: byte ; [rsp+0x58]
 local local_9[0x28]: byte ; [rsp+0x78]
 local local_10[0x50]: byte ; [rsp+0xa0]
 local local_11[0x20]: byte ; [rsp+0xf0]
 local local_12[0x20]: byte ; [rsp+0x110]

 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 sub rsp, 0x120
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_12], rax
 mov rdi, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 mov rbp, qword ptr [arg_3]
 mov rax, r8
 mov r8d, 0x40
 mov r12, rcx
 cmp r9, r8
 mov r13, rdx
 lea rcx, [local_10]
 cmovb r8, r9
 mov rdx, rax
 mov rbx, r9
 call 0x14002d490
 lea rax, [local_8]
 lea r9, [rbx+4]
 lea r8, [local_10]
 mov rdx, r13
 mov rcx, r12
 mov qword ptr [local_1], rax
 mov byte ptr [rsp+rbx+0xa0], 0x0
 mov byte ptr [rsp+rbx+0xa1], 0x0
 mov byte ptr [rsp+rbx+0xa2], 0x0
 mov byte ptr [rsp+rbx+0xa3], 0x1
 call sub_140009dd8
 mov r14d, 0x20
 lea rcx, [local_9]
 lea rdx, [local_8]
 mov r8, r14
 call 0x14002d490
 mov r11d, dword ptr [arg_4]
 lea eax, [r14-0x10]
 dec r11d
 mov qword ptr [local_5], rdi
 mov qword ptr [local_6], rsi
 mov qword ptr [local_7], rbp
 mov dword ptr [local_3], eax
 mov dword ptr [local_4], eax
 mov dword ptr [local_2], r11d
 lea rsi, [local_5]
 lea rdi, [local_2]
 lea ebp, [rax-0xd]

0x14000a092:
 cmp dword ptr [rdi], 0x0
 jbe 0x14000a0ed
 mov ebx, dword ptr [rdi]

0x14000a099:
 lea rax, [local_11]
 lea r8, [local_8]
 mov r9, r14
 mov rdx, r13
 mov rcx, r12
 mov qword ptr [local_1], rax
 call sub_140009dd8
 lea rcx, [local_8]
 lea rdx, [local_11]
 mov r8, r14
 call 0x14002d490
 xor r11d, r11d
 mov rcx, r14

0x14000a0d4:
 mov al, byte ptr [rsp+r11+0x58]
 inc r11
 xor byte ptr [rsp+r11+0x77], al
 sub rcx, 0x1
 jne 0x14000a0d4
 sub rbx, 0x1
 jne 0x14000a099

0x14000a0ed:
 mov rcx, qword ptr [rsi]
 lea rdx, [local_9]
 mov r8, r14
 call 0x14002d490
 add rdi, 4
 add rsi, 8
 sub rbp, 0x1
 jne 0x14000a092
 lea edx, [rbp+0x44]
 lea rcx, [local_10]
 call sub_14001cf34
 lea rcx, [local_9]
 mov rdx, r14
 call sub_14001cf34
 lea rcx, [local_8]
 mov rdx, r14
 call sub_14001cf34
 lea rcx, [local_11]
 mov rdx, r14
 call sub_14001cf34
 mov rcx, qword ptr [local_12]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x120
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
sub_140009f9c   endp
 
 int3 

0x14000a168:
 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x2d8
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x2c0], rax
 mov r12d, dword ptr [rsp+0x350]
 mov rax, qword ptr [rsp+0x340]
 mov r15, qword ptr [rsp+0x348]
 mov r13, qword ptr [rsp+0x358]
 mov rbp, qword ptr [rsp+0x360]
 mov qword ptr [rsp+0x58], r9
 mov qword ptr [rsp+0x48], r8
 mov byte ptr [rsp+0x40], dl
 mov r14, rcx
 mov qword ptr [rsp+0x50], rax
 cmp r12d, 0x18
 ja 0x14000a3fb
 xor esi, esi
 lea rbx, [rcx+0x4b4]

0x14000a1df:
 cmp dword ptr [rbx+0x134], r12d
 jne 0x14000a22b
 mov rdx, r8
 mov rcx, rbx
 call sub_14001d05c
 test al, al
 je 0x14000a226
 mov rax, qword ptr [rsp+0x50]
 mov rcx, qword ptr [rbx+0x102]
 cmp rcx, qword ptr [rax]
 jne 0x14000a219
 mov rcx, qword ptr [rbx+0x10a]
 cmp rcx, qword ptr [rax+0x8]
 jne 0x14000a219
 xor eax, eax
 jmp 0x14000a21e

0x14000a219:
 sbb eax, eax
 sbb eax, -1

0x14000a21e:
 test eax, eax
 je 0x14000a41f

0x14000a226:
 mov r8, qword ptr [rsp+0x48]

0x14000a22b:
 inc esi
 add rbx, 0x178
 cmp esi, 4
 jb 0x14000a1df
 mov rcx, qword ptr [rsp+0x58]
 mov ebx, 0x200
 lea rdx, [rsp+0xc0]
 mov r8, rbx
 call sub_1400211cc
 xor eax, eax
 mov ecx, r12d
 mov r8d, 0x1
 lea rdi, [rsp+0xc0]
 mov r9d, 0x10
 shl r8d, cl
 or rcx, 0xffffffffffffffff
 repne scasb al, byte ptr [rdi]
 mov rdi, qword ptr [rsp+0x50]
 mov dword ptr [rsp+0x38], r8d
 not rcx
 lea rax, [rsp+0x80]
 mov r8, rdi
 mov qword ptr [rsp+0x30], rax
 lea rax, [rsp+0xa0]
 lea rdx, [rcx-1]
 mov qword ptr [rsp+0x28], rax
 lea rax, [rsp+0x60]
 lea rcx, [rsp+0xc0]
 mov qword ptr [rsp+0x20], rax
 call sub_140009f9c
 lea rcx, [rsp+0xc0]
 mov rdx, rbx
 call sub_14001cf34
 mov ecx, dword ptr [r14+0xa94]
 mov rdx, qword ptr [rsp+0x48]
 mov rax, rcx
 mov r8d, 0x102
 and eax, 3
 imul rax, rax, 0x178
 lea rbx, [rax+r14+0x4b4]
 lea eax, [rcx+1]
 mov dword ptr [r14+0xa94], eax
 mov rcx, rbx
 mov dword ptr [rbx+0x134], r12d
 call 0x14002d490
 mov esi, 0x20
 lea rcx, [rbx+0x112]
 movdqu xmm5, xmmword ptr [rdi]
 lea rdx, [rsp+0x60]
 mov r8, rsi
 movdqu xmmword ptr [rbx+0x102], xmm5
 call 0x14002d490
 lea rcx, [rbx+0x138]
 lea rdx, [rsp+0x80]
 mov r8, rsi
 call 0x14002d490
 lea rcx, [rbx+0x158]
 lea rdx, [rsp+0xa0]
 mov r8, rsi
 call 0x14002d490
 lea rcx, [rbx+0x112]
 xor r9d, r9d
 mov r8b, 0x1
 mov rdx, rsi
 call sub_14001cde0

0x14000a372:
 test r13, r13
 je 0x14000a38a
 lea rdx, [rsp+0xa0]
 mov rcx, r13
 mov r8, rsi
 call 0x14002d490

0x14000a38a:
 test rbp, rbp
 je 0x14000a3c9
 xor eax, eax
 lea rdi, [rsp+0x80]
 mov r8, rsi
 mov qword ptr [rbp], rax
 xor edx, edx

0x14000a3a2:
 mov al, byte ptr [rdi]
 mov rcx, rdx
 inc rdx
 and ecx, 7
 inc rdi
 xor byte ptr [rcx+rbp], al
 sub r8, 0x1
 jne 0x14000a3a2
 lea rcx, [rsp+0x80]
 mov rdx, rsi
 call sub_14001cf34

0x14000a3c9:
 test r15, r15
 je 0x14000a3ee
 mov dl, byte ptr [rsp+0x40]
 lea rcx, [r14+0xa9c]
 lea r8, [rsp+0x60]
 mov r9d, 0x100
 mov qword ptr [rsp+0x20], r15
 call sub_14001a750

0x14000a3ee:
 lea rcx, [rsp+0x60]
 mov rdx, rsi
 call sub_14001cf34

0x14000a3fb:
 mov rcx, qword ptr [rsp+0x2c0]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x2d8
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 

0x14000a41f:
 xor r9d, r9d
 lea rcx, [rbx+0x112]
 xor r8d, r8d
 lea esi, [r9+0x20]
 mov rdx, rsi
 call sub_14001cde0
 lea rcx, [rsp+0x60]
 lea rdx, [rbx+0x112]
 mov r8, rsi
 call 0x14002d490
 lea rcx, [rbx+0x112]
 xor r9d, r9d
 mov r8b, 0x1
 mov rdx, rsi
 call sub_14001cde0
 lea rcx, [rsp+0x80]
 lea rdx, [rbx+0x138]
 mov r8, rsi
 call 0x14002d490
 lea rcx, [rsp+0xa0]
 lea rdx, [rbx+0x158]
 mov r8, rsi
 call 0x14002d490
 jmp 0x14000a372

0x14000a494:
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 call sub_14001d108
 mov rax, rbx
 add rsp, 0x20
 pop rbx
 ret 
 int3 

0x14000a4ac:
 jmp sub_14001d130
 int3 
 int3 
 int3 

0x14000a4b4:
 mov qword ptr [rsp+0x8], rcx
 push rdi
 sub rsp, 0x30
 mov qword ptr [rsp+0x20], -2
 mov qword ptr [rsp+0x48], rbx
 mov rdi, rcx
 mov edx, 0x4b0
 call sub_14001cf34
 mov edx, 0x5e0
 lea rcx, [rdi+0x4b4]
 call sub_14001cf34
 nop 
 lea r9, [0x14000a4ac]
 mov edx, 0x178
 mov r8d, 4
 lea rcx, [rdi+0x4b4]
 call sub_14002e4dc
 nop 
 lea r9, [0x14000a4ac]
 mov edx, 0x12c
 mov r8d, 4
 mov rcx, rdi
 mov rbx, qword ptr [rsp+0x48]
 add rsp, 0x30
 pop rdi
 jmp sub_14002e4dc
 int3 
 int3 

0x14000a530:
 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 push r13
 push r14
 sub rsp, 0x20
 mov ebx, dword ptr [rcx+0x10a4]
 mov r11d, dword ptr [rcx+0x10a8]
 mov esi, dword ptr [rdx+0x8]
 mov ebp, dword ptr [rdx+0xc]
 xor r11d, dword ptr [rdx+4]
 xor esi, dword ptr [rcx+0x10ac]
 xor ebp, dword ptr [rcx+0x10b0]
 mov edi, ebx
 mov r9, rdx
 xor edi, dword ptr [rdx]
 xor r13d, r13d
 mov r10, rcx
 lea r14d, [r13+0x20]

0x14000a581:
 mov rax, r13
 mov edx, ebp
 inc r13
 and eax, 3
 rol edx, 0xb
 mov r8d, dword ptr [r10+rax*4+0x10a4]
 add edx, esi
 xor edx, r8d
 mov eax, edx
 shr eax, 0x10
 movzx eax, al
 movzx r12d, byte ptr [rax+r10+0xfa4]
 mov eax, edx
 shr eax, 0x18
 movzx ecx, byte ptr [rax+r10+0xfa4]
 mov eax, edx
 shr eax, 8
 shl ecx, 8
 movzx eax, al
 or r12d, ecx
 movzx ecx, dl
 movzx eax, byte ptr [rax+r10+0xfa4]
 shl r12d, 8
 mov edx, esi
 or r12d, eax
 movzx eax, byte ptr [rcx+r10+0xfa4]
 shl r12d, 8
 or r12d, eax
 xor r12d, edi
 ror edx, 0xf
 mov edi, esi
 xor edx, ebp
 mov esi, r12d
 add edx, r8d
 mov eax, edx
 shr eax, 0x10
 movzx eax, al
 movzx r8d, byte ptr [rax+r10+0xfa4]
 mov eax, edx
 shr eax, 0x18
 movzx ecx, byte ptr [rax+r10+0xfa4]
 mov eax, edx
 shr eax, 8
 shl ecx, 8
 or r8d, ecx
 movzx eax, al
 movzx ecx, dl
 movzx eax, byte ptr [rax+r10+0xfa4]
 shl r8d, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+r10+0xfa4]
 shl r8d, 8
 or r8d, eax
 xor r8d, r11d
 sub r14, 0x1
 mov r11d, ebp
 mov ebp, r8d
 jne 0x14000a581
 xor ebx, r12d
 mov rdx, r9
 mov rcx, r10
 mov dword ptr [r9], ebx
 mov eax, dword ptr [r10+0x10a8]
 xor eax, r8d
 mov dword ptr [r9+4], eax
 mov eax, dword ptr [r10+0x10ac]
 xor eax, edi
 mov dword ptr [r9+0x8], eax
 xor r11d, dword ptr [r10+0x10b0]
 mov dword ptr [r9+0xc], r11d
 mov rbx, qword ptr [rsp+0x40]
 mov rbp, qword ptr [rsp+0x48]
 mov rsi, qword ptr [rsp+0x50]
 mov rdi, qword ptr [rsp+0x58]
 add rsp, 0x20
 pop r14
 pop r13
 pop r12
 jmp sub_140009a50
 int3 
 int3 

0x14000a6b8:
 mov qword ptr [rsp+0x18], rbx
 mov qword ptr [rsp+0x20], rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 sub rsp, 0x40
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x30], rax
 movdqu xmm0, xmmword ptr [rdx]
 mov ebx, dword ptr [rcx+0x10a4]
 mov edi, dword ptr [rdx]
 mov r11d, dword ptr [rcx+0x10a8]
 mov esi, dword ptr [rdx+0x8]
 mov ebp, dword ptr [rdx+0xc]
 movdqu xmmword ptr [rsp+0x20], xmm0
 xor r11d, dword ptr [rdx+4]
 xor esi, dword ptr [rcx+0x10ac]
 mov r12d, 0x1f
 xor edi, ebx
 xor ebp, dword ptr [rcx+0x10b0]
 mov r9, rdx
 mov r10, rcx
 mov r14, r12

0x14000a71d:
 mov rax, r14
 mov edx, ebp
 dec r14
 and eax, 3
 rol edx, 0xb
 mov r8d, dword ptr [r10+rax*4+0x10a4]
 add edx, esi
 xor edx, r8d
 mov eax, edx
 shr eax, 0x10
 movzx eax, al
 movzx r13d, byte ptr [rax+r10+0xfa4]
 mov eax, edx
 shr eax, 0x18
 movzx ecx, byte ptr [rax+r10+0xfa4]
 mov eax, edx
 shr eax, 8
 shl ecx, 8
 movzx eax, al
 or r13d, ecx
 movzx ecx, dl
 movzx eax, byte ptr [rax+r10+0xfa4]
 shl r13d, 8
 mov edx, esi
 or r13d, eax
 movzx eax, byte ptr [rcx+r10+0xfa4]
 shl r13d, 8
 or r13d, eax
 xor r13d, edi
 ror edx, 0xf
 mov edi, esi
 xor edx, ebp
 mov esi, r13d
 add edx, r8d
 mov eax, edx
 shr eax, 0x10
 movzx eax, al
 movzx r8d, byte ptr [rax+r10+0xfa4]
 mov eax, edx
 shr eax, 0x18
 movzx ecx, byte ptr [rax+r10+0xfa4]
 mov eax, edx
 shr eax, 8
 shl ecx, 8
 or r8d, ecx
 movzx eax, al
 movzx ecx, dl
 movzx eax, byte ptr [rax+r10+0xfa4]
 shl r8d, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+r10+0xfa4]
 shl r8d, 8
 or r8d, eax
 xor r8d, r11d
 sub r12d, 0x1
 mov r11d, ebp
 mov ebp, r8d
 jns 0x14000a71d
 xor ebx, r13d
 lea rdx, [rsp+0x20]
 mov rcx, r10
 mov dword ptr [r9], ebx
 mov eax, dword ptr [r10+0x10a8]
 xor eax, r8d
 mov dword ptr [r9+4], eax
 mov eax, dword ptr [r10+0x10ac]
 xor eax, edi
 mov dword ptr [r9+0x8], eax
 xor r11d, dword ptr [r10+0x10b0]
 mov dword ptr [r9+0xc], r11d
 call sub_140009a50
 mov rcx, qword ptr [rsp+0x30]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x40]
 mov rbx, qword ptr [r11+0x40]
 mov rbp, qword ptr [r11+0x48]
 mov rsp, r11
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 ret 

0x14000a85c:
 mov r11, rsp
 mov qword ptr [r11+0x18], rbx
 mov qword ptr [r11+0x20], rsi
 push rdi
 sub rsp, 0x60
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x58], rax
 cmp dword ptr [rcx], 2
 mov rdi, rdx
 mov rbx, rcx
 mov esi, 0x20
 jne 0x14000a8db
 mov eax, dword ptr [rcx+4]
 lea r9d, [rsi-0x1c]
 lea r8, [r11-0x38]
 mov dword ptr [rsp+0x30], eax
 lea rax, [r11-0x30]
 mov rdx, rsi
 mov rcx, rdi
 mov qword ptr [r11-0x48], rax
 call sub_140009dd8
 xor r11d, r11d
 lea r8, [rsp+0x38]
 mov dword ptr [rbx+4], r11d
 mov edx, r11d

0x14000a8bc:
 movzx eax, byte ptr [r8]
 mov ecx, r11d
 inc r11d
 and ecx, 3
 inc r8
 shl ecx, 3
 shl eax, cl
 xor edx, eax
 cmp r11d, esi
 jb 0x14000a8bc
 mov dword ptr [rbx+4], edx

0x14000a8db:
 cmp dword ptr [rbx], 3
 jne 0x14000a90d
 lea rax, [rsp+0x38]
 lea r8, [rbx+4]
 mov r9, rsi
 mov rdx, rsi
 mov rcx, rdi
 mov qword ptr [rsp+0x20], rax
 call sub_140009dd8
 lea rcx, [rbx+4]
 lea rdx, [rsp+0x38]
 mov r8, rsi
 call 0x14002d490

0x14000a90d:
 mov rcx, qword ptr [rsp+0x58]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x60]
 mov rbx, qword ptr [r11+0x20]
 mov rsi, qword ptr [r11+0x28]
 mov rsp, r11
 pop rdi
 ret 
; --------------------------------------------------------------------------
; sub_14000a92c
; --------------------------------------------------------------------------
sub_14000a92c   proc \
 arg_1 : qword, ; [rsp+0x8]
 arg_2 : qword ; [rsp+0x58]

 local local_1[0x10]: byte ; [rsp+0x20]
 local local_2[0x10]: byte ; [rsp+0x30]

 mov qword ptr [arg_1], rcx
 push rdi
 sub rsp, 0x40
 mov qword ptr [local_2], -2
 mov qword ptr [arg_2], rbx
 mov rdi, rcx
 lea rax, [0x14000a4ac]
 mov qword ptr [local_1], rax
 lea r9, [0x14000a494]
 mov edx, 0x12c
 mov r8d, 4
 call sub_14002e53c
 nop 
 lea rax, [0x14000a4ac]
 mov qword ptr [local_1], rax
 lea r9, [0x14000a494]
 mov edx, 0x178
 mov r8d, 4
 lea rcx, [rdi+0x4b4]
 call sub_14002e53c
 nop 
 lea rcx, [rdi+0xa9c]
 call sub_14001a72c
 and dword ptr [rdi+0xa98], 0x0
 xor edx, edx
 mov r8d, 0x4b0
 mov rcx, rdi
 call 0x14002d190
 xor edx, edx
 mov r8d, 0x5e0
 lea rcx, [rdi+0x4b4]
 call 0x14002d190
 and dword ptr [rdi+0x4b0], 0x0
 and dword ptr [rdi+0xa94], 0x0
 lea rcx, [rdi+0xba4]
 xor edx, edx
 mov r8d, 0x400
 call 0x14002d190
 nop 
 mov rax, rdi
 mov rbx, qword ptr [arg_2]
 add rsp, 0x40
 pop rdi
 ret 
sub_14000a92c   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000aa00
; --------------------------------------------------------------------------
sub_14000aa00   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x38]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x40]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 sub rsp, 0x20
 mov eax, dword ptr [rcx+0xa98]
 mov rdi, r8
 mov rsi, rdx
 mov rbp, rcx
 cmp eax, 0x1
 je 0x14000aa70
 cmp eax, 2
 je 0x14000aa69
 cmp eax, 3
 je 0x14000aa4b
 add eax, -4
 cmp eax, 0x1
 ja 0x14000aa75
 add rcx, 0xa9c
 mov r9, rdx
 call sub_14001a868
 jmp 0x14000aa75

0x14000aa4b:
 xor ebx, ebx
 cmp r8, rbx
 jbe 0x14000aa75

0x14000aa52:
 lea rdx, [rbx+rsi]
 mov rcx, rbp
 call 0x14000a6b8
 add rbx, 0x10
 cmp rbx, rdi
 jb 0x14000aa52
 jmp 0x14000aa75

0x14000aa69:
 call sub_14000999c
 jmp 0x14000aa75

0x14000aa70:
 call sub_14000996c

0x14000aa75:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop rdi
 ret 
sub_14000aa00   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000aa8c
; --------------------------------------------------------------------------
sub_14000aa8c   proc \
 arg_1 : qword ; [rsp+0x18] ; [rsp+0xf0]

 local local_1[0x80]: byte ; [rsp+0x20]
 local local_2[0x80]: byte ; [rsp+0xa0]

 mov qword ptr [arg_1], rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 sub rsp, 0xb0
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_2], rax
 mov rbp, rcx
 add rcx, 0xba4
 mov r13, rdx
 call sub_140009650
 lea rcx, [local_1]
 mov r8d, 0x80
 mov rdx, r13
 call sub_14001ef90
 or rcx, 0xffffffffffffffff
 xor eax, eax
 lea rdi, [local_1]
 lea rdx, [0x1400450f0]
 mov r8d, 0x100
 repne scasb al, byte ptr [rdi]
 mov dword ptr [rbp+0x10a4], 0xd3a3b879
 mov dword ptr [rbp+0x10a8], 0x3f6d12f7
 not rcx
 mov dword ptr [rbp+0x10ac], 0x7515a235
 mov dword ptr [rbp+0x10b0], 0xa4e7f123
 lea rbx, [rcx-1]
 lea rcx, [rbp+0xfa4]
 call 0x14002d490
 xor esi, esi
 mov r9d, esi

0x14000ab30:
 mov r8, rsi
 cmp rbx, rsi
 jbe 0x14000abab

0x14000ab38:
 movzx eax, byte ptr [r13+r8]
 mov r12d, 0x1
 sub eax, r9d
 movzx eax, al
 movzx r10d, byte ptr [rbp+rax*4+0xba4]
 movzx eax, byte ptr [r13+r8+1]
 add eax, r9d
 movzx eax, al
 movzx r11d, byte ptr [rbp+rax*4+0xba4]
 jmp 0x14000ab9d

0x14000ab6a:
 mov cl, byte ptr [r10+rbp+0xfa4]
 lea rax, [r10+r12]
 add rax, r8
 inc r12d
 movzx edx, al
 mov al, byte ptr [rdx+rbp+0xfa4]
 mov byte ptr [r10+rbp+0xfa4], al
 lea eax, [r10+1]
 mov byte ptr [rdx+rbp+0xfa4], cl
 movzx r10d, al

0x14000ab9d:
 cmp r10d, r11d
 jne 0x14000ab6a
 add r8, 2
 cmp r8, rbx
 jb 0x14000ab38

0x14000abab:
 inc r9d
 cmp r9d, 0x100
 jl 0x14000ab30
 test bl, 0xf
 je 0x14000abde
 mov r8, rbx
 or r8, 0xf
 cmp rbx, r8
 ja 0x14000abde
 sub r8, rbx
 lea rcx, [rsp+rbx+0x20]
 xor edx, edx
 inc r8
 call 0x14002d190

0x14000abde:
 cmp rbx, rsi
 jbe 0x14000abf9

0x14000abe3:
 lea rdx, [rsp+rsi+0x20]
 mov rcx, rbp
 call 0x14000a530
 add rsi, 0x10
 cmp rsi, rbx
 jb 0x14000abe3

0x14000abf9:
 mov rcx, qword ptr [local_2]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [arg_1]
 add rsp, 0xb0
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
sub_14000aa8c   endp
 
; --------------------------------------------------------------------------
; sub_14000ac20
; --------------------------------------------------------------------------
sub_14000ac20   proc \
 arg_1[0x10] : byte, ; [rsp+0x18] ; [rsp+0x230]
 arg_2 : qword, ; [rsp+0x240]
 arg_3 : qword, ; [rsp+0x248]
 arg_4 : qword, ; [rsp+0x250]
 arg_5 : qword, ; [rsp+0x258]
 arg_6 : qword ; [rsp+0x260]

 local local_1: qword ; [rsp+0x20]
 local local_2: qword ; [rsp+0x28]
 local local_3: qword ; [rsp+0x30]
 local local_4: qword ; [rsp+0x38]
 local local_5[0x10]: byte ; [rsp+0x40]
 local local_6[0x80]: byte ; [rsp+0x50]
 local local_7[0x100]: byte ; [rsp+0xd0]
 local local_8[0x80]: byte ; [rsp+0x1d0]

 mov qword ptr [arg_1], rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x1e0
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_8], rax
 cmp byte ptr [r9+0x100], 0x0
 mov r12, qword ptr [arg_2]
 mov r13, qword ptr [arg_3]
 mov r14, qword ptr [arg_5]
 mov r15, qword ptr [arg_6]
 mov rsi, r9
 mov ebx, r8d
 mov bpl, dl
 mov rdi, rcx
 je 0x14000ad80
 test ebx, ebx
 je 0x14000ad80
 mov dword ptr [rcx+0xa98], ebx
 lea rdx, [local_7]
 mov r8d, 0x80
 mov rcx, r9
 call sub_14001cfa8
 lea rdx, [local_6]
 lea rcx, [local_7]
 mov r8d, 0x80
 call sub_1400210b8
 sub ebx, 0x1
 je 0x14000ad4e
 sub ebx, 0x1
 je 0x14000ad3f
 sub ebx, 0x1
 je 0x14000ad30
 sub ebx, 0x1
 je 0x14000ad13
 cmp ebx, 0x1
 jne 0x14000ad5b
 mov eax, dword ptr [arg_4]
 mov qword ptr [local_5], r15
 mov qword ptr [local_4], r14
 mov dword ptr [local_3], eax
 lea r9, [local_7]
 mov r8, rsi
 mov dl, bpl
 mov rcx, rdi
 mov qword ptr [local_2], r13
 mov qword ptr [local_1], r12
 call 0x14000a168
 jmp 0x14000ad5b

0x14000ad13:
 lea r9, [local_7]
 mov r8, rsi
 mov dl, bpl
 mov rcx, rdi
 mov qword ptr [local_1], r12
 call 0x140009ab8
 jmp 0x14000ad5b

0x14000ad30:
 lea rdx, [local_6]
 mov rcx, rdi
 call sub_14000aa8c
 jmp 0x14000ad5b

0x14000ad3f:
 lea rdx, [local_6]
 mov rcx, rdi
 call sub_1400098a0
 jmp 0x14000ad5b

0x14000ad4e:
 lea rdx, [local_6]
 mov rcx, rdi
 call sub_140009860

0x14000ad5b:
 lea rcx, [local_6]
 mov edx, 0x80
 call sub_14001cf34
 lea rcx, [local_7]
 mov edx, 0x100
 call sub_14001cf34
 mov al, 0x1
 jmp 0x14000ad82

0x14000ad80:
 xor al, al

0x14000ad82:
 mov rcx, qword ptr [local_8]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [arg_1]
 add rsp, 0x1e0
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
sub_14000ac20   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000adb0
; --------------------------------------------------------------------------
sub_14000adb0   proc
 xor eax, eax
 mov byte ptr [rcx+0x8], al
 mov dword ptr [rcx+0xc], eax
 mov qword ptr [rcx+0x10], rax
 mov qword ptr [rcx+0x18], rax
 mov rax, rcx
 ret 
sub_14000adb0   endp
 

0x14000adc4:
 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 push r13
 push r14
 push r15
 mov rbx, qword ptr [rsp+0x50]
 mov rdi, qword ptr [rsp+0x48]
 xor r15d, r15d
 lea r14d, [r15+1]
 mov rbp, r9
 mov r9, r8
 mov r13b, byte ptr [r9]
 mov r12, rdx
 mov r10, r15
 mov r8, rcx
 mov r11, r14
 cmp r14, rbp
 jae 0x14000aece
 mov edx, 0x100
 mov dword ptr [rsp+0x50], edx

0x14000ae17:
 cmp r10, rbx
 jae 0x14000aece
 cmp dword ptr [r8+0xc], r15d
 jne 0x14000ae39
 mov al, byte ptr [r11+r9]
 add r11, r14
 mov dword ptr [r8+0xc], 8
 mov byte ptr [r8+0x8], al

0x14000ae39:
 movzx ecx, byte ptr [r8+0x8]
 shr ecx, 6
 cmp ecx, r15d
 je 0x14000af5f
 sub ecx, r14d
 je 0x14000af3f
 sub ecx, r14d
 je 0x14000af1c
 cmp ecx, r14d
 jne 0x14000aebb
 movzx edx, byte ptr [r11+r9]
 add r11, r14
 test dl, dl
 jns 0x14000aefb
 mov sil, byte ptr [r11+r9]
 and edx, 0x7f
 add r11, r14
 add edx, 2
 jmp 0x14000aeb1

0x14000ae80:
 cmp r10, rbx
 jae 0x14000aeb6
 movsx ecx, byte ptr [r10+r12]
 movzx eax, sil
 sub edx, r14d
 add cx, ax
 mov eax, 0xff
 and cx, ax
 movzx eax, r13b
 imul ax, word ptr [rsp+0x50]
 add cx, ax
 mov word ptr [rdi+r10*2], cx
 add r10, r14

0x14000aeb1:
 cmp edx, r15d
 jg 0x14000ae80

0x14000aeb6:
 mov edx, 0x100

0x14000aebb:
 shl byte ptr [r8+0x8], 2
 add dword ptr [r8+0xc], -2
 cmp r11, rbp
 jb 0x14000ae17

0x14000aece:
 mov rbp, qword ptr [rsp+0x30]
 mov rsi, qword ptr [rsp+0x38]
 lea rax, [rbx-1]
 cmp r10, rbx
 mov rbx, qword ptr [rsp+0x28]
 cmovb rax, r10
 mov word ptr [rdi+rax*2], r15w
 mov rdi, qword ptr [rsp+0x40]
 pop r15
 pop r14
 pop r13
 pop r12
 ret 

0x14000aefb:
 add edx, 2
 jmp 0x14000af15

0x14000af00:
 cmp r10, rbx
 jae 0x14000aeb6
 movsx eax, byte ptr [r10+r12]
 sub edx, r14d
 mov word ptr [rdi+r10*2], ax
 add r10, r14

0x14000af15:
 cmp edx, r15d
 jg 0x14000af00
 jmp 0x14000aeb6

0x14000af1c:
 movzx ecx, byte ptr [r11+r9+1]
 movzx eax, byte ptr [r11+r9]
 imul cx, dx
 add cx, ax
 mov word ptr [rdi+r10*2], cx
 add r10, r14
 add r11, 2
 jmp 0x14000aebb

0x14000af3f:
 movzx ecx, byte ptr [r11+r9]
 movzx eax, r13b
 imul ax, dx
 add cx, ax
 mov word ptr [rdi+r10*2], cx

0x14000af54:
 add r10, r14
 add r11, r14
 jmp 0x14000aebb

0x14000af5f:
 movzx eax, byte ptr [r11+r9]
 mov word ptr [rdi+r10*2], ax
 jmp 0x14000af54
 int3 

0x14000af6c:
 mov r8d, edx
 sub r8d, 0x1
 je 0x14000af8a
 sub r8d, 0x1
 je 0x14000afa2
 sub r8d, 0x1
 je 0x14000af95
 cmp r8d, 0xfc
 jne 0x14000af8f

0x14000af8a:
 cmp dword ptr [rcx], 0x0
 jne 0x14000af91

0x14000af8f:
 mov dword ptr [rcx], edx

0x14000af91:
 inc dword ptr [rcx+4]
 ret 

0x14000af95:
 cmp dword ptr [rcx], 0xb
 je 0x14000af91
 mov dword ptr [rcx], 3
 jmp 0x14000af91

0x14000afa2:
 cmp dword ptr [rcx], 0x0
 je 0x14000afac
 cmp dword ptr [rcx], 0x1
 jne 0x14000af91

0x14000afac:
 mov dword ptr [rcx], 2
 jmp 0x14000af91

0x14000afb4:
 push rbx
 sub rsp, 0x20
 cmp ecx, 5
 jne 0x14000afc8
 lea eax, [rcx-4]
 add rsp, 0x20
 pop rbx
 ret 

0x14000afc8:
 mov ecx, 0xcf4
 mov byte ptr [0x140050e7b], 0x1
 call sub_140019e20
 mov rcx, rax
 call sub_140008e10
 xor ebx, ebx
 cmp byte ptr [0x140050e7c], bl
 jne 0x14000b006

0x14000afeb:
 cmp ebx, 0x32
 jae 0x14000b006
 mov ecx, 0x64
 call qword ptr [Sleep]
 inc ebx
 cmp byte ptr [0x140050e7c], 0x0
 je 0x14000afeb

0x14000b006:
 lea rcx, [0x140050ec0]
 call sub_140019c94
 mov ecx, 0xff
 call 0x14002eadc
 int3 
 int3 
 int3 
 int3 

0x14000b020:
 mov byte ptr [rcx+0x8], dl
 neg dl
 lea rax, [0x14000afb4]
 sbb rcx, rcx
 mov edx, 0x1
 and rcx, rax
 jmp qword ptr [SetConsoleCtrlHandler]
 int3 
 int3 

0x14000b040:
 mov qword ptr [rsp+0x8], rbx
 push rdi
 sub rsp, 0x20
 mov ebx, edx
 mov rdi, rcx
 cmp edx, 0xff
 jne 0x14000b05d
 cmp byte ptr [rcx+0x8], 0x0
 je 0x14000b09f

0x14000b05d:
 test edx, edx
 je 0x14000b07f
 cmp edx, 7
 je 0x14000b07f
 mov ecx, 0xcee
 call sub_140019e20
 lea rcx, [0x14003cdc8]
 mov rdx, rax
 call sub_140008e10

0x14000b07f:
 mov edx, ebx
 mov rcx, rdi
 call 0x14000af6c
 lea rdx, [0x140043920]
 lea rcx, [rsp+0x38]
 mov dword ptr [rsp+0x38], ebx
 call sub_14002eb7c
 int3 

0x14000b09f:
 mov rbx, qword ptr [rsp+0x30]
 add rsp, 0x20
 pop rdi
 ret 
 int3 
 int3 

0x14000b0ac:
 jmp qword ptr [GetLastError]
 int3 

0x14000b0b4:
 mov ecx, edx
 jmp qword ptr [SetLastError]
 int3 
 int3 
 int3 

0x14000b0c0:
 xor eax, eax
 mov byte ptr [rcx+0x8], 0x1
 mov dword ptr [rcx], eax
 mov dword ptr [rcx+4], eax
 mov byte ptr [rcx+9], al
 mov byte ptr [rcx+0xb], al
 mov byte ptr [rcx+0xc], al
 mov byte ptr [rcx+0xa], al
 mov rax, rcx
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_14000b0dc
; --------------------------------------------------------------------------
sub_14000b0dc   proc
 mov rax, rsp
 push rbx
 sub rsp, 0x90
 and dword ptr [rax-0x18], 0x0
 and dword ptr [rax-0x14], 0x0
 mov rbx, rcx
 lea rcx, [rax-0x78]
 mov dword ptr [rax-0x10], 7
 call sub_140020600
 inc dword ptr [rbx+4]
 mov dword ptr [rbx], 8
 add rsp, 0x90
 pop rbx
 ret 
sub_14000b0dc   endp
 

0x14000b114:
 mov qword ptr [rsp+0x8], rbx
 push rdi
 sub rsp, 0x20
 mov rdi, rcx
 xor ecx, ecx
 mov ebx, edx
 call sub_140020be4
 mov edx, ebx
 mov rcx, rdi
 mov rbx, qword ptr [rsp+0x30]
 add rsp, 0x20
 pop rdi
 jmp 0x14000b040
 int3 
 int3 

0x14000b140:
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 call sub_14000b0dc
 mov edx, 8
 mov rcx, rbx
 add rsp, 0x20
 pop rbx
 jmp 0x14000b114
; --------------------------------------------------------------------------
; sub_14000b160
; --------------------------------------------------------------------------
sub_14000b160   proc
 sub rsp, 0x28
 mov ecx, 0x1f
 call sub_1400014b8
 mov eax, dword ptr [0x140050e70]
 test eax, eax
 je 0x14000b17d
 cmp eax, 0x1
 jne 0x14000b187

0x14000b17d:
 mov dword ptr [0x140050e70], 2

0x14000b187:
 inc dword ptr [0x140050e74]
 add rsp, 0x28
 ret 
sub_14000b160   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000b194
; --------------------------------------------------------------------------
sub_14000b194   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x60]
 arg_2 : qword, ; [rsp+0x68]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x70]

 local local_1: qword ; [rsp+0x20]
 local local_2: qword ; [rsp+0x28]
 local local_3: qword ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_3], rbp
 push rsi
 push rdi
 push r12
 sub rsp, 0x40
 xor esi, esi
 mov qword ptr [arg_2], rsi
 call qword ptr [GetLastError]
 cmp eax, esi
 je 0x14000b24d
 lea rcx, [arg_2]
 mov qword ptr [local_3], rsi
 mov dword ptr [local_2], esi
 mov qword ptr [local_1], rcx
 mov r9d, 0x400
 mov r8d, eax
 mov ecx, 0x1100
 xor edx, edx
 call qword ptr [FormatMessageW]
 cmp eax, esi
 je 0x14000b24d
 mov rbx, qword ptr [arg_2]
 cmp rbx, rsi
 je 0x14000b252
 lea ebp, [rsi+0xd]
 lea r12d, [rsi+0xa]

0x14000b1f9:
 cmp word ptr [rbx], bp
 je 0x14000b204
 cmp word ptr [rbx], r12w
 jne 0x14000b20a

0x14000b204:
 add rbx, 2
 jmp 0x14000b1f9

0x14000b20a:
 cmp word ptr [rbx], si
 je 0x14000b24d
 mov edx, ebp
 mov rcx, rbx
 call 0x14002cf84
 mov rdi, rax
 cmp rax, rsi
 jne 0x14000b234
 mov edx, r12d
 mov rcx, rbx
 call 0x14002cf84
 mov rdi, rax
 cmp rax, rsi
 je 0x14000b23b

0x14000b234:
 mov word ptr [rdi], si
 add rdi, 2

0x14000b23b:
 mov rdx, rbx
 xor ecx, ecx
 call sub_140001454
 mov rbx, rdi
 cmp rdi, rsi
 jne 0x14000b1f9

0x14000b24d:
 mov rbx, qword ptr [arg_2]

0x14000b252:
 mov rcx, rbx
 call qword ptr [LocalFree]
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_3]
 add rsp, 0x40
 pop r12
 pop rdi
 pop rsi
 ret 
sub_14000b194   endp
 
 int3 
 int3 

0x14000b270:
 push rbx
 sub rsp, 0x20
 cmp byte ptr [rcx+0xb], 0x0
 mov rbx, rcx
 jne 0x14000b291
 mov ecx, 0xa
 call sub_140001454
 mov rcx, rbx
 call sub_14000b194

0x14000b291:
 mov edx, 2
 mov rcx, rbx
 add rsp, 0x20
 pop rbx
 jmp 0x14000b114
 int3 
; --------------------------------------------------------------------------
; sub_14000b2a4
; --------------------------------------------------------------------------
sub_14000b2a4   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 cmp byte ptr [rcx+9], 0x0
 mov rdi, rdx
 mov rbx, rcx
 jne 0x14000b2d1
 call sub_14000b194
 mov rcx, rdi
 call sub_140020c6c
 test al, al
 jne 0x14000b2d3
 mov byte ptr [rbx+0xa], 0x1
 jmp 0x14000b2d3

0x14000b2d1:
 xor al, al

0x14000b2d3:
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_14000b2a4   endp
 
 int3 
 int3 

0x14000b2e0:
 mov qword ptr [rsp+0x8], rbx
 push rdi
 sub rsp, 0x20
 mov rbx, rdx
 mov rdi, rcx
 call sub_14000b194
 mov rdx, rbx
 mov ecx, 0x47
 call sub_140001454
 mov edx, 5
 mov rcx, rdi
 mov rbx, qword ptr [rsp+0x30]
 add rsp, 0x20
 pop rdi
 jmp 0x14000b114
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000b31c
; --------------------------------------------------------------------------
sub_14000b31c   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 cmp byte ptr [rcx+9], 0x0
 mov dil, r8b
 mov rsi, rdx
 mov rbx, rcx
 jne 0x14000b354
 call sub_14000b194
 mov dl, dil
 mov rcx, rsi
 call sub_140020cb8
 test al, al
 jne 0x14000b356
 mov byte ptr [rbx+0xa], 0x1
 jmp 0x14000b356

0x14000b354:
 xor al, al

0x14000b356:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_14000b31c   endp
 
 int3 
 int3 

0x14000b368:
 push rbx
 sub rsp, 0x20
 cmp byte ptr [rcx+0xb], 0x0
 mov rbx, rcx
 jne 0x14000b389
 mov ecx, 0xb
 call sub_140001454
 mov rcx, rbx
 call sub_14000b194

0x14000b389:
 mov edx, 2
 mov rcx, rbx
 add rsp, 0x20
 pop rbx
 jmp 0x14000b114
 int3 
; --------------------------------------------------------------------------
; sub_14000b39c
; --------------------------------------------------------------------------
sub_14000b39c   proc
 local local_1[0x10]: byte ; [rsp+0x20]
 local local_2[0x800]: byte ; [rsp+0x30]
 local local_3[0x800]: byte ; [rsp+0x830]

 mov r11, rsp
 mov qword ptr [r11+0x10], rdx
 mov qword ptr [r11+0x18], r8
 mov qword ptr [r11+0x20], r9
 push rbx
 sub rsp, 0x840
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_3], rax
 mov rbx, rcx
 lea rax, [r11+0x18]
 mov r8, rdx
 lea rcx, [local_2]
 xor r9d, r9d
 mov edx, 0x400
 mov qword ptr [local_1], rax
 call sub_14002d43c
 lea rdx, [local_2]
 mov ecx, 0x1
 call sub_140001454
 mov rcx, rbx
 call sub_14000b194
 mov rcx, qword ptr [local_3]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x840
 pop rbx
 ret 
sub_14000b39c   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000b418
; --------------------------------------------------------------------------
sub_14000b418   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 mov ecx, 8
 call sub_1400014b8
 mov rcx, rbx
 call sub_14000b194
 inc dword ptr [rbx+4]
 mov dword ptr [rbx], 6
 add rsp, 0x20
 pop rbx
 ret 
sub_14000b418   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000b444
; --------------------------------------------------------------------------
sub_14000b444   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 mov ecx, 9
 call sub_1400014b8
 mov rcx, rbx
 call sub_14000b194
 inc dword ptr [rbx+4]
 mov dword ptr [rbx], 9
 add rsp, 0x20
 pop rbx
 ret 
sub_14000b444   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000b470
; --------------------------------------------------------------------------
sub_14000b470   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 mov ecx, 0xc
 call sub_1400014b8
 mov rcx, rbx
 call sub_14000b194
 cmp dword ptr [rbx], 0x0
 je 0x14000b495
 cmp dword ptr [rbx], 0x1
 jne 0x14000b49b

0x14000b495:
 mov dword ptr [rbx], 2

0x14000b49b:
 inc dword ptr [rbx+4]
 add rsp, 0x20
 pop rbx
 ret 
sub_14000b470   endp
 
; --------------------------------------------------------------------------
; sub_14000b4a4
; --------------------------------------------------------------------------
sub_14000b4a4   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 mov ecx, 0xd
 call sub_1400014b8
 mov rcx, rbx
 call sub_14000b194
 inc dword ptr [rbx+4]
 mov dword ptr [rbx], 5
 add rsp, 0x20
 pop rbx
 ret 
sub_14000b4a4   endp
 
 int3 
 int3 

0x14000b4d0:
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 call sub_14000b4a4
 mov edx, 5
 mov rcx, rbx
 add rsp, 0x20
 pop rbx
 jmp 0x14000b114

0x14000b4f0:
 mov r8, rdx
 xor edx, edx
 jmp sub_14000b418
 int3 
 int3 

0x14000b4fc:
 mov r8, rdx
 xor edx, edx
 jmp sub_14000b444
 int3 
 int3 

0x14000b508:
 push rbx
 sub rsp, 0x20
 mov r8, rdx
 xor edx, edx
 mov rbx, rcx
 call sub_14000b470
 mov edx, 2
 mov rcx, rbx
 add rsp, 0x20
 pop rbx
 jmp 0x14000b114
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000b530
; --------------------------------------------------------------------------
sub_14000b530   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x50]
 arg_2 : qword, ; [rsp+0x58]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x60]

 local local_1: qword ; [rsp+0x20]
 local local_2: qword ; [rsp+0x28]
 local local_3: dword ; [rsp+0x30]
 local local_4: qword ; [rsp+0x34]
 local local_5: qword ; [rsp+0x3c]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_3], rsi
 push rdi
 sub rsp, 0x40
 mov rdi, rcx
 xor ebx, ebx
 call qword ptr [GetCurrentProcess]
 lea r8, [arg_2]
 lea edx, [rbx+0x20]
 mov rcx, rax
 call qword ptr [OpenProcessToken]
 cmp eax, ebx
 je 0x14000b5c0
 lea esi, [rbx+1]
 lea r8, [local_4]
 mov rdx, rdi
 xor ecx, ecx
 mov dword ptr [local_5], 2
 mov dword ptr [local_3], esi
 call qword ptr [LookupPrivilegeValueW]
 cmp eax, ebx
 je 0x14000b5b5
 mov rcx, qword ptr [arg_2]
 lea r8, [local_3]
 xor r9d, r9d
 xor edx, edx
 mov qword ptr [local_2], rbx
 mov qword ptr [local_1], rbx
 call qword ptr [AdjustTokenPrivileges]
 cmp eax, ebx
 je 0x14000b5b5
 call qword ptr [GetLastError]
 movzx ecx, bl
 cmp eax, ebx
 cmove ecx, esi
 mov bl, cl

0x14000b5b5:
 mov rcx, qword ptr [arg_2]
 call qword ptr [CloseHandle]

0x14000b5c0:
 mov rsi, qword ptr [arg_3]
 mov al, bl
 mov rbx, qword ptr [arg_1]
 add rsp, 0x40
 pop rdi
 ret 
sub_14000b530   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000b5d4
; --------------------------------------------------------------------------
sub_14000b5d4   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x38]
 arg_3 : qword, ; [rsp+0x40]
 arg_4 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x20
 mov rsi, rdx
 mov rdi, rcx
 call sub_140013840
 xor ebx, ebx
 cmp al, bl
 je 0x14000b605

0x14000b5fe:
 xor al, al
 jmp 0x14000b6e1

0x14000b605:
 mov ebp, ebx
 jmp 0x14000b680

0x14000b609:
 movzx ecx, ax
 call 0x140013458
 cmp al, bl
 je 0x14000b67c
 cmp word ptr [rdi+2], bx
 je 0x14000b67c
 movzx ecx, word ptr [rdi+2]
 call 0x140013458
 cmp al, bl
 jne 0x14000b67c
 cmp word ptr [rdi+2], 0x2e
 jne 0x14000b647
 movzx ecx, word ptr [rdi+4]
 call 0x140013458
 cmp al, bl
 jne 0x14000b642
 cmp word ptr [rdi+4], bx
 jne 0x14000b647

0x14000b642:
 mov r12b, 0x1
 jmp 0x14000b64a

0x14000b647:
 mov r12b, bl

0x14000b64a:
 cmp word ptr [rdi+2], 0x2e
 jne 0x14000b66f
 cmp word ptr [rdi+4], 0x2e
 jne 0x14000b66f
 movzx ecx, word ptr [rdi+6]
 call 0x140013458
 cmp al, bl
 jne 0x14000b66b
 cmp word ptr [rdi+6], bx
 jne 0x14000b66f

0x14000b66b:
 mov al, 0x1
 jmp 0x14000b671

0x14000b66f:
 mov al, bl

0x14000b671:
 cmp r12b, bl
 jne 0x14000b67c
 cmp al, bl
 jne 0x14000b67c
 inc ebp

0x14000b67c:
 add rdi, 2

0x14000b680:
 movzx eax, word ptr [rdi]
 cmp ax, bx
 jne 0x14000b609
 mov rcx, rsi
 call sub_140013840
 cmp al, bl
 jne 0x14000b5fe
 mov edi, ebx
 jmp 0x14000b6d4

0x14000b69c:
 cmp ax, 0x2e
 jne 0x14000b6ce
 cmp word ptr [rsi+2], ax
 jne 0x14000b6ce
 movzx ecx, word ptr [rsi+4]
 call 0x140013458
 cmp al, bl
 jne 0x14000b6bb
 cmp word ptr [rsi+4], bx
 jne 0x14000b6ce

0x14000b6bb:
 cmp edi, ebx
 je 0x14000b6cc
 movzx ecx, word ptr [rsi-2]
 call 0x140013458
 cmp al, bl
 je 0x14000b6ce

0x14000b6cc:
 dec ebp

0x14000b6ce:
 add rsi, 2
 inc edi

0x14000b6d4:
 movzx eax, word ptr [rsi]
 cmp ax, bx
 jne 0x14000b69c
 cmp ebp, ebx
 setge al

0x14000b6e1:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x20
 pop r12
 ret 
sub_14000b5d4   endp
 

0x14000b6fc:
 push rbx
 push rsi
 push rdi
 mov eax, 0x2030
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x2020], rax
 cmp dword ptr [rcx+0xc4f0], 2
 mov r9, qword ptr [rcx+0xadd0]
 mov rax, qword ptr [rcx+0xadd8]
 mov rsi, r8
 mov rdi, rdx
 jne 0x14000b75f
 lea rbx, [r8-1]
 shr rax, 0x1
 mov rcx, r9
 cmp rax, rbx
 cmovb rbx, rax
 mov r8, rbx
 call sub_140021190
 xor r11d, r11d
 mov word ptr [rdi+rbx*2], r11w
 jmp 0x14000b793

0x14000b75f:
 mov ebx, 0x1fff
 lea rcx, [rsp+0x20]
 mov rdx, r9
 cmp rax, rbx
 cmovb rbx, rax
 mov r8, rbx
 call 0x14002d490
 xor r11d, r11d
 lea rcx, [rsp+0x20]
 mov r8, rsi
 mov rdx, rdi
 mov byte ptr [rsp+rbx+0x20], r11b
 call sub_1400212c0

0x14000b793:
 mov rcx, qword ptr [rsp+0x2020]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x2030
 pop rdi
 pop rsi
 pop rbx
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000b7b0
; --------------------------------------------------------------------------
sub_14000b7b0   proc
 push rbx
 sub rsp, 0x20
 cmp byte ptr [0x140050e5d], 0x0
 jne 0x14000b7f4
 lea rcx, [0x14003ce00]
 call sub_14000b530
 movzx ecx, byte ptr [0x140050e5c]
 mov ebx, 0x1
 test al, al
 cmovne ecx, ebx
 mov byte ptr [0x140050e5c], cl
 lea rcx, [0x14003cdd8]
 call sub_14000b530
 mov byte ptr [0x140050e5d], bl

0x14000b7f4:
 add rsp, 0x20
 pop rbx
 ret 
sub_14000b7b0   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000b7fc
; --------------------------------------------------------------------------
sub_14000b7fc   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rdi, rcx
 mov rcx, rdx
 mov rbx, rdx
 call sub_1400137b4
 mov rcx, rbx
 call sub_1400104f4
 test al, al
 je 0x14000b86e
 mov dl, 0x1
 mov rcx, rdi
 call 0x1400105ec
 xor r8d, r8d
 mov rdx, rbx
 mov rcx, rdi
 call qword ptr [CreateHardLinkW]
 test eax, eax
 setne bl
 test bl, bl
 jne 0x14000b86c
 mov rdx, rdi
 mov ecx, 0x15
 call sub_140001454
 lea rcx, [0x140050e70]
 call sub_14000b194
 lea rcx, [0x140050e70]
 mov edx, 9
 call 0x14000af6c

0x14000b86c:
 mov al, bl

0x14000b86e:
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_14000b7fc   endp
 
 int3 
 int3 
 int3 

0x14000b87c:
 push rbp
 push rsi
 push rdi
 mov eax, 0x5100
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x20], -2
 mov qword ptr [rsp+0x5130], rbx
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x50f0], rax
 mov sil, r8b
 mov rbx, rdx
 mov rdi, rcx
 xor ebp, ebp
 cmp word ptr [rdx], bp
 je 0x14000b8fa
 cmp word ptr [rdx+2], bp
 jne 0x14000b8fa
 mov rcx, rbp

0x14000b8c9:
 lea rax, [0x14003ce50]
 movzx eax, word ptr [rcx+rax]
 mov word ptr [rsp+rcx+0x30e0], ax
 add rcx, 2
 cmp ax, bp
 jne 0x14000b8c9
 mov r8d, 0x800
 lea rcx, [rsp+0x30e4]
 call sub_14001efc0
 jmp 0x14000b90d

0x14000b8fa:
 mov r8d, 0x802
 lea rcx, [rsp+0x30e0]
 call sub_14001efc0

0x14000b90d:
 mov r8d, 0x800
 lea rdx, [rsp+0x40f0]
 mov rcx, rdi
 call 0x14000b6fc
 cmp word ptr [rsp+0x40f0], 0x3a
 je 0x14000b955
 lea rdx, [rdi+0x26]
 mov r8, rbx
 mov ecx, 0x50
 call sub_1400014b8
 mov edx, 3
 lea rcx, [0x140050e70]
 call 0x14000af6c
 jmp 0x14000ba9a

0x14000b955:
 cmp sil, bpl
 je 0x14000b96c
 xor r8d, r8d
 xor edx, edx
 mov rcx, rdi
 call 0x140004070
 jmp 0x14000ba9a

0x14000b96c:
 mov r8d, 0x802
 lea rdx, [rsp+0x40f0]
 lea rcx, [rsp+0x30e0]
 call sub_14001effc
 mov qword ptr [rsp+0x1040], rbp
 mov qword ptr [rsp+0x1048], rbp
 mov qword ptr [rsp+0x1050], rbp
 xor r8d, r8d
 lea rdx, [rsp+0x30]
 mov rcx, rbx
 call sub_140011338
 mov sil, al
 mov edx, dword ptr [rsp+0x1038]
 test dl, 0x1
 je 0x14000b9c9
 and edx, 0xfffffffe
 mov rcx, rbx
 call 0x140010044

0x14000b9c9:
 lea rcx, [rsp+0x1080]
 call sub_14000f274
 nop 
 mov r8d, 0x11
 lea rdx, [rsp+0x30e0]
 lea rcx, [rsp+0x1080]
 call sub_14000f5a0
 cmp al, bpl
 je 0x14000ba1b
 lea r8, [rsp+0x1080]
 xor edx, edx
 mov rcx, rdi
 call 0x140004070
 cmp al, bpl
 je 0x14000ba1b
 lea rcx, [rsp+0x1080]
 call sub_14000f5d0

0x14000ba1b:
 lea rcx, [rsp+0x20b0]
 call sub_14000f274
 nop 
 cmp sil, bpl
 je 0x14000ba6f
 mov r8d, 5
 mov rdx, rbx
 lea rcx, [rsp+0x20b0]
 call 0x14000f2b8
 cmp al, bpl
 je 0x14000ba6f
 lea r9, [rsp+0x1068]
 lea r8, [rsp+0x1060]
 lea rdx, [rsp+0x1058]
 mov rcx, qword ptr [rsp+0x20b8]
 call qword ptr [SetFileTime]

0x14000ba6f:
 mov edx, dword ptr [rsp+0x1038]
 mov rcx, rbx
 call 0x140010044
 nop 
 lea rcx, [rsp+0x20b0]
 call sub_14000f94c
 nop 
 lea rcx, [rsp+0x1080]
 call sub_14000f94c

0x14000ba9a:
 mov rcx, qword ptr [rsp+0x50f0]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x5130]
 add rsp, 0x5100
 pop rdi
 pop rsi
 pop rbp
 ret 
 int3 
 int3 
 int3 

0x14000bac0:
 push rdi
 mov eax, 0x13110
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x40], -2
 mov qword ptr [rsp+0x13130], rbx
 mov qword ptr [rsp+0x13138], rsi
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x13100], rax
 mov rsi, rdx
 mov rbx, rcx
 call sub_14000b7b0
 cmp byte ptr [rbx+0xc508], 0x0
 je 0x14000bb35
 lea rdx, [rbx+0x26]
 mov r8, rsi
 mov ecx, 0x4d
 call sub_1400014b8
 mov edx, 3
 lea rcx, [0x140050e70]
 call 0x14000af6c
 jmp 0x14000bdae

0x14000bb35:
 mov al, byte ptr [rbx+0xc3a9]
 cmp al, 0x31
 jb 0x14000bd8c
 cmp al, 0x35
 ja 0x14000bd8c
 cmp byte ptr [rbx+0xc3a8], 0x1d
 ja 0x14000bd8c
 lea rcx, [rsp+0x50]
 call sub_140016a98
 nop 
 lea rdx, [rsp+0x50]
 lea rcx, [rsp+0x4790]
 call sub_14002897c
 nop 
 xor r8d, r8d
 mov edx, 0x10000
 lea rcx, [rsp+0x4790]
 call sub_140022980
 mov edx, dword ptr [rbx+0xc3a4]
 and qword ptr [rsp+0x20], 0x0
 and qword ptr [rsp+0x28], 0x0
 and qword ptr [rsp+0x30], 0x0
 and qword ptr [rsp+0x38], 0x0
 lea rcx, [rsp+0x20]
 call sub_140001294
 nop 
 mov r8d, dword ptr [rbx+0xc3a4]
 mov rdi, qword ptr [rsp+0x20]
 mov rdx, rdi
 lea rcx, [rsp+0x50]
 call sub_140016a88
 mov r11d, dword ptr [rbx+0xc39c]
 mov qword ptr [rsp+0x90], r11
 mov byte ptr [rsp+0x98], 0x0
 xor r8d, r8d
 mov rdx, rbx
 lea rcx, [rsp+0x50]
 call sub_1400169d0
 mov edx, 2
 lea r8d, [rdx-1]
 lea rcx, [rsp+0x3b30]
 call sub_140011558
 mov r11d, dword ptr [rbx+0xc3a4]
 mov qword ptr [rsp+0x9530], r11
 mov byte ptr [rsp+0x9548], 0x0
 movzx edx, byte ptr [rbx+0xc3a8]
 xor r8d, r8d
 lea rcx, [rsp+0x4790]
 call sub_14002c46c
 lea rcx, [rsp+0x3b30]
 call 0x14001164c
 cmp dword ptr [rbx+0xc3ac], eax
 je 0x14000bcda
 lea rdx, [rbx+0x26]
 mov r8, rsi
 mov ecx, 0x4d
 call sub_1400014b8
 mov edx, 3
 lea rcx, [0x140050e70]
 call 0x14000af6c
 nop 
 test rdi, rdi
 je 0x14000bc82
 mov rcx, rdi
 call sub_14002cfac
 nop 

0x14000bc82:
 lea rcx, [rsp+0x4790]
 call 0x140025c2c
 nop 
 lea rcx, [rsp+0x3b30]
 call 0x140011520
 nop 
 lea rcx, [rsp+0x2ee0]
 call 0x140011520
 nop 
 lea rcx, [rsp+0x2290]
 call 0x140011520
 nop 
 lea rcx, [rsp+0x1188]
 call 0x14000a4b4
 nop 
 lea rcx, [rsp+0xc8]
 call 0x14000a4b4
 jmp 0x14000bdae

0x14000bcda:
 mov edx, 7
 lea eax, [rdx+0x8]
 cmp byte ptr [0x140050e5c], 0x0
 cmovne edx, eax
 mov r8, rdi
 mov rcx, rsi
 call qword ptr [SetFileSecurityW]
 test eax, eax
 jne 0x14000bd29
 lea rdx, [rbx+0x26]
 mov r8, rsi
 lea ecx, [rax+0x4f]
 call sub_1400014b8
 lea rcx, [0x140050e70]
 call sub_14000b194
 mov edx, 0x1
 lea rcx, [0x140050e70]
 call 0x14000af6c
 nop 

0x14000bd29:
 test rdi, rdi
 je 0x14000bd37
 mov rcx, rdi
 call sub_14002cfac
 nop 

0x14000bd37:
 lea rcx, [rsp+0x4790]
 call 0x140025c2c
 nop 
 lea rcx, [rsp+0x3b30]
 call 0x140011520
 nop 
 lea rcx, [rsp+0x2ee0]
 call 0x140011520
 nop 
 lea rcx, [rsp+0x2290]
 call 0x140011520
 nop 
 lea rcx, [rsp+0x1188]
 call 0x14000a4b4
 nop 
 lea rcx, [rsp+0xc8]
 call 0x14000a4b4
 jmp 0x14000bdae

0x14000bd8c:
 lea rdx, [rbx+0x26]
 mov r8, rsi
 mov ecx, 0x4e
 call sub_1400014b8
 mov edx, 0x1
 lea rcx, [0x140050e70]
 call 0x14000af6c

0x14000bdae:
 mov rcx, qword ptr [rsp+0x13100]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x13110]
 mov rbx, qword ptr [r11+0x20]
 mov rsi, qword ptr [r11+0x28]
 mov rsp, r11
 pop rdi
 ret 
 int3 

0x14000bdd4:
 push rbp
 push rsi
 push rdi
 mov eax, 0x1060
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x40], -2
 mov qword ptr [rsp+0x1090], rbx
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1050], rax
 mov rbx, rdx
 mov rsi, rcx
 and qword ptr [rsp+0x20], 0x0
 and qword ptr [rsp+0x28], 0x0
 and qword ptr [rsp+0x30], 0x0
 and qword ptr [rsp+0x38], 0x0
 xor r8d, r8d
 lea rdx, [rsp+0x20]
 call 0x140004070
 test al, al
 jne 0x14000be4f
 mov rcx, qword ptr [rsp+0x20]
 test rcx, rcx
 je 0x14000bee6
 call sub_14002cfac
 jmp 0x14000bee6

0x14000be4f:
 call sub_14000b7b0
 mov edi, 7
 lea eax, [rdi+0x8]
 cmp byte ptr [0x140050e5c], 0x0
 cmovne edi, eax
 mov rbp, qword ptr [rsp+0x20]
 mov r8, rbp
 mov edx, edi
 mov rcx, rbx
 call qword ptr [SetFileSecurityW]
 test eax, eax
 jne 0x14000bed7
 mov r8d, 0x800
 lea rdx, [rsp+0x50]
 mov rcx, rbx
 call 0x140013930
 test al, al
 je 0x14000bea8
 mov r8, rbp
 mov edx, edi
 lea rcx, [rsp+0x50]
 call qword ptr [SetFileSecurityW]
 test eax, eax
 jne 0x14000bed7

0x14000bea8:
 lea rdx, [rsi+0x26]
 mov r8, rbx
 mov ecx, 0x4f
 call sub_1400014b8
 lea rcx, [0x140050e70]
 call sub_14000b194
 mov edx, 0x1
 lea rcx, [0x140050e70]
 call 0x14000af6c
 nop 

0x14000bed7:
 mov rcx, qword ptr [rsp+0x20]
 test rcx, rcx
 je 0x14000bee6
 call sub_14002cfac

0x14000bee6:
 mov rcx, qword ptr [rsp+0x1050]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x1090]
 add rsp, 0x1060
 pop rdi
 pop rsi
 pop rbp
 ret 
 int3 
 int3 
 int3 

0x14000bf0c:
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x3130
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x70], -2
 mov qword ptr [rsp+0x3188], rbx
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x3120], rax
 mov rbp, r8
 mov rsi, rdx
 mov r15, rcx
 xor ebx, ebx
 cmp byte ptr [0x140050e5e], bl
 jne 0x14000bf7a
 lea rcx, [0x14003cdd8]
 call sub_14000b530
 lea rcx, [0x14003cef0]
 call sub_14000b530
 mov byte ptr [0x140050e5e], 0x1

0x14000bf7a:
 mov qword ptr [rsp+0x48], rbx
 mov qword ptr [rsp+0x50], rbx
 mov qword ptr [rsp+0x58], rbx
 mov qword ptr [rsp+0x60], rbx
 mov edx, 0x1418
 lea rcx, [rsp+0x48]
 call sub_140001294
 nop 
 mov r8d, 0x800
 lea rdx, [rbp+0x110c]
 lea rcx, [rsp+0x1120]
 call sub_14001efc0
 xor eax, eax
 or rcx, 0xffffffffffffffff
 lea rdi, [rsp+0x1120]
 repne scasd eax, dword ptr [rdi]
 not rcx
 dec rcx
 mov qword ptr [rsp+0x40], rcx
 lea rdi, [rsp+0x1120]
 lea r12, [rsp+0x2120]
 lea r8d, [rax+4]
 lea rdx, [0x14003cee0]
 lea rcx, [rsp+0x1120]
 call 0x14002ec6c
 cmp eax, ebx
 sete r14b
 cmp r14b, bl
 je 0x14000c04a
 lea rdi, [rsp+0x1128]
 mov r8d, 4
 lea rdx, [0x14003ced0]
 lea rcx, [rsp+0x1128]
 call 0x14002ec6c
 cmp eax, ebx
 jne 0x14000c04a
 mov eax, 0x5c
 mov word ptr [rsp+0x2120], ax
 lea r12, [rsp+0x2122]
 lea rdi, [rsp+0x112e]

0x14000c04a:
 sub r12, rdi
 mov ecx, 2

0x14000c052:
 movzx eax, word ptr [rdi]
 mov word ptr [r12+rdi], ax
 add rdi, rcx
 cmp ax, bx
 jne 0x14000c052
 xor eax, eax
 or rcx, 0xffffffffffffffff
 lea rdi, [rsp+0x2120]
 repne scasd eax, dword ptr [rdi]
 not rcx
 lea r12, [rcx-1]
 cmp byte ptr [r15+0x61ab], bl
 jne 0x14000c0c2
 cmp r14b, bl
 jne 0x14000c0ac
 lea rcx, [rbp+0x110c]
 call sub_1400137f8
 cmp al, bl
 jne 0x14000c0ac
 lea rcx, [rbp+0x20]
 lea rdx, [rbp+0x110c]
 call sub_14000b5d4
 cmp al, bl
 jne 0x14000c0c2

0x14000c0ac:
 mov rcx, qword ptr [rsp+0x48]
 cmp rcx, rbx
 je 0x14000c0bb
 call sub_14002cfac

0x14000c0bb:
 xor al, al
 jmp 0x14000c46f

0x14000c0c2:
 mov dl, 0x1
 mov rcx, rsi
 call 0x1400105ec
 cmp byte ptr [rbp+0x10f1], bl
 jne 0x14000c12c
 cmp byte ptr [rbp+0x210c], bl
 jne 0x14000c12c
 mov qword ptr [rsp+0x30], rbx
 mov dword ptr [rsp+0x28], 0x80
 mov dword ptr [rsp+0x20], 0x1
 xor r9d, r9d
 xor r8d, r8d
 mov edx, 0x40000000
 mov rcx, rsi
 call qword ptr [CreateFileW]
 cmp rax, 0xff
 jne 0x14000c121
 mov rcx, qword ptr [rsp+0x48]
 cmp rcx, rbx
 je 0x14000c11a
 call sub_14002cfac

0x14000c11a:
 xor al, al
 jmp 0x14000c46f

0x14000c121:
 mov rcx, rax
 call qword ptr [CloseHandle]
 jmp 0x14000c151

0x14000c12c:
 xor edx, edx
 mov rcx, rsi
 call qword ptr [CreateDirectoryW]
 cmp eax, ebx
 jne 0x14000c151
 mov rcx, qword ptr [rsp+0x48]
 cmp rcx, rbx
 je 0x14000c14a
 call sub_14002cfac

0x14000c14a:
 xor al, al
 jmp 0x14000c46f

0x14000c151:
 mov eax, dword ptr [rbp+0x1108]
 mov r13d, 8
 cmp eax, 3
 jne 0x14000c1fd
 mov rdi, qword ptr [rsp+0x48]
 mov dword ptr [rdi], 0xa0000003
 mov r9, qword ptr [rsp+0x40]
 lea eax, [r12+r9+6]
 add ax, ax
 mov word ptr [rdi+4], ax
 mov word ptr [rdi+6], bx
 mov word ptr [rdi+0x8], bx
 movzx edx, r9w
 add dx, dx
 mov word ptr [rdi+0xa], dx
 lea rcx, [rsp+0x1120]
 lea r8, [rdi+0x10]
 lea rax, [rsp+0x1120]
 sub r8, rax
 lea r10d, [r13-6]

0x14000c1b0:
 movzx eax, word ptr [rcx]
 mov word ptr [r8+rcx], ax
 add rcx, r10
 cmp ax, bx
 jne 0x14000c1b0
 add dx, r10w
 mov word ptr [rdi+0xc], dx
 add r12w, r12w
 mov word ptr [rdi+0xe], r12w
 lea rcx, [rsp+0x2120]
 lea rdx, [rdi+r9*2+0x12]
 lea rax, [rsp+0x2120]
 sub rdx, rax

0x14000c1e9:
 movzx eax, word ptr [rcx]
 mov word ptr [rdx+rcx], ax
 add rcx, r10
 cmp ax, bx
 jne 0x14000c1e9
 jmp 0x14000c2bf

0x14000c1fd:
 mov r10d, 2
 cmp eax, r10d
 je 0x14000c223
 cmp eax, 0x1
 je 0x14000c223
 mov rcx, qword ptr [rsp+0x48]
 cmp rcx, rbx
 je 0x14000c21c
 call sub_14002cfac

0x14000c21c:
 xor al, al
 jmp 0x14000c46f

0x14000c223:
 mov rdi, qword ptr [rsp+0x48]
 mov dword ptr [rdi], 0xa000000c
 mov r9, qword ptr [rsp+0x40]
 lea eax, [r12+r9]
 add ax, r13w
 add ax, ax
 mov word ptr [rdi+4], ax
 mov word ptr [rdi+6], bx
 mov word ptr [rdi+0x8], bx
 movzx edx, r9w
 add dx, dx
 mov word ptr [rdi+0xa], dx
 lea rcx, [rsp+0x1120]
 lea r8, [rdi+0x14]
 lea rax, [rsp+0x1120]
 sub r8, rax

0x14000c26c:
 movzx eax, word ptr [rcx]
 mov word ptr [r8+rcx], ax
 add rcx, r10
 cmp ax, bx
 jne 0x14000c26c
 add dx, r10w
 mov word ptr [rdi+0xc], dx
 add r12w, r12w
 mov word ptr [rdi+0xe], r12w
 lea rcx, [rsp+0x2120]
 lea rdx, [rdi+r9*2+0x16]
 lea rax, [rsp+0x2120]
 sub rdx, rax

0x14000c2a5:
 movzx eax, word ptr [rcx]
 mov word ptr [rdx+rcx], ax
 add rcx, r10
 cmp ax, bx
 jne 0x14000c2a5
 mov eax, ebx
 cmp r14b, bl
 sete al
 mov dword ptr [rdi+0x10], eax

0x14000c2bf:
 mov qword ptr [rsp+0x30], rbx
 mov dword ptr [rsp+0x28], 0x2200000
 mov dword ptr [rsp+0x20], 3
 xor r9d, r9d
 xor r8d, r8d
 mov edx, 0xc0000000
 mov rcx, rsi
 call qword ptr [CreateFileW]
 mov r12, rax
 cmp rax, 0xff
 jne 0x14000c300
 mov rcx, rdi
 call sub_14002cfac
 xor al, al
 jmp 0x14000c46f

0x14000c300:
 movzx r9d, word ptr [rdi+4]
 add r9d, r13d
 mov qword ptr [rsp+0x38], rbx
 lea rax, [rsp+0x68]
 mov qword ptr [rsp+0x30], rax
 mov dword ptr [rsp+0x28], ebx
 mov qword ptr [rsp+0x20], rbx
 mov r8, rdi
 mov edx, 0x900a4
 mov rcx, r12
 call qword ptr [DeviceIoControl]
 cmp eax, ebx
 jne 0x14000c3c1
 mov rcx, r12
 call qword ptr [CloseHandle]
 mov r8, rsi
 xor edx, edx
 lea ecx, [rdx+0x14]
 call sub_1400014b8
 call qword ptr [GetLastError]
 cmp eax, 0x522
 jne 0x14000c382
 mov dword ptr [rsp+0xe0], ebx
 mov dword ptr [rsp+0xe4], ebx
 mov dword ptr [rsp+0xe8], 0x16
 lea rcx, [rsp+0x80]
 call sub_140020600

0x14000c382:
 lea rcx, [0x140050e70]
 call sub_14000b194
 mov edx, 9
 lea rcx, [0x140050e70]
 call 0x14000af6c
 cmp byte ptr [rbp+0x10f1], bl
 je 0x14000c3b2
 mov rcx, rsi
 call qword ptr [RemoveDirectoryW]
 jmp 0x14000c3bc

0x14000c3b2:
 mov rcx, rsi
 call qword ptr [DeleteFileW]
 nop 

0x14000c3bc:
 jmp 0x14000c465

0x14000c3c1:
 lea rcx, [rsp+0xf0]
 call sub_14000f274
 nop 
 lea rcx, [rsp+0xf0]
 call sub_14000f5d0
 mov qword ptr [rsp+0xf8], r12
 mov eax, dword ptr [r15+0x73b4]
 lea rcx, [rbp+0x1050]
 neg eax
 sbb r9, r9
 and r9, rcx
 mov eax, dword ptr [r15+0x73b0]
 lea rcx, [rbp+0x1048]
 neg eax
 sbb r8, r8
 and r8, rcx
 mov eax, dword ptr [r15+0x73ac]
 lea rcx, [rbp+0x1040]
 neg eax
 sbb rdx, rdx
 and rdx, rcx
 lea rcx, [rsp+0xf0]
 call sub_14000fa64
 lea rcx, [rsp+0xf0]
 call sub_14000f5d0
 cmp byte ptr [r15+0x62bc], bl
 jne 0x14000c455
 mov edx, dword ptr [rbp+0x1c]
 mov rcx, rsi
 call 0x140010044
 nop 

0x14000c455:
 lea rcx, [rsp+0xf0]
 call sub_14000f94c
 nop 
 mov bl, 0x1

0x14000c465:
 mov rcx, rdi
 call sub_14002cfac
 mov al, bl

0x14000c46f:
 mov rcx, qword ptr [rsp+0x3120]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x3188]
 add rsp, 0x3130
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000c49c
; --------------------------------------------------------------------------
sub_14000c49c   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x38]
 arg_3 : qword, ; [rsp+0x40]
 arg_4 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x20
 cmp byte ptr [rcx+0x62e1], 0x0
 mov r12, r8
 mov rbx, rdx
 mov rbp, rcx
 jne 0x14000c4f3
 cmp byte ptr [rcx+0x61a8], 0x0
 je 0x14000c4f3
 lea rsi, [rdx+0x9dd0]
 lea rdi, [0x14003cf38]
 mov ecx, 4
 repe cmpsd dword ptr [rsi], dword ptr [rdi]
 jne 0x14000c4f3
 mov rdx, r8
 mov rcx, rbx
 call 0x14000bdd4

0x14000c4f3:
 lea rsi, [rbx+0x9dd0]
 lea rdi, [0x14003cf30]
 mov ecx, 4
 repe cmpsd dword ptr [rsi], dword ptr [rdi]
 jne 0x14000c51d
 mov r8b, byte ptr [rbp+0x62e1]
 mov rdx, r12
 mov rcx, rbx
 call 0x14000b87c

0x14000c51d:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x20
 pop r12
 ret 
sub_14000c49c   endp
 
; --------------------------------------------------------------------------
; sub_14000c538
; --------------------------------------------------------------------------
sub_14000c538   proc
 sub rsp, 0x28
 cmp dword ptr [r8+0xc4f0], 3
 jne 0x14000c557
 add r8, 0x7a58
 mov rdx, r9
 call 0x14000bf0c
 jmp 0x14000c559

0x14000c557:
 xor al, al

0x14000c559:
 add rsp, 0x28
 ret 
sub_14000c538   endp
 
 int3 
 int3 

0x14000c560:
 push rbp
 push rsi
 push rdi
 mov eax, 0x181b0
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x20], -2
 mov qword ptr [rsp+0x181e0], rbx
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x181a0], rax
 mov rbx, rdx
 mov rsi, rcx
 xor ebp, ebp
 cmp byte ptr [rcx+0xc508], bpl
 je 0x14000c5c8
 lea rdx, [rcx+0x26]
 mov r8, rbx
 lea ecx, [rbp+0x50]
 call sub_1400014b8
 lea edx, [rbp+3]
 lea rcx, [0x140050e70]
 call 0x14000af6c
 jmp 0x14000c96c

0x14000c5c8:
 mov al, byte ptr [rcx+0xc3d1]
 cmp al, 0x31
 jb 0x14000c94a
 cmp al, 0x35
 ja 0x14000c94a
 cmp byte ptr [rcx+0xc3d0], 0x1d
 ja 0x14000c94a
 cmp word ptr [rdx], bp
 je 0x14000c635
 cmp word ptr [rdx+2], bp
 jne 0x14000c635
 mov rcx, rbp

0x14000c5f9:
 lea rax, [0x14003ce50]
 movzx eax, word ptr [rcx+rax]
 mov word ptr [rsp+rcx+0x16190], ax
 add rcx, 2
 cmp ax, bp
 jne 0x14000c5f9
 mov rcx, rdx
 lea rdx, [rsp+0x16194]
 sub rdx, rbx

0x14000c623:
 movzx eax, word ptr [rcx]
 mov word ptr [rdx+rcx], ax
 add rcx, 2
 cmp ax, bp
 jne 0x14000c623
 jmp 0x14000c653

0x14000c635:
 mov rcx, rdx
 lea rdx, [rsp+0x16190]
 sub rdx, rbx

0x14000c643:
 movzx eax, word ptr [rcx]
 mov word ptr [rdx+rcx], ax
 add rcx, 2
 cmp ax, bp
 jne 0x14000c643

0x14000c653:
 xor eax, eax
 or r8, 0xffffffffffffffff
 mov rcx, r8
 lea rdi, [rsi+0xc3da]
 repne scasb al, byte ptr [rdi]
 not rcx
 lea rdx, [rcx-1]
 mov rcx, r8
 lea rdi, [rsp+0x16190]
 repne scasd eax, dword ptr [rdi]
 not rcx
 dec rcx
 add rdx, rcx
 mov edi, 0x802
 cmp rdx, rdi
 jae 0x14000c926
 cmp byte ptr [rsi+0xc3da], 0x3a
 jne 0x14000c926
 lea r8d, [rdi-2]
 lea rdx, [rsp+0x171a0]
 lea rcx, [rsi+0xc3da]
 call sub_14002110c
 lea rdx, [rsp+0x171a2]
 lea rcx, [rsp+0x171a2]
 call 0x140013c84
 mov r8, rdi
 lea rdx, [rsp+0x171a0]
 lea rcx, [rsp+0x16190]
 call sub_14001effc
 mov qword ptr [rsp+0x1040], rbp
 mov qword ptr [rsp+0x1048], rbp
 mov qword ptr [rsp+0x1050], rbp
 xor r8d, r8d
 lea rdx, [rsp+0x30]
 mov rcx, rbx
 call sub_140011338
 mov dil, al
 mov edx, dword ptr [rsp+0x1038]
 test dl, 0x1
 je 0x14000c725
 and edx, 0xfffffffe
 mov rcx, rbx
 call 0x140010044

0x14000c725:
 lea rcx, [rsp+0x1080]
 call sub_14000f274
 nop 
 mov r8d, 0x11
 lea rdx, [rsp+0x16190]
 lea rcx, [rsp+0x1080]
 call sub_14000f5a0
 cmp al, bpl
 je 0x14000c8a0
 lea rcx, [rsp+0x11a50]
 call sub_140016a98
 nop 
 lea rdx, [rsp+0x11a50]
 lea rcx, [rsp+0x30e0]
 call sub_14002897c
 nop 
 xor r8d, r8d
 mov edx, 0x10000
 lea rcx, [rsp+0x30e0]
 call sub_140022980
 mov ecx, dword ptr [rsi+0xc3c4]
 mov qword ptr [rsp+0x11a90], rcx
 mov byte ptr [rsp+0x11a98], bpl
 lea r8, [rsp+0x1080]
 mov rdx, rsi
 lea rcx, [rsp+0x11a50]
 call sub_1400169d0
 mov edx, 2
 lea r8d, [rdx-1]
 lea rcx, [rsp+0x15530]
 call sub_140011558
 mov edx, dword ptr [rsi+0xc3cc]
 mov qword ptr [rsp+0x7e80], rdx
 mov byte ptr [rsp+0x7e98], bpl
 movzx edx, byte ptr [rsi+0xc3d0]
 xor r8d, r8d
 lea rcx, [rsp+0x30e0]
 call sub_14002c46c
 lea rcx, [rsp+0x15530]
 call 0x14001164c
 cmp dword ptr [rsi+0xc3d4], eax
 je 0x14000c83f
 lea rdx, [rsi+0x26]
 lea r8, [rsp+0x16190]
 mov ecx, 0x50
 call sub_1400014b8
 mov edx, 3
 lea rcx, [0x140050e70]
 call 0x14000af6c
 jmp 0x14000c84d

0x14000c83f:
 lea rcx, [rsp+0x1080]
 call sub_14000f5d0
 nop 

0x14000c84d:
 lea rcx, [rsp+0x30e0]
 call 0x140025c2c
 nop 
 lea rcx, [rsp+0x15530]
 call 0x140011520
 nop 
 lea rcx, [rsp+0x148e0]
 call 0x140011520
 nop 
 lea rcx, [rsp+0x13c90]
 call 0x140011520
 nop 
 lea rcx, [rsp+0x12b88]
 call 0x14000a4b4
 nop 
 lea rcx, [rsp+0x11ac8]
 call 0x14000a4b4

0x14000c8a0:
 lea rcx, [rsp+0x20b0]
 call sub_14000f274
 nop 
 cmp dil, bpl
 je 0x14000c8f4
 mov r8d, 5
 mov rdx, rbx
 lea rcx, [rsp+0x20b0]
 call 0x14000f2b8
 cmp al, bpl
 je 0x14000c8f4
 lea r9, [rsp+0x1068]
 lea r8, [rsp+0x1060]
 lea rdx, [rsp+0x1058]
 mov rcx, qword ptr [rsp+0x20b8]
 call qword ptr [SetFileTime]

0x14000c8f4:
 mov edx, dword ptr [rsp+0x1038]
 test dl, 0x1
 je 0x14000c909
 mov rcx, rbx
 call 0x140010044
 nop 

0x14000c909:
 lea rcx, [rsp+0x20b0]
 call sub_14000f94c
 nop 
 lea rcx, [rsp+0x1080]
 call sub_14000f94c
 jmp 0x14000c96c

0x14000c926:
 lea rdx, [rsi+0x26]
 mov r8, rbx
 mov ecx, 0x50
 call sub_1400014b8
 mov edx, 3
 lea rcx, [0x140050e70]
 call 0x14000af6c
 jmp 0x14000c96c

0x14000c94a:
 lea rdx, [rcx+0x26]
 mov r8, rbx
 mov ecx, 0x51
 call sub_1400014b8
 mov edx, 0x1
 lea rcx, [0x140050e70]
 call 0x14000af6c

0x14000c96c:
 mov rcx, qword ptr [rsp+0x181a0]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x181e0]
 add rsp, 0x181b0
 pop rdi
 pop rsi
 pop rbp
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_14000c990
; --------------------------------------------------------------------------
sub_14000c990   proc
 sub rsp, 0x28
 cmp byte ptr [rcx+0x62e1], 0x0
 mov r10, rdx
 jne 0x14000c9d8
 movzx r9d, word ptr [rdx+0x9da8]
 sub r9d, 0x104
 je 0x14000c9c4
 cmp r9d, 0x1
 jne 0x14000c9d8
 mov rdx, r8
 mov rcx, r10
 call 0x14000c560
 jmp 0x14000c9d8

0x14000c9c4:
 cmp byte ptr [rcx+0x61a8], 0x0
 je 0x14000c9d8
 mov rdx, r8
 mov rcx, r10
 call 0x14000bac0

0x14000c9d8:
 add rsp, 0x28
 ret 
sub_14000c990   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000c9e0
; --------------------------------------------------------------------------
sub_14000c9e0   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x50]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x58]
 arg_3[0x10] : byte, ; [rsp+0x18] ; [rsp+0x60]
 arg_4 : qword ; [rsp+0x70]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x20
 mov r13, qword ptr [arg_4]
 mov rbp, rdx
 mov rdx, qword ptr [rcx+0x8]
 mov rsi, r8
 mov r12, rcx
 add rdx, 0x201e
 mov r8, r13
 mov rcx, r9
 mov rbx, r9
 call sub_14001efc0
 mov rcx, qword ptr [r12+0x8]
 xor r14d, r14d
 add rcx, 0x201e
 cmp word ptr [rcx], r14w
 je 0x14000ca63
 call sub_140013400
 movzx edi, word ptr [rax]
 mov ecx, edi
 call 0x140013458
 cmp al, r14b
 jne 0x14000ca63
 mov ecx, edi
 call sub_14001346c
 cmp al, r14b
 jne 0x14000ca63
 mov rdx, r13
 mov rcx, rbx
 call sub_1400134a8

0x14000ca63:
 mov rax, qword ptr [r12+0x8]
 cmp byte ptr [rax+0x73a8], r14b
 je 0x14000caa3
 lea rcx, [rbp+0xc53a]
 call 0x140013c20
 mov r8, r13
 mov rcx, rbx
 mov rdx, rax
 call sub_14001effc
 mov r8, r13
 xor edx, edx
 mov rcx, rbx
 call sub_14001452c
 mov rdx, r13
 mov rcx, rbx
 call sub_1400134a8

0x14000caa3:
 mov rdi, qword ptr [r12+0x8]
 xor eax, eax
 or r8, 0xffffffffffffffff
 add rdi, 0x4030
 mov rcx, r8
 lea r15d, [rax+0x5c]
 repne scasd eax, dword ptr [rdi]
 not rcx
 sub rcx, 0x1
 mov rdx, rcx
 je 0x14000cb00
 mov rdi, rsi
 mov rcx, r8
 repne scasd eax, dword ptr [rdi]
 not rcx
 dec rcx
 cmp rdx, rcx
 cmovb rcx, rdx
 lea rsi, [rsi+rcx*2]
 jmp 0x14000caeb

0x14000cae7:
 add rsi, 2

0x14000caeb:
 cmp word ptr [rsi], r15w
 je 0x14000cae7
 cmp word ptr [rsi], r14w
 jne 0x14000cb00
 mov word ptr [rbx], r14w
 jmp 0x14000cbb4

0x14000cb00:
 mov rax, qword ptr [r12+0x8]
 mov ecx, 0x3a
 cmp dword ptr [rax+0x6164], 4
 movzx edi, word ptr [rax+0x83ca]
 jne 0x14000cb33
 cmp di, 0x58
 jne 0x14000cb33
 call sub_14001346c
 cmp al, r14b
 je 0x14000cb33
 mov bpl, 0x1
 mov word ptr [rbx], r14w
 jmp 0x14000cb36

0x14000cb33:
 mov bpl, r14b

0x14000cb36:
 cmp di, 0x45
 je 0x14000cb4f
 mov rax, qword ptr [r12+0x8]
 cmp dword ptr [rax+0x6164], 0x1
 je 0x14000cb4f
 mov rdx, rsi
 jmp 0x14000cb5a

0x14000cb4f:
 mov rcx, rsi
 call 0x140013c20
 mov rdx, rax

0x14000cb5a:
 mov r8, r13
 mov rcx, rbx
 call sub_14001effc
 movzx ecx, word ptr [rbx]
 call 0x140021524
 mov edi, eax
 cmp bpl, r14b
 je 0x14000cbb4
 cmp word ptr [rbx+2], 0x5f
 jne 0x14000cb9e
 movzx ecx, word ptr [rbx+4]
 call 0x140013458
 cmp al, r14b
 je 0x14000cb9e
 sub di, 0x41
 cmp di, 0x19
 ja 0x14000cb9e
 mov eax, 0x3a
 mov word ptr [rbx+2], ax
 jmp 0x14000cbb4

0x14000cb9e:
 cmp word ptr [rbx], 0x5f
 jne 0x14000cbb4
 cmp word ptr [rbx+2], 0x5f
 jne 0x14000cbb4
 mov word ptr [rbx], r15w
 mov word ptr [rbx+2], r15w

0x14000cbb4:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 ret 
sub_14000c9e0   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000cbd4
; --------------------------------------------------------------------------
sub_14000cbd4   proc \
 arg_1 : qword ; [rsp+0x10] ; [rsp+0x1c8]

 local local_1[0x7f]: byte ; [rsp+0x20]
 local local_2: byte ; [rsp+0x9f]
 local local_3[0x100]: byte ; [rsp+0xa0]
 local local_4: byte ; [rsp+0x1a0]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x1b0
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_4], rax
 cmp dword ptr [rdx+0xc4f0], 2
 mov rbx, r8
 jne 0x14000cc92
 cmp byte ptr [rdx+0x7a70], 0x0
 jne 0x14000cc92
 mov rcx, qword ptr [rcx+0x8]
 mov edi, 0x80
 lea rdx, [local_3]
 add rcx, 0x5030
 mov r8, rdi
 call sub_14001cfa8
 lea rdx, [local_1]
 lea rcx, [local_3]
 mov r8d, edi
 call qword ptr [CharToOemBuffW]
 lea rdx, [local_3]
 lea rcx, [local_1]
 mov r8, rdi
 mov byte ptr [local_2], 0x0
 call sub_14002110c
 lea rdx, [local_3]
 mov rcx, rbx
 call sub_14001cffc
 lea rcx, [local_3]
 mov edx, 0x100
 call sub_14001cf34
 lea rcx, [local_1]
 mov rdx, rdi
 call sub_14001cf34

0x14000cc92:
 mov rcx, qword ptr [local_4]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [arg_1]
 add rsp, 0x1b0
 pop rdi
 ret 
sub_14000cbd4   endp
 
 int3 

0x14000ccb4:
 mov qword ptr [rsp+0x8], rcx
 push rdi
 sub rsp, 0x30
 mov qword ptr [rsp+0x20], -2
 mov qword ptr [rsp+0x48], rbx
 mov rdi, rcx
 mov rbx, qword ptr [rcx+0x4748]
 test rbx, rbx
 je 0x14000ccec
 mov rcx, rbx
 call 0x140025c2c
 mov rcx, rbx
 call 0x14002cfa4
 nop 

0x14000ccec:
 lea rbx, [rdi+0x10]
 mov qword ptr [rsp+0x40], rbx
 lea rcx, [rbx+0x3ae0]
 call 0x140011520
 nop 
 lea rcx, [rbx+0x2e90]
 call 0x140011520
 nop 
 lea rcx, [rbx+0x2240]
 call 0x140011520
 nop 
 lea rcx, [rbx+0x1138]
 call 0x14000a4b4
 nop 
 lea rcx, [rbx+0x78]
 mov rbx, qword ptr [rsp+0x48]
 add rsp, 0x30
 pop rdi
 jmp 0x14000a4b4

0x14000cd3c:
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 mov rcx, rdx
 call sub_14000fb48
 xor ecx, ecx
 mov byte ptr [rbx+0x475c], 0x1
 mov qword ptr [rbx+0x2218], rax
 mov rax, qword ptr [rbx+0x8]
 mov dword ptr [rbx+0x4754], ecx
 mov dword ptr [rbx+0x4758], ecx
 mov dl, byte ptr [rax+0x5130]
 mov byte ptr [rbx+0x220f], cl
 mov byte ptr [rbx+0x5761], cl
 mov byte ptr [rbx+0x475e], cl
 mov byte ptr [rbx+0x475f], cl
 mov rcx, rbx
 mov byte ptr [rbx+0x5760], dl
 mov byte ptr [rbx+0x475d], 0x1
 add rsp, 0x20
 pop rbx
 jmp sub_14001fefc
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000cda8
; --------------------------------------------------------------------------
sub_14000cda8   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0xa0]

 local local_1[0x60]: byte ; [rsp+0x20]
 local local_2: dword ; [rsp+0x80]
 local local_3: dword ; [rsp+0x84]
 local local_4: dword ; [rsp+0x88]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x90
 mov rdi, r8
 mov r8, qword ptr [rcx+0x8]
 mov rbx, rcx
 cmp byte ptr [r8+0x5130], 0x0
 jne 0x14000ce26
 add r8, 0x5030
 mov rdx, rdi
 mov ecx, 0x1
 call 0x140020bdc
 test al, al
 je 0x14000cdfa
 mov rax, qword ptr [rbx+0x8]
 cmp byte ptr [rax+0x5130], 0x0
 je 0x14000cdfa
 mov byte ptr [rax+0x5133], 0x1
 jmp 0x14000ceba

0x14000cdfa:
 and dword ptr [local_2], 0x0
 and dword ptr [local_3], 0x0
 lea rcx, [local_1]
 mov dword ptr [local_4], 2
 call sub_140020600

0x14000ce1f:
 xor al, al
 jmp 0x14000cebc

0x14000ce26:
 cmp byte ptr [rcx+0x5760], 0x0
 jne 0x14000ceba
 cmp byte ptr [rdx+0x8b48], 0x0
 jne 0x14000ceba
 mov ecx, 0xd56
 call sub_140019e20
 mov rdx, rdi
 mov rcx, rax
 call sub_140008e80
 mov r11, qword ptr [rbx+0x8]
 cmp byte ptr [r11+0x619c], 0x0
 jne 0x14000ceba
 mov ecx, 0xbbc
 call sub_140019e20
 mov rcx, rax
 call 0x14000937c
 cmp eax, 0xff
 je 0x14000ce89
 cmp eax, 2
 je 0x14000ce9a
 cmp eax, 3
 jne 0x14000ceba
 mov byte ptr [rbx+0x5760], 0x1
 jmp 0x14000ceba

0x14000ce89:
 lea rcx, [0x140050e70]
 mov edx, 0xff
 call 0x14000b114

0x14000ce9a:
 mov r8, qword ptr [rbx+0x8]
 mov rdx, rdi
 mov ecx, 0x1
 add r8, 0x5030
 call 0x140020bdc
 test al, al
 je 0x14000ce1f

0x14000ceba:
 mov al, 0x1

0x14000cebc:
 mov rbx, qword ptr [arg_1]
 add rsp, 0x90
 pop rdi
 ret 
sub_14000cda8   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000ced0
; --------------------------------------------------------------------------
sub_14000ced0   proc \
 arg_1 : qword, ; [rsp+0x8]
 arg_2 : qword, ; [rsp+0x58]
 arg_3 : qword ; [rsp+0x60]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_1], rcx
 push rbp
 push rsi
 push rdi
 sub rsp, 0x30
 mov qword ptr [local_1], -2
 mov qword ptr [arg_3], rbx
 mov rbp, rdx
 mov rdi, rcx
 xor ebx, ebx
 mov qword ptr [rcx], rbx
 add rcx, 0x10
 call sub_140016a98
 nop 
 mov qword ptr [rdi+0x8], rbp
 mov word ptr [rdi+0x4760], bx
 mov word ptr [rdi+0x5762], bx
 mov dword ptr [rdi+0x4750], ebx
 mov ecx, 0xe968
 call 0x14002d27c
 mov qword ptr [arg_2], rax
 cmp rax, rbx
 je 0x14000cf3a
 lea rdx, [rdi+0x10]
 mov rcx, rax
 call sub_14002897c
 mov rbx, rax

0x14000cf3a:
 mov qword ptr [rdi+0x4748], rbx
 mov eax, dword ptr [rbp+0x83b8]
 mov ecx, 8
 cmp eax, ecx
 cmovb ecx, eax
 mov dword ptr [rbx+0x30], ecx
 mov rax, rdi
 mov rbx, qword ptr [arg_3]
 add rsp, 0x30
 pop rdi
 pop rsi
 pop rbp
 ret 
sub_14000ced0   endp
 
; --------------------------------------------------------------------------
; sub_14000cf64
; --------------------------------------------------------------------------
sub_14000cf64   proc \
 arg_1 : qword, ; [rsp+0x60]
 arg_2 : qword ; [rsp+0x68]

 local local_1: qword ; [rsp+0x20]
 local local_2: qword ; [rsp+0x28]
 local local_3: qword ; [rsp+0x30]

 mov rax, rsp
 push rdi
 sub rsp, 0x50
 mov qword ptr [local_1], -2
 mov qword ptr [rax+0x8], rbp
 mov qword ptr [rax+0x10], rsi
 mov rdi, rdx
 mov rbp, rcx
 and qword ptr [rax-0x30], 0x0
 and qword ptr [rax-0x28], 0x0
 and qword ptr [rax-0x20], 0x0
 and qword ptr [rax-0x18], 0x0
 mov edx, 0x40000
 lea rcx, [rax-0x30]
 call sub_140001294
 nop 
 mov r8, qword ptr [local_3]
 mov rdx, qword ptr [local_2]
 mov rcx, rbp
 call sub_140016c2c
 test eax, eax
 je 0x14000cffb

0x14000cfbc:
 cmp eax, 0xff
 je 0x14000cffb
 mov ecx, eax
 mov edx, edi
 cmp rcx, rdi
 cmovl edx, eax
 mov esi, edx
 mov r8d, edx
 mov rdx, qword ptr [local_2]
 mov rcx, rbp
 call 0x140016b00
 test rdi, rdi
 js 0x14000cfe5
 sub rdi, rsi

0x14000cfe5:
 mov r8, qword ptr [local_3]
 mov rdx, qword ptr [local_2]
 mov rcx, rbp
 call sub_140016c2c
 test eax, eax
 jne 0x14000cfbc

0x14000cffb:
 cmp qword ptr [local_2], 0x0
 je 0x14000d00d
 mov rcx, qword ptr [local_2]
 call sub_14002cfac

0x14000d00d:
 mov rbp, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x50
 pop rdi
 ret 
sub_14000cf64   endp
 
 int3 
 int3 
 int3 

0x14000d020:
 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 mov eax, 0x1090
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x40], -2
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1080], rax
 mov rbp, r9
 mov rdi, r8
 mov r12, rdx
 mov rsi, qword ptr [rsp+0x10e0]
 mov r8, qword ptr [rsp+0x10e8]
 mov rdx, rsi
 mov rcx, rsi
 call sub_1400137b4
 lea rcx, [rsp+0x50]
 call sub_14000f274
 nop 
 mov rdx, rsi
 lea rcx, [rsp+0x50]
 call sub_14000f43c
 xor ebx, ebx
 cmp al, bl
 jne 0x14000d0b0
 mov r9, rbp
 mov r8, rsi
 mov rdx, rdi
 lea ecx, [rbx+0x11]
 call sub_14001bf4c
 mov rdx, rdi
 lea ecx, [rbx+0x12]
 call sub_140001454
 nop 
 jmp 0x14000d12d

0x14000d0b0:
 mov qword ptr [rsp+0x20], rbx
 mov qword ptr [rsp+0x28], rbx
 mov qword ptr [rsp+0x30], rbx
 mov qword ptr [rsp+0x38], rbx
 mov edx, 0x100000
 lea rcx, [rsp+0x20]
 call sub_140001294
 nop 
 call 0x14001f5e0
 mov r8, qword ptr [rsp+0x28]
 mov rdi, qword ptr [rsp+0x20]
 mov rdx, rdi
 lea rcx, [rsp+0x50]
 call sub_14000fbe8
 cmp eax, ebx
 je 0x14000d11d

0x14000d0f4:
 movsxd r8, eax
 mov rdx, rdi
 mov rcx, r12
 call sub_14000f66c
 call 0x14001f5e0
 mov r8, qword ptr [rsp+0x28]
 mov rdx, rdi
 lea rcx, [rsp+0x50]
 call sub_14000fbe8
 cmp eax, ebx
 jne 0x14000d0f4

0x14000d11d:
 cmp rdi, rbx
 je 0x14000d12b
 mov rcx, rdi
 call sub_14002cfac
 nop 

0x14000d12b:
 mov bl, 0x1

0x14000d12d:
 lea rcx, [rsp+0x50]
 call sub_14000f94c
 mov al, bl
 mov rcx, qword ptr [rsp+0x1080]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x1090
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
 int3 

0x14000d158:
 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 mov eax, 0x1060
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1050], rax
 mov rax, qword ptr [rcx+0x8]
 mov rbx, r8
 mov rsi, rdx
 cmp byte ptr [rax+0x62e1], 0x0
 mov rdi, rcx
 je 0x14000d1c7
 mov ecx, 0xd5c
 call sub_140019e20
 mov rdx, rbx
 mov rcx, rax
 call sub_140008e10
 mov ecx, 0xd18
 call sub_140019e20
 lea rcx, [0x14003d008]
 mov rdx, rax
 call sub_140008e10
 jmp 0x14000d435

0x14000d1c7:
 cmp byte ptr [rax+0x62bc], 0x0
 mov r8d, dword ptr [rsi+0x7a74]
 sete dl
 add rcx, 0x5762
 call 0x140010510
 mov r12d, eax
 test eax, eax
 je 0x14000d36f
 lea rcx, [rdi+0x5762]
 call sub_1400104f4
 mov bpl, al
 test al, al
 je 0x14000d264
 lea rcx, [rdi+0x5762]
 call 0x14000ffc8
 mov ecx, eax
 call 0x14000ffa8
 test al, al
 jne 0x14000d25b
 mov rcx, qword ptr [rdi+0x8]
 mov byte ptr [rsp+0x38], 0x0
 lea rax, [rsi+0x8a98]
 mov qword ptr [rsp+0x30], rax
 mov rax, qword ptr [rsi+0x8ab8]
 lea r8, [rdi+0x5762]
 mov qword ptr [rsp+0x28], rax
 lea rax, [rsp+0x40]
 mov r9d, 0x800
 xor edx, edx
 mov qword ptr [rsp+0x20], rax
 call sub_14000f144
 xor bpl, bpl

0x14000d25b:
 test bpl, bpl
 jne 0x14000d310

0x14000d264:
 lea rcx, [rdi+0x5762]
 mov dl, 0x1
 call 0x1400105ec
 mov r11, qword ptr [rdi+0x8]
 mov r8d, dword ptr [rsi+0x7a74]
 cmp byte ptr [r11+0x62bc], 0x0
 lea rcx, [rdi+0x5762]
 sete dl
 call 0x140010510
 test eax, eax
 je 0x14000d36f
 lea rdx, [rdi+0x5762]
 lea rcx, [rsp+0x50]
 mov r8d, 0x800
 call sub_14001efc0
 lea rcx, [rdi+0x5762]
 mov dl, 0x1
 call sub_1400136d4
 lea rcx, [rdi+0x5762]
 mov dl, 0x1
 call 0x1400105ec
 mov r11, qword ptr [rdi+0x8]
 mov r8d, dword ptr [rsi+0x7a74]
 cmp byte ptr [r11+0x62bc], 0x0
 lea rcx, [rdi+0x5762]
 sete dl
 call 0x140010510
 mov r12d, eax
 test eax, eax
 jne 0x14000d315
 lea rdx, [rsi+0x26]
 lea r9, [rdi+0x5762]
 lea r8, [rsp+0x50]
 lea ecx, [rax+0x21]
 call sub_14001bf4c

0x14000d310:
 test r12d, r12d
 je 0x14000d36f

0x14000d315:
 test bpl, bpl
 je 0x14000d33b
 mov rax, qword ptr [rdi+0x8]
 cmp byte ptr [rax+0x62bc], 0x0
 jne 0x14000d3a1
 mov edx, dword ptr [rsi+0x7a74]
 lea rcx, [rdi+0x5762]
 call 0x140010044
 jmp 0x14000d3a1

0x14000d33b:
 lea rdx, [rsi+0x26]
 lea r8, [rdi+0x5762]
 mov ecx, 0x13
 call sub_1400014b8
 lea rcx, [0x140050e70]
 call sub_14000b194
 lea rcx, [0x140050e70]
 mov edx, 9
 call 0x14000af6c
 jmp 0x14000d3a8

0x14000d36f:
 mov ecx, 0xd58
 call sub_140019e20
 lea rdx, [rdi+0x5762]
 mov rcx, rax
 call sub_140008e10
 mov ecx, 0xd18
 call sub_140019e20
 lea rcx, [0x14003d008]
 mov rdx, rax
 call sub_140008e10

0x14000d3a1:
 mov byte ptr [rdi+0x5761], 0x1

0x14000d3a8:
 cmp byte ptr [rdi+0x5761], 0x0
 je 0x14000d435
 mov rax, qword ptr [rdi+0x8]
 cmp byte ptr [rax+0x62bb], 0x0
 je 0x14000d3e3
 bt dword ptr [rsi+0x7a74], 0xb
 jae 0x14000d3e3
 call sub_140011a38
 test eax, eax
 je 0x14000d3e3
 lea rcx, [rdi+0x5762]
 mov dl, 0x1
 call 0x140010208

0x14000d3e3:
 mov r10, qword ptr [rdi+0x8]
 lea rdx, [rsi+0x8aa8]
 lea rcx, [rdi+0x5762]
 mov eax, dword ptr [r10+0x73b4]
 neg eax
 mov eax, dword ptr [r10+0x73b0]
 sbb r9, r9
 and r9, rdx
 neg eax
 mov eax, dword ptr [r10+0x73ac]
 sbb r8, r8
 lea rdx, [rsi+0x8aa0]
 lea r10, [rsi+0x8a98]
 and r8, rdx
 neg eax
 sbb rdx, rdx
 and rdx, r10
 call 0x14001032c

0x14000d435:
 mov rcx, qword ptr [rsp+0x1050]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x1060
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
 int3 

0x14000d454:
 mov qword ptr [rsp+0x20], rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x1060
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1050], rax
 mov rax, qword ptr [rcx+0x8]
 mov r12, r8
 mov r13, rdx
 movzx r8d, word ptr [rax+0x83ca]
 mov rbp, rcx
 mov dil, 0x1
 cmp r8w, 0x50
 jne 0x14000d4ab
 mov dword ptr [r12+0x14], 0x1

0x14000d4ab:
 cmp r8w, 0x45
 je 0x14000d4bd
 cmp r8w, 0x58
 jne 0x14000d5f8

0x14000d4bd:
 mov rcx, qword ptr [rcx+0x8]
 cmp byte ptr [rcx+0x62e1], 0x0
 jne 0x14000d5f8
 mov rax, qword ptr [rdx+0x8ab8]
 lea r14, [rdx+0x8a98]
 mov byte ptr [rsp+0x38], 0x1
 mov qword ptr [rsp+0x30], r14
 mov qword ptr [rsp+0x28], rax
 lea rax, [rsp+0x40]
 mov r15d, 0x800
 lea r8, [rbp+0x5762]
 mov rdx, r12
 mov r9, r15
 mov qword ptr [rsp+0x20], rax
 call sub_14000f144
 test al, al
 jne 0x14000d5f8
 xor dil, dil
 cmp byte ptr [rsp+0x40], dil
 jne 0x14000d5f8
 lea r8, [rbp+0x5762]
 lea rdx, [r13+0x26]
 lea rcx, [0x140050e70]
 call sub_14000b444
 lea rcx, [rbp+0x5762]
 call sub_14001364c
 test al, al
 jne 0x14000d5f8
 lea rdx, [r13+0x26]
 mov ecx, 0x6a
 call sub_140001454
 lea rdx, [rbp+0x5762]
 lea rcx, [rsp+0x50]
 mov r8, r15
 call sub_14001efc0
 lea rcx, [rbp+0x5762]
 mov dl, 0x1
 call sub_1400136d4
 lea rcx, [rbp+0x5762]
 mov dl, 0x1
 call 0x1400105ec
 mov rax, qword ptr [r13+0x8ab8]
 mov rcx, qword ptr [rbp+0x8]
 mov byte ptr [rsp+0x38], 0x1
 mov qword ptr [rsp+0x30], r14
 mov qword ptr [rsp+0x28], rax
 lea rax, [rsp+0x40]
 lea r8, [rbp+0x5762]
 mov r9, r15
 mov rdx, r12
 mov qword ptr [rsp+0x20], rax
 call sub_14000f144
 lea rdx, [r13+0x26]
 test al, al
 je 0x14000d5e5
 lea r9, [rbp+0x5762]
 lea r8, [rsp+0x50]
 mov ecx, 0x21
 call sub_14001bf4c
 mov dil, 0x1
 jmp 0x14000d5f8

0x14000d5e5:
 lea r8, [rbp+0x5762]
 lea rcx, [0x140050e70]
 call sub_14000b444

0x14000d5f8:
 mov al, dil
 mov rcx, qword ptr [rsp+0x1050]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x10b8]
 add rsp, 0x1060
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000d628
; --------------------------------------------------------------------------
sub_14000d628   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 xor edi, edi
 cmp dword ptr [rdx+0xc4f0], 3
 jne 0x14000d64e
 cmp byte ptr [rdx+0x7a71], 0x32
 seta cl
 jmp 0x14000d661

0x14000d64e:
 mov al, byte ptr [rdx+0x7a71]
 cmp al, 0xd
 jb 0x14000d65f
 mov cl, dil
 cmp al, 0x1d
 jbe 0x14000d661

0x14000d65f:
 mov cl, 0x1

0x14000d661:
 mov al, byte ptr [rdx+0x7a72]
 neg al
 sbb sil, sil
 and sil, cl
 cmp sil, dil
 je 0x14000d697
 lea rbx, [rdx+0x26]
 lea rcx, [0x140050e70]
 mov rdx, rbx
 call sub_14000b160
 mov rdx, rbx
 mov ecx, 0x22
 call sub_140001454
 cmp sil, dil

0x14000d697:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 sete al
 add rsp, 0x20
 pop rdi
 ret 
sub_14000d628   endp
 
 int3 
 int3 

0x14000d6ac:
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x4290
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x68], -2
 mov qword ptr [rsp+0x42e0], rbx
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x4280], rax
 mov r13, r9
 mov rsi, rdx
 mov rbp, rcx
 xor edi, edi
 cmp qword ptr [rdx+0x8ab0], rdi
 jge 0x14000d703
 mov qword ptr [rdx+0x8ab0], rdi

0x14000d703:
 cmp qword ptr [rdx+0x8ab8], rdi
 jge 0x14000d713
 mov qword ptr [rdx+0x8ab8], rdi

0x14000d713:
 mov rax, qword ptr [rcx+0x8]
 movzx r14d, word ptr [rax+0x83ca]
 mov word ptr [rsp+0x60], r14w
 cmp r8, rdi
 jne 0x14000d76a
 cmp byte ptr [rcx+0x220f], dil
 je 0x14000d763
 lea rdx, [rcx+0x10]
 movzx r9d, r14w
 xor r8d, r8d
 mov rcx, rsi
 call 0x14002c4e8
 cmp al, dil
 jne 0x14000d76a
 mov edx, 0x1
 lea rcx, [0x140050e70]
 call 0x14000af6c
 xor al, al
 jmp 0x14000e813

0x14000d763:
 xor al, al
 jmp 0x14000e813

0x14000d76a:
 mov ebx, dword ptr [rsi+0x6854]
 cmp ebx, 2
 je 0x14000d82b
 cmp ebx, 0x77
 jne 0x14000d79e
 cmp byte ptr [rbp+0x5761], dil
 je 0x14000d81c
 lea r8, [rbp+0x5762]
 mov rdx, rsi
 mov rcx, qword ptr [rbp+0x8]
 call sub_14000c990

0x14000d79e:
 cmp ebx, 3
 jne 0x14000d7bf
 cmp byte ptr [rbp+0x5761], dil
 je 0x14000d81c
 lea r8, [rbp+0x5762]
 mov rdx, rsi
 mov rcx, qword ptr [rbp+0x8]
 call sub_14000c49c

0x14000d7bf:
 cmp ebx, 5
 jne 0x14000d81c
 cmp byte ptr [rsi+0x9d8c], dil
 je 0x14000d815
 lea rdx, [rbp+0x10]
 movzx r9d, r14w
 xor r8d, r8d
 mov rcx, rsi
 call 0x14002c4e8
 cmp al, dil
 jne 0x14000d7fb
 lea edx, [rbx-4]
 lea rcx, [0x140050e70]
 call 0x14000af6c
 xor al, al
 jmp 0x14000e813

0x14000d7fb:
 mov rax, qword ptr [rsi]
 xor r8d, r8d
 mov rdx, qword ptr [rsi+0xc4e0]
 mov rcx, rsi
 call qword ptr [rax+0x18]
 mov al, 0x1
 jmp 0x14000e813

0x14000d815:
 xor al, al
 jmp 0x14000e813

0x14000d81c:
 mov rcx, rsi
 call 0x1400010e0
 mov al, 0x1
 jmp 0x14000e813

0x14000d82b:
 mov byte ptr [rbp+0x5761], dil
 mov rcx, qword ptr [rbp+0x8]
 cmp dword ptr [rcx+0x6168], edi
 jne 0x14000d85c
 mov eax, dword ptr [rcx+0xa418]
 cmp dword ptr [rbp+0x4758], eax
 jb 0x14000d85c
 cmp byte ptr [rbp+0x475d], dil
 je 0x14000d85c
 xor al, al
 jmp 0x14000e813

0x14000d85c:
 mov byte ptr [rsp+0x52], dil
 lea rdx, [rsi+0x7a58]
 mov ebx, 0x800
 mov dword ptr [rsp+0x28], ebx
 lea rax, [rsp+0x3280]
 mov qword ptr [rsp+0x20], rax
 mov r9d, 5
 lea r8, [rsp+0x52]
 call 0x140006f78
 cmp eax, edi
 setne r15b
 mov dword ptr [rsp+0x5c], r15d
 mov rcx, qword ptr [rbp+0x8]
 cmp dword ptr [rcx+0x6164], 2
 jne 0x14000d8ed
 add rcx, 0x4030
 mov r8, rbx
 lea rdx, [rsp+0x3280]
 call sub_14001efc0
 mov rcx, qword ptr [rbp+0x8]
 mov ebx, 0x4030
 add rcx, rbx
 call 0x140013c20
 mov word ptr [rax], di
 mov rcx, qword ptr [rbp+0x8]
 add rcx, rbx
 call sub_140013430
 cmp al, dil
 je 0x14000d8ed
 mov rax, qword ptr [rbp+0x8]
 mov word ptr [rax+0x4030], di

0x14000d8ed:
 cmp r15b, dil
 je 0x14000d900
 cmp byte ptr [rsp+0x52], dil
 jne 0x14000d900
 mov byte ptr [rbp+0x475d], dil

0x14000d900:
 mov rcx, rsi
 call sub_1400023b4
 mov r12d, 0x1
 cmp byte ptr [rsi+0x8af0], dil
 je 0x14000d9cf
 cmp byte ptr [rbp+0x475c], dil
 je 0x14000d9cf
 lea rbx, [rbp+0x4760]
 mov r8d, 0x800
 mov rdx, rbx
 lea rcx, [rsp+0x1220]
 call sub_14001efc0
 mov r9b, byte ptr [rsi+0xc4fa]
 mov r8d, 0x800
 mov rdx, rbx
 mov rcx, rbx
 call 0x140014d54
 lea rdx, [rsp+0x1220]
 mov rcx, rbx
 call sub_140021464
 cmp eax, edi
 je 0x14000d989
 mov rcx, rbx
 call sub_1400104f4
 cmp al, dil
 je 0x14000d989
 mov byte ptr [r13], r12b
 xor al, al
 jmp 0x14000e813

0x14000d989:
 cmp byte ptr [rbp+0x475e], dil
 jne 0x14000d9b9
 mov byte ptr [rbp+0x475e], r12b
 lea rdx, [rsi+0x26]
 mov r8b, r12b
 mov rcx, qword ptr [rbp+0x8]
 call 0x140019214
 cmp al, dil
 je 0x14000d9b9
 mov byte ptr [r13], r12b
 xor al, al
 jmp 0x14000e813

0x14000d9b9:
 mov r8d, 0x800
 lea rdx, [rsp+0x1220]
 mov rcx, rbx
 call sub_14001efc0

0x14000d9cf:
 lea rcx, [rsi+0x7a78]
 lea rdx, [rsp+0x2280]
 call 0x140013c84
 cmp byte ptr [rsi+0x8b4b], dil
 je 0x14000da51
 mov rax, qword ptr [rbp+0x8]
 mov ecx, dword ptr [rax+0x73a4]
 cmp ecx, r12d
 je 0x14000da84
 cmp byte ptr [rsp+0x52], dil
 jne 0x14000da7d
 neg ecx
 sbb al, al
 and al, r15b
 mov r13b, al
 mov dword ptr [rsp+0x5c], r13d
 xor edx, edx
 lea rcx, [rsp+0x2280]
 call sub_140013870
 mov rcx, qword ptr [rbp+0x8]
 mov edx, dword ptr [rcx+0x73a4]
 sub edx, r12d
 cmp edx, eax
 jne 0x14000da47
 mov dl, r12b
 lea rcx, [rsp+0x2280]
 call sub_140013870
 jmp 0x14000da90

0x14000da47:
 mov r13b, dil
 mov dword ptr [rsp+0x5c], r13d
 jmp 0x14000da90

0x14000da51:
 mov rcx, rsi
 call 0x1400023ac
 cmp al, dil
 jne 0x14000da8b
 mov rax, qword ptr [rbp+0x8]
 mov r13d, dword ptr [rsp+0x5c]
 movzx r13d, r13b
 cmp dword ptr [rax+0x73a4], r12d
 cmova r13d, edi
 mov dword ptr [rsp+0x5c], r13d
 jmp 0x14000da90

0x14000da7d:
 mov r13d, dword ptr [rsp+0x5c]
 jmp 0x14000da90

0x14000da84:
 mov r13d, dword ptr [rsp+0x5c]
 jmp 0x14000da90

0x14000da8b:
 mov r13d, dword ptr [rsp+0x5c]

0x14000da90:
 mov al, byte ptr [rsi+0x8af1]
 mov byte ptr [rbp+0x220f], al
 mov byte ptr [rbp+0x2210], dil
 mov rax, qword ptr [rsi]
 mov rdx, qword ptr [rsi+0xc4e8]
 sub rdx, qword ptr [rsi+0x8ab0]
 xor r8d, r8d
 mov rcx, rsi
 call qword ptr [rax+0x18]
 mov bl, dil
 mov r9b, dil
 mov byte ptr [rsp+0x50], dil
 lea r15, [0x140050e70]
 mov eax, 0x45
 cmp byte ptr [rbp+0x475c], dil
 je 0x14000db24
 cmp r13b, dil
 jne 0x14000daeb
 cmp byte ptr [rsi+0xc4f4], dil
 je 0x14000db24

0x14000daeb:
 cmp byte ptr [rsi+0x8af0], dil
 je 0x14000db24
 cmp r13b, dil
 je 0x14000db1c
 lea rdx, [rsi+0x26]
 lea r8, [rsp+0x2280]
 mov ecx, eax
 call sub_1400014b8
 mov edx, 6
 mov rcx, r15
 call 0x14000af6c
 mov r9b, dil

0x14000db1c:
 mov r13b, dil
 mov dword ptr [rsp+0x5c], r13d

0x14000db24:
 mov byte ptr [rbp+0x475c], dil
 cmp r13b, dil
 jne 0x14000db45
 mov r9b, byte ptr [rsi+0xc4f4]
 mov byte ptr [rsp+0x50], r9b
 cmp r9b, dil
 je 0x14000e7e2

0x14000db45:
 mov rax, qword ptr [rbp+0x8]
 mov cl, byte ptr [rax+0x62e1]
 cmp cl, dil
 je 0x14000db60
 cmp r14w, 0x49
 je 0x14000db60
 mov r8b, r12b
 jmp 0x14000db63

0x14000db60:
 mov r8b, dil

0x14000db63:
 cmp cl, dil
 sete dl
 lea rcx, [rsp+0x2280]
 call 0x1400205b4
 cmp al, dil
 jne 0x14000db82
 xor al, al
 jmp 0x14000e813

0x14000db82:
 mov qword ptr [rsp+0x20], 0x800
 lea r9, [rbp+0x5762]
 lea r8, [rsp+0x2280]
 mov rdx, rsi
 mov rcx, rbp
 call sub_14000c9e0
 cmp byte ptr [rsp+0x50], dil
 jne 0x14000dbc7
 cmp word ptr [rbp+0x5762], di
 je 0x14000dbc7
 cmp byte ptr [rsi+0x8af0], dil
 jne 0x14000dbc7
 mov bl, r12b
 mov dword ptr [rsp+0x54], ebx
 jmp 0x14000dbce

0x14000dbc7:
 mov bl, dil
 mov dword ptr [rsp+0x54], ebx

0x14000dbce:
 mov rax, qword ptr [rbp+0x8]
 mov ecx, 0x58
 cmp byte ptr [rax+0x615f], dil
 jne 0x14000dbed
 cmp byte ptr [rax+0x6160], dil
 je 0x14000dc79

0x14000dbed:
 mov eax, 0x45
 cmp r14w, ax
 je 0x14000dbfe
 cmp r14w, cx
 jne 0x14000dc79

0x14000dbfe:
 mov qword ptr [rsp+0x2230], rdi
 mov qword ptr [rsp+0x2238], rdi
 mov qword ptr [rsp+0x2240], rdi
 xor r8d, r8d
 lea rdx, [rsp+0x1220]
 lea rcx, [rbp+0x5762]
 call sub_140011338
 cmp al, dil
 je 0x14000dc64
 mov rcx, qword ptr [rsi+0x8a98]
 mov rax, qword ptr [rsp+0x2230]
 cmp rax, rcx
 ja 0x14000dc4b
 cmp rax, rcx
 jne 0x14000dc79

0x14000dc4b:
 cmp byte ptr [rsp+0x222c], dil
 je 0x14000dc5b
 cmp rax, qword ptr [rbp]
 jae 0x14000dc79

0x14000dc5b:
 mov bl, dil
 mov dword ptr [rsp+0x54], ebx
 jmp 0x14000dc79

0x14000dc64:
 mov rax, qword ptr [rbp+0x8]
 movzx ebx, bl
 cmp byte ptr [rax+0x615f], dil
 cmovne ebx, edi
 mov dword ptr [rsp+0x54], ebx

0x14000dc79:
 cmp byte ptr [rsi+0x8af3], dil
 je 0x14000dcc7
 lea r8, [rsp+0x2280]
 mov rdx, rsi
 mov rcx, rbp
 call sub_14000cda8
 cmp al, dil
 jne 0x14000dca8
 mov byte ptr [rbp+0x6762], r12b
 xor al, al
 jmp 0x14000e813

0x14000dca8:
 mov rax, qword ptr [rbp+0x8]
 cmp byte ptr [rax+0x5130], dil
 jne 0x14000dcc7
 mov edx, r12d
 mov rcx, r15
 call 0x14000af6c
 mov bl, dil
 mov dword ptr [rsp+0x54], ebx

0x14000dcc7:
 lea r8, [rsp+0x2280]
 mov rdx, rsi
 mov rcx, rbp
 call sub_14000d628
 cmp al, dil
 jne 0x14000dd03
 mov edx, 2
 mov rcx, r15
 call 0x14000af6c
 mov rcx, rsi
 call 0x1400010e0
 cmp byte ptr [rsi+0xc4f4], dil
 sete al
 jmp 0x14000e813

0x14000dd03:
 mov rdx, qword ptr [rbp+0x8]
 lea rcx, [rsp+0xe0]
 add rdx, 0x5030
 mov r8d, 0x102
 call 0x14002d490
 nop 
 lea r8, [rsp+0xe0]
 mov rdx, rsi
 mov rcx, rbp
 call sub_14000cbd4
 lea r9, [rsi+0x8b23]
 lea r8, [rsi+0x8b09]
 mov al, byte ptr [rsi+0x8af8]
 lea rcx, [rsi+0x8af9]
 neg al
 sbb rdx, rdx
 and rdx, rcx
 lea rax, [rsp+0x2270]
 mov qword ptr [rsp+0x40], rax
 mov qword ptr [rsp+0x38], r9
 mov eax, dword ptr [rsi+0x8b44]
 mov dword ptr [rsp+0x30], eax
 mov qword ptr [rsp+0x28], r8
 mov qword ptr [rsp+0x20], rdx
 lea r9, [rsp+0xe0]
 mov r8d, dword ptr [rsi+0x8af4]
 xor edx, edx
 lea rcx, [rbp+0x10]
 call sub_1400169fc
 cmp byte ptr [rsi+0x8af3], dil
 je 0x14000dde6
 cmp byte ptr [rsi+0x8b19], dil
 je 0x14000dde6
 mov rax, qword ptr [rsi+0x8b1a]
 cmp rax, qword ptr [rsp+0x2270]
 je 0x14000dde6
 cmp byte ptr [rsi+0xc508], dil
 jne 0x14000dde6
 lea rdx, [rsi+0x26]
 mov ecx, 6
 call sub_140001454
 mov edx, 0xb
 mov rcx, r15
 call 0x14000af6c
 mov bl, dil
 mov dword ptr [rsp+0x54], ebx

0x14000dde6:
 lea rcx, [rsp+0x1f0]
 call sub_14000f274
 nop 
 mov eax, dword ptr [rsi+0x8b60]
 cmp eax, edi
 setne cl
 mov byte ptr [rsp+0x58], cl
 mov r15d, 0x50
 cmp cl, dil
 je 0x14000deb2
 cmp eax, 5
 je 0x14000deb2
 cmp bl, dil
 je 0x14000df60
 cmp r14w, r15w
 je 0x14000df5b
 mov rax, qword ptr [rbp+0x8]
 cmp byte ptr [rax+0x62e1], dil
 jne 0x14000df5b
 mov byte ptr [rsp+0x51], dil
 lea rcx, [rbp+0x5762]
 call sub_1400104f4
 cmp al, dil
 je 0x14000de9b
 cmp byte ptr [rsp+0x51], dil
 jne 0x14000dea6
 lea rax, [rsi+0x8a98]
 mov byte ptr [rsp+0x38], dil
 mov qword ptr [rsp+0x30], rax
 mov rax, qword ptr [rsi+0x8ab8]
 mov qword ptr [rsp+0x28], rax
 lea rax, [rsp+0x51]
 mov qword ptr [rsp+0x20], rax
 mov r9d, 0x800
 lea r8, [rbp+0x5762]
 xor edx, edx
 mov rcx, qword ptr [rbp+0x8]
 call sub_14000f144

0x14000de9b:
 cmp byte ptr [rsp+0x51], dil
 je 0x14000df5b

0x14000dea6:
 mov bl, dil
 mov dword ptr [rsp+0x54], ebx
 jmp 0x14000df5b

0x14000deb2:
 mov rcx, rsi
 call 0x1400023ac
 cmp al, dil
 je 0x14000df3d
 cmp bl, dil
 je 0x14000df1a
 mov eax, r15d
 cmp r14w, ax
 je 0x14000df1a
 cmp r14w, 0x49
 je 0x14000df1a
 mov eax, 0x45
 cmp r14w, ax
 je 0x14000df1a
 mov rax, qword ptr [rbp+0x8]
 cmp dword ptr [rax+0x6164], r12d
 je 0x14000df1a
 add dword ptr [rbp+0x4750], r12d
 lea r8, [rsp+0x2280]
 mov rdx, rsi
 mov rcx, rbp
 call 0x14000d158
 nop 
 lea rcx, [rsp+0x1f0]
 call sub_14000f94c
 nop 
 jmp 0x14000dfa0

0x14000df1a:
 lea rcx, [rsp+0x1f0]
 call sub_14000f94c
 nop 
 lea rcx, [rsp+0xe0]
 call sub_14001d130
 mov al, r12b
 jmp 0x14000e813

0x14000df3d:
 cmp bl, dil
 je 0x14000df60
 lea r8, [rsp+0x1f0]
 mov rdx, rsi
 mov rcx, rbp
 call 0x14000d454
 mov bl, al
 mov dword ptr [rsp+0x54], ebx

0x14000df5b:
 cmp bl, dil
 jne 0x14000dfc4

0x14000df60:
 cmp byte ptr [rsi+0xc4f4], dil
 je 0x14000dfb5
 mov bl, r12b
 mov byte ptr [rsp+0x50], bl
 mov byte ptr [rsp+0x54], r12b
 mov r9b, r12b
 xor r8d, r8d
 xor edx, edx
 lea rcx, [rsp+0x2280]
 call 0x1400205b4
 cmp al, dil
 jne 0x14000dfc8
 lea rcx, [rsp+0x1f0]
 call sub_14000f94c
 nop 
 mov r12b, dil

0x14000dfa0:
 lea rcx, [rsp+0xe0]
 call sub_14001d130
 mov al, r12b
 jmp 0x14000e813

0x14000dfb5:
 cmp bl, dil
 je 0x14000e7aa
 mov bl, byte ptr [rsp+0x50]
 jmp 0x14000dfc8

0x14000dfc4:
 mov bl, byte ptr [rsp+0x50]

0x14000dfc8:
 mov rax, qword ptr [rbp+0x8]
 cmp byte ptr [rax+0x62e1], dil
 je 0x14000dfdc
 mov byte ptr [rbp+0x5761], r12b

0x14000dfdc:
 cmp byte ptr [rax+0x62e1], dil
 jne 0x14000e03b
 cmp bl, dil
 jne 0x14000e03b
 mov byte ptr [rsp+0x51], dil
 cmp r14w, r15w
 je 0x14000e045
 lea rcx, [rsp+0x1f0]
 call sub_14000f91c
 cmp al, dil
 je 0x14000e045
 lea rbx, [rsi+0x26]
 lea r8, [rbp+0x5762]
 mov rdx, rbx
 mov ecx, 0x3a
 call sub_1400014b8
 lea r8, [rbp+0x5762]
 mov rdx, rbx
 lea rcx, [0x140050e70]
 call 0x14000b4d0
 mov bl, byte ptr [rsp+0x50]
 jmp 0x14000e045

0x14000e03b:
 mov byte ptr [rsp+0x51], r12b
 cmp bl, dil
 jne 0x14000e04c

0x14000e045:
 add dword ptr [rbp+0x4750], r12d

0x14000e04c:
 add dword ptr [rbp+0x4754], r12d
 cmp r14w, 0x49
 je 0x14000e0fe
 cmp bl, dil
 je 0x14000e07f
 mov ecx, 0xd5a
 call sub_140019e20
 mov rcx, rax
 lea rdx, [rsp+0x2280]
 call sub_140008e10
 jmp 0x14000e0fe

0x14000e07f:
 mov rax, qword ptr [rbp+0x8]
 movzx ecx, r14w
 mov edx, 0x54
 cmp byte ptr [rax+0x62e1], dil
 cmovne ecx, edx
 lea eax, [rdx-0xf]
 cmp ecx, eax
 je 0x14000e0e5
 cmp ecx, r15d
 je 0x14000e0c9
 cmp ecx, edx
 je 0x14000e0ad
 cmp ecx, 0x58
 je 0x14000e0e5
 jmp 0x14000e0fe

0x14000e0ad:
 mov ecx, 0xd5c
 call sub_140019e20
 mov rcx, rax
 lea rdx, [rsp+0x2280]
 call sub_140008e10
 jmp 0x14000e0fe

0x14000e0c9:
 mov ecx, 0xd64
 call sub_140019e20
 mov rcx, rax
 lea rdx, [rsp+0x2280]
 call sub_140008e10
 jmp 0x14000e0fe

0x14000e0e5:
 mov ecx, 0xd5e
 call sub_140019e20
 mov rcx, rax
 lea rdx, [rbp+0x5762]
 call sub_140008e10

0x14000e0fe:
 mov rax, qword ptr [rbp+0x8]
 cmp byte ptr [rax+0x6150], dil
 jne 0x14000e117
 lea rcx, [0x14003d078]
 call sub_140008e10

0x14000e117:
 mov qword ptr [rbp+0x2230], rdi
 mov qword ptr [rbp+0x2238], rdi
 lea r13, [rsi+0x8ac8]
 lea rbx, [rbp+0x3af0]
 mov rax, qword ptr [rbp+0x8]
 mov r8d, dword ptr [rax+0x83b8]
 mov edx, dword ptr [r13]
 mov rcx, rbx
 call sub_140011558
 mov r11, qword ptr [rbp+0x8]
 lea rcx, [rbp+0x2250]
 mov r8d, dword ptr [r11+0x83b8]
 mov edx, dword ptr [r13]
 call sub_140011558
 mov r11, qword ptr [rsi+0x8ab0]
 mov qword ptr [rbp+0x50], r11
 lea r8, [rsp+0x1f0]
 mov rdx, rsi
 lea rcx, [rbp+0x10]
 call sub_1400169d0
 mov r13b, byte ptr [rsp+0x51]
 mov byte ptr [rbp+0x59], r13b
 mov dl, byte ptr [rsp+0x50]
 mov byte ptr [rbp+0x5a], dl
 cmp r13b, dil
 jne 0x14000e27f
 cmp byte ptr [rsi+0xc508], dil
 jne 0x14000e21b
 mov eax, 0xffffffff
 cmp qword ptr [rsi+0x8ab8], rax
 jle 0x14000e21b
 mov al, byte ptr [rbp+0x6763]
 cmp al, dil
 jne 0x14000e1c8
 cmp byte ptr [rbp+0x6764], dil
 jne 0x14000e21b

0x14000e1c8:
 cmp al, dil
 jne 0x14000e1ef
 mov rcx, qword ptr [rbp+0x8]
 add rcx, 0x201e
 call 0x14000fed8
 mov byte ptr [rbp+0x6763], al
 cmp al, dil
 sete al
 mov byte ptr [rbp+0x6764], al

0x14000e1ef:
 cmp byte ptr [rbp+0x6763], dil
 je 0x14000e21b
 mov dword ptr [rsp+0xd0], edi
 mov dword ptr [rsp+0xd4], edi
 mov dword ptr [rsp+0xd8], 0x74
 lea rcx, [rsp+0x70]
 call sub_140020600

0x14000e21b:
 cmp byte ptr [rsi+0xc508], dil
 jne 0x14000e27b
 mov rcx, qword ptr [rsi+0x8ab8]
 mov rax, qword ptr [rsi+0x8ab0]
 shl rax, 0xb
 cmp rax, rcx
 jle 0x14000e275
 cmp rcx, 0x5f5e100
 jl 0x14000e255
 mov rcx, rsi
 call sub_14000fb48
 cmp rax, qword ptr [rsi+0x8ab0]
 jle 0x14000e26f

0x14000e255:
 mov rdx, qword ptr [rsi+0x8ab8]
 lea rcx, [rsp+0x1f0]
 call sub_14000fd64
 mov dl, byte ptr [rsp+0x50]
 jmp 0x14000e27f

0x14000e26f:
 mov dl, byte ptr [rsp+0x50]
 jmp 0x14000e27f

0x14000e275:
 mov dl, byte ptr [rsp+0x50]
 jmp 0x14000e27f

0x14000e27b:
 mov dl, byte ptr [rsp+0x50]

0x14000e27f:
 mov rcx, qword ptr [rbp+0x8]
 cmp byte ptr [rcx+0x61b4], dil
 sete byte ptr [rsp+0x20b]
 cmp r13b, dil
 jne 0x14000e2a7
 cmp dl, dil
 jne 0x14000e2a7
 cmp r14w, r15w
 je 0x14000e2a7
 mov r13b, r12b
 jmp 0x14000e2aa

0x14000e2a7:
 mov r13b, dil

0x14000e2aa:
 mov r15b, r12b
 mov r14b, r12b
 cmp byte ptr [rsp+0x58], dil
 je 0x14000e3e4
 mov ebx, dword ptr [rsi+0x8b60]
 cmp ebx, 4
 je 0x14000e31e
 cmp ebx, 5
 je 0x14000e31e
 cmp ebx, r12d
 je 0x14000e2fa
 cmp ebx, 2
 je 0x14000e2fa
 cmp ebx, 3
 je 0x14000e2fa
 lea rdx, [rsi+0x26]
 lea r9, [rbp+0x5762]
 mov r8, r9
 mov ecx, 0x46
 call sub_1400014b8
 mov r14b, dil
 jmp 0x14000e3be

0x14000e2fa:
 cmp r13b, dil
 je 0x14000e3b0
 lea r9, [rbp+0x5762]
 mov r8, rsi
 lea rdx, [rbp+0x10]
 call sub_14000c538
 mov r14b, al
 jmp 0x14000e3ab

0x14000e31e:
 lea r8, [rsi+0x8b64]
 mov qword ptr [rsp+0x20], 0x800
 lea r9, [rsp+0x1220]
 mov rdx, rsi
 mov rcx, rbp
 call sub_14000c9e0
 cmp r13b, dil
 je 0x14000e3b0
 cmp word ptr [rsp+0x1220], di
 je 0x14000e3b0
 cmp ebx, 4
 jne 0x14000e377
 mov r8d, 0x800
 lea rdx, [rsp+0x1220]
 lea r9, [rbp+0x5762]
 mov rcx, r9
 call sub_14000b7fc
 mov r14b, al
 jmp 0x14000e3ab

0x14000e377:
 lea r8, [rsi+0x26]
 mov qword ptr [rsp+0x28], 0x800
 lea rax, [rsp+0x1220]
 mov qword ptr [rsp+0x20], rax
 lea r9, [rbp+0x5762]
 lea rdx, [rsp+0x1f0]
 mov rcx, rbp
 call 0x14000d020
 mov r14b, al

0x14000e3ab:
 cmp r14b, dil
 je 0x14000e3be

0x14000e3b0:
 cmp dword ptr [rsi+0xc4f0], 2
 jne 0x14000e3c1
 cmp r13b, dil
 jne 0x14000e3c6

0x14000e3be:
 mov r15b, dil

0x14000e3c1:
 cmp r13b, dil
 je 0x14000e3d0

0x14000e3c6:
 cmp r14b, dil
 je 0x14000e3d0
 mov eax, r12d
 jmp 0x14000e3d2

0x14000e3d0:
 mov eax, edi

0x14000e3d2:
 mov byte ptr [rbp+0x5761], al
 lea rbx, [rbp+0x3af0]
 jmp 0x14000e4a0

0x14000e3e4:
 cmp byte ptr [rsi+0x8af0], dil
 jne 0x14000e4a0
 cmp byte ptr [rsi+0x7a72], dil
 jne 0x14000e412
 mov rdx, qword ptr [rsi+0x8ab8]
 lea rax, [rbp+0x10]
 mov rcx, rax
 call sub_14000cf64
 jmp 0x14000e4a0

0x14000e412:
 mov r8b, byte ptr [rsi+0x8b48]
 mov rdx, qword ptr [rsi+0x8b50]
 mov rcx, qword ptr [rbp+0x4748]
 call sub_140022980
 mov r11, qword ptr [rsi+0x8ab8]
 mov rax, qword ptr [rbp+0x4748]
 mov qword ptr [rax+0x4da0], r11
 mov byte ptr [rax+0x4db8], dil
 cmp dword ptr [rsi+0xc4f0], 3
 je 0x14000e486
 mov edx, 0xf
 cmp byte ptr [rsi+0x7a71], dl
 ja 0x14000e486
 cmp dword ptr [rbp+0x4754], r12d
 jbe 0x14000e475
 cmp byte ptr [rsi+0xc4f4], dil
 je 0x14000e475
 mov r8b, r12b
 jmp 0x14000e478

0x14000e475:
 mov r8b, dil

0x14000e478:
 mov rcx, qword ptr [rbp+0x4748]
 call sub_14002c46c
 jmp 0x14000e4a0

0x14000e486:
 movzx edx, byte ptr [rsi+0x7a71]
 mov r8b, byte ptr [rsi+0x8b48]
 mov rcx, qword ptr [rbp+0x4748]
 call sub_14002c46c

0x14000e4a0:
 mov rcx, rsi
 call 0x1400010e0
 cmp byte ptr [rsi+0x8af1], dil
 jne 0x14000e4df
 mov al, byte ptr [rsi+0x8b22]
 neg al
 sbb r8, r8
 lea rax, [rsi+0x8b23]
 and r8, rax
 lea rdx, [rsi+0x8ac8]
 mov rcx, rbx
 call sub_1400118e4
 cmp al, dil
 je 0x14000e4df
 mov al, r12b
 jmp 0x14000e4e2

0x14000e4df:
 mov al, dil

0x14000e4e2:
 cmp byte ptr [rsi+0x8b48], dil
 jne 0x14000e4f4
 mov byte ptr [rbp+0x475f], dil
 jmp 0x14000e512

0x14000e4f4:
 cmp byte ptr [rsi+0x7a72], dil
 je 0x14000e512
 cmp qword ptr [rsi+0x8ab8], rdi
 jle 0x14000e512
 cmp al, dil
 je 0x14000e512
 mov byte ptr [rbp+0x475f], r12b

0x14000e512:
 mov bl, dil
 cmp byte ptr [rsp+0x50], dil
 jne 0x14000e608
 cmp r15b, dil
 je 0x14000e608
 cmp al, dil
 je 0x14000e59a
 mov r13w, word ptr [rsp+0x60]
 mov eax, 0x50
 cmp r13w, ax
 je 0x14000e61a
 cmp r13w, 0x49
 je 0x14000e61a
 cmp dword ptr [rsi+0x8ac8], edi
 jne 0x14000e55f
 lea rax, [0x14003d070]
 jmp 0x14000e569

0x14000e55f:
 mov ecx, 0xd18
 call sub_140019e20

0x14000e569:
 mov rcx, qword ptr [rbp+0x8]
 lea r8, [0x14003cbf0]
 lea rdx, [0x14003d060]
 cmp byte ptr [rcx+0x6150], dil
 cmovne rdx, r8
 mov r8, rax
 lea rcx, [0x14003d050]
 call sub_140008e10
 jmp 0x14000e61a

0x14000e59a:
 cmp byte ptr [rsi+0x8af3], dil
 je 0x14000e5d6
 cmp byte ptr [rsi+0x8b19], dil
 je 0x14000e5b5
 cmp byte ptr [rsi+0xc508], dil
 je 0x14000e5d6

0x14000e5b5:
 cmp byte ptr [rbp+0x475f], dil
 jne 0x14000e5d6
 lea rdx, [rsi+0x26]
 lea r8, [rsp+0x2280]
 mov ecx, 4
 call sub_1400014b8
 jmp 0x14000e5ec

0x14000e5d6:
 lea rdx, [rsi+0x26]
 lea r8, [rsp+0x2280]
 mov ecx, 3
 call sub_1400014b8

0x14000e5ec:
 mov bl, r12b
 mov edx, 3
 lea rcx, [0x140050e70]
 call 0x14000af6c
 mov r13w, word ptr [rsp+0x60]
 jmp 0x14000e61a

0x14000e608:
 lea rcx, [0x14003d038]
 call sub_140008e10
 mov r13w, word ptr [rsp+0x60]

0x14000e61a:
 mov al, byte ptr [rsp+0x51]
 cmp al, dil
 jne 0x14000e7a6
 mov eax, 0x58
 cmp r13w, ax
 je 0x14000e641
 mov eax, 0x45
 cmp r13w, ax
 jne 0x14000e7a0

0x14000e641:
 cmp byte ptr [rsp+0x58], dil
 je 0x14000e65e
 cmp dword ptr [rsi+0x8b60], 5
 jne 0x14000e79a
 cmp r14b, dil
 je 0x14000e794

0x14000e65e:
 cmp bl, dil
 je 0x14000e681
 mov rax, qword ptr [rbp+0x8]
 cmp byte ptr [rax+0x61b4], dil
 je 0x14000e78e
 lea rcx, [rsp+0x1f0]
 call sub_14000f900

0x14000e681:
 mov rax, qword ptr [rbp+0x8]
 cmp byte ptr [rax+0x615c], dil
 je 0x14000e695
 and dword ptr [rsi+0x7a74], 0xffffffdf

0x14000e695:
 mov rdx, qword ptr [rbp+0x8]
 lea rbx, [rsi+0x8aa8]
 lea r13, [rsi+0x8a98]
 mov eax, dword ptr [rdx+0x73b4]
 neg eax
 sbb r9, r9
 and r9, rbx
 mov eax, dword ptr [rdx+0x73b0]
 lea rcx, [rsi+0x8aa0]
 neg eax
 sbb r8, r8
 and r8, rcx
 mov eax, dword ptr [rdx+0x73ac]
 neg eax
 sbb rdx, rdx
 and rdx, r13
 lea rcx, [rsp+0x1f0]
 call sub_14000fa64
 lea rcx, [rsp+0x1f0]
 call sub_14000f5d0
 mov r11, qword ptr [rbp+0x8]
 cmp byte ptr [r11+0x62bb], dil
 je 0x14000e719
 bt dword ptr [rsi+0x7a74], 0xb
 jae 0x14000e719
 mov dl, r12b
 lea rcx, [rsp+0x216]
 call 0x140010208

0x14000e719:
 mov rcx, qword ptr [rbp+0x8]
 mov eax, dword ptr [rcx+0x73b4]
 neg eax
 sbb r8, r8
 and r8, rbx
 mov eax, dword ptr [rcx+0x73ac]
 neg eax
 sbb rdx, rdx
 and rdx, r13
 lea rcx, [rsp+0x1f0]
 call 0x140035ef4
 mov r11, qword ptr [rbp+0x8]
 cmp byte ptr [r11+0x62bc], dil
 jne 0x14000e781
 mov edx, dword ptr [rsi+0x7a74]
 lea rcx, [rsp+0x216]
 call 0x140010044
 cmp al, dil
 jne 0x14000e781
 lea rdx, [rsi+0x26]
 lea r8, [rsp+0x216]
 mov ecx, 0x10
 call sub_1400014b8

0x14000e781:
 mov byte ptr [rbp+0x5761], r12b
 mov ebx, dword ptr [rsp+0x54]
 jmp 0x14000e7aa

0x14000e78e:
 mov ebx, dword ptr [rsp+0x54]
 jmp 0x14000e7aa

0x14000e794:
 mov ebx, dword ptr [rsp+0x54]
 jmp 0x14000e7aa

0x14000e79a:
 mov ebx, dword ptr [rsp+0x54]
 jmp 0x14000e7aa

0x14000e7a0:
 mov ebx, dword ptr [rsp+0x54]
 jmp 0x14000e7aa

0x14000e7a6:
 mov ebx, dword ptr [rsp+0x54]

0x14000e7aa:
 lea rcx, [rsp+0x1f0]
 call sub_14000f94c
 nop 
 lea rcx, [rsp+0xe0]
 call sub_14001d130
 mov r15d, dword ptr [rsp+0x5c]
 cmp r15b, dil
 je 0x14000e7dd
 add dword ptr [rbp+0x4758], r12d
 mov r9b, byte ptr [rsp+0x50]
 jmp 0x14000e7e2

0x14000e7dd:
 mov r9b, byte ptr [rsp+0x50]

0x14000e7e2:
 cmp byte ptr [rbp+0x2210], dil
 je 0x14000e7ef
 xor al, al
 jmp 0x14000e813

0x14000e7ef:
 cmp bl, dil
 jne 0x14000e810
 cmp byte ptr [rsi+0xc4f4], dil
 jne 0x14000e807
 mov rcx, rsi
 call 0x1400010e0
 jmp 0x14000e810

0x14000e807:
 cmp r9b, dil
 jne 0x14000e810
 xor al, al
 jmp 0x14000e813

0x14000e810:
 mov al, r12b

0x14000e813:
 mov rcx, qword ptr [rsp+0x4280]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x42e0]
 add rsp, 0x4290
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
 int3 
 int3 

0x14000e840:
 push rdi
 mov eax, 0x10620
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x28], -2
 mov qword ptr [rsp+0x10638], rbx
 mov qword ptr [rsp+0x10640], rbp
 mov qword ptr [rsp+0x10648], rsi
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x10610], rax
 mov rdi, rcx
 mov rdx, qword ptr [rcx+0x8]
 lea rcx, [rsp+0x20d0]
 call sub_1400020bc
 nop 
 lea rdx, [rdi+0x4760]
 lea rcx, [rsp+0x20d0]
 call sub_14000f43c
 xor ebx, ebx
 cmp al, bl
 jne 0x14000e8c5
 lea rcx, [rsp+0x20d0]
 call 0x140001360
 xor eax, eax
 jmp 0x14000ebdb

0x14000e8c5:
 mov dl, 0x1
 lea rcx, [rsp+0x20d0]
 call 0x14000164c
 cmp al, bl
 jne 0x14000e92e
 mov ecx, 0xd0a
 call sub_140019e20
 mov rcx, rax
 lea rdx, [rdi+0x4760]
 call sub_140008e10
 lea rdx, [0x14003d0b0]
 lea rcx, [rdi+0x4760]
 call sub_140013e60
 cmp al, bl
 je 0x14000e91a
 mov edx, 0x1
 lea rcx, [0x140050e70]
 call 0x14000af6c
 nop 

0x14000e91a:
 lea rcx, [rsp+0x20d0]
 call 0x140001360
 xor eax, eax
 jmp 0x14000ebdb

0x14000e92e:
 cmp byte ptr [rsp+0xe5d9], bl
 je 0x14000e94b
 lea rcx, [rsp+0x20d0]
 call 0x140001360
 xor eax, eax
 jmp 0x14000ebdb

0x14000e94b:
 mov al, byte ptr [rsp+0xe5c5]
 cmp al, bl
 je 0x14000e9d5
 cmp byte ptr [rsp+0xe5c9], bl
 jne 0x14000e9d5
 mov r9b, byte ptr [rsp+0xe5ca]
 mov r8d, 0x800
 lea rdx, [rsp+0xf610]
 lea rcx, [rdi+0x4760]
 call 0x140014d54
 lea rdx, [rsp+0xf610]
 lea rcx, [rdi+0x4760]
 call sub_140021464
 cmp eax, ebx
 je 0x14000e9ce
 lea rcx, [rsp+0xf610]
 call sub_1400104f4
 cmp al, bl
 je 0x14000e9ce
 mov rcx, qword ptr [rdi+0x8]
 add rcx, 0xa618
 xor r8d, r8d
 lea rdx, [rsp+0xf610]
 call sub_14001f48c
 cmp al, bl
 je 0x14000e9ce
 jmp 0x14000ebcc

0x14000e9ce:
 mov al, byte ptr [rsp+0xe5c5]

0x14000e9d5:
 mov rsi, rbx
 cmp al, bl
 je 0x14000eaa7
 mov rcx, rbx

0x14000e9e3:
 movzx eax, word ptr [rsp+rcx+0x20f6]
 mov word ptr [rsp+rcx+0x1080], ax
 add rcx, 2
 cmp ax, bx
 jne 0x14000e9e3
 cmp byte ptr [rsp+0xe5ca], bl
 sete r8b
 mov edx, 0x800
 lea rcx, [rsp+0x1080]
 call sub_140014188
 mov qword ptr [rsp+0x1040], rbx
 mov qword ptr [rsp+0x1048], rbx
 mov qword ptr [rsp+0x1050], rbx
 xor r8d, r8d
 lea rdx, [rsp+0x30]
 lea rcx, [rsp+0x1080]
 call sub_140011338
 cmp al, bl
 je 0x14000eaa0

0x14000ea4a:
 add rsi, qword ptr [rsp+0x1030]
 cmp byte ptr [rsp+0xe5ca], bl
 sete r8b
 mov edx, 0x800
 lea rcx, [rsp+0x1080]
 call sub_140014188
 mov qword ptr [rsp+0x1040], rbx
 mov qword ptr [rsp+0x1048], rbx
 mov qword ptr [rsp+0x1050], rbx
 xor r8d, r8d
 lea rdx, [rsp+0x30]
 lea rcx, [rsp+0x1080]
 call sub_140011338
 cmp al, bl
 jne 0x14000ea4a

0x14000eaa0:
 add qword ptr [rdi+0x2248], rsi

0x14000eaa7:
 lea rdx, [rsp+0x20d0]
 mov rcx, rdi
 call 0x14000cd3c
 mov r11, qword ptr [rdi+0x8]
 movzx eax, word ptr [r11+0x83ca]
 cmp ax, 0x54
 je 0x14000eacf
 cmp ax, 0x49
 jne 0x14000ead7

0x14000eacf:
 mov byte ptr [r11+0x62e1], 0x1

0x14000ead7:
 mov rax, qword ptr [rdi+0x8]
 cmp word ptr [rax+0x83ca], 0x49
 jne 0x14000eaee
 mov byte ptr [rax+0x6150], 0x1
 jmp 0x14000eb03

0x14000eaee:
 cmp byte ptr [rax+0x62e1], bl
 sete cl
 lea rdx, [rdi+0x4760]
 call 0x140020588

0x14000eb03:
 lea rcx, [rsp+0x20d0]
 call sub_140002024

0x14000eb10:
 lea rcx, [rsp+0x20d0]
 call sub_140004df0
 mov byte ptr [rsp+0x20], bl
 lea r9, [rsp+0x20]
 mov r8, rax
 lea rdx, [rsp+0x20d0]
 mov rcx, rdi
 call 0x14000d6ac
 cmp al, bl
 jne 0x14000eb10
 cmp byte ptr [rsp+0x20], bl
 je 0x14000ebcc
 mov qword ptr [rsp+0x2090], rbx
 mov qword ptr [rsp+0x2098], rbx
 mov qword ptr [rsp+0x20a0], rbx
 mov qword ptr [rsp+0x1040], rbx
 mov qword ptr [rsp+0x1048], rbx
 mov qword ptr [rsp+0x1050], rbx
 xor r8d, r8d
 lea rdx, [rsp+0x1080]
 lea rcx, [rsp+0x20f6]
 call sub_140011338
 cmp al, bl
 je 0x14000ebc5
 xor r8d, r8d
 lea rdx, [rsp+0x30]
 lea rcx, [rdi+0x4760]
 call sub_140011338
 cmp al, bl
 je 0x14000ebc5
 mov rax, qword ptr [rsp+0x1030]
 sub rax, qword ptr [rsp+0x2080]
 sub rax, rsi
 add qword ptr [rdi+0x2248], rax

0x14000ebc5:
 mov ebx, 0x1
 jmp 0x14000ebcc

0x14000ebcc:
 lea rcx, [rsp+0x20d0]
 call 0x140001360
 mov eax, ebx

0x14000ebdb:
 mov rcx, qword ptr [rsp+0x10610]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x10620]
 mov rbx, qword ptr [r11+0x18]
 mov rbp, qword ptr [r11+0x20]
 mov rsi, qword ptr [r11+0x28]
 mov rsp, r11
 pop rdi
 ret 

0x14000ec04:
 mov qword ptr [rsp+0x10], rbx
 mov qword ptr [rsp+0x18], rsi
 push rdi
 mov eax, 0x1080
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1070], rax
 xor esi, esi
 mov rbx, rcx
 mov byte ptr [rcx+0x6764], sil
 mov byte ptr [rcx+0x6763], sil
 mov byte ptr [rcx+0x6762], sil
 mov rcx, qword ptr [rcx+0x8]
 movzx eax, word ptr [rcx+0x83ca]
 mov qword ptr [rsp+0x1030], rsi
 mov qword ptr [rsp+0x1038], rsi
 mov word ptr [rbx+0x220c], ax
 mov qword ptr [rsp+0x1040], rsi
 jmp 0x14000eca0

0x14000ec74:
 lea rdx, [rsp+0x20]
 lea rcx, [rbx+0x4760]
 xor r8d, r8d
 call sub_140011338
 cmp al, sil
 je 0x14000ec9c
 mov rax, qword ptr [rsp+0x1020]
 add qword ptr [rbx+0x2248], rax

0x14000ec9c:
 mov rcx, qword ptr [rbx+0x8]

0x14000eca0:
 lea rdx, [rbx+0x4760]
 mov r8d, 0x800
 call 0x140006c0c
 cmp al, sil
 jne 0x14000ec74
 mov rcx, qword ptr [rbx+0x8]
 add rcx, 0xa618
 call 0x14001f384
 jmp 0x14000ed13

0x14000ecc9:
 cmp byte ptr [rcx+0x5133], sil
 je 0x14000ecde
 add rcx, 0x5030
 call sub_14001d130

0x14000ecde:
 mov rcx, rbx
 call 0x14000e840
 cmp eax, 0x1
 je 0x14000ecde
 lea rdx, [rsp+0x20]
 lea rcx, [rbx+0x4760]
 xor r8d, r8d
 call sub_140011338
 cmp al, sil
 je 0x14000ed13
 mov rax, qword ptr [rsp+0x1020]
 add qword ptr [rbx+0x2240], rax

0x14000ed13:
 mov rcx, qword ptr [rbx+0x8]
 lea rdx, [rbx+0x4760]
 mov r8d, 0x800
 call 0x140006c0c
 mov rcx, qword ptr [rbx+0x8]
 cmp al, sil
 jne 0x14000ecc9
 cmp byte ptr [rcx+0x5133], sil
 je 0x14000ed47
 add rcx, 0x5030
 call sub_14001d130

0x14000ed47:
 cmp dword ptr [rbx+0x4750], esi
 jne 0x14000ed93
 mov rax, qword ptr [rbx+0x8]
 cmp word ptr [rax+0x83ca], 0x49
 je 0x14000ed93
 cmp dword ptr [0x140050e70], 0xb
 je 0x14000ed93
 cmp byte ptr [rbx+0x6762], sil
 jne 0x14000ed80
 lea rdx, [rbx+0x4760]
 mov ecx, 0x43
 call sub_140001454

0x14000ed80:
 lea rcx, [0x140050e70]
 mov edx, 0xa
 call 0x14000af6c
 jmp 0x14000ede5

0x14000ed93:
 mov rax, qword ptr [rbx+0x8]
 cmp byte ptr [rax+0x6152], sil
 jne 0x14000ede5
 cmp word ptr [rax+0x83ca], 0x49
 jne 0x14000edb1
 mov ecx, 0xd1a
 jmp 0x14000edbe

0x14000edb1:
 cmp dword ptr [0x140050e74], esi
 jne 0x14000edcd
 mov ecx, 0xd6a

0x14000edbe:
 call sub_140019e20
 mov rcx, rax
 call sub_140008e10
 jmp 0x14000ede5

0x14000edcd:
 mov ecx, 0xd6c
 call sub_140019e20
 mov edx, dword ptr [0x140050e74]
 mov rcx, rax
 call sub_140008e10

0x14000ede5:
 mov rcx, qword ptr [rsp+0x1070]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x1080]
 mov rbx, qword ptr [r11+0x18]
 mov rsi, qword ptr [r11+0x20]
 mov rsp, r11
 pop rdi
 ret 
 int3 
 int3 

0x14000ee0c:
 mov qword ptr [rsp+0x18], rbx
 mov qword ptr [rsp+0x20], rbp
 push rsi
 push rdi
 push r12
 mov eax, 0x1050
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1040], rax
 mov rbx, rcx
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, rbx
 mov rbp, rdx
 repne scasd eax, dword ptr [rdi]
 not rcx
 lea rsi, [rcx-1]
 mov rcx, rbx
 call sub_140013e3c
 mov rdi, rax
 test rax, rax
 jne 0x14000ee66
 lea rdi, [rbx+rsi*2]

0x14000ee66:
 mov r12, rdi
 mov esi, 0x1
 sub r12, rbx
 sar r12, 0x1
 jmp 0x14000ee80

0x14000ee76:
 cmp esi, 0xf4240
 jae 0x14000eeef
 inc esi

0x14000ee80:
 mov qword ptr [rsp+0x30], rdi
 lea r8, [0x14003d0b8]
 lea rcx, [rsp+0x40]
 mov r9d, r12d
 mov edx, 0x800
 mov dword ptr [rsp+0x28], esi
 mov qword ptr [rsp+0x20], rbx
 call sub_140019504
 lea rcx, [rsp+0x40]
 call sub_1400104f4
 test al, al
 jne 0x14000ee76
 lea rdx, [rsp+0x40]
 mov r8, rbp
 mov rcx, rbx
 call sub_14001efc0
 mov al, 0x1

0x14000eec7:
 mov rcx, qword ptr [rsp+0x1040]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x1050]
 mov rbx, qword ptr [r11+0x30]
 mov rbp, qword ptr [r11+0x38]
 mov rsp, r11
 pop r12
 pop rdi
 pop rsi
 ret 

0x14000eeef:
 xor al, al
 jmp 0x14000eec7
 int3 

0x14000eef4:
 push rsi
 push rdi
 push r12
 mov eax, 0x5070
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x20], -2
 mov qword ptr [rsp+0x5098], rbx
 mov qword ptr [rsp+0x50a0], rbp
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x5060], rax
 mov rbx, rcx
 mov r12d, 0x800
 mov r8d, r12d
 lea rdx, [rsp+0x4060]
 call qword ptr [GetLongPathNameW]
 xor ebp, ebp
 cmp eax, ebp
 je 0x14000f119
 cmp eax, r12d
 jae 0x14000f119
 mov r8d, r12d
 lea rdx, [rsp+0x3060]
 mov rcx, rbx
 call qword ptr [GetShortPathNameW]
 cmp eax, ebp
 je 0x14000f115
 cmp eax, r12d
 jae 0x14000f115
 lea rcx, [rsp+0x4060]
 call 0x140013c20
 mov rsi, rax
 lea rcx, [rsp+0x3060]
 call 0x140013c20
 mov rdi, rax
 cmp word ptr [rax], bp
 je 0x14000f111
 mov rdx, rax
 mov rcx, rsi
 call sub_140021464
 cmp eax, ebp
 je 0x14000f111
 mov rcx, rbx
 call 0x140013c20
 mov rcx, rax
 mov rdx, rdi
 call sub_140021464
 cmp eax, ebp
 jne 0x14000f111
 mov ax, bp
 mov word ptr [rsp+0x1060], ax
 mov edi, ebp

0x14000efe7:
 cmp ax, bp
 jne 0x14000f05e
 mov r8, r12
 mov rdx, rbx
 lea rcx, [rsp+0x1060]
 call sub_14001efc0
 lea rcx, [rsp+0x1060]
 call 0x140013c20
 mov rcx, rax
 mov r9d, edi
 lea r8, [0x14003d100]
 mov rdx, r12
 call sub_140019504
 lea rcx, [rsp+0x1060]
 call sub_1400104f4
 cmp al, bpl
 je 0x14000f03f
 mov eax, ebp
 mov word ptr [rsp+0x1060], ax
 jmp 0x14000f047

0x14000f03f:
 mov ax, word ptr [rsp+0x1060]

0x14000f047:
 add edi, 0x7b
 cmp edi, 0x2710
 jl 0x14000efe7
 cmp ax, bp
 jne 0x14000f05e
 xor al, al
 jmp 0x14000f11b

0x14000f05e:
 mov r8, r12
 mov rdx, rbx
 lea rcx, [rsp+0x2060]
 call sub_14001efc0
 mov r8, r12
 mov rdx, rsi
 lea rcx, [rsp+0x2060]
 call 0x140013e08
 lea rdx, [rsp+0x1060]
 lea rcx, [rsp+0x2060]
 call qword ptr [MoveFileW]
 cmp eax, ebp
 jne 0x14000f0a2
 xor al, al
 jmp 0x14000f11b

0x14000f0a2:
 lea rcx, [rsp+0x30]
 call sub_14000f274
 nop 
 mov dil, bpl
 mov rcx, rbx
 call sub_1400104f4
 cmp al, bpl
 jne 0x14000f0d3
 mov r8d, 0x12
 mov rdx, rbx
 lea rcx, [rsp+0x30]
 call 0x14000f470
 mov dil, al

0x14000f0d3:
 lea rdx, [rsp+0x2060]
 lea rcx, [rsp+0x1060]
 call qword ptr [MoveFileW]
 cmp dil, bpl
 je 0x14000f103
 lea rcx, [rsp+0x30]
 call sub_14000f5d0
 lea rcx, [rsp+0x30]
 call sub_14000f638
 nop 

0x14000f103:
 lea rcx, [rsp+0x30]
 call sub_14000f94c
 mov al, 0x1
 jmp 0x14000f11b

0x14000f111:
 xor al, al
 jmp 0x14000f11b

0x14000f115:
 xor al, al
 jmp 0x14000f11b

0x14000f119:
 xor al, al

0x14000f11b:
 mov rcx, qword ptr [rsp+0x5060]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x5070]
 mov rbx, qword ptr [r11+0x28]
 mov rbp, qword ptr [r11+0x30]
 mov rsp, r11
 pop r12
 pop rdi
 pop rsi
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_14000f144
; --------------------------------------------------------------------------
sub_14000f144   proc \
 arg_1 : qword, ; [rsp+0x50]
 arg_2 : qword, ; [rsp+0x58]
 arg_3 : qword, ; [rsp+0x60]
 arg_4 : qword, ; [rsp+0x68]
 arg_5 : qword, ; [rsp+0x70]
 arg_6 : qword, ; [rsp+0x78]
 arg_7 : qword, ; [rsp+0x80]
 arg_8 : byte ; [rsp+0x88]

 local local_1: qword ; [rsp+0x20]
 local local_2: dword ; [rsp+0x28]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 push r13
 push r14
 sub rsp, 0x30
 mov rbx, qword ptr [arg_5]
 mov r13, r9
 mov rdi, r8
 mov rsi, rdx
 mov r14, rcx
 test rbx, rbx
 je 0x14000f17a
 mov byte ptr [rbx], 0x0

0x14000f17a:
 mov rcx, r8
 xor bpl, bpl
 call sub_1400104f4
 test al, al
 je 0x14000f1f7
 mov r12, qword ptr [arg_7]

0x14000f191:
 test bpl, bpl
 jne 0x14000f1a5
 mov rcx, rdi
 mov bpl, 0x1
 call 0x14000eef4
 test al, al
 jne 0x14000f1eb

0x14000f1a5:
 mov r9, qword ptr [arg_6]
 xor eax, eax
 xor bpl, bpl
 test rsi, rsi
 mov r8, r13
 mov rdx, rdi
 sete al
 mov rcx, r14
 mov dword ptr [local_2], eax
 mov qword ptr [local_1], r12
 call 0x140020f0c
 test eax, eax
 je 0x14000f1f7
 cmp eax, 0x1
 je 0x14000f21e
 cmp eax, 6
 jne 0x14000f1eb
 lea rcx, [0x140050e70]
 mov edx, 0xff
 call 0x14000b114

0x14000f1eb:
 mov rcx, rdi
 call sub_1400104f4
 test al, al
 jne 0x14000f191

0x14000f1f7:
 neg byte ptr [arg_8]
 sbb ebx, ebx
 neg ebx
 test rsi, rsi
 je 0x14000f22a
 lea r8d, [rbx+0x11]
 mov rdx, rdi
 mov rcx, rsi
 call 0x14000f470
 test al, al
 je 0x14000f22a
 mov al, 0x1
 jmp 0x14000f252

0x14000f21e:
 test rbx, rbx
 je 0x14000f226
 mov byte ptr [rbx], 0x1

0x14000f226:
 xor al, al
 jmp 0x14000f252

0x14000f22a:
 mov dl, 0x1
 mov rcx, rdi
 call 0x1400105ec
 test rsi, rsi
 je 0x14000f24a
 lea r8d, [rbx+0x11]
 mov rdx, rdi
 mov rcx, rsi
 call 0x14000f470
 jmp 0x14000f252

0x14000f24a:
 mov rcx, rdi
 call 0x140010184

0x14000f252:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x30
 pop r14
 pop r13
 pop r12
 ret 
sub_14000f144   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000f274
; --------------------------------------------------------------------------
sub_14000f274   proc
 or qword ptr [rcx+0x8], 0xffffffffffffffff
 lea rax, [0x14003d110]
 mov byte ptr [rcx+0x1b], 0x1
 mov qword ptr [rcx], rax
 xor eax, eax
 mov byte ptr [rcx+0x1c], 0x1
 mov word ptr [rcx+0x26], ax
 mov byte ptr [rcx+0x1a], al
 mov byte ptr [rcx+0x10], al
 mov dword ptr [rcx+0x14], eax
 mov byte ptr [rcx+0x18], al
 mov byte ptr [rcx+0x19], al
 mov dword ptr [rcx+0x1028], eax
 mov byte ptr [rcx+0x24], al
 mov byte ptr [rcx+0x1d], al
 mov rax, rcx
 mov dword ptr [rcx+0x20], 0x100
 ret 
sub_14000f274   endp
 
 int3 

0x14000f2b8:
 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 mov eax, 0x1050
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1040], rax
 and dword ptr [rcx+0x1028], 0x0
 cmp byte ptr [rcx+0x24], 0x0
 mov ebx, r8d
 mov r13, rdx
 mov rdi, rcx
 jne 0x14000f301
 test bl, 4
 jne 0x14000f301
 xor cl, cl
 jmp 0x14000f303

0x14000f301:
 mov cl, 0x1

0x14000f303:
 mov eax, ebx
 shr eax, 0x1
 and al, 0x1
 neg al
 sbb esi, esi
 and esi, 0xc0000000
 add esi, 0x80000000
 test bl, 0x1
 je 0x14000f322
 bts esi, 0x1e

0x14000f322:
 shr ebx, 3
 mov eax, 2
 not ebx
 and ebx, 0x1
 test cl, cl
 je 0x14000f335
 or ebx, eax

0x14000f335:
 mov al, byte ptr [rdi+0x1d]
 mov r8d, ebx
 mov edx, esi
 neg al
 mov rcx, r13
 sbb r12d, r12d
 and qword ptr [rsp+0x30], 0x0
 xor r9d, r9d
 not r12d
 and r12d, 0x8000000
 mov dword ptr [rsp+0x28], r12d
 mov dword ptr [rsp+0x20], 3
 call qword ptr [CreateFileW]
 mov rbp, rax
 cmp rax, 0xff
 jne 0x14000f3ea
 call qword ptr [GetLastError]
 lea rdx, [rsp+0x40]
 mov r8d, 0x800
 mov rcx, r13
 mov r14d, eax
 call 0x140013930
 test al, al
 je 0x14000f3d6
 and qword ptr [rsp+0x30], 0x0
 lea rcx, [rsp+0x40]
 xor r9d, r9d
 mov r8d, ebx
 mov edx, esi
 mov dword ptr [rsp+0x28], r12d
 mov dword ptr [rsp+0x20], 3
 call qword ptr [CreateFileW]
 mov rbp, rax
 call qword ptr [GetLastError]
 mov ecx, 2
 cmp eax, ecx
 cmove r14d, ecx
 cmp rbp, 0xff
 jne 0x14000f3ea
 jmp 0x14000f3db

0x14000f3d6:
 mov ecx, 2

0x14000f3db:
 cmp r14d, ecx
 jne 0x14000f3ea
 mov dword ptr [rdi+0x1028], 0x1

0x14000f3ea:
 and dword ptr [rdi+0x14], 0x0
 cmp rbp, 0xff
 mov byte ptr [rdi+0x1a], 0x0
 setne bl
 mov byte ptr [rdi+0x18], 0x0
 test bl, bl
 je 0x14000f417
 lea rcx, [rdi+0x26]
 mov r8d, 0x800
 mov rdx, r13
 mov qword ptr [rdi+0x8], rbp
 call sub_14001efc0

0x14000f417:
 mov al, bl
 mov rcx, qword ptr [rsp+0x1040]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x1050
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_14000f43c
; --------------------------------------------------------------------------
sub_14000f43c   proc
 push rbx
 sub rsp, 0x20
 mov rax, qword ptr [rcx]
 xor r8d, r8d
 mov rbx, rdx
 call qword ptr [rax+0x8]
 test al, al
 je 0x14000f456
 mov al, 0x1
 jmp 0x14000f467

0x14000f456:
 lea rcx, [0x140050e70]
 mov rdx, rbx
 call 0x14000b4f0
 xor al, al

0x14000f467:
 add rsp, 0x20
 pop rbx
 ret 
sub_14000f43c   endp
 
 int3 
 int3 
 int3 

0x14000f470:
 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 mov eax, 0x1050
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1040], rax
 mov rbx, rcx
 mov ecx, r8d
 xor edi, edi
 shr ecx, 0x1
 mov rsi, rdx
 and cl, 0x1
 test r8b, 0x10
 jne 0x14000f4b5
 mov al, dil
 cmp byte ptr [rbx+0x24], dil
 je 0x14000f4b7

0x14000f4b5:
 mov al, 0x1

0x14000f4b7:
 neg cl
 mov rcx, rdx
 mov r12d, edi
 sbb ebp, ebp
 mov dword ptr [rbx+0x20], r8d
 and ebp, 0x80000000
 add ebp, 0xc0000000
 cmp al, dil
 setne r12b
 call sub_140013400
 cmp word ptr [rax], 0x2e
 je 0x14000f511
 cmp word ptr [rax], 0x20
 je 0x14000f511
 mov qword ptr [rsp+0x30], rdi
 xor r9d, r9d
 mov r8d, r12d
 mov edx, ebp
 mov rcx, rsi
 mov dword ptr [rsp+0x28], edi
 mov dword ptr [rsp+0x20], 2
 call qword ptr [CreateFileW]
 mov qword ptr [rbx+0x8], rax
 jmp 0x14000f516

0x14000f511:
 or qword ptr [rbx+0x8], 0xffffffffffffffff

0x14000f516:
 cmp qword ptr [rbx+0x8], -1
 jne 0x14000f55d
 lea rdx, [rsp+0x40]
 mov r8d, 0x800
 mov rcx, rsi
 call 0x140013930
 cmp al, dil
 je 0x14000f55d
 mov qword ptr [rsp+0x30], rdi
 lea rcx, [rsp+0x40]
 xor r9d, r9d
 mov r8d, r12d
 mov edx, ebp
 mov dword ptr [rsp+0x28], edi
 mov dword ptr [rsp+0x20], 2
 call qword ptr [CreateFileW]
 mov qword ptr [rbx+0x8], rax

0x14000f55d:
 lea rcx, [rbx+0x26]
 mov r8d, 0x800
 mov rdx, rsi
 mov byte ptr [rbx+0x1a], 0x1
 mov dword ptr [rbx+0x14], edi
 mov byte ptr [rbx+0x18], dil
 call sub_14001efc0
 cmp qword ptr [rbx+0x8], -1
 setne al
 mov rcx, qword ptr [rsp+0x1040]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x1050
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
; --------------------------------------------------------------------------
; sub_14000f5a0
; --------------------------------------------------------------------------
sub_14000f5a0   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rdx
 call 0x14000f470
 test al, al
 je 0x14000f5b6
 mov al, 0x1
 jmp 0x14000f5c7

0x14000f5b6:
 lea rcx, [0x140050e70]
 mov rdx, rbx
 call 0x14000b4fc
 xor al, al

0x14000f5c7:
 add rsp, 0x20
 pop rbx
 ret 
sub_14000f5a0   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000f5d0
; --------------------------------------------------------------------------
sub_14000f5d0   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rbx, rcx
 mov rcx, qword ptr [rcx+0x8]
 mov edi, 0x1
 cmp rcx, 0xff
 je 0x14000f609
 cmp byte ptr [rbx+0x18], 0x0
 jne 0x14000f604
 cmp dword ptr [rbx+0x14], 0x0
 jne 0x14000f604
 call qword ptr [CloseHandle]
 cmp eax, edi
 sete dil

0x14000f604:
 or qword ptr [rbx+0x8], 0xffffffffffffffff

0x14000f609:
 and dword ptr [rbx+0x14], 0x0
 test dil, dil
 jne 0x14000f628
 cmp byte ptr [rbx+0x1c], dil
 je 0x14000f628
 lea rdx, [rbx+0x26]
 lea rcx, [0x140050e70]
 call 0x14000b270

0x14000f628:
 mov al, dil
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_14000f5d0   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000f638
; --------------------------------------------------------------------------
sub_14000f638   proc
 push rbx
 sub rsp, 0x20
 cmp dword ptr [rcx+0x14], 0x0
 mov rbx, rcx
 je 0x14000f64b

0x14000f647:
 xor al, al
 jmp 0x14000f666

0x14000f64b:
 cmp qword ptr [rcx+0x8], -1
 je 0x14000f657
 call sub_14000f5d0

0x14000f657:
 cmp byte ptr [rbx+0x1b], 0x0
 je 0x14000f647
 lea rcx, [rbx+0x26]
 call 0x140010184

0x14000f666:
 add rsp, 0x20
 pop rbx
 ret 
sub_14000f638   endp
 
; --------------------------------------------------------------------------
; sub_14000f66c
; --------------------------------------------------------------------------
sub_14000f66c   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x60]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x68]
 arg_3 : qword, ; [rsp+0x70]
 arg_4 : qword ; [rsp+0x20] ; [rsp+0x78]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_4], rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x30
 xor edi, edi
 mov rbp, r8
 mov r15, rdx
 mov rsi, rcx
 cmp r8, rdi
 jne 0x14000f69f
 mov al, 0x1
 jmp 0x14000f811

0x14000f69f:
 cmp dword ptr [rcx+0x14], 0x1
 jne 0x14000f6b4
 mov ecx, 0xfffffff5
 call qword ptr [GetStdHandle]
 mov qword ptr [rsi+0x8], rax

0x14000f6b4:
 mov r12b, dil
 mov dword ptr [arg_3], edi
 cmp dword ptr [rsi+0x14], edi
 je 0x14000f711
 mov rbx, rdi
 cmp rbp, rdi
 jbe 0x14000f73b

0x14000f6c8:
 mov r8d, 0x4000
 mov eax, ebp
 mov rcx, rbp
 sub rcx, rbx
 sub eax, ebx
 lea rdx, [rbx+r15]
 cmp rcx, r8
 mov rcx, qword ptr [rsi+0x8]
 lea r9, [arg_3]
 cmovb r8d, eax
 mov qword ptr [local_1], rdi
 call qword ptr [WriteFile]
 cmp eax, 0x1
 sete r12b
 cmp r12b, dil
 je 0x14000f73b
 add rbx, 0x4000
 cmp rbx, rbp
 jb 0x14000f6c8
 jmp 0x14000f732

0x14000f711:
 mov rcx, qword ptr [rsi+0x8]
 lea r9, [arg_3]
 mov r8d, ebp
 mov rdx, r15
 mov qword ptr [local_1], rdi
 call qword ptr [WriteFile]
 cmp eax, 0x1
 sete r12b

0x14000f732:
 cmp r12b, dil
 jne 0x14000f80a

0x14000f73b:
 cmp byte ptr [rsi+0x1c], dil
 je 0x14000f80a
 cmp dword ptr [rsi+0x14], edi
 jne 0x14000f80a
 call qword ptr [GetLastError]
 mov rdx, qword ptr [rsi]
 mov rcx, rsi
 mov edi, eax
 call qword ptr [rdx+0x20]
 lea rcx, [rsi+0x26]
 mov r13, rax
 call 0x14000fe40
 mov ecx, edi
 mov rbx, rax
 call qword ptr [SetLastError]
 cmp rbx, rbp
 jbe 0x14000f7a5
 mov rcx, r13
 mov ebx, 0xffffffff
 sub rcx, rbp
 cmp rcx, rbx
 ja 0x14000f7a5
 lea rax, [r13+rbp]
 cmp rax, rbx
 jbe 0x14000f7a5
 lea rdx, [rsi+0x26]
 lea rcx, [0x140050e70]
 call 0x14000b2e0

0x14000f7a5:
 lea rdx, [rsi+0x26]
 lea rcx, [0x140050e70]
 xor r8d, r8d
 call sub_14000b31c
 xor edi, edi
 cmp al, dil
 je 0x14000f7f8
 mov ecx, dword ptr [arg_3]
 mov rax, rcx
 cmp rcx, rbp
 jae 0x14000f6b4
 cmp ecx, edi
 jbe 0x14000f6b4
 mov rbx, qword ptr [rsi]
 mov rcx, rsi
 call qword ptr [rbx+0x20]
 mov ecx, dword ptr [arg_3]
 xor r8d, r8d
 sub rax, rcx
 mov rcx, rsi
 mov rdx, rax
 call qword ptr [rbx+0x18]
 jmp 0x14000f6b4

0x14000f7f8:
 lea r8, [rsi+0x26]
 lea rcx, [0x140050e70]
 xor edx, edx
 call 0x14000b4d0

0x14000f80a:
 mov byte ptr [rsi+0x10], 0x1
 mov al, r12b

0x14000f811:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_4]
 add rsp, 0x30
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 ret 
sub_14000f66c   endp
 
 int3 
 int3 

0x14000f830:
 mov qword ptr [rsp+0x10], rbx
 push rdi
 sub rsp, 0x20
 cmp qword ptr [rcx+0x8], -1
 mov rbx, rcx
 jne 0x14000f85a
 cmp byte ptr [rcx+0x1c], 0x0
 je 0x14000f8b4
 lea rdx, [rcx+0x26]
 lea rcx, [0x140050e70]
 call 0x14000b368

0x14000f85a:
 mov rcx, qword ptr [rbx+0x8]
 and dword ptr [rsp+0x30], 0x0
 lea r8, [rsp+0x30]
 mov r9d, 0x1
 xor edx, edx
 call qword ptr [SetFilePointer]
 mov edi, eax
 cmp eax, 0xff
 jne 0x14000f89d
 call qword ptr [GetLastError]
 test eax, eax
 je 0x14000f89d
 cmp byte ptr [rbx+0x1c], 0x0
 je 0x14000f8b4
 lea rdx, [rbx+0x26]
 lea rcx, [0x140050e70]
 call 0x14000b368

0x14000f89d:
 movsxd rax, dword ptr [rsp+0x30]
 shl rax, 0x20
 add rax, rdi

0x14000f8a9:
 mov rbx, qword ptr [rsp+0x38]
 add rsp, 0x20
 pop rdi
 ret 

0x14000f8b4:
 or rax, 0xffffffffffffffff
 jmp 0x14000f8a9
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000f8bc
; --------------------------------------------------------------------------
sub_14000f8bc   proc \
 arg_1 : qword ; [rsp+0x30]

 sub rsp, 0x28
 mov rax, qword ptr [rcx]
 lea rdx, [arg_1]
 mov r8d, 0x1
 mov byte ptr [arg_1], 0x0
 call qword ptr [rax+0x10]
 mov al, byte ptr [arg_1]
 add rsp, 0x28
 ret 
sub_14000f8bc   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_14000f8e0
; --------------------------------------------------------------------------
sub_14000f8e0   proc \
 arg_1 : byte ; [rsp+0x10] ; [rsp+0x38]

 mov byte ptr [arg_1], dl
 sub rsp, 0x28
 lea rdx, [arg_1]
 mov r8d, 0x1
 call sub_14000f66c
 add rsp, 0x28
 ret 
sub_14000f8e0   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000f900
; --------------------------------------------------------------------------
sub_14000f900   proc
 sub rsp, 0x28
 mov rcx, qword ptr [rcx+0x8]
 call qword ptr [SetEndOfFile]
 cmp eax, 0x1
 sete al
 add rsp, 0x28
 ret 
sub_14000f900   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000f91c
; --------------------------------------------------------------------------
sub_14000f91c   proc
 sub rsp, 0x28
 mov rcx, qword ptr [rcx+0x8]
 cmp rcx, 0xff
 jne 0x14000f92e
 xor al, al
 jmp 0x14000f947

0x14000f92e:
 call qword ptr [GetFileType]
 cmp eax, 2
 je 0x14000f942
 cmp eax, 3
 je 0x14000f942
 xor eax, eax
 jmp 0x14000f947

0x14000f942:
 mov eax, 0x1

0x14000f947:
 add rsp, 0x28
 ret 
sub_14000f91c   endp
 
; --------------------------------------------------------------------------
; sub_14000f94c
; --------------------------------------------------------------------------
sub_14000f94c   proc
 sub rsp, 0x28
 cmp qword ptr [rcx+0x8], -1
 lea rax, [0x14003d110]
 mov qword ptr [rcx], rax
 je 0x14000f979
 cmp byte ptr [rcx+0x18], 0x0
 jne 0x14000f979
 cmp byte ptr [rcx+0x1a], 0x0
 je 0x14000f974
 call sub_14000f638
 jmp 0x14000f979

0x14000f974:
 call sub_14000f5d0

0x14000f979:
 add rsp, 0x28
 ret 
sub_14000f94c   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000f980
; --------------------------------------------------------------------------
sub_14000f980   proc
 sub rsp, 0x28
 call sub_14000f43c
 test al, al
 jne 0x14000f99e
 lea rcx, [0x140050e70]
 mov edx, 6
 call 0x14000b114

0x14000f99e:
 add rsp, 0x28
 ret 
sub_14000f980   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_14000f9a4
; --------------------------------------------------------------------------
sub_14000f9a4   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x48]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x50]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_2], rbx
 mov qword ptr [arg_3], rsi
 push rdi
 sub rsp, 0x30
 cmp dword ptr [rcx+0x14], 0x1
 mov rdi, r8
 mov rsi, rdx
 mov rbx, rcx
 jne 0x14000f9d1
 mov ecx, 0xfffffff6
 call qword ptr [GetStdHandle]
 mov qword ptr [rbx+0x8], rax

0x14000f9d1:
 mov rcx, qword ptr [rbx+0x8]
 and qword ptr [local_1], 0x0
 lea r9, [arg_1]
 mov r8d, edi
 mov rdx, rsi
 call qword ptr [ReadFile]
 test eax, eax
 jne 0x14000fa50
 mov rcx, rbx
 call sub_14000f91c
 test al, al
 je 0x14000fa14
 mov r8d, 0x4e20
 cmp rdi, r8
 jbe 0x14000fa14

0x14000fa07:
 mov rdx, rsi
 mov rcx, rbx
 call sub_14000f9a4
 jmp 0x14000fa54

0x14000fa14:
 cmp dword ptr [rbx+0x14], 0x1
 jne 0x14000fa29
 call qword ptr [GetLastError]
 cmp eax, 0x6d
 jne 0x14000fa29
 xor eax, eax
 jmp 0x14000fa54

0x14000fa29:
 cmp dword ptr [rbx+0x14], 0x0
 jne 0x14000fa4b
 cmp rdi, 0x8000
 jbe 0x14000fa4b
 call qword ptr [GetLastError]
 cmp eax, 0x21
 jne 0x14000fa4b
 mov r8d, 0x8000
 jmp 0x14000fa07

0x14000fa4b:
 or eax, 0xffffffff
 jmp 0x14000fa54

0x14000fa50:
 mov eax, dword ptr [arg_1]

0x14000fa54:
 mov rbx, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x30
 pop rdi
 ret 
sub_14000f9a4   endp
 
; --------------------------------------------------------------------------
; sub_14000fa64
; --------------------------------------------------------------------------
sub_14000fa64   proc \
 arg_1 : qword, ; [rsp+0x60]
 arg_2 : qword, ; [rsp+0x68]
 arg_3 : qword ; [rsp+0x70]

 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 sub rsp, 0x20
 cmp dword ptr [rcx+0x20], 0x100
 mov r12, r9
 mov rbp, r8
 mov rdi, rdx
 mov r14, rcx
 je 0x14000fa98
 test byte ptr [rcx+0x20], 2
 jne 0x14000fa98
 mov rcx, qword ptr [rcx+0x8]
 call qword ptr [FlushFileBuffers]

0x14000fa98:
 mov bl, 0x1
 test rdi, rdi
 je 0x14000faaa
 cmp qword ptr [rdi], 0x0
 je 0x14000faaa
 mov r13b, bl
 jmp 0x14000faad

0x14000faaa:
 xor r13b, r13b

0x14000faad:
 test rbp, rbp
 je 0x14000fabe
 cmp qword ptr [rbp], 0x0
 je 0x14000fabe
 mov sil, bl
 jmp 0x14000fac1

0x14000fabe:
 xor sil, sil

0x14000fac1:
 test r12, r12
 je 0x14000facd
 cmp qword ptr [r12], 0x0
 jne 0x14000facf

0x14000facd:
 xor bl, bl

0x14000facf:
 test r13b, r13b
 je 0x14000fae1
 lea rdx, [arg_1]
 mov rcx, rdi
 call sub_14001fecc

0x14000fae1:
 test sil, sil
 je 0x14000faf3
 lea rdx, [arg_3]
 mov rcx, rbp
 call sub_14001fecc

0x14000faf3:
 test bl, bl
 je 0x14000fb04
 lea rdx, [arg_2]
 mov rcx, r12
 call sub_14001fecc

0x14000fb04:
 mov rcx, qword ptr [r14+0x8]
 neg r13b
 lea rax, [arg_1]
 sbb r9, r9
 and r9, rax
 neg bl
 lea rax, [arg_2]
 sbb r8, r8
 and r8, rax
 neg sil
 lea rax, [arg_3]
 sbb rdx, rdx
 and rdx, rax
 call qword ptr [SetFileTime]
 add rsp, 0x20
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
sub_14000fa64   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000fb48
; --------------------------------------------------------------------------
sub_14000fb48   proc \
 arg_1 : qword, ; [rsp+0x50]
 arg_2 : qword ; [rsp+0x58]

 local local_1: qword ; [rsp+0x20]
 local local_2: qword ; [rsp+0x28]
 local local_3: qword ; [rsp+0x30]

 push rdi
 sub rsp, 0x40
 mov qword ptr [local_1], -2
 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 mov rsi, rcx
 mov qword ptr [local_2], rcx
 mov rax, qword ptr [rcx]
 call qword ptr [rax+0x20]
 mov rdi, rax
 mov qword ptr [local_3], rax
 mov r9, qword ptr [rsi]
 xor edx, edx
 lea r8d, [rdx+2]
 mov rcx, rsi
 call qword ptr [r9+0x18]
 mov r11, qword ptr [rsi]
 mov rcx, rsi
 call qword ptr [r11+0x20]
 mov rbx, rax
 mov r9, qword ptr [rsi]
 xor r8d, r8d
 mov rdx, rdi
 mov rcx, rsi
 call qword ptr [r9+0x18]
 mov rax, rbx
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x40
 pop rdi
 ret 
sub_14000fb48   endp
 
 int3 
 mov qword ptr [rsp+0x8], rbx
 push rdi
 sub rsp, 0x20
 mov ebx, edx
 mov rdi, rcx
 call sub_14000f94c
 test bl, 0x1
 je 0x14000fbd9
 mov rcx, rdi
 call 0x14002cfa4

0x14000fbd9:
 mov rax, rdi
 mov rbx, qword ptr [rsp+0x30]
 add rsp, 0x20
 pop rdi
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_14000fbe8
; --------------------------------------------------------------------------
sub_14000fbe8   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x48]
 arg_3 : qword, ; [rsp+0x50]
 arg_4 : qword ; [rsp+0x58]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 push r13
 push r14
 sub rsp, 0x20
 xor edi, edi
 mov rbp, r8
 mov r13, rdx
 mov rbx, rcx
 mov r12, rdi
 cmp byte ptr [rcx+0x19], dil
 je 0x14000fc22
 mov rax, qword ptr [rcx]
 call qword ptr [rax+0x20]
 mov r12, rax

0x14000fc22:
 mov r8, rbp
 mov rdx, r13
 mov rcx, rbx
 call sub_14000f9a4
 mov esi, eax
 cmp eax, 0xff
 jne 0x14000fcc6
 mov dword ptr [rbx+0x1028], 2
 cmp byte ptr [rbx+0x1c], dil
 je 0x14000fcc6
 cmp byte ptr [rbx+0x19], dil
 jne 0x14000fc7d
 cmp dword ptr [rbx+0x14], edi
 jne 0x14000fc6b
 lea rdx, [rbx+0x26]
 lea rcx, [0x140050e70]
 call sub_14000b2a4
 cmp al, dil
 jne 0x14000fc22

0x14000fc6b:
 lea rdx, [rbx+0x26]
 lea rcx, [0x140050e70]
 call 0x14000b508
 jmp 0x14000fcc6

0x14000fc7d:
 mov esi, edi
 cmp rbp, rdi
 jbe 0x14000fcc6
 mov r14d, 0x200

0x14000fc8a:
 mov rax, qword ptr [rbx]
 lea rdx, [rdi+r12]
 xor r8d, r8d
 mov rcx, rbx
 call qword ptr [rax+0x18]
 mov r11, rbp
 mov r8, r14
 sub r11, rdi
 mov rdx, r13
 mov rcx, rbx
 cmp r11, r14
 cmovb r8, r11
 call sub_14000f9a4
 cmp eax, 0xff
 cmove eax, r14d
 add rdi, r14
 add esi, eax
 cmp rdi, rbp
 jb 0x14000fc8a

0x14000fcc6:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rdi, qword ptr [arg_4]
 mov eax, esi
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop r14
 pop r13
 pop r12
 ret 
sub_14000fbe8   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_14000fce8
; --------------------------------------------------------------------------
sub_14000fce8   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_2], rbx
 push rdi
 sub rsp, 0x20
 cmp qword ptr [rcx+0x8], -1
 mov rbx, rdx
 mov rdi, rcx
 je 0x14000fd54
 test rdx, rdx
 jns 0x14000fd22
 test r8d, r8d
 je 0x14000fd22
 cmp r8d, 0x1
 jne 0x14000fd17
 mov rax, qword ptr [rcx]
 call qword ptr [rax+0x20]
 jmp 0x14000fd1c

0x14000fd17:
 call sub_14000fb48

0x14000fd1c:
 add rbx, rax
 xor r8d, r8d

0x14000fd22:
 mov rcx, qword ptr [rdi+0x8]
 mov r9d, r8d
 mov rax, rbx
 sar rax, 0x20
 lea r8, [arg_1]
 mov edx, ebx
 mov dword ptr [arg_1], eax
 call qword ptr [SetFilePointer]
 cmp eax, 0xff
 jne 0x14000fd54
 call qword ptr [GetLastError]
 test eax, eax
 je 0x14000fd54
 xor al, al
 jmp 0x14000fd56

0x14000fd54:
 mov al, 0x1

0x14000fd56:
 mov rbx, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_14000fce8   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14000fd64
; --------------------------------------------------------------------------
sub_14000fd64   proc
 push rbx
 sub rsp, 0x20
 xor r8d, r8d
 mov rbx, rcx
 call sub_14000fce8
 test al, al
 je 0x14000fd92
 mov rcx, qword ptr [rbx+0x8]
 call qword ptr [SetEndOfFile]
 mov r11, qword ptr [rbx]
 xor r8d, r8d
 xor edx, edx
 mov rcx, rbx
 call qword ptr [r11+0x18]

0x14000fd92:
 add rsp, 0x20
 pop rbx
 ret 
sub_14000fd64   endp
 
; --------------------------------------------------------------------------
; sub_14000fd98
; --------------------------------------------------------------------------
sub_14000fd98   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 call sub_14000fce8
 test al, al
 jne 0x14000fdbf
 cmp byte ptr [rbx+0x1c], al
 je 0x14000fdbf
 lea rdx, [rbx+0x26]
 lea rcx, [0x140050e70]
 call 0x14000b368

0x14000fdbf:
 add rsp, 0x20
 pop rbx
 ret 
sub_14000fd98   endp
 
 int3 
 int3 
 int3 

0x14000fdc8:
 mov eax, 0x1038
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1020], rax
 lea rdx, [rsp+0x20]
 mov r8d, 0x800
 call sub_140014458
 movzx r11d, word ptr [rsp+0x20]
 lea rax, [rsp+0x20]
 neg r11w
 sbb rcx, rcx
 and rcx, rax
 call qword ptr [GetDriveTypeW]
 cmp eax, 2
 je 0x14000fe20
 cmp eax, 5
 je 0x14000fe20
 xor eax, eax
 jmp 0x14000fe25

0x14000fe20:
 mov eax, 0x1

0x14000fe25:
 mov rcx, qword ptr [rsp+0x1020]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x1038
 ret 
 int3 
 int3 
 int3 

0x14000fe40:
 mov eax, 0x1058
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1040], rax
 lea rdx, [rsp+0x40]
 mov r8d, 0x800
 call sub_140013e9c
 movzx eax, word ptr [rsp+0x40]
 and dword ptr [rsp+0x24], 0x0
 and dword ptr [rsp+0x20], 0x0
 neg ax
 lea rax, [rsp+0x40]
 sbb rcx, rcx
 lea r9, [rsp+0x28]
 lea r8, [rsp+0x30]
 lea rdx, [rsp+0x20]
 and rcx, rax
 call qword ptr [GetDiskFreeSpaceExW]
 test eax, eax
 je 0x14000febc
 mov eax, dword ptr [rsp+0x24]
 cmp eax, dword ptr [rsp+0x2c]
 ja 0x14000febc
 mov ecx, dword ptr [rsp+0x20]
 shl rax, 0x20
 add rax, rcx
 jmp 0x14000febe

0x14000febc:
 xor eax, eax

0x14000febe:
 mov rcx, qword ptr [rsp+0x1040]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x1058
 ret 
 int3 
 int3 

0x14000fed8:
 mov qword ptr [rsp+0x10], rbx
 mov qword ptr [rsp+0x18], rsi
 push rdi
 mov eax, 0x1260
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1250], rax
 lea rdx, [rsp+0x250]
 mov r8d, 0x800
 call sub_140014458
 mov dword ptr [rsp+0x38], 0x105
 lea rax, [rsp+0x40]
 mov qword ptr [rsp+0x30], rax
 xor ebx, ebx
 lea rcx, [rsp+0x250]
 xor r9d, r9d
 xor r8d, r8d
 xor edx, edx
 mov qword ptr [rsp+0x28], rbx
 mov qword ptr [rsp+0x20], rbx
 call qword ptr [GetVolumeInformationW]
 cmp eax, ebx
 je 0x14000ff7e
 lea rsi, [rsp+0x40]
 lea rdi, [0x14003d170]
 lea ecx, [rbx+4]
 repe cmpsd dword ptr [rsi], dword ptr [rdi]
 je 0x14000ff75
 lea rsi, [rsp+0x40]
 lea rdi, [0x14003d160]
 lea ecx, [rbx+6]
 repe cmpsd dword ptr [rsi], dword ptr [rdi]
 jne 0x14000ff7a

0x14000ff75:
 mov ebx, 0x1

0x14000ff7a:
 mov al, bl
 jmp 0x14000ff80

0x14000ff7e:
 xor al, al

0x14000ff80:
 mov rcx, qword ptr [rsp+0x1250]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x1260]
 mov rbx, qword ptr [r11+0x18]
 mov rsi, qword ptr [r11+0x20]
 mov rsp, r11
 pop rdi
 ret 
 int3 
 int3 
 int3 

0x14000ffa8:
 cmp ecx, 0xff
 je 0x14000ffb8
 test cl, 0x10
 je 0x14000ffb8
 mov eax, 0x1
 ret 

0x14000ffb8:
 xor eax, eax
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_14000ffbc
; --------------------------------------------------------------------------
sub_14000ffbc   proc
 shr ecx, 0xa
 and ecx, 0x1
 mov al, cl
 ret 
sub_14000ffbc   endp
 
 int3 
 int3 
 int3 

0x14000ffc8:
 mov qword ptr [rsp+0x10], rbx
 push rdi
 mov eax, 0x1030
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1020], rax
 mov rdi, rcx
 call qword ptr [GetFileAttributesW]
 mov ebx, eax
 cmp eax, 0xff
 jne 0x140010021
 lea rdx, [rsp+0x20]
 mov r8d, 0x800
 mov rcx, rdi
 call 0x140013930
 test al, al
 je 0x140010021
 lea rcx, [rsp+0x20]
 call qword ptr [GetFileAttributesW]
 mov ebx, eax

0x140010021:
 mov eax, ebx
 mov rcx, qword ptr [rsp+0x1020]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x1048]
 add rsp, 0x1030
 pop rdi
 ret 

0x140010044:
 mov qword ptr [rsp+0x18], rbx
 mov qword ptr [rsp+0x20], rsi
 push rdi
 mov eax, 0x1030
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1020], rax
 mov edi, edx
 mov rsi, rcx
 call qword ptr [SetFileAttributesW]
 test eax, eax
 setne bl
 test bl, bl
 jne 0x1400100ab
 lea rdx, [rsp+0x20]
 mov r8d, 0x800
 mov rcx, rsi
 call 0x140013930
 test al, al
 je 0x1400100ab
 lea rcx, [rsp+0x20]
 mov edx, edi
 call qword ptr [SetFileAttributesW]
 test eax, eax
 setne bl

0x1400100ab:
 mov al, bl
 mov rcx, qword ptr [rsp+0x1020]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x1030]
 mov rbx, qword ptr [r11+0x20]
 mov rsi, qword ptr [r11+0x28]
 mov rsp, r11
 pop rdi
 ret 
 int3 
 int3 

0x1400100d4:
 mov qword ptr [rsp+0x18], rbx
 mov qword ptr [rsp+0x20], rsi
 push rdi
 mov eax, 0x2030
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x2020], rax
 mov rsi, rdx
 mov rdi, rcx
 call qword ptr [MoveFileW]
 test eax, eax
 setne bl
 test bl, bl
 jne 0x14001015c
 lea rdx, [rsp+0x1020]
 mov r8d, 0x800
 mov rcx, rdi
 call 0x140013930
 test al, al
 je 0x14001015c
 lea rdx, [rsp+0x20]
 mov r8d, 0x800
 mov rcx, rsi
 call 0x140013930
 test al, al
 je 0x14001015c
 lea rdx, [rsp+0x20]
 lea rcx, [rsp+0x1020]
 call qword ptr [MoveFileW]
 test eax, eax
 setne bl

0x14001015c:
 mov al, bl
 mov rcx, qword ptr [rsp+0x2020]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x2030]
 mov rbx, qword ptr [r11+0x20]
 mov rsi, qword ptr [r11+0x28]
 mov rsp, r11
 pop rdi
 ret 
 int3 

0x140010184:
 mov qword ptr [rsp+0x10], rbx
 push rdi
 mov eax, 0x1030
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1020], rax
 mov rdi, rcx
 call qword ptr [DeleteFileW]
 test eax, eax
 setne bl
 test bl, bl
 jne 0x1400101e2
 lea rdx, [rsp+0x20]
 mov r8d, 0x800
 mov rcx, rdi
 call 0x140013930
 test al, al
 je 0x1400101e2
 lea rcx, [rsp+0x20]
 call qword ptr [DeleteFileW]
 test eax, eax
 setne bl

0x1400101e2:
 mov al, bl
 mov rcx, qword ptr [rsp+0x1020]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x1048]
 add rsp, 0x1030
 pop rdi
 ret 
 int3 
 int3 
 int3 

0x140010208:
 mov qword ptr [rsp+0x18], rbx
 mov qword ptr [rsp+0x20], rbp
 push rsi
 push rdi
 push r12
 mov eax, 0x1060
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1050], rax
 xor edi, edi
 mov bpl, dl
 xor r9d, r9d
 lea r12d, [rdi+3]
 mov qword ptr [rsp+0x30], rdi
 mov dword ptr [rsp+0x28], 0xa000000
 mov r8d, r12d
 mov edx, r12d
 mov rbx, rcx
 mov dword ptr [rsp+0x20], r12d
 call qword ptr [CreateFileW]
 mov rsi, rax
 cmp rax, 0xff
 jne 0x1400102b6
 lea rdx, [rsp+0x50]
 mov r8d, 0x800
 mov rcx, rbx
 call 0x140013930
 cmp al, dil
 je 0x1400102b2
 mov qword ptr [rsp+0x30], rdi
 lea rcx, [rsp+0x50]
 xor r9d, r9d
 mov r8d, r12d
 mov edx, r12d
 mov dword ptr [rsp+0x28], 0xa000000
 mov dword ptr [rsp+0x20], r12d
 call qword ptr [CreateFileW]
 mov rsi, rax
 cmp rax, 0xff
 jne 0x1400102b6

0x1400102b2:
 xor al, al
 jmp 0x140010304

0x1400102b6:
 mov eax, edi
 mov qword ptr [rsp+0x38], rdi
 cmp bpl, dil
 setne al
 lea r8, [rsp+0x40]
 mov r9d, 2
 mov word ptr [rsp+0x40], ax
 lea rax, [rsp+0x44]
 mov edx, 0x9c040
 mov qword ptr [rsp+0x30], rax
 mov rcx, rsi
 mov dword ptr [rsp+0x28], edi
 mov qword ptr [rsp+0x20], rdi
 call qword ptr [DeviceIoControl]
 mov rcx, rsi
 mov ebx, eax
 call qword ptr [CloseHandle]
 cmp ebx, edi
 setne al

0x140010304:
 mov rcx, qword ptr [rsp+0x1050]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x1060]
 mov rbx, qword ptr [r11+0x30]
 mov rbp, qword ptr [r11+0x38]
 mov rsp, r11
 pop r12
 pop rdi
 pop rsi
 ret 

0x14001032c:
 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x1088
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1070], rax
 mov r12, rcx
 xor ecx, ecx
 mov r14, r9
 mov rbp, r8
 mov qword ptr [rsp+0x60], rdx
 mov bl, 0x1
 cmp rdx, rcx
 je 0x140010377
 mov r15b, bl
 cmp qword ptr [rdx], rcx
 jne 0x14001037a

0x140010377:
 mov r15b, cl

0x14001037a:
 cmp r8, rcx
 je 0x140010387
 mov r13b, bl
 cmp qword ptr [r8], rcx
 jne 0x14001038a

0x140010387:
 mov r13b, cl

0x14001038a:
 cmp r9, rcx
 je 0x140010397
 mov sil, bl
 cmp qword ptr [r9], rcx
 jne 0x14001039a

0x140010397:
 mov sil, cl

0x14001039a:
 mov rcx, r12
 call 0x14000ffc8
 mov edi, eax
 cmp eax, 0xff
 je 0x1400103b9
 test al, bl
 je 0x1400103b9
 xor edx, edx
 mov rcx, r12
 call 0x140010044
 jmp 0x1400103bb

0x1400103b9:
 xor bl, bl

0x1400103bb:
 and qword ptr [rsp+0x30], 0x0
 mov eax, 3
 xor r9d, r9d
 mov edx, 0x40000000
 mov rcx, r12
 mov r8d, eax
 mov dword ptr [rsp+0x28], 0x2000000
 mov dword ptr [rsp+0x20], eax
 call qword ptr [CreateFileW]
 mov qword ptr [rsp+0x40], rax
 cmp rax, 0xff
 jne 0x140010447
 lea rdx, [rsp+0x70]
 mov r8d, 0x800
 mov rcx, r12
 call 0x140013930
 test al, al
 je 0x1400104ce
 and qword ptr [rsp+0x30], 0x0
 mov r8d, 3
 lea rcx, [rsp+0x70]
 xor r9d, r9d
 mov edx, 0x40000000
 mov dword ptr [rsp+0x28], 0x2000000
 mov dword ptr [rsp+0x20], r8d
 call qword ptr [CreateFileW]
 mov qword ptr [rsp+0x40], rax
 cmp rax, 0xff
 je 0x1400104ce

0x140010447:
 test r15b, r15b
 je 0x14001045b
 mov rcx, qword ptr [rsp+0x60]
 lea rdx, [rsp+0x48]
 call sub_14001fecc

0x14001045b:
 test r13b, r13b
 je 0x14001046d
 lea rdx, [rsp+0x58]
 mov rcx, rbp
 call sub_14001fecc

0x14001046d:
 test sil, sil
 je 0x14001047f
 lea rdx, [rsp+0x50]
 mov rcx, r14
 call sub_14001fecc

0x14001047f:
 neg r15b
 lea rax, [rsp+0x48]
 sbb r9, r9
 and r9, rax
 neg sil
 mov rsi, qword ptr [rsp+0x40]
 sbb r8, r8
 lea rax, [rsp+0x50]
 mov rcx, rsi
 and r8, rax
 lea rax, [rsp+0x58]
 neg r13b
 sbb rdx, rdx
 and rdx, rax
 call qword ptr [SetFileTime]
 mov rcx, rsi
 call qword ptr [CloseHandle]
 test bl, bl
 je 0x1400104ce
 mov edx, edi
 mov rcx, r12
 call 0x140010044

0x1400104ce:
 mov rcx, qword ptr [rsp+0x1070]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x1088
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400104f4
; --------------------------------------------------------------------------
sub_1400104f4   proc
 sub rsp, 0x28
 call 0x14000ffc8
 cmp eax, 0xff
 setne al
 add rsp, 0x28
 ret 
sub_1400104f4   endp
 

0x140010508:
 xor edx, edx
 jmp 0x140010044
 int3 

0x140010510:
 mov qword ptr [rsp+0x10], rbx
 mov qword ptr [rsp+0x20], rsi
 push rdi
 mov eax, 0x1030
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1020], rax
 mov esi, r8d
 mov dil, dl
 mov rbx, rcx
 call sub_140013400
 cmp word ptr [rax], 0x2e
 je 0x140010563
 cmp word ptr [rax], 0x20
 je 0x140010563
 xor edx, edx
 mov rcx, rbx
 call qword ptr [CreateDirectoryW]
 test eax, eax
 jne 0x140010598

0x140010563:
 mov rcx, rbx
 call 0x14000ffc8
 cmp eax, 0xff
 jne 0x1400105ab
 lea rdx, [rsp+0x20]
 mov r8d, 0x800
 mov rcx, rbx
 call 0x140013930
 test al, al
 je 0x1400105ab
 lea rcx, [rsp+0x20]
 xor edx, edx
 call qword ptr [CreateDirectoryW]
 test eax, eax
 je 0x1400105ab

0x140010598:
 test dil, dil
 je 0x1400105a7
 mov edx, esi
 mov rcx, rbx
 call 0x140010044

0x1400105a7:
 xor eax, eax
 jmp 0x1400105c5

0x1400105ab:
 call qword ptr [GetLastError]
 cmp eax, 2
 je 0x1400105c0
 cmp eax, 3
 mov eax, 0x1
 jne 0x1400105c5

0x1400105c0:
 mov eax, 2

0x1400105c5:
 mov rcx, qword ptr [rsp+0x1020]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x1030]
 mov rbx, qword ptr [r11+0x18]
 mov rsi, qword ptr [r11+0x28]
 mov rsp, r11
 pop rdi
 ret 
 int3 
 int3 

0x1400105ec:
 mov qword ptr [rsp+0x10], rbx
 mov qword ptr [rsp+0x18], rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 mov eax, 0x1030
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1020], rax
 xor r14d, r14d
 mov r13b, dl
 mov rbx, rcx
 cmp rcx, r14
 je 0x14001071d
 cmp word ptr [rcx], r14w
 je 0x14001071d
 mov r12b, 0x1
 mov rdi, rcx
 mov rbp, r14

0x140010642:
 mov rsi, rbp
 sar rsi, 0x1
 cmp rsi, 0x800
 jae 0x1400106ea
 movzx ecx, word ptr [rdi]
 call 0x140013458
 cmp al, r14b
 je 0x1400106d8
 cmp rdi, rbx
 jbe 0x1400106d8
 lea rax, [rbx+4]
 cmp rdi, rax
 jne 0x140010677
 cmp word ptr [rbx+2], 0x3a
 je 0x1400106d8

0x140010677:
 lea rcx, [rsp+0x20]
 mov r8, rsi
 mov rdx, rbx
 call sub_14002dc5c
 lea rcx, [rsp+0x20]
 xor r8d, r8d
 mov dl, 0x1
 mov word ptr [rsp+rsi*2+0x20], r14w
 call 0x140010510
 cmp eax, r14d
 sete r12b
 cmp r12b, r14b
 je 0x1400106d8
 mov ecx, 0xd58
 call sub_140019e20
 lea rdx, [rsp+0x20]
 mov rcx, rax
 call sub_140008e10
 mov ecx, 0xd18
 call sub_140019e20
 lea rcx, [0x14003d008]
 mov rdx, rax
 call sub_140008e10

0x1400106d8:
 add rdi, 2
 add rbp, 2
 cmp word ptr [rdi], r14w
 jne 0x140010642

0x1400106ea:
 cmp r13b, r14b
 jne 0x140010718
 mov rcx, rbx
 call sub_140013400
 movzx ecx, word ptr [rax]
 call 0x140013458
 cmp al, r14b
 jne 0x140010718
 xor r8d, r8d
 mov dl, 0x1
 mov rcx, rbx
 call 0x140010510
 cmp eax, r14d
 sete r12b

0x140010718:
 mov al, r12b
 jmp 0x14001071f

0x14001071d:
 xor al, al

0x14001071f:
 mov rcx, qword ptr [rsp+0x1020]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x1030]
 mov rbx, qword ptr [r11+0x38]
 mov rbp, qword ptr [r11+0x40]
 mov rsp, r11
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 ret 
 int3 

0x14001074c:
 push rbx
 push rbp
 push rsi
 push rdi
 push r13
 push r14
 push r15
 mov eax, 0x19b0
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x58], -2
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x19a0], rax
 mov edi, r9d
 mov r15, r8
 mov r13, rdx
 mov rbx, rcx
 mov qword ptr [rsp+0x48], rcx
 mov rax, qword ptr [rcx]
 call qword ptr [rax+0x20]
 mov qword ptr [rsp+0x50], rax
 mov rcx, rbx
 call sub_14000fb48
 mov qword ptr [rsp+0x20], rax
 xor esi, esi
 test byte ptr [rsp+0x1a18], 3
 je 0x1400107d7
 mov dword ptr [rsp+0xc0], esi
 mov dword ptr [rsp+0xc4], esi
 mov dword ptr [rsp+0xc8], 0x80
 lea rcx, [rsp+0x60]
 call sub_140020600

0x1400107d7:
 test byte ptr [rsp+0x1a18], 4
 jne 0x1400107ef
 mov rax, qword ptr [rbx]
 xor r8d, r8d
 xor edx, edx
 mov rcx, rbx
 call qword ptr [rax+0x18]

0x1400107ef:
 mov qword ptr [rsp+0x28], rsi
 mov qword ptr [rsp+0x30], rsi
 mov qword ptr [rsp+0x38], rsi
 mov qword ptr [rsp+0x40], rsi
 mov ebp, 0x100000
 mov rdx, rbp
 lea rcx, [rsp+0x28]
 call sub_140001294
 nop 
 lea rcx, [rsp+0xd50]
 call sub_140011840
 nop 
 lea rcx, [rsp+0x100]
 call sub_140011840
 nop 
 mov r8d, edi
 mov edx, 2
 lea rcx, [rsp+0xd50]
 call sub_140011558
 mov r8d, edi
 mov edx, 3
 lea rcx, [rsp+0x100]
 call sub_140011558
 mov r14, rsi
 movabs rax, 0x7fffffff7fffffff
 mov rsi, qword ptr [rsp+0x28]
 mov rdi, qword ptr [rsp+0x1a10]
 jmp 0x14001087d

0x140010878:
 mov ebp, 0x100000

0x14001087d:
 cmp rdi, rax
 jne 0x140010887
 mov r8, rbp
 jmp 0x140010891

0x140010887:
 mov r8, rdi
 cmp rdi, rbp
 cmovg r8, rbp

0x140010891:
 mov rax, qword ptr [rbx]
 mov rdx, rsi
 mov rcx, rbx
 call qword ptr [rax+0x10]
 movsxd rbp, eax
 test eax, eax
 je 0x14001092d
 inc r14
 test r14b, 0xf
 jne 0x1400108dd
 test byte ptr [rsp+0x1a18], 2
 je 0x1400108d8
 mov rcx, r14
 shl rcx, 0x14
 mov rdx, qword ptr [rsp+0x20]
 call 0x14001ed44
 mov edx, eax
 mov ecx, 0x81
 call sub_140017308

0x1400108d8:
 call 0x14001f5e0

0x1400108dd:
 test r13, r13
 je 0x1400108f5
 mov r8, rbp
 mov rdx, rsi
 lea rcx, [rsp+0xd50]
 call sub_1400115a8

0x1400108f5:
 test r15, r15
 je 0x14001090d
 mov r8, rbp
 mov rdx, rsi
 lea rcx, [rsp+0x100]
 call sub_1400115a8

0x14001090d:
 movabs rax, 0x7fffffff7fffffff
 cmp rdi, rax
 je 0x140010878
 sub rdi, rbp
 mov ebp, 0x100000
 jmp 0x14001087d

0x14001092d:
 test byte ptr [rsp+0x1a18], 2
 je 0x14001095c
 and dword ptr [rsp+0xc0], 0x0
 and dword ptr [rsp+0xc4], 0x0
 mov dword ptr [rsp+0xc8], 0x82
 lea rcx, [rsp+0x60]
 call sub_140020600

0x14001095c:
 test r13, r13
 je 0x140010972
 lea rcx, [rsp+0xd50]
 call 0x14001164c
 mov dword ptr [r13], eax

0x140010972:
 test r15, r15
 je 0x1400109a3
 lea rdx, [rsp+0xd0]
 lea rcx, [rsp+0x100]
 call sub_140011870
 mov rcx, r15
 lea rdx, [rsp+0xd4]
 mov r8d, 0x20
 call 0x14002d490
 nop 

0x1400109a3:
 lea rcx, [rsp+0x100]
 call 0x140011520
 nop 
 lea rcx, [rsp+0xd50]
 call 0x140011520
 nop 
 test rsi, rsi
 je 0x1400109cd
 mov rcx, rsi
 call sub_14002cfac
 nop 

0x1400109cd:
 mov rax, qword ptr [rbx]
 xor r8d, r8d
 mov rdx, qword ptr [rsp+0x50]
 mov rcx, rbx
 call qword ptr [rax+0x18]
 mov rcx, qword ptr [rsp+0x19a0]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x19b0
 pop r15
 pop r14
 pop r13
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 

0x140010a00:
 push rdi
 mov eax, 0x20a0
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x20], -2
 mov qword ptr [rsp+0x20b8], rbx
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x2090], rax
 mov rdi, rcx
 call sub_140013430
 xor ebx, ebx
 cmp al, bl
 je 0x140010a95
 lea rcx, [rsp+0x30]
 call sub_140011048
 nop 
 mov rdx, rdi
 lea rcx, [rsp+0x30]
 call sub_14001107c
 mov qword ptr [rsp+0x2050], rbx
 mov qword ptr [rsp+0x2058], rbx
 mov qword ptr [rsp+0x2060], rbx
 xor r8d, r8d
 lea rdx, [rsp+0x1040]
 lea rcx, [rsp+0x30]
 call sub_140011240
 mov bl, al
 lea rcx, [rsp+0x30]
 call sub_140011060
 mov al, bl
 jmp 0x140010aa3

0x140010a95:
 mov rcx, rdi
 call 0x14000ffc8
 cmp eax, 0xff
 setne al

0x140010aa3:
 mov rcx, qword ptr [rsp+0x2090]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x20b8]
 add rsp, 0x20a0
 pop rdi
 ret 

0x140010ac4:
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x30e0
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x98], -2
 mov qword ptr [rsp+0x3130], rbx
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x30d0], rax
 mov dil, r9b
 mov qword ptr [rsp+0x30], rdx
 xor ebx, ebx
 mov word ptr [rsp+0x10d0], bx
 mov eax, 0x800
 cmp rcx, rbx
 je 0x140010b50
 cmp r8b, bl
 je 0x140010b3d
 mov byte ptr [rsp+0x20], bl
 mov r9b, 0x1
 mov r8, rax
 lea rdx, [rsp+0x10d0]
 call sub_14001403c
 jmp 0x140010b50

0x140010b3d:
 mov r8, rax
 mov rdx, rcx
 lea rcx, [rsp+0x10d0]
 call sub_14001efc0

0x140010b50:
 lea rcx, [rsp+0xa0]
 call sub_14000f274
 nop 
 cmp word ptr [rsp+0x10d0], bx
 je 0x140010bbc
 cmp dil, bl
 je 0x140010b84
 lea rdx, [rsp+0x10d0]
 lea rcx, [rsp+0xa0]
 call sub_14000f43c
 jmp 0x140010b9c

0x140010b84:
 xor r8d, r8d
 lea rdx, [rsp+0x10d0]
 lea rcx, [rsp+0xa0]
 call 0x14000f2b8

0x140010b9c:
 cmp al, bl
 jne 0x140010bc7
 cmp dil, bl
 je 0x140010bb7
 mov edx, 6
 lea rcx, [0x140050e70]
 call 0x14000b114
 nop 

0x140010bb7:
 jmp 0x14001100e

0x140010bbc:
 mov dword ptr [rsp+0xb4], 0x1

0x140010bc7:
 mov edi, ebx
 mov qword ptr [rsp+0x58], rbx
 mov qword ptr [rsp+0x60], rbx
 mov qword ptr [rsp+0x68], rbx
 mov qword ptr [rsp+0x70], rbx
 mov edx, 0x1005
 lea rcx, [rsp+0x58]
 call sub_140001294
 nop 
 mov esi, 0x1000
 mov r8, rsi
 mov r13, qword ptr [rsp+0x58]
 mov rdx, r13
 lea rcx, [rsp+0xa0]
 call sub_14000fbe8
 cmp eax, ebx
 je 0x140010c3a

0x140010c0e:
 add edi, eax
 mov edx, eax
 lea rcx, [rsp+0x58]
 call sub_140001294
 mov edx, edi
 mov r13, qword ptr [rsp+0x58]
 add rdx, r13
 mov r8, rsi
 lea rcx, [rsp+0xa0]
 call sub_14000fbe8
 cmp eax, ebx
 jne 0x140010c0e

0x140010c3a:
 mov eax, edi
 add rax, r13
 xor ecx, ecx
 mov dword ptr [rax], ecx
 mov byte ptr [rax+4], cl
 mov qword ptr [rsp+0x38], rbx
 mov r14, rbx
 mov qword ptr [rsp+0x40], rbx
 mov r15, rbx
 mov qword ptr [rsp+0x48], rbx
 mov qword ptr [rsp+0x50], rbx
 mov r12d, dword ptr [rsp+0x3140]
 cmp r12d, 3
 je 0x140010e29
 cmp r12d, ebx
 jne 0x140010cb0
 cmp edi, 4
 jl 0x140010cb0
 cmp byte ptr [r13], 0xff
 jne 0x140010cb0
 cmp byte ptr [r13+1], 0xfe
 jne 0x140010cb0
 lea edx, [rcx+2]
 cmp edi, edx
 jle 0x140010cb0
 lea rcx, [r13+2]

0x140010c95:
 mov al, byte ptr [rcx]
 cmp al, 0x20
 jae 0x140010ca7
 cmp al, 0xd
 je 0x140010ca7
 cmp al, 0xa
 jne 0x140010e29

0x140010ca7:
 inc edx
 inc rcx
 cmp edx, edi
 jl 0x140010c95

0x140010cb0:
 mov rsi, r13
 cmp byte ptr [r13], bl
 je 0x140010fee
 mov r13, qword ptr [rsp+0x38]

0x140010cc2:
 mov rbp, rsi
 mov rcx, rbx
 cmp byte ptr [rsi], 0xd
 je 0x140010cfc

0x140010ccd:
 cmp byte ptr [rbp], 0xa
 je 0x140010cfc
 cmp byte ptr [rbp], bl
 je 0x140010cfc
 cmp byte ptr [rsp+0x3150], bl
 je 0x140010cf3
 cmp byte ptr [rbp], 0x2f
 jne 0x140010cf3
 cmp byte ptr [rbp+1], 0x2f
 jne 0x140010cf3
 mov byte ptr [rbp], bl
 mov rcx, rbp

0x140010cf3:
 inc rbp
 cmp byte ptr [rbp], 0xd
 jne 0x140010ccd

0x140010cfc:
 mov byte ptr [rbp], bl
 mov rax, rbp
 cmp rcx, rbx
 cmovne rax, rcx
 dec rax
 cmp rax, rsi
 jb 0x140010d25

0x140010d11:
 cmp byte ptr [rax], 0x20
 je 0x140010d1b
 cmp byte ptr [rax], 9
 jne 0x140010d25

0x140010d1b:
 mov byte ptr [rax], bl
 dec rax
 cmp rax, rsi
 jae 0x140010d11

0x140010d25:
 cmp byte ptr [rsi], bl
 je 0x140010e04
 cmp byte ptr [rsp+0x3148], bl
 je 0x140010d57
 cmp byte ptr [rsi], 0x22
 jne 0x140010d57
 xor eax, eax
 or rcx, 0xffffffffffffffff
 mov rdi, rsi
 repne scasb al, byte ptr [rdi]
 not rcx
 cmp byte ptr [rcx+rsi-2], 0x22
 jne 0x140010d57
 mov byte ptr [rcx+rsi-2], bl
 inc rsi

0x140010d57:
 cmp r12d, 2
 jne 0x140010d69
 mov rdx, rsi
 mov rcx, rsi
 call qword ptr [OemToCharA]

0x140010d69:
 xor eax, eax
 or rcx, 0xffffffffffffffff
 mov rdi, rsi
 repne scasb al, byte ptr [rdi]
 not rcx
 cmp rcx, r15
 jbe 0x140010d9d
 sub rcx, r14
 mov rdx, rcx
 lea rcx, [rsp+0x38]
 call sub_1400011f4
 mov r15, qword ptr [rsp+0x48]
 mov r14, qword ptr [rsp+0x40]
 mov r13, qword ptr [rsp+0x38]
 jmp 0x140010da5

0x140010d9d:
 mov r14, rcx
 mov qword ptr [rsp+0x40], rcx

0x140010da5:
 mov r8, r14
 mov rdx, r13
 mov rcx, rsi
 call sub_14002110c
 cmp byte ptr [rsp+0x3158], bl
 je 0x140010df7
 cmp byte ptr [rsi], 0x25
 jne 0x140010df7
 mov r8d, 0x800
 lea rdx, [rsp+0x20d0]
 mov rcx, r13
 call qword ptr [ExpandEnvironmentStringsW]
 cmp eax, ebx
 je 0x140010df7
 cmp eax, 0x800
 jae 0x140010df7
 lea rdx, [rsp+0x20d0]
 mov rcx, qword ptr [rsp+0x30]
 call sub_14001f3b4
 jmp 0x140010e04

0x140010df7:
 mov rdx, r13
 mov rcx, qword ptr [rsp+0x30]
 call sub_14001f3b4

0x140010e04:
 lea rsi, [rbp+1]

0x140010e08:
 cmp byte ptr [rsi], 0xd
 je 0x140010e12
 cmp byte ptr [rsi], 0xa
 jne 0x140010e17

0x140010e12:
 inc rsi
 jmp 0x140010e08

0x140010e17:
 cmp byte ptr [rsi], bl
 jne 0x140010cc2
 mov r13, qword ptr [rsp+0x58]
 jmp 0x140010fee

0x140010e29:
 mov qword ptr [rsp+0x78], rbx
 mov qword ptr [rsp+0x80], rbx
 mov qword ptr [rsp+0x88], rbx
 mov qword ptr [rsp+0x90], rbx
 mov rdi, qword ptr [rsp+0x60]
 mov rdx, rdi
 shr rdx, 0x1
 inc rdx
 lea rcx, [rsp+0x78]
 call sub_1400011f4
 nop 
 lea rdx, [rdi-1]
 mov r12, qword ptr [rsp+0x78]
 cmp rdx, 2
 jbe 0x140010eaf
 lea rdi, [r13+2]
 mov r8, -2
 sub r8, r13
 add rdx, -3
 shr rdx, 0x1
 inc rdx

0x140010e86:
 movzx ecx, byte ptr [rdi+1]
 mov eax, 0x100
 imul cx, ax
 movzx eax, byte ptr [rdi]
 add cx, ax
 lea rax, [r8+rdi]
 shr rax, 0x1
 mov word ptr [r12+rax*2], cx
 add rdi, 2
 sub rdx, 0x1
 jne 0x140010e86

0x140010eaf:
 mov rsi, r12
 cmp word ptr [r12], bx
 je 0x140010fe5
 mov r13, qword ptr [rsp+0x30]

0x140010ec2:
 mov rbp, rsi
 mov rcx, rbx
 cmp word ptr [rsi], 0xd
 je 0x140010f04

0x140010ece:
 cmp word ptr [rbp], 0xa
 je 0x140010f04
 cmp word ptr [rbp], bx
 je 0x140010f04
 cmp byte ptr [rsp+0x3150], bl
 je 0x140010ef9
 cmp word ptr [rbp], 0x2f
 jne 0x140010ef9
 cmp word ptr [rbp+2], 0x2f
 jne 0x140010ef9
 mov word ptr [rbp], bx
 mov rcx, rbp

0x140010ef9:
 add rbp, 2
 cmp word ptr [rbp], 0xd
 jne 0x140010ece

0x140010f04:
 mov word ptr [rbp], bx
 mov rax, rbp
 cmp rcx, rbx
 cmovne rax, rcx
 sub rax, 2
 cmp rax, rsi
 jb 0x140010f33

0x140010f1b:
 cmp word ptr [rax], 0x20
 je 0x140010f27
 cmp word ptr [rax], 9
 jne 0x140010f33

0x140010f27:
 mov word ptr [rax], bx
 sub rax, 2
 cmp rax, rsi
 jae 0x140010f1b

0x140010f33:
 cmp word ptr [rsi], bx
 je 0x140010fc1
 xor eax, eax
 or rcx, 0xffffffffffffffff
 mov rdi, rsi
 repne scasd eax, dword ptr [rdi]
 not rcx
 cmp byte ptr [rsp+0x3148], bl
 je 0x140010f6b
 cmp word ptr [rsi], 0x22
 jne 0x140010f6b
 cmp word ptr [rsi+rcx*2-4], 0x22
 jne 0x140010f6b
 mov word ptr [rsi+rcx*2-4], bx
 add rsi, 2

0x140010f6b:
 cmp byte ptr [rsp+0x3158], bl
 je 0x140010fb6
 cmp word ptr [rsi], 0x25
 jne 0x140010fb6
 mov word ptr [rsp+0x20d0], bx
 mov r8d, 0x800
 lea rdx, [rsp+0x20d0]
 mov rcx, rsi
 call qword ptr [ExpandEnvironmentStringsW]
 cmp eax, ebx
 je 0x140010fb6
 cmp eax, 0x800
 jae 0x140010fb6
 lea rdx, [rsp+0x20d0]
 mov rcx, r13
 call sub_14001f3b4
 jmp 0x140010fc1

0x140010fb6:
 mov rdx, rsi
 mov rcx, r13
 call sub_14001f3b4

0x140010fc1:
 lea rsi, [rbp+2]

0x140010fc5:
 cmp word ptr [rsi], 0xd
 je 0x140010fd1
 cmp word ptr [rsi], 0xa
 jne 0x140010fd7

0x140010fd1:
 add rsi, 2
 jmp 0x140010fc5

0x140010fd7:
 cmp word ptr [rsi], bx
 jne 0x140010ec2
 mov r13, qword ptr [rsp+0x58]

0x140010fe5:
 mov rcx, r12
 call sub_14002cfac
 nop 

0x140010fee:
 mov rcx, qword ptr [rsp+0x38]
 cmp rcx, rbx
 je 0x140010ffe
 call sub_14002cfac
 nop 

0x140010ffe:
 cmp r13, rbx
 je 0x14001100c
 mov rcx, r13
 call sub_14002cfac
 nop 

0x14001100c:
 mov bl, 0x1

0x14001100e:
 lea rcx, [rsp+0xa0]
 call sub_14000f94c
 mov al, bl
 mov rcx, qword ptr [rsp+0x30d0]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x3130]
 add rsp, 0x30e0
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
; --------------------------------------------------------------------------
; sub_140011048
; --------------------------------------------------------------------------
sub_140011048   proc
 or qword ptr [rcx+0x1008], 0xffffffffffffffff
 xor eax, eax
 mov byte ptr [rcx+0x1000], 0x1
 mov word ptr [rcx], ax
 mov rax, rcx
 ret 
sub_140011048   endp
 
; --------------------------------------------------------------------------
; sub_140011060
; --------------------------------------------------------------------------
sub_140011060   proc
 sub rsp, 0x28
 mov rcx, qword ptr [rcx+0x1008]
 cmp rcx, 0xff
 je 0x140011077
 call qword ptr [FindClose]

0x140011077:
 add rsp, 0x28
 ret 
sub_140011060   endp
 
; --------------------------------------------------------------------------
; sub_14001107c
; --------------------------------------------------------------------------
sub_14001107c   proc
 mov r8, rcx
 sub r8, rdx

0x140011082:
 movzx eax, word ptr [rdx]
 mov word ptr [r8+rdx], ax
 add rdx, 2
 test ax, ax
 jne 0x140011082
 mov byte ptr [rcx+0x1000], 0x1
 ret 
sub_14001107c   endp
 
 int3 

0x14001109c:
 mov qword ptr [rsp+0x20], rbx
 push rsi
 push rdi
 push r12
 mov eax, 0x1280
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1270], rax
 mov rsi, rdx
 mov rdi, r8
 mov rbx, rcx
 lea rdx, [rsp+0x20]
 mov r12d, 0x800
 cmp rcx, 0xff
 jne 0x140011150
 mov rcx, rsi
 call qword ptr [FindFirstFileW]
 mov rbx, rax
 cmp rax, 0xff
 jne 0x14001117a
 lea rdx, [rsp+0x270]
 mov r8, r12
 mov rcx, rsi
 call 0x140013930
 test al, al
 je 0x140011127
 lea rdx, [rsp+0x20]
 lea rcx, [rsp+0x270]
 call qword ptr [FindFirstFileW]
 mov rbx, rax
 cmp rax, 0xff
 jne 0x14001117a

0x140011127:
 call qword ptr [GetLastError]
 cmp eax, 2
 je 0x140011143
 cmp eax, 3
 je 0x140011143
 cmp eax, 0x12
 je 0x140011143
 mov eax, 0x1
 jmp 0x140011145

0x140011143:
 xor eax, eax

0x140011145:
 mov byte ptr [rdi+0x1044], al
 jmp 0x140011210

0x140011150:
 call qword ptr [FindNextFileW]
 test eax, eax
 jne 0x140011170
 or rbx, 0xffffffffffffffff
 call qword ptr [GetLastError]
 cmp eax, 0x12
 setne al
 mov byte ptr [rdi+0x1044], al

0x140011170:
 cmp rbx, 0xff
 je 0x140011210

0x14001117a:
 mov r8, r12
 mov rdx, rsi
 mov rcx, rdi
 call sub_14001efc0
 lea rdx, [rsp+0x4c]
 mov r8, r12
 mov rcx, rdi
 call 0x140013e08
 mov eax, dword ptr [rsp+0x40]
 mov r11d, dword ptr [rsp+0x3c]
 shl r11, 0x20
 lea rcx, [rdi+0x1010]
 lea rdx, [rsp+0x34]
 add r11, rax
 mov eax, dword ptr [rsp+0x20]
 mov dword ptr [rdi+0x1008], eax
 mov rax, qword ptr [rsp+0x24]
 mov qword ptr [rdi+0x1000], r11
 mov qword ptr [rdi+0x1028], rax
 mov rax, qword ptr [rsp+0x2c]
 mov qword ptr [rdi+0x1030], rax
 mov rax, qword ptr [rsp+0x34]
 mov qword ptr [rdi+0x1038], rax
 call sub_14001feb0
 lea rcx, [rdi+0x1018]
 lea rdx, [rsp+0x24]
 call sub_14001feb0
 lea rcx, [rdi+0x1020]
 lea rdx, [rsp+0x2c]
 call sub_14001feb0

0x140011210:
 and dword ptr [rdi+0x1040], 0x0
 mov rax, rbx
 mov rcx, qword ptr [rsp+0x1270]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x12b8]
 add rsp, 0x1280
 pop r12
 pop rdi
 pop rsi
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140011240
; --------------------------------------------------------------------------
sub_140011240   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x38]
 arg_3 : qword, ; [rsp+0x40]
 arg_4 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x20
 xor r12d, r12d
 mov rbp, rdx
 mov rbx, rcx
 mov byte ptr [rdx+0x1044], r12b
 cmp word ptr [rcx], r12w

0x14001126d:
 je 0x14001131a
 mov r8, rbp
 mov rdx, rbx
 cmp byte ptr [rbx+0x1000], r12b
 je 0x140011294
 or rcx, 0xffffffffffffffff
 call 0x14001109c
 mov qword ptr [rbx+0x1008], rax
 jmp 0x1400112a0

0x140011294:
 mov rcx, qword ptr [rbx+0x1008]
 call 0x14001109c

0x1400112a0:
 cmp rax, 0xff
 je 0x14001131a
 mov ecx, dword ptr [rbp+0x1008]
 mov dword ptr [rbp+0x1040], r12d
 call 0x14000ffa8
 mov ecx, dword ptr [rbp+0x1008]
 mov byte ptr [rbp+0x100c], al
 call sub_14000ffbc
 mov rcx, rbp
 mov byte ptr [rbp+0x100d], al
 mov byte ptr [rbx+0x1000], r12b
 call 0x140013c20
 lea rdi, [0x14003d1f8]
 mov ecx, 2
 mov rsi, rax
 repe cmpsd dword ptr [rsi], dword ptr [rdi]
 je 0x140011306
 lea rdi, [0x14003d1f0]
 mov rsi, rax
 mov ecx, 3
 repe cmpsd dword ptr [rsi], dword ptr [rdi]
 jne 0x140011316

0x140011306:
 mov byte ptr [rbp+0x1044], r12b
 cmp word ptr [rbx], r12w
 jmp 0x14001126d

0x140011316:
 mov al, 0x1
 jmp 0x14001131c

0x14001131a:
 xor al, al

0x14001131c:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x20
 pop r12
 ret 
sub_140011240   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140011338
; --------------------------------------------------------------------------
sub_140011338   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rbx, rdx
 mov rdi, rcx
 mov byte ptr [rdx+0x1044], 0x0
 call sub_140013430
 test al, al
 je 0x14001135c

0x140011358:
 xor al, al
 jmp 0x1400113a5

0x14001135c:
 mov r8, rbx
 mov rdx, rdi
 or rcx, 0xffffffffffffffff
 call 0x14001109c
 cmp rax, 0xff
 je 0x140011358
 mov rcx, rax
 call qword ptr [FindClose]
 mov ecx, dword ptr [rbx+0x1008]
 and dword ptr [rbx+0x1040], 0x0
 call 0x14000ffa8
 mov ecx, dword ptr [rbx+0x1008]
 mov byte ptr [rbx+0x100c], al
 call sub_14000ffbc
 mov byte ptr [rbx+0x100d], al
 mov al, 0x1

0x1400113a5:
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_140011338   endp
 
; --------------------------------------------------------------------------
; sub_1400113b0
; --------------------------------------------------------------------------
sub_1400113b0   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 mov byte ptr [rcx+0x8], 0x0
 test dl, dl
 je 0x1400113e1
 mov ecx, 0x8003
 call 0x14002c914
 xor edx, edx
 mov r8d, 0x8003
 mov rcx, rax
 mov qword ptr [rbx+0x10], rax
 call 0x14002d190
 jmp 0x1400113e6

0x1400113e1:
 and qword ptr [rcx+0x10], 0x0

0x1400113e6:
 mov rax, rbx
 add rsp, 0x20
 pop rbx
 ret 
sub_1400113b0   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_1400113f0
; --------------------------------------------------------------------------
sub_1400113f0   proc
 sub rsp, 0x28
 cmp byte ptr [rcx+0x8], 0x0
 jne 0x140011403
 mov rcx, qword ptr [rcx+0x10]
 call 0x14002ec9c

0x140011403:
 add rsp, 0x28
 ret 
sub_1400113f0   endp
 
; --------------------------------------------------------------------------
; sub_140011408
; --------------------------------------------------------------------------
sub_140011408   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rbx, rcx
 mov rcx, qword ptr [rcx+0x10]
 mov rdi, rdx
 test rcx, rcx
 je 0x14001142c
 cmp byte ptr [rbx+0x8], 0x0
 jne 0x14001142c
 call 0x14002ec9c

0x14001142c:
 mov qword ptr [rbx+0x10], rdi
 mov byte ptr [rbx+0x8], 0x1
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_140011408   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140011440
; --------------------------------------------------------------------------
sub_140011440   proc
 mov eax, dword ptr [rcx+4]
 lea r8d, [rdx+rax]
 mov eax, r8d
 and r8d, 7
 shr eax, 3
 mov dword ptr [rcx+4], r8d
 add dword ptr [rcx], eax
 ret 
sub_140011440   endp
 
; --------------------------------------------------------------------------
; sub_140011458
; --------------------------------------------------------------------------
sub_140011458   proc
 movsxd r8, dword ptr [rcx]
 mov rdx, qword ptr [rcx+0x10]
 movzx eax, byte ptr [rdx+r8+1]
 movzx r9d, byte ptr [rdx+r8]
 shl r9d, 8
 or r9d, eax
 movzx eax, byte ptr [rdx+r8+2]
 shl r9d, 8
 or r9d, eax
 mov eax, 8
 sub eax, dword ptr [rcx+4]
 mov cl, al
 shr r9d, cl
 movzx eax, r9w
 ret 
sub_140011458   endp
 
; --------------------------------------------------------------------------
; sub_140011490
; --------------------------------------------------------------------------
sub_140011490   proc
 sub rsp, 0x28
 mov dword ptr [rcx], edx
 cmp edx, 0x1
 je 0x1400114a0
 cmp edx, 2
 jne 0x1400114a4

0x1400114a0:
 and dword ptr [rcx+4], 0x0

0x1400114a4:
 cmp edx, 3
 jne 0x1400114bf
 lea rdx, [0x140045218]
 add rcx, 4
 mov r8d, 0x20
 call 0x14002d490

0x1400114bf:
 add rsp, 0x28
 ret 
sub_140011490   endp
 
; --------------------------------------------------------------------------
; sub_1400114c4
; --------------------------------------------------------------------------
sub_1400114c4   proc
 push rbx
 sub rsp, 0x20
 xor ebx, ebx
 cmp dword ptr [rcx], ebx
 je 0x140011518
 cmp dword ptr [rdx], ebx
 je 0x140011518
 cmp dword ptr [rcx], 0x1
 jne 0x1400114de
 cmp dword ptr [rdx], 0x1
 je 0x1400114e8

0x1400114de:
 cmp dword ptr [rcx], 2
 jne 0x1400114f3
 cmp dword ptr [rdx], 2
 jne 0x1400114f3

0x1400114e8:
 mov eax, dword ptr [rdx+4]
 cmp dword ptr [rcx+4], eax

0x1400114ee:
 sete al
 jmp 0x14001151a

0x1400114f3:
 cmp dword ptr [rcx], 3
 jne 0x140011514
 cmp dword ptr [rdx], 3
 jne 0x140011514
 add rdx, 4
 add rcx, 4
 mov r8d, 0x20
 call 0x14002e630
 cmp eax, ebx
 jmp 0x1400114ee

0x140011514:
 xor al, al
 jmp 0x14001151a

0x140011518:
 mov al, 0x1

0x14001151a:
 add rsp, 0x20
 pop rbx
 ret 
sub_1400114c4   endp
 

0x140011520:
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 mov rcx, qword ptr [rcx+0xc40]
 call 0x14001fce0
 lea rcx, [rbx+0x8]
 mov edx, 0xc38
 call sub_14001cf34
 lea rcx, [rbx+4]
 mov edx, 4
 add rsp, 0x20
 pop rbx
 jmp sub_14001cf34
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140011558
; --------------------------------------------------------------------------
sub_140011558   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov edi, r8d
 mov rbx, rcx
 mov dword ptr [rcx], edx
 cmp edx, 0x1
 jne 0x140011573
 and dword ptr [rcx+4], 0x0

0x140011573:
 cmp edx, 2
 jne 0x14001157c
 or dword ptr [rcx+4], 0xffffffff

0x14001157c:
 cmp edx, 3
 jne 0x14001158a
 add rcx, 8
 call sub_1400065b0

0x14001158a:
 mov eax, 8
 cmp edi, eax
 cmovb eax, edi
 mov dword ptr [rbx+0xc48], eax
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_140011558   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400115a8
; --------------------------------------------------------------------------
sub_1400115a8   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 cmp dword ptr [rcx], 0x1
 mov rdi, r8
 mov rsi, rdx
 mov rbx, rcx
 jne 0x1400115d6
 movzx ecx, word ptr [rcx+4]
 call sub_140009840
 movzx r11d, ax
 mov dword ptr [rbx+4], r11d

0x1400115d6:
 cmp dword ptr [rbx], 2
 jne 0x1400115ec
 mov ecx, dword ptr [rbx+4]
 mov r8, rdi
 mov rdx, rsi
 call sub_140009710
 mov dword ptr [rbx+4], eax

0x1400115ec:
 cmp dword ptr [rbx], 3
 jne 0x140011639
 cmp dword ptr [rbx+0xc48], 0x1
 jbe 0x140011610
 cmp qword ptr [rbx+0xc40], 0x0
 jne 0x140011610
 call sub_14001fb14
 mov qword ptr [rbx+0xc40], rax

0x140011610:
 mov rax, qword ptr [rbx+0xc40]
 lea rcx, [rbx+0x8]
 mov r8, rdi
 mov qword ptr [rbx+0xc30], rax
 mov eax, dword ptr [rbx+0xc48]
 mov rdx, rsi
 mov dword ptr [rbx+0xc38], eax
 call sub_1400066a8

0x140011639:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_1400115a8   endp
 
 int3 
 int3 
 int3 

0x14001164c:
 cmp dword ptr [rcx], 2
 jne 0x140011657
 mov eax, dword ptr [rcx+4]
 not eax
 ret 

0x140011657:
 xor eax, eax
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001165c
; --------------------------------------------------------------------------
sub_14001165c   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rbx, rcx
 mov rax, rcx
 mov rdi, rdx
 not rax
 inc rax
 and eax, 0x3f
 add rcx, rax
 mov qword ptr [rbx+0xf0], rcx
 lea rax, [rcx+0x80]
 mov qword ptr [rbx+0xf8], rax
 add rax, 0x20
 mov qword ptr [rbx+0x100], rax
 add rax, 8
 mov qword ptr [rbx+0x108], rax
 cmp rbx, rdx
 je 0x1400116d7
 mov rdx, qword ptr [rdx+0xf0]
 mov r8d, 0xb0
 call 0x14002d490
 mov r11, qword ptr [rdi+0x110]
 mov qword ptr [rbx+0x110], r11
 mov al, byte ptr [rdi+0x118]
 mov byte ptr [rbx+0x118], al

0x1400116d7:
 mov rax, rbx
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_14001165c   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400116e8
; --------------------------------------------------------------------------
sub_1400116e8   proc
 mov r8, rcx
 mov r9d, 7
 add rcx, 0xf8

0x1400116f8:
 lea rdx, [rcx-0xf8]
 mov rax, rdx
 not rax
 inc rax
 and eax, 0x3f
 add rax, rdx
 mov qword ptr [rcx-8], rax
 sub rax, -0x80
 mov qword ptr [rcx], rax
 add rax, 0x20
 add rcx, 0x120
 mov qword ptr [rcx-0x118], rax
 add rax, 8
 sub r9d, 0x1
 mov qword ptr [rcx-0x110], rax
 jns 0x1400116f8
 lea rcx, [r8+0x900]
 mov rax, rcx
 not rax
 inc rax
 and eax, 0x3f
 add rax, rcx
 mov qword ptr [rcx+0xf0], rax
 sub rax, -0x80
 mov qword ptr [rcx+0xf8], rax
 add rax, 0x20
 mov qword ptr [rcx+0x100], rax
 add rax, 8
 mov qword ptr [rcx+0x108], rax
 mov rax, r8
 ret 
sub_1400116e8   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140011780
; --------------------------------------------------------------------------
sub_140011780   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x38]
 arg_3 : qword, ; [rsp+0x40]
 arg_4 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x20
 mov rdi, rcx
 mov rsi, rdx
 mov r12, rcx
 mov rbx, rdx
 mov ebp, 7
 sub rdi, rdx

0x1400117ad:
 lea rcx, [rdi+rbx]
 mov rdx, rbx
 call sub_14001165c
 add rbx, 0x120
 sub ebp, 0x1
 jns 0x1400117ad
 lea rdx, [rsi+0x900]
 lea rcx, [r12+0x900]
 call sub_14001165c
 lea rcx, [r12+0xa20]
 lea rdx, [rsi+0xa20]
 mov r8d, 0x200
 call 0x14002d490
 mov r11, qword ptr [rsi+0xc20]
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rdi, qword ptr [arg_4]
 mov qword ptr [r12+0xc20], r11
 mov rax, qword ptr [rsi+0xc28]
 mov qword ptr [r12+0xc28], rax
 mov eax, dword ptr [rsi+0xc30]
 mov rsi, qword ptr [arg_3]
 mov dword ptr [r12+0xc30], eax
 mov rax, r12
 add rsp, 0x20
 pop r12
 ret 
sub_140011780   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140011840
; --------------------------------------------------------------------------
sub_140011840   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 add rcx, 8
 call sub_1400116e8
 xor r11d, r11d
 mov rax, rbx
 mov dword ptr [rbx], r11d
 mov qword ptr [rbx+0xc40], r11
 mov dword ptr [rbx+0xc48], r11d
 add rsp, 0x20
 pop rbx
 ret 
sub_140011840   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140011870
; --------------------------------------------------------------------------
sub_140011870   proc
 local local_1[0xc40]: byte ; [rsp+0x20]
 local local_2[0xc40]: byte ; [rsp+0xc60]

 push rbx
 sub rsp, 0xc70
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_2], rax
 mov eax, dword ptr [rcx]
 mov rbx, rdx
 mov dword ptr [rdx], eax
 cmp dword ptr [rcx], 0x1
 jne 0x14001189d
 mov eax, dword ptr [rcx+4]
 mov dword ptr [rdx+4], eax

0x14001189d:
 cmp dword ptr [rcx], 2
 jne 0x1400118aa
 mov eax, dword ptr [rcx+4]
 not eax
 mov dword ptr [rdx+4], eax

0x1400118aa:
 cmp dword ptr [rcx], 3
 jne 0x1400118cb
 lea rdx, [rcx+0x8]
 lea rcx, [local_1]
 call sub_140011780
 lea rdx, [rbx+4]
 lea rcx, [local_1]
 call 0x140006864

0x1400118cb:
 mov rcx, qword ptr [local_2]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0xc70
 pop rbx
 ret 
sub_140011870   endp
 
; --------------------------------------------------------------------------
; sub_1400118e4
; --------------------------------------------------------------------------
sub_1400118e4   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x60]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x50
 mov rdi, rdx
 lea rdx, [local_1]
 mov rbx, r8
 call sub_140011870
 test rbx, rbx
 je 0x140011910
 lea rcx, [local_1]
 mov rdx, rbx
 call 0x14000a85c

0x140011910:
 lea rcx, [local_1]
 mov rdx, rdi
 call sub_1400114c4
 mov rbx, qword ptr [arg_1]
 add rsp, 0x50
 pop rdi
 ret 
sub_1400118e4   endp
 
; --------------------------------------------------------------------------
; sub_140011928
; --------------------------------------------------------------------------
sub_140011928   proc
 xor eax, eax
 mov word ptr [rcx+0x14], ax
 mov dword ptr [rcx+0x18], eax
 mov byte ptr [rcx+0x1c], al
 mov byte ptr [rcx+0x1d], al
 mov byte ptr [rcx+0x1e], al
 mov qword ptr [rcx+0x20], rax
 mov qword ptr [rcx+0x28], rax
 mov qword ptr [rcx+0x30], rax
 mov qword ptr [rcx+0x38], rax
 ret 
sub_140011928   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_14001194c
; --------------------------------------------------------------------------
sub_14001194c   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rbx, rcx
 cmp rdx, qword ptr [rcx+0x1030]
 jbe 0x140011977
 sub rdx, qword ptr [rcx+0x1028]
 add rcx, 0x1020
 call sub_140001294
 jmp 0x14001197e

0x140011977:
 mov qword ptr [rcx+0x1028], rdx

0x14001197e:
 xor edi, edi
 lea rcx, [rbx+0x1070]
 xor edx, edx
 mov byte ptr [rbx+0x10], dil
 call sub_140011490
 mov qword ptr [rbx+0x1040], rdi
 mov qword ptr [rbx+0x1050], rdi
 mov qword ptr [rbx+0x1048], rdi
 mov byte ptr [rbx+0x1098], dil
 mov byte ptr [rbx+0x1099], dil
 mov byte ptr [rbx+0x109a], dil
 mov dword ptr [rbx+0x1c], edi
 mov dword ptr [rbx+0x109c], edi
 mov byte ptr [rbx+0x109b], dil
 mov byte ptr [rbx+0x10a0], dil
 mov byte ptr [rbx+0x10c1], dil
 mov byte ptr [rbx+0x10ca], dil
 mov dword ptr [rbx+0x10ec], edi
 mov byte ptr [rbx+0x10f0], dil
 mov byte ptr [rbx+0x10f1], dil
 mov qword ptr [rbx+0x10f8], rdi
 mov byte ptr [rbx+0x1100], dil
 mov byte ptr [rbx+0x1102], dil
 mov byte ptr [rbx+0x10f2], dil
 mov byte ptr [rbx+0x10f3], dil
 mov byte ptr [rbx+0x1101], dil
 mov dword ptr [rbx+0x1108], edi
 mov byte ptr [rbx+0x210d], dil
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_14001194c   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140011a38
; --------------------------------------------------------------------------
sub_140011a38   proc
 local local_1: dword ; [rsp+0x20]
 local local_2: dword ; [rsp+0x24]
 local local_3: qword ; [rsp+0x28]
 local local_4[0x110]: byte ; [rsp+0x30]
 local local_5[0x110]: byte ; [rsp+0x140]

 sub rsp, 0x158
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_5], rax
 mov ecx, dword ptr [0x140045238]
 cmp ecx, 0xff
 jne 0x140011a8f
 lea rcx, [local_1]
 mov dword ptr [local_1], 0x114
 call qword ptr [GetVersionExW]
 mov ecx, dword ptr [local_4]
 mov eax, dword ptr [local_2]
 mov edx, dword ptr [local_3]
 mov dword ptr [0x140045238], ecx
 mov dword ptr [0x140050ec8], eax
 mov dword ptr [0x140050ec4], edx
 jmp 0x140011a9b

0x140011a8f:
 mov eax, dword ptr [0x140050ec8]
 mov edx, dword ptr [0x140050ec4]

0x140011a9b:
 cmp ecx, 2
 jne 0x140011aa7
 shl eax, 8
 add eax, edx
 jmp 0x140011aac

0x140011aa7:
 mov eax, 0x501

0x140011aac:
 mov rcx, qword ptr [local_5]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x158
 ret 
sub_140011a38   endp
 

0x140011ac4:
 mov qword ptr [rsp+0x8], rbx
 mov qword ptr [rsp+0x10], rbp
 mov qword ptr [rsp+0x18], rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x60
 xor r11d, r11d
 mov r15, r9
 mov r14, r8
 mov r13d, ecx
 cmp edx, r11d
 je 0x140011c86
 sub edx, 0x1
 je 0x140011b24
 cmp edx, 0x1
 jne 0x140011d26
 lea rcx, [0x14003d258]
 sub r14, rcx

0x140011b0d:
 movzx eax, word ptr [rcx]
 mov word ptr [r14+rcx], ax
 add rcx, 2
 cmp ax, r11w
 jne 0x140011b0d
 jmp 0x140011d26

0x140011b24:
 mov eax, ecx
 mov ebx, 0x2d
 and eax, 0xf000
 cmp eax, 0x4000
 je 0x140011b4b
 cmp eax, 0xa000
 je 0x140011b44
 mov word ptr [r8], bx
 jmp 0x140011b54

0x140011b44:
 mov eax, 0x6c
 jmp 0x140011b50

0x140011b4b:
 mov eax, 0x64

0x140011b50:
 mov word ptr [r8], ax

0x140011b54:
 mov r8d, ecx
 mov eax, ecx
 mov r9d, ecx
 and eax, 0x200
 and r8b, 0x1
 and r9d, 0x400
 mov r10d, ecx
 mov ecx, ebx
 and r10d, 0x800
 neg eax
 sbb dl, dl
 and dl, 0xfc
 add dl, 0x78
 cmp r8b, r11b
 mov r8d, r13d
 movzx eax, dl
 cmovne ecx, eax
 mov eax, r13d
 and al, 2
 movsx r12d, cl
 neg al
 mov eax, r13d
 sbb ebp, ebp
 and al, 4
 and ebp, 0x4a
 add ebp, ebx
 neg al
 mov eax, r9d
 sbb esi, esi
 and r8b, 8
 and esi, 0x45
 add esi, ebx
 neg eax
 sbb dl, dl
 and dl, 0xfb
 add dl, 0x78
 neg r9d
 sbb al, al
 and al, 0x26
 add al, bl
 cmp r8b, r11b
 mov r8d, r13d
 movzx ecx, al
 movzx eax, dl
 cmovne ecx, eax
 mov eax, r13d
 and al, 0x10
 movsx edi, cl
 neg al
 mov eax, r13d
 sbb ebx, ebx
 and al, 0x20
 and ebx, 0x4a
 add ebx, 0x2d
 neg al
 mov eax, r10d
 sbb r11d, r11d
 and r11d, 0x45
 add r11d, 0x2d
 neg eax
 sbb dl, dl
 and dl, 0xfb
 add dl, 0x78
 neg r10d
 sbb al, al
 and al, 0x26
 add al, 0x2d
 and r8b, 0x40
 movzx ecx, al
 movzx eax, dl
 cmovne ecx, eax
 mov eax, r13d
 and al, 0x80
 movsx r10d, cl
 neg al
 sbb r8d, r8d
 and r13d, 0x100
 and r8d, 0x4a
 add r8d, 0x2d
 neg r13d
 sbb r9d, r9d
 mov dword ptr [rsp+0x58], r12d
 mov dword ptr [rsp+0x50], ebp
 mov dword ptr [rsp+0x48], esi
 mov dword ptr [rsp+0x40], edi
 mov dword ptr [rsp+0x38], ebx
 mov dword ptr [rsp+0x30], r11d
 mov dword ptr [rsp+0x28], r10d
 and r9d, 0x45
 mov dword ptr [rsp+0x20], r8d
 lea r8, [0x14003d230]
 lea rdx, [r15-1]
 lea rcx, [r14+2]
 add r9d, 0x2d
 call sub_140019504
 jmp 0x140011d26

0x140011c86:
 mov eax, ecx
 mov edi, 0x2e
 and al, 0x1
 neg al
 mov eax, ecx
 sbb ebx, ebx
 and al, 2
 and ebx, 0x24
 add ebx, edi
 neg al
 mov eax, ecx
 sbb r11d, r11d
 and al, 4
 mov dword ptr [rsp+0x48], ebx
 and r11d, 0x1a
 add r11d, edi
 neg al
 mov eax, ecx
 sbb r10d, r10d
 and al, 0x10
 mov dword ptr [rsp+0x40], r11d
 and r10d, 0x25
 add r10d, edi
 neg al
 mov eax, ecx
 sbb r8d, r8d
 and al, 0x20
 mov dword ptr [rsp+0x38], r10d
 and r8d, 0x16
 add r8d, edi
 neg al
 mov eax, ecx
 sbb edx, edx
 mov dword ptr [rsp+0x30], r8d
 and eax, 0x800
 and edx, 0x13
 lea r8, [0x14003d210]
 add edx, edi
 neg eax
 sbb ecx, ecx
 mov dword ptr [rsp+0x28], edx
 and r13d, 0x2000
 and ecx, 0x15
 mov rdx, r15
 add ecx, edi
 neg r13d
 sbb r9d, r9d
 mov dword ptr [rsp+0x20], ecx
 mov rcx, r14
 and r9d, 0x1b
 add r9d, edi
 call sub_140019504

0x140011d26:
 lea r11, [rsp+0x60]
 mov rbx, qword ptr [r11+0x30]
 mov rbp, qword ptr [r11+0x38]
 mov rsi, qword ptr [r11+0x40]
 mov rsp, r11
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 ret 

0x140011d44:
 mov qword ptr [rsp+0x20], rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x2230
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x2220], rax
 mov r15d, dword ptr [rcx+0xc4f0]
 xor ebp, ebp
 mov sil, r9b
 mov rdi, r8
 mov r12, rdx
 mov r13, rcx
 lea r14, [rdx+0x20]
 cmp byte ptr [rsp+0x2298], bpl
 je 0x140011da2
 lea rcx, [0x14003d620]
 jmp 0x1400126c4

0x140011da2:
 mov bl, byte ptr [rsp+0x2290]
 cmp byte ptr [r8], bpl
 jne 0x140011e02
 cmp bl, bpl
 jne 0x140011e02
 cmp sil, bpl
 je 0x140011dda
 mov ecx, 0xdb0
 call sub_140019e20
 lea rcx, [0x14003d610]
 mov rdx, rax
 call sub_140008e10
 lea rcx, [0x14003d580]
 jmp 0x140011dfa

0x140011dda:
 mov ecx, 0xdae
 call sub_140019e20
 lea rcx, [0x14003d610]
 mov rdx, rax
 call sub_140008e10
 lea rcx, [0x14003d520]

0x140011dfa:
 call sub_140008e10
 mov byte ptr [rdi], 0x1

0x140011e02:
 mov rcx, qword ptr [r12+0x1060]
 movabs rax, 0x7fffffff7fffffff
 mov edi, 0x1e
 lea rdx, [0x140000000]
 cmp rcx, rax
 jne 0x140011e43
 mov rcx, rbp

0x140011e28:
 movzx eax, word ptr [rcx+rdx+0x3d258]
 add rcx, 2
 mov word ptr [rsp+rcx+0xce], ax
 cmp ax, bp
 jne 0x140011e28
 jmp 0x140011e53

0x140011e43:
 lea rdx, [rsp+0xd0]
 mov r8, rdi
 call 0x14001f040

0x140011e53:
 mov rcx, qword ptr [r12+0x1058]
 lea rdx, [rsp+0x150]
 mov r8, rdi
 call 0x14001f040
 cmp dword ptr [r12+4], 3
 jne 0x140011ea1
 mov al, byte ptr [r12+0x1100]
 lea r8, [0x14003d510]
 lea rcx, [rsp+0x110]
 neg al
 mov rdx, rdi
 sbb r9d, r9d
 and r9d, 0x1b
 add r9d, 0x2e
 call sub_140019504
 jmp 0x140011ebe

0x140011ea1:
 mov edx, dword ptr [r12+0x1104]
 mov ecx, dword ptr [r12+0x1c]
 lea r8, [rsp+0x110]
 mov r9, rdi
 call 0x140011ac4

0x140011ebe:
 mov al, byte ptr [r12+0x1098]
 cmp al, bpl
 je 0x140011f26
 cmp byte ptr [r12+0x1099], bpl
 je 0x140011ef8
 mov rcx, rbp
 lea r14, [0x140000000]

0x140011edf:
 movzx eax, word ptr [rcx+r14+0x3d508]
 add rcx, 2
 mov word ptr [rsp+rcx+0x3e], ax
 cmp ax, bp
 jne 0x140011edf
 jmp 0x140011f51

0x140011ef8:
 cmp al, bpl
 je 0x140011f26
 mov rcx, rbp
 lea rbx, [0x140000000]

0x140011f07:
 movzx eax, word ptr [rcx+rbx+0x3d500]
 add rcx, 2
 mov word ptr [rsp+rcx+0x3e], ax
 cmp ax, bp
 jne 0x140011f07
 mov bl, byte ptr [rsp+0x2290]
 jmp 0x140011f86

0x140011f26:
 cmp byte ptr [r12+0x1099], bpl
 je 0x140011f58
 mov rcx, rbp
 lea r14, [0x140000000]

0x140011f3a:
 movzx eax, word ptr [rcx+r14+0x3d4f8]
 add rcx, 2
 mov word ptr [rsp+rcx+0x3e], ax
 cmp ax, bp
 jne 0x140011f3a

0x140011f51:
 lea r14, [r12+0x20]
 jmp 0x140011f86

0x140011f58:
 mov rdx, qword ptr [r12+0x1060]
 mov rcx, qword ptr [r12+0x1058]
 call 0x14001ed2c
 lea r8, [0x14003d4e8]
 lea rcx, [rsp+0x40]
 mov r9d, eax
 mov edx, 0xa
 call sub_140019504

0x140011f86:
 lea rdx, [rsp+0x60]
 lea rcx, [r12+0x1040]
 mov r9b, bl
 mov r8d, 0x32
 call 0x1400202dc
 xor edi, edi
 cmp bl, dil
 je 0x1400125fe
 mov ecx, 0xdb2
 call sub_140019e20
 lea rcx, [0x14003d4d0]
 mov r8, r14
 mov rdx, rax
 call sub_140008e10
 cmp dword ptr [r12+4], 2
 sete al
 xor ebx, ebx
 cmp al, bl
 jne 0x14001204d
 lea rsi, [r13+0x9dd0]
 lea rdi, [0x14003cf30]
 lea ecx, [rbx+4]
 repe cmpsd dword ptr [rsi], dword ptr [rdi]
 jne 0x140012046
 mov ecx, 0xdc4
 call sub_140019e20
 mov ecx, 0xdb4
 mov rdi, rax
 call sub_140019e20
 lea rsi, [0x14003d4b8]
 mov rdx, rax
 mov rcx, rsi
 mov r8, rdi
 call sub_140008e10
 lea rdx, [rsp+0x220]
 mov r8d, 0x800
 mov rcx, r13
 call 0x14000b6fc
 mov ecx, 0xdc6
 call sub_140019e20
 lea r8, [rsp+0x220]
 jmp 0x14001219d

0x140012046:
 mov ecx, 0xdde
 jmp 0x140012062

0x14001204d:
 mov al, byte ptr [r12+0x10f1]
 neg al
 sbb ecx, ecx
 and ecx, 2
 add ecx, 0xdb6

0x140012062:
 call sub_140019e20
 mov edx, dword ptr [r12+0x1108]
 mov rdi, rax
 cmp edx, ebx
 je 0x1400120b8
 sub edx, 0x1
 je 0x1400120ab
 sub edx, 0x1
 je 0x1400120a4
 sub edx, 0x1
 je 0x14001209d
 sub edx, 0x1
 je 0x140012096
 cmp edx, 0x1
 jne 0x1400120b8
 mov ecx, 0xdc2
 jmp 0x1400120b0

0x140012096:
 mov ecx, 0xdc0
 jmp 0x1400120b0

0x14001209d:
 mov ecx, 0xdbe
 jmp 0x1400120b0

0x1400120a4:
 mov ecx, 0xdbc
 jmp 0x1400120b0

0x1400120ab:
 mov ecx, 0xdba

0x1400120b0:
 call sub_140019e20
 mov rdi, rax

0x1400120b8:
 mov ecx, 0xdb4
 call sub_140019e20
 lea rsi, [0x14003d4b8]
 mov r8, rdi
 mov rdx, rax
 mov rcx, rsi
 call sub_140008e10
 cmp dword ptr [r12+0x1108], ebx
 je 0x1400121a8
 cmp r15d, 2
 jne 0x14001218b
 xor edi, edi
 mov ebx, 0x800
 cmp byte ptr [r13+0x8af3], dil
 je 0x140012118
 lea rdx, [0x14003d4ac]
 lea rcx, [rsp+0x220]
 mov r8, rbx
 call sub_14001ef90
 jmp 0x140012152

0x140012118:
 mov rax, qword ptr [r12+0x1058]
 mov edi, 0x7ff
 lea rdx, [rsp+0x220]
 cmp rax, rdi
 mov rcx, r13
 cmovb edi, eax
 mov rax, qword ptr [r13]
 movsxd r8, edi
 call qword ptr [rax+0x10]
 xor ecx, ecx
 mov eax, ecx
 cmp edi, ecx
 cmovg eax, edi
 cdqe 
 mov byte ptr [rsp+rax+0x220], cl

0x140012152:
 lea rdx, [rsp+0x1220]
 lea rcx, [rsp+0x220]
 mov r8, rbx
 call sub_14002110c
 mov ecx, 0xdc6
 call sub_140019e20
 lea r8, [rsp+0x1220]
 mov rcx, rsi
 mov rdx, rax
 call sub_140008e10
 xor ebx, ebx
 jmp 0x1400121a8

0x14001218b:
 mov ecx, 0xdc6
 call sub_140019e20
 lea r8, [r12+0x110c]

0x14001219d:
 mov rdx, rax
 mov rcx, rsi
 call sub_140008e10

0x1400121a8:
 cmp byte ptr [r12+0x10f1], bl
 jne 0x140012206
 mov ecx, 0xdc8
 call sub_140019e20
 lea r8, [rsp+0xd0]
 mov rcx, rsi
 mov rdx, rax
 call sub_140008e10
 mov ecx, 0xdca
 call sub_140019e20
 lea r8, [rsp+0x150]
 mov rcx, rsi
 mov rdx, rax
 call sub_140008e10
 mov ecx, 0xdcc
 call sub_140019e20
 lea r8, [rsp+0x40]
 mov rcx, rsi
 mov rdx, rax
 call sub_140008e10

0x140012206:
 cmp qword ptr [r12+0x1040], rbx
 je 0x14001222a
 mov ecx, 0xdce
 call sub_140019e20
 lea r8, [rsp+0x60]
 mov rcx, rsi
 mov rdx, rax
 call sub_140008e10

0x14001222a:
 lea rcx, [r12+0x1048]
 cmp qword ptr [rcx], rbx
 je 0x140012264
 lea rdx, [rsp+0x60]
 mov r9b, 0x1
 mov r8d, 0x32
 call 0x1400202dc
 mov ecx, 0xdd0
 call sub_140019e20
 lea r8, [rsp+0x60]
 mov rcx, rsi
 mov rdx, rax
 call sub_140008e10

0x140012264:
 lea rcx, [r12+0x1050]
 cmp qword ptr [rcx], rbx
 je 0x14001229e
 lea rdx, [rsp+0x60]
 mov r9b, 0x1
 mov r8d, 0x32
 call 0x1400202dc
 mov ecx, 0xdd2
 call sub_140019e20
 lea r8, [rsp+0x60]
 mov rcx, rsi
 mov rdx, rax
 call sub_140008e10

0x14001229e:
 mov ecx, 0xdd4
 call sub_140019e20
 lea r8, [rsp+0x110]
 mov rcx, rsi
 mov rdx, rax
 call sub_140008e10
 cmp dword ptr [r12+0x1070], 2
 jne 0x140012307
 cmp byte ptr [r12+0x10ca], bl
 je 0x1400122d9
 lea rdx, [0x14003d498]
 jmp 0x1400122f3

0x1400122d9:
 cmp byte ptr [r12+0x1099], bl
 lea rax, [0x14003d480]
 lea rdx, [0x14003d470]
 cmovne rdx, rax

0x1400122f3:
 mov r8d, dword ptr [r12+0x1074]
 lea rcx, [0x14003d450]
 call sub_140008e10

0x140012307:
 cmp dword ptr [r12+0x1070], 3
 jne 0x140012374
 xor r8d, r8d
 lea rcx, [r12+0x1074]
 lea r9, [rsp+0x190]
 lea edx, [r8+0x20]
 mov qword ptr [rsp+0x20], 0x41
 call sub_14001ee70
 cmp byte ptr [r12+0x10ca], bl
 je 0x14001234a
 lea rdx, [0x14003d438]
 jmp 0x140012364

0x14001234a:
 cmp byte ptr [r12+0x1099], bl
 lea rax, [0x14003d420]
 lea rdx, [0x14003d410]
 cmovne rdx, rax

0x140012364:
 lea r8, [rsp+0x190]
 mov rcx, rsi
 call sub_140008e10

0x140012374:
 lea rdi, [0x14003d408]
 cmp r15d, 3
 jne 0x1400123a2
 mov eax, dword ptr [r12+0x1104]
 cmp eax, 2
 je 0x1400123e2
 lea rcx, [0x14003d3f8]
 lea rdi, [0x14003d3e8]
 cmp eax, ebx
 cmove rdi, rcx

0x1400123a2:
 cmp r15d, 2
 jne 0x1400123c5
 cmp byte ptr [r12+0x18], 0xa
 jae 0x1400123c5
 movzx eax, byte ptr [r12+0x18]
 lea rdi, [0x140000000]
 mov rdi, qword ptr [rdi+rax*8+0x45240]

0x1400123c5:
 cmp word ptr [rdi], bx
 je 0x1400123e2
 mov ecx, 0xdda
 call sub_140019e20
 mov r8, rdi
 mov rcx, rsi
 mov rdx, rax
 call sub_140008e10

0x1400123e2:
 mov rax, qword ptr [r12+0x10f8]
 mov edx, 0x100000
 mov r13, rax
 cmp rax, rdx
 jb 0x1400123fd
 shr r13, 0x14
 jmp 0x140012401

0x1400123fd:
 shr r13, 0xa

0x140012401:
 movzx esi, byte ptr [r12+0x1a]
 movzx ebx, byte ptr [r12+0x19]
 cmp rax, rdx
 lea rcx, [0x14003d3e0]
 lea rax, [0x14003d3d8]
 lea rbp, [0x14003d3d0]
 cmovae rbp, rcx
 lea rdi, [0x14003d3c8]
 cmp r15d, 2
 mov ecx, 0xdd8
 cmove rdi, rax
 call sub_140019e20
 mov qword ptr [rsp+0x30], rbp
 lea rcx, [0x14003d380]
 mov r9d, ebx
 mov r8, rdi
 mov rdx, rax
 mov qword ptr [rsp+0x28], r13
 mov dword ptr [rsp+0x20], esi
 call sub_140008e10
 xor ebx, ebx
 cmp byte ptr [r12+0x10f0], bl
 jne 0x14001247b
 cmp byte ptr [r12+0x109b], bl
 je 0x1400124da

0x14001247b:
 mov ecx, 0xdd6
 call sub_140019e20
 lea rcx, [0x14003d360]
 mov rdx, rax
 call sub_140008e10
 cmp byte ptr [r12+0x10f0], bl
 je 0x1400124b7
 mov ecx, 0xda0
 call sub_140019e20
 lea rcx, [0x14003d350]
 mov rdx, rax
 call sub_140008e10

0x1400124b7:
 cmp byte ptr [r12+0x109b], bl
 je 0x1400124da
 mov ecx, 0xdaa
 call sub_140019e20
 lea rcx, [0x14003d350]
 mov rdx, rax
 call sub_140008e10

0x1400124da:
 cmp byte ptr [r12+0x10f3], bl
 je 0x140012510
 xor edx, edx
 mov rcx, r14
 call sub_140013870
 mov edi, eax
 cmp eax, ebx
 je 0x140012510
 mov ecx, 0xddc
 call sub_140019e20
 lea rcx, [0x14003d338]
 mov r8d, edi
 mov rdx, rax
 call sub_140008e10

0x140012510:
 cmp byte ptr [r12+0x210d], bl
 je 0x1400125ed
 lea rdx, [0x14003d320]
 lea rcx, [0x14003d360]
 call sub_140008e10
 cmp byte ptr [r12+0x2110], bl
 je 0x140012557
 lea rcx, [r12+0x2110]
 call sub_14001f130
 lea rcx, [0x14003d310]
 mov rdx, rax
 call sub_140008e10

0x140012557:
 cmp byte ptr [r12+0x2210], bl
 je 0x14001257d
 lea rcx, [r12+0x2210]
 call sub_14001f130
 lea rcx, [0x14003cba0]
 mov rdx, rax
 call sub_140008e10

0x14001257d:
 cmp byte ptr [r12+0x2110], bl
 jne 0x140012591
 cmp byte ptr [r12+0x2210], bl
 je 0x1400125b1

0x140012591:
 cmp byte ptr [r12+0x210e], bl
 jne 0x1400125a5
 cmp byte ptr [r12+0x210f], bl
 je 0x1400125b1

0x1400125a5:
 lea rcx, [0x14003d304]
 call sub_140008e10

0x1400125b1:
 cmp byte ptr [r12+0x210e], bl
 je 0x1400125cf
 mov edx, dword ptr [r12+0x2310]
 lea rcx, [0x14003d2f8]
 call sub_140008e10

0x1400125cf:
 cmp byte ptr [r12+0x210f], bl
 je 0x1400125ed
 mov edx, dword ptr [r12+0x2314]
 lea rcx, [0x14003d2f8]
 call sub_140008e10

0x1400125ed:
 lea rcx, [0x14003c730]
 call sub_140008e10
 jmp 0x1400126cc

0x1400125fe:
 mov al, byte ptr [r12+0x109b]
 lea r9, [rsp+0xd0]
 lea r8, [rsp+0x110]
 neg al
 lea rcx, [0x14003d2d8]
 sbb edx, edx
 and edx, 0xa
 add edx, 0x20
 call sub_140008e10
 cmp sil, dil
 je 0x14001264a
 lea r8, [rsp+0x40]
 lea rdx, [rsp+0x150]
 lea rcx, [0x14003d2c0]
 call sub_140008e10

0x14001264a:
 lea rdx, [rsp+0x60]
 lea rcx, [0x14003d2b0]
 call sub_140008e10
 cmp sil, dil
 je 0x1400126bd
 mov eax, dword ptr [r12+0x1070]
 cmp eax, 2
 jne 0x140012683
 mov edx, dword ptr [r12+0x1074]
 lea rcx, [0x14003d2a0]
 call sub_140008e10
 jmp 0x1400126bd

0x140012683:
 cmp eax, 3
 jne 0x1400126b1
 movzx r9d, byte ptr [r12+0x1093]
 movzx r8d, byte ptr [r12+0x1075]
 movzx edx, byte ptr [r12+0x1074]
 lea rcx, [0x14003d278]
 call sub_140008e10
 jmp 0x1400126bd

0x1400126b1:
 lea rcx, [0x14003d260]
 call sub_140008e10

0x1400126bd:
 lea rcx, [0x14003cba0]

0x1400126c4:
 mov rdx, r14
 call sub_140008e10

0x1400126cc:
 mov rcx, qword ptr [rsp+0x2220]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x2288]
 add rsp, 0x2230
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
 int3 

0x1400126f8:
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0xe670
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x50], -2
 mov qword ptr [rsp+0xe6a8], rbx
 mov qword ptr [rsp+0xe6b0], rbp
 mov qword ptr [rsp+0xe6b8], rsi
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0xe660], rax
 mov rsi, rcx
 xor ecx, ecx
 mov rbx, rcx
 mov qword ptr [rsp+0x38], rcx
 mov rbp, rcx
 mov qword ptr [rsp+0x48], rcx
 mov r13d, ecx
 mov dword ptr [rsp+0x34], ecx
 mov edi, ecx
 mov dword ptr [rsp+0x40], ecx
 movzx eax, word ptr [rsi+0x83cc]
 cmp ax, 0x54
 sete r14b
 cmp r14b, cl
 je 0x140012789
 cmp word ptr [rsi+0x83ce], 0x41
 jne 0x140012789
 mov byte ptr [rsp+0x32], 0x1
 jmp 0x14001278d

0x140012789:
 mov byte ptr [rsp+0x32], cl

0x14001278d:
 cmp ax, 0x42
 sete r15b
 cmp word ptr [rsi+0x83ca], 0x56
 sete r12b
 mov byte ptr [rsp+0x30], r12b
 mov r8d, 0x800
 lea rdx, [rsp+0xd660]
 mov rcx, rsi
 call 0x140006c0c
 xor ecx, ecx
 cmp al, cl
 je 0x140012e48

0x1400127c6:
 cmp byte ptr [rsi+0x5133], bpl
 je 0x1400127db
 lea rcx, [rsi+0x5030]
 call sub_14001d130

0x1400127db:
 mov rdx, rsi
 lea rcx, [rsp+0x60]
 call sub_1400020bc
 nop 
 mov byte ptr [rsp+0x7d], 0x1
 lea rdx, [rsp+0xd660]
 lea rcx, [rsp+0x60]
 call sub_14000f43c
 cmp al, bpl
 jne 0x140012814
 lea rcx, [rsp+0x60]
 call 0x140001360
 jmp 0x140012e1f

0x140012814:
 mov byte ptr [rsp+0x33], 0x1
 mov r12, rbp
 mov r13, rbp
 mov dl, 0x1
 lea rcx, [rsp+0x60]
 call 0x14000164c
 xor ecx, ecx
 cmp al, cl
 je 0x140012dd6

0x140012835:
 xor ebx, ebx
 mov byte ptr [rsp+0x31], bl
 cmp r15b, bl
 jne 0x140012a7f
 lea rcx, [rsp+0x60]
 call sub_140002024
 mov ecx, 0xd9c
 call sub_140019e20
 mov rdx, rax
 lea r8, [rsp+0x86]
 lea rcx, [0x14003d7b8]
 call sub_140008e10
 mov ecx, 0xd9e
 call sub_140019e20
 mov rdx, rax
 lea rcx, [0x14003cb88]
 call sub_140008e10
 lea rax, [0x14003d7a8]
 lea r8, [0x14003d798]
 cmp dword ptr [rsp+0xc550], 2
 cmove r8, rax
 lea rax, [0x14003d788]
 cmp dword ptr [rsp+0xc550], 0x1
 cmove r8, rax
 lea edi, [rbx+1]
 lea rdx, [0x14003d408]
 lea rcx, [0x14003d778]
 call sub_140008e10
 cmp byte ptr [rsp+0xc554], bl
 je 0x1400128f7
 lea edi, [rbx+2]
 mov ecx, 0xda0
 call sub_140019e20
 mov r8, rax
 lea rdx, [0x14003cbe8]
 lea rcx, [0x14003d778]
 call sub_140008e10

0x1400128f7:
 cmp qword ptr [rsp+0xc560], rbx
 jbe 0x140012937
 mov eax, edi
 inc edi
 cmp eax, ebx
 jbe 0x140012912
 lea rbx, [0x14003cbe8]
 jmp 0x140012919

0x140012912:
 lea rbx, [0x14003d408]

0x140012919:
 mov ecx, 0xda2
 call sub_140019e20
 mov r8, rax
 mov rdx, rbx
 lea rcx, [0x14003d778]
 call sub_140008e10
 xor ebx, ebx

0x140012937:
 cmp byte ptr [rsp+0xc555], bl
 je 0x1400129b4
 cmp dword ptr [rsp+0xc550], 3
 jne 0x14001297e
 mov eax, edi
 inc edi
 cmp eax, ebx
 jbe 0x14001295e
 lea rcx, [0x14003cbe8]
 call sub_140008e10

0x14001295e:
 mov ebx, dword ptr [rsp+0xc57c]
 mov ecx, 0xe84
 call sub_140019e20
 mov rcx, rax
 lea edx, [rbx+1]
 call sub_140008e10
 xor ebx, ebx
 jmp 0x1400129b4

0x14001297e:
 mov eax, edi
 inc edi
 cmp eax, ebx
 jbe 0x14001298f
 lea rbx, [0x14003cbe8]
 jmp 0x140012996

0x14001298f:
 lea rbx, [0x14003d408]

0x140012996:
 mov ecx, 0xda4
 call sub_140019e20
 mov r8, rax
 mov rdx, rbx
 lea rcx, [0x14003d778]
 call sub_140008e10
 xor ebx, ebx

0x1400129b4:
 cmp byte ptr [rsp+0xc55b], bl
 je 0x1400129f3
 mov eax, edi
 inc edi
 cmp eax, ebx
 jbe 0x1400129ce
 lea rbx, [0x14003cbe8]
 jmp 0x1400129d5

0x1400129ce:
 lea rbx, [0x14003d408]

0x1400129d5:
 mov ecx, 0xda6
 call sub_140019e20
 mov r8, rax
 mov rdx, rbx
 lea rcx, [0x14003d778]
 call sub_140008e10
 xor ebx, ebx

0x1400129f3:
 cmp byte ptr [rsp+0xc557], bl
 je 0x140012a32
 mov eax, edi
 inc edi
 cmp eax, ebx
 jbe 0x140012a0d
 lea rbx, [0x14003cbe8]
 jmp 0x140012a14

0x140012a0d:
 lea rbx, [0x14003d408]

0x140012a14:
 mov ecx, 0xda8
 call sub_140019e20
 mov r8, rax
 mov rdx, rbx
 lea rcx, [0x14003d778]
 call sub_140008e10
 xor ebx, ebx

0x140012a32:
 cmp byte ptr [rsp+0xc55c], bl
 je 0x140012a6f
 lea rbx, [0x14003cbe8]
 xor ecx, ecx
 cmp edi, ecx
 lea rax, [0x14003d408]
 cmovbe rbx, rax
 mov ecx, 0xdac
 call sub_140019e20
 mov r8, rax
 mov rdx, rbx
 lea rcx, [0x14003d778]
 call sub_140008e10
 xor ebx, ebx

0x140012a6f:
 lea rcx, [0x14003c730]
 call sub_140008e10
 mov edi, dword ptr [rsp+0x40]

0x140012a7f:
 mov word ptr [rsp+0xd5f0], bx
 lea rcx, [rsp+0x60]
 call sub_140004df0
 cmp rax, rbx
 jbe 0x140012c40

0x140012a9a:
 mov ecx, dword ptr [rsp+0x68b4]
 cmp ecx, 5
 je 0x140012b96
 sub ecx, 2
 je 0x140012b04
 cmp ecx, 0x1
 jne 0x140012b74
 cmp byte ptr [rsp+0x33], bl
 je 0x140012b74
 cmp r15b, bl
 jne 0x140012b74
 cmp r14b, bl
 je 0x140012b74
 cmp byte ptr [rsp+0x32], bl
 je 0x140012b74
 mov byte ptr [rsp+0x28], bl
 mov byte ptr [rsp+0x20], cl
 mov r9b, byte ptr [rsp+0x30]
 lea r8, [rsp+0x31]
 lea rdx, [rsp+0x9e10]
 lea rcx, [rsp+0x60]
 call 0x140011d44
 jmp 0x140012b74

0x140012b04:
 mov dword ptr [rsp+0x28], ebx
 mov qword ptr [rsp+0x20], rbx
 mov r9d, 5
 xor r8d, r8d
 lea rdx, [rsp+0x7ab8]
 mov rcx, rsi
 call 0x140006f78
 cmp eax, ebx
 setne al
 mov byte ptr [rsp+0x33], al
 cmp al, bl
 je 0x140012b74
 mov byte ptr [rsp+0x28], r15b
 mov byte ptr [rsp+0x20], r14b
 mov r9b, byte ptr [rsp+0x30]
 lea r8, [rsp+0x31]
 lea rdx, [rsp+0x7ab8]
 lea rcx, [rsp+0x60]
 call 0x140011d44
 cmp byte ptr [rsp+0x8b50], bl
 jne 0x140012b6c
 add r13, qword ptr [rsp+0x8b18]
 inc ebp

0x140012b6c:
 add r12, qword ptr [rsp+0x8b10]

0x140012b74:
 lea rcx, [rsp+0x60]
 call 0x1400010e0
 lea rcx, [rsp+0x60]
 call sub_140004df0
 cmp rax, rbx
 ja 0x140012a9a
 jmp 0x140012c40

0x140012b96:
 cmp byte ptr [rsp+0x9def], bl
 je 0x140012bde
 cmp dword ptr [rsp+0xc550], 2
 jne 0x140012bde
 mov ebx, dword ptr [rsp+0xc57c]
 inc ebx
 mov ecx, 0xda4
 call sub_140019e20
 mov r9, rax
 mov dword ptr [rsp+0x20], ebx
 lea r8, [0x14003d760]
 mov edx, 0x32
 lea rcx, [rsp+0xd5f0]
 call sub_140019504
 xor ebx, ebx

0x140012bde:
 cmp r14b, bl
 je 0x140012c40
 cmp byte ptr [rsp+0x32], bl
 je 0x140012c40
 mov ecx, 0xdde
 call sub_140019e20
 mov rdx, rax
 lea r8, [0x14003d758]
 lea rcx, [0x14003d4b8]
 call sub_140008e10
 cmp word ptr [rsp+0xd5f0], bx
 je 0x140012c34
 mov ecx, 0xdd6
 call sub_140019e20
 mov rdx, rax
 lea r8, [rsp+0xd5f0]
 lea rcx, [0x14003d4b8]
 call sub_140008e10

0x140012c34:
 lea rcx, [0x14003c730]
 call sub_140008e10

0x140012c40:
 cmp r15b, bl
 jne 0x140012d48
 cmp r14b, bl
 jne 0x140012d41
 cmp byte ptr [rsp+0x31], bl
 je 0x140012d28
 mov r8d, 0x14
 lea rdx, [rsp+0xd5a0]
 mov rcx, r13
 call 0x14001f040
 mov r8d, 0x14
 lea rdx, [rsp+0xd5c8]
 mov rcx, r12
 call 0x14001f040
 cmp byte ptr [rsp+0x30], bl
 je 0x140012cd7
 lea rcx, [0x14003d580]
 call sub_140008e10
 mov rdx, r13
 mov rcx, r12
 call 0x14001ed2c
 mov r9d, eax
 mov dword ptr [rsp+0x28], ebp
 lea rax, [rsp+0xd5f0]
 mov qword ptr [rsp+0x20], rax
 lea r8, [rsp+0xd5c8]
 lea rdx, [rsp+0xd5a0]
 lea rcx, [0x14003d718]
 call sub_140008e10
 jmp 0x140012d02

0x140012cd7:
 lea rcx, [0x14003d520]
 call sub_140008e10
 mov r9d, ebp
 lea r8, [rsp+0xd5f0]
 lea rdx, [rsp+0xd5a0]
 lea rcx, [0x14003d6f0]
 call sub_140008e10

0x140012d02:
 add edi, ebp
 mov dword ptr [rsp+0x40], edi
 add qword ptr [rsp+0x48], r13
 mov rbx, qword ptr [rsp+0x38]
 add rbx, r12
 mov qword ptr [rsp+0x38], rbx
 lea rcx, [0x14003c730]
 call sub_140008e10
 jmp 0x140012d4d

0x140012d28:
 mov ecx, 0xdf2
 call sub_140019e20
 mov rcx, rax
 call sub_140008e10
 mov rbx, qword ptr [rsp+0x38]
 jmp 0x140012d4d

0x140012d41:
 mov rbx, qword ptr [rsp+0x38]
 jmp 0x140012d4d

0x140012d48:
 mov rbx, qword ptr [rsp+0x38]

0x140012d4d:
 mov r13d, dword ptr [rsp+0x34]
 inc r13d
 mov dword ptr [rsp+0x34], r13d
 xor ebp, ebp
 cmp qword ptr [rsi+0x6170], rbp
 je 0x140012e15
 cmp byte ptr [rsp+0x8b51], bpl
 jne 0x140012d8f
 cmp dword ptr [rsp+0x68b4], 5
 jne 0x140012e15
 cmp byte ptr [rsp+0x9dec], bpl
 je 0x140012e15

0x140012d8f:
 movzx r9d, word ptr [rsi+0x83ca]
 xor r8d, r8d
 xor edx, edx
 lea rcx, [rsp+0x60]
 call 0x14002c4e8
 cmp al, bpl
 je 0x140012e15
 xor r8d, r8d
 xor edx, edx
 lea rcx, [rsp+0x60]
 call sub_140001178
 mov r12, rbp
 mov r13, rbp
 mov dl, 0x1
 lea rcx, [rsp+0x60]
 call 0x14000164c
 xor ecx, ecx
 cmp al, cl
 jne 0x140012835

0x140012dd6:
 cmp dword ptr [rsi+0xa640], 2
 jae 0x140012e0e
 xor ebp, ebp
 cmp r15b, bpl
 jne 0x140012e07
 mov ecx, 0xd0a
 call sub_140019e20
 mov rcx, rax
 lea rdx, [rsp+0x86]
 call sub_140008e10
 mov r13d, dword ptr [rsp+0x34]
 jmp 0x140012e15

0x140012e07:
 mov r13d, dword ptr [rsp+0x34]
 jmp 0x140012e15

0x140012e0e:
 mov r13d, dword ptr [rsp+0x34]
 xor ebp, ebp

0x140012e15:
 lea rcx, [rsp+0x60]
 call 0x140001360

0x140012e1f:
 mov r8d, 0x800
 lea rdx, [rsp+0xd660]
 mov rcx, rsi
 call 0x140006c0c
 cmp al, bpl
 jne 0x1400127c6
 mov rbp, qword ptr [rsp+0x48]
 mov r12b, byte ptr [rsp+0x30]

0x140012e48:
 xor eax, eax
 cmp byte ptr [rsi+0x5133], al
 je 0x140012e60
 lea rcx, [rsi+0x5030]
 call sub_14001d130
 xor eax, eax

0x140012e60:
 cmp r13d, 0x1
 jbe 0x140012f08
 cmp r15b, al
 jne 0x140012f08
 cmp r14b, al
 jne 0x140012f08
 mov esi, 0x14
 mov r8, rsi
 lea rdx, [rsp+0xd5a0]
 mov rcx, rbp
 call 0x14001f040
 mov r8, rsi
 lea rdx, [rsp+0xd5c8]
 mov rcx, rbx
 call 0x14001f040
 xor ecx, ecx
 cmp r12b, cl
 je 0x140012eea
 mov rdx, rbp
 mov rcx, rbx
 call 0x14001ed2c
 mov r9d, eax
 mov dword ptr [rsp+0x28], edi
 lea rax, [0x14003d408]
 mov qword ptr [rsp+0x20], rax
 lea r8, [rsp+0xd5c8]
 lea rdx, [rsp+0xd5a0]
 lea rcx, [0x14003d6b8]
 call sub_140008e10
 jmp 0x140012f08

0x140012eea:
 mov r9d, edi
 lea r8, [0x14003d408]
 lea rdx, [rsp+0xd5a0]
 lea rcx, [0x14003d698]
 call sub_140008e10

0x140012f08:
 mov rcx, qword ptr [rsp+0xe660]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0xe670]
 mov rbx, qword ptr [r11+0x38]
 mov rbp, qword ptr [r11+0x40]
 mov rsi, qword ptr [r11+0x48]
 mov rsp, r11
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 ret 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140012f3c
; --------------------------------------------------------------------------
sub_140012f3c   proc
 sub rsp, 0x28
 xor eax, eax
 cmp r8b, al
 je 0x140012f68
 sub rdx, rcx

0x140012f4a:
 movzx r8d, word ptr [rcx]
 cmp r8w, word ptr [rcx+rdx]
 jne 0x140012f61
 add rcx, 2
 test r8w, r8w
 jne 0x140012f4a
 jmp 0x140012f6d

0x140012f61:
 sbb eax, eax
 sbb eax, -1
 jmp 0x140012f6d

0x140012f68:
 call 0x14001ef88

0x140012f6d:
 add rsp, 0x28
 ret 
sub_140012f3c   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140012f74
; --------------------------------------------------------------------------
sub_140012f74   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x48]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x50]

 mov qword ptr [arg_2], rbx
 mov byte ptr [arg_3], r8b
 push rbp
 push rsi
 push rdi
 sub rsp, 0x20
 mov al, r8b
 mov rsi, rdx
 mov rbp, rcx
 xor ebx, ebx

0x140012f90:
 movzx edi, word ptr [rsi]
 cmp al, bl
 jne 0x140012fa0
 mov ecx, edi
 call 0x140021524
 mov edi, eax

0x140012fa0:
 movzx eax, word ptr [rbp]
 cmp byte ptr [arg_3], bl
 jne 0x140012fb1
 mov ecx, eax
 call 0x140021524

0x140012fb1:
 movzx ecx, ax
 add rbp, 2
 cmp ecx, ebx
 je 0x1400130c8
 mov edx, 0x2a
 cmp ecx, edx
 je 0x140013005
 cmp ecx, 0x3f
 je 0x140012ff6
 cmp ax, di
 je 0x140012ffb
 lea ecx, [rdx+4]
 cmp ax, cx
 jne 0x140012fef
 mov al, byte ptr [arg_3]
 cmp di, bx
 je 0x140012f90
 cmp di, 0x5c
 je 0x140012f90
 cmp di, cx
 je 0x140012fff

0x140012fef:
 xor al, al
 jmp 0x1400130ce

0x140012ff6:
 cmp di, bx
 je 0x140012fef

0x140012ffb:
 add rsi, 2

0x140012fff:
 mov al, byte ptr [arg_3]
 jmp 0x140012f90

0x140013005:
 cmp word ptr [rbp], bx
 jne 0x140013012

0x14001300b:
 mov al, 0x1
 jmp 0x1400130ce

0x140013012:
 mov ecx, 0x2e
 cmp word ptr [rbp], cx
 jne 0x1400130be
 lea rax, [rbp+2]
 mov qword ptr [arg_1], rax
 cmp word ptr [rax], dx
 jne 0x140013035
 cmp word ptr [rbp+4], bx
 je 0x14001300b

0x140013035:
 mov edx, ecx
 mov rcx, rsi
 call 0x14002cf84
 mov rdi, rax
 cmp word ptr [rbp+2], bx
 jne 0x14001305c
 cmp rax, rbx
 je 0x140013053
 cmp word ptr [rax+2], bx
 jne 0x140013058

0x140013053:
 mov ebx, 0x1

0x140013058:
 mov al, bl
 jmp 0x1400130ce

0x14001305c:
 cmp rax, rbx
 je 0x1400130be
 lea rdx, [0x14003d7c8]
 mov rcx, rbp
 mov rsi, rax
 call 0x14002d900
 cmp rax, rbx
 jne 0x1400130be
 lea rcx, [rdi+2]
 mov edx, 0x2e
 call 0x14002cf84
 cmp rax, rbx
 jne 0x1400130be
 mov r8b, byte ptr [arg_3]
 mov rcx, qword ptr [arg_1]
 lea rdx, [rdi+2]
 call sub_140012f3c
 cmp eax, ebx
 jmp 0x1400130cb

0x1400130a2:
 mov r8b, byte ptr [arg_3]
 mov rdx, rsi
 mov rcx, rbp
 call sub_140012f74
 add rsi, 2
 cmp al, bl
 jne 0x14001300b

0x1400130be:
 cmp word ptr [rsi], bx
 jne 0x1400130a2
 jmp 0x140012fef

0x1400130c8:
 cmp di, bx

0x1400130cb:
 sete al

0x1400130ce:
 mov rbx, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 pop rsi
 pop rbp
 ret 
sub_140012f74   endp
 
 int3 

0x1400130dc:
 mov qword ptr [rsp+0x20], rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 mov eax, 0x2030
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x2020], rax
 mov ebp, r8d
 movzx esi, r8w
 xor ebx, ebx
 shr ebp, 0x1f
 mov r13, rdx
 mov r12, rcx
 and bpl, 0x1
 cmp esi, ebx
 je 0x14001328c
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, r12
 repne scasd eax, dword ptr [rdi]
 not rcx
 dec rcx
 mov rdi, rcx
 cmp esi, 2
 je 0x14001317d
 cmp esi, 3
 je 0x14001317d
 mov r8, rcx
 mov rcx, r12
 cmp bpl, bl
 je 0x140013156
 call 0x14002ec6c
 jmp 0x14001315b

0x140013156:
 call sub_140021494

0x14001315b:
 cmp eax, ebx
 jne 0x14001317d
 cmp word ptr [r13+rdi*2], 0x5c
 je 0x140013179
 cmp word ptr [r13+rdi*2], 0x2f
 je 0x140013179
 cmp word ptr [r13+rdi*2], bx
 jne 0x14001317d

0x140013179:
 mov al, 0x1
 jmp 0x1400131fb

0x14001317d:
 cmp esi, 0x1
 jne 0x140013186

0x140013182:
 xor al, al
 jmp 0x1400131fb

0x140013186:
 mov edi, 0x800
 lea rdx, [rsp+0x20]
 mov rcx, r12
 mov r8, rdi
 call sub_140013e9c
 lea rdx, [rsp+0x1020]
 mov r8, rdi
 mov rcx, r13
 call sub_140013e9c
 cmp esi, 2
 je 0x1400131b8
 cmp esi, 3
 jne 0x1400131d1

0x1400131b8:
 lea rdx, [rsp+0x1020]
 lea rcx, [rsp+0x20]
 mov r8b, bpl
 call sub_140012f3c
 cmp eax, ebx
 jne 0x140013182

0x1400131d1:
 cmp esi, 4
 je 0x1400131df
 cmp esi, 5
 jne 0x14001328c

0x1400131df:
 lea rcx, [rsp+0x20]
 call sub_140013430
 cmp al, bl
 je 0x140013222
 mov rdx, r13

0x1400131f0:
 mov r8b, bpl
 mov rcx, r12
 call sub_140012f74

0x1400131fb:
 mov rcx, qword ptr [rsp+0x2020]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x2078]
 add rsp, 0x2030
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 

0x140013222:
 cmp esi, 4
 je 0x14001324a
 mov rcx, r12
 call sub_140013430
 cmp al, bl
 jne 0x14001324a
 lea rdx, [rsp+0x1020]
 lea rcx, [rsp+0x20]
 mov r8b, bpl
 call sub_140012f3c
 jmp 0x140013284

0x14001324a:
 cmp word ptr [rsp+0x20], bx
 je 0x14001328c
 or rcx, 0xffffffffffffffff
 xor eax, eax
 lea rdi, [rsp+0x20]
 repne scasd eax, dword ptr [rdi]
 lea rdx, [rsp+0x1020]
 not rcx
 lea r8, [rcx-1]
 lea rcx, [rsp+0x20]
 cmp bpl, bl
 je 0x14001327f
 call 0x14002ec6c
 jmp 0x140013284

0x14001327f:
 call sub_140021494

0x140013284:
 cmp eax, ebx
 jne 0x140013182

0x14001328c:
 mov rcx, r12
 call 0x140013c20
 mov rcx, r13
 mov r12, rax
 call 0x140013c20
 lea rcx, [0x14003d7d0]
 mov rdx, rax
 mov r8d, 6
 mov rdi, rax
 call sub_140021494
 cmp eax, ebx
 je 0x140013182
 mov rdx, rdi
 cmp esi, 2
 jne 0x1400131f0
 mov r8b, bpl
 mov rcx, r12
 call sub_140012f3c
 cmp eax, ebx
 sete al
 jmp 0x1400131fb
; --------------------------------------------------------------------------
; sub_1400132e0
; --------------------------------------------------------------------------
sub_1400132e0   proc
 push rbx
 sub rsp, 0x20
 xor edx, edx
 mov r8d, 0x83c0
 mov rbx, rcx
 call 0x14002d190
 xor eax, eax
 mov qword ptr [rbx+0x10], 0x2000000
 mov dword ptr [rbx+0x613c], eax
 mov dword ptr [rbx+0x6134], eax
 mov dword ptr [rbx+0x61a4], eax
 movabs rax, 0x7fffffff7fffffff
 mov dword ptr [rbx+0x6140], 3
 mov dword ptr [rbx+0x73ac], 4
 mov qword ptr [rbx+0x62d0], rax
 mov qword ptr [rbx+0x62d8], rax
 mov dword ptr [rbx+0x6144], 2
 call sub_14001f948
 mov dword ptr [rbx+0x2018], 0x1
 mov dword ptr [rbx+0x83b8], eax
 add rsp, 0x20
 pop rbx
 ret 
sub_1400132e0   endp
 
 int3 

0x140013364:
 push rbx
 sub rsp, 0x20
 xor edx, edx
 mov r8d, 0x83c0
 mov rbx, rcx
 call 0x14002d190
 mov rcx, qword ptr [rbx+0x6178]
 test rcx, rcx
 je 0x14001338b
 call sub_14002cfac

0x14001338b:
 lea rcx, [rbx+0x5030]
 add rsp, 0x20
 pop rbx
 jmp sub_14001d130
; --------------------------------------------------------------------------
; sub_14001339c
; --------------------------------------------------------------------------
sub_14001339c   proc \
 arg_1 : qword ; [rsp+0x8]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_1], rcx
 push rbx
 sub rsp, 0x30
 mov qword ptr [local_1], -2
 mov rbx, rcx
 add rcx, 0x5030
 call sub_14001d108
 nop 
 xor eax, eax
 mov qword ptr [rbx+0x6178], rax
 mov qword ptr [rbx+0x6180], rax
 mov qword ptr [rbx+0x6188], rax
 mov qword ptr [rbx+0x6190], rax
 mov qword ptr [rbx+0x62c0], rax
 mov qword ptr [rbx+0x62c8], rax
 mov rcx, rbx
 call sub_1400132e0
 nop 
 mov rax, rbx
 add rsp, 0x30
 pop rbx
 ret 
sub_14001339c   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140013400
; --------------------------------------------------------------------------
sub_140013400   proc \
 arg_1 : qword ; [rsp+0x8]

 mov qword ptr [arg_1], rdi
 mov rdx, rcx
 xor eax, eax
 or rcx, 0xffffffffffffffff
 mov rdi, rdx
 repne scasd eax, dword ptr [rdi]
 mov rdi, qword ptr [arg_1]
 not rcx
 sub rcx, 0x1
 lea rax, [rdx+rcx*2-2]
 cmovne rdx, rax
 mov rax, rdx
 ret 
sub_140013400   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140013430
; --------------------------------------------------------------------------
sub_140013430   proc
 push rbx
 sub rsp, 0x20
 xor ebx, ebx
 cmp rcx, rbx
 je 0x14001344f
 lea rdx, [0x14003d7c8]
 call 0x14002d900
 cmp rax, rbx
 setne bl

0x14001344f:
 mov al, bl
 add rsp, 0x20
 pop rbx
 ret 
sub_140013430   endp
 
 int3 

0x140013458:
 cmp ecx, 0x5c
 je 0x140013465
 cmp ecx, 0x2f
 je 0x140013465
 xor eax, eax
 ret 

0x140013465:
 mov eax, 0x1
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_14001346c
; --------------------------------------------------------------------------
sub_14001346c   proc
 cmp ecx, 0x3a
 sete al
 ret 
sub_14001346c   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140013474
; --------------------------------------------------------------------------
sub_140013474   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 movzx ecx, word ptr [rcx]
 call sub_14001ee30
 sub ax, 0x41
 cmp ax, 0x19
 ja 0x14001349d
 cmp word ptr [rbx+2], 0x3a
 jne 0x14001349d
 mov eax, 0x1
 jmp 0x14001349f

0x14001349d:
 xor eax, eax

0x14001349f:
 add rsp, 0x20
 pop rbx
 ret 
sub_140013474   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400134a8
; --------------------------------------------------------------------------
sub_1400134a8   proc \
 arg_1 : qword ; [rsp+0x8]

 mov qword ptr [arg_1], rdi
 mov r8, rcx
 or r9, 0xffffffffffffffff
 xor eax, eax
 mov rcx, r9
 mov rdi, r8
 repne scasd eax, dword ptr [rdi]
 not rcx
 sub rcx, 0x1
 je 0x1400134ee
 cmp word ptr [r8+rcx*2-2], 0x5c
 je 0x1400134ee
 lea rax, [rcx+1]
 cmp rax, rdx
 jae 0x1400134ee
 xor eax, eax
 mov rdi, r8
 mov rcx, r9
 repne scasd eax, dword ptr [rdi]
 mov eax, dword ptr [0x14003d808]
 mov dword ptr [rdi-2], eax

0x1400134ee:
 mov rdi, qword ptr [arg_1]
 ret 
sub_1400134a8   endp
 

0x1400134f4:
 push rbx
 push rbp
 push rsi
 push rdi
 mov eax, 0x1038
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1020], rax
 mov rbx, rdx
 mov rdx, rcx
 mov rsi, r8
 mov ebp, 0x800
 lea rcx, [rsp+0x20]
 mov rdi, r9
 mov r8, rbp
 call sub_14001efc0
 lea rcx, [rsp+0x20]
 mov rdx, rbp
 call sub_1400134a8
 lea rcx, [rsp+0x20]
 mov r8, rbp
 mov rdx, rbx
 call sub_14001effc
 lea rdx, [rsp+0x20]
 mov r8, rdi
 mov rcx, rsi
 call sub_14001efc0
 mov rcx, qword ptr [rsp+0x1020]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x1038
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_140013580
; --------------------------------------------------------------------------
sub_140013580   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x48]
 arg_3 : qword, ; [rsp+0x18] ; [rsp+0x50]
 arg_4 : qword ; [rsp+0x58]

 mov qword ptr [arg_2], rbx
 mov qword ptr [arg_3], rbp
 push rsi
 push rdi
 push r12
 sub rsp, 0x20
 mov rbx, rcx
 lea rcx, [arg_4]
 mov sil, r8b
 mov rbp, rdx
 call qword ptr [SHGetMalloc]
 xor r12d, r12d
 lea r8, [arg_1]
 lea edx, [r12+0x1a]
 xor ecx, ecx
 mov word ptr [rbx], r12w
 mov dil, r12b
 call qword ptr [SHGetSpecialFolderLocation]
 cmp eax, r12d
 jne 0x140013626
 mov rcx, qword ptr [arg_1]
 mov rdx, rbx
 call qword ptr [SHGetPathFromIDListW]
 cmp eax, r12d
 je 0x140013626
 cmp word ptr [rbx], r12w
 je 0x140013626
 mov rdx, rbp
 mov rcx, rbx
 call sub_1400134a8
 lea rdx, [0x14003d810]
 mov r8, rbp
 mov rcx, rbx
 call sub_14001effc
 mov rcx, rbx
 call sub_1400104f4
 mov dil, al
 cmp al, r12b
 jne 0x140013626
 cmp sil, r12b
 je 0x140013626
 xor r8d, r8d
 xor edx, edx
 mov rcx, rbx
 call 0x140010510
 cmp eax, r12d
 sete dil

0x140013626:
 mov rcx, qword ptr [arg_4]
 mov rdx, qword ptr [arg_1]
 mov rax, qword ptr [rcx]
 call qword ptr [rax+0x28]
 mov rbx, qword ptr [arg_2]
 mov rbp, qword ptr [arg_3]
 mov al, dil
 add rsp, 0x20
 pop r12
 pop rdi
 pop rsi
 ret 
sub_140013580   endp
 
; --------------------------------------------------------------------------
; sub_14001364c
; --------------------------------------------------------------------------
sub_14001364c   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 xor ebx, ebx
 mov rdi, rcx
 cmp word ptr [rcx], bx
 je 0x14001367b
 cmp word ptr [rcx+2], bx
 je 0x14001367b
 lea edx, [rbx+0x3a]
 add rcx, 4
 call 0x14002cf84
 cmp rax, rbx
 je 0x14001367b

0x140013677:
 xor al, al
 jmp 0x1400136c9

0x14001367b:
 movzx eax, word ptr [rdi]
 mov rcx, rdi
 cmp ax, bx
 je 0x1400136c7

0x140013686:
 cmp ax, 0x20
 jb 0x140013677
 je 0x140013694
 cmp ax, 0x2e
 jne 0x1400136a2

0x140013694:
 movzx eax, word ptr [rcx+2]
 cmp eax, 0x5c
 je 0x140013677
 cmp eax, 0x2f
 je 0x140013677

0x1400136a2:
 add rcx, 2
 mov ax, word ptr [rcx]
 cmp ax, bx
 jne 0x140013686
 lea rdx, [0x14003d820]
 mov rcx, rdi
 call 0x14002d900
 cmp rax, rbx
 jne 0x1400136c7
 mov ebx, 0x1

0x1400136c7:
 mov al, bl

0x1400136c9:
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_14001364c   endp
 
; --------------------------------------------------------------------------
; sub_1400136d4
; --------------------------------------------------------------------------
sub_1400136d4   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x48]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x50]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 push r12
 push r13
 sub rsp, 0x20
 xor r12d, r12d
 mov sil, dl
 mov rbx, rcx
 cmp word ptr [rcx], r12w
 je 0x14001375c
 lea rax, [0x14003d820]
 lea rbp, [0x14003d830]
 cmp dl, r12b
 mov rdi, r12
 lea r13d, [r12+0x5f]
 cmovne rbp, rax

0x140013718:
 movzx edx, word ptr [rbx]
 mov rcx, rbp
 call 0x14002cf84
 cmp rax, r12
 jne 0x140013733
 cmp sil, r12b
 je 0x140013737
 cmp word ptr [rbx], 0x20
 jae 0x140013737

0x140013733:
 mov word ptr [rbx], r13w

0x140013737:
 mov rax, rdi
 and rax, 0xfffffffffffffffe
 cmp rax, 2
 jle 0x14001374e
 cmp word ptr [rbx], 0x3a
 jne 0x14001374e
 mov word ptr [rbx], r13w

0x14001374e:
 add rbx, 2
 add rdi, 2
 cmp word ptr [rbx], r12w
 jne 0x140013718

0x14001375c:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop r13
 pop r12
 pop rdi
 ret 
sub_1400136d4   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140013778
; --------------------------------------------------------------------------
sub_140013778   proc
 lea r10, [r8-1]
 xor r9d, r9d
 test r10, r10
 je 0x1400137ae
 mov r8, rdx
 sub r8, rcx

0x14001378a:
 cmp byte ptr [rcx], 0x0
 je 0x1400137ae
 cmp byte ptr [rcx], 0x2f
 movzx eax, byte ptr [rcx]
 mov r11d, 0x5c
 cmove eax, r11d
 inc r9
 mov byte ptr [r8+rcx], al
 inc rcx
 cmp r9, r10
 jb 0x14001378a

0x1400137ae:
 mov byte ptr [r9+rdx], 0x0
 ret 
sub_140013778   endp
 
; --------------------------------------------------------------------------
; sub_1400137b4
; --------------------------------------------------------------------------
sub_1400137b4   proc
 xor r11d, r11d
 lea r10, [r8-1]
 mov r9, rdx
 mov rax, r11
 cmp r10, r11
 jbe 0x1400137f1
 mov r8, rdx
 sub r8, rcx

0x1400137cc:
 cmp word ptr [rcx], r11w
 je 0x1400137f1
 cmp word ptr [rcx], 0x2f
 mov edx, 0x5c
 je 0x1400137e0
 movzx edx, word ptr [rcx]

0x1400137e0:
 inc rax
 mov word ptr [r8+rcx], dx
 add rcx, 2
 cmp rax, r10
 jb 0x1400137cc

0x1400137f1:
 mov word ptr [r9+rax*2], r11w
 ret 
sub_1400137b4   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_1400137f8
; --------------------------------------------------------------------------
sub_1400137f8   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov edi, 0x5c
 mov rbx, rcx
 cmp word ptr [rcx], di
 jne 0x140013815
 cmp word ptr [rcx+2], di
 je 0x14001382d

0x140013815:
 call sub_140013474
 xor ecx, ecx
 cmp al, cl
 je 0x140013832
 movzx eax, word ptr [rbx+4]
 cmp eax, edi
 je 0x14001382d
 cmp eax, 0x2f
 jne 0x140013832

0x14001382d:
 mov ecx, 0x1

0x140013832:
 mov al, cl
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_1400137f8   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140013840
; --------------------------------------------------------------------------
sub_140013840   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 call sub_1400137f8
 xor edx, edx
 cmp al, dl
 jne 0x140013861
 movzx eax, word ptr [rbx]
 cmp eax, 0x5c
 je 0x140013861
 cmp eax, 0x2f
 jne 0x140013866

0x140013861:
 mov edx, 0x1

0x140013866:
 mov al, dl
 add rsp, 0x20
 pop rbx
 ret 
sub_140013840   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140013870
; --------------------------------------------------------------------------
sub_140013870   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x38]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x40]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 sub rsp, 0x20
 xor ebp, ebp
 mov sil, dl
 lea edx, [rbp+0x3b]
 mov ebx, ebp
 call sub_14002ee08
 mov rdi, rax
 cmp rax, rbp
 je 0x1400138ae
 lea rcx, [rax+2]
 call 0x1400215ec
 mov ebx, eax
 cmp sil, bpl
 je 0x1400138ae
 mov word ptr [rdi], bp

0x1400138ae:
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov eax, ebx
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_140013870   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400138c8
; --------------------------------------------------------------------------
sub_1400138c8   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 xor esi, esi
 mov rdi, r9
 mov rbx, r8
 cmp rdx, rsi
 je 0x1400138fb
 cmp word ptr [rdx], si
 je 0x1400138fb
 cmp rbx, rdx
 je 0x140013911
 mov r8, r9
 mov rcx, rbx
 call sub_14002dc5c
 jmp 0x140013911

0x1400138fb:
 cmp rcx, rsi
 je 0x14001390d
 mov r8, r9
 mov rdx, rbx
 call sub_14002110c
 jmp 0x140013911

0x14001390d:
 mov word ptr [r8], si

0x140013911:
 cmp rdi, rsi
 jbe 0x14001391b
 mov word ptr [rbx+rdi*2-2], si

0x14001391b:
 mov rsi, qword ptr [arg_2]
 mov rax, rbx
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_1400138c8   endp
 
 int3 
 int3 

0x140013930:
 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 mov eax, 0x1030
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1020], rax
 xor r14d, r14d
 mov r12, r8
 mov rsi, rdx
 mov rbx, rcx
 cmp word ptr [rcx], r14w
 je 0x140013b66
 call sub_140013474
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, rbx
 repne scasd eax, dword ptr [rdi]
 not rcx
 lea r13, [rcx-1]
 mov rcx, rbx
 call sub_1400137f8
 cmp al, r14b
 je 0x140013a53
 mov rcx, rbx
 call sub_140013474
 cmp al, r14b
 je 0x1400139e2
 lea rax, [r13+4]
 cmp r12, rax
 jbe 0x140013b66
 lea r8d, [r14+4]
 lea rdx, [0x14003d840]
 mov rcx, rsi
 call sub_14002dc5c
 sub rsi, rbx

0x1400139c9:
 movzx ecx, word ptr [rbx]
 add rbx, 2
 mov word ptr [rsi+rbx+6], cx
 cmp cx, r14w
 jne 0x1400139c9

0x1400139db:
 mov al, 0x1
 jmp 0x140013b68

0x1400139e2:
 mov ebp, 0x5c
 cmp word ptr [rbx], bp
 jne 0x140013b66
 add rbx, 2
 cmp word ptr [rbx], bp
 jne 0x140013b66
 lea rax, [r13+6]
 cmp r12, rax
 jbe 0x140013b66
 lea r8d, [rbp-0x58]
 lea rdx, [0x14003d840]
 mov rcx, rsi
 call sub_14002dc5c
 lea rdx, [0x14003d838]
 mov rcx, rsi
 sub rcx, rdx

0x140013a2a:
 movzx eax, word ptr [rdx]
 add rdx, 2
 mov word ptr [rcx+rdx+6], ax
 cmp ax, r14w
 jne 0x140013a2a
 sub rsi, rbx

0x140013a3f:
 movzx eax, word ptr [rbx]
 add rbx, 2
 mov word ptr [rsi+rbx+0xc], ax
 cmp ax, r14w
 jne 0x140013a3f
 jmp 0x1400139db

0x140013a53:
 mov edi, 0x7ff
 lea rdx, [rsp+0x20]
 mov ecx, edi
 call qword ptr [GetCurrentDirectoryW]
 cmp eax, r14d
 je 0x140013b66
 cmp eax, edi
 ja 0x140013b66
 movzx eax, word ptr [rbx]
 mov ebp, 0x5c
 cmp eax, ebp
 je 0x140013b1a
 cmp eax, 0x2f
 je 0x140013b1a
 lea edx, [rdi+1]
 lea rcx, [rsp+0x20]
 call sub_1400134a8
 xor eax, eax
 or rcx, 0xffffffffffffffff
 lea rdi, [rsp+0x20]
 repne scasd eax, dword ptr [rdi]
 not rcx
 lea rax, [rcx+r13+3]
 cmp r12, rax
 jbe 0x140013b66
 lea r8d, [rbp-0x58]
 lea rdx, [0x14003d840]
 mov rcx, rsi
 call sub_14002dc5c
 lea rax, [rsp+0x20]
 mov rcx, rsi
 sub rcx, rax
 lea rdx, [rsp+0x20]

0x140013ade:
 movzx eax, word ptr [rdx]
 add rdx, 2
 mov word ptr [rcx+rdx+6], ax
 cmp ax, r14w
 jne 0x140013ade
 cmp word ptr [rbx], 0x2e
 jne 0x140013b07
 movzx eax, word ptr [rbx+2]
 cmp eax, ebp
 je 0x140013b03
 cmp eax, 0x2f
 jne 0x140013b07

0x140013b03:
 add rbx, 4

0x140013b07:
 mov r8, r12
 mov rdx, rbx
 mov rcx, rsi
 call sub_14001effc
 jmp 0x1400139db

0x140013b1a:
 lea rax, [r13+6]
 cmp r12, rax
 jbe 0x140013b66
 lea rdx, [0x14003d840]
 mov r8d, 4
 mov rcx, rsi
 call sub_14002dc5c
 lea rcx, [rsi+0x8]
 lea rdx, [rsp+0x20]
 mov r8d, 2
 call sub_14002dc5c
 sub rsi, rbx

0x140013b4f:
 movzx eax, word ptr [rbx]
 add rbx, 2
 mov word ptr [rsi+rbx+0xa], ax
 cmp ax, r14w
 jne 0x140013b4f
 jmp 0x1400139db

0x140013b66:
 xor al, al

0x140013b68:
 mov rcx, qword ptr [rsp+0x1020]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x1030
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
 int3 
 int3 

0x140013b8c:
 mov qword ptr [rsp+0x18], rbx
 push rdi
 mov eax, 0x1040
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1030], rax
 mov rdi, rdx
 mov rbx, rcx
 call sub_140011a38
 cmp eax, 0x600
 jb 0x140013bff
 or r8d, 0xffffffff
 lea r9, [rsp+0x30]
 mov rdx, rbx
 lea ecx, [r8+0x21]
 mov dword ptr [rsp+0x20], 0x800
 call qword ptr [FoldStringW]
 xor ecx, ecx
 cmp eax, ecx
 je 0x140013bff
 mov word ptr [rsp+0x102e], cx
 lea rdx, [rsp+0x30]
 mov r8, rdi
 mov rcx, rbx
 call sub_14001efc0

0x140013bff:
 mov rcx, qword ptr [rsp+0x1030]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x1060]
 add rsp, 0x1040
 pop rdi
 ret 

0x140013c20:
 mov qword ptr [rsp+0x8], rdi
 mov rdx, rcx
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, rdx
 xor r8d, r8d
 repne scasd eax, dword ptr [rdi]
 not rcx
 sub ecx, 2
 movsxd rax, ecx
 cmp rax, r8
 jl 0x140013c5b

0x140013c45:
 movzx edi, word ptr [rdx+rax*2]
 cmp edi, 0x5c
 je 0x140013c75
 cmp edi, 0x2f
 je 0x140013c75
 dec ecx
 sub rax, 0x1
 jns 0x140013c45

0x140013c5b:
 cmp word ptr [rdx], r8w
 je 0x140013c6c
 cmp word ptr [rdx+2], 0x3a
 jne 0x140013c6c
 add rdx, 4

0x140013c6c:
 mov rax, rdx

0x140013c6f:
 mov rdi, qword ptr [rsp+0x8]
 ret 

0x140013c75:
 lea eax, [rcx+1]
 movsxd rcx, eax
 lea rax, [rdx+rcx*2]
 jmp 0x140013c6f
 int3 
 int3 
 int3 

0x140013c84:
 mov qword ptr [rsp+0x18], rbx
 mov qword ptr [rsp+0x20], rbp
 push rsi
 push rdi
 push r13
 mov eax, 0x1030
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1020], rax
 xor ebp, ebp
 mov rbx, rcx
 movzx ecx, word ptr [rcx]
 mov rsi, rdx
 lea r13d, [rbp+0x5c]
 cmp cx, bp
 je 0x140013d02
 lea rax, [rbx+4]

0x140013cc9:
 movzx ecx, cx
 cmp ecx, r13d
 je 0x140013cd6
 cmp ecx, 0x2f
 jne 0x140013cf5

0x140013cd6:
 cmp word ptr [rax-2], 0x2e
 jne 0x140013cf5
 cmp word ptr [rax], 0x2e
 jne 0x140013cf5
 movzx ecx, word ptr [rax+2]
 cmp ecx, r13d
 je 0x140013cf1
 cmp ecx, 0x2f
 jne 0x140013cf5

0x140013cf1:
 lea rbx, [rax+4]

0x140013cf5:
 mov cx, word ptr [rax-2]
 add rax, 2
 cmp cx, bp
 jne 0x140013cc9

0x140013d02:
 cmp word ptr [rbx], bp
 je 0x140013d8b

0x140013d0b:
 mov rdi, rbx
 cmp word ptr [rbx], bp
 je 0x140013d1e
 cmp word ptr [rbx+2], 0x3a
 jne 0x140013d1e
 lea rdi, [rbx+4]

0x140013d1e:
 cmp word ptr [rdi], r13w
 jne 0x140013d51
 cmp word ptr [rdi+2], r13w
 jne 0x140013d51
 lea rcx, [rdi+4]
 mov edx, r13d
 call 0x14002cf84
 cmp rax, rbp
 je 0x140013d51
 lea rcx, [rax+2]
 mov edx, r13d
 call 0x14002cf84
 cmp rax, rbp
 je 0x140013d51
 lea rdi, [rax+2]

0x140013d51:
 movzx eax, word ptr [rdi]
 mov rcx, rdi
 jmp 0x140013d79

0x140013d59:
 movzx edx, ax
 cmp edx, r13d
 je 0x140013d6e
 cmp edx, 0x2f
 je 0x140013d6e
 cmp ax, 0x2e
 jne 0x140013d7e
 jmp 0x140013d72

0x140013d6e:
 lea rdi, [rcx+2]

0x140013d72:
 add rcx, 2
 mov ax, word ptr [rcx]

0x140013d79:
 cmp ax, bp
 jne 0x140013d59

0x140013d7e:
 cmp rdi, rbx
 je 0x140013d8b
 mov rbx, rdi
 cmp word ptr [rdi], bp
 jne 0x140013d0b

0x140013d8b:
 cmp word ptr [rbx], 0x2e
 jne 0x140013da3
 cmp word ptr [rbx+2], 0x2e
 jne 0x140013da3
 lea rax, [rbx+4]
 cmp word ptr [rax], bp
 cmove rbx, rax

0x140013da3:
 cmp rsi, rbp
 je 0x140013dda
 lea rcx, [rsp+0x20]
 mov r8d, 0x800
 mov rdx, rbx
 call sub_14001efc0
 lea rax, [rsp+0x20]
 lea r11, [rsp+0x20]
 sub rsi, rax

0x140013dc8:
 movzx ecx, word ptr [r11]
 mov word ptr [rsi+r11], cx
 add r11, 2
 cmp cx, bp
 jne 0x140013dc8

0x140013dda:
 mov rax, rbx
 mov rcx, qword ptr [rsp+0x1020]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x1030]
 mov rbx, qword ptr [r11+0x30]
 mov rbp, qword ptr [r11+0x38]
 mov rsp, r11
 pop r13
 pop rdi
 pop rsi
 ret 
 int3 
 int3 
 int3 

0x140013e08:
 push rbx
 sub rsp, 0x20
 mov r11, r8
 mov rbx, rdx
 mov r10, rcx
 call 0x140013c20
 mov rdx, rbx
 mov r9, rax
 mov rcx, rax
 sub r9, r10
 sar r9, 0x1
 sub r11, r9
 mov r8, r11
 add rsp, 0x20
 pop rbx
 jmp sub_14001efc0
 int3 
; --------------------------------------------------------------------------
; sub_140013e3c
; --------------------------------------------------------------------------
sub_140013e3c   proc
 sub rsp, 0x28
 xor eax, eax
 cmp rcx, rax
 je 0x140013e59
 call 0x140013c20
 mov edx, 0x2e
 mov rcx, rax
 call sub_14002ee08

0x140013e59:
 add rsp, 0x28
 ret 
sub_140013e3c   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140013e60
; --------------------------------------------------------------------------
sub_140013e60   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rdi, rdx
 call sub_140013e3c
 xor ebx, ebx
 cmp rax, rbx
 je 0x140013e8e
 lea rcx, [rax+2]
 mov rdx, rdi
 call sub_140021464
 cmp eax, ebx
 jne 0x140013e8e
 mov ebx, 0x1

0x140013e8e:
 mov al, bl
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_140013e60   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140013e9c
; --------------------------------------------------------------------------
sub_140013e9c   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 xor esi, esi
 mov rdi, rdx
 mov r9, rcx
 cmp r8, rsi
 je 0x140013eef
 lea rbx, [r8-1]
 call 0x140013c20
 sub rax, r9
 sar rax, 0x1
 cmp rbx, rax
 jb 0x140013edd
 mov rcx, r9
 call 0x140013c20
 mov rbx, rax
 sub rbx, r9
 sar rbx, 0x1

0x140013edd:
 mov r8, rbx
 mov rdx, r9
 mov rcx, rdi
 call sub_14002dc5c
 mov word ptr [rdi+rbx*2], si

0x140013eef:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_140013e9c   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140013f00
; --------------------------------------------------------------------------
sub_140013f00   proc
 sub rsp, 0x28
 mov r9, rcx
 call 0x140013c20
 lea rdx, [r9+4]
 cmp rax, rdx
 jb 0x140013f2a
 cmp word ptr [r9+2], 0x3a
 jne 0x140013f26
 lea rcx, [r9+0x8]
 cmp rax, rcx
 jb 0x140013f2a

0x140013f26:
 sub rax, 2

0x140013f2a:
 xor ecx, ecx
 mov word ptr [rax], cx
 add rsp, 0x28
 ret 
sub_140013f00   endp
 
; --------------------------------------------------------------------------
; sub_140013f34
; --------------------------------------------------------------------------
sub_140013f34   proc \
 arg_1 : qword, ; [rsp+0x60]
 arg_2[0x10] : byte, ; [rsp+0x10] ; [rsp+0x68]
 arg_3[0x10] : byte ; [rsp+0x78]

 local local_1: qword ; [rsp+0x20]
 local local_2: qword ; [rsp+0x28]
 local local_3: qword ; [rsp+0x30]

 mov qword ptr [arg_2], rbx
 push rbp
 push rsi
 push rdi
 sub rsp, 0x40
 xor ebp, ebp
 mov rdi, rdx
 lea rax, [local_3]
 mov sil, r8b
 mov rbx, rcx
 mov word ptr [rcx], bp
 lea r9d, [rbp+1]
 lea rdx, [0x14003d860]
 xor r8d, r8d
 mov rcx, -0x7fffffff
 mov qword ptr [local_1], rax
 call qword ptr [RegOpenKeyExW]
 cmp eax, ebp
 jne 0x140013faf
 mov rcx, qword ptr [local_3]
 lea rax, [arg_1]
 lea r9, [arg_3]
 mov qword ptr [local_2], rax
 lea rdx, [0x14003d850]
 xor r8d, r8d
 mov qword ptr [local_1], rbx
 mov dword ptr [arg_1], edi
 call qword ptr [RegQueryValueExW]
 mov rcx, qword ptr [local_3]
 call qword ptr [RegCloseKey]

0x140013faf:
 cmp word ptr [rbx], bp
 je 0x140013fc1
 mov rcx, rbx
 call sub_1400104f4
 cmp al, bpl
 jne 0x140013fea

0x140013fc1:
 mov r8b, sil
 mov rdx, rdi
 mov rcx, rbx
 call sub_140013580
 cmp al, bpl
 jne 0x140013fea
 mov r8d, edi
 mov rdx, rbx
 xor ecx, ecx
 call qword ptr [GetModuleFileNameW]
 mov rcx, rbx
 call sub_140013f00

0x140013fea:
 mov rbx, qword ptr [arg_2]
 add rsp, 0x40
 pop rdi
 pop rsi
 pop rbp
 ret 
sub_140013f34   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140013ff8
; --------------------------------------------------------------------------
sub_140013ff8   proc
 push rbx
 sub rsp, 0x20
 mov rax, r8
 mov rbx, rdx
 cmp ecx, 0x1
 jbe 0x14001400d
 xor al, al
 jmp 0x140014033

0x14001400d:
 test ecx, ecx
 jne 0x140014021
 mov r8b, r9b
 mov rdx, rax
 mov rcx, rbx
 call sub_140013f34
 jmp 0x140014031

0x140014021:
 xor ecx, ecx
 call qword ptr [GetModuleFileNameW]
 mov rcx, rbx
 call sub_140013f00

0x140014031:
 mov al, 0x1

0x140014033:
 add rsp, 0x20
 pop rbx
 ret 
sub_140013ff8   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001403c
; --------------------------------------------------------------------------
sub_14001403c   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x48]
 arg_3[0x10] : byte, ; [rsp+0x18] ; [rsp+0x50]
 arg_4 : qword ; [rsp+0x60]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 push r12
 push r13
 sub rsp, 0x20
 xor r13d, r13d
 mov r12, rcx
 mov bpl, r9b
 mov rdi, r8
 mov rbx, rdx
 xor ecx, ecx
 mov word ptr [rdx], r13w
 mov esi, r13d
 jmp 0x1400140a3

0x14001406e:
 mov rdx, rdi
 mov rcx, rbx
 call sub_1400134a8
 mov r8, rdi
 mov rdx, r12
 mov rcx, rbx
 call sub_14001effc
 cmp bpl, r13b
 je 0x1400140b2
 mov rcx, rbx
 call 0x140010a00
 cmp al, r13b
 jne 0x1400140b2
 inc esi
 mov r8, rdi
 mov rdx, rbx
 mov ecx, esi

0x1400140a3:
 mov r9b, byte ptr [arg_4]
 call sub_140013ff8
 cmp al, r13b
 jne 0x14001406e

0x1400140b2:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop r13
 pop r12
 pop rdi
 ret 
sub_14001403c   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_1400140cc
; --------------------------------------------------------------------------
sub_1400140cc   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x38]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x40]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 sub rsp, 0x20
 mov rsi, rcx
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, rsi
 repne scasd eax, dword ptr [rdi]
 not rcx
 lea rbx, [rsi+rcx*2-4]
 jmp 0x140014102

0x1400140f9:
 cmp rbx, rsi
 jbe 0x14001410e
 sub rbx, 2

0x140014102:
 movzx ecx, word ptr [rbx]
 call sub_14001ee50
 test al, al
 je 0x1400140f9

0x14001410e:
 movzx ecx, word ptr [rbx]
 mov rdi, rbx
 jmp 0x140014122

0x140014116:
 cmp rdi, rsi
 jbe 0x14001416f
 sub rdi, 2
 movzx ecx, word ptr [rdi]

0x140014122:
 call sub_14001ee50
 test al, al
 jne 0x140014116
 cmp rdi, rsi
 jbe 0x14001416f
 mov ebp, 0x2e

0x140014135:
 cmp word ptr [rdi], bp
 je 0x14001416f
 movzx ecx, word ptr [rdi]
 call sub_14001ee50
 test al, al
 jne 0x140014151
 sub rdi, 2
 cmp rdi, rsi
 ja 0x140014135
 jmp 0x14001416f

0x140014151:
 mov rcx, rsi
 call 0x140013c20
 mov edx, ebp
 mov rcx, rax
 call 0x14002cf84
 test rax, rax
 je 0x14001416f
 cmp rax, rdi
 cmovb rbx, rdi

0x14001416f:
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rax, rbx
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_1400140cc   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140014188
; --------------------------------------------------------------------------
sub_140014188   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x50]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x58]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x60]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x20
 mov r13b, r8b
 mov r12d, edx
 mov rbp, rcx
 call sub_140013e3c
 xor r14d, r14d
 mov r15d, 0x1
 mov rsi, rax
 cmp rax, r14
 jne 0x1400141e2
 lea rdx, [0x14003ca88]
 mov r8, r12
 mov rcx, rbp
 call sub_14001effc
 mov rcx, rbp
 call sub_140013e3c
 mov rsi, rax
 jmp 0x14001424b

0x1400141e2:
 lea rbx, [rax+2]
 cmp word ptr [rbx], r14w
 jne 0x140014208
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, rbp
 repne scasd eax, dword ptr [rdi]
 lea edx, [r12-3]
 not rcx
 sub rcx, r15
 cmp rcx, rdx
 jb 0x140014230

0x140014208:
 lea rdx, [0x14003d8a0]
 mov rcx, rbx
 call sub_140021464
 cmp eax, r14d
 je 0x140014230
 lea rdx, [0x14003d898]
 mov rcx, rbx
 call sub_140021464
 cmp eax, r14d
 jne 0x14001424b

0x140014230:
 lea rcx, [0x14003d0b0]
 sub rbx, rcx

0x14001423a:
 movzx eax, word ptr [rcx]
 mov word ptr [rbx+rcx], ax
 add rcx, 2
 cmp ax, r14w
 jne 0x14001423a

0x14001424b:
 cmp r13b, r14b
 jne 0x1400142ca
 mov rcx, rbp
 call sub_1400140cc
 mov rbx, rax
 add word ptr [rax], r15w
 cmp word ptr [rax], 0x3a
 jne 0x14001433c
 mov esi, 0x30

0x14001426e:
 mov word ptr [rbx], si
 sub rbx, 2
 cmp rbx, rbp
 jb 0x140014296
 movzx ecx, word ptr [rbx]
 call sub_14001ee50
 cmp al, r14b
 je 0x140014296
 add word ptr [rbx], r15w
 cmp word ptr [rbx], 0x3a
 je 0x14001426e
 jmp 0x14001433c

0x140014296:
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, rbp
 repne scasd eax, dword ptr [rdi]
 not rcx
 sub rcx, r15
 lea rdx, [rbp+rcx*2]
 jmp 0x1400142ba

0x1400142af:
 movzx eax, word ptr [rdx]
 sub rdx, 2
 mov word ptr [rdx+4], ax

0x1400142ba:
 cmp rdx, rbx
 jne 0x1400142af
 mov eax, 0x31
 mov word ptr [rbx+2], ax
 jmp 0x14001433c

0x1400142ca:
 lea rbx, [rsi+4]
 movzx ecx, word ptr [rbx]
 call sub_14001ee50
 cmp al, r14b
 je 0x140014321
 lea rdi, [rsi+6]
 movzx ecx, word ptr [rdi]
 call sub_14001ee50
 cmp al, r14b
 je 0x140014321
 add word ptr [rdi], r15w
 cmp word ptr [rdi], 0x3a
 jne 0x14001433c
 mov esi, 0x30

0x1400142fb:
 lea rax, [rdi-2]
 cmp word ptr [rax], 0x2e
 je 0x140014317
 mov word ptr [rdi], si
 add word ptr [rax], r15w
 cmp word ptr [rax], 0x3a
 mov rdi, rax
 je 0x1400142fb
 jmp 0x14001433c

0x140014317:
 mov eax, 0x41
 mov word ptr [rdi], ax
 jmp 0x14001433c

0x140014321:
 lea rcx, [0x14003d88c]
 sub rbx, rcx

0x14001432b:
 movzx eax, word ptr [rcx]
 mov word ptr [rbx+rcx], ax
 add rcx, 2
 cmp ax, r14w
 jne 0x14001432b

0x14001433c:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 ret 
sub_140014188   endp
 
 int3 
 int3 
 int3 

0x14001435c:
 mov qword ptr [rsp+0x20], rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 mov eax, 0x2040
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x2030], rax
 xor r12d, r12d
 mov rbp, r8
 mov rbx, rdx
 mov rdi, rcx
 cmp rcx, r12
 je 0x140014426
 cmp word ptr [rcx], r12w
 je 0x140014426
 mov r13d, 0x800
 lea r9, [rsp+0x20]
 lea r8, [rsp+0x30]
 mov edx, r13d
 call qword ptr [GetFullPathNameW]
 mov esi, eax
 cmp eax, r12d
 je 0x1400143cb
 cmp eax, r13d
 jbe 0x140014400

0x1400143cb:
 lea rdx, [rsp+0x1030]
 mov r8, r13
 mov rcx, rdi
 call 0x140013930
 cmp al, r12b
 je 0x140014400
 lea r9, [rsp+0x20]
 lea r8, [rsp+0x30]
 lea rcx, [rsp+0x1030]
 mov edx, r13d
 call qword ptr [GetFullPathNameW]
 mov esi, eax

0x140014400:
 cmp esi, r12d
 je 0x140014411
 cmp esi, r13d
 jae 0x140014411
 lea rdx, [rsp+0x30]
 jmp 0x140014419

0x140014411:
 cmp rdi, rbx
 je 0x14001442f
 mov rdx, rdi

0x140014419:
 mov r8, rbp
 mov rcx, rbx
 call sub_14001efc0
 jmp 0x14001442f

0x140014426:
 cmp r8, r12
 jbe 0x14001442f
 mov word ptr [rdx], r12w

0x14001442f:
 mov rcx, qword ptr [rsp+0x2030]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x2088]
 add rsp, 0x2040
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140014458
; --------------------------------------------------------------------------
sub_140014458   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x38]
 arg_3 : qword, ; [rsp+0x40]
 arg_4 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x20
 xor r12d, r12d
 mov rbp, r8
 mov rsi, rdx
 mov word ptr [rdx], r12w
 mov rbx, rcx
 call sub_140013474
 cmp al, r12b
 je 0x1400144a3
 movzx r9d, word ptr [rbx]
 lea r8, [0x14003d8a8]
 mov rdx, rbp
 mov rcx, rsi
 call sub_140019504
 jmp 0x14001450f

0x1400144a3:
 mov edi, 0x5c
 cmp word ptr [rbx], di
 jne 0x14001450f
 cmp word ptr [rbx+2], di
 jne 0x14001450f
 lea rcx, [rbx+4]
 mov edx, edi
 call 0x14002cf84
 cmp rax, r12
 je 0x14001450f
 lea rcx, [rax+2]
 mov edx, edi
 call 0x14002cf84
 mov rcx, rax
 cmp rax, r12
 je 0x1400144e1
 sub rcx, rbx
 sar rcx, 0x1
 inc rcx
 jmp 0x1400144f3

0x1400144e1:
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, rbx
 repne scasd eax, dword ptr [rdi]
 not rcx
 dec rcx

0x1400144f3:
 cmp rcx, rbp
 mov rdx, rbx
 sbb rdi, rdi
 and rdi, rcx
 mov rcx, rsi
 mov r8, rdi
 call sub_14002dc5c
 mov word ptr [rsi+rdi*2], r12w

0x14001450f:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x20
 pop r12
 ret 
sub_140014458   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001452c
; --------------------------------------------------------------------------
sub_14001452c   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x38]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x40]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 sub rsp, 0x20
 xor ebp, ebp
 mov rsi, r8
 mov rdi, rdx
 mov rbx, rcx
 cmp rcx, rbp
 je 0x140014587
 cmp word ptr [rcx], bp
 je 0x140014587
 call sub_140013e3c
 cmp rax, rbp
 je 0x140014562
 mov word ptr [rax], bp

0x140014562:
 cmp rdi, rbp
 je 0x140014587
 lea rdx, [0x14003d1f8]
 mov r8, rsi
 mov rcx, rbx
 call sub_14001effc
 mov r8, rsi
 mov rdx, rdi
 mov rcx, rbx
 call sub_14001effc

0x140014587:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop rdi
 ret 
sub_14001452c   endp
 

0x14001459c:
 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x22e8
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x22d0], rax
 xor r15d, r15d
 cmp word ptr [rdx], 0x2b
 mov qword ptr [rsp+0x28], r9
 mov ebp, r8d
 mov dword ptr [rsp+0x24], r8d
 mov rax, rdx
 lea ebx, [r15+1]
 mov r14, rcx
 mov qword ptr [rsp+0x60], rcx
 mov byte ptr [rsp+0x21], r15b
 jne 0x1400145fa
 mov byte ptr [rsp+0x21], bl
 add rax, 2

0x1400145fa:
 cmp word ptr [rax], r15w
 lea rdx, [0x14003d8f0]
 lea rcx, [rsp+0xd0]
 cmovne rdx, rax
 mov r8d, 0x80
 call sub_14001efc0
 mov cl, r15b
 mov r13b, r15b
 mov esi, r15d
 mov byte ptr [rsp+0x20], cl
 cmp word ptr [rsp+0xd0], r15w
 je 0x140014763
 mov r14, qword ptr [rsp+0x28]

0x14001463d:
 mov edi, esi
 lea r12, [rsp+rdi*2+0xd0]
 cmp word ptr [r12], 0x7b
 je 0x1400147e2
 cmp word ptr [r12], 0x7d
 je 0x1400147dc
 cmp cl, r15b
 jne 0x14001474d
 movzx ecx, word ptr [r12]
 call 0x140021524
 movzx r13d, r13b
 cmp eax, 0x48
 cmove r13d, ebx
 cmp r13b, r15b
 je 0x14001468f
 cmp eax, 0x4d
 jne 0x14001468f
 lea ecx, [rax-4]
 mov word ptr [r12], cx

0x14001468f:
 mov ecx, 0x4e
 cmp eax, ecx
 jne 0x140014749
 mov ecx, ebp
 call sub_14001ef64
 movzx ecx, word ptr [r12]
 mov ebx, r15d
 mov ebp, eax
 movsxd r15, esi
 call 0x140021524
 mov ecx, 0x4e
 cmp eax, ecx
 jne 0x1400146e3
 lea rdi, [rsp+r15*2+0xd0]
 mov r14d, ecx

0x1400146c9:
 add rdi, 2
 inc ebx
 movzx ecx, word ptr [rdi]
 call 0x140021524
 cmp eax, r14d
 je 0x1400146c9
 mov r14, qword ptr [rsp+0x28]
 mov edi, esi

0x1400146e3:
 cmp ebp, ebx
 jbe 0x140014733
 or rcx, 0xffffffffffffffff
 mov eax, ebx
 add rax, rdi
 lea rdx, [rsp+rax*2+0xd0]
 xor eax, eax
 mov rdi, rdx
 repne scasd eax, dword ptr [rdi]
 mov eax, esi
 not rcx
 add rax, rbp
 lea r8, [rcx+rcx]
 lea rcx, [rsp+rax*2+0xd0]
 call 0x14002d490
 xor eax, eax
 cmp rbp, rax
 jbe 0x140014731
 mov eax, 0x4e
 mov rdi, r12
 mov rcx, rbp
 movzx eax, ax
 rep stosd dword ptr [rdi], eax

0x140014731:
 cmp ebp, ebx

0x140014733:
 cmova ebx, ebp
 mov ebp, dword ptr [rsp+0x24]
 xor r15d, r15d
 lea esi, [rsi+rbx-1]
 mov ebx, 0x1
 mov byte ptr [r14], bl

0x140014749:
 mov cl, byte ptr [rsp+0x20]

0x14001474d:
 add esi, ebx
 cmp word ptr [rsp+rsi*2+0xd0], r15w
 jne 0x14001463d
 mov r14, qword ptr [rsp+0x60]

0x140014763:
 lea rcx, [rsp+0x30]
 mov qword ptr [rsp+0x30], r15
 call sub_14001fefc
 lea rdx, [rsp+0x38]
 lea rcx, [rsp+0x30]
 call sub_14001ff94
 mov rcx, r14
 call sub_140013e3c
 mov word ptr [rsp+0x12d0], r15w
 mov r12d, 0x800
 mov rdi, rax
 cmp rax, r15
 jne 0x1400147ee
 mov rcx, r14
 call 0x140013c20
 lea rdx, [0x14003ca88]
 lea rcx, [0x14003d408]
 cmp word ptr [rax], r15w
 cmove rcx, rdx
 lea rdx, [rsp+0x12d0]

0x1400147c6:
 movzx eax, word ptr [rcx]
 add rcx, 2
 mov word ptr [rdx], ax
 add rdx, 2
 cmp ax, r15w
 jne 0x1400147c6
 jmp 0x140014805

0x1400147dc:
 cmp word ptr [r12], 0x7b

0x1400147e2:
 sete cl
 mov byte ptr [rsp+0x20], cl
 jmp 0x14001474d

0x1400147ee:
 lea rcx, [rsp+0x12d0]
 mov r8, r12
 mov rdx, rax
 call sub_14001efc0
 mov word ptr [rdi], r15w

0x140014805:
 mov eax, dword ptr [rsp+0x54]
 mov edi, dword ptr [rsp+0x58]
 mov ecx, 6
 cmp eax, r15d
 lea ebx, [rax-1]
 cmove ebx, ecx
 sub edi, ebx
 jns 0x140014842
 cmp edi, 0xfc
 jg 0x14001483f
 mov ecx, dword ptr [rsp+0x38]
 dec ecx
 call 0x14001ff48
 neg al
 sbb ecx, ecx
 neg ecx
 add ecx, 0x16d
 add edi, ecx
 jmp 0x140014842

0x14001483f:
 mov edi, r15d

0x140014842:
 mov eax, 0x92492493
 imul edi
 add edx, edi
 sar edx, 2
 mov eax, edx
 shr eax, 0x1f
 add edx, eax
 lea esi, [rdx+1]
 imul edx, edx, 7
 sub edi, edx
 cmp edi, 4
 jl 0x140014864
 inc esi

0x140014864:
 mov r8d, dword ptr [rsp+0x38]
 lea rdx, [0x14003d8e4]
 lea rcx, [rsp+0x90]
 call sub_14002e6f8
 mov r8d, dword ptr [rsp+0x3c]
 lea rdi, [0x14003cdc0]
 lea rcx, [rsp+0x96]
 mov rdx, rdi
 call sub_14002e6f8
 mov r8d, dword ptr [rsp+0x40]
 lea rcx, [rsp+0x9c]
 mov rdx, rdi
 call sub_14002e6f8
 mov r8d, dword ptr [rsp+0x44]
 lea rcx, [rsp+0xa2]
 mov rdx, rdi
 call sub_14002e6f8
 mov r8d, dword ptr [rsp+0x48]
 lea rcx, [rsp+0xa8]
 mov rdx, rdi
 call sub_14002e6f8
 mov r8d, dword ptr [rsp+0x4c]
 lea rcx, [rsp+0xae]
 mov rdx, rdi
 call sub_14002e6f8
 lea rcx, [rsp+0xb4]
 mov r8d, esi
 mov rdx, rdi
 call sub_14002e6f8
 lea r8d, [rbx+1]
 lea rdx, [0x14003d8e0]
 lea rcx, [rsp+0xba]
 call sub_14002e6f8
 mov r8d, dword ptr [rsp+0x58]
 lea rdx, [0x14003d8d8]
 lea rcx, [rsp+0xc0]
 inc r8d
 call sub_14002e6f8
 lea rdx, [0x14003d8d0]
 lea rcx, [rsp+0xc6]
 mov r8d, ebp
 call sub_14002e6f8
 xor edx, edx
 lea rcx, [rsp+0x68]
 lea r8d, [rdx+0x28]
 call 0x14002d190
 movzx eax, word ptr [rsp+0xd0]
 mov bl, r15b
 mov rdi, r15
 lea r13, [0x14003d8b8]
 cmp ax, r15w
 je 0x1400149d2
 lea rax, [rsp+0xd0]

0x14001497e:
 cmp word ptr [rax], 0x7b
 je 0x1400149b6
 cmp word ptr [rax], 0x7d
 je 0x1400149b2
 cmp bl, r15b
 jne 0x1400149b9
 movzx ecx, word ptr [rax]
 call 0x140021524
 mov rcx, r13
 mov edx, eax
 call 0x14002cf84
 cmp rax, r15
 je 0x1400149b9
 sub rax, r13
 sar rax, 0x1
 inc dword ptr [rsp+rax*4+0x68]
 jmp 0x1400149b9

0x1400149b2:
 cmp word ptr [rax], 0x7b

0x1400149b6:
 sete bl

0x1400149b9:
 inc rdi
 lea rax, [rsp+rdi*2+0xd0]
 cmp word ptr [rax], r15w
 jne 0x14001497e
 mov ax, word ptr [rsp+0xd0]

0x1400149d2:
 xor edi, edi
 mov word ptr [rsp+0x1d0], r15w
 mov rbx, rdi
 cmp ax, di
 je 0x140014b5b
 lea rsi, [rsp+0xd0]
 lea rbp, [rsp+0xd4]
 lea r12, [rsp+0xd2]

0x140014a01:
 cmp rbx, 0x7f
 jae 0x140014b55
 cmp word ptr [rsi], 0x7b
 je 0x140014b35
 cmp word ptr [rsi], 0x7d
 je 0x140014b31
 movzx ecx, word ptr [rsi]
 call 0x140021524
 mov rcx, r13
 mov edx, eax
 call 0x14002cf84
 mov r11, rax
 cmp rax, rdi
 je 0x140014b06
 cmp r15b, dil
 jne 0x140014b06
 sub r11, r13
 xor eax, eax
 sar r11, 0x1
 mov edx, dword ptr [rsp+r11*4+0x68]
 lea rcx, [r11+r11*2]
 lea r13, [rcx+rcx]
 or rcx, 0xffffffffffffffff
 lea rdi, [rsp+r13+0x90]
 repne scasb al, byte ptr [rdi]
 lea eax, [rdx-1]
 not rcx
 mov dword ptr [rsp+r11*4+0x68], eax
 lea rdi, [rcx-1]
 sub edi, edx
 cmp r11, 0x1
 jne 0x140014ae9
 movzx ecx, word ptr [r12]
 call 0x140021524
 cmp eax, 0x4d
 jne 0x140014ae9
 movzx ecx, word ptr [rbp]
 call 0x140021524
 cmp eax, 0x4d
 jne 0x140014ae9
 mov ecx, dword ptr [rsp+0x3c]
 lea edi, [rax+0x33]
 sub rdi, rbx
 dec ecx
 call 0x14001ff40
 lea rcx, [rsp+rbx*2+0x1d0]
 mov r8, rdi
 mov rdx, rax
 call sub_14001efc0
 or rcx, 0xffffffffffffffff
 xor eax, eax
 lea rdi, [rsp+0x1d0]
 add r12, 4
 add rbp, 4
 repne scasd eax, dword ptr [rdi]
 add rsi, 4
 xor edi, edi
 not rcx
 lea rbx, [rcx-1]
 jmp 0x140014b39

0x140014ae9:
 xor eax, eax
 cmp edi, eax
 jge 0x140014af6
 movzx eax, word ptr [rsi]

0x140014af2:
 xor edi, edi
 jmp 0x140014b1c

0x140014af6:
 movsxd rax, edi
 add rax, r13
 movsx eax, byte ptr [rsp+rax+0x90]
 jmp 0x140014af2

0x140014b06:
 movzx eax, word ptr [rsi]
 mov word ptr [rsp+rbx*2+0x1d0], ax
 cmp ax, 0x3a
 jne 0x140014b24
 mov eax, 0x5f

0x140014b1c:
 mov word ptr [rsp+rbx*2+0x1d0], ax

0x140014b24:
 inc rbx
 mov word ptr [rsp+rbx*2+0x1d0], di
 jmp 0x140014b39

0x140014b31:
 cmp word ptr [rsi], 0x7b

0x140014b35:
 sete r15b

0x140014b39:
 add rsi, 2
 add r12, 2
 add rbp, 2
 lea r13, [0x14003d8b8]
 cmp word ptr [rsi], di
 jne 0x140014a01

0x140014b55:
 mov r12d, 0x800

0x140014b5b:
 cmp byte ptr [rsp+0x21], dil
 je 0x140014be0
 lea rdx, [rsp+0x2d0]
 mov r8, r12
 mov rcx, r14
 call sub_140013e9c
 lea rcx, [rsp+0x2d0]
 mov rdx, r12
 call sub_1400134a8
 lea rdx, [rsp+0x1d0]
 lea rcx, [rsp+0x2d0]
 mov r8, r12
 call sub_14001effc
 mov rcx, r14
 call 0x140013c20
 lea rcx, [rsp+0x2d0]
 mov r8, r12
 mov rdx, rax
 call sub_14001effc
 lea rax, [rsp+0x2d0]
 mov rcx, r14
 sub rcx, rax
 lea rdx, [rsp+0x2d0]

0x140014bce:
 movzx eax, word ptr [rdx]
 mov word ptr [rdx+rcx], ax
 add rdx, 2
 cmp ax, di
 jne 0x140014bce
 jmp 0x140014c09

0x140014be0:
 xor eax, eax
 or rcx, 0xffffffffffffffff
 mov rdi, r14
 repne scasd eax, dword ptr [rdi]
 xor edx, edx
 lea r8, [rsp+0x1d0]

0x140014bf6:
 movzx eax, word ptr [r8+rdx]
 add rdx, 2
 mov word ptr [rdi+rdx-4], ax
 test ax, ax
 jne 0x140014bf6

0x140014c09:
 xor eax, eax
 or rcx, 0xffffffffffffffff
 mov rdi, r14
 repne scasd eax, dword ptr [rdi]
 xor ecx, ecx
 lea rdx, [rsp+0x12d0]

0x140014c1f:
 movzx eax, word ptr [rdx+rcx]
 add rcx, 2
 mov word ptr [rdi+rcx-4], ax
 test ax, ax
 jne 0x140014c1f
 mov rcx, qword ptr [rsp+0x22d0]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x22e8
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
 int3 
 int3 
 int3 

0x140014c58:
 mov qword ptr [rsp+0x20], rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r15
 mov eax, 0x1170
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1160], rax
 mov r12, rdx
 mov bpl, r9b
 mov rsi, r8
 mov rdx, rcx
 mov rdi, rcx
 mov ebx, 0x1
 mov r15d, 0x894
 jmp 0x140014cb2

0x140014c9f:
 lea rcx, [rsp+0x30]
 call sub_1400104f4
 test al, al
 je 0x140014ce2
 inc ebx
 mov rdx, rdi

0x140014cb2:
 lea rcx, [rsp+0x30]
 mov r8, r15
 call sub_14001efc0
 lea r9, [rsp+0x20]
 lea rcx, [rsp+0x30]
 mov r8d, ebx
 mov rdx, rsi
 mov byte ptr [rsp+0x20], 0x0
 call 0x14001459c
 cmp byte ptr [rsp+0x20], 0x0
 jne 0x140014c9f
 jmp 0x140014d1a

0x140014ce2:
 test bpl, bpl
 jne 0x140014d1a
 cmp ebx, 0x1
 jbe 0x140014d1a
 mov rcx, rdi
 call sub_14001ed68
 lea rcx, [rsp+0x30]
 mov r8, r15
 mov rdx, rax
 call sub_14001efc0
 lea r8d, [rbx-1]
 lea r9, [rsp+0x20]
 lea rcx, [rsp+0x30]
 mov rdx, rsi
 call 0x14001459c

0x140014d1a:
 lea rdx, [rsp+0x30]
 mov r8, r12
 mov rcx, rdi
 call sub_14001efc0
 mov rcx, qword ptr [rsp+0x1160]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x11b8]
 add rsp, 0x1170
 pop r15
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
 int3 
 int3 
 int3 

0x140014d54:
 push rbp
 push rsi
 push rdi
 push r12
 push r14
 mov eax, 0x105e0
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x20], -2
 mov qword ptr [rsp+0x10628], rbx
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x105d0], rax
 mov dil, r9b
 mov r12, r8
 mov rbx, rdx
 cmp rdx, rcx
 je 0x140014da5
 mov rdx, rcx
 mov rcx, rbx
 call sub_14001efc0

0x140014da5:
 mov rsi, rbx
 test dil, dil
 je 0x140014df2
 mov ebp, 0x31
 mov rcx, rbx
 call sub_1400140cc
 mov rdi, rax
 cmp rax, rbx
 jbe 0x140014e0f
 lea r14d, [rbp-1]

0x140014dc6:
 movzx ecx, word ptr [rdi]
 call sub_14001ee50
 test al, al
 je 0x140014ddb
 mov word ptr [rdi], bp
 mov bp, r14w
 jmp 0x140014de1

0x140014ddb:
 cmp bp, r14w
 je 0x140014dec

0x140014de1:
 sub rdi, 2
 cmp rdi, rbx
 ja 0x140014dc6
 jmp 0x140014e0f

0x140014dec:
 lea rsi, [rdi+2]
 jmp 0x140014e0f

0x140014df2:
 mov r8, r12
 lea rdx, [0x14003d0b0]
 mov rcx, rbx
 call sub_14001452c
 mov rcx, rbx
 call sub_140013e3c
 mov rsi, rax

0x140014e0f:
 mov rcx, rbx
 call sub_1400104f4
 test al, al
 jne 0x140014f40
 mov edi, 0x800
 mov r8, rdi
 mov rdx, rbx
 lea rcx, [rsp+0xf5d0]
 call sub_14001efc0
 mov r8, rdi
 lea rdx, [0x14003c920]
 lea rcx, [rsp+0xf5d0]
 call sub_14001452c
 lea rcx, [rsp+0x30]
 call sub_140011048
 nop 
 lea rdx, [rsp+0xf5d0]
 lea rcx, [rsp+0x30]
 call sub_14001107c
 and qword ptr [rsp+0x2050], 0x0
 and qword ptr [rsp+0x2058], 0x0
 and qword ptr [rsp+0x2060], 0x0
 xor r8d, r8d
 lea rdx, [rsp+0x1040]
 lea rcx, [rsp+0x30]
 call sub_140011240
 test al, al
 je 0x140014f36

0x140014ea3:
 xor edx, edx
 lea rcx, [rsp+0x2090]
 call sub_1400020bc
 nop 
 xor r8d, r8d
 lea rdx, [rsp+0x1040]
 lea rcx, [rsp+0x2090]
 call 0x140001448
 test al, al
 je 0x140014eec
 mov dl, 0x1
 lea rcx, [rsp+0x2090]
 call 0x14000164c
 test al, al
 je 0x140014eec
 cmp byte ptr [rsp+0xe589], 0x0
 jne 0x140014f14

0x140014eec:
 lea rcx, [rsp+0x2090]
 call 0x140001360
 xor r8d, r8d
 lea rdx, [rsp+0x1040]
 lea rcx, [rsp+0x30]
 call sub_140011240
 test al, al
 je 0x140014f36
 jmp 0x140014ea3

0x140014f14:
 mov r8, r12
 lea rdx, [rsp+0x1040]
 mov rcx, rbx
 call sub_14001efc0
 nop 
 lea rcx, [rsp+0x2090]
 call 0x140001360
 nop 

0x140014f36:
 lea rcx, [rsp+0x30]
 call sub_140011060

0x140014f40:
 mov rax, rsi
 mov rcx, qword ptr [rsp+0x105d0]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x10628]
 add rsp, 0x105e0
 pop r14
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140014f6c
; --------------------------------------------------------------------------
sub_140014f6c   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rdi, qword ptr [rcx+0x10]
 test rdi, rdi
 je 0x140014f9b

0x140014f7f:
 mov rcx, qword ptr [rdi]
 mov rbx, qword ptr [rdi+0x18]
 call 0x14002ec9c
 mov rcx, rdi
 call 0x14002cfa4
 mov rdi, rbx
 test rbx, rbx
 jne 0x140014f7f

0x140014f9b:
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_140014f6c   endp
 
 int3 
 int3 

0x140014fa8:
 cmp byte ptr [rcx+0x10f0], 0x0
 jne 0x140014fb4
 xor al, al
 ret 

0x140014fb4:
 mov rax, qword ptr [rcx+0x1150]
 mov qword ptr [rdx], rax
 mov al, 0x1
 ret 
 int3 
 int3 
 int3 

0x140014fc4:
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 call sub_140014f6c
 mov rcx, qword ptr [rbx+0x20]
 call 0x14002ec9c
 mov rcx, qword ptr [rbx+0x1128]
 test rcx, rcx
 je 0x140014fec
 call sub_14002cfac

0x140014fec:
 lea rcx, [rbx+0x30]
 add rsp, 0x20
 pop rbx
 jmp 0x14000a4b4
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140014ffc
; --------------------------------------------------------------------------
sub_140014ffc   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 mov sil, r8b
 mov rdi, rdx
 mov rbx, rcx
 test rdx, rdx
 je 0x14001501e
 call sub_140014f6c

0x14001501e:
 and qword ptr [rbx+0x10], 0x0
 and qword ptr [rbx+0x18], 0x0
 cmp qword ptr [rbx+0x20], 0x0
 mov qword ptr [rbx], rdi
 mov byte ptr [rbx+0x8], sil
 jne 0x140015044
 mov ecx, 0x10000
 call 0x14002c914
 mov qword ptr [rbx+0x20], rax

0x140015044:
 and qword ptr [rbx+0x28], 0x0
 mov rsi, qword ptr [arg_2]
 mov byte ptr [rbx+0x10f0], 0x0
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_140014ffc   endp
 
; --------------------------------------------------------------------------
; sub_140015060
; --------------------------------------------------------------------------
sub_140015060   proc \
 arg_1 : qword, ; [rsp+0x50]
 arg_2 : qword, ; [rsp+0x58]
 arg_3 : qword, ; [rsp+0x60]
 arg_4 : qword ; [rsp+0x68]

 local local_1[0x10]: byte ; [rsp+0x20]
 local local_2: qword ; [rsp+0x30]

 mov rax, rsp
 push r12
 sub rsp, 0x40
 mov qword ptr [local_1], -2
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 mov rbx, rcx
 mov rsi, qword ptr [rcx]
 mov qword ptr [rax-0x20], rsi
 mov rax, qword ptr [rsi]
 mov rcx, rsi
 call qword ptr [rax+0x20]
 mov r12, rax
 mov qword ptr [local_2], rax
 mov rdx, qword ptr [rbx+0x1100]
 add rdx, qword ptr [rbx+0x1110]
 xor r8d, r8d
 mov rcx, qword ptr [rbx]
 call sub_14000fd98
 mov rcx, qword ptr [rbx+0x1108]
 sub rcx, qword ptr [rbx+0x1110]
 mov rdx, qword ptr [rbx+0x1118]
 mov r8d, 0x10000
 sub r8, rdx
 cmp rcx, r8
 cmovb r8, rcx
 mov rcx, qword ptr [rbx]
 xor edi, edi
 cmp byte ptr [rcx+0xae4b], dil
 je 0x1400150ed
 and r8, 0xfffffffffffffff0

0x1400150ed:
 cmp r8, rdi
 jne 0x140015105
 mov rax, qword ptr [rsi]
 xor r8d, r8d
 mov rdx, r12
 mov rcx, rsi
 call qword ptr [rax+0x18]
 xor eax, eax
 jmp 0x140015163

0x140015105:
 add rdx, qword ptr [rbx+0x20]
 call sub_14000fbe8
 movsxd rbp, eax
 cmp ebp, edi
 jg 0x140015117
 jmp 0x140015151

0x140015117:
 mov rax, qword ptr [rbx]
 cmp byte ptr [rax+0xae4b], dil
 je 0x14001513e
 mov r8, rbp
 and r8, 0xfffffffffffffff0
 mov rdx, qword ptr [rbx+0x1118]
 add rdx, qword ptr [rbx+0x20]
 lea rcx, [rbx+0x30]
 call sub_14000aa00

0x14001513e:
 mov rax, rbp
 add qword ptr [rbx+0x1110], rax
 add qword ptr [rbx+0x1118], rax
 mov edi, ebp

0x140015151:
 mov r9, qword ptr [rsi]
 xor r8d, r8d
 mov rdx, r12
 mov rcx, rsi
 call qword ptr [r9+0x18]
 mov eax, edi

0x140015163:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x40
 pop r12
 ret 
sub_140015060   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140015180
; --------------------------------------------------------------------------
sub_140015180   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x48]
 arg_3 : qword, ; [rsp+0x50]
 arg_4 : qword ; [rsp+0x58]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 push r13
 push r14
 sub rsp, 0x20
 mov r8, qword ptr [rcx+0x1120]
 mov eax, 0x10000
 xor esi, esi
 sub rax, r8
 mov r13, rdx
 mov rdi, rcx
 cmp rax, 0x100
 jae 0x1400151ec
 mov rbx, qword ptr [rcx+0x1118]
 mov rcx, qword ptr [rcx+0x20]
 sub rbx, r8
 lea rdx, [rcx+r8]
 mov r8, rbx
 call 0x14002d490
 mov rcx, rdi
 mov qword ptr [rdi+0x1120], rsi
 mov qword ptr [rdi+0x1118], rbx
 call sub_140015060

0x1400151ec:
 mov rcx, qword ptr [rdi+0x1120]
 lea rax, [rcx+7]
 cmp rax, qword ptr [rdi+0x1118]
 ja 0x1400152cc
 mov rax, qword ptr [rdi+0x20]
 mov r8d, 7
 lea rdx, [rcx+rax]
 mov rcx, r13
 call sub_1400166bc
 add qword ptr [rdi+0x1120], 7
 mov rcx, r13
 call 0x140016760
 mov edx, 4
 mov rcx, r13
 mov r14d, eax
 call 0x140016818
 mov rcx, r13
 mov ebx, eax
 call 0x1400167d0
 lea r12d, [rax+rbx-3]
 cmp r12d, esi
 jl 0x1400152c5
 cmp ebx, esi
 je 0x1400152c5
 cmp rax, rsi
 je 0x1400152c5
 mov rbp, qword ptr [rdi+0x1118]
 sub rbp, qword ptr [rdi+0x1120]
 cmp r12d, esi
 jle 0x1400152b5

0x14001526a:
 mov rdx, qword ptr [rdi+0x20]
 movsxd rbx, r12d
 mov rcx, r13
 cmp rbp, rbx
 cmovb rbx, rbp
 add rdx, qword ptr [rdi+0x1120]
 mov r8, rbx
 call sub_1400166bc
 add qword ptr [rdi+0x1120], rbx
 sub r12d, ebx
 cmp r12d, esi
 jle 0x1400152b5
 mov rcx, rdi
 mov qword ptr [rdi+0x1120], rsi
 mov qword ptr [rdi+0x1118], rsi
 call sub_140015060
 cmp eax, esi
 jne 0x14001526a
 jmp 0x1400152cc

0x1400152b5:
 mov rcx, r13
 call sub_1400168f4
 cmp r14d, eax
 sete al
 jmp 0x1400152ce

0x1400152c5:
 mov byte ptr [rdi+0x10f0], sil

0x1400152cc:
 xor al, al

0x1400152ce:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x20
 pop r14
 pop r13
 pop r12
 ret 
sub_140015180   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400152f0
; --------------------------------------------------------------------------
sub_1400152f0   proc \
 arg_1 : qword ; [rsp+0x8]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_1], rcx
 push rbx
 sub rsp, 0x30
 mov qword ptr [local_1], -2
 mov rbx, rcx
 add rcx, 0x30
 call sub_14000a92c
 nop 
 xor eax, eax
 mov qword ptr [rbx+0x1128], rax
 mov qword ptr [rbx+0x1130], rax
 mov qword ptr [rbx+0x1138], rax
 mov qword ptr [rbx+0x1140], rax
 mov qword ptr [rbx+0x20], rax
 xor r8d, r8d
 xor edx, edx
 mov rcx, rbx
 call sub_140014ffc
 nop 
 mov rax, rbx
 add rsp, 0x30
 pop rbx
 ret 
sub_1400152f0   endp
 
 int3 
 int3 
 int3 

0x14001534c:
 mov rax, rsp
 push r12
 sub rsp, 0x70
 mov qword ptr [rsp+0x50], -2
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 mov rdi, rdx
 mov rbx, rcx
 cmp byte ptr [rcx+0x10f0], 0x0
 jne 0x14001544e
 mov rcx, qword ptr [rcx]
 mov rax, qword ptr [rcx]
 call qword ptr [rax+0x20]
 mov qword ptr [rbx+0x1150], rax
 mov byte ptr [rbx+0x1158], 0x0
 mov rbp, qword ptr [rbx]
 mov qword ptr [rsp+0x58], rbp
 mov rax, qword ptr [rbp]
 mov rcx, rbp
 call qword ptr [rax+0x20]
 mov r12, rax
 mov qword ptr [rsp+0x60], rax
 mov rcx, qword ptr [rbx]
 mov rax, qword ptr [rcx]
 xor r8d, r8d
 mov rdx, rdi
 call qword ptr [rax+0x18]
 mov rcx, qword ptr [rbx]
 call sub_140004df0
 test rax, rax
 je 0x140015439
 mov rdx, qword ptr [rbx]
 mov ecx, 3
 cmp dword ptr [rdx+0x6854], ecx
 jne 0x140015439
 lea rsi, [rdx+0x9dd0]
 lea rdi, [0x14003d9b0]
 repe cmpsd dword ptr [rsi], dword ptr [rdi]
 jne 0x140015439
 mov rax, qword ptr [rdx+0xc4e0]
 mov qword ptr [rbx+0x10f8], rax
 mov rax, qword ptr [rdx]
 mov rcx, rdx
 call qword ptr [rax+0x20]
 mov qword ptr [rbx+0x1100], rax
 mov rax, qword ptr [rbx]
 mov rdx, qword ptr [rax+0xae10]
 mov qword ptr [rbx+0x1108], rdx
 mov byte ptr [rbx+0x10f0], 0x1
 mov rax, qword ptr [rbp]
 xor r8d, r8d
 mov rdx, r12
 mov rcx, rbp
 call qword ptr [rax+0x18]
 jmp 0x14001544e

0x140015439:
 mov rax, qword ptr [rbp]
 xor r8d, r8d
 mov rdx, r12
 mov rcx, rbp
 call qword ptr [rax+0x18]
 jmp 0x1400154f5

0x14001544e:
 mov r8, qword ptr [rbx]
 cmp byte ptr [r8+0xae4b], 0x0
 je 0x1400154c1
 mov r9, qword ptr [r8+0x6830]
 cmp byte ptr [r9+0x5130], 0x0
 je 0x1400154f5
 lea rax, [r8+0xae72]
 lea rdx, [r8+0xae7b]
 lea rdi, [r8+0xae61]
 lea rsi, [r8+0xae51]
 add r9, 0x5030
 lea rcx, [rbx+0x30]
 mov qword ptr [rsp+0x40], rax
 mov qword ptr [rsp+0x38], rdx
 mov eax, dword ptr [r8+0xae9c]
 mov dword ptr [rsp+0x30], eax
 mov qword ptr [rsp+0x28], rdi
 mov qword ptr [rsp+0x20], rsi
 xor edx, edx
 lea r8d, [rdx+5]
 call sub_14000ac20

0x1400154c1:
 and qword ptr [rbx+0x1110], 0x0
 and qword ptr [rbx+0x1118], 0x0
 and qword ptr [rbx+0x1120], 0x0
 lea rcx, [rbx+0x1128]
 call sub_1400024e0
 and qword ptr [rbx+0x1148], 0x0
 mov rcx, rbx
 call sub_140015060

0x1400154f5:
 lea r11, [rsp+0x70]
 mov rbx, qword ptr [r11+0x10]
 mov rbp, qword ptr [r11+0x18]
 mov rsi, qword ptr [r11+0x20]
 mov rdi, qword ptr [r11+0x28]
 mov rsp, r11
 pop r12
 ret 
; --------------------------------------------------------------------------
; sub_140015510
; --------------------------------------------------------------------------
sub_140015510   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 cmp byte ptr [rcx+0x10f0], 0x0
 mov esi, r8d
 mov rdi, rdx
 mov rbx, rcx
 jne 0x140015535
 xor al, al
 jmp 0x1400155a0

0x140015535:
 test r8d, r8d
 jne 0x14001555f
 cmp rdx, qword ptr [rcx+0x1150]
 jae 0x140015558
 cmp rdx, qword ptr [rcx+0x1148]
 jae 0x140015558
 mov rdx, qword ptr [rcx+0x10f8]
 call 0x14001534c

0x140015558:
 mov qword ptr [rbx+0x1150], rdi

0x14001555f:
 cmp esi, 0x1
 jne 0x14001556b
 add qword ptr [rbx+0x1150], rdi

0x14001556b:
 mov r8d, 2
 mov byte ptr [rbx+0x1158], 0x1
 cmp esi, r8d
 jne 0x14001559e
 mov rcx, qword ptr [rbx]
 mov rdx, rdi
 call sub_14000fd98
 mov rcx, qword ptr [rbx]
 call 0x14000f830
 mov byte ptr [rbx+0x1158], 0x0
 mov qword ptr [rbx+0x1150], rax

0x14001559e:
 mov al, 0x1

0x1400155a0:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_140015510   endp
 

0x1400155b0:
 mov rax, rsp
 push rdi
 sub rsp, 0x70
 mov qword ptr [rsp+0x20], -2
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov rsi, rcx
 xor edx, edx
 lea rcx, [rax-0x48]
 call sub_140016924
 nop 
 lea rdx, [rsp+0x30]
 mov rcx, rsi
 call sub_140015180
 test al, al
 jne 0x140015603
 mov rcx, qword ptr [rsp+0x30]
 test rcx, rcx
 je 0x1400155fc
 call sub_14002cfac

0x1400155fc:
 xor al, al
 jmp 0x140015685

0x140015603:
 lea rcx, [rsp+0x30]
 call 0x1400167d0
 lea rcx, [rsp+0x30]
 call 0x1400167d0
 mov rbp, rax
 lea rcx, [rsp+0x30]
 call 0x1400167d0
 mov rdi, rax
 cmp rax, qword ptr [rsi+0x1138]
 jbe 0x140015648
 mov rdx, rax
 sub rdx, qword ptr [rsi+0x1130]
 lea rcx, [rsi+0x1128]
 call sub_140001294
 jmp 0x14001564f

0x140015648:
 mov qword ptr [rsi+0x1130], rax

0x14001564f:
 mov r8, rdi
 mov rdx, qword ptr [rsi+0x1128]
 lea rcx, [rsp+0x30]
 call sub_140016840
 mov r11, qword ptr [rsi+0x10f8]
 sub r11, rbp
 mov qword ptr [rsi+0x1148], r11
 mov rcx, qword ptr [rsp+0x30]
 test rcx, rcx
 je 0x140015683
 call sub_14002cfac

0x140015683:
 mov al, 0x1

0x140015685:
 lea r11, [rsp+0x70]
 mov rbx, qword ptr [r11+0x10]
 mov rbp, qword ptr [r11+0x18]
 mov rsi, qword ptr [r11+0x20]
 mov rsp, r11
 pop rdi
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_14001569c
; --------------------------------------------------------------------------
sub_14001569c   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x38]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x40]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 sub rsp, 0x20
 cmp byte ptr [rcx+0x10f0], 0x0
 mov rsi, r9
 mov rdi, r8
 mov rbp, rdx
 mov rbx, rcx
 jne 0x1400156cc

0x1400156c5:
 xor al, al
 jmp 0x1400157c9

0x1400156cc:
 mov rax, qword ptr [rcx+0x1130]
 add rax, qword ptr [rcx+0x1148]
 cmp rax, qword ptr [rcx+0x1150]
 ja 0x140015706

0x1400156e3:
 mov rcx, rbx
 call 0x1400155b0
 test al, al
 je 0x140015706
 mov rax, qword ptr [rbx+0x1130]
 add rax, qword ptr [rbx+0x1148]
 cmp rax, qword ptr [rbx+0x1150]
 jbe 0x1400156e3

0x140015706:
 cmp byte ptr [rbx+0x10f0], 0x0
 jne 0x14001572c
 cmp byte ptr [rbx+0x1158], 0x0
 je 0x1400156c5
 mov rdx, qword ptr [rbx+0x1150]
 mov rcx, qword ptr [rbx]
 xor r8d, r8d
 call sub_14000fd98
 jmp 0x1400156c5

0x14001572c:
 mov r9, qword ptr [rbx+0x1150]
 mov r8, qword ptr [rbx+0x1148]
 cmp r9, r8
 jb 0x14001577e
 mov rax, qword ptr [rbx+0x1130]
 lea rdx, [r9+rdi]
 lea rcx, [r8+rax]
 cmp rdx, rcx
 ja 0x14001577e
 mov rdx, qword ptr [rbx+0x1128]
 mov rcx, rbp
 sub rdx, r8
 mov r8, rdi
 add rdx, r9
 call 0x14002d490
 mov qword ptr [rsi], rdi
 add qword ptr [rbx+0x1150], rdi
 mov byte ptr [rbx+0x1158], 0x1
 jmp 0x1400157c7

0x14001577e:
 cmp byte ptr [rbx+0x1158], 0x0
 je 0x14001579c
 mov rcx, qword ptr [rbx]
 xor r8d, r8d
 mov rdx, r9
 call sub_14000fd98
 mov byte ptr [rbx+0x1158], 0x0

0x14001579c:
 mov rcx, qword ptr [rbx]
 mov r8, rdi
 mov rdx, rbp
 call sub_14000fbe8
 test eax, eax
 jns 0x1400157ba
 mov byte ptr [rbx+0x10f0], 0x0
 jmp 0x1400156c5

0x1400157ba:
 movsxd rcx, eax
 mov qword ptr [rsi], rcx
 add qword ptr [rbx+0x1150], rcx

0x1400157c7:
 mov al, 0x1

0x1400157c9:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop rdi
 ret 
sub_14001569c   endp
 
 int3 
 int3 

0x1400157e0:
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 mov rcx, qword ptr [rcx+0xa6d0]
 test rcx, rcx
 je 0x1400157fa
 call sub_14002cfac

0x1400157fa:
 mov rcx, qword ptr [rbx+0xa618]
 test rcx, rcx
 je 0x14001580b
 call sub_14002cfac

0x14001580b:
 mov rcx, qword ptr [rbx+0xa560]
 test rcx, rcx
 je 0x14001581c
 call sub_14002cfac

0x14001581c:
 mov rcx, qword ptr [rbx+0xa4a8]
 test rcx, rcx
 je 0x14001582d
 call sub_14002cfac

0x14001582d:
 mov rcx, qword ptr [rbx+0xa3f0]
 test rcx, rcx
 je 0x14001583e
 call sub_14002cfac

0x14001583e:
 mov rcx, rbx
 add rsp, 0x20
 pop rbx
 jmp 0x140013364
 int3 
; --------------------------------------------------------------------------
; sub_14001584c
; --------------------------------------------------------------------------
sub_14001584c   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x48]
 arg_3 : qword, ; [rsp+0x50]
 arg_4 : qword ; [rsp+0x58]

 local local_1: qword ; [rsp+0x28]

 push rdi
 sub rsp, 0x30
 mov qword ptr [local_1], -2
 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 mov rdi, rdx
 mov esi, ecx
 mov cl, 0x1
 call sub_14001f6d8
 call sub_140008adc
 mov dl, 0x1
 lea rcx, [0x140050e70]
 call 0x14000b020
 mov ecx, 0x8005
 call qword ptr [SetErrorMode]
 xor ecx, ecx
 call qword ptr [GetModuleHandleW]
 mov rdx, rax
 xor r8d, r8d
 lea rcx, [0x140050ec0]
 call 0x140019ee0
 lea rdx, [0x14003da08]
 lea rcx, [0x140050e80]
 call 0x140019c2c
 mov byte ptr [arg_3], 0x0
 mov ecx, 0xa788
 call 0x14002d27c
 mov qword ptr [arg_4], rax
 test rax, rax
 je 0x1400158e2
 mov rcx, rax
 call sub_1400070c0
 mov rbx, rax
 jmp 0x1400158e4

0x1400158e2:
 xor ebx, ebx

0x1400158e4:
 mov r9, rdi
 mov r8d, esi
 mov dl, 0x1
 mov rcx, rbx
 call sub_140008734
 cmp byte ptr [rbx+0x201c], 0x0
 jne 0x14001590d
 mov rcx, rbx
 call 0x140008870
 mov rcx, rbx
 call sub_1400087d0

0x14001590d:
 mov r9, rdi
 mov r8d, esi
 xor edx, edx
 mov rcx, rbx
 call sub_140008734
 mov al, byte ptr [rbx+0x73a9]
 mov byte ptr [arg_3], al
 mov cl, byte ptr [rbx+0x6138]
 call 0x140020580
 mov edx, dword ptr [rbx+0x402c]
 mov ecx, dword ptr [rbx+0x6134]
 call sub_140008b7c
 lea rcx, [rbx+0x5134]
 mov edx, dword ptr [rbx+0x4028]
 call sub_140008a70
 cmp byte ptr [rbx+0x619c], 0x0
 jne 0x14001596b
 cmp dword ptr [rbx+0x6134], 3
 je 0x14001596b
 xor al, al
 jmp 0x14001596d

0x14001596b:
 mov al, 0x1

0x14001596d:
 mov byte ptr [0x140050e79], al
 mov rcx, rbx
 call sub_140006db8
 mov rcx, rbx
 call 0x1400080c0
 mov rcx, rbx
 call 0x1400157e0
 mov rcx, rbx
 call 0x14002cfa4
 nop 

0x140015994:
 cmp byte ptr [arg_3], 0x0
 je 0x1400159a9
 cmp byte ptr [0x140050e7a], 0x0
 jne 0x1400159a9
 call sub_14001f65c

0x1400159a9:
 mov byte ptr [0x140050e7c], 0x1
 mov eax, dword ptr [0x140050e70]
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x30
 pop rdi
 ret 
sub_14001584c   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400159c8
; --------------------------------------------------------------------------
sub_1400159c8   proc
 push rbx
 sub rsp, 0x20
 mov dl, 0x1
 mov rbx, rcx
 call sub_1400113b0
 and qword ptr [rbx+0x18], 0x0
 mov rax, rbx
 add rsp, 0x20
 pop rbx
 ret 
sub_1400159c8   endp
 
 int3 
 int3 

0x1400159e8:
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 mov rcx, qword ptr [rcx+0x18]
 call 0x14002ec9c
 mov rcx, rbx
 add rsp, 0x20
 pop rbx
 jmp sub_1400113f0
 int3 
; --------------------------------------------------------------------------
; sub_140015a08
; --------------------------------------------------------------------------
sub_140015a08   proc
 push rbx
 sub rsp, 0x20
 cmp qword ptr [rcx+0x18], 0x0
 mov rbx, rcx
 jne 0x140015a26
 mov ecx, 0x40004
 call 0x14002c914
 mov qword ptr [rbx+0x18], rax

0x140015a26:
 add rsp, 0x20
 pop rbx
 ret 
sub_140015a08   endp
 

0x140015a2c:
 mov dword ptr [rdx], r8d
 ret 
; --------------------------------------------------------------------------
; sub_140015a30
; --------------------------------------------------------------------------
sub_140015a30   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rdi, rcx
 call sub_140011458
 mov rcx, rdi
 mov ebx, eax
 and eax, 0xc000
 je 0x140015ad3
 cmp eax, 0x4000
 je 0x140015aae
 mov edx, 2
 cmp eax, 0x8000
 je 0x140015a9d
 call sub_140011440
 mov rcx, rdi
 call sub_140011458
 mov edx, 0x10
 mov rcx, rdi
 mov ebx, eax
 shl ebx, 0x10
 call sub_140011440
 mov rcx, rdi
 call sub_140011458
 or ebx, eax

0x140015a8e:
 mov edx, 0x10
 mov rcx, rdi

0x140015a96:
 call sub_140011440
 jmp 0x140015ae3

0x140015a9d:
 call sub_140011440
 mov rcx, rdi
 call sub_140011458
 mov ebx, eax
 jmp 0x140015a8e

0x140015aae:
 test ebx, 0x3c00
 jne 0x140015ac6
 shr ebx, 2
 mov edx, 0xe
 or ebx, 0xffffff00
 jmp 0x140015a96

0x140015ac6:
 shr ebx, 6
 mov edx, 0xa
 movzx ebx, bl
 jmp 0x140015a96

0x140015ad3:
 mov edx, 6
 call sub_140011440
 shr ebx, 0xa
 and ebx, 0xf

0x140015ae3:
 mov eax, ebx
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_140015a30   endp
 
; --------------------------------------------------------------------------
; sub_140015af0
; --------------------------------------------------------------------------
sub_140015af0   proc
 sub rsp, 0x28
 mov r10, r8
 mov r8d, 0x40000
 cmp rdx, r8
 jae 0x140015b20
 mov rcx, qword ptr [rcx+0x18]
 add rcx, rdx
 cmp r10, rcx
 je 0x140015b20
 sub r8, rdx
 mov rdx, r10
 cmp r9, r8
 cmovb r8, r9
 call 0x14002d490

0x140015b20:
 add rsp, 0x28
 ret 
sub_140015af0   endp
 
 int3 
 int3 
 int3 

0x140015b28:
 push rbx
 sub rsp, 0x20
 mov ebx, r8d
 or ecx, 0xffffffff
 mov r8d, r8d
 call sub_140009710
 lea r8, [0x1400452f0]
 xor edx, edx
 not eax
 mov rcx, r8

0x140015b4a:
 cmp dword ptr [rcx+4], eax
 jne 0x140015b53
 cmp dword ptr [rcx], ebx
 je 0x140015b66

0x140015b53:
 inc edx
 add rcx, 0xc
 cmp edx, 6
 jb 0x140015b4a
 xor eax, eax

0x140015b60:
 add rsp, 0x20
 pop rbx
 ret 

0x140015b66:
 lea rcx, [rdx+rdx*2]
 mov eax, dword ptr [r8+rcx*4+0x8]
 jmp 0x140015b60
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140015b74
; --------------------------------------------------------------------------
sub_140015b74   proc \
 arg_1 : dword ; [rsp+0x28]

 mov r10, rdx
 mov eax, r9d
 and r9d, 7
 cdq 
 mov ecx, 0x20
 sub ecx, dword ptr [arg_1]
 and edx, 7
 add eax, edx
 or edx, 0xffffffff
 shr edx, cl
 mov ecx, r9d
 sar eax, 3
 shl edx, cl
 shl r8d, cl
 movsxd rcx, eax
 add rcx, r10
 not edx
 mov r9d, 4

0x140015bab:
 mov al, byte ptr [rcx]
 and al, dl
 shr edx, 8
 or al, r8b
 or edx, 0xff000000
 shr r8d, 8
 mov byte ptr [rcx], al
 inc rcx
 sub r9, 0x1
 jne 0x140015bab
 ret 
sub_140015b74   endp
 
; --------------------------------------------------------------------------
; sub_140015bcc
; --------------------------------------------------------------------------
sub_140015bcc   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 add qword ptr [rcx+0x8], rdx
 mov rax, qword ptr [rcx+0x8]
 mov rbx, rcx
 cmp rax, qword ptr [rcx+0x10]
 jbe 0x140015c5c
 mov r8, qword ptr [rcx+0x18]
 test r8, r8
 je 0x140015c19
 cmp rax, r8
 jbe 0x140015c19
 lea rdx, [0x14003c5e0]
 lea rcx, [0x140050e70]
 call sub_14000b39c
 lea rcx, [0x140050e70]
 call 0x14000b140

0x140015c19:
 mov rcx, qword ptr [rbx+0x10]
 mov rax, rcx
 shr rax, 2
 lea rdi, [rax+rcx+0x20]
 mov rcx, qword ptr [rbx]
 cmp qword ptr [rbx+0x8], rdi
 cmova rdi, qword ptr [rbx+0x8]
 mov rdx, rdi
 imul rdx, rdx, 0x38
 call 0x14002cfec
 mov rsi, rax
 test rax, rax
 jne 0x140015c55
 lea rcx, [0x140050e70]
 call 0x14000b140

0x140015c55:
 mov qword ptr [rbx], rsi
 mov qword ptr [rbx+0x10], rdi

0x140015c5c:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_140015bcc   endp
 
; --------------------------------------------------------------------------
; sub_140015c6c
; --------------------------------------------------------------------------
sub_140015c6c   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x38]
 arg_3 : qword, ; [rsp+0x40]
 arg_4 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x20
 and dword ptr [rcx+4], 0x0
 and dword ptr [rcx], 0x0
 mov eax, 0x8000
 cmp r8d, eax
 mov r12, rcx
 mov rcx, qword ptr [rcx+0x10]
 cmovb eax, r8d
 mov ebp, r8d
 mov rbx, r9
 mov r8d, eax
 mov rsi, rdx
 call 0x14002d490
 xor dil, dil
 cmp ebp, 0x1
 jbe 0x140015ccb
 lea rcx, [rsi+1]
 lea edx, [rbp-1]

0x140015cbf:
 xor dil, byte ptr [rcx]
 inc rcx
 sub rdx, 0x1
 jne 0x140015cbf

0x140015ccb:
 mov edx, 8
 mov rcx, r12
 call sub_140011440
 and dword ptr [rbx+0x28], 0x0
 cmp dil, byte ptr [rsi]
 jne 0x140015d3d
 mov r8d, ebp
 mov rdx, rsi
 mov rcx, r12
 call 0x140015b28
 mov edi, eax
 test eax, eax
 je 0x140015d3d
 mov edx, 0x1
 mov rcx, rbx
 call sub_140015bcc
 movsxd rcx, dword ptr [rbx+0x28]
 mov rdx, rcx
 inc ecx
 mov dword ptr [rbx+0x28], ecx
 imul rdx, rdx, 0x38
 add rdx, qword ptr [rbx]
 lea rax, [rdx+0xc]
 mov dword ptr [rdx], 0x28
 mov dword ptr [rax], edi
 mov qword ptr [rdx+0x18], rax
 lea rax, [rdx+0x24]
 mov qword ptr [rdx+0x30], rax
 mov eax, 3
 mov dword ptr [rdx+0x20], eax
 mov dword ptr [rdx+0x8], eax
 jmp 0x140015dbd

0x140015d3d:
 mov edx, 0x1
 mov rcx, rbx
 call sub_140015bcc
 movsxd rax, dword ptr [rbx+0x28]
 xor r8d, r8d
 mov rcx, rax
 inc eax
 mov dword ptr [rbx+0x28], eax
 imul rcx, rcx, 0x38
 add rcx, qword ptr [rbx]
 lea rax, [rcx+0xc]
 mov dword ptr [rcx], 0x16
 mov qword ptr [rcx+0x18], rax
 lea rax, [rcx+0x24]
 mov qword ptr [rcx+0x30], rax
 mov eax, 3
 mov dword ptr [rcx+0x20], eax
 mov dword ptr [rcx+0x8], eax
 cmp dword ptr [rbx+0x28], r8d
 jle 0x140015dbd
 xor ecx, ecx

0x140015d89:
 mov rdx, qword ptr [rbx]
 cmp qword ptr [rcx+rdx+0x18], 0x0
 jne 0x140015d9e
 lea rax, [rcx+rdx+0xc]
 mov qword ptr [rcx+rdx+0x18], rax

0x140015d9e:
 cmp qword ptr [rcx+rdx+0x30], 0x0
 jne 0x140015db0
 lea rax, [rcx+rdx+0x24]
 mov qword ptr [rcx+rdx+0x30], rax

0x140015db0:
 inc r8d
 add rcx, 0x38
 cmp r8d, dword ptr [rbx+0x28]
 jl 0x140015d89

0x140015dbd:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x20
 pop r12
 ret 
sub_140015c6c   endp
 
; --------------------------------------------------------------------------
; sub_140015dd8
; --------------------------------------------------------------------------
sub_140015dd8   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0xc0]
 arg_2 : qword, ; [rsp+0xc8]
 arg_3 : qword, ; [rsp+0xd0]
 arg_4 : qword ; [rsp+0xd8]

 local local_1[0x10]: byte ; [rsp+0x20]
 local local_2: dword ; [rsp+0x30]
 local local_3: dword ; [rsp+0x34]
 local local_4: dword ; [rsp+0x38]
 local local_5: dword ; [rsp+0x3c]
 local local_6: dword ; [rsp+0x40]
 local local_7: dword ; [rsp+0x44]
 local local_8: dword ; [rsp+0x48]
 local local_9: dword ; [rsp+0x4c]
 local local_10: qword ; [rsp+0x50]
 local local_11: qword ; [rsp+0x58]
 local local_12: qword ; [rsp+0x60]
 local local_13: qword ; [rsp+0x68]
 local local_14: dword ; [rsp+0x70]

 test edx, edx
 jle 0x140016407
 mov qword ptr [arg_1], rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x80
 cmp edx, 2
 mov r11, rcx
 jle 0x140016374
 cmp edx, 3
 je 0x140016231
 cmp edx, 4
 je 0x1400160de
 cmp edx, 5
 je 0x140015e8c
 cmp edx, 6
 jne 0x1400163ed
 movsxd rcx, dword ptr [rcx+0x30]
 mov rax, qword ptr [r11+0x18]
 mov r8d, dword ptr [r11+0x20]
 lea edx, [rcx+rcx]
 mov dword ptr [rax+0x3c020], ecx
 cmp ecx, 0x1e000
 jae 0x1400163ed
 xor r9d, r9d
 test r8d, r8d
 jle 0x1400163ed
 movsxd rbx, edx
 movsxd rdi, r8d
 mov r10, r8
 mov rdx, rcx

0x140015e5c:
 xor r8b, r8b
 cmp rdx, rbx
 mov rcx, rdx
 jge 0x140015e7e

0x140015e67:
 mov rax, qword ptr [r11+0x18]
 sub r8b, byte ptr [rax+r9]
 inc r9
 mov byte ptr [rax+rcx], r8b
 add rcx, rdi
 cmp rcx, rbx
 jl 0x140015e67

0x140015e7e:
 inc rdx
 sub r10, 0x1
 jne 0x140015e5c
 jmp 0x1400163ed

0x140015e8c:
 movsxd rbp, dword ptr [rcx+0x30]
 mov rax, qword ptr [r11+0x18]
 movsxd rcx, dword ptr [rcx+0x20]
 lea r15, [rax+rbp]
 mov qword ptr [local_13], rax
 mov dword ptr [rax+0x3c020], ebp
 mov qword ptr [local_14], r15
 cmp ebp, 0x1e000
 jae 0x1400163ed
 xor r13d, r13d
 xor r12d, r12d
 mov r14, rcx
 mov dword ptr [local_2], r13d
 mov qword ptr [local_12], r12
 test ecx, ecx
 jle 0x1400163ed

0x140015ed3:
 and dword ptr [local_3], 0x0
 xor r9d, r9d
 lea rcx, [local_4]
 and dword ptr [arg_2], r9d
 and dword ptr [arg_3], r9d
 lea r8d, [r9+0x1c]
 xor edx, edx
 mov dword ptr [arg_4], r9d
 xor ebx, ebx
 xor edi, edi
 xor esi, esi
 call 0x14002d190
 and dword ptr [local_11], ebx
 cmp r13d, ebp
 mov r11d, r13d
 jge 0x1400160c0
 lea r10, [r12+r15]
 mov r15, qword ptr [local_13]
 mov r12d, dword ptr [local_11]
 mov r13d, r14d

0x140015f2a:
 mov eax, dword ptr [arg_4]
 mov r8d, dword ptr [arg_3]
 movzx edx, byte ptr [r15]
 mov r9d, eax
 mov ecx, r8d
 inc r15
 sub r9d, dword ptr [arg_2]
 mov dword ptr [arg_2], eax
 mov eax, edi
 imul ecx, esi
 mov dword ptr [arg_3], r9d
 imul eax, r9d
 add ecx, eax
 mov r9d, dword ptr [arg_4]
 mov eax, ebx
 imul eax, r9d
 add ecx, eax
 mov r9d, dword ptr [local_3]
 lea eax, [rcx+r9*8]
 shr eax, 3
 movzx ecx, al
 sub ecx, edx
 mov al, cl
 mov byte ptr [r10], cl
 mov dword ptr [local_3], ecx
 sub al, r9b
 mov r9d, dword ptr [local_4]
 movsx ecx, dl
 movsx eax, al
 shl ecx, 3
 mov dword ptr [arg_4], eax
 mov eax, ecx
 cdq 
 xor eax, edx
 sub eax, edx
 add r9d, eax
 mov eax, ecx
 sub eax, dword ptr [arg_2]
 mov dword ptr [local_4], r9d
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [local_5], eax
 mov eax, dword ptr [arg_2]
 add eax, ecx
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [local_6], eax
 mov eax, ecx
 sub eax, dword ptr [arg_3]
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [local_7], eax
 mov eax, dword ptr [arg_3]
 add eax, ecx
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [local_8], eax
 mov eax, ecx
 sub eax, r8d
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [local_9], eax
 lea eax, [rcx+r8]
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [local_10], eax
 test r12b, 0x1f
 jne 0x14001609a
 xor eax, eax
 lea rdx, [local_5]
 and dword ptr [local_4], eax
 lea ecx, [rax+1]

0x140016030:
 cmp dword ptr [rdx], r9d
 jae 0x14001603a
 mov r9d, dword ptr [rdx]
 mov eax, ecx

0x14001603a:
 and dword ptr [rdx], 0x0
 inc ecx
 add rdx, 4
 cmp ecx, 7
 jb 0x140016030
 sub eax, 0x1
 je 0x140016093
 sub eax, 0x1
 je 0x14001608a
 sub eax, 0x1
 je 0x140016081
 sub eax, 0x1
 je 0x140016078
 sub eax, 0x1
 je 0x14001606f
 cmp eax, 0x1
 jne 0x14001609a
 cmp esi, 0x10
 jge 0x14001609a
 inc esi
 jmp 0x14001609a

0x14001606f:
 cmp esi, 0xf0
 jl 0x14001609a
 dec esi
 jmp 0x14001609a

0x140016078:
 cmp edi, 0x10
 jge 0x14001609a
 inc edi
 jmp 0x14001609a

0x140016081:
 cmp edi, 0xf0
 jl 0x14001609a
 dec edi
 jmp 0x14001609a

0x14001608a:
 cmp ebx, 0x10
 jge 0x14001609a
 inc ebx
 jmp 0x14001609a

0x140016093:
 cmp ebx, 0xf0
 jl 0x14001609a
 dec ebx

0x14001609a:
 add r11d, r13d
 add r10, r14
 inc r12d
 cmp r11d, ebp
 jl 0x140015f2a
 mov r12, qword ptr [local_12]
 mov r13d, dword ptr [local_2]
 mov qword ptr [local_13], r15
 mov r15, qword ptr [local_14]

0x1400160c0:
 inc r12
 inc r13d
 cmp r12, r14
 mov dword ptr [local_2], r13d
 mov qword ptr [local_12], r12
 jl 0x140015ed3
 jmp 0x1400163ed

0x1400160de:
 movsxd r10, dword ptr [rcx+0x30]
 mov eax, dword ptr [rcx+0x20]
 mov rdi, qword ptr [rcx+0x18]
 movsxd r14, dword ptr [rcx+0x24]
 sub eax, 3
 lea r9, [rdi+r10]
 mov dword ptr [rdi+0x3c020], r10d
 cmp r10d, 0x1e000
 jae 0x1400163ed
 test eax, eax
 js 0x1400163ed
 test r14d, r14d
 js 0x1400163ed
 cdqe 
 xor ebx, ebx
 mov r11, rax
 mov qword ptr [arg_4], rax
 neg r11

0x14001612b:
 xor r8d, r8d
 cmp ebx, r10d
 jge 0x1400161f4
 mov eax, 0xaaaaaaab
 mov ecx, r10d
 mov r13, r11
 sub ecx, ebx
 lea rsi, [r11+r9]
 dec ecx
 mul ecx
 shr edx, 0x1
 lea eax, [rdx+1]
 mov qword ptr [arg_3], rax
 mov rax, qword ptr [arg_4]
 mov rcx, qword ptr [arg_3]

0x140016169:
 cmp r13, 3
 jl 0x1400161cc
 movzx r15d, byte ptr [rsi]
 movzx eax, byte ptr [rsi-3]
 mov ecx, r15d
 sub ecx, eax
 add ecx, r8d
 mov eax, ecx
 sub eax, r8d
 cdq 
 mov ebp, eax
 mov eax, ecx
 sub eax, r15d
 xor ebp, edx
 sub ebp, edx
 cdq 
 mov r12d, eax
 movzx eax, byte ptr [rsi-3]
 sub ecx, eax
 xor r12d, edx
 sub r12d, edx
 mov eax, ecx
 cdq 
 xor eax, edx
 sub eax, edx
 cmp ebp, r12d
 jg 0x1400161b0
 cmp ebp, eax
 jle 0x1400161bc

0x1400161b0:
 movzx r8d, byte ptr [rsi-3]
 cmp r12d, eax
 cmovle r8d, r15d

0x1400161bc:
 mov rcx, qword ptr [arg_3]
 mov rax, qword ptr [arg_4]

0x1400161cc:
 sub r8b, byte ptr [rdi]
 add r13, 3
 inc rdi
 movzx r8d, r8b
 mov byte ptr [rsi+rax], r8b
 add rsi, 3
 sub rcx, 0x1
 mov qword ptr [arg_3], rcx
 jne 0x140016169

0x1400161f4:
 inc ebx
 inc r11
 cmp ebx, 3
 jl 0x14001612b
 lea eax, [r10-2]
 mov rcx, r14
 movsxd rdx, eax
 cmp r14, rdx
 jge 0x1400163ed

0x140016215:
 mov al, byte ptr [rcx+r9+1]
 add byte ptr [rcx+r9], al
 add byte ptr [rcx+r9+2], al
 add rcx, 3
 cmp rcx, rdx
 jl 0x140016215
 jmp 0x1400163ed

0x140016231:
 mov eax, dword ptr [rcx+0x30]
 mov rbx, qword ptr [rcx+0x18]
 cmp eax, 0x3c000
 jae 0x1400163ed
 cmp eax, 0x15
 jl 0x1400163ed
 mov esi, dword ptr [rcx+0x38]
 add eax, -0x15
 shr esi, 4
 test eax, eax
 jle 0x1400163ed
 lea r12d, [rax-1]
 shr r12d, 4
 inc r12d

0x140016268:
 movzx eax, byte ptr [rbx]
 and eax, 0x1f
 sub eax, 0x10
 js 0x140016362
 lea rcx, [0x140045338]
 cdqe 
 cmp byte ptr [rax+rcx], 0x0
 je 0x140016362
 movzx r13d, byte ptr [rax+rcx]
 xor ebp, ebp
 lea edi, [rbp+0x12]

0x140016294:
 bt r13d, ebp
 jae 0x140016354
 lea r9d, [rdi+0x18]
 mov eax, r9d
 and r9d, 7
 cdq 
 and edx, 7
 add eax, edx
 sar eax, 3
 movsxd rcx, eax
 inc eax
 movzx r8d, byte ptr [rcx+rbx]
 movsxd rcx, eax
 inc eax
 movzx edx, byte ptr [rcx+rbx]
 cdqe 
 mov cl, r9b
 shl edx, 8
 or r8d, edx
 movzx edx, byte ptr [rax+rbx+1]
 movzx eax, byte ptr [rax+rbx]
 shl edx, 8
 or edx, eax
 shl edx, 0x10
 or edx, r8d
 shr edx, cl
 and edx, 0xf
 cmp dl, 5
 jne 0x140016354
 mov eax, edi
 mov dword ptr [local_1], 0x14
 cdq 
 and edx, 7
 add eax, edx
 sar eax, 3
 movsxd rcx, eax
 inc eax
 movzx r9d, byte ptr [rcx+rbx]
 movsxd rcx, eax
 inc eax
 movzx edx, byte ptr [rcx+rbx]
 cdqe 
 mov ecx, edi
 movzx r8d, byte ptr [rax+rbx+1]
 movzx eax, byte ptr [rax+rbx]
 shl edx, 8
 shl r8d, 8
 or r9d, edx
 and ecx, 7
 or r8d, eax
 mov rdx, rbx
 shl r8d, 0x10
 or r8d, r9d
 mov r9d, edi
 shr r8d, cl
 mov rcx, r11
 sub r8d, esi
 and r8d, 0xfffff
 call sub_140015b74

0x140016354:
 add edi, 0x29
 inc ebp
 cmp edi, 0x64
 jle 0x140016294

0x140016362:
 add rbx, 0x10
 inc esi
 sub r12, 0x1
 jne 0x140016268
 jmp 0x1400163ed

0x140016374:
 mov eax, dword ptr [r11+0x30]
 mov rcx, qword ptr [rcx+0x18]
 mov r8d, dword ptr [r11+0x38]
 cmp eax, 0x3c000
 jae 0x1400163ed
 cmp eax, 4
 jl 0x1400163ed
 cmp edx, 2
 lea r11d, [rax-4]
 sete r10b
 xor r9d, r9d
 add r10b, 0xe8
 test r11d, r11d
 jle 0x1400163ed

0x1400163a3:
 mov al, byte ptr [rcx]
 inc r9d
 inc r8d
 inc rcx
 cmp al, 0xe8
 je 0x1400163b7
 cmp al, r10b
 jne 0x1400163e8

0x1400163b7:
 mov edx, dword ptr [rcx]
 test edx, edx
 jns 0x1400163cf
 lea eax, [r8+rdx]
 test eax, eax
 js 0x1400163dc
 lea eax, [rdx+0x1000000]
 mov dword ptr [rcx], eax
 jmp 0x1400163dc

0x1400163cf:
 cmp edx, 0x1000000
 jge 0x1400163dc
 sub edx, r8d
 mov dword ptr [rcx], edx

0x1400163dc:
 add rcx, 4
 add r9d, 4
 add r8d, 4

0x1400163e8:
 cmp r9d, r11d
 jl 0x1400163a3

0x1400163ed:
 mov rbx, qword ptr [arg_1]
 add rsp, 0x80
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp

0x140016407:
 ret 
sub_140015dd8   endp
 

0x140016408:
 push rbx
 sub rsp, 0x20
 mov ebx, r8d
 mov r11, rdx
 mov r10, rcx
 mov r9d, 0x17d7840

0x14001641d:
 cmp dword ptr [rdx], 0x16
 je 0x140016430
 cmp dword ptr [rdx], 0x28
 je 0x14001646b
 add rdx, 0x38
 dec r9d
 jmp 0x14001641d

0x140016430:
 mov r8d, dword ptr [r10+0x3c]
 cmp r8d, 0x40000
 jae 0x140016476
 mov rax, qword ptr [r10+0x18]
 mov rcx, r8
 and ecx, 0x3ffff
 cmp dword ptr [rcx+rax], ebx
 jae 0x140016476
 dec r9d
 test r9d, r9d
 jle 0x14001647e
 mov edx, dword ptr [rcx+rax]
 lea eax, [r8+4]
 mov dword ptr [r10+0x3c], eax
 imul rdx, rdx, 0x38
 add rdx, r11
 jmp 0x14001641d

0x14001646b:
 mov edx, dword ptr [rdx+0xc]
 mov rcx, r10
 call sub_140015dd8

0x140016476:
 mov al, 0x1

0x140016478:
 add rsp, 0x20
 pop rbx
 ret 

0x14001647e:
 xor al, al
 jmp 0x140016478
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140016484
; --------------------------------------------------------------------------
sub_140016484   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x38]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x40]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 sub rsp, 0x20
 mov rbx, rdx
 mov rdi, rcx
 mov r8d, 0x1c
 add rcx, 0x20
 add rdx, 0x70
 call 0x14002d490
 mov esi, 0x2000
 cmp qword ptr [rbx+0x38], rsi
 mov rbp, rsi
 cmovb rbp, qword ptr [rbx+0x38]
 test rbp, rbp
 je 0x1400164de
 mov rcx, qword ptr [rdi+0x18]
 mov rdx, qword ptr [rbx+0x30]
 mov r8, rbp
 add rcx, 0x3c000
 call 0x14002d490

0x1400164de:
 sub rsi, rbp
 cmp qword ptr [rbx+0x58], rsi
 cmovb rsi, qword ptr [rbx+0x58]
 test rsi, rsi
 je 0x140016507
 mov rax, qword ptr [rdi+0x18]
 mov rdx, qword ptr [rbx+0x50]
 mov r8, rsi
 lea rcx, [rax+rbp+0x3c000]
 call 0x14002d490

0x140016507:
 and dword ptr [rdi+0x40], 0x0
 mov ebp, 0x40000
 mov dword ptr [rdi+0x3c], ebp
 mov rsi, qword ptr [rbx+0x20]
 test rsi, rsi
 jne 0x14001651f
 mov rsi, qword ptr [rbx]

0x14001651f:
 mov r8d, dword ptr [rbx+0x28]
 test r8d, r8d
 jle 0x14001653d
 mov rdx, rsi
 mov rcx, rdi
 call 0x140016408
 test al, al
 jne 0x14001653d
 mov dword ptr [rsi], 0x16

0x14001653d:
 mov r8, qword ptr [rdi+0x18]
 mov eax, 0x3ffff
 mov ecx, dword ptr [r8+0x3c020]
 mov edx, dword ptr [r8+0x3c01c]
 and ecx, eax
 and edx, eax
 lea eax, [rdx+rcx]
 cmp eax, ebp
 jb 0x140016563
 xor edx, edx
 xor ecx, ecx

0x140016563:
 mov eax, ecx
 lea rsi, [rbx+0x30]
 mov dword ptr [rbx+0x98], edx
 add rax, r8
 mov rcx, rsi
 mov qword ptr [rbx+0x90], rax
 call sub_1400024e0
 mov r11, qword ptr [rdi+0x18]
 mov eax, dword ptr [r11+0x3c030]
 mov ecx, 0x1fc0
 cmp eax, ecx
 cmovb ecx, eax
 test ecx, ecx
 je 0x1400165bf
 lea eax, [rcx+0x40]
 mov rcx, rsi
 mov edx, eax
 mov ebx, eax
 call sub_140001294
 mov rdx, qword ptr [rdi+0x18]
 mov rcx, qword ptr [rsi]
 add rdx, 0x3c000
 mov r8, rbx
 call 0x14002d490

0x1400165bf:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop rdi
 ret 
sub_140016484   endp
 
; --------------------------------------------------------------------------
; sub_1400165d4
; --------------------------------------------------------------------------
sub_1400165d4   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x38]
 arg_3 : qword, ; [rsp+0x40]
 arg_4 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x20
 xor esi, esi
 mov rbp, rdx
 mov rdi, rcx
 cmp qword ptr [rcx+0x38], rsi
 je 0x140016676
 mov r12, qword ptr [rcx+0x8]
 mov rax, qword ptr [rcx+0x28]
 mov rcx, r12
 sub rcx, rax
 cmp rdx, rcx
 jbe 0x14001666a
 mov rax, rdx
 sub rax, rcx
 mov rcx, rdi
 mov rbx, rax
 not rbx
 inc rbx
 and ebx, 0xf
 add rbx, rax
 mov rdx, rbx
 call sub_140001294
 mov rcx, qword ptr [rdi+0x20]
 mov r11, qword ptr [rdi]
 mov rax, qword ptr [rcx]
 lea rdx, [r12+r11]
 mov r8, rbx
 call qword ptr [rax+0x10]
 mov rcx, qword ptr [rdi+0x38]
 mov r8, rbx
 movsxd rsi, eax
 mov rax, qword ptr [rdi]
 lea rdx, [r12+rax]
 call sub_14000aa00
 mov r11, rsi
 neg r11
 sbb rax, rax
 and rax, rbp
 add qword ptr [rdi+0x28], rax
 jmp 0x14001669b

0x14001666a:
 add rax, rdx
 mov rsi, rdx
 mov qword ptr [rdi+0x28], rax
 jmp 0x14001669b

0x140016676:
 cmp rdx, rsi
 je 0x14001669b
 call sub_140001294
 mov rcx, qword ptr [rdi+0x20]
 mov rdx, qword ptr [rdi+0x28]
 mov rax, qword ptr [rcx]
 add rdx, qword ptr [rdi]
 mov r8, rbp
 call qword ptr [rax+0x10]
 movsxd rsi, eax
 add qword ptr [rdi+0x28], rsi

0x14001669b:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rdi, qword ptr [arg_4]
 mov rax, rsi
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop r12
 ret 
sub_1400165d4   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400166bc
; --------------------------------------------------------------------------
sub_1400166bc   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 test r8, r8
 je 0x140016706
 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 mov rbx, r8
 mov rsi, rdx
 mov rdi, rcx
 mov rdx, rbx
 call sub_140001294
 mov rcx, qword ptr [rdi+0x28]
 mov r8, rbx
 add rcx, qword ptr [rdi]
 mov rdx, rsi
 call 0x14002d490
 add qword ptr [rdi+0x28], rbx
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi

0x140016706:
 ret 
sub_1400166bc   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140016708
; --------------------------------------------------------------------------
sub_140016708   proc
 mov rdx, qword ptr [rcx+0x30]
 cmp rdx, qword ptr [rcx+0x28]
 jae 0x140016723
 lea rax, [rdx+1]
 mov qword ptr [rcx+0x30], rax
 mov rax, qword ptr [rcx]
 movzx ecx, byte ptr [rax+rdx]
 jmp 0x140016725

0x140016723:
 xor ecx, ecx

0x140016725:
 mov al, cl
 ret 
sub_140016708   endp
 

0x140016728:
 mov r8, rcx
 mov rcx, qword ptr [rcx+0x30]
 lea rax, [rcx+1]
 cmp rax, qword ptr [r8+0x28]
 jae 0x14001675c
 mov rdx, qword ptr [r8]
 mov r9d, 0x100
 movzx eax, byte ptr [rcx+rdx+1]
 movzx edx, byte ptr [rcx+rdx]
 imul ax, r9w
 add ax, dx
 add rcx, 2
 mov qword ptr [r8+0x30], rcx
 ret 

0x14001675c:
 xor eax, eax
 ret 
 int3 

0x140016760:
 mov r10, qword ptr [rcx+0x30]
 mov r9, rcx
 lea rax, [r10+3]
 cmp rax, qword ptr [rcx+0x28]
 jae 0x1400167a3
 mov r8, qword ptr [rcx]
 movzx ecx, byte ptr [r10+r8+1]
 movzx eax, byte ptr [r10+r8+3]
 movzx edx, byte ptr [r10+r8+2]
 shl ecx, 8
 shl eax, 0x18
 shl edx, 0x10
 add eax, edx
 add eax, ecx
 movzx ecx, byte ptr [r10+r8]
 add eax, ecx
 lea rcx, [r10+4]
 mov qword ptr [r9+0x30], rcx
 ret 

0x1400167a3:
 xor eax, eax
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400167a8
; --------------------------------------------------------------------------
sub_1400167a8   proc
 push rbx
 sub rsp, 0x20
 mov r11, rcx
 call 0x140016760
 mov rcx, r11
 mov ebx, eax
 call 0x140016760
 mov eax, eax
 shl rax, 0x20
 add rax, rbx
 add rsp, 0x20
 pop rbx
 ret 
sub_1400167a8   endp
 
 int3 

0x1400167d0:
 mov r8, rcx
 xor r9d, r9d
 mov rax, qword ptr [r8+0x28]
 mov ecx, r9d
 cmp qword ptr [r8+0x30], rax
 jae 0x140016810
 mov r11, qword ptr [r8]

0x1400167e6:
 mov rax, qword ptr [r8+0x30]
 lea r10, [rax+1]
 mov qword ptr [r8+0x30], r10
 movzx edx, byte ptr [r11+rax]
 mov rax, rdx
 and eax, 0x7f
 shl rax, cl
 add r9, rax
 test dl, dl
 jns 0x140016813
 add ecx, 7
 cmp r10, qword ptr [r8+0x28]
 jb 0x1400167e6

0x140016810:
 xor eax, eax
 ret 

0x140016813:
 mov rax, r9
 ret 
 int3 

0x140016818:
 mov r8, qword ptr [rcx+0x28]
 mov rax, rdx
 cmp rdx, r8
 jae 0x140016836
 mov r9, qword ptr [rcx]

0x140016827:
 test byte ptr [r9+rax], 0x80
 je 0x140016839
 inc rax
 cmp rax, r8
 jb 0x140016827

0x140016836:
 xor eax, eax
 ret 

0x140016839:
 sub rax, rdx
 inc rax
 ret 
; --------------------------------------------------------------------------
; sub_140016840
; --------------------------------------------------------------------------
sub_140016840   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x38]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x40]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 sub rsp, 0x20
 mov rsi, rcx
 mov rcx, qword ptr [rcx+0x30]
 mov rbx, r8
 mov rax, qword ptr [rsi+0x28]
 mov rdi, r8
 mov rbp, rdx
 sub rax, rcx
 cmp rax, r8
 cmovb rbx, rax
 test rbx, rbx
 je 0x140016889
 mov rax, qword ptr [rsi]
 mov r8, rbx
 lea rdx, [rcx+rax]
 mov rcx, rbp
 call 0x14002d490

0x140016889:
 cmp rdi, rbx
 jbe 0x14001689f
 sub rdi, rbx
 lea rcx, [rbx+rbp]
 xor edx, edx
 mov r8, rdi
 call 0x14002d190

0x14001689f:
 add qword ptr [rsi+0x30], rbx
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rax, rbx
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_140016840   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_1400168bc
; --------------------------------------------------------------------------
sub_1400168bc   proc
 sub rsp, 0x28
 mov r8, qword ptr [rcx+0x28]
 cmp r8, 2
 ja 0x1400168ce
 xor eax, eax
 jmp 0x1400168ee

0x1400168ce:
 test dl, dl
 je 0x1400168d6
 mov r8, qword ptr [rcx+0x30]

0x1400168d6:
 mov rdx, qword ptr [rcx]
 add r8, -2
 or ecx, 0xffffffff
 add rdx, 2
 call sub_140009710
 not eax
 movzx eax, ax

0x1400168ee:
 add rsp, 0x28
 ret 
sub_1400168bc   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_1400168f4
; --------------------------------------------------------------------------
sub_1400168f4   proc
 sub rsp, 0x28
 mov r8, qword ptr [rcx+0x28]
 cmp r8, 4
 ja 0x140016907
 or eax, 0xffffffff
 jmp 0x14001691c

0x140016907:
 mov rdx, qword ptr [rcx]
 add r8, -4
 or ecx, 0xffffffff
 add rdx, 4
 call sub_140009710
 not eax

0x14001691c:
 add rsp, 0x28
 ret 
sub_1400168f4   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140016924
; --------------------------------------------------------------------------
sub_140016924   proc
 xor eax, eax
 mov qword ptr [rcx+0x20], rdx
 mov qword ptr [rcx], rax
 mov qword ptr [rcx+0x10], rax
 mov qword ptr [rcx+0x18], rax
 mov qword ptr [rcx+0x8], rax
 mov qword ptr [rcx+0x30], rax
 mov qword ptr [rcx+0x28], rax
 mov qword ptr [rcx+0x38], rax
 mov rax, rcx
 ret 
sub_140016924   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001694c
; --------------------------------------------------------------------------
sub_14001694c   proc
 or dword ptr [rcx+0x21f8], 0xffffffff
 xor eax, eax
 mov byte ptr [rcx+0x48], 0x1
 mov byte ptr [rcx], al
 mov byte ptr [rcx+0x18], al
 mov qword ptr [rcx+0x40], rax
 mov byte ptr [rcx+0x49], al
 mov byte ptr [rcx+0x4a], al
 mov byte ptr [rcx+0x21fe], al
 mov byte ptr [rcx+0x21ff], al
 mov byte ptr [rcx+0x2200], al
 mov qword ptr [rcx+0x50], rax
 mov qword ptr [rcx+0x58], rax
 mov qword ptr [rcx+0x30], rax
 mov qword ptr [rcx+0x60], rax
 mov byte ptr [rcx+0x4730], al
 mov byte ptr [rcx+0x4731], al
 mov qword ptr [rcx+0x2228], rax
 mov qword ptr [rcx+0x2220], rax
 mov qword ptr [rcx+0x2218], rax
 mov qword ptr [rcx+0x2210], rax
 mov qword ptr [rcx+0x68], rax
 mov qword ptr [rcx+0x70], rax
 mov word ptr [rcx+0x21fc], ax
 mov qword ptr [rcx+0x2238], rax
 mov qword ptr [rcx+0x2230], rax
 ret 
sub_14001694c   endp
 
; --------------------------------------------------------------------------
; sub_1400169d0
; --------------------------------------------------------------------------
sub_1400169d0   proc
 test rdx, rdx
 je 0x1400169d9
 mov qword ptr [rcx+0x50], rdx

0x1400169d9:
 test r8, r8
 je 0x1400169e2
 mov qword ptr [rcx+0x58], r8

0x1400169e2:
 or dword ptr [rcx+0x21f8], 0xffffffff
 ret 
sub_1400169d0   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400169ec
; --------------------------------------------------------------------------
sub_1400169ec   proc
 mov rax, qword ptr [rcx+0x38]
 mov qword ptr [rdx], rax
 mov rax, qword ptr [rcx+0x30]
 mov qword ptr [r8], rax
 ret 
sub_1400169ec   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_1400169fc
; --------------------------------------------------------------------------
sub_1400169fc   proc \
 arg_1 : qword, ; [rsp+0x80]
 arg_2 : qword, ; [rsp+0x88]
 arg_3 : qword, ; [rsp+0x90]
 arg_4 : qword, ; [rsp+0x98]
 arg_5 : qword ; [rsp+0xa0]

 local local_1: dword ; [rsp+0x30]

 mov r11, rsp
 push rbx
 sub rsp, 0x50
 mov rax, qword ptr [arg_5]
 mov rbx, rcx
 mov qword ptr [r11-0x18], rax
 mov rax, qword ptr [arg_4]
 mov qword ptr [r11-0x20], rax
 mov eax, dword ptr [arg_3]
 mov dword ptr [local_1], eax
 mov rax, qword ptr [arg_2]
 mov qword ptr [r11-0x30], rax
 mov rax, qword ptr [arg_1]
 mov qword ptr [r11-0x38], rax
 test dl, dl
 je 0x140016a59
 add rcx, 0x78
 mov dl, 0x1
 call sub_14000ac20
 mov byte ptr [rbx+0x4730], al
 jmp 0x140016a6d

0x140016a59:
 add rcx, 0x1138
 xor edx, edx
 call sub_14000ac20
 mov byte ptr [rbx+0x4731], al

0x140016a6d:
 add rsp, 0x50
 pop rbx
 ret 
sub_1400169fc   endp
 
 int3 

0x140016a74:
 mov byte ptr [rcx+0x4731], 0x1
 add rcx, 0x1138
 jmp 0x14000994c
 int3 
; --------------------------------------------------------------------------
; sub_140016a88
; --------------------------------------------------------------------------
sub_140016a88   proc
 mov eax, r8d
 mov byte ptr [rcx+0x18], 0x1
 mov qword ptr [rcx+0x28], rdx
 mov qword ptr [rcx+0x20], rax
 ret 
sub_140016a88   endp
 
; --------------------------------------------------------------------------
; sub_140016a98
; --------------------------------------------------------------------------
sub_140016a98   proc \
 arg_1 : qword ; [rsp+0x8]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_1], rcx
 push rbx
 sub rsp, 0x30
 mov qword ptr [local_1], -2
 mov rbx, rcx
 add rcx, 0x78
 call sub_14000a92c
 nop 
 lea rcx, [rbx+0x1138]
 call sub_14000a92c
 nop 
 lea rcx, [rbx+0x2240]
 call sub_140011840
 nop 
 lea rcx, [rbx+0x2e90]
 call sub_140011840
 nop 
 lea rcx, [rbx+0x3ae0]
 call sub_140011840
 mov rcx, rbx
 call sub_14001694c
 nop 
 mov rax, rbx
 add rsp, 0x30
 pop rbx
 ret 
sub_140016a98   endp
 
 int3 
 int3 
 int3 

0x140016b00:
 mov qword ptr [rsp+0x8], rbx
 mov qword ptr [rsp+0x10], rsi
 push rdi
 sub rsp, 0x20
 cmp byte ptr [rcx+0x18], 0x0
 mov rdi, r8
 mov rsi, rdx
 mov rbx, rcx
 mov qword ptr [rcx+0x38], rdx
 mov qword ptr [rcx+0x30], r8
 je 0x140016b3f
 cmp r8, qword ptr [rcx+0x20]
 ja 0x140016b4e
 mov rcx, qword ptr [rcx+0x28]
 call 0x14002d490
 add qword ptr [rbx+0x28], rdi
 sub qword ptr [rbx+0x20], rdi
 jmp 0x140016b4e

0x140016b3f:
 cmp byte ptr [rcx+0x49], 0x0
 jne 0x140016b4e
 mov rcx, qword ptr [rcx+0x58]
 call sub_14000f66c

0x140016b4e:
 add qword ptr [rbx+0x2228], rdi
 cmp byte ptr [rbx+0x4a], 0x0
 jne 0x140016b6d
 lea rcx, [rbx+0x3ae0]
 mov r8, rdi
 mov rdx, rsi
 call sub_1400115a8

0x140016b6d:
 mov rbx, qword ptr [rsp+0x30]
 mov rsi, qword ptr [rsp+0x38]
 add rsp, 0x20
 pop rdi
 jmp 0x14001f5e0
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140016b84
; --------------------------------------------------------------------------
sub_140016b84   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x48]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x50]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 push r12
 push r13
 sub rsp, 0x20
 cmp byte ptr [rcx+0x48], 0x0
 mov r12, r8
 mov rsi, rdx
 mov rdi, rcx
 je 0x140016c10
 mov rbp, qword ptr [rcx+0x50]
 test rbp, rbp
 je 0x140016c10
 mov rax, qword ptr [rcx+0x2238]
 test rax, rax
 je 0x140016bca
 add rsi, qword ptr [rcx+0x2230]
 mov r12, rax

0x140016bca:
 mov rbx, qword ptr [rbp+0x6830]
 mov rdx, r12
 mov rcx, rsi
 call 0x14001ed44
 cmp byte ptr [rbx+0x6150], 0x0
 mov r13d, eax
 jne 0x140016c10
 cmp eax, dword ptr [rdi+0x21f8]
 je 0x140016c10
 mov rdx, qword ptr [rbp+0x8ab8]
 mov rcx, qword ptr [rdi+0x2228]
 mov r9, r12
 mov r8, rsi
 call 0x1400205b8
 mov dword ptr [rdi+0x21f8], r13d

0x140016c10:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop r13
 pop r12
 pop rdi
 ret 
sub_140016b84   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140016c2c
; --------------------------------------------------------------------------
sub_140016c2c   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x48]
 arg_3 : qword, ; [rsp+0x50]
 arg_4 : qword ; [rsp+0x58]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 push r13
 push r14
 sub rsp, 0x20
 cmp byte ptr [rcx+0x4731], 0x0
 mov rsi, r8
 mov r13, rdx
 mov rbx, rcx
 je 0x140016c5f
 and rsi, 0xfffffffffffffff0

0x140016c5f:
 xor edi, edi
 mov r14, rdx
 xor ebp, ebp

0x140016c66:
 test rsi, rsi
 je 0x140016d82
 cmp byte ptr [rbx], 0x0
 mov r12, qword ptr [rbx+0x50]
 je 0x140016c95
 mov r8, qword ptr [rbx+0x8]
 mov rdx, qword ptr [rbx+0x10]
 mov rcx, r13
 call 0x14002d490
 mov edi, dword ptr [rbx+0x8]
 and qword ptr [rbx+0x8], 0x0
 jmp 0x140016d1f

0x140016c95:
 cmp rsi, qword ptr [rbx+0x40]
 mov r8, rsi
 cmovg r8, qword ptr [rbx+0x40]
 test r8, r8
 je 0x140016d1f
 cmp byte ptr [rbx+0x21ff], 0x0
 je 0x140016cd7
 cmp byte ptr [rbx+0x4731], 0x0
 je 0x140016cd7
 cmp rsi, qword ptr [rbx+0x40]
 jle 0x140016cd7
 movsxd rax, ebp
 add rax, r8
 mov rcx, rax
 and rcx, 0xfffffffffffffff0
 sub rcx, rax
 add rcx, r8
 test ecx, ecx
 cmovg r8, rcx

0x140016cd7:
 cmp qword ptr [r12+0x8], -1
 je 0x140016d7d
 mov rax, qword ptr [r12]
 mov rdx, r14
 mov rcx, r12
 call qword ptr [rax+0x10]
 movsxd rdi, eax
 mov rax, qword ptr [rbx+0x68]
 test rax, rax
 jne 0x140016d04
 lea rax, [r12+0x7a58]

0x140016d04:
 cmp byte ptr [rax+0x1099], 0x0
 je 0x140016d1f
 lea rcx, [rbx+0x2240]
 mov r8, rdi
 mov rdx, r14
 call sub_1400115a8

0x140016d1f:
 movsxd rax, edi
 add ebp, edi
 add qword ptr [rbx+0x2220], rax
 sub qword ptr [rbx+0x40], rax
 add r14, rax
 sub rsi, rax
 cmp byte ptr [rbx+0x21ff], 0x0
 je 0x140016d82
 cmp qword ptr [rbx+0x40], 0x0
 jne 0x140016d82
 test edi, edi
 je 0x140016d58
 cmp byte ptr [rbx+0x4731], 0x0
 je 0x140016d82
 test bpl, 0xf
 je 0x140016d82

0x140016d58:
 movzx r9d, word ptr [rbx+0x21fc]
 mov r8b, 0x1
 mov rdx, rbx
 mov rcx, r12
 call 0x14002c4e8
 test al, al
 jne 0x140016c66
 mov byte ptr [rbx+0x2200], 0x1

0x140016d7d:
 or eax, 0xffffffff
 jmp 0x140016dd1

0x140016d82:
 mov rdx, qword ptr [rbx+0x50]
 test rdx, rdx
 je 0x140016da8
 mov rdx, qword ptr [rdx+0xc4e0]
 mov r8, qword ptr [rbx+0x2208]
 mov rcx, rbx
 add rdx, qword ptr [rbx+0x2220]
 call sub_140016b84

0x140016da8:
 cmp edi, 0xff
 je 0x140016dca
 cmp byte ptr [rbx+0x4731], 0x0
 mov edi, ebp
 je 0x140016dca
 lea rcx, [rbx+0x1138]
 movsxd r8, ebp
 mov rdx, r13
 call sub_14000aa00

0x140016dca:
 call 0x14001f5e0
 mov eax, edi

0x140016dd1:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x20
 pop r14
 pop r13
 pop r12
 ret 
sub_140016c2c   endp
 

0x140016df0:
 mov qword ptr [rsp+0x10], rbx
 mov qword ptr [rsp+0x18], rsi
 push rdi
 sub rsp, 0x140
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x130], rax
 movsxd rdi, dword ptr [rcx+0x2c20]
 mov rbx, rcx
 cmp edi, dword ptr [rcx+0x2c24]
 mov rsi, rdi
 jge 0x140016ede
 mov r10d, dword ptr [rcx+0x2c40]

0x140016e34:
 mov r8d, dword ptr [rbx+0x2c28]
 test r8d, r8d
 jle 0x140016e67
 mov rax, qword ptr [rbx+0x2c10]
 lea rcx, [rsp+0x30]
 mov r9, r8
 lea rdx, [rsi+rax]

0x140016e53:
 mov al, byte ptr [rdx]
 add rdx, qword ptr [rbx+0x2c30]
 mov byte ptr [rcx], al
 inc rcx
 sub r9, 0x1
 jne 0x140016e53

0x140016e67:
 mov r9, qword ptr [rbx+0x2c38]
 lea rdx, [rsp+0x30]
 mov rcx, rbx
 mov dword ptr [rsp+0x20], r10d
 call 0x14001af60
 mov r10d, dword ptr [rbx+0x2c40]
 xor r11d, r11d
 test r10d, r10d
 jle 0x140016ecd
 xor r9d, r9d

0x140016e92:
 mov rax, qword ptr [rbx+0x2c38]
 mov rcx, qword ptr [rbx+0x2c10]
 inc r11d
 movsxd rdx, dword ptr [rax+r9]
 add r9, 4
 mov al, byte ptr [rsp+rdx+0x30]
 mov r8, rdx
 imul r8, qword ptr [rbx+0x2c30]
 add r8, rsi
 mov byte ptr [r8+rcx], al
 mov r10d, dword ptr [rbx+0x2c40]
 cmp r11d, r10d
 jl 0x140016e92

0x140016ecd:
 inc edi
 inc rsi
 cmp edi, dword ptr [rbx+0x2c24]
 jl 0x140016e34

0x140016ede:
 mov rcx, qword ptr [rsp+0x130]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x140]
 mov rbx, qword ptr [r11+0x18]
 mov rsi, qword ptr [r11+0x20]
 mov rsp, r11
 pop rdi
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_140016f04
; --------------------------------------------------------------------------
sub_140016f04   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x48]
 arg_3 : qword, ; [rsp+0x50]
 arg_4 : qword ; [rsp+0x58]

 local local_1: qword ; [rsp+0x20]
 local local_2: qword ; [rsp+0x28]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x30
 xor ebx, ebx
 mov rbp, rdx
 mov rdi, rcx
 cmp byte ptr [rdx+0x10], bl
 je 0x140016f2f
 mov esi, dword ptr [rcx+0x4c]
 jmp 0x140016f32

0x140016f2f:
 mov esi, dword ptr [rcx+0x60]

0x140016f32:
 cmp esi, ebx
 jbe 0x140016f7a
 mov r12, rbx

0x140016f39:
 mov rcx, qword ptr [rbp+0x20]
 mov rax, qword ptr [rbp+0x18]
 mov rdx, qword ptr [rdi+0x40]
 imul rdx, r12
 add rdx, qword ptr [rdi+0x38]
 lea r9, [rcx+rax]
 mov rax, qword ptr [rbp+0x28]
 add rdx, rcx
 mov rcx, qword ptr [rbp+0x8]
 mov qword ptr [local_2], rax
 mov qword ptr [local_1], rdx
 mov edx, dword ptr [rbp+0x14]
 mov r8d, ebx
 call sub_14001bdac
 inc ebx
 inc r12
 cmp ebx, esi
 jb 0x140016f39

0x140016f7a:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x30
 pop r12
 ret 
sub_140016f04   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140016f98
; --------------------------------------------------------------------------
sub_140016f98   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 add qword ptr [rcx+0x8], rdx
 mov rax, qword ptr [rcx+0x8]
 mov rbx, rcx
 cmp rax, qword ptr [rcx+0x10]
 jbe 0x14001702b
 mov r8, qword ptr [rcx+0x18]
 test r8, r8
 je 0x140016fe5
 cmp rax, r8
 jbe 0x140016fe5
 lea rdx, [0x14003c5e0]
 lea rcx, [0x140050e70]
 call sub_14000b39c
 lea rcx, [0x140050e70]
 call 0x14000b140

0x140016fe5:
 mov rcx, qword ptr [rbx+0x10]
 mov rax, rcx
 shr rax, 2
 lea rdi, [rax+rcx+0x20]
 mov rcx, qword ptr [rbx]
 cmp qword ptr [rbx+0x8], rdi
 cmova rdi, qword ptr [rbx+0x8]
 mov rdx, rdi
 imul rdx, rdx, 0x1020
 call 0x14002cfec
 mov rsi, rax
 test rax, rax
 jne 0x140017024
 lea rcx, [0x140050e70]
 call 0x14000b140

0x140017024:
 mov qword ptr [rbx], rsi
 mov qword ptr [rbx+0x10], rdi

0x14001702b:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_140016f98   endp
 
 int3 

0x14001703c:
 jmp 0x140016df0
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140017044
; --------------------------------------------------------------------------
sub_140017044   proc \
 arg_1 : qword, ; [rsp+0x8]
 arg_2 : qword ; [rsp+0x48]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_1], rcx
 push rdi
 sub rsp, 0x30
 mov qword ptr [local_1], -2
 mov qword ptr [arg_2], rbx
 mov rdi, rcx
 xor ebx, ebx

0x140017061:
 mov rcx, qword ptr [rdi+rbx*8]
 test rcx, rcx
 je 0x140017074
 mov rax, qword ptr [rcx]
 mov edx, 0x1
 call qword ptr [rax]

0x140017074:
 inc rbx
 cmp rbx, 0x100
 jb 0x140017061
 mov rcx, qword ptr [rdi+0x820]
 call 0x14001fce0
 nop 
 mov rcx, qword ptr [rdi+0x800]
 test rcx, rcx
 je 0x14001709e
 call sub_14002cfac

0x14001709e:
 mov rbx, qword ptr [arg_2]
 add rsp, 0x30
 pop rdi
 ret 
sub_140017044   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400170ac
; --------------------------------------------------------------------------
sub_1400170ac   proc \
 arg_1 : qword, ; [rsp+0x48]
 arg_2 : qword, ; [rsp+0x50]
 arg_3 : qword ; [rsp+0x58]

 local local_1: qword ; [rsp+0x20]

 mov rax, rsp
 mov qword ptr [rax+0x8], rcx
 push rdi
 sub rsp, 0x30
 mov qword ptr [local_1], -2
 mov qword ptr [rax+0x10], rbx
 mov qword ptr [rax+0x18], rbp
 mov qword ptr [rax+0x20], rsi
 mov rbx, rcx
 mov rcx, qword ptr [rcx+0x30]
 call 0x14002ec9c
 mov rcx, qword ptr [rbx+0x20]
 call 0x14002ec9c
 xor esi, esi
 cmp qword ptr [rbx+0x8], rsi
 jbe 0x140017113
 xor edi, edi

0x1400170ec:
 mov rax, qword ptr [rbx]
 mov rcx, qword ptr [rdi+rax]
 test rcx, rcx
 je 0x140017102
 mov rax, qword ptr [rcx]
 mov edx, 0x1
 call qword ptr [rax]

0x140017102:
 inc esi
 add rdi, 0x1020
 mov eax, esi
 cmp rax, qword ptr [rbx+0x8]
 jb 0x1400170ec

0x140017113:
 lea rdi, [rbx+0x78]
 mov ebp, 0x20

0x14001711c:
 mov rsi, qword ptr [rdi]
 test rsi, rsi
 je 0x140017134
 mov rcx, rsi
 call 0x14001b4b8
 mov rcx, rsi
 call 0x14002cfa4

0x140017134:
 add rdi, 0x30
 sub rbp, 0x1
 jne 0x14001711c
 mov rcx, qword ptr [rbx+0x68]
 call 0x14001fce0
 nop 
 mov rcx, qword ptr [rbx]
 test rcx, rcx
 je 0x140017155
 call sub_14002cfac

0x140017155:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x30
 pop rdi
 ret 
sub_1400170ac   endp
 
 int3 
 int3 

0x14001716c:
 mov rdx, rcx
 mov rcx, qword ptr [rcx]
 jmp sub_140016f04
 int3 

0x140017178:
 mov qword ptr [rsp+0x20], r9
 mov dword ptr [rsp+0x18], r8d
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x30
 mov qword ptr [rsp+0x20], -2
 mov qword ptr [rsp+0x78], rbx
 mov rdi, rcx
 mov r14d, dword ptr [rdx+0x83b8]
 mov r10d, dword ptr [rsp+0x90]
 mov eax, r10d
 shr eax, 0xc
 cmp r14d, eax
 cmovae r14d, eax
 mov r8d, 0x1
 cmp r14d, r8d
 cmovb r14d, r8d
 xor edx, edx
 mov eax, r10d
 div r14d
 mov r15d, eax
 and r15d, r8d
 add r15d, eax
 mov ecx, r15d
 not ecx
 add ecx, r8d
 and ecx, 0xf
 add r15d, ecx
 mov eax, 0x1000
 cmp r15d, eax
 cmovb r15d, eax
 xor r12d, r12d
 xor esi, esi
 test r14d, r14d
 je 0x1400172ea
 mov rbp, r10
 lea rbx, [rdi+0x78]
 mov r13b, byte ptr [rsp+0x98]

0x140017213:
 cmp rsi, rbp
 jae 0x1400172ea
 cmp qword ptr [rbx], 0x0
 jne 0x140017268
 mov ecx, 0x40
 call 0x14002d27c
 mov qword ptr [rsp+0x70], rax
 test rax, rax
 je 0x140017240
 mov rcx, rax
 call sub_14001bc00
 jmp 0x140017242

0x140017240:
 xor eax, eax

0x140017242:
 mov qword ptr [rbx], rax
 test r13b, r13b
 je 0x14001724f
 xor r9d, r9d
 jmp 0x140017253

0x14001724f:
 mov r9, qword ptr [rdi+0x58]

0x140017253:
 mov r8d, dword ptr [rdi+0x4c]
 mov edx, dword ptr [rdi+0x48]
 mov rcx, rax
 call sub_14001bc38
 mov r8d, 0x1

0x140017268:
 mov eax, dword ptr [rsp+0x80]
 mov dword ptr [rbx+0xc], eax
 mov rax, qword ptr [rsp+0x88]
 mov qword ptr [rbx+0x10], rax
 mov byte ptr [rbx+0x8], r13b
 mov qword ptr [rbx+0x18], rsi
 mov edx, r15d
 add rdx, rsi
 cmp rdx, rbp
 ja 0x14001729a
 lea ecx, [r14-1]
 cmp r12, rcx
 jne 0x14001729d

0x14001729a:
 mov rdx, rbp

0x14001729d:
 mov rax, rdx
 sub rax, rsi
 mov qword ptr [rbx+0x20], rax
 mov rsi, rdx
 cmp r14d, r8d
 jbe 0x1400172c5
 lea r8, [rbx-8]
 lea rdx, [0x14001716c]
 mov rcx, qword ptr [rdi+0x68]
 call sub_14001fe2c
 jmp 0x1400172d1

0x1400172c5:
 lea rdx, [rbx-8]
 mov rcx, rdi
 call sub_140016f04

0x1400172d1:
 mov r8d, 0x1
 add r12, r8
 add rbx, 0x30
 mov eax, r14d
 cmp r12, rax
 jb 0x140017213

0x1400172ea:
 mov rcx, qword ptr [rdi+0x68]
 mov rbx, qword ptr [rsp+0x78]
 add rsp, 0x30
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 jmp sub_14001fabc
 int3 
; --------------------------------------------------------------------------
; sub_140017308
; --------------------------------------------------------------------------
sub_140017308   proc
 mov rax, rsp
 sub rsp, 0x98
 and dword ptr [rax-0x18], 0x0
 mov dword ptr [rax-0x10], ecx
 lea rcx, [rax-0x78]
 mov dword ptr [rax-0x38], edx
 mov dword ptr [rax-0x14], 0x1
 call sub_140020600
 add rsp, 0x98
 ret 
sub_140017308   endp
 
; --------------------------------------------------------------------------
; sub_140017334
; --------------------------------------------------------------------------
sub_140017334   proc \
 arg_1 : qword ; [rsp+0x8]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_1], rcx
 push rbx
 sub rsp, 0x30
 mov qword ptr [local_1], -2
 mov rbx, rcx
 xor ecx, ecx
 mov qword ptr [rbx+0x800], rcx
 mov qword ptr [rbx+0x808], rcx
 mov qword ptr [rbx+0x810], rcx
 mov qword ptr [rbx+0x818], rcx
 mov edx, 0x4000000
 cmp rcx, rdx
 jae 0x140017383
 sub rdx, rcx
 lea rcx, [rbx+0x800]
 call sub_140001294
 jmp 0x14001738a

0x140017383:
 mov qword ptr [rbx+0x808], rdx

0x14001738a:
 xor edx, edx
 mov r8d, 0x800
 mov rcx, rbx
 call 0x14002d190
 call sub_14001fb14
 mov qword ptr [rbx+0x820], rax
 mov rax, rbx
 add rsp, 0x30
 pop rbx
 ret 
sub_140017334   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_1400173b0
; --------------------------------------------------------------------------
sub_1400173b0   proc \
 arg_1 : qword ; [rsp+0x8]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_1], rcx
 push rbx
 sub rsp, 0x30
 mov qword ptr [local_1], -2
 mov rbx, rcx
 and qword ptr [rcx], 0x0
 and qword ptr [rcx+0x8], 0x0
 and qword ptr [rcx+0x10], 0x0
 and qword ptr [rcx+0x18], 0x0
 and qword ptr [rcx+0x20], 0x0
 and dword ptr [rcx+0x48], 0x0
 and dword ptr [rcx+0x4c], 0x0
 and dword ptr [rcx+0x50], 0x0
 and qword ptr [rcx+0x40], 0x0
 lea rax, [rcx+0x78]
 mov ecx, 0x20

0x1400173f8:
 mov qword ptr [rax-8], rbx
 and qword ptr [rax], 0x0
 add rax, 0x30
 sub rcx, 0x1
 jne 0x1400173f8
 call sub_14001fb14
 mov qword ptr [rbx+0x68], rax
 and qword ptr [rbx+0x30], 0x0
 mov ecx, 0x4000010
 call 0x14002c914
 mov qword ptr [rbx+0x30], rax
 mov rcx, rax
 not rcx
 inc rcx
 and ecx, 0xf
 add rcx, rax
 mov qword ptr [rbx+0x38], rcx
 mov rax, rbx
 add rsp, 0x30
 pop rbx
 ret 
sub_1400173b0   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140017444
; --------------------------------------------------------------------------
sub_140017444   proc \
 arg_1 : qword ; [rsp+0xc0]

 local local_1[0x40]: byte ; [rsp+0x20]
 local local_2: qword ; [rsp+0x60]
 local local_3: qword ; [rsp+0x68]
 local local_4: dword ; [rsp+0x70]
 local local_5: dword ; [rsp+0x74]
 local local_6[0x40]: byte ; [rsp+0x78]

 mov r11, rsp
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 sub rsp, 0x80
 mov qword ptr [local_2], -2
 mov qword ptr [r11+0x18], rbx
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_6], rax
 mov r12b, r8b
 mov rsi, rdx
 mov rdi, rcx
 mov rax, qword ptr [rdx]
 mov r8d, 0x10
 lea rdx, [r11-0x40]
 mov rcx, rsi
 call qword ptr [rax+0x10]
 cmp eax, 0x10
 je 0x140017499
 xor eax, eax
 jmp 0x140017698

0x140017499:
 mov rax, qword ptr [local_3]
 cmp rax, qword ptr [0x14003db30]
 je 0x1400174ae
 xor eax, eax
 jmp 0x140017698

0x1400174ae:
 mov ebx, dword ptr [local_5]
 cmp ebx, 0x100000
 ja 0x140017696
 cmp ebx, 5
 jbe 0x140017696
 mov ebp, dword ptr [local_4]
 mov rdx, rsi
 lea rcx, [local_1]
 call sub_140016924
 nop 
 mov rdx, rbx
 lea rcx, [local_1]
 call sub_1400165d4
 cmp rax, rbx
 je 0x140017501
 mov rcx, qword ptr [local_1]
 test rcx, rcx
 je 0x1400174fa
 call sub_14002cfac

0x1400174fa:
 xor eax, eax
 jmp 0x140017698

0x140017501:
 mov r8d, 4
 lea rdx, [local_5]
 or ecx, 0xffffffff
 call sub_140009710
 mov r8, rbx
 mov rdx, qword ptr [local_1]
 mov ecx, eax
 call sub_140009710
 not eax
 cmp eax, ebp
 je 0x14001753f
 mov rcx, qword ptr [local_1]
 test rcx, rcx
 je 0x140017538
 call sub_14002cfac

0x140017538:
 xor eax, eax
 jmp 0x140017698

0x14001753f:
 lea rcx, [local_1]
 call sub_140016708
 cmp al, 0x1
 je 0x140017563
 mov rcx, qword ptr [local_1]
 test rcx, rcx
 je 0x14001755c
 call sub_14002cfac

0x14001755c:
 xor eax, eax
 jmp 0x140017698

0x140017563:
 lea rcx, [local_1]
 call 0x140016728
 movzx r11d, ax
 mov dword ptr [rdi+0x48], r11d
 lea rcx, [local_1]
 call 0x140016728
 movzx r11d, ax
 mov dword ptr [rdi+0x4c], r11d
 mov eax, dword ptr [rdi+0x48]
 lea ecx, [r11+rax]
 mov dword ptr [rdi+0x50], ecx
 lea rcx, [local_1]
 call 0x140016728
 movzx esi, ax
 cmp esi, dword ptr [rdi+0x50]
 jae 0x140017683
 cmp dword ptr [rdi+0x50], 0xffff
 ja 0x140017683
 lea rcx, [local_1]
 call 0x140016760
 mov r13d, eax
 test r12b, r12b
 je 0x14001765b
 mov rbx, qword ptr [rdi+0x8]
 mov ecx, dword ptr [rdi+0x50]
 cmp rcx, qword ptr [rdi+0x10]
 jbe 0x1400175e7
 sub rcx, rbx
 mov rdx, rcx
 mov rcx, rdi
 call sub_140016f98
 jmp 0x1400175eb

0x1400175e7:
 mov qword ptr [rdi+0x8], rcx

0x1400175eb:
 mov eax, dword ptr [rdi+0x50]
 cmp rbx, rax
 jae 0x140017617
 mov rcx, rbx
 imul rcx, rcx, 0x1020

0x1400175fd:
 mov rax, qword ptr [rdi]
 and qword ptr [rcx+rax], 0x0
 inc rbx
 add rcx, 0x1020
 mov eax, dword ptr [rdi+0x50]
 cmp rbx, rax
 jb 0x1400175fd

0x140017617:
 xor r12d, r12d
 cmp dword ptr [rdi+0x48], r12d
 jbe 0x14001765b
 xor ebp, ebp

0x140017622:
 mov rbx, qword ptr [rdi]
 lea rcx, [local_1]
 call sub_1400167a8
 mov qword ptr [rbx+rbp+0x1010], rax
 mov rbx, qword ptr [rdi]
 lea rcx, [local_1]
 call 0x140016760
 mov dword ptr [rbx+rbp+0x1008], eax
 inc r12d
 add rbp, 0x1020
 cmp r12d, dword ptr [rdi+0x48]
 jb 0x140017622

0x14001765b:
 mov rdx, rsi
 imul rdx, rdx, 0x1020
 mov rcx, qword ptr [rdi]
 mov dword ptr [rdx+rcx+0x1008], r13d
 mov rcx, qword ptr [local_1]
 test rcx, rcx
 je 0x14001767f
 call sub_14002cfac

0x14001767f:
 mov eax, esi
 jmp 0x140017698

0x140017683:
 mov rcx, qword ptr [local_1]
 test rcx, rcx
 je 0x140017692
 call sub_14002cfac

0x140017692:
 xor eax, eax
 jmp 0x140017698

0x140017696:
 xor eax, eax

0x140017698:
 mov rcx, qword ptr [local_6]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [arg_1]
 add rsp, 0x80
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
sub_140017444   endp
 

0x1400176bc:
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x7ca30
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x100], -2
 mov qword ptr [rsp+0x7ca88], rbx
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x7ca20], rax
 mov byte ptr [rsp+0x32], r9b
 mov rax, r8
 mov r12, rdx
 mov qword ptr [rsp+0x50], rdx
 mov r14, rcx
 mov qword ptr [rsp+0x48], rcx
 mov r13d, 0x800
 mov r8, r13
 mov rdx, rax
 lea rcx, [rsp+0x76a20]
 call sub_14001efc0
 lea rcx, [rsp+0x76a20]
 call sub_140013e3c
 mov rdi, rax
 xor ebx, ebx
 mov byte ptr [rsp+0x30], bl
 cmp rax, rbx
 je 0x1400178ff
 lea rdx, [0x14003dba8]
 mov rcx, rax
 call sub_140021464
 cmp eax, ebx
 jne 0x1400178ff
 mov bpl, 0x1
 mov byte ptr [rsp+0x31], bpl
 mov esi, ebx
 lea rax, [rsp+0x76a20]
 cmp rdi, rax
 jbe 0x1400177c3

0x140017779:
 cmp esi, 3
 jge 0x1400177c3
 movzx ecx, word ptr [rdi]
 call sub_14001ee50
 cmp al, bl
 jne 0x1400177ab
 movzx ecx, word ptr [rdi-2]
 call sub_14001ee50
 cmp al, bl
 je 0x1400177a6
 cmp word ptr [rdi], 0x5f
 je 0x1400177a2
 cmp esi, 2
 jge 0x1400177ab

0x1400177a2:
 inc esi
 jmp 0x1400177ab

0x1400177a6:
 cmp esi, 2
 jl 0x1400177be

0x1400177ab:
 sub rdi, 2
 lea rax, [rsp+0x76a20]
 cmp rdi, rax
 jbe 0x1400177c3
 jmp 0x140017779

0x1400177be:
 mov byte ptr [rsp+0x30], 0x1

0x1400177c3:
 movzx ecx, word ptr [rdi]
 call sub_14001ee50
 cmp al, bl
 je 0x1400177ec

0x1400177cf:
 lea rax, [rsp+0x76a22]
 cmp rdi, rax
 jbe 0x1400177ec
 sub rdi, 2
 movzx ecx, word ptr [rdi]
 call sub_14001ee50
 cmp al, bl
 jne 0x1400177cf

0x1400177ec:
 lea rcx, [0x14003dba0]
 sub rdi, rcx

0x1400177f6:
 movzx eax, word ptr [rcx]
 mov word ptr [rdi+rcx], ax
 add rcx, 2
 cmp ax, bx
 jne 0x1400177f6
 lea rcx, [rsp+0x58e10]
 call sub_140011048
 nop 
 lea rdx, [rsp+0x76a20]
 lea rcx, [rsp+0x58e10]
 call sub_14001107c
 mov qword ptr [rsp+0x78a30], rbx
 mov qword ptr [rsp+0x78a38], rbx
 mov qword ptr [rsp+0x78a40], rbx
 xor r8d, r8d
 lea rdx, [rsp+0x77a20]
 lea rcx, [rsp+0x58e10]
 call sub_140011240
 cmp al, bl
 je 0x1400178f0

0x140017861:
 mov rdx, r12
 lea rcx, [rsp+0x693e0]
 call sub_1400020bc
 nop 
 lea rdx, [rsp+0x77a20]
 lea rcx, [rsp+0x693e0]
 call sub_14000f43c
 cmp al, bl
 je 0x14001789e
 mov dl, 0x1
 lea rcx, [rsp+0x693e0]
 call 0x14000164c
 cmp al, bl
 jne 0x1400178c9

0x14001789e:
 lea rcx, [rsp+0x693e0]
 call 0x140001360
 xor r8d, r8d
 lea rdx, [rsp+0x77a20]
 lea rcx, [rsp+0x58e10]
 call sub_140011240
 cmp al, bl
 je 0x1400178f0
 jmp 0x140017861

0x1400178c9:
 mov r8, r13
 lea rdx, [rsp+0x77a20]
 lea rcx, [rsp+0x76a20]
 call sub_14001efc0
 nop 
 lea rcx, [rsp+0x693e0]
 call 0x140001360
 nop 

0x1400178f0:
 lea rcx, [rsp+0x58e10]
 call sub_140011060
 jmp 0x140017906

0x1400178ff:
 mov bpl, bl
 mov byte ptr [rsp+0x31], bl

0x140017906:
 mov rdx, r12
 lea rcx, [rsp+0x5bea0]
 call sub_1400020bc
 nop 
 lea rdx, [rsp+0x76a20]
 lea rcx, [rsp+0x5bea0]
 call sub_14000231c
 cmp al, bl
 jne 0x140017944
 lea rcx, [rsp+0x5bea0]
 call 0x140001360
 xor al, al
 jmp 0x140018685

0x140017944:
 cmp byte ptr [rsp+0x68395], bl
 jne 0x140017974
 lea rdx, [rsp+0x76a20]
 mov ecx, 0x2e
 call sub_140001454
 nop 
 lea rcx, [rsp+0x5bea0]
 call 0x140001360
 xor al, al
 jmp 0x140018685

0x140017974:
 mov dil, byte ptr [rsp+0x6839a]
 mov byte ptr [rsp+0x33], dil
 lea rcx, [rsp+0x5bea0]
 call sub_14000f5d0
 mov r9b, dil
 mov r8, r13
 lea rdx, [rsp+0x76a20]
 lea rcx, [rsp+0x76a20]
 call 0x140014d54
 mov rdi, rax
 mov r8, r13
 lea rdx, [rsp+0x76a20]
 lea rcx, [rsp+0x7ba20]
 call sub_14001efc0
 lea r11, [rsp+0x76a20]
 sub rdi, r11
 sar rdi, 0x1
 mov qword ptr [rsp+0x58], rdi
 mov r8, r13
 sub r8, rdi
 lea rcx, [rsp+rdi*2+0x7ba20]
 lea rdx, [0x14003db90]
 call sub_14001efc0
 mov qword ptr [rsp+0x78], rbx
 mov r13b, bl
 lea rcx, [rsp+0x5ae90]
 call sub_140011048
 nop 
 lea rdx, [rsp+0x7ba20]
 lea rcx, [rsp+0x5ae90]
 call sub_14001107c
 mov qword ptr [rsp+0x5ae50], rbx
 mov qword ptr [rsp+0x5ae58], rbx
 mov qword ptr [rsp+0x5ae60], rbx
 mov esi, ebx
 mov dword ptr [rsp+0x34], ebx
 mov dword ptr [rsp+0x40], ebx
 mov r15d, ebx
 mov dword ptr [rsp+0x3c], ebx
 xor r8d, r8d
 lea rdx, [rsp+0x59e40]
 lea rcx, [rsp+0x5ae90]
 call sub_140011240
 cmp al, bl
 je 0x140017dd2
 mov r12d, 0x2e

0x140017a6b:
 cmp bpl, bl
 jne 0x140017ad1
 mov dil, byte ptr [rsp+0x30]
 cmp dil, bl
 jne 0x140017adf
 mov byte ptr [rsp+0x30], 0x1
 lea rcx, [rsp+0x59e40]
 call sub_140013e3c
 cmp rax, rbx
 je 0x140017adf
 mov ecx, ebx
 sub rax, 2
 lea rdx, [rsp+0x59e40]
 cmp rax, rdx
 jbe 0x140017adf

0x140017aa4:
 cmp word ptr [rax], r12w
 je 0x140017ac3
 cmp word ptr [rax], 0x5f
 jne 0x140017ab2
 inc ecx

0x140017ab2:
 sub rax, 2
 lea rdx, [rsp+0x59e40]
 cmp rax, rdx
 ja 0x140017aa4

0x140017ac3:
 cmp ecx, 2
 jne 0x140017adf
 mov dil, bl
 mov byte ptr [rsp+0x30], bl
 jmp 0x140017ad6

0x140017ad1:
 mov dil, byte ptr [rsp+0x30]

0x140017ad6:
 cmp dil, bl
 je 0x140017c30

0x140017adf:
 cmp r13b, bl
 jne 0x140017b0d
 mov dword ptr [rsp+0xf0], ebx
 mov dword ptr [rsp+0xf4], ebx
 mov dword ptr [rsp+0xf8], 0x6e
 lea rcx, [rsp+0x90]
 call sub_140020600
 mov r13b, 0x1

0x140017b0d:
 lea rdx, [rsp+0x59e40]
 mov ecx, 0x5d
 call sub_140001454
 lea rcx, [rsp+0x58e10]
 call sub_14000f274
 nop 
 lea rdx, [rsp+0x59e40]
 lea rcx, [rsp+0x58e10]
 call sub_14000f980
 xor edx, edx
 lea r8d, [rdx+2]
 lea rcx, [rsp+0x58e10]
 call sub_14000fd98
 lea rcx, [rsp+0x58e10]
 call 0x14000f830
 mov rbp, rax
 lea rdx, [rax-7]
 xor r8d, r8d
 lea rcx, [rsp+0x58e10]
 call sub_14000fd98
 lea rdi, [rsp+0x68]
 mov esi, 3

0x140017b83:
 lea rcx, [rsp+0x58e10]
 call sub_14000f8bc
 movzx edx, al
 inc edx
 mov dword ptr [rdi], edx
 sub rdi, 4
 sub rsi, 0x1
 jne 0x140017b83
 mov esi, ebx
 mov edi, ebx

0x140017ba5:
 lea rcx, [rsp+0x58e10]
 call sub_14000f8bc
 movzx edx, al
 mov ecx, edi
 shl edx, cl
 or esi, edx
 add edi, 8
 cmp edi, 0x20
 jl 0x140017ba5
 lea rax, [rbp-4]
 mov dword ptr [rsp+0x28], ebx
 mov qword ptr [rsp+0x20], rax
 mov rax, qword ptr [rsp+0x50]
 mov r9d, dword ptr [rax+0x83b8]
 xor r8d, r8d
 lea rdx, [rsp+0x38]
 lea rcx, [rsp+0x58e10]
 call 0x14001074c
 cmp esi, dword ptr [rsp+0x38]
 je 0x140017c21
 lea rdx, [rsp+0x59e40]
 mov ecx, 0x73
 call sub_140001454
 nop 
 lea rcx, [rsp+0x58e10]
 call sub_14000f94c
 mov bpl, byte ptr [rsp+0x31]
 jmp 0x140017d70

0x140017c21:
 lea rcx, [rsp+0x58e10]
 call sub_14000f94c
 jmp 0x140017ca3

0x140017c30:
 lea rcx, [rsp+0x59e40]
 call sub_140013e3c
 mov rdi, rax
 cmp rax, rbx
 je 0x140017d70
 mov bpl, bl
 mov rsi, rbx
 mov r14, qword ptr [rsp+0x58]

0x140017c54:
 sub rdi, 2
 movzx ecx, word ptr [rdi]
 call sub_14001ee50
 cmp al, bl
 je 0x140017c71
 lea rax, [rsp+r14*2+0x59e40]
 cmp rdi, rax
 jae 0x140017c54

0x140017c71:
 lea rcx, [rdi+2]
 call 0x1400215ec
 mov dword ptr [rsp+rsi*4+0x60], eax
 cmp eax, ebx
 je 0x140017c89
 cmp eax, 0xff
 jle 0x140017c8c

0x140017c89:
 mov bpl, 0x1

0x140017c8c:
 inc rsi
 cmp rsi, 3
 jb 0x140017c54
 mov r14, qword ptr [rsp+0x48]
 cmp bpl, bl
 jne 0x140017d64

0x140017ca3:
 movsxd rsi, dword ptr [rsp+0x68]
 mov ecx, dword ptr [rsp+0x64]
 lea eax, [rsi+rcx]
 cmp eax, 0xff
 jg 0x140017d5d
 mov eax, dword ptr [rsp+0x40]
 cmp eax, ebx
 je 0x140017cca
 cmp eax, ecx
 jne 0x140017d91

0x140017cca:
 mov eax, dword ptr [rsp+0x34]
 cmp eax, ebx
 je 0x140017cda
 cmp eax, esi
 jne 0x140017d91

0x140017cda:
 mov dword ptr [rsp+0x40], ecx
 mov dword ptr [rsp+0x34], esi
 mov rcx, rbx

0x140017ce5:
 movzx eax, word ptr [rsp+rcx+0x59e40]
 mov word ptr [rsp+rcx+0x7aa20], ax
 add rcx, 2
 cmp ax, bx
 jne 0x140017ce5
 mov ecx, 0x1030
 call 0x14002d27c
 mov qword ptr [rsp+0x70], rax
 cmp rax, rbx
 je 0x140017d1f
 mov rcx, rax
 call sub_14000f274
 mov rdi, rax
 jmp 0x140017d22

0x140017d1f:
 mov rdi, rbx

0x140017d22:
 lea rdx, [rsp+0x59e40]
 mov rcx, rdi
 call sub_14000f980
 movsxd rdx, dword ptr [rsp+0x60]
 add rdx, rsi
 mov qword ptr [r14+rdx*8-8], rdi
 inc r15d
 cmp qword ptr [rsp+0x78], rbx
 jne 0x140017d6b
 mov rcx, rdi
 call sub_14000fb48
 mov qword ptr [rsp+0x78], rax
 mov bpl, byte ptr [rsp+0x31]
 jmp 0x140017d70

0x140017d5d:
 mov bpl, byte ptr [rsp+0x31]
 jmp 0x140017d70

0x140017d64:
 mov bpl, byte ptr [rsp+0x31]
 jmp 0x140017d70

0x140017d6b:
 mov bpl, byte ptr [rsp+0x31]

0x140017d70:
 xor r8d, r8d
 lea rdx, [rsp+0x59e40]
 lea rcx, [rsp+0x5ae90]
 call sub_140011240
 cmp al, bl
 je 0x140017dce
 jmp 0x140017a6b

0x140017d91:
 lea r8, [rsp+0x7aa20]
 lea rdx, [rsp+0x59e40]
 mov ecx, 0x31
 call sub_1400014b8
 nop 
 lea rcx, [rsp+0x5ae90]
 call sub_140011060
 nop 
 lea rcx, [rsp+0x5bea0]
 call 0x140001360
 xor al, al
 jmp 0x140018685

0x140017dce:
 mov esi, dword ptr [rsp+0x34]

0x140017dd2:
 cmp byte ptr [rsp+0x32], bl
 je 0x140017ddd
 cmp r15d, ebx
 je 0x140017def

0x140017ddd:
 mov edx, r15d
 mov ecx, 0x6f
 call sub_140017308
 cmp r15d, ebx
 jne 0x140017e11

0x140017def:
 lea rcx, [rsp+0x5ae90]
 call sub_140011060
 nop 
 lea rcx, [rsp+0x5bea0]
 call 0x140001360
 xor al, al
 jmp 0x140018685

0x140017e11:
 xor edx, edx
 mov r8d, 0x100
 lea rcx, [rsp+0x76920]
 call 0x14002d190
 mov word ptr [rsp+0x79a20], bx
 mov r13d, ebx
 mov r12, rbx
 movsxd rdi, esi
 mov qword ptr [rsp+0x58], rdi
 or qword ptr [rsp+0x80], 0xffffffffffffffff
 cmp rdi, rbx
 jle 0x140018109

0x140017e4e:
 mov ecx, 0xd540
 call 0x14002d27c
 mov qword ptr [rsp+0x70], rax
 cmp rax, rbx
 je 0x140017e74
 mov rdx, qword ptr [rsp+0x50]
 mov rcx, rax
 call sub_1400020bc
 mov rsi, rax
 jmp 0x140017e77

0x140017e74:
 mov rsi, rbx

0x140017e77:
 lea rcx, [rsp+0x76a20]
 call sub_1400104f4
 cmp al, bl
 je 0x140017ff6
 lea rdx, [rsp+0x76a20]
 mov rcx, rsi
 call sub_14000f980
 xor edx, edx
 mov rcx, rsi
 call 0x14000164c
 mov bpl, al
 cmp al, bl
 je 0x140017f52
 mov rcx, rsi
 call sub_140004df0
 cmp rax, rbx
 je 0x140017f49

0x140017ec2:
 cmp dword ptr [rsi+0x6854], 5
 je 0x140017ee2
 mov rcx, rsi
 call 0x1400010e0
 mov rcx, rsi
 call sub_140004df0
 cmp rax, rbx
 jne 0x140017ec2
 jmp 0x140017f49

0x140017ee2:
 lea rdx, [rsp+0x76a20]
 mov ecx, 0x5d
 call sub_140001454
 cmp byte ptr [rsi+0x9d8d], bl
 je 0x140017f49
 mov dword ptr [rsp+0x28], ebx
 mov rax, qword ptr [rsi+0xc4e0]
 mov qword ptr [rsp+0x20], rax
 mov rax, qword ptr [rsp+0x50]
 mov r9d, dword ptr [rax+0x83b8]
 xor r8d, r8d
 lea rdx, [rsp+0x38]
 mov rcx, rsi
 call 0x14001074c
 mov edx, dword ptr [rsp+0x38]
 cmp dword ptr [rsi+0x9d84], edx
 je 0x140017f49
 mov bpl, bl
 lea rdx, [rsp+0x76a20]
 mov ecx, 0x73
 call sub_140001454

0x140017f49:
 cmp bpl, bl
 jne 0x140017fe3

0x140017f52:
 mov rcx, rsi
 call sub_14000f5d0
 mov rdx, rbx

0x140017f5d:
 movzx eax, word ptr [rsp+rdx+0x76a20]
 mov word ptr [rsp+rdx+0x58e10], ax
 add rdx, 2
 cmp ax, bx
 jne 0x140017f5d
 lea rdi, [rsp+0x58e10]
 xor eax, eax
 or rcx, 0xffffffffffffffff
 repne scasd eax, dword ptr [rdi]
 mov rax, qword ptr [0x14003db80]
 mov qword ptr [rdi-2], rax
 movzx eax, word ptr [0x14003db88]
 mov word ptr [rdi+6], ax
 lea rdx, [rsp+0x76a20]
 mov ecx, 0x6b
 call sub_140001454
 lea r8, [rsp+0x58e10]
 lea rdx, [rsp+0x76a20]
 mov ecx, 0x6d
 call sub_1400014b8
 lea rdx, [rsp+0x58e10]
 lea rcx, [rsp+0x76a20]
 call 0x1400100d4
 mov rdi, qword ptr [rsp+0x58]

0x140017fe3:
 mov rax, qword ptr [rsi]
 xor r8d, r8d
 xor edx, edx
 mov rcx, rsi
 call qword ptr [rax+0x18]
 cmp bpl, bl
 jne 0x14001806c

0x140017ff6:
 mov r8d, 0x12
 lea rdx, [rsp+0x76a20]
 mov rcx, rsi
 call 0x14000f470
 cmp al, bl
 je 0x14001809f
 mov byte ptr [rsp+r12+0x76920], 0x1
 inc dword ptr [rsp+0x3c]
 mov eax, dword ptr [rsp+0x34]
 dec eax
 cmp r13d, eax
 jne 0x140018048
 mov rcx, rbx

0x14001802f:
 movzx eax, word ptr [rsp+rcx+0x76a20]
 mov word ptr [rsp+rcx+0x79a20], ax
 add rcx, 2
 cmp ax, bx
 jne 0x14001802f

0x140018048:
 lea rdx, [rsp+0x76a20]
 mov ecx, 0x71
 call sub_140001454
 lea rdx, [rsp+0x76a20]
 mov ecx, 0x89
 call sub_140001454

0x14001806c:
 mov qword ptr [r14+r12*8], rsi
 cmp byte ptr [rsp+0x33], bl
 sete r8b
 mov edx, 0x800
 lea rcx, [rsp+0x76a20]
 call sub_140014188
 inc r13d
 inc r12
 cmp r12, rdi
 jl 0x140017e4e
 mov esi, dword ptr [rsp+0x34]
 jmp 0x140018109

0x14001809f:
 mov edx, r15d
 mov ecx, 0x33
 call sub_140017308
 mov dword ptr [rsp+0xf0], ebx
 mov dword ptr [rsp+0xf4], ebx
 mov dword ptr [rsp+0xf8], 0x34
 lea rcx, [rsp+0x90]
 call sub_140020600
 lea rdx, [rsp+0x76a20]
 lea rcx, [0x140050e70]
 call 0x14000b4fc
 nop 
 lea rcx, [rsp+0x5ae90]
 call sub_140011060
 nop 
 lea rcx, [rsp+0x5bea0]
 call 0x140001360
 xor al, al
 jmp 0x140018685

0x140018109:
 mov edi, dword ptr [rsp+0x3c]
 mov edx, edi
 mov ecx, 0x70
 call sub_140017308
 cmp edi, ebx
 jne 0x140018166
 mov dword ptr [rsp+0xf0], ebx
 mov dword ptr [rsp+0xf4], ebx
 mov dword ptr [rsp+0xf8], 0x32
 lea rcx, [rsp+0x90]
 call sub_140020600
 nop 
 lea rcx, [rsp+0x5ae90]
 call sub_140011060
 nop 
 lea rcx, [rsp+0x5bea0]
 call 0x140001360
 xor al, al
 jmp 0x140018685

0x140018166:
 cmp edi, r15d
 jle 0x1400181b2
 mov edx, r15d
 mov ecx, 0x33
 call sub_140017308
 mov dword ptr [rsp+0xf0], ebx
 mov dword ptr [rsp+0xf4], ebx
 mov dword ptr [rsp+0xf8], 0x35
 lea rcx, [rsp+0x90]
 call sub_140020600
 nop 
 lea rcx, [rsp+0x5ae90]
 call sub_140011060
 nop 
 jmp 0x140018676

0x1400181b2:
 mov dword ptr [rsp+0xf0], ebx
 mov dword ptr [rsp+0xf4], ebx
 mov dword ptr [rsp+0xf8], 0x72
 lea rcx, [rsp+0x90]
 call sub_140020600
 mov ebp, dword ptr [rsp+0x40]
 lea r12d, [rbp+rsi]
 mov edi, ebx
 mov dword ptr [rsp+0x38], ebx
 mov edx, ebx
 mov rax, rbx
 movsxd r15, r12d
 mov qword ptr [rsp+0x60], r15
 cmp r15, rbx
 jle 0x140018226
 lea rcx, [rsp+0x110]

0x140018201:
 cmp byte ptr [rsp+rax+0x76920], bl
 jne 0x140018210
 cmp qword ptr [r14+rax*8], rbx
 jne 0x140018218

0x140018210:
 mov dword ptr [rcx], edx
 inc edi
 add rcx, 4

0x140018218:
 inc edx
 inc rax
 cmp rax, r15
 jl 0x140018201
 mov dword ptr [rsp+0x38], edi

0x140018226:
 mov qword ptr [rsp+0x88], rbx
 lea rcx, [0x14003d078]
 call sub_140008e10
 xor edx, edx
 mov eax, 0x4000000
 div r15
 mov r14, rax
 mov rax, qword ptr [rsp+0x50]
 mov eax, dword ptr [rax+0x83b8]
 mov dword ptr [rsp+0x3c], eax
 cmp eax, ebx
 jbe 0x14001827c
 lea rdi, [rsp+0x510]
 mov rsi, rax

0x140018265:
 mov edx, ebp
 mov rcx, rdi
 call 0x14001b490
 add rdi, 0x2c48
 sub rsi, 0x1
 jne 0x140018265

0x14001827c:
 call 0x14001f5e0
 mov esi, ebx
 mov ebp, ebx
 mov rdi, rbx
 cmp r15, rbx
 jle 0x1400184ae
 mov r13, qword ptr [rsp+0x48]

0x140018296:
 cmp byte ptr [rsp+rdi+0x76920], bl
 jne 0x140018306
 mov rcx, qword ptr [rsp+0x48]
 cmp qword ptr [rcx+rdi*8], rbx
 je 0x140018303
 movsxd r13, ebp
 imul r13, r14
 mov rax, qword ptr [rcx+0x800]
 lea rdx, [r13+rax]
 mov rcx, qword ptr [rcx+rdi*8]
 mov rax, qword ptr [rcx]
 mov r8, r14
 call qword ptr [rax+0x10]
 movsxd r12, eax
 mov rax, r12
 cmp r12, r14
 je 0x1400182f4
 mov r8, r14
 sub r8, rax
 lea rcx, [r12+r13]
 mov r13, qword ptr [rsp+0x48]
 add rcx, qword ptr [r13+0x800]
 xor edx, edx
 call 0x14002d190
 jmp 0x1400182f9

0x1400182f4:
 mov r13, qword ptr [rsp+0x48]

0x1400182f9:
 cmp r12d, esi
 jle 0x14001831e
 mov esi, r12d
 jmp 0x14001831e

0x140018303:
 mov r13, rcx

0x140018306:
 movsxd rcx, ebp
 imul rcx, r14
 add rcx, qword ptr [r13+0x800]
 mov r8, r14
 xor edx, edx
 call 0x14002d190

0x14001831e:
 inc ebp
 inc rdi
 cmp rdi, r15
 jl 0x140018296
 cmp esi, ebx
 je 0x1400184ae
 mov r12, qword ptr [rsp+0x78]
 mov rdx, r12
 mov rbp, qword ptr [rsp+0x88]
 mov rcx, rbp
 call 0x14001ed44
 mov edi, eax
 mov rax, qword ptr [rsp+0x50]
 cmp byte ptr [rax+0x6150], bl
 jne 0x14001837d
 cmp edi, dword ptr [rsp+0x80]
 je 0x14001837d
 mov r8, r12
 mov rdx, rbp
 lea rcx, [0x14003db7c]
 call 0x1400205dc
 mov dword ptr [rsp+0x80], edi

0x14001837d:
 movsxd rax, esi
 mov qword ptr [rsp+0x70], rax
 add rbp, rax
 mov qword ptr [rsp+0x88], rbp
 mov r12d, ebx
 xor edx, edx
 mov eax, esi
 div dword ptr [rsp+0x3c]
 mov ebp, eax
 cmp eax, 0x100
 cmovl ebp, esi
 mov r13d, ebx
 cmp esi, ebx
 jle 0x140018451
 mov r15d, dword ptr [rsp+0x3c]
 lea ebx, [r15-1]
 lea rdi, [rsp+0x3130]

0x1400183c1:
 cmp r13d, ebx
 jne 0x1400183cb
 mov ebp, esi
 sub ebp, r12d

0x1400183cb:
 mov rcx, qword ptr [rsp+0x48]
 mov rax, qword ptr [rcx+0x800]
 mov qword ptr [rdi-0x10], rax
 mov dword ptr [rdi], r12d
 add r12d, ebp
 mov dword ptr [rdi+4], r12d
 mov edx, dword ptr [rsp+0x34]
 mov eax, dword ptr [rsp+0x40]
 add eax, edx
 mov dword ptr [rdi+0x8], eax
 mov qword ptr [rdi+0x10], r14
 lea rax, [rsp+0x110]
 mov qword ptr [rdi+0x18], rax
 mov eax, dword ptr [rsp+0x38]
 mov dword ptr [rdi+0x20], eax
 cmp r15d, 0x1
 jbe 0x14001842b
 lea r8, [rdi-0x2c20]
 lea rdx, [0x14001703c]
 mov rcx, qword ptr [rcx+0x820]
 call sub_14001fe2c
 jmp 0x140018437

0x14001842b:
 lea rcx, [rdi-0x2c20]
 call 0x140016df0

0x140018437:
 inc r13d
 add rdi, 0x2c48
 cmp r12d, esi
 jl 0x1400183c1
 xor ebx, ebx
 mov r15, qword ptr [rsp+0x60]

0x140018451:
 mov r12, qword ptr [rsp+0x48]
 mov rcx, qword ptr [r12+0x820]
 call sub_14001fabc
 mov esi, ebx
 mov rdi, rbx
 mov r13, qword ptr [rsp+0x58]
 cmp r13, rbx
 jle 0x14001827c
 mov rbp, qword ptr [rsp+0x70]

0x14001847b:
 cmp byte ptr [rsp+rdi+0x76920], bl
 je 0x14001849f
 movsxd rdx, esi
 imul rdx, r14
 add rdx, qword ptr [r12+0x800]
 mov r8, rbp
 mov rcx, qword ptr [r12+rdi*8]
 call sub_14000f66c

0x14001849f:
 inc esi
 inc rdi
 cmp rdi, r13
 jl 0x14001847b
 jmp 0x14001827c

0x1400184ae:
 mov eax, dword ptr [rsp+0x34]
 mov r12d, dword ptr [rsp+0x40]
 add r12d, eax
 cmp r12d, ebx
 jle 0x14001852b
 lea rbp, [rsp+0x76920]
 mov r13, qword ptr [rsp+0x48]
 mov r14b, byte ptr [rsp+0x30]

0x1400184d1:
 mov rsi, qword ptr [r13]
 cmp rsi, rbx
 je 0x14001851e
 cmp r14b, bl
 je 0x140018512
 cmp byte ptr [rbp], bl
 je 0x140018512
 mov rax, qword ptr [rsi]
 mov rcx, rsi
 call qword ptr [rax+0x20]
 mov rdi, qword ptr [rsi]
 lea rdx, [rax-7]
 xor r8d, r8d
 mov rcx, rsi
 call qword ptr [rdi+0x18]
 mov edi, 7

0x140018502:
 xor edx, edx
 mov rcx, rsi
 call sub_14000f8e0
 sub rdi, 0x1
 jne 0x140018502

0x140018512:
 mov rcx, rsi
 call sub_14000f5d0
 mov qword ptr [r13], rbx

0x14001851e:
 inc rbp
 add r13, 8
 sub r12, 0x1
 jne 0x1400184d1

0x14001852b:
 cmp word ptr [rsp+0x79a20], bx
 je 0x140018627
 mov rdx, qword ptr [rsp+0x50]
 lea rcx, [rsp+0x693e0]
 call sub_1400020bc
 nop 
 mov r8d, 0x1
 lea rdx, [rsp+0x79a20]
 lea rcx, [rsp+0x693e0]
 call 0x140001448
 cmp al, bl
 je 0x14001861a
 mov dl, 0x1
 lea rcx, [rsp+0x693e0]
 call 0x14000164c
 cmp al, bl
 je 0x14001861a
 mov edx, 5
 lea rcx, [rsp+0x693e0]
 call 0x140004e78
 cmp rax, rbx
 je 0x14001861a
 xor r8d, r8d
 mov rdx, qword ptr [rsp+0x758c8]
 lea rcx, [rsp+0x693e0]
 call sub_140001178
 mov r8d, 0x2000
 lea rdx, [rsp+0x77a20]
 lea rcx, [rsp+0x693e0]
 call sub_140001124
 mov edx, ebx
 mov rcx, rbx
 movsxd rdi, eax
 cmp rdi, rbx
 jle 0x1400185f0

0x1400185dd:
 cmp byte ptr [rsp+rcx+0x77a20], bl
 jne 0x1400185f0
 inc edx
 inc rcx
 cmp rcx, rdi
 jl 0x1400185dd

0x1400185f0:
 cmp edx, eax
 jne 0x14001861a
 xor r8d, r8d
 mov rdx, qword ptr [rsp+0x758c8]
 lea rcx, [rsp+0x693e0]
 call sub_140001178
 lea rcx, [rsp+0x693e0]
 call sub_14000f900
 nop 

0x14001861a:
 lea rcx, [rsp+0x693e0]
 call 0x140001360

0x140018627:
 mov rax, qword ptr [rsp+0x50]
 cmp byte ptr [rax+0x6150], bl
 jne 0x140018645
 lea rcx, [0x14003db68]
 call sub_140008e10
 mov rax, qword ptr [rsp+0x50]

0x140018645:
 cmp byte ptr [rsp+0x32], bl
 jne 0x140018666
 cmp byte ptr [rax+0x6152], bl
 jne 0x140018666
 mov ecx, 0xd1a
 call sub_140019e20
 mov rcx, rax
 call sub_140008e10
 nop 

0x140018666:
 lea rcx, [rsp+0x5ae90]
 call sub_140011060
 nop 
 mov bl, 0x1

0x140018676:
 lea rcx, [rsp+0x5bea0]
 call 0x140001360
 mov al, bl

0x140018685:
 mov rcx, qword ptr [rsp+0x7ca20]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x7ca88]
 add rsp, 0x7ca30
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 

0x1400186b0:
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x51c0
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x100], -2
 mov qword ptr [rsp+0x5210], rbx
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x51b0], rax
 mov byte ptr [rsp+0x40], r9b
 mov r15, rdx
 mov qword ptr [rsp+0x48], rdx
 mov rbp, rcx
 lea rcx, [rsp+0x21b0]
 sub rcx, r8
 xor esi, esi

0x14001870c:
 movzx eax, word ptr [r8]
 mov word ptr [rcx+r8], ax
 add r8, 2
 cmp ax, si
 jne 0x14001870c
 lea rcx, [rsp+0x21b0]
 call sub_1400140cc
 mov rdi, rax
 lea rax, [rsp+0x21b0]
 cmp rdi, rax
 jbe 0x14001875c

0x14001873b:
 lea rbx, [rdi-2]
 movzx ecx, word ptr [rbx]
 call sub_14001ee50
 cmp al, sil
 je 0x14001875c
 mov rdi, rbx
 lea rax, [rsp+0x21b0]
 cmp rbx, rax
 ja 0x14001873b

0x14001875c:
 lea rcx, [rsp+0x21b0]
 mov rax, rdi
 sub rax, rcx
 sar rax, 0x1
 mov r8d, 0x800
 sub r8, rax
 lea rdx, [0x14003dba0]
 mov rcx, rdi
 call sub_14001efc0
 mov word ptr [rsp+0x31b0], si
 mov qword ptr [rsp+0x78], rsi
 lea rcx, [rsp+0x11a0]
 call sub_140011048
 nop 
 lea rdx, [rsp+0x21b0]
 lea rcx, [rsp+0x11a0]
 call sub_14001107c
 mov qword ptr [rsp+0x1160], rsi
 mov qword ptr [rsp+0x1168], rsi
 mov qword ptr [rsp+0x1170], rsi
 mov r12d, esi
 xor r8d, r8d
 lea rdx, [rsp+0x150]
 lea rcx, [rsp+0x11a0]
 call sub_140011240
 or qword ptr [rsp+0x60], 0xffffffffffffffff
 cmp al, sil
 je 0x140018a73

0x1400187f7:
 call 0x14001f5e0
 mov ecx, 0xd540
 call 0x14002d27c
 mov qword ptr [rsp+0x58], rax
 cmp rax, rsi
 je 0x140018820
 mov rdx, r15
 mov rcx, rax
 call sub_1400020bc
 mov rdi, rax
 jmp 0x140018823

0x140018820:
 mov rdi, rsi

0x140018823:
 lea rdx, [rsp+0x150]
 mov rcx, rdi
 call sub_14000f43c
 cmp al, sil
 je 0x140018a18
 lea rdx, [0x14003dbe8]
 lea rcx, [rsp+0x150]
 call sub_140013e60
 cmp al, sil
 je 0x14001888b
 cmp r12d, esi
 sete r8b
 mov rdx, rdi
 mov rcx, rbp
 call sub_140017444
 mov ebx, eax
 cmp eax, esi
 je 0x140018a18
 cmp r12d, esi
 jne 0x140018883
 mov rcx, rdi
 call sub_14000fb48
 mov qword ptr [rsp+0x78], rax

0x140018883:
 inc r12d
 jmp 0x1400189da

0x14001888b:
 mov dl, 0x1
 mov rcx, rdi
 call 0x14000164c
 cmp al, sil
 je 0x140018a18
 cmp qword ptr [rdi+0xc500], rsi
 ja 0x1400188c4
 lea rdx, [0x14003d0b0]
 lea rcx, [rsp+0x150]
 call sub_140013e60
 cmp al, sil
 je 0x140018a18

0x1400188c4:
 cmp byte ptr [rdi+0xc4f5], sil
 jne 0x1400188da
 cmp byte ptr [rdi+0xc508], sil
 je 0x140018a4c

0x1400188da:
 mov byte ptr [rdi+0x7950], sil
 mov rax, qword ptr [rdi]
 xor r8d, r8d
 xor edx, edx
 mov rcx, rdi
 call qword ptr [rax+0x18]
 lea rcx, [rsp+0x150]
 call sub_1400140cc
 mov rbx, rax
 mov r13d, esi
 mov r14d, 0x1
 lea rax, [rsp+0x150]
 cmp rbx, rax
 jb 0x140018a2a

0x140018919:
 movzx ecx, word ptr [rbx]
 call sub_14001ee50
 cmp al, sil
 je 0x14001894b
 movzx eax, word ptr [rbx]
 sub eax, 0x30
 imul eax, r14d
 add r13d, eax
 lea r14d, [r14+r14*4]
 add r14d, r14d
 sub rbx, 2
 lea rax, [rsp+0x150]
 cmp rbx, rax
 jae 0x140018919

0x14001894b:
 cmp r13d, esi
 je 0x140018a2a
 cmp r13d, 0xffff
 ja 0x140018a2a
 mov r14, qword ptr [rbp+0x8]
 mov ebx, r13d
 cmp rbx, r14
 jbe 0x1400189ae
 cmp rbx, qword ptr [rbp+0x10]
 jbe 0x140018983
 mov rdx, rbx
 sub rdx, r14
 mov rcx, rbp
 call sub_140016f98
 jmp 0x140018987

0x140018983:
 mov qword ptr [rbp+0x8], rbx

0x140018987:
 cmp r14, rbx
 jae 0x1400189ae
 mov rcx, r14
 imul rcx, rcx, 0x1020
 sub rbx, r14

0x140018999:
 mov rax, qword ptr [rbp]
 mov qword ptr [rcx+rax], rsi
 add rcx, 0x1020
 sub rbx, 0x1
 jne 0x140018999

0x1400189ae:
 lea ebx, [r13-1]
 cmp word ptr [rsp+0x31b0], si
 jne 0x1400189da
 mov r9b, 0x1
 mov r8d, 0x800
 lea rdx, [rsp+0x31b0]
 lea rcx, [rsp+0x150]
 call 0x140014d54

0x1400189da:
 cmp ebx, 0xff
 je 0x140018a18
 mov eax, ebx
 cmp rax, qword ptr [rbp+0x8]
 jae 0x140018a2a
 movsxd rcx, ebx
 imul rcx, rcx, 0x1020
 add rcx, qword ptr [rbp]
 mov qword ptr [rcx], rdi
 mov byte ptr [rcx+0x1018], sil
 add rcx, 8
 mov r8d, 0x800
 lea rdx, [rsp+0x150]
 call sub_14001efc0
 jmp 0x140018a2a

0x140018a18:
 cmp rdi, rsi
 je 0x140018a2a
 mov rax, qword ptr [rdi]
 mov edx, 0x1
 mov rcx, rdi
 call qword ptr [rax]

0x140018a2a:
 xor r8d, r8d
 lea rdx, [rsp+0x150]
 lea rcx, [rsp+0x11a0]
 call sub_140011240
 cmp al, sil
 je 0x140018a73
 jmp 0x1400187f7

0x140018a4c:
 lea rdx, [rsp+0x21b0]
 mov ecx, 0x2e
 call sub_140001454
 nop 
 lea rcx, [rsp+0x11a0]
 call sub_140011060
 xor al, al
 jmp 0x1400191e6

0x140018a73:
 cmp byte ptr [rsp+0x40], sil
 je 0x140018a7f
 cmp r12d, esi
 je 0x140018a91

0x140018a7f:
 mov edx, r12d
 mov ecx, 0x6f
 call sub_140017308
 cmp r12d, esi
 jne 0x140018aa5

0x140018a91:
 lea rcx, [rsp+0x11a0]
 call sub_140011060
 xor al, al
 jmp 0x1400191e6

0x140018aa5:
 mov dword ptr [rsp+0xf0], esi
 mov dword ptr [rsp+0xf4], esi
 mov dword ptr [rsp+0xf8], 0x6e
 lea rcx, [rsp+0x90]
 call sub_140020600
 mov dword ptr [rbp+0x60], esi
 mov r13d, esi
 cmp dword ptr [rbp+0x50], esi
 jbe 0x140018b92
 mov rdi, rsi

0x140018add:
 mov rbx, qword ptr [rbp]
 cmp qword ptr [rdi+rbx], rsi
 je 0x140018b65
 lea r14, [rdi+rbx+0x8]
 mov rdx, r14
 mov ecx, 0x5d
 call sub_140001454
 mov dword ptr [rsp+0x28], 4
 movabs rax, 0x7fffffff7fffffff
 mov qword ptr [rsp+0x20], rax
 mov r9d, dword ptr [r15+0x83b8]
 xor r8d, r8d
 lea rdx, [rsp+0x44]
 mov rcx, qword ptr [rdi+rbx]
 call 0x14001074c
 mov ecx, dword ptr [rdi+rbx+0x1008]
 cmp dword ptr [rsp+0x44], ecx
 sete al
 mov byte ptr [rdi+rbx+0x1019], al
 cmp al, sil
 jne 0x140018b65
 mov rdx, r14
 mov ecx, 0x73
 call sub_140001454
 cmp r13d, dword ptr [rbp+0x48]
 jb 0x140018b65
 mov rcx, qword ptr [rdi+rbx]
 call sub_14000f5d0
 mov qword ptr [rdi+rbx], rsi
 dec r12d

0x140018b65:
 cmp r13d, dword ptr [rbp+0x48]
 jae 0x140018b7e
 cmp qword ptr [rdi+rbx], rsi
 je 0x140018b7b
 cmp byte ptr [rdi+rbx+0x1019], sil
 jne 0x140018b7e

0x140018b7b:
 inc dword ptr [rbp+0x60]

0x140018b7e:
 inc r13d
 add rdi, 0x1020
 cmp r13d, dword ptr [rbp+0x50]
 jb 0x140018add

0x140018b92:
 mov edx, dword ptr [rbp+0x60]
 mov ecx, 0x70
 call sub_140017308
 cmp dword ptr [rbp+0x60], esi
 jne 0x140018bdf
 mov dword ptr [rsp+0xf0], esi
 mov dword ptr [rsp+0xf4], esi
 mov dword ptr [rsp+0xf8], 0x32
 lea rcx, [rsp+0x90]
 call sub_140020600
 nop 
 lea rcx, [rsp+0x11a0]
 call sub_140011060
 xor al, al
 jmp 0x1400191e6

0x140018bdf:
 cmp dword ptr [rbp+0x60], r12d
 jbe 0x140018c2d
 mov edx, r12d
 mov ecx, 0x33
 call sub_140017308
 mov dword ptr [rsp+0xf0], esi
 mov dword ptr [rsp+0xf4], esi
 mov dword ptr [rsp+0xf8], 0x35
 lea rcx, [rsp+0x90]
 call sub_140020600
 nop 
 lea rcx, [rsp+0x11a0]
 call sub_140011060
 xor al, al
 jmp 0x1400191e6

0x140018c2d:
 mov dword ptr [rsp+0xf0], esi
 mov dword ptr [rsp+0xf4], esi
 mov dword ptr [rsp+0xf8], 0x72
 lea rcx, [rsp+0x90]
 call sub_140020600
 mov r15, rsi
 mov qword ptr [rsp+0x68], rsi
 mov r14d, esi
 cmp dword ptr [rbp+0x48], esi
 jbe 0x140018e5f
 mov rbx, rsi

0x140018c6a:
 mov r12, qword ptr [rbp]
 mov rax, qword ptr [rbx+r12+0x1010]
 cmp rax, r15
 cmova r15, rax
 mov rcx, qword ptr [rbx+r12]
 cmp rcx, rsi
 je 0x140018d30
 cmp byte ptr [rbx+r12+0x1019], sil
 jne 0x140018d30
 call sub_14000f5d0
 lea r13, [rbx+r12+0x8]
 mov rcx, r13
 lea rdx, [rsp+0x41b0]
 sub rdx, r13

0x140018cb0:
 movzx eax, word ptr [rcx]
 mov word ptr [rdx+rcx], ax
 add rcx, 2
 cmp ax, si
 jne 0x140018cb0
 lea rdi, [rsp+0x41b0]
 xor eax, eax
 or rcx, 0xffffffffffffffff
 repne scasd eax, dword ptr [rdi]
 mov rax, qword ptr [0x14003db80]
 mov qword ptr [rdi-2], rax
 movzx eax, word ptr [0x14003db88]
 mov word ptr [rdi+6], ax
 mov rdx, r13
 mov ecx, 0x6b
 call sub_140001454
 lea r8, [rsp+0x41b0]
 mov rdx, r13
 mov ecx, 0x6d
 call sub_1400014b8
 lea rdx, [rsp+0x41b0]
 mov rcx, r13
 call 0x1400100d4
 mov rcx, qword ptr [rbx+r12]
 cmp rcx, rsi
 je 0x140018d2c
 mov rax, qword ptr [rcx]
 mov edx, 0x1
 call qword ptr [rax]

0x140018d2c:
 mov qword ptr [rbx+r12], rsi

0x140018d30:
 cmp qword ptr [rbx+r12], rsi
 sete al
 mov byte ptr [rbx+r12+0x1018], al
 cmp al, sil
 je 0x140018e31
 lea r13, [rbx+r12+0x8]
 mov r8d, 0x800
 lea rdx, [rsp+0x31b0]
 mov rcx, r13
 call sub_14001efc0
 mov rdx, r13
 mov ecx, 0x6c
 call sub_140001454
 mov rdx, r13
 mov ecx, 0x89
 call sub_140001454
 mov ecx, 0x1030
 call 0x14002d27c
 mov qword ptr [rsp+0x58], rax
 cmp rax, rsi
 je 0x140018d9e
 mov rcx, rax
 call sub_14000f274
 mov rdi, rax
 jmp 0x140018da1

0x140018d9e:
 mov rdi, rsi

0x140018da1:
 mov byte ptr [rsp+0x38], sil
 mov qword ptr [rsp+0x30], rsi
 movabs rax, 0x7fffffff7fffffff
 mov qword ptr [rsp+0x28], rax
 lea rax, [rsp+0x41]
 mov qword ptr [rsp+0x20], rax
 mov r9d, 0x800
 mov r8, r13
 mov rdx, rdi
 mov rcx, qword ptr [rsp+0x48]
 call sub_14000f144
 cmp al, sil
 jne 0x140018e14
 mov al, byte ptr [rsp+0x41]
 cmp al, sil
 jne 0x140018dfb
 mov rdx, r13
 lea rcx, [0x140050e70]
 call 0x14000b4fc
 mov al, byte ptr [rsp+0x41]

0x140018dfb:
 neg al
 sbb edx, edx
 and edx, 0xf6
 add edx, 9
 lea rcx, [0x140050e70]
 call 0x14000b114

0x140018e14:
 mov rdx, qword ptr [rbx+r12+0x1010]
 mov rcx, rdi
 call sub_14000fd64
 mov qword ptr [rbx+r12], rdi
 mov byte ptr [rbx+r12+0x1018], 0x1

0x140018e31:
 xor r8d, r8d
 mov edx, 0x800
 lea rcx, [rsp+0x31b0]
 call sub_140014188
 inc r14d
 add rbx, 0x1020
 cmp r14d, dword ptr [rbp+0x48]
 jb 0x140018c6a
 mov qword ptr [rsp+0x68], r15

0x140018e5f:
 mov qword ptr [rsp+0x50], rsi
 lea rcx, [0x14003d078]
 call sub_140008e10
 mov dword ptr [rbp+0x60], esi
 mov ecx, dword ptr [rbp+0x50]
 call 0x14002c914
 mov qword ptr [rbp+0x58], rax
 mov ecx, esi
 cmp dword ptr [rbp+0x50], esi
 jbe 0x140018ed1
 mov rdx, rsi

0x140018e89:
 mov rax, qword ptr [rbp]
 cmp qword ptr [rdx+rax], rsi
 je 0x140018ea4
 cmp byte ptr [rdx+rax+0x1018], sil
 jne 0x140018ea4
 mov edi, 0x1
 jmp 0x140018ea6

0x140018ea4:
 mov edi, esi

0x140018ea6:
 mov r8d, ecx
 mov rax, qword ptr [rbp+0x58]
 mov byte ptr [r8+rax], dil
 cmp ecx, dword ptr [rbp+0x48]
 jae 0x140018ec3
 mov rax, qword ptr [rbp+0x58]
 cmp byte ptr [r8+rax], sil
 jne 0x140018ec3
 inc dword ptr [rbp+0x60]

0x140018ec3:
 inc ecx
 add rdx, 0x1020
 cmp ecx, dword ptr [rbp+0x50]
 jb 0x140018e89

0x140018ed1:
 mov ecx, dword ptr [rbp+0x60]
 xor edx, edx
 mov eax, 0x4000000
 div rcx
 mov qword ptr [rbp+0x40], rax
 test al, 0x1
 je 0x140018eed
 dec rax
 mov qword ptr [rbp+0x40], rax

0x140018eed:
 and qword ptr [rbp+0x40], 0xfffffffffffffff0
 mov ecx, dword ptr [rbp+0x50]
 mov eax, 4
 mul rcx
 mov rcx, -1
 cmovo rax, rcx
 mov rcx, rax
 call 0x14002c914
 mov qword ptr [rsp+0x58], rax
 lea rcx, [rsp+0x110]
 call sub_14001bc00
 nop 
 mov r9, qword ptr [rbp+0x58]
 mov r8d, dword ptr [rbp+0x4c]
 mov edx, dword ptr [rbp+0x48]
 lea rcx, [rsp+0x110]
 call sub_14001bc38
 cmp al, sil
 jne 0x140018f53
 lea rcx, [rsp+0x110]
 call 0x14001b4b8
 nop 
 jmp 0x1400191d6

0x140018f53:
 mov rcx, qword ptr [rbp+0x40]
 add rcx, 0x10
 call 0x14002c914
 mov qword ptr [rbp+0x20], rax
 mov r12, rax
 not r12
 inc r12
 and r12d, 0xf
 add r12, rax
 mov qword ptr [rsp+0x80], r12

0x140018f7c:
 call 0x14001f5e0
 mov r14d, esi
 mov r13d, esi
 mov dword ptr [rsp+0x44], esi
 movsxd rdi, dword ptr [rbp+0x48]
 mov rax, rsi
 mov qword ptr [rsp+0x70], rax
 mov rbx, rdi
 cmp edi, esi
 jbe 0x140019146
 sub r15, qword ptr [rsp+0x50]

0x140018fa7:
 mov rcx, rax
 mov rdx, qword ptr [rbp+0x58]
 mov eax, r13d
 cmp byte ptr [rax+rdx], sil
 jne 0x140018fd2
 mov eax, edi
 cmp byte ptr [rax+rdx], sil
 jne 0x140018fca

0x140018fbf:
 inc edi
 inc rbx
 cmp byte ptr [rdi+rdx], sil
 je 0x140018fbf

0x140018fca:
 mov rcx, rbx
 inc edi
 inc rbx

0x140018fd2:
 imul rcx, rcx, 0x1020
 add rcx, qword ptr [rbp]
 mov r13d, esi
 mov r9, qword ptr [rcx]
 cmp r9, rsi
 je 0x140019004
 cmp byte ptr [rcx+0x1018], sil
 jne 0x140019004
 mov rax, qword ptr [r9]
 mov r8, qword ptr [rbp+0x40]
 mov rdx, r12
 mov rcx, r9
 call qword ptr [rax+0x10]
 mov r13d, eax

0x140019004:
 movsxd rcx, r13d
 mov r8, qword ptr [rbp+0x40]
 cmp rcx, r8
 je 0x14001901d
 sub r8, rcx
 add rcx, r12
 xor edx, edx
 call 0x14002d190

0x14001901d:
 cmp r13d, r14d
 cmovg r14d, r13d
 mov eax, r15d
 cmp qword ptr [rbp+0x40], r15
 cmovb eax, dword ptr [rbp+0x40]
 mov byte ptr [rsp+0x28], sil
 mov dword ptr [rsp+0x20], eax
 mov r9, r12
 mov r13d, dword ptr [rsp+0x44]
 mov r8d, r13d
 mov rdx, qword ptr [rsp+0x48]
 mov rcx, rbp
 call 0x140017178
 inc r13d
 mov dword ptr [rsp+0x44], r13d
 mov rax, qword ptr [rsp+0x70]
 inc rax
 mov qword ptr [rsp+0x70], rax
 cmp r13d, dword ptr [rbp+0x48]
 jb 0x140018fa7
 mov dword ptr [rsp+0x44], r14d
 cmp r14d, esi
 je 0x140019146
 mov r13d, esi
 mov r15d, esi
 cmp dword ptr [rbp+0x48], esi
 jbe 0x1400190f0
 mov r14, rsi
 movsxd r12, dword ptr [rsp+0x44]

0x140019090:
 mov ecx, r13d
 mov rax, qword ptr [rbp+0x58]
 cmp byte ptr [rcx+rax], sil
 jne 0x1400190d3
 mov rbx, qword ptr [rbp]
 mov rdi, qword ptr [r14+rbx+0x1010]
 cmp r12, rdi
 cmovb rdi, r12
 mov edx, r15d
 imul rdx, qword ptr [rbp+0x40]
 add rdx, qword ptr [rbp+0x38]
 mov r8, rdi
 mov rcx, qword ptr [r14+rbx]
 call sub_14000f66c
 inc r15d
 sub qword ptr [r14+rbx+0x1010], rdi

0x1400190d3:
 inc r13d
 add r14, 0x1020
 cmp r13d, dword ptr [rbp+0x48]
 jb 0x140019090
 mov r12, qword ptr [rsp+0x80]
 mov r14d, dword ptr [rsp+0x44]

0x1400190f0:
 mov rbx, qword ptr [rsp+0x78]
 mov rdx, rbx
 mov r15, qword ptr [rsp+0x50]
 mov rcx, r15
 call 0x14001ed44
 mov edi, eax
 mov rax, qword ptr [rsp+0x48]
 cmp byte ptr [rax+0x6150], sil
 jne 0x140019131
 cmp edi, dword ptr [rsp+0x60]
 je 0x140019131
 mov r8, rbx
 mov rdx, r15
 lea rcx, [0x14003dbe0]
 call 0x1400205dc
 mov dword ptr [rsp+0x60], edi

0x140019131:
 movsxd rax, r14d
 add r15, rax
 mov qword ptr [rsp+0x50], r15
 mov r15, qword ptr [rsp+0x68]
 jmp 0x140018f7c

0x140019146:
 mov edi, esi
 cmp dword ptr [rbp+0x50], esi
 jbe 0x140019170
 mov rbx, rsi

0x140019150:
 mov rax, qword ptr [rbp]
 mov rcx, qword ptr [rbx+rax]
 cmp rcx, rsi
 je 0x140019162
 call sub_14000f5d0

0x140019162:
 inc edi
 add rbx, 0x1020
 cmp edi, dword ptr [rbp+0x50]
 jb 0x140019150

0x140019170:
 mov rcx, qword ptr [rbp+0x58]
 call 0x14002ec9c
 mov rcx, qword ptr [rsp+0x58]
 call 0x14002ec9c
 mov rax, qword ptr [rsp+0x48]
 cmp byte ptr [rax+0x6150], sil
 jne 0x1400191a2
 lea rcx, [0x14003db68]
 call sub_140008e10
 mov rax, qword ptr [rsp+0x48]

0x1400191a2:
 cmp byte ptr [rsp+0x40], sil
 jne 0x1400191c5
 cmp byte ptr [rax+0x6152], sil
 jne 0x1400191c5
 mov ecx, 0xd1a
 call sub_140019e20
 mov rcx, rax
 call sub_140008e10
 nop 

0x1400191c5:
 lea rcx, [rsp+0x110]
 call 0x14001b4b8
 nop 
 mov sil, 0x1

0x1400191d6:
 lea rcx, [rsp+0x11a0]
 call sub_140011060
 mov al, sil

0x1400191e6:
 mov rcx, qword ptr [rsp+0x51b0]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x5210]
 add rsp, 0x51c0
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
 int3 
 int3 
 int3 

0x140019214:
 push rsi
 push rdi
 push r12
 mov eax, 0xe420
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x20], -2
 mov qword ptr [rsp+0xe450], rbx
 mov qword ptr [rsp+0xe458], rbp
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0xe418], rax
 mov sil, r8b
 mov rbp, rdx
 mov r12, rcx
 mov rdx, rcx
 lea rcx, [rsp+0xed0]
 call sub_1400020bc
 nop 
 xor r8d, r8d
 mov rdx, rbp
 lea rcx, [rsp+0xed0]
 call 0x140001448
 xor dil, dil
 cmp al, dil
 jne 0x1400192a0
 cmp sil, dil
 jne 0x14001929b
 mov rdx, rbp
 lea rcx, [0x140050e70]
 call 0x14000b4f0
 nop 

0x14001929b:
 jmp 0x140019380

0x1400192a0:
 mov ebx, 2
 mov dl, 0x1
 lea rcx, [rsp+0xed0]
 call 0x14000164c
 cmp al, dil
 je 0x1400192c2
 mov ebx, dword ptr [rsp+0xd3c0]
 jmp 0x14001930b

0x1400192c2:
 xor r8d, r8d
 xor edx, edx
 lea rcx, [rsp+0xed0]
 call sub_140001178
 mov r8d, 8
 lea rdx, [rsp+0xe410]
 lea rcx, [rsp+0xed0]
 call sub_140001124
 cmp eax, 8
 jne 0x14001930b
 mov rax, qword ptr [rsp+0xe410]
 cmp rax, qword ptr [0x14003db30]
 mov eax, 3
 cmove ebx, eax

0x14001930b:
 lea rcx, [rsp+0xed0]
 call sub_14000f5d0
 cmp ebx, 2
 jne 0x140019354
 lea rcx, [rsp+0x6a0]
 call sub_140017334
 nop 
 mov r9b, sil
 mov r8, rbp
 mov rdx, r12
 lea rcx, [rsp+0x6a0]
 call 0x1400176bc
 mov dil, al
 lea rcx, [rsp+0x6a0]
 call sub_140017044
 nop 
 jmp 0x140019380

0x140019354:
 lea rcx, [rsp+0x30]
 call sub_1400173b0
 nop 
 mov r9b, sil
 mov r8, rbp
 mov rdx, r12
 lea rcx, [rsp+0x30]
 call 0x1400186b0
 mov dil, al
 lea rcx, [rsp+0x30]
 call sub_1400170ac
 nop 

0x140019380:
 lea rcx, [rsp+0xed0]
 call 0x140001360
 mov al, dil
 mov rcx, qword ptr [rsp+0xe418]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0xe420]
 mov rbx, qword ptr [r11+0x30]
 mov rbp, qword ptr [r11+0x38]
 mov rsp, r11
 pop r12
 pop rdi
 pop rsi
 ret 
; --------------------------------------------------------------------------
; sub_1400193b8
; --------------------------------------------------------------------------
sub_1400193b8   proc
 xor eax, eax
 cmp qword ptr [rcx], rax
 setne al
 ret 
sub_1400193b8   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400193c4
; --------------------------------------------------------------------------
sub_1400193c4   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 mov rbx, qword ptr [rcx]
 mov rdi, rdx
 xor esi, esi

0x1400193db:
 movzx eax, word ptr [rbx]
 cmp ax, si
 je 0x140019432
 cmp ax, word ptr [rdi]
 jne 0x14001941c
 lea rdx, [rdi+2]
 lea rcx, [rbx+2]
 mov r8d, 7
 call 0x14002ec6c
 cmp eax, esi
 jne 0x14001941c
 cmp word ptr [rbx+0x10], 0x3d
 jne 0x14001941c
 cmp word ptr [rbx+0x12], 0x22
 jne 0x14001941c
 mov rax, rbx
 jmp 0x140019434

0x140019412:
 cmp ax, 0xc
 je 0x140019426
 add rbx, 2

0x14001941c:
 movzx eax, word ptr [rbx]
 cmp ax, si
 jne 0x140019412
 jmp 0x14001942a

0x140019426:
 add rbx, 2

0x14001942a:
 cmp word ptr [rbx], 0xc
 je 0x140019426
 jmp 0x1400193db

0x140019432:
 xor eax, eax

0x140019434:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_1400193c4   endp
 

0x140019444:
 mov r8, qword ptr [rcx]
 mov rcx, qword ptr [0x140050ed0]
 mov rax, qword ptr [rdx]
 lea rdx, [rcx+rax*2]
 lea rcx, [rcx+r8*2]
 mov r8d, 8
 jmp 0x14002ec6c
; --------------------------------------------------------------------------
; sub_140019464
; --------------------------------------------------------------------------
sub_140019464   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 add qword ptr [rcx+0x8], rdx
 mov rax, qword ptr [rcx+0x8]
 mov rbx, rcx
 cmp rax, qword ptr [rcx+0x10]
 jbe 0x1400194f4
 mov r8, qword ptr [rcx+0x18]
 test r8, r8
 je 0x1400194b1
 cmp rax, r8
 jbe 0x1400194b1
 lea rdx, [0x14003c5e0]
 lea rcx, [0x140050e70]
 call sub_14000b39c
 lea rcx, [0x140050e70]
 call 0x14000b140

0x1400194b1:
 mov rdx, qword ptr [rbx+0x10]
 mov rcx, qword ptr [rbx]
 mov rax, rdx
 shr rax, 2
 lea rdi, [rax+rdx+0x20]
 cmp qword ptr [rbx+0x8], rdi
 cmova rdi, qword ptr [rbx+0x8]
 mov rdx, rdi
 shl rdx, 3
 call 0x14002cfec
 mov rsi, rax
 test rax, rax
 jne 0x1400194ed
 lea rcx, [0x140050e70]
 call 0x14000b140

0x1400194ed:
 mov qword ptr [rbx], rsi
 mov qword ptr [rbx+0x10], rdi

0x1400194f4:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_140019464   endp
 
; --------------------------------------------------------------------------
; sub_140019504
; --------------------------------------------------------------------------
sub_140019504   proc
 mov r11, rsp
 mov qword ptr [r11+0x18], r8
 mov qword ptr [r11+0x20], r9
 sub rsp, 0x38
 lea rax, [r11+0x20]
 xor r9d, r9d
 mov qword ptr [r11-0x18], rax
 call sub_14002d43c
 add rsp, 0x38
 ret 
sub_140019504   endp
 

0x140019528:
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 mov rcx, qword ptr [rcx]
 call sub_14002cfac
 mov rcx, qword ptr [rbx+0x10]
 test rcx, rcx
 je 0x140019547
 call sub_14002cfac

0x140019547:
 add rsp, 0x20
 pop rbx
 ret 
 int3 
 int3 
 int3 

0x140019550:
 mov qword ptr [rsp+0x8], rbx
 mov qword ptr [rsp+0x10], rbp
 mov qword ptr [rsp+0x18], rsi
 push rdi
 push r12
 push r13
 sub rsp, 0x20
 mov r12, qword ptr [rcx+0x10]
 mov ebx, dword ptr [rcx+0x18]
 mov r13, rdx
 mov rdi, rcx
 jmp 0x1400195b0

0x140019577:
 mov esi, ebx
 mov r8d, 8
 sar esi, 0x1
 movsxd rax, esi
 lea rbp, [r12+rax*8]
 mov rax, qword ptr [rdi]
 mov rcx, qword ptr [rbp]
 lea rdx, [rax+rcx*2]
 mov rcx, r13
 call 0x14002ec6c
 test eax, eax
 je 0x1400195cf
 jns 0x1400195a5
 mov ebx, esi
 jmp 0x1400195b0

0x1400195a5:
 or eax, 0xffffffff
 lea r12, [rbp+0x8]
 sub eax, esi
 add ebx, eax

0x1400195b0:
 test ebx, ebx
 jg 0x140019577
 xor eax, eax

0x1400195b6:
 mov rbx, qword ptr [rsp+0x40]
 mov rbp, qword ptr [rsp+0x48]
 mov rsi, qword ptr [rsp+0x50]
 add rsp, 0x20
 pop r13
 pop r12
 pop rdi
 ret 

0x1400195cf:
 mov rcx, qword ptr [rbp]
 mov rax, qword ptr [rdi]
 lea rax, [rax+rcx*2]
 jmp 0x1400195b6
; --------------------------------------------------------------------------
; sub_1400195dc
; --------------------------------------------------------------------------
sub_1400195dc   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rdi, rdx
 mov edx, 0x1
 mov rbx, rcx
 call sub_140019464
 mov r11, qword ptr [rbx+0x8]
 mov rax, qword ptr [rbx]
 mov rbx, qword ptr [arg_1]
 mov qword ptr [rax+r11*8-8], rdi
 add rsp, 0x20
 pop rdi
 ret 
sub_1400195dc   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140019610
; --------------------------------------------------------------------------
sub_140019610   proc
 xor eax, eax
 mov qword ptr [rcx+0x10], rax
 mov qword ptr [rcx+0x18], rax
 mov qword ptr [rcx+0x20], rax
 mov qword ptr [rcx+0x28], rax
 mov qword ptr [rcx], rax
 mov qword ptr [rcx+0x8], rax
 mov byte ptr [rcx+0x3c], al
 mov rax, rcx
 ret 
sub_140019610   endp
 

0x140019630:
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x4070
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x28], -2
 mov qword ptr [rsp+0x40c0], rbx
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x4060], rax
 mov rdi, rdx
 mov rbx, rcx
 mov r12d, 0x5c
 mov edx, r12d
 mov rcx, rdi
 call 0x14002cf84
 xor ebp, ebp
 cmp rax, rbp
 jne 0x1400196d2
 mov r8d, 0x800
 lea rdx, [rsp+0x1060]
 xor ecx, ecx
 call qword ptr [GetModuleFileNameW]
 mov edx, r12d
 lea rcx, [rsp+0x1060]
 call sub_14002ee08
 cmp rax, rbp
 je 0x1400199fd
 lea rcx, [rax+2]
 sub rcx, rdi

0x1400196c0:
 movzx eax, word ptr [rdi]
 mov word ptr [rcx+rdi], ax
 add rdi, 2
 cmp ax, bp
 jne 0x1400196c0
 jmp 0x1400196ed

0x1400196d2:
 lea rcx, [rsp+0x1060]
 sub rcx, rdi

0x1400196dd:
 movzx eax, word ptr [rdi]
 mov word ptr [rcx+rdi], ax
 add rdi, 2
 cmp ax, bp
 jne 0x1400196dd

0x1400196ed:
 lea rcx, [rsp+0x30]
 call sub_14000f274
 nop 
 mov r8d, 4
 lea rdx, [rsp+0x1060]
 lea rcx, [rsp+0x30]
 call 0x14000f2b8
 cmp al, bpl
 jne 0x140019724
 lea rcx, [rsp+0x30]
 call sub_14000f94c
 jmp 0x1400199fd

0x140019724:
 mov r14b, bpl
 or esi, 0xffffffff
 mov r13d, ebp

0x14001972d:
 cmp esi, 0xff
 jne 0x140019834
 lea rcx, [rsp+0x30]
 call 0x14000f830
 mov r12, rax
 mov r8d, 0x2000
 lea rdx, [rsp+0x2060]
 lea rcx, [rsp+0x30]
 call sub_14000fbe8
 movsxd r15, eax
 lea eax, [r15-0x10]
 mov dword ptr [rsp+0x20], eax
 test eax, eax
 js 0x1400197f6
 lea rdi, [rsp+0x2064]

0x140019776:
 cmp byte ptr [rdi-4], 0x2a
 jne 0x1400197a0
 cmp byte ptr [rdi-3], 0x2a
 jne 0x1400197a0
 lea rcx, [rdi-2]
 mov r8d, 0xb
 lea rdx, [0x14003dc60]
 call 0x14002f230
 test eax, eax
 je 0x1400197e7
 mov eax, dword ptr [rsp+0x20]

0x1400197a0:
 cmp word ptr [rdi-4], 0x2a
 jne 0x1400197db
 cmp word ptr [rdi-2], 0x2a
 jne 0x1400197db
 lea eax, [r15-0x20]
 cmp ebp, eax
 jg 0x1400197d1
 mov r8d, 0xb
 lea rdx, [0x14003dc40]
 mov rcx, rdi
 call 0x14002ec6c
 test eax, eax
 je 0x1400197ee
 jmp 0x1400197d7

0x1400197d1:
 mov eax, dword ptr [rsp+0x20]
 jmp 0x1400197db

0x1400197d7:
 mov eax, dword ptr [rsp+0x20]

0x1400197db:
 inc rbp
 inc rdi
 cmp ebp, eax
 jg 0x1400197f6
 jmp 0x140019776

0x1400197e7:
 lea esi, [rbp+r12]
 jmp 0x1400197f6

0x1400197ee:
 mov r14b, 0x1
 lea esi, [rbp+r12]

0x1400197f6:
 movsxd rax, r12d
 lea rdx, [rax+r15-0x10]
 xor r8d, r8d
 lea rcx, [rsp+0x30]
 call sub_14000fd98
 inc r13d
 cmp r13d, 0x80
 mov ebp, 0x0
 jb 0x14001972d
 cmp esi, 0xff
 jne 0x140019834
 lea rcx, [rsp+0x30]
 call sub_14000f94c
 jmp 0x1400199fd

0x140019834:
 movsxd rdx, esi
 xor r8d, r8d
 lea rcx, [rsp+0x30]
 call sub_14000fd98
 mov ecx, 0x80002
 call sub_14002d848
 mov qword ptr [rbx], rax
 cmp rax, rbp
 jne 0x140019865
 lea rcx, [rsp+0x30]
 call sub_14000f94c
 jmp 0x1400199fd

0x140019865:
 mov r8d, 0x80000
 mov rdx, rax
 lea rcx, [rsp+0x30]
 call sub_14000fbe8
 movsxd rcx, eax
 mov qword ptr [rbx+0x8], rcx
 cmp r14b, bpl
 je 0x14001988d
 shr rcx, 0x1
 mov qword ptr [rbx+0x8], rcx
 jmp 0x1400198d6

0x14001988d:
 lea rcx, [rcx+rcx+2]
 call sub_14002d848
 mov rdi, rax
 cmp rax, rbp
 jne 0x1400198ae
 lea rcx, [rsp+0x30]
 call sub_14000f94c
 jmp 0x1400199fd

0x1400198ae:
 mov rcx, qword ptr [rbx]
 mov rax, qword ptr [rbx+0x8]
 mov byte ptr [rcx+rax], bpl
 mov r8, qword ptr [rbx+0x8]
 inc r8
 mov rdx, rdi
 mov rcx, qword ptr [rbx]
 call sub_14002110c
 mov rcx, qword ptr [rbx]
 call sub_14002cfac
 mov qword ptr [rbx], rdi

0x1400198d6:
 mov rcx, qword ptr [rbx+0x8]
 mov eax, 0x40000
 cmp rcx, rax
 cmova rcx, rax
 mov rax, qword ptr [rbx]
 mov word ptr [rax+rcx*2], bp
 mov r8, rbp
 mov rcx, rbp
 mov esi, 0xc
 cmp qword ptr [rbx+0x8], rbp
 jbe 0x14001998e
 lea edi, [rsi+0x16]
 lea r10d, [rsi+1]
 lea r11d, [rsi-2]
 lea r12d, [rsi+0x50]

0x140019911:
 mov rax, qword ptr [rbx]
 mov dx, word ptr [rax+r8*2]
 inc r8
 cmp dx, bp
 je 0x14001998e
 cmp dx, r12w
 jne 0x140019973
 movzx r9d, word ptr [rax+r8*2]
 cmp r9d, edi
 je 0x140019967
 cmp r9d, r12d
 je 0x140019960
 cmp r9d, 0x6e
 je 0x140019959
 cmp r9d, 0x72
 je 0x140019952
 cmp r9d, 0x74
 jne 0x140019981
 lea edx, [r9-0x6b]
 mov word ptr [rax+rcx*2], dx
 jmp 0x14001996b

0x140019952:
 mov word ptr [rax+rcx*2], r10w
 jmp 0x14001996b

0x140019959:
 mov word ptr [rax+rcx*2], r11w
 jmp 0x14001996b

0x140019960:
 mov word ptr [rax+rcx*2], r12w
 jmp 0x14001996b

0x140019967:
 mov word ptr [rax+rcx*2], di

0x14001996b:
 inc r8
 inc rcx
 jmp 0x140019988

0x140019973:
 cmp dx, r10w
 je 0x14001997f
 cmp dx, r11w
 jne 0x140019981

0x14001997f:
 mov edx, esi

0x140019981:
 mov word ptr [rax+rcx*2], dx
 inc rcx

0x140019988:
 cmp r8, qword ptr [rbx+0x8]
 jb 0x140019911

0x14001998e:
 mov rax, qword ptr [rbx]
 mov word ptr [rax+rcx*2], bp
 mov qword ptr [rbx+0x8], rcx
 mov edi, 0x1
 lea eax, [rcx-8]
 cmp eax, edi
 jle 0x1400199ce

0x1400199a5:
 mov rax, qword ptr [rbx]
 cmp word ptr [rax+rdi*2-2], si
 jne 0x1400199c1
 cmp word ptr [rax+rdi*2], si
 je 0x1400199c1
 lea rcx, [rbx+0x10]
 mov rdx, rdi
 call sub_1400195dc

0x1400199c1:
 inc rdi
 mov eax, dword ptr [rbx+0x8]
 sub eax, 8
 cmp edi, eax
 jl 0x1400199a5

0x1400199ce:
 mov rax, qword ptr [rbx]
 mov qword ptr [0x140050ed0], rax
 lea r9, [0x140019444]
 mov r8d, 8
 mov rdx, qword ptr [rbx+0x18]
 mov rcx, qword ptr [rbx+0x10]
 call 0x14002ef10
 nop 
 lea rcx, [rsp+0x30]
 call sub_14000f94c

0x1400199fd:
 mov rcx, qword ptr [rsp+0x4060]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x40c0]
 add rsp, 0x4070
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 

0x140019a28:
 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 mov eax, 0x2050
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x2040], rax
 mov rdi, qword ptr [rsp+0x20b8]
 xor r14d, r14d
 mov rbp, r9
 mov rbx, r8
 mov rsi, rdx
 mov r12, rcx
 cmp qword ptr [rcx], r14
 je 0x140019bef
 mov ecx, dword ptr [rsp+0x20b0]
 lea rdx, [0x14003dc86]
 cmp ecx, r14d
 je 0x140019aa1
 sub ecx, 0x1
 je 0x140019a98
 cmp ecx, 0x1
 jne 0x140019aa8
 lea rdx, [0x14003dc84]
 jmp 0x140019aa8

0x140019a98:
 lea rdx, [0x14003dc80]
 jmp 0x140019aa8

0x140019aa1:
 lea rdx, [0x14003dc7c]

0x140019aa8:
 mov r8d, 0x1
 or ecx, 0xffffffff
 call sub_140009710
 mov r13d, eax
 cmp rdi, r14
 je 0x140019afe
 lea rdx, [rsp+0x1040]
 mov r8d, 0x1000
 mov rcx, rdi
 call sub_1400210b8
 or rcx, 0xffffffffffffffff
 xor eax, eax
 lea rdi, [rsp+0x1040]
 lea rdx, [rsp+0x1040]
 repne scasb al, byte ptr [rdi]
 not rcx
 lea r8, [rcx-1]
 mov ecx, r13d
 call sub_140009710
 mov r13d, eax

0x140019afe:
 lea rdx, [rsp+0x40]
 mov r8d, 0x1000
 mov rcx, rsi
 call sub_1400210b8
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov byte ptr [rsp+0x103f], r14b
 lea rdi, [rsp+0x40]
 lea rdx, [rsp+0x40]
 repne scasb al, byte ptr [rdi]
 not rcx
 lea r8, [rcx-1]
 mov ecx, r13d
 call sub_140009710
 lea r8, [0x14003dc70]
 lea rcx, [rsp+0x20]
 not eax
 mov edx, 0xa
 mov r9d, eax
 call sub_140019504
 lea rdx, [rsp+0x20]
 mov rcx, r12
 call 0x140019550
 cmp rax, r14
 jne 0x140019b79
 lea rdx, [rsp+0x20]
 mov rcx, r12
 call sub_1400193c4
 cmp rax, r14
 je 0x140019bef

0x140019b79:
 lea rsi, [rax+0x12]
 mov r12d, 0x22
 cmp word ptr [rsi], r12w
 jne 0x140019b8d
 add rsi, 2

0x140019b8d:
 mov edx, 0xc
 mov rcx, rsi
 call 0x14002cf84
 mov edi, 0xff
 mov rcx, rax
 sub rcx, rsi
 sar rcx, 0x1
 cmp rax, r14
 lea rax, [rbp-1]
 cmovne rdi, rcx
 cmp rdi, rax
 jbe 0x140019bc1
 neg rbp
 sbb rdi, rdi
 and rdi, rax

0x140019bc1:
 cmp rdi, r14
 jbe 0x140019bd4
 mov r8, rdi
 mov rdx, rsi
 mov rcx, rbx
 call sub_14002dc5c

0x140019bd4:
 mov edx, r12d
 mov rcx, rbx
 mov word ptr [rbx+rdi*2], r14w
 call sub_14002ee08
 cmp rax, r14
 je 0x140019c08
 mov word ptr [rax], r14w
 jmp 0x140019c08

0x140019bef:
 cmp rsi, rbx
 je 0x140019c08
 sub rbx, rsi

0x140019bf7:
 movzx eax, word ptr [rsi]
 mov word ptr [rbx+rsi], ax
 add rsi, 2
 cmp ax, r14w
 jne 0x140019bf7

0x140019c08:
 mov rcx, qword ptr [rsp+0x2040]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x2050
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
 int3 
 int3 

0x140019c2c:
 push rbx
 mov eax, 0x1030
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1020], rax
 mov rax, rdx
 mov rbx, rcx
 lea rdx, [rsp+0x20]
 mov rcx, rax
 mov r8d, 0x800
 call 0x140019cc8
 lea rdx, [rsp+0x20]
 mov rcx, rbx
 call 0x140019630
 mov rcx, qword ptr [rsp+0x1020]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x1030
 pop rbx
 ret 
; --------------------------------------------------------------------------
; sub_140019c8c
; --------------------------------------------------------------------------
sub_140019c8c   proc
 mov byte ptr [rcx], 0x0
 mov rax, rcx
 ret 
sub_140019c8c   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140019c94
; --------------------------------------------------------------------------
sub_140019c94   proc
 push rbx
 sub rsp, 0x20
 cmp byte ptr [rcx], 0x0
 mov rbx, rcx
 je 0x140019cc0
 mov rcx, qword ptr [0x140050e68]
 call qword ptr [FreeLibrary]
 mov r11, qword ptr [0x140050e60]
 mov qword ptr [0x140050e68], r11
 mov byte ptr [rbx], 0x0

0x140019cc0:
 add rsp, 0x20
 pop rbx
 ret 
sub_140019c94   endp
 
 int3 
 int3 

0x140019cc8:
 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 mov eax, 0x2060
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x2050], rax
 mov rbp, r8
 mov rbx, rdx
 mov rsi, rcx
 cmp rdx, rcx
 je 0x140019d07
 mov rdx, rcx
 mov rcx, rbx
 call sub_14001efc0

0x140019d07:
 lea rax, [rsp+0x38]
 lea rdx, [0x14003dca8]
 mov r9d, 0x1
 xor r8d, r8d
 mov rcx, -0x7fffffff
 mov qword ptr [rsp+0x20], rax
 call qword ptr [RegOpenKeyExW]
 xor r12d, r12d
 cmp eax, r12d
 jne 0x140019dff
 xor eax, eax
 or rcx, 0xffffffffffffffff
 mov rdi, rsi
 repne scasd eax, dword ptr [rdi]
 mov eax, 0x7ff
 lea r9, [rsp+0x40]
 not rcx
 lea rdx, [0x14003dc88]
 xor r8d, r8d
 dec rcx
 sub eax, ecx
 mov rcx, qword ptr [rsp+0x38]
 add eax, eax
 mov dword ptr [rsp+0x30], eax
 lea rax, [rsp+0x30]
 mov qword ptr [rsp+0x28], rax
 lea rax, [rsp+0x1050]
 mov qword ptr [rsp+0x20], rax
 call qword ptr [RegQueryValueExW]
 cmp eax, r12d
 jne 0x140019df4
 mov edi, 0x800
 lea rdx, [rsp+0x50]
 lea rcx, [rsp+0x1050]
 mov r8d, edi
 mov word ptr [rsp+0x50], r12w
 call qword ptr [ExpandEnvironmentStringsW]
 lea rcx, [rsp+0x50]
 mov rdx, rdi
 call sub_1400134a8
 mov rcx, rsi
 call 0x140013c20
 lea rcx, [rsp+0x50]
 mov r8, rdi
 mov rdx, rax
 call sub_14001effc
 lea rcx, [rsp+0x50]
 call sub_1400104f4
 cmp al, r12b
 je 0x140019df4
 lea rdx, [rsp+0x50]
 mov r8, rbp
 mov rcx, rbx
 call sub_14001efc0

0x140019df4:
 mov rcx, qword ptr [rsp+0x38]
 call qword ptr [RegCloseKey]

0x140019dff:
 mov rcx, qword ptr [rsp+0x2050]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x2060
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140019e20
; --------------------------------------------------------------------------
sub_140019e20   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x40]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x48]

 local local_1: qword ; [rsp+0x20]
 local local_2: qword ; [rsp+0x28]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x30
 mov eax, dword ptr [0x140052ee0]
 mov edi, ecx
 lea rcx, [0x140050e80]
 inc eax
 cmp eax, 8
 sbb edx, edx
 xor esi, esi
 and edx, eax
 lea rax, [0x140050ee0]
 movsxd rbx, edx
 mov dword ptr [0x140052ee0], edx
 shl rbx, 0xa
 add rbx, rax
 mov word ptr [rbx], si
 call sub_1400193b8
 cmp al, sil
 jne 0x140019e89
 mov rcx, qword ptr [0x140050e68]
 mov r9d, 0x200
 mov r8, rbx
 mov edx, edi
 call qword ptr [LoadStringW]
 cmp eax, esi
 jne 0x140019ea1

0x140019e89:
 mov rcx, qword ptr [0x140050e60]
 mov r9d, 0x200
 mov r8, rbx
 mov edx, edi
 call qword ptr [LoadStringW]

0x140019ea1:
 lea rcx, [0x140050e80]
 mov r9d, 0x200
 mov r8, rbx
 mov rdx, rbx
 mov qword ptr [local_2], rsi
 mov dword ptr [local_1], esi
 call 0x140019a28
 mov rsi, qword ptr [arg_2]
 mov rax, rbx
 mov rbx, qword ptr [arg_1]
 add rsp, 0x30
 pop rdi
 ret 
sub_140019e20   endp
 
 int3 
 int3 
 int3 

0x140019ed8:
 jmp sub_140019c94
 int3 
 int3 
 int3 

0x140019ee0:
 mov qword ptr [rsp+0x10], rbx
 mov qword ptr [rsp+0x18], rbp
 push rsi
 push rdi
 push r12
 mov eax, 0x1150
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1140], rax
 mov rbx, r8
 mov rdi, rdx
 mov rsi, rcx
 call sub_140019c94
 xor ebp, ebp
 lea r12d, [rbp+2]
 cmp rbx, rbp
 je 0x140019f43
 lea r8, [rsp+0x140]
 sub r8, rbx

0x140019f31:
 movzx eax, word ptr [rbx]
 mov word ptr [r8+rbx], ax
 add rbx, r12
 cmp ax, bp
 jne 0x140019f31
 jmp 0x140019f59

0x140019f43:
 lea rdx, [rsp+0x140]
 mov r8d, 0x800
 xor ecx, ecx
 call qword ptr [GetModuleFileNameW]

0x140019f59:
 lea rdx, [0x14003dcd8]
 lea rcx, [rsp+0x140]
 mov r8d, 0x800
 call 0x140013e08
 lea rdx, [rsp+0x140]
 lea rcx, [rsp+0x140]
 mov r8d, 0x800
 call 0x140019cc8
 lea rcx, [rsp+0x20]
 mov dword ptr [rsp+0x20], 0x11c
 call qword ptr [GetVersionExW]
 cmp dword ptr [rsp+0x30], r12d
 jne 0x140019fd1
 cmp dword ptr [rsp+0x24], 5
 ja 0x140019fbc
 jne 0x140019fd1
 cmp word ptr [rsp+0x134], r12w
 jb 0x140019fd1

0x140019fbc:
 lea rcx, [rsp+0x140]
 mov r8d, r12d
 xor edx, edx
 call qword ptr [LoadLibraryExW]
 jmp 0x140019fdf

0x140019fd1:
 lea rcx, [rsp+0x140]
 call qword ptr [LoadLibraryW]

0x140019fdf:
 cmp rax, rbp
 mov qword ptr [0x140050e68], rax
 setne cl
 mov byte ptr [rsi], cl
 mov rax, qword ptr [0x140050e68]
 cmp cl, bpl
 cmove rax, rdi
 mov qword ptr [0x140050e60], rdi
 mov qword ptr [0x140050e68], rax
 mov rcx, qword ptr [rsp+0x1140]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x1150]
 mov rbx, qword ptr [r11+0x28]
 mov rbp, qword ptr [r11+0x30]
 mov rsp, r11
 pop r12
 pop rdi
 pop rsi
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001a034
; --------------------------------------------------------------------------
sub_14001a034   proc
 movdqu xmm2, xmmword ptr [rcx+0x8]
 mov r10, rcx
 lea r11, [rcx+0x18]
 test r8, r8
 je 0x14001a0b1

0x14001a045:
 movsxd rcx, dword ptr [r10+4]
 mov rax, rdx
 add rdx, 0x10
 movdqu xmm3, xmmword ptr [rax]
 mov rax, rcx
 add rax, rax
 dec ecx
 movdqu xmm1, xmmword ptr [r11+rax*8]
 pxor xmm1, xmm3
 test ecx, ecx
 jle 0x14001a087
 movsxd rax, ecx
 shl rax, 4
 add rax, r11

0x14001a074:
 movdqu xmm0, xmmword ptr [rax]
 dec ecx
 sub rax, 0x10
 aesdec xmm1, xmm0
 test ecx, ecx
 jg 0x14001a074

0x14001a087:
 cmp byte ptr [r10+1], 0x0
 movdqu xmm0, xmmword ptr [r11]
 aesdeclast xmm1, xmm0
 je 0x14001a09c
 pxor xmm1, xmm2

0x14001a09c:
 mov rax, r9
 add r9, 0x10
 sub r8, 0x1
 movdqa xmm2, xmm3
 movdqu xmmword ptr [rax], xmm1
 jne 0x14001a045

0x14001a0b1:
 movdqu xmmword ptr [r10+0x8], xmm2
 ret 
sub_14001a034   endp
 

0x14001a0b8:
 mov qword ptr [rsp+0x18], rbx
 mov qword ptr [rsp+0x20], rbp
 push rsi
 push rdi
 push r12
 push r14
 push r15
 sub rsp, 0x50
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x40], rax
 mov ebp, dword ptr [rcx+4]
 mov rsi, rcx
 lea rcx, [rsp+0x20]
 mov r8d, 0x20
 sub ebp, 6
 call 0x14002d490
 xor edi, edi
 xor r9d, r9d
 xor edx, edx
 xor r8d, r8d
 movsxd rbx, ebp
 lea r14d, [rdi+4]
 test ebp, ebp
 jle 0x14001a153
 xor r10d, r10d

0x14001a10e:
 cmp edi, dword ptr [rsi+4]
 jg 0x14001a153
 cmp rdx, rbx
 jge 0x14001a13e
 lea r11, [rsp+rdx*4+0x20]

0x14001a11d:
 cmp r8, r14
 jge 0x14001a141
 mov eax, dword ptr [r11]
 lea rcx, [r10+r8]
 inc rdx
 add r11, r14
 inc r9d
 inc r8
 cmp rdx, rbx
 mov dword ptr [rsi+rcx*4+0x18], eax
 jl 0x14001a11d

0x14001a13e:
 cmp r8, r14

0x14001a141:
 jne 0x14001a14e
 inc edi
 add r10, r14
 xor r9d, r9d
 xor r8d, r8d

0x14001a14e:
 cmp rdx, rbx
 jl 0x14001a10e

0x14001a153:
 cmp edi, dword ptr [rsi+4]
 movsxd r11, edi
 movsxd r10, r9d
 jg 0x14001a2b1
 lea r12, [0x140055ef0]
 lea r15, [0x140056010]

0x14001a170:
 movzx ecx, byte ptr [rsp+rbx*4+0x1d]
 mov al, byte ptr [rsp+0x20]
 xor al, byte ptr [rcx+r15]
 mov byte ptr [rsp+0x20], al
 movzx eax, byte ptr [rsp+rbx*4+0x1e]
 mov al, byte ptr [rax+r15]
 xor byte ptr [rsp+0x21], al
 movzx eax, byte ptr [rsp+rbx*4+0x1f]
 mov al, byte ptr [rax+r15]
 xor byte ptr [rsp+0x22], al
 movzx eax, byte ptr [rsp+rbx*4+0x1c]
 mov al, byte ptr [rax+r15]
 xor byte ptr [rsp+0x23], al
 mov al, byte ptr [r12]
 inc r12
 xor byte ptr [rsp+0x20], al
 cmp ebp, 8
 je 0x14001a1e7
 cmp rbx, 0x1
 jle 0x14001a263
 lea rdx, [rsp+0x24]
 lea r8, [rbx-1]

0x14001a1cb:
 xor ecx, ecx

0x14001a1cd:
 mov al, byte ptr [rdx+rcx-4]
 xor byte ptr [rdx+rcx], al
 inc rcx
 cmp rcx, r14
 jl 0x14001a1cd
 add rdx, r14
 sub r8, 0x1
 jne 0x14001a1cb
 jmp 0x14001a263

0x14001a1e7:
 lea rcx, [rsp+0x24]
 mov r8d, 3

0x14001a1f2:
 mov rdx, r14

0x14001a1f5:
 mov al, byte ptr [rcx-4]
 xor byte ptr [rcx], al
 inc rcx
 sub rdx, 0x1
 jne 0x14001a1f5
 sub r8, 0x1
 jne 0x14001a1f2
 movzx eax, byte ptr [rsp+0x2c]
 mov al, byte ptr [rax+r15]
 xor byte ptr [rsp+0x30], al
 movzx eax, byte ptr [rsp+0x2d]
 mov al, byte ptr [rax+r15]
 xor byte ptr [rsp+0x31], al
 movzx eax, byte ptr [rsp+0x2e]
 mov al, byte ptr [rax+r15]
 xor byte ptr [rsp+0x32], al
 movzx eax, byte ptr [rsp+0x2f]
 mov al, byte ptr [rax+r15]
 xor byte ptr [rsp+0x33], al
 cmp rbx, 5
 jle 0x14001a263
 lea rcx, [rsp+0x34]
 lea r8, [rbx-5]

0x14001a24c:
 mov rdx, r14

0x14001a24f:
 mov al, byte ptr [rcx-4]
 xor byte ptr [rcx], al
 inc rcx
 sub rdx, 0x1
 jne 0x14001a24f
 sub r8, 0x1
 jne 0x14001a24c

0x14001a263:
 xor edx, edx
 test ebp, ebp
 jle 0x14001a2a8

0x14001a269:
 cmp edi, dword ptr [rsi+4]
 jg 0x14001a2b1
 cmp rdx, rbx
 jge 0x14001a296
 lea r8, [rsp+rdx*4+0x20]

0x14001a278:
 cmp r10, r14
 jge 0x14001a299
 mov eax, dword ptr [r8]
 lea rcx, [r10+r11*4]
 inc rdx
 add r8, r14
 inc r10
 cmp rdx, rbx
 mov dword ptr [rsi+rcx*4+0x18], eax
 jl 0x14001a278

0x14001a296:
 cmp r10, r14

0x14001a299:
 jne 0x14001a2a3
 inc edi
 inc r11
 xor r10d, r10d

0x14001a2a3:
 cmp rdx, rbx
 jl 0x14001a269

0x14001a2a8:
 cmp edi, dword ptr [rsi+4]
 jle 0x14001a170

0x14001a2b1:
 mov rcx, qword ptr [rsp+0x40]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x50]
 mov rbx, qword ptr [r11+0x40]
 mov rbp, qword ptr [r11+0x48]
 mov rsp, r11
 pop r15
 pop r14
 pop r12
 pop rdi
 pop rsi
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_14001a2d8
; --------------------------------------------------------------------------
sub_14001a2d8   proc \
 arg_1 : qword, ; [rsp+0x10] ; [rsp+0x48]
 arg_2 : qword, ; [rsp+0x18] ; [rsp+0x50]
 arg_3 : qword ; [rsp+0x20] ; [rsp+0x58]

 local local_1[0x10]: byte ; [rsp]
 local local_2: qword ; [rsp+0x10]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 push r12
 push r14
 sub rsp, 0x20
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_2], rax
 mov ebx, 0x1
 mov r11, rcx
 cmp dword ptr [rcx+4], ebx
 jle 0x14001a3a0
 lea r10, [rcx+0x28]
 lea r14, [0x140000000]

0x14001a31b:
 xor r9d, r9d

0x14001a31e:
 lea rbp, [rsp+r9]
 lea rsi, [r10+2]
 mov r12d, 4

0x14001a32c:
 movzx eax, byte ptr [rsi+1]
 lea rdx, [r9+rax*4]
 movzx eax, byte ptr [rsi-1]
 mov r8b, byte ptr [rdx+r14+0x52ef0]
 lea rcx, [r9+rax*4]
 movzx eax, byte ptr [rsi-2]
 xor r8b, byte ptr [rcx+r14+0x536f0]
 lea rcx, [r9+rax*4]
 movzx eax, byte ptr [rsi]
 xor r8b, byte ptr [rcx+r14+0x53af0]
 lea rcx, [r9+rax*4]
 add rsi, 4
 xor r8b, byte ptr [rcx+r14+0x532f0]
 mov byte ptr [rbp], r8b
 add rbp, 4
 sub r12, 0x1
 jne 0x14001a32c
 inc r9
 cmp r9, 4
 jl 0x14001a31e
 movdqu xmm0, xmmword ptr [local_1]
 inc ebx
 movdqu xmmword ptr [r10], xmm0
 add r10, 0x10
 cmp ebx, dword ptr [r11+4]
 jl 0x14001a31b

0x14001a3a0:
 mov rcx, qword ptr [local_2]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop r14
 pop r12
 pop rdi
 ret 
sub_14001a2d8   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001a3c8
; --------------------------------------------------------------------------
sub_14001a3c8   proc
 local local_1[0x101]: byte ; [rsp+0x1ff]
 local local_2[0x101]: byte ; [rsp+0x300]

 sub rsp, 0x318
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_2], rax
 xor r8d, r8d
 mov r10d, 0x11b
 lea edx, [r8+1]

0x14001a3ee:
 movsxd rax, r8d
 mov byte ptr [rsp+rax+0x100], dl
 mov byte ptr [rsp+rax+0x1ff], dl
 movsxd rax, edx
 mov byte ptr [rsp+rax], r8b
 mov eax, edx
 inc r8d
 and al, 0x80
 neg al
 lea eax, [rdx+rdx]
 sbb ecx, ecx
 and ecx, r10d
 xor ecx, eax
 xor edx, ecx
 cmp edx, 0x1
 jne 0x14001a3ee
 lea r8, [0x140055ef0]
 lea r9d, [rdx+0x1d]

0x14001a42b:
 mov eax, edx
 mov byte ptr [r8], dl
 and al, 0x80
 neg al
 lea eax, [rdx+rdx]
 sbb ecx, ecx
 inc r8
 and ecx, r10d
 mov edx, ecx
 xor edx, eax
 sub r9, 0x1
 jne 0x14001a42b
 xor r10d, r10d
 lea r11, [0x140000000]
 xor r8d, r8d

0x14001a456:
 test r10b, r10b
 je 0x14001a473
 movzx eax, r10b
 movzx ecx, byte ptr [rsp+rax]
 lea rax, [local_1]
 sub rax, rcx
 movzx ecx, byte ptr [rax]
 jmp 0x14001a475

0x14001a473:
 xor ecx, ecx

0x14001a475:
 lea eax, [rcx+rcx]
 xor eax, ecx
 add eax, eax
 xor eax, ecx
 add eax, eax
 xor eax, ecx
 add eax, eax
 xor ecx, eax
 mov edx, ecx
 sar edx, 8
 xor dl, cl
 xor dl, 0x63
 mov byte ptr [r8+r11+0x56010], dl
 mov byte ptr [r11+r8*4+0x54ef1], dl
 mov byte ptr [r11+r8*4+0x54ef0], dl
 mov byte ptr [r11+r8*4+0x552f3], dl
 mov byte ptr [r11+r8*4+0x552f0], dl
 mov byte ptr [r11+r8*4+0x556f3], dl
 mov byte ptr [r11+r8*4+0x556f2], dl
 mov byte ptr [r11+r8*4+0x55af2], dl
 mov byte ptr [r11+r8*4+0x55af1], dl
 je 0x14001a4eb
 movzx eax, dl
 movzx ecx, byte ptr [rsp+rax]
 movzx eax, byte ptr [rsp+rcx+0x119]
 jmp 0x14001a4ed

0x14001a4eb:
 xor eax, eax

0x14001a4ed:
 mov byte ptr [r11+r8*4+0x54ef3], al
 mov byte ptr [r11+r8*4+0x552f2], al
 mov byte ptr [r11+r8*4+0x556f1], al
 mov byte ptr [r11+r8*4+0x55af0], al
 test dl, dl
 je 0x14001a522
 movzx eax, dl
 movzx ecx, byte ptr [rsp+rax]
 movzx eax, byte ptr [rsp+rcx+0x101]
 jmp 0x14001a524

0x14001a522:
 xor eax, eax

0x14001a524:
 mov byte ptr [r11+r8*4+0x54ef2], al
 mov byte ptr [r11+r8*4+0x552f1], al
 mov byte ptr [r11+r8*4+0x556f0], al
 mov byte ptr [r11+r8*4+0x55af3], al
 movzx r9d, r10b
 mov eax, r9d
 shl eax, 3
 xor eax, r9d
 shl eax, 2
 xor eax, r9d
 add eax, eax
 mov ecx, eax
 sar ecx, 8
 xor cl, al
 xor cl, 5
 je 0x14001a59b
 mov edx, r9d
 shl edx, 3
 xor edx, r9d
 shl edx, 2
 xor edx, r9d
 add edx, edx
 mov eax, edx
 sar eax, 8
 movzx ecx, al
 movzx eax, dl
 xor rcx, rax
 xor rcx, 5
 movzx eax, byte ptr [rsp+rcx]
 lea rcx, [local_1]
 sub rcx, rax
 mov dl, byte ptr [rcx]
 jmp 0x14001a59d

0x14001a59b:
 xor dl, dl

0x14001a59d:
 mov byte ptr [r8+r11+0x55f10], dl
 test dl, dl
 je 0x14001a5ba
 movzx eax, dl
 movzx ecx, byte ptr [rsp+rax]
 movzx eax, byte ptr [rsp+rcx+0x168]
 jmp 0x14001a5bc

0x14001a5ba:
 xor eax, eax

0x14001a5bc:
 movzx ecx, dl
 mov byte ptr [r11+r8*4+0x53ef2], al
 mov byte ptr [r11+r8*4+0x542f1], al
 mov byte ptr [r11+r8*4+0x546f0], al
 mov byte ptr [r11+r8*4+0x54af3], al
 mov byte ptr [r11+rcx*4+0x52ef2], al
 mov byte ptr [r11+rcx*4+0x532f1], al
 mov byte ptr [r11+rcx*4+0x536f0], al
 mov byte ptr [r11+rcx*4+0x53af3], al
 test dl, dl
 je 0x14001a612
 movzx eax, byte ptr [rsp+rcx]
 movzx r9d, byte ptr [rsp+rax+0x1c7]
 jmp 0x14001a615

0x14001a612:
 xor r9d, r9d

0x14001a615:
 mov byte ptr [r11+r8*4+0x53ef0], r9b
 mov byte ptr [r11+r8*4+0x542f3], r9b
 mov byte ptr [r11+r8*4+0x546f2], r9b
 mov byte ptr [r11+r8*4+0x54af1], r9b
 mov byte ptr [r11+rcx*4+0x52ef0], r9b
 mov byte ptr [r11+rcx*4+0x532f3], r9b
 mov byte ptr [r11+rcx*4+0x536f2], r9b
 mov byte ptr [r11+rcx*4+0x53af1], r9b
 test dl, dl
 je 0x14001a668
 movzx eax, byte ptr [rsp+rcx]
 movzx r9d, byte ptr [rsp+rax+0x1ee]
 jmp 0x14001a66b

0x14001a668:
 xor r9d, r9d

0x14001a66b:
 mov byte ptr [r11+r8*4+0x53ef1], r9b
 mov byte ptr [r11+r8*4+0x542f0], r9b
 mov byte ptr [r11+r8*4+0x546f3], r9b
 mov byte ptr [r11+r8*4+0x54af2], r9b
 mov byte ptr [r11+rcx*4+0x52ef1], r9b
 mov byte ptr [r11+rcx*4+0x532f0], r9b
 mov byte ptr [r11+rcx*4+0x536f3], r9b
 mov byte ptr [r11+rcx*4+0x53af2], r9b
 test dl, dl
 je 0x14001a6bd
 movzx eax, byte ptr [rsp+rcx]
 movzx edx, byte ptr [rsp+rax+0x1df]
 jmp 0x14001a6bf

0x14001a6bd:
 xor edx, edx

0x14001a6bf:
 inc r10d
 mov byte ptr [r11+r8*4+0x53ef3], dl
 mov byte ptr [r11+r8*4+0x542f2], dl
 mov byte ptr [r11+r8*4+0x546f1], dl
 mov byte ptr [r11+r8*4+0x54af0], dl
 inc r8
 cmp r10d, 0x100
 mov byte ptr [r11+rcx*4+0x52ef3], dl
 mov byte ptr [r11+rcx*4+0x532f2], dl
 mov byte ptr [r11+rcx*4+0x536f1], dl
 mov byte ptr [r11+rcx*4+0x53af0], dl
 jl 0x14001a456
 mov rcx, qword ptr [local_2]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x318
 ret 
sub_14001a3c8   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001a72c
; --------------------------------------------------------------------------
sub_14001a72c   proc
 push rbx
 sub rsp, 0x20
 cmp byte ptr [0x140056010], 0x0
 mov rbx, rcx
 jne 0x14001a743
 call sub_14001a3c8

0x14001a743:
 mov byte ptr [rbx+1], 0x1
 mov rax, rbx
 add rsp, 0x20
 pop rbx
 ret 
sub_14001a72c   endp
 
; --------------------------------------------------------------------------
; sub_14001a750
; --------------------------------------------------------------------------
sub_14001a750   proc \
 arg_1 : qword, ; [rsp+0x10] ; [rsp+0x68]
 arg_2[0x10] : byte, ; [rsp+0x18] ; [rsp+0x70]
 arg_3[0x10] : byte ; [rsp+0x80]

 local local_1: qword ; [rsp+0x20]
 local local_2: dword ; [rsp+0x28]
 local local_3: qword ; [rsp+0x2c]
 local local_4[0x14]: byte ; [rsp+0x34]
 local local_5[0x14]: byte ; [rsp+0x48]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x50
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_5], rax
 mov rdi, rcx
 xor ecx, ecx
 mov eax, 0x1
 mov sil, dl
 cpuid 
 mov r10, r8
 shr ecx, 0x19
 mov dword ptr [local_2], eax
 mov dword ptr [local_3], ebx
 and cl, 0x1
 sub r9d, 0x80
 mov dword ptr [local_4], edx
 mov byte ptr [rdi], cl
 je 0x14001a7ca
 sub r9d, 0x40
 je 0x14001a7bc
 cmp r9d, 0x40
 jne 0x14001a7b6
 lea eax, [r9-0x20]
 mov dword ptr [rdi+4], 0xe
 jmp 0x14001a7d6

0x14001a7b6:
 mov eax, dword ptr [local_1]
 jmp 0x14001a7d6

0x14001a7bc:
 mov eax, 0x18
 mov dword ptr [rdi+4], 0xc
 jmp 0x14001a7d6

0x14001a7ca:
 mov eax, 0x10
 mov dword ptr [rdi+4], 0xa

0x14001a7d6:
 test eax, eax
 je 0x14001a803
 xor ebx, ebx
 mov r8d, eax

0x14001a7df:
 mov rax, rbx
 mov rdx, rbx
 inc rbx
 and eax, 3
 shr rdx, 2
 lea rcx, [rsp+rax+0x28]
 mov al, byte ptr [r10]
 inc r10
 sub r8, 0x1
 mov byte ptr [rcx+rdx*4], al
 jne 0x14001a7df

0x14001a803:
 mov rdx, qword ptr [arg_3]
 test rdx, rdx
 jne 0x14001a81c
 xor eax, eax
 mov qword ptr [rdi+0x8], rax
 mov qword ptr [rdi+0x10], rax
 jmp 0x14001a82e

0x14001a81c:
 xor ecx, ecx

0x14001a81e:
 mov al, byte ptr [rcx+rdx]
 inc rcx
 cmp rcx, 0x10
 mov byte ptr [rdi+rcx+7], al
 jl 0x14001a81e

0x14001a82e:
 lea rdx, [local_2]
 mov rcx, rdi
 call 0x14001a0b8
 test sil, sil
 jne 0x14001a848
 mov rcx, rdi
 call sub_14001a2d8

0x14001a848:
 mov rcx, qword ptr [local_5]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x50
 pop rdi
 ret 
sub_14001a750   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001a868
; --------------------------------------------------------------------------
sub_14001a868   proc
 local local_1: dword ; [rsp+0x20]
 local local_2: dword ; [rsp+0x24]
 local local_3: qword ; [rsp+0x28]
 local local_4: qword ; [rsp+0x30]
 local local_5: qword ; [rsp+0x38]
 local local_6: byte ; [rsp+0x40]
 local local_7: byte ; [rsp+0x41]
 local local_8: byte ; [rsp+0x42]
 local local_9: byte ; [rsp+0x43]
 local local_10: byte ; [rsp+0x44]
 local local_11: byte ; [rsp+0x45]
 local local_12: byte ; [rsp+0x46]
 local local_13: byte ; [rsp+0x47]
 local local_14: byte ; [rsp+0x48]
 local local_15: byte ; [rsp+0x49]
 local local_16: byte ; [rsp+0x4a]
 local local_17: byte ; [rsp+0x4b]
 local local_18: byte ; [rsp+0x4c]
 local local_19: byte ; [rsp+0x4d]
 local local_20: byte ; [rsp+0x4e]
 local local_21: byte ; [rsp+0x4f]
 local local_22: dword ; [rsp+0x50]
 local local_23: dword ; [rsp+0x54]
 local local_24: dword ; [rsp+0x58]
 local local_25: dword ; [rsp+0x5c]
 local local_26: dword ; [rsp+0x60]
 local local_27: dword ; [rsp+0x64]
 local local_28: dword ; [rsp+0x68]
 local local_29: dword ; [rsp+0x6c]
 local local_30: byte ; [rsp+0x70]

 test r8, r8
 je 0x14001ae2c
 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x88
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_30], rax
 mov rdi, r8
 mov rsi, r9
 mov qword ptr [local_4], r9
 shr rdi, 4
 cmp byte ptr [rcx], 0x0
 mov r12, rdx
 mov rbp, rcx
 mov qword ptr [local_5], rcx
 je 0x14001a8bf
 mov r8, rdi
 call sub_14001a034
 jmp 0x14001ae0c

0x14001a8bf:
 movdqu xmm0, xmmword ptr [rcx+0x8]
 movdqu xmmword ptr [local_26], xmm0
 test rdi, rdi
 je 0x14001ae07
 mov r13d, dword ptr [local_29]
 mov r14d, dword ptr [local_28]
 mov r15d, dword ptr [local_27]

0x14001a8e2:
 mov r11d, dword ptr [r12]
 movsxd rbx, dword ptr [rbp+4]
 mov rax, rbx
 add rax, rax
 xor r11d, dword ptr [rbp+rax*8+0x18]
 mov r8d, dword ptr [rbp+rax*8+0x24]
 mov r9d, dword ptr [rbp+rax*8+0x20]
 mov r10d, dword ptr [rbp+rax*8+0x1c]
 xor r8d, dword ptr [r12+0xc]
 xor r9d, dword ptr [r12+0x8]
 xor r10d, dword ptr [r12+4]
 mov eax, r8d
 mov dword ptr [local_25], r8d
 shr eax, 8
 mov dword ptr [local_23], r10d
 mov dword ptr [local_22], r11d
 movzx edx, al
 mov eax, r9d
 mov dword ptr [local_24], r9d
 shr eax, 0x10
 movzx ecx, al
 lea rax, [0x140000000]
 mov edx, dword ptr [rax+rdx*4+0x546f0]
 xor edx, dword ptr [rax+rcx*4+0x542f0]
 mov eax, r10d
 shr eax, 0x18
 movzx ecx, al
 lea rax, [0x140000000]
 xor edx, dword ptr [rax+rcx*4+0x53ef0]
 movzx eax, r11b
 lea rcx, [0x140000000]
 xor edx, dword ptr [rcx+rax*4+0x54af0]
 mov eax, r8d
 shr r8d, 0x18
 shr eax, 0x10
 mov dword ptr [local_1], edx
 mov dword ptr [local_6], edx
 movzx edx, al
 mov eax, r9d
 shr eax, 0x18
 movzx ecx, al
 lea rax, [0x140000000]
 mov edx, dword ptr [rax+rdx*4+0x542f0]
 xor edx, dword ptr [rax+rcx*4+0x53ef0]
 mov eax, r11d
 shr eax, 8
 movzx ecx, al
 lea rax, [0x140000000]
 xor edx, dword ptr [rax+rcx*4+0x546f0]
 movzx eax, r10b
 lea rcx, [0x140000000]
 xor edx, dword ptr [rcx+rax*4+0x54af0]
 mov eax, r10d
 shr r10d, 0x10
 shr eax, 8
 mov dword ptr [local_3], edx
 mov dword ptr [local_10], edx
 movzx ecx, al
 movzx edx, r8b
 lea rax, [0x140000000]
 mov r8d, dword ptr [rax+rdx*4+0x53ef0]
 lea rdx, [0x140000000]
 mov eax, r11d
 xor r8d, dword ptr [rdx+rcx*4+0x546f0]
 shr eax, 0x10
 shr r11d, 0x18
 movzx ecx, al
 movzx eax, r9b
 shr r9d, 8
 xor r8d, dword ptr [rdx+rcx*4+0x542f0]
 movzx ecx, r9b
 xor r8d, dword ptr [rdx+rax*4+0x54af0]
 movzx eax, r10b
 mov r10d, dword ptr [rdx+rcx*4+0x546f0]
 xor r10d, dword ptr [rdx+rax*4+0x542f0]
 movzx eax, r11b
 lea r11, [0x140000000]
 xor r10d, dword ptr [r11+rax*4+0x53ef0]
 movzx eax, byte ptr [local_25]
 mov dword ptr [local_14], r8d
 xor r10d, dword ptr [r11+rax*4+0x54af0]
 lea eax, [rbx-1]
 mov dword ptr [local_2], r10d
 mov dword ptr [local_18], r10d
 movsxd rcx, eax
 cmp rcx, 0x1
 jle 0x14001ac27
 mov r13d, dword ptr [local_1]
 mov r14d, dword ptr [local_3]
 lea rbx, [rcx+2]
 shl rbx, 4
 mov r15d, r10d
 lea rsi, [0x140000000]
 add rbx, rbp
 lea rbp, [rcx-1]

0x14001aaa9:
 xor r8d, dword ptr [rbx]
 mov r11d, dword ptr [rbx-8]
 mov r10d, dword ptr [rbx-4]
 mov r9d, r8d
 xor r11d, r13d
 xor r10d, r14d
 mov dword ptr [local_24], r8d
 mov r8d, dword ptr [rbx+4]
 mov dword ptr [local_23], r10d
 xor r8d, r15d
 mov dword ptr [local_22], r11d
 sub rbx, 0x10
 mov eax, r8d
 mov dword ptr [local_25], r8d
 shr eax, 8
 movzx edx, al
 mov eax, r9d
 mov r13d, dword ptr [rsi+rdx*4+0x546f0]
 shr eax, 0x10
 movzx ecx, al
 mov eax, r10d
 xor r13d, dword ptr [rsi+rcx*4+0x542f0]
 shr eax, 0x18
 movzx ecx, al
 movzx eax, r11b
 xor r13d, dword ptr [rsi+rcx*4+0x53ef0]
 xor r13d, dword ptr [rsi+rax*4+0x54af0]
 mov eax, r8d
 shr r8d, 0x18
 shr eax, 0x10
 mov dword ptr [local_6], r13d
 movzx edx, al
 mov eax, r9d
 mov r14d, dword ptr [rsi+rdx*4+0x542f0]
 shr eax, 0x18
 movzx edx, r8b
 mov r8d, dword ptr [rsi+rdx*4+0x53ef0]
 movzx ecx, al
 mov eax, r11d
 xor r14d, dword ptr [rsi+rcx*4+0x53ef0]
 shr eax, 8
 movzx ecx, al
 movzx eax, r10b
 xor r14d, dword ptr [rsi+rcx*4+0x546f0]
 xor r14d, dword ptr [rsi+rax*4+0x54af0]
 mov eax, r10d
 shr r10d, 0x10
 shr eax, 8
 mov dword ptr [local_10], r14d
 movzx ecx, al
 mov eax, r11d
 shr r11d, 0x18
 xor r8d, dword ptr [rsi+rcx*4+0x546f0]
 shr eax, 0x10
 movzx ecx, al
 movzx eax, r9b
 shr r9d, 8
 xor r8d, dword ptr [rsi+rcx*4+0x542f0]
 movzx ecx, r9b
 xor r8d, dword ptr [rsi+rax*4+0x54af0]
 mov r15d, dword ptr [rsi+rcx*4+0x546f0]
 movzx eax, r10b
 xor r15d, dword ptr [rsi+rax*4+0x542f0]
 movzx eax, r11b
 xor r15d, dword ptr [rsi+rax*4+0x53ef0]
 movzx eax, byte ptr [local_25]
 xor r15d, dword ptr [rsi+rax*4+0x54af0]
 sub rbp, 0x1
 mov dword ptr [local_18], r15d
 jne 0x14001aaa9
 mov rsi, qword ptr [local_4]
 mov rbp, qword ptr [local_5]
 mov dword ptr [local_2], r15d
 mov r10d, dword ptr [local_2]
 mov r15d, dword ptr [local_27]
 mov dword ptr [local_3], r14d
 mov r14d, dword ptr [local_28]
 mov dword ptr [local_1], r13d
 mov r13d, dword ptr [local_29]
 mov dword ptr [local_14], r8d
 lea r11, [0x140000000]

0x14001ac27:
 xor r8d, dword ptr [rbp+0x30]
 xor r10d, dword ptr [rbp+0x34]
 mov edx, dword ptr [local_1]
 xor edx, dword ptr [rbp+0x28]
 mov r9d, dword ptr [local_3]
 mov dword ptr [local_25], r10d
 xor r9d, dword ptr [rbp+0x2c]
 movzx eax, dl
 mov dword ptr [local_24], r8d
 mov al, byte ptr [rax+r11+0x55f10]
 mov dword ptr [local_23], r9d
 mov dword ptr [local_22], edx
 mov byte ptr [local_6], al
 mov eax, r10d
 shr eax, 8
 movzx ecx, al
 mov al, byte ptr [rcx+r11+0x55f10]
 mov byte ptr [local_7], al
 mov eax, r8d
 shr eax, 0x10
 movzx ecx, al
 mov al, byte ptr [rcx+r11+0x55f10]
 mov byte ptr [local_8], al
 mov eax, r9d
 shr eax, 0x18
 movzx ecx, al
 mov al, byte ptr [rcx+r11+0x55f10]
 mov byte ptr [local_9], al
 movzx eax, r9b
 mov al, byte ptr [rax+r11+0x55f10]
 mov byte ptr [local_10], al
 mov eax, edx
 shr eax, 8
 movzx ecx, al
 mov al, byte ptr [rcx+r11+0x55f10]
 mov byte ptr [local_11], al
 mov eax, r10d
 shr r10d, 0x18
 shr eax, 0x10
 movzx ecx, al
 mov al, byte ptr [rcx+r11+0x55f10]
 mov byte ptr [local_12], al
 mov eax, r8d
 shr eax, 0x18
 movzx ecx, al
 mov al, byte ptr [rcx+r11+0x55f10]
 mov byte ptr [local_13], al
 movzx eax, r8b
 shr r8d, 8
 mov al, byte ptr [rax+r11+0x55f10]
 mov byte ptr [local_14], al
 mov eax, r9d
 shr r9d, 0x10
 shr eax, 8
 movzx ecx, al
 mov al, byte ptr [rcx+r11+0x55f10]
 mov byte ptr [local_15], al
 mov eax, edx
 shr edx, 0x18
 shr eax, 0x10
 movzx ecx, al
 mov al, byte ptr [rcx+r11+0x55f10]
 mov ecx, dword ptr [local_10]
 mov byte ptr [local_16], al
 movzx eax, r10b
 mov al, byte ptr [rax+r11+0x55f10]
 mov byte ptr [local_17], al
 movzx eax, byte ptr [local_25]
 mov al, byte ptr [rax+r11+0x55f10]
 mov byte ptr [local_18], al
 movzx eax, r8b
 mov al, byte ptr [rax+r11+0x55f10]
 mov byte ptr [local_19], al
 movzx eax, r9b
 mov al, byte ptr [rax+r11+0x55f10]
 mov byte ptr [local_20], al
 movzx eax, dl
 mov al, byte ptr [rax+r11+0x55f10]
 mov byte ptr [local_21], al
 mov eax, dword ptr [local_6]
 xor eax, dword ptr [rbp+0x18]
 mov edx, dword ptr [local_14]
 mov r8d, dword ptr [local_18]
 xor ecx, dword ptr [rbp+0x1c]
 xor edx, dword ptr [rbp+0x20]
 xor r8d, dword ptr [rbp+0x24]
 cmp byte ptr [rbp+1], 0x0
 je 0x14001adb7
 xor eax, dword ptr [local_26]
 xor ecx, r15d
 xor edx, r14d
 xor r8d, r13d

0x14001adb7:
 mov r9d, dword ptr [r12]
 mov r15d, dword ptr [r12+4]
 mov r14d, dword ptr [r12+0x8]
 mov r13d, dword ptr [r12+0xc]
 mov dword ptr [rsi], eax
 add rsi, 0x10
 mov dword ptr [rsi-0xc], ecx
 mov dword ptr [rsi-8], edx
 mov dword ptr [rsi-4], r8d
 add r12, 0x10
 sub rdi, 0x1
 mov dword ptr [local_26], r9d
 mov dword ptr [local_27], r15d
 mov dword ptr [local_28], r14d
 mov dword ptr [local_29], r13d
 mov qword ptr [local_4], rsi
 jne 0x14001a8e2
 movdqu xmm0, xmmword ptr [local_26]

0x14001ae07:
 movdqu xmmword ptr [rbp+0x8], xmm0

0x14001ae0c:
 mov rcx, qword ptr [local_30]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x88
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx

0x14001ae2c:
 ret 
sub_14001a868   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001ae30
; --------------------------------------------------------------------------
sub_14001ae30   proc \
 arg_1 : qword, ; [rsp+0x8]
 arg_2 : qword ; [rsp+0x10]

 mov qword ptr [arg_1], rsi
 mov qword ptr [arg_2], rdi
 xor edi, edi
 mov rsi, rcx
 mov r8d, 0xff
 lea edx, [rdi+1]

0x14001ae48:
 movsxd rax, edx
 mov dword ptr [rcx+rax*4+0x800], edi
 mov dword ptr [rsi], edx
 add edx, edx
 cmp edx, r8d
 jle 0x14001ae61
 xor edx, 0x11d

0x14001ae61:
 inc edi
 add rsi, 4
 cmp edi, r8d
 jl 0x14001ae48
 lea rdi, [rcx+0x3fc]
 mov rsi, rcx
 mov ecx, 0x101
 rep movsd dword ptr [rdi], dword ptr [rsi]
 mov rsi, qword ptr [arg_1]
 mov rdi, qword ptr [arg_2]
 ret 
sub_14001ae30   endp
 
; --------------------------------------------------------------------------
; sub_14001ae88
; --------------------------------------------------------------------------
sub_14001ae88   proc \
 arg_1 : qword, ; [rsp+0x8]
 arg_2 : qword, ; [rsp+0x10]
 arg_3 : qword, ; [rsp+0x18]
 arg_4 : qword ; [rsp+0x20]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 mov r11, rcx
 xor ecx, ecx
 mov rdi, r9
 cmp dword ptr [r11+0x2404], ecx
 mov rbp, r8
 mov r10, rdx
 jle 0x14001aec7
 mov rax, r9

0x14001aeb5:
 and dword ptr [rax], 0x0
 inc ecx
 add rax, 4
 cmp ecx, dword ptr [r11+0x2404]
 jl 0x14001aeb5

0x14001aec7:
 mov eax, dword ptr [r11+0x2404]
 xor r8d, r8d
 test eax, eax
 jle 0x14001af48
 sub rdi, rdx

0x14001aed8:
 cmp dword ptr [r10], 0x0
 je 0x14001af35
 sub eax, r8d
 xor esi, esi
 test eax, eax
 jle 0x14001af35
 mov rbx, rbp
 lea r9, [rdi+r10]

0x14001aeee:
 cmp dword ptr [r10], 0x0
 je 0x14001af18
 cmp dword ptr [rbx], 0x0
 je 0x14001af18
 movsxd rax, dword ptr [r10]
 movsxd rdx, dword ptr [r11+rax*4+0x800]
 movsxd rax, dword ptr [rbx]
 movsxd rcx, dword ptr [r11+rax*4+0x800]
 add rdx, rcx
 mov eax, dword ptr [r11+rdx*4]
 jmp 0x14001af1a

0x14001af18:
 xor eax, eax

0x14001af1a:
 xor dword ptr [r9], eax
 mov eax, dword ptr [r11+0x2404]
 inc esi
 sub eax, r8d
 add rbx, 4
 add r9, 4
 cmp esi, eax
 jl 0x14001aeee

0x14001af35:
 mov eax, dword ptr [r11+0x2404]
 inc r8d
 add r10, 4
 cmp r8d, eax
 jl 0x14001aed8

0x14001af48:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 ret 
sub_14001ae88   endp
 
 int3 
 int3 
 int3 

0x14001af60:
 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x18], rbp
 mov qword ptr [rax+0x20], rsi
 mov qword ptr [rax+0x10], rdx
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x1020
 call sub_14003a300
 sub rsp, rax
 mov ebp, dword ptr [rcx+0x2404]
 xor edi, edi
 mov r14, r9
 cmp ebp, edi
 movsxd r15, r8d
 mov r13, rdx
 mov rbx, rcx
 mov r10b, 0x1
 jle 0x14001b384
 lea r11, [rsp+0x20]
 lea r9, [rcx+4]
 mov esi, ebp

0x14001afb3:
 cmp r15, rdi
 mov ecx, edi
 mov r8, rdi
 jle 0x14001aff5

0x14001afbd:
 cmp dword ptr [r9], edi
 je 0x14001afe4
 cmp ecx, edi
 je 0x14001afe4
 movsxd rax, dword ptr [r9]
 movsxd rdx, dword ptr [rbx+rax*4+0x800]
 movsxd rax, ecx
 movsxd rcx, dword ptr [rbx+rax*4+0x800]
 add rdx, rcx
 mov eax, dword ptr [rbx+rdx*4]
 jmp 0x14001afe6

0x14001afe4:
 mov eax, edi

0x14001afe6:
 movzx ecx, byte ptr [r8+r13]
 inc r8
 xor ecx, eax
 cmp r8, r15
 jl 0x14001afbd

0x14001aff5:
 cmp ecx, edi
 movzx r10d, r10b
 mov dword ptr [r11], ecx
 cmovne r10d, edi
 add r9, 4
 add r11, 4
 sub rsi, 0x1
 jne 0x14001afb3
 cmp r10b, dil
 jne 0x14001b384
 cmp byte ptr [rbx+0x2c08], dil
 jne 0x14001b23c
 lea eax, [rbp+1]
 mov byte ptr [rbx+0x2c08], 0x1
 mov edx, edi
 cmp eax, edi
 jle 0x14001b051
 lea rcx, [rbx+0x2408]

0x14001b03d:
 mov dword ptr [rcx], edi
 mov eax, dword ptr [rbx+0x2404]
 inc edx
 inc eax
 add rcx, 4
 cmp edx, eax
 jl 0x14001b03d

0x14001b051:
 movsxd r10, dword ptr [rsp+0x1070]
 mov dword ptr [rbx+0x2408], 0x1
 mov r9, rdi
 cmp r10, rdi
 jle 0x14001b0cc

0x14001b06b:
 movsxd rax, dword ptr [r14+r9*4]
 movsxd r8, dword ptr [rbx+0x2404]
 mov rcx, r15
 sub rcx, rax
 cmp r8, rdi
 movsxd r11, dword ptr [rbx+rcx*4-4]
 jle 0x14001b0c4
 lea rdx, [rbx+r8*4+0x2408]

0x14001b08e:
 cmp r11, rdi
 je 0x14001b0b4
 cmp dword ptr [rdx-4], edi
 je 0x14001b0b4
 movsxd rax, dword ptr [rdx-4]
 movsxd rcx, dword ptr [rbx+rax*4+0x800]
 movsxd rax, dword ptr [rbx+r11*4+0x800]
 add rcx, rax
 mov eax, dword ptr [rbx+rcx*4]
 jmp 0x14001b0b6

0x14001b0b4:
 mov eax, edi

0x14001b0b6:
 xor dword ptr [rdx], eax
 dec r8
 sub rdx, 4
 cmp r8, rdi
 jg 0x14001b08e

0x14001b0c4:
 inc r9
 cmp r9, r10
 jl 0x14001b06b

0x14001b0cc:
 mov r8d, 0xff
 mov r12d, 0x100
 mov dword ptr [rbx+0x2000], edi
 sub r8d, r15d
 cmp r8d, r12d
 jge 0x14001b23c
 lea r9d, [r12-1]
 sub r9d, r8d

0x14001b0f2:
 mov eax, dword ptr [rbx+0x2404]
 mov r10d, edi
 inc eax
 cmp eax, edi
 jle 0x14001b178
 mov ebp, dword ptr [rbx+0x2404]
 mov r11d, edi
 lea rsi, [rbx+0x2408]
 inc ebp

0x14001b113:
 mov eax, 0x80808081
 imul r11d
 add edx, r11d
 sar edx, 7
 mov eax, edx
 shr eax, 0x1f
 add edx, eax
 mov eax, r11d
 imul edx, edx, 0xff
 sub eax, edx
 cdqe 
 cmp dword ptr [rbx+rax*4], edi
 je 0x14001b15d
 cmp dword ptr [rsi], edi
 je 0x14001b15d
 movsxd rax, dword ptr [rbx+rax*4]
 movsxd rdx, dword ptr [rbx+rax*4+0x800]
 movsxd rax, dword ptr [rsi]
 movsxd rcx, dword ptr [rbx+rax*4+0x800]
 add rdx, rcx
 mov eax, dword ptr [rbx+rdx*4]
 jmp 0x14001b15f

0x14001b15d:
 mov eax, edi

0x14001b15f:
 xor r10d, eax
 add r11d, r8d
 add rsi, 4
 sub rbp, 0x1
 jne 0x14001b113
 cmp r10d, edi
 jne 0x14001b22d

0x14001b178:
 movsxd rax, dword ptr [rbx+0x2000]
 mov r10d, 0x1
 mov dword ptr [rbx+rax*4+0x1c00], r9d
 movsxd rax, dword ptr [rbx+0x2000]
 mov dword ptr [rbx+rax*4+0x2004], edi
 mov eax, dword ptr [rbx+0x2404]
 inc eax
 cmp eax, r10d
 jle 0x14001b227
 lea ebp, [r8+r8]
 mov r11d, edi
 lea rsi, [rbx+0x240c]

0x14001b1b6:
 mov eax, 0x80808081
 imul r11d
 add edx, r11d
 sar edx, 7
 mov eax, edx
 shr eax, 0x1f
 add edx, eax
 mov eax, r11d
 imul edx, edx, 0xff
 sub eax, edx
 cdqe 
 movsxd rcx, dword ptr [rbx+rax*4]
 cmp dword ptr [rsi], edi
 je 0x14001b1ff
 cmp ecx, edi
 je 0x14001b1ff
 movsxd rcx, dword ptr [rbx+rcx*4+0x800]
 movsxd rax, dword ptr [rsi]
 movsxd rdx, dword ptr [rbx+rax*4+0x800]
 add rdx, rcx
 mov ecx, dword ptr [rbx+rdx*4]
 jmp 0x14001b201

0x14001b1ff:
 mov ecx, edi

0x14001b201:
 movsxd rax, dword ptr [rbx+0x2000]
 add r10d, 2
 add r11d, ebp
 xor dword ptr [rbx+rax*4+0x2004], ecx
 mov eax, dword ptr [rbx+0x2404]
 add rsi, 8
 inc eax
 cmp r10d, eax
 jl 0x14001b1b6

0x14001b227:
 inc dword ptr [rbx+0x2000]

0x14001b22d:
 inc r8d
 dec r9d
 cmp r8d, r12d
 jl 0x14001b0f2

0x14001b23c:
 lea rdx, [rbx+0x2408]
 lea r9, [rsp+0x820]
 lea r8, [rsp+0x20]
 mov rcx, rbx
 call sub_14001ae88
 mov eax, dword ptr [rbx+0x2000]
 cmp eax, dword ptr [rbx+0x2404]
 jg 0x14001b373
 cmp eax, edi
 jle 0x14001b373
 mov r14, qword ptr [rsp+0x1058]
 mov r11d, edi
 lea r9, [rbx+0x2004]

0x14001b284:
 mov r8d, dword ptr [r9-0x404]
 mov r10d, edi
 neg r8d
 cmp dword ptr [rbx+0x2404], edi
 lea r13d, [r8+0xff]
 jle 0x14001b30b
 mov r12d, dword ptr [rbx+0x2404]
 mov esi, edi
 lea rbp, [rsp+0x820]

0x14001b2b1:
 mov eax, 0x80808081
 imul esi
 add edx, esi
 sar edx, 7
 mov eax, edx
 shr eax, 0x1f
 add edx, eax
 mov eax, esi
 imul edx, edx, 0xff
 sub eax, edx
 cdqe 
 movsxd rcx, dword ptr [rbx+rax*4]
 cmp dword ptr [rbp], edi
 je 0x14001b2f9
 cmp ecx, edi
 je 0x14001b2f9
 movsxd rax, dword ptr [rbp]
 movsxd rcx, dword ptr [rbx+rcx*4+0x800]
 movsxd rdx, dword ptr [rbx+rax*4+0x800]
 add rdx, rcx
 mov eax, dword ptr [rbx+rdx*4]
 jmp 0x14001b2fb

0x14001b2f9:
 mov eax, edi

0x14001b2fb:
 xor r10d, eax
 add esi, r13d
 add rbp, 4
 sub r12, 0x1
 jne 0x14001b2b1

0x14001b30b:
 lea r8d, [r8+r15-1]
 cmp r8d, edi
 jl 0x14001b35f
 cmp r8d, r15d
 jge 0x14001b35f
 movsxd rax, dword ptr [r9]
 movsxd rcx, dword ptr [rbx+rax*4+0x800]
 mov eax, 0xff
 sub rax, rcx
 cmp r10d, edi
 je 0x14001b356
 cmp dword ptr [rbx+rax*4], edi
 je 0x14001b356
 movsxd rax, dword ptr [rbx+rax*4]
 movsxd rdx, dword ptr [rbx+rax*4+0x800]
 movsxd rax, r10d
 movsxd rcx, dword ptr [rbx+rax*4+0x800]
 add rdx, rcx
 mov ecx, dword ptr [rbx+rdx*4]
 jmp 0x14001b358

0x14001b356:
 mov ecx, edi

0x14001b358:
 movsxd rax, r8d
 xor byte ptr [rax+r14], cl

0x14001b35f:
 inc r11d
 add r9, 4
 cmp r11d, dword ptr [rbx+0x2000]
 jl 0x14001b284

0x14001b373:
 mov eax, dword ptr [rbx+0x2404]
 cmp dword ptr [rbx+0x2000], eax
 setle al
 jmp 0x14001b386

0x14001b384:
 mov al, 0x1

0x14001b386:
 lea r11, [rsp+0x1020]
 mov rbx, qword ptr [r11+0x30]
 mov rbp, qword ptr [r11+0x40]
 mov rsi, qword ptr [r11+0x48]
 mov rsp, r11
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 ret 
 int3 

0x14001b3a8:
 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x820
 mov ebx, dword ptr [rcx+0x2404]
 mov rdi, rcx
 test ebx, ebx
 jle 0x14001b3e6
 mov r8, rbx
 lea rcx, [rax-0x408]
 xor edx, edx
 shl r8, 2
 call 0x14002d190

0x14001b3e6:
 mov esi, 0x1
 mov dword ptr [rsp+0x420], 0x1
 cmp ebx, esi
 jl 0x14001b46f
 lea rbp, [rdi+4]

0x14001b3fe:
 test ebx, ebx
 jle 0x14001b415
 mov r8d, ebx
 lea rcx, [rsp+0x20]
 xor edx, edx
 shl r8, 2
 call 0x14002d190

0x14001b415:
 mov eax, dword ptr [rbp]
 lea r9, [rdi+0xc00]
 lea r8, [rsp+0x420]
 lea rdx, [rsp+0x20]
 mov rcx, rdi
 mov dword ptr [rsp+0x24], 0x1
 mov dword ptr [rsp+0x20], eax
 call sub_14001ae88
 mov ebx, dword ptr [rdi+0x2404]
 test ebx, ebx
 jle 0x14001b465
 mov r8, rbx
 lea rdx, [rdi+0xc00]
 lea rcx, [rsp+0x420]
 shl r8, 2
 call 0x14002d490

0x14001b465:
 inc esi
 add rbp, 4
 cmp esi, ebx
 jle 0x14001b3fe

0x14001b46f:
 lea r11, [rsp+0x820]
 mov rbx, qword ptr [r11+0x10]
 mov rbp, qword ptr [r11+0x18]
 mov rsi, qword ptr [r11+0x20]
 mov rdi, qword ptr [r11+0x28]
 mov rsp, r11
 pop r12
 ret 
 int3 
 int3 
 int3 

0x14001b490:
 sub rsp, 0x28
 mov r9, rcx
 mov dword ptr [rcx+0x2404], edx
 mov byte ptr [rcx+0x2c08], 0x0
 call sub_14001ae30
 mov rcx, r9
 add rsp, 0x28
 jmp 0x14001b3a8
 int3 
 int3 
 int3 

0x14001b4b8:
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 mov rcx, qword ptr [rcx]
 call 0x14002ec9c
 mov rcx, qword ptr [rbx+0x8]
 call 0x14002ec9c
 mov rcx, qword ptr [rbx+0x30]
 call 0x14002ec9c
 mov rcx, qword ptr [rbx+0x28]
 call 0x14002ec9c
 mov rcx, qword ptr [rbx+0x20]
 add rsp, 0x20
 pop rbx
 jmp 0x14002ec9c
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001b4f4
; --------------------------------------------------------------------------
sub_14001b4f4   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 mov ecx, 0xffff4
 call 0x14002c914
 mov ecx, 0x40000
 mov qword ptr [rbx], rax
 call 0x14002c914
 xor r8d, r8d
 xor r9d, r9d
 mov r10d, 0xffff
 lea edx, [r8+1]
 mov qword ptr [rbx+0x8], rax

0x14001b528:
 mov rax, qword ptr [rbx+0x8]
 mov ecx, edx
 mov dword ptr [rax+rcx*4], r8d
 mov rax, qword ptr [rbx]
 mov dword ptr [r9+rax], edx
 mov rax, qword ptr [rbx]
 mov dword ptr [r9+rax+0x3fffc], edx
 add edx, edx
 cmp edx, r10d
 jbe 0x14001b551
 xor edx, 0x1100b

0x14001b551:
 inc r8d
 add r9, 4
 cmp r8d, r10d
 jb 0x14001b528
 mov rax, qword ptr [rbx+0x8]
 mov ecx, 0x7fff8
 mov edx, 0x1ffff
 mov dword ptr [rax], 0x1fffe

0x14001b571:
 mov rax, qword ptr [rbx]
 and dword ptr [rcx+rax], 0x0
 add rcx, 4
 sub rdx, 0x1
 jne 0x14001b571
 add rsp, 0x20
 pop rbx
 ret 
sub_14001b4f4   endp
 
; --------------------------------------------------------------------------
; sub_14001b588
; --------------------------------------------------------------------------
sub_14001b588   proc
 xor r9d, r9d
 mov r8, rcx
 cmp dword ptr [rcx+0x18], r9d
 jbe 0x14001b5e5
 mov r10d, dword ptr [rcx+0x14]

0x14001b598:
 xor r11d, r11d
 test r10d, r10d
 je 0x14001b5dc

0x14001b5a0:
 lea eax, [r10+r9]
 xor eax, r11d
 jne 0x14001b5ad
 xor edx, edx
 jmp 0x14001b5c1

0x14001b5ad:
 mov edx, eax
 mov rax, qword ptr [r8+0x8]
 mov ecx, 0xffff
 sub ecx, dword ptr [rax+rdx*4]
 mov rax, qword ptr [r8]
 mov edx, dword ptr [rax+rcx*4]

0x14001b5c1:
 mov rax, qword ptr [r8+0x28]
 imul r10d, r9d
 add r10d, r11d
 inc r11d
 mov dword ptr [rax+r10*4], edx
 mov r10d, dword ptr [r8+0x14]
 cmp r11d, r10d
 jb 0x14001b5a0

0x14001b5dc:
 inc r9d
 cmp r9d, dword ptr [r8+0x18]
 jb 0x14001b598

0x14001b5e5:
 ret 
sub_14001b588   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_14001b5e8
; --------------------------------------------------------------------------
sub_14001b5e8   proc \
 arg_1 : qword, ; [rsp+0x8]
 arg_2 : qword ; [rsp+0x10]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rdi
 mov r8d, dword ptr [rcx+0x14]
 xor r11d, r11d
 xor edi, edi
 mov r10, rcx
 mov r9d, r8d
 test r8d, r8d
 je 0x14001b675

0x14001b606:
 mov rcx, qword ptr [r10+0x20]
 cmp byte ptr [r11+rcx], 0x0
 jne 0x14001b669
 mov eax, r9d
 cmp byte ptr [rax+rcx], 0x0
 jne 0x14001b624

0x14001b61a:
 inc r9d
 cmp byte ptr [r9+rcx], 0x0
 je 0x14001b61a

0x14001b624:
 xor ebx, ebx
 test r8d, r8d
 je 0x14001b664

0x14001b62b:
 mov eax, ebx
 xor eax, r9d
 jne 0x14001b636
 xor edx, edx
 jmp 0x14001b64a

0x14001b636:
 mov edx, eax
 mov rax, qword ptr [r10+0x8]
 mov ecx, 0xffff
 sub ecx, dword ptr [rax+rdx*4]
 mov rax, qword ptr [r10]
 mov edx, dword ptr [rax+rcx*4]

0x14001b64a:
 mov rax, qword ptr [r10+0x28]
 imul r8d, edi
 add r8d, ebx
 inc ebx
 mov dword ptr [rax+r8*4], edx
 mov r8d, dword ptr [r10+0x14]
 cmp ebx, r8d
 jb 0x14001b62b

0x14001b664:
 inc edi
 inc r9d

0x14001b669:
 mov r8d, dword ptr [r10+0x14]
 inc r11d
 cmp r11d, r8d
 jb 0x14001b606

0x14001b675:
 mov rbx, qword ptr [arg_1]
 mov rdi, qword ptr [arg_2]
 ret 
sub_14001b5e8   endp
 

0x14001b680:
 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x28
 mov edx, dword ptr [rcx+0x14]
 mov rbx, rcx
 mov eax, 4
 imul edx, dword ptr [rcx+0x1c]
 mov rcx, -1
 mul rdx
 cmovo rax, rcx
 mov rcx, rax
 call 0x14002c914
 mov r8d, dword ptr [rbx+0x14]
 xor edx, edx
 mov rcx, rax
 mov rdi, rax
 mov qword ptr [rsp+0x80], rax
 imul r8d, dword ptr [rbx+0x1c]
 shl r8, 2
 call 0x14002d190
 xor r11d, r11d
 mov edx, r11d
 mov ecx, r11d
 cmp dword ptr [rbx+0x1c], r11d
 jbe 0x14001b713

0x14001b6e7:
 mov r8, qword ptr [rbx+0x20]
 mov eax, ecx
 cmp byte ptr [rax+r8], r11b
 je 0x14001b6fb

0x14001b6f3:
 inc ecx
 cmp byte ptr [rcx+r8], r11b
 jne 0x14001b6f3

0x14001b6fb:
 mov eax, dword ptr [rbx+0x14]
 imul eax, edx
 inc edx
 add eax, ecx
 inc ecx
 mov dword ptr [rdi+rax*4], 0x1
 cmp edx, dword ptr [rbx+0x1c]
 jb 0x14001b6e7

0x14001b713:
 mov esi, r11d
 mov r8d, r11d
 mov r10, r11
 cmp dword ptr [rbx+0x14], r11d
 jbe 0x14001b8d0

0x14001b726:
 mov rax, qword ptr [rbx+0x20]
 mov ecx, r8d
 cmp byte ptr [rcx+rax], r11b
 je 0x14001b773
 mov edx, dword ptr [rbx+0x1c]

0x14001b736:
 cmp r8d, dword ptr [rbx+0x14]
 jae 0x14001b777
 mov r9d, r11d
 cmp edx, r11d
 jbe 0x14001b763

0x14001b744:
 mov edx, dword ptr [rbx+0x14]
 mov rax, qword ptr [rbx+0x28]
 imul edx, r9d
 add edx, r8d
 inc r9d
 mov ecx, dword ptr [rax+rdx*4]
 xor dword ptr [rdi+rdx*4], ecx
 mov edx, dword ptr [rbx+0x1c]
 cmp r9d, edx
 jb 0x14001b744

0x14001b763:
 mov rax, qword ptr [rbx+0x20]
 inc r8d
 inc r10
 cmp byte ptr [r8+rax], r11b
 jne 0x14001b736

0x14001b773:
 cmp r8d, dword ptr [rbx+0x14]

0x14001b777:
 je 0x14001b8d0
 mov ecx, dword ptr [rbx+0x14]
 mov rax, qword ptr [rbx+0x28]
 imul ecx, esi
 lea r14, [rax+rcx*4]
 lea r15, [rdi+rcx*4]
 mov qword ptr [rsp+0x88], r14
 cmp dword ptr [r14+r10*4], r11d
 jne 0x14001b7a2
 mov eax, r11d
 jmp 0x14001b7b8

0x14001b7a2:
 mov rax, qword ptr [rbx+0x8]
 mov edx, dword ptr [r14+r10*4]
 mov ecx, 0xffff
 sub ecx, dword ptr [rax+rdx*4]
 mov rax, qword ptr [rbx]
 mov eax, dword ptr [rax+rcx*4]

0x14001b7b8:
 mov r12d, r11d
 movsxd r13, eax
 cmp dword ptr [rbx+0x14], r11d
 jbe 0x14001b80a
 mov r9, r14
 mov rbp, r15
 sub r9, r15

0x14001b7cd:
 mov rdx, qword ptr [rbx+0x8]
 mov eax, dword ptr [r9+rbp]
 inc r12d
 mov ecx, dword ptr [rdx+rax*4]
 mov rax, qword ptr [rbx]
 add ecx, dword ptr [rdx+r13*4]
 mov ecx, dword ptr [rax+rcx*4]
 mov dword ptr [r9+rbp], ecx
 mov eax, dword ptr [rbp]
 mov rdx, qword ptr [rbx+0x8]
 mov ecx, dword ptr [rdx+rax*4]
 mov rax, qword ptr [rbx]
 add ecx, dword ptr [rdx+r13*4]
 mov ecx, dword ptr [rax+rcx*4]
 mov dword ptr [rbp], ecx
 add rbp, 4
 cmp r12d, dword ptr [rbx+0x14]
 jb 0x14001b7cd

0x14001b80a:
 mov r9d, r11d
 cmp dword ptr [rbx+0x1c], r11d
 jbe 0x14001b8be
 mov edx, dword ptr [rbx+0x14]

0x14001b81a:
 cmp r9d, esi
 je 0x14001b8b1
 mov ecx, dword ptr [rbx+0x14]
 mov rax, qword ptr [rbx+0x28]
 mov r13d, r11d
 imul ecx, r9d
 lea rbp, [rax+rcx*4]
 lea r12, [rdi+rcx*4]
 movsxd rax, dword ptr [rbp+r10*4]
 mov qword ptr [rsp+0x70], rax
 cmp edx, r11d
 jbe 0x14001b8b1
 mov rdi, qword ptr [rsp+0x70]
 mov rax, rbp
 neg rax
 lea r11, [rax+r14]
 add rax, r15
 sub r12, rbp
 mov r14, rax

0x14001b860:
 mov rdx, qword ptr [rbx+0x8]
 mov eax, dword ptr [r11+rbp]
 inc r13d
 mov ecx, dword ptr [rdx+rax*4]
 mov rax, qword ptr [rbx]
 add ecx, dword ptr [rdx+rdi*4]
 mov ecx, dword ptr [rax+rcx*4]
 xor dword ptr [rbp], ecx
 mov rdx, qword ptr [rbx+0x8]
 mov eax, dword ptr [r14+rbp]
 mov ecx, dword ptr [rdx+rax*4]
 mov rax, qword ptr [rbx]
 add ecx, dword ptr [rdx+rdi*4]
 mov ecx, dword ptr [rax+rcx*4]
 xor dword ptr [r12+rbp], ecx
 mov edx, dword ptr [rbx+0x14]
 add rbp, 4
 cmp r13d, edx
 jb 0x14001b860
 mov rdi, qword ptr [rsp+0x80]
 mov r14, qword ptr [rsp+0x88]
 xor r11d, r11d

0x14001b8b1:
 inc r9d
 cmp r9d, dword ptr [rbx+0x1c]
 jb 0x14001b81a

0x14001b8be:
 inc r8d
 inc esi
 inc r10
 cmp r8d, dword ptr [rbx+0x14]
 jb 0x14001b726

0x14001b8d0:
 mov eax, dword ptr [rbx+0x14]
 imul eax, dword ptr [rbx+0x1c]
 cmp eax, r11d
 jbe 0x14001b8fc
 mov rdx, r11

0x14001b8df:
 mov eax, dword ptr [rdx+rdi]
 mov rcx, qword ptr [rbx+0x28]
 inc r11d
 mov dword ptr [rdx+rcx], eax
 mov eax, dword ptr [rbx+0x14]
 add rdx, 4
 imul eax, dword ptr [rbx+0x1c]
 cmp r11d, eax
 jb 0x14001b8df

0x14001b8fc:
 mov rcx, rdi
 add rsp, 0x28
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 jmp 0x14002ec9c

0x14001b914:
 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rdi
 push r12
 push r13
 push r14
 sub rsp, 0xe0
 movaps xmmword ptr [rax-0x28], xmm6
 movaps xmmword ptr [rax-0x38], xmm7
 movaps xmmword ptr [rax-0x48], xmm8
 movaps xmmword ptr [rax-0x58], xmm9
 movaps xmmword ptr [rax-0x68], xmm10
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x80], rax
 mov r10, qword ptr [rsp+0x120]
 mov r14d, 0xf
 mov rbx, r9
 mov r11, rcx
 test r9b, r14b
 jne 0x14001bbb6
 test r10b, r14b
 jne 0x14001bbb6
 cmp dword ptr [0x14005a138], 3
 jl 0x14001bbb6
 mov ecx, dword ptr [rcx+0x14]
 mov rax, qword ptr [r11+0x28]
 mov rdi, qword ptr [r11+0x8]
 imul ecx, r8d
 mov rbp, qword ptr [r11]
 add ecx, edx
 xor r8d, r8d
 movsxd r13, dword ptr [rax+rcx*4]
 mov r9d, r8d
 mov rdx, r8
 lea r12d, [r14+1]

0x14001b9b1:
 mov eax, dword ptr [rdi+rdx*4]
 inc rdx
 add eax, dword ptr [rdi+r13*4]
 mov ecx, dword ptr [rbp+rax*4]
 mov eax, r9d
 mov byte ptr [rsp+rdx+0x3f], cl
 shr ecx, 8
 shl eax, 4
 mov byte ptr [rsp+rdx+0xf], cl
 mov ecx, dword ptr [rdi+rax*4]
 mov eax, r9d
 add ecx, dword ptr [rdi+r13*4]
 shl eax, 8
 mov ecx, dword ptr [rbp+rcx*4]
 mov byte ptr [rsp+rdx+0x1f], cl
 shr ecx, 8
 mov byte ptr [rsp+rdx+0x2f], cl
 mov ecx, dword ptr [rdi+rax*4]
 mov eax, r9d
 add ecx, dword ptr [rdi+r13*4]
 shl eax, 0xc
 inc r9d
 mov ecx, dword ptr [rbp+rcx*4]
 mov byte ptr [rsp+rdx+0x5f], cl
 shr ecx, 8
 mov byte ptr [rsp+rdx+0x4f], cl
 mov ecx, dword ptr [rdi+rax*4]
 add ecx, dword ptr [rdi+r13*4]
 mov ecx, dword ptr [rbp+rcx*4]
 mov byte ptr [rsp+rdx-1], cl
 shr ecx, 8
 mov byte ptr [rsp+rdx+0x6f], cl
 cmp r9d, r12d
 jb 0x14001b9b1
 mov r9, qword ptr [rsp+0x128]
 mov eax, 0xff
 cwde 
 movd xmm0, eax
 punpcklwd xmm0, xmm0
 pshufd xmm10, xmm0, 0x0
 movd xmm0, r14d
 punpcklbw xmm0, xmm0
 punpcklbw xmm0, xmm0
 pshufd xmm9, xmm0, 0x0
 movdqa xmm8, xmm9
 psllw xmm8, 4
 cmp r9, 0x20
 jb 0x14001bb76
 mov rcx, rbx
 lea rdx, [r10+0x10]
 sub rcx, r10
 sub r12, r10

0x14001ba77:
 movdqa xmm6, xmmword ptr [r8+rbx]
 movdqa xmm1, xmmword ptr [rcx+rdx]
 movdqa xmm5, xmmword ptr [rsp+0x40]
 add r8, 0x20
 movdqa xmm2, xmmword ptr [rsp+0x10]
 movdqa xmm0, xmm1
 movdqa xmm7, xmm6
 pand xmm1, xmm10
 pand xmm6, xmm10
 psrlw xmm0, 8
 packuswb xmm6, xmm1
 psrlw xmm7, 8
 movdqa xmm1, xmmword ptr [rsp+0x60]
 movdqa xmm4, xmm6
 packuswb xmm7, xmm0
 movdqa xmm0, xmmword ptr [rsp+0x20]
 pand xmm4, xmm9
 movdqa xmm3, xmm7
 pshufb xmm5, xmm4
 pshufb xmm2, xmm4
 pand xmm3, xmm9
 pshufb xmm1, xmm3
 pand xmm6, xmm8
 pand xmm7, xmm8
 psrlw xmm6, 4
 psrlw xmm7, 4
 pshufb xmm0, xmm6
 pxor xmm5, xmm0
 pxor xmm5, xmm1
 movdqa xmm0, xmmword ptr [rsp]
 movdqa xmm1, xmmword ptr [rsp+0x50]
 pshufb xmm0, xmm7
 pshufb xmm1, xmm3
 pxor xmm5, xmm0
 movdqa xmm0, xmmword ptr [rsp+0x30]
 pshufb xmm0, xmm6
 pxor xmm2, xmm0
 pxor xmm2, xmm1
 movdqa xmm0, xmmword ptr [rsp+0x70]
 movdqa xmm1, xmm5
 pshufb xmm0, xmm7
 pxor xmm2, xmm0
 punpcklbw xmm1, xmm2
 punpckhbw xmm5, xmm2
 movdqa xmm0, xmmword ptr [rdx-0x10]
 pxor xmm0, xmm1
 movdqa xmmword ptr [rdx-0x10], xmm0
 movdqa xmm0, xmmword ptr [rdx]
 pxor xmm0, xmm5
 movdqa xmmword ptr [rdx], xmm0
 add rdx, 0x20
 lea rax, [r12+rdx]
 cmp rax, r9
 jbe 0x14001ba77

0x14001bb76:
 cmp r8, r9
 jae 0x14001bbb2
 sub r9, r8
 sub rbx, r10
 lea rax, [r10+r8]
 dec r9
 shr r9, 0x1
 inc r9

0x14001bb8e:
 movzx ecx, word ptr [rax+rbx]
 mov r8, qword ptr [r11+0x8]
 mov edx, dword ptr [r8+rcx*4]
 mov rcx, qword ptr [r11]
 add edx, dword ptr [r8+r13*4]
 movzx edx, word ptr [rcx+rdx*4]
 xor word ptr [rax], dx
 add rax, 2
 sub r9, 0x1
 jne 0x14001bb8e

0x14001bbb2:
 mov al, 0x1
 jmp 0x14001bbb8

0x14001bbb6:
 xor al, al

0x14001bbb8:
 mov rcx, qword ptr [rsp+0x80]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0xe0]
 mov rbx, qword ptr [r11+0x20]
 mov rbp, qword ptr [r11+0x28]
 mov rdi, qword ptr [r11+0x30]
 movaps xmm6, xmmword ptr [r11-0x10]
 movaps xmm7, xmmword ptr [r11-0x20]
 movaps xmm8, xmmword ptr [r11-0x30]
 movaps xmm9, xmmword ptr [r11-0x40]
 movaps xmm10, xmmword ptr [r11-0x50]
 mov rsp, r11
 pop r14
 pop r13
 pop r12
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_14001bc00
; --------------------------------------------------------------------------
sub_14001bc00   proc
 push rbx
 sub rsp, 0x20
 xor eax, eax
 mov rbx, rcx
 mov byte ptr [rcx+0x10], al
 mov dword ptr [rcx+0x1c], eax
 mov dword ptr [rcx+0x18], eax
 mov dword ptr [rcx+0x14], eax
 mov qword ptr [rcx+0x20], rax
 mov qword ptr [rcx+0x28], rax
 mov qword ptr [rcx+0x30], rax
 mov qword ptr [rcx+0x38], rax
 call sub_14001b4f4
 mov rax, rbx
 add rsp, 0x20
 pop rbx
 ret 
sub_14001bc00   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001bc38
; --------------------------------------------------------------------------
sub_14001bc38   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 and dword ptr [rcx+0x1c], 0x0
 test r9, r9
 mov rdi, r9
 setne al
 mov rbx, rcx
 mov dword ptr [rcx+0x14], edx
 mov dword ptr [rcx+0x18], r8d
 mov byte ptr [rcx+0x10], al
 test al, al
 je 0x14001bd0a
 mov rcx, qword ptr [rcx+0x20]
 call 0x14002ec9c
 mov ecx, dword ptr [rbx+0x18]
 add ecx, dword ptr [rbx+0x14]
 call 0x14002c914
 xor r8d, r8d
 mov qword ptr [rbx+0x20], rax
 mov eax, dword ptr [rbx+0x18]
 add eax, dword ptr [rbx+0x14]
 je 0x14001bca2

0x14001bc87:
 mov al, byte ptr [rdi]
 mov rcx, qword ptr [rbx+0x20]
 inc rdi
 mov byte ptr [r8+rcx], al
 mov eax, dword ptr [rbx+0x18]
 inc r8d
 add eax, dword ptr [rbx+0x14]
 cmp r8d, eax
 jb 0x14001bc87

0x14001bca2:
 mov r8d, dword ptr [rbx+0x14]
 xor ecx, ecx
 test r8d, r8d
 je 0x14001bcc1
 mov rdx, qword ptr [rbx+0x20]

0x14001bcb1:
 cmp byte ptr [rcx+rdx], 0x0
 jne 0x14001bcba
 inc dword ptr [rbx+0x1c]

0x14001bcba:
 inc ecx
 cmp ecx, dword ptr [rbx+0x14]
 jb 0x14001bcb1

0x14001bcc1:
 mov eax, dword ptr [rbx+0x18]
 xor edx, edx
 lea ecx, [r8+rax]
 cmp r8d, ecx
 jae 0x14001bcef
 mov rcx, r8
 sub eax, r8d
 add rcx, qword ptr [rbx+0x20]
 add eax, dword ptr [rbx+0x14]
 mov r8d, eax

0x14001bcdf:
 cmp byte ptr [rcx], 0x0
 je 0x14001bce6
 inc edx

0x14001bce6:
 inc rcx
 sub r8, 0x1
 jne 0x14001bcdf

0x14001bcef:
 cmp dword ptr [rbx+0x1c], edx
 ja 0x14001bd9e
 cmp dword ptr [rbx+0x1c], 0x0
 je 0x14001bd9e
 test edx, edx
 je 0x14001bd9e

0x14001bd0a:
 mov edx, dword ptr [rbx+0x18]
 mov ecx, dword ptr [rbx+0x14]
 lea eax, [rcx+rdx]
 cmp eax, 0xffff
 ja 0x14001bd9e
 cmp edx, ecx
 ja 0x14001bd9e
 test ecx, ecx
 je 0x14001bd9e
 test edx, edx
 je 0x14001bd9e
 mov rcx, qword ptr [rbx+0x28]
 call 0x14002ec9c
 cmp byte ptr [rbx+0x10], 0x0
 mov eax, 4
 je 0x14001bd71
 mov ecx, dword ptr [rbx+0x1c]
 imul ecx, dword ptr [rbx+0x14]
 mul rcx
 mov rcx, -1
 cmovo rax, rcx
 mov rcx, rax
 call 0x14002c914
 mov rcx, rbx
 mov qword ptr [rbx+0x28], rax
 call sub_14001b5e8
 mov rcx, rbx
 call 0x14001b680
 jmp 0x14001bd9a

0x14001bd71:
 mov ecx, dword ptr [rbx+0x18]
 imul ecx, dword ptr [rbx+0x14]
 mul rcx
 mov rcx, -1
 cmovo rax, rcx
 mov rcx, rax
 call 0x14002c914
 mov rcx, rbx
 mov qword ptr [rbx+0x28], rax
 call sub_14001b588

0x14001bd9a:
 mov al, 0x1
 jmp 0x14001bda0

0x14001bd9e:
 xor al, al

0x14001bda0:
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_14001bc38   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_14001bdac
; --------------------------------------------------------------------------
sub_14001bdac   proc \
 arg_1 : qword, ; [rsp+0x50]
 arg_2 : qword, ; [rsp+0x58]
 arg_3 : qword, ; [rsp+0x60]
 arg_4 : qword, ; [rsp+0x68]
 arg_5 : qword, ; [rsp+0x70]
 arg_6 : qword ; [rsp+0x78]

 local local_1: qword ; [rsp+0x20]
 local local_2: qword ; [rsp+0x28]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 push r13
 push r14
 sub rsp, 0x30
 mov rdi, qword ptr [arg_6]
 mov rbp, qword ptr [arg_5]
 xor ebx, ebx
 mov r14, r9
 mov r12d, r8d
 mov r13d, edx
 mov rsi, rcx
 cmp edx, ebx
 jne 0x14001bdf2
 mov r8, rdi
 xor edx, edx
 mov rcx, rbp
 call 0x14002d190

0x14001bdf2:
 mov r9, r14
 mov r8d, r12d
 mov edx, r13d
 mov rcx, rsi
 mov qword ptr [local_2], rdi
 mov qword ptr [local_1], rbp
 call 0x14001b914
 cmp al, bl
 jne 0x14001bead
 cmp r12d, ebx
 jne 0x14001be71
 cmp qword ptr [rsi+0x38], rdi
 je 0x14001be4c
 mov rcx, qword ptr [rsi+0x30]
 call 0x14002ec9c
 mov rcx, -1
 mov eax, 4
 mul rdi
 cmovo rax, rcx
 mov rcx, rax
 call 0x14002c914
 mov qword ptr [rsi+0x38], rdi
 mov qword ptr [rsi+0x30], rax

0x14001be4c:
 mov r8, rbx
 cmp rdi, rbx
 jbe 0x14001be71

0x14001be54:
 movzx edx, word ptr [r8+r14]
 mov rax, qword ptr [rsi+0x8]
 mov rcx, qword ptr [rsi+0x30]
 mov eax, dword ptr [rax+rdx*4]
 mov dword ptr [rcx+r8*4], eax
 add r8, 2
 cmp r8, rdi
 jb 0x14001be54

0x14001be71:
 mov ecx, dword ptr [rsi+0x14]
 mov rax, qword ptr [rsi+0x28]
 imul ecx, r12d
 add ecx, r13d
 mov edx, dword ptr [rax+rcx*4]
 mov rax, qword ptr [rsi+0x8]
 mov r8d, dword ptr [rax+rdx*4]
 cmp rdi, rbx
 jbe 0x14001bead

0x14001be8f:
 mov rax, qword ptr [rsi+0x30]
 mov ecx, dword ptr [rax+rbx*4]
 mov rax, qword ptr [rsi]
 add ecx, r8d
 movzx ecx, word ptr [rax+rcx*4]
 xor word ptr [rbx+rbp], cx
 add rbx, 2
 cmp rbx, rdi
 jb 0x14001be8f

0x14001bead:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x30
 pop r14
 pop r13
 pop r12
 ret 
sub_14001bdac   endp
 
; --------------------------------------------------------------------------
; sub_14001becc
; --------------------------------------------------------------------------
sub_14001becc   proc \
 arg_1 : qword, ; [rsp+0x8]
 arg_2 : qword, ; [rsp+0x48]
 arg_3 : qword ; [rsp+0x50]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_1], rcx
 push rdi
 sub rsp, 0x30
 mov qword ptr [local_1], -2
 mov qword ptr [arg_2], rbx
 mov qword ptr [arg_3], rsi
 mov rbx, rcx
 movsxd rax, dword ptr [rcx+0x2000]
 mov rdi, rax
 test eax, eax
 js 0x14001bf19

0x14001befa:
 mov rsi, qword ptr [rbx+rdi*8]
 test rsi, rsi
 je 0x14001bf13
 mov rcx, rsi
 call sub_140011060
 mov rcx, rsi
 call 0x14002cfa4

0x14001bf13:
 sub rdi, 0x1
 jns 0x14001befa

0x14001bf19:
 mov rcx, qword ptr [rbx+0x40e0]
 test rcx, rcx
 je 0x14001bf2b
 call sub_14002cfac
 nop 

0x14001bf2b:
 mov rcx, qword ptr [rbx+0x4028]
 test rcx, rcx
 je 0x14001bf3c
 call sub_14002cfac

0x14001bf3c:
 mov rbx, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x30
 pop rdi
 ret 
sub_14001becc   endp
 
; --------------------------------------------------------------------------
; sub_14001bf4c
; --------------------------------------------------------------------------
sub_14001bf4c   proc
 mov rax, rsp
 sub rsp, 0x98
 and dword ptr [rax-0x14], 0x0
 mov dword ptr [rax-0x10], ecx
 lea rcx, [rax-0x78]
 mov qword ptr [rax-0x78], rdx
 mov qword ptr [rax-0x70], r8
 mov qword ptr [rax-0x68], r9
 mov dword ptr [rax-0x18], 3
 call sub_140020600
 add rsp, 0x98
 ret 
sub_14001bf4c   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001bf84
; --------------------------------------------------------------------------
sub_14001bf84   proc \
 arg_1 : qword, ; [rsp+0x48]
 arg_2 : qword, ; [rsp+0x50]
 arg_3 : qword, ; [rsp+0x58]
 arg_4 : dword ; [rsp+0x60]

 local local_1: qword ; [rsp+0x20]

 mov rax, rsp
 mov qword ptr [rax+0x8], rcx
 push rdi
 sub rsp, 0x30
 mov qword ptr [local_1], -2
 mov qword ptr [rax+0x10], rbx
 mov qword ptr [rax+0x18], rbp
 mov qword ptr [rax+0x20], rsi
 mov sil, r9b
 mov edi, r8d
 mov rbx, rdx
 mov rbp, rcx
 add rcx, 0x4028
 call sub_14001f55c
 nop 
 lea rcx, [rbp+0x40e0]
 call sub_14001f55c
 mov qword ptr [rbp+0x2008], rbx
 mov dword ptr [rbp+0x2010], edi
 mov byte ptr [rbp+0x2014], sil
 mov eax, dword ptr [arg_4]
 mov dword ptr [rbp+0x2018], eax
 xor ebx, ebx
 mov byte ptr [rbp+0x2020], bl
 mov byte ptr [rbp+0x4198], bl
 mov dword ptr [rbp+0x2004], ebx
 mov word ptr [rbp+0x2022], bx
 xor edx, edx
 mov r8d, 0x2000
 mov rcx, rbp
 call 0x14002d190
 mov dword ptr [rbp+0x2000], ebx
 mov dword ptr [rbp+0x201c], ebx
 mov word ptr [rbp+0x41a8], bx
 mov qword ptr [rbp+0x51a8], rbx
 mov rax, rbp
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x30
 pop rdi
 ret 
sub_14001bf84   endp
 
 int3 
 int3 
 int3 

0x14001c048:
 mov qword ptr [rsp+0x18], rbx
 mov qword ptr [rsp+0x20], rbp
 push rsi
 push rdi
 push r12
 mov eax, 0x1040
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1030], rax
 xor r12d, r12d
 mov rbx, rdx
 mov rsi, rcx
 cmp byte ptr [rdx], r12b
 je 0x14001c139
 lea rdi, [rcx+0x2022]
 mov rcx, rdi
 call 0x140013c20
 mov rbp, rax
 cmp rax, rdi
 jbe 0x14001c0c3
 mov rcx, rdi
 mov word ptr [rax-2], r12w
 call qword ptr [GetFileAttributesW]
 lea ecx, [r12+0x5c]
 mov word ptr [rbp-2], cx
 cmp eax, 0xff
 je 0x14001c0c3
 bt eax, 0xa
 jae 0x14001c0c3
 mov byte ptr [rbx], r12b

0x14001c0c3:
 lea rdx, [0x14003dd40]
 mov rcx, rdi
 call 0x14002f2e8
 cmp rax, r12
 je 0x14001c0da
 mov byte ptr [rbx], r12b

0x14001c0da:
 cmp byte ptr [rbx], r12b
 je 0x14001c139
 mov rcx, qword ptr [rsi+0x51a8]
 cmp rcx, r12
 je 0x14001c106
 mov r9b, 0x1
 xor r8d, r8d
 mov rdx, rdi
 mov byte ptr [rsp+0x20], 0x1
 call sub_140006eb4
 cmp al, r12b
 je 0x14001c106
 mov byte ptr [rbx], r12b

0x14001c106:
 cmp byte ptr [rbx], r12b
 je 0x14001c139
 lea rdx, [rsp+0x30]
 mov r8d, 0x800
 mov rcx, rdi
 call 0x14001435c
 lea rdx, [rsp+0x30]
 mov ecx, 0x54
 call sub_140001454
 lea rcx, [0x140050e70]
 call sub_14000b194

0x14001c139:
 mov rcx, qword ptr [rsp+0x1030]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x1040]
 mov rbx, qword ptr [r11+0x30]
 mov rbp, qword ptr [r11+0x38]
 mov rsp, r11
 pop r12
 pop rdi
 pop rsi
 ret 
 int3 
 int3 
 int3 

0x14001c164:
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x30a0
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x20], -2
 mov qword ptr [rsp+0x30d8], rbx
 mov qword ptr [rsp+0x30e0], rbp
 mov qword ptr [rsp+0x30e8], rsi
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x3090], rax
 mov r13, rcx
 xor ebx, ebx
 mov r12b, bl
 mov r14d, ebx
 mov esi, ebx
 cmp word ptr [rcx+0x2022], bx
 je 0x14001c205
 lea rax, [rcx+0x2022]
 lea rdi, [rcx+0x2022]

0x14001c1d2:
 cmp word ptr [rax], 0x3f
 je 0x14001c1de
 cmp word ptr [rax], 0x2a
 jne 0x14001c1e1

0x14001c1de:
 mov r12b, 0x1

0x14001c1e1:
 cmp r12b, bl
 je 0x14001c1f2
 movzx ecx, word ptr [rax]
 call 0x140013458
 cmp al, bl
 jne 0x14001c202

0x14001c1f2:
 inc esi
 add rdi, 2
 mov rax, rdi
 cmp word ptr [rdi], bx
 je 0x14001c205
 jmp 0x14001c1d2

0x14001c202:
 mov r14d, esi

0x14001c205:
 mov r15d, 0x800
 mov r8, r15
 lea rdx, [r13+0x2022]
 lea rcx, [rsp+0x2090]
 call sub_14001efc0
 mov word ptr [rsp+r14*2+0x2090], bx
 lea rcx, [r13+0x4028]
 call sub_14001f38c
 lea rcx, [rsp+0x1080]
 call sub_140011048
 nop 
 lea rdx, [rsp+0x2090]
 lea rcx, [rsp+0x1080]
 call sub_14001107c
 mov qword ptr [rsp+0x1040], rbx
 mov qword ptr [rsp+0x1048], rbx
 mov qword ptr [rsp+0x1050], rbx
 xor r8d, r8d
 lea rdx, [rsp+0x30]
 lea rcx, [rsp+0x1080]
 call sub_140011240
 cmp al, bl
 je 0x14001c317

0x14001c28f:
 cmp byte ptr [rsp+0x103c], bl
 je 0x14001c2fa
 lea rdx, [r13+r14*2+0x2022]
 mov r8, r15
 lea rcx, [rsp+0x30]
 call sub_14001effc
 lea rcx, [rsp+0x30]
 call 0x140013c20
 lea rdi, [0x14003c920]
 mov rsi, rax
 mov ecx, 2
 repe cmpsd dword ptr [rsi], dword ptr [rdi]
 je 0x14001c2df
 lea rdi, [0x14003dba0]
 mov rsi, rax
 mov ecx, 4
 repe cmpsd dword ptr [rsi], dword ptr [rdi]
 jne 0x14001c2e9

0x14001c2df:
 lea rcx, [rsp+0x30]
 call sub_140013f00

0x14001c2e9:
 lea rdx, [rsp+0x30]
 lea rcx, [r13+0x4028]
 call sub_14001f3b4

0x14001c2fa:
 xor r8d, r8d
 lea rdx, [rsp+0x30]
 lea rcx, [rsp+0x1080]
 call sub_140011240
 cmp al, bl
 jne 0x14001c28f

0x14001c317:
 cmp dword ptr [r13+0x4050], ebx
 jne 0x14001c322
 jmp 0x14001c33b

0x14001c322:
 mov r8, r15
 lea rdx, [r13+0x2022]
 lea rcx, [r13+0x4028]
 call sub_14001f584
 nop 
 mov bl, 0x1

0x14001c33b:
 lea rcx, [rsp+0x1080]
 call sub_140011060
 mov al, bl
 mov rcx, qword ptr [rsp+0x3090]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x30a0]
 mov rbx, qword ptr [r11+0x38]
 mov rbp, qword ptr [r11+0x40]
 mov rsi, qword ptr [r11+0x48]
 mov rsp, r11
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 ret 
 int3 

0x14001c37c:
 mov qword ptr [rsp+0x10], rbx
 mov qword ptr [rsp+0x18], rbp
 mov qword ptr [rsp+0x20], rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 mov eax, 0x1030
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1020], rax
 xor r14d, r14d
 mov rbx, rcx
 mov edi, 0x800
 cmp dword ptr [rcx+0x4050], r14d
 jbe 0x14001c3e6
 lea rdx, [rcx+0x2022]
 mov r8, rdi
 add rcx, 0x4028
 call sub_14001f584
 cmp al, r14b
 jne 0x14001c5bc

0x14001c3e6:
 lea rcx, [rbx+0x40e0]
 mov byte ptr [rbx+0x4198], r14b
 call sub_14001f38c
 mov rcx, qword ptr [rbx+0x2008]
 lea rdx, [rbx+0x2022]
 mov r8, rdi
 call sub_14001f584
 xor edx, edx
 cmp al, dl
 jne 0x14001c41c
 xor al, al
 jmp 0x14001c5be

0x14001c41c:
 mov r12b, dl
 mov edi, edx
 mov ebp, edx
 mov r15d, edx
 cmp word ptr [rbx+0x2022], dx
 je 0x14001c5bc
 lea r14, [rbx+0x2022]
 lea rsi, [rbx+0x2022]

0x14001c441:
 cmp word ptr [r14], 0x3f
 je 0x14001c44f
 cmp word ptr [r14], 0x2a
 jne 0x14001c452

0x14001c44f:
 mov r12b, 0x1

0x14001c452:
 movzx ecx, word ptr [r14]
 call 0x140013458
 xor edx, edx
 cmp al, dl
 jne 0x14001c470
 movzx ecx, word ptr [r14]
 call sub_14001346c
 xor edx, edx
 cmp al, dl
 je 0x14001c480

0x14001c470:
 cmp r12b, dl
 je 0x14001c47a
 inc edi
 mov r12b, dl

0x14001c47a:
 cmp edi, edx
 cmove ebp, r15d

0x14001c480:
 add rsi, 2
 inc r15d
 mov r14, rsi
 cmp word ptr [rsi], dx
 jne 0x14001c441
 cmp edi, edx
 je 0x14001c5bc
 mov eax, dword ptr [rbx+0x2010]
 mov byte ptr [rbx+0x4198], 0x1
 cmp eax, edx
 je 0x14001c4ad
 cmp eax, 0x1
 jne 0x14001c4bf

0x14001c4ad:
 cmp edi, 0x1
 jne 0x14001c4bf
 mov rcx, rbx
 call 0x14001c164
 jmp 0x14001c5be

0x14001c4bf:
 mov rcx, rdx
 lea rsi, [0x14003c920]

0x14001c4c9:
 movzx eax, word ptr [rcx+rsi]
 add rcx, 2
 mov word ptr [rsp+rcx+0x1e], ax
 cmp ax, dx
 jne 0x14001c4c9
 mov r15d, 0x800
 lea rcx, [rsp+0x20]
 mov rdx, r15
 call sub_1400134a8
 mov edi, ebp
 lea r12, [rbx+rdi*2+0x2022]
 movzx ecx, word ptr [r12]
 call 0x140013458
 xor r14d, r14d
 cmp al, r14b
 jne 0x14001c51c
 movzx ecx, word ptr [r12]
 call sub_14001346c
 mov rdx, r12
 cmp al, r14b
 je 0x14001c524

0x14001c51c:
 lea rdx, [rbx+rdi*2+0x2024]

0x14001c524:
 lea rcx, [rsp+0x20]
 mov r8, r15
 call sub_14001effc
 lea rcx, [rsp+0x20]
 call 0x140013c20
 mov rdi, rsi
 mov ecx, 2
 mov rsi, rax
 repe cmpsd dword ptr [rsi], dword ptr [rdi]
 je 0x14001c55f
 lea rdi, [0x14003dba0]
 mov rsi, rax
 mov ecx, 4
 repe cmpsd dword ptr [rsi], dword ptr [rdi]
 jne 0x14001c563

0x14001c55f:
 mov word ptr [rax], r14w

0x14001c563:
 lea rdx, [rsp+0x20]
 lea rcx, [rbx+0x40e0]
 call sub_14001f3b4
 movzx ecx, word ptr [r12]
 call sub_14001346c
 mov cl, al
 cmp al, r14b
 je 0x14001c587
 inc ebp

0x14001c587:
 mov eax, ebp
 mov word ptr [rbx+rax*2+0x2022], r14w
 cmp cl, r14b
 jne 0x14001c5bc
 lea rcx, [rbx+0x2022]
 mov rdx, r15
 call sub_1400134a8
 lea rdx, [0x14003c920]
 lea rcx, [rbx+0x2022]
 mov r8, r15
 call sub_14001effc

0x14001c5bc:
 mov al, 0x1

0x14001c5be:
 mov rcx, qword ptr [rsp+0x1020]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x1030]
 mov rbx, qword ptr [r11+0x38]
 mov rbp, qword ptr [r11+0x40]
 mov rsi, qword ptr [r11+0x48]
 mov rsp, r11
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_14001c5f0
; --------------------------------------------------------------------------
sub_14001c5f0   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x38]
 arg_3 : qword, ; [rsp+0x40]
 arg_4 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x20
 mov rdi, rcx
 call 0x14001c37c
 xor ebp, ebp
 cmp al, bpl
 jne 0x14001c61f
 xor al, al
 jmp 0x14001c6fc

0x14001c61f:
 lea rbx, [rdi+0x2022]
 mov r12d, 0x800
 mov rdx, rbx
 mov rcx, rbx
 mov r8, r12
 call sub_1400137b4
 mov rcx, rbx
 call sub_140013474
 cmp al, bpl
 je 0x14001c666
 movzx ecx, word ptr [rdi+0x2026]
 call 0x140013458
 cmp al, bpl
 je 0x14001c666
 mov eax, 0x1
 cmp word ptr [rdi+0x2028], bp
 je 0x14001c668

0x14001c666:
 mov eax, ebp

0x14001c668:
 mov rcx, rbx
 mov byte ptr [rdi+0x2020], al
 call 0x140013c20
 mov rsi, rax
 cmp word ptr [rax], bp
 jne 0x14001c690
 lea rdx, [0x14003c920]
 mov r8, r12
 mov rcx, rbx
 call sub_14001effc

0x14001c690:
 cmp word ptr [rsi], 0x2e
 jne 0x14001c6c6
 cmp word ptr [rsi+2], bp
 je 0x14001c6a9
 cmp word ptr [rsi+2], 0x2e
 jne 0x14001c6c6
 cmp word ptr [rsi+4], bp
 jne 0x14001c6c6

0x14001c6a9:
 mov rdx, r12
 mov rcx, rbx
 call sub_1400134a8
 lea rdx, [0x14003c920]
 mov r8, r12
 mov rcx, rbx
 call sub_14001effc

0x14001c6c6:
 sub rsi, rdi
 mov dword ptr [rdi+0x2000], ebp
 add rdi, 0x3022
 sub rsi, 0x2022
 sar rsi, 0x1
 mov qword ptr [rdi+0x117e], rsi
 sub rdi, rbx

0x14001c6ea:
 movzx ecx, word ptr [rbx]
 mov word ptr [rdi+rbx], cx
 add rbx, 2
 cmp cx, bp
 jne 0x14001c6ea
 mov al, 0x1

0x14001c6fc:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x20
 pop r12
 ret 
sub_14001c5f0   endp
 
 int3 

0x14001c718:
 push rsi
 push rdi
 push r12
 push r14
 push r15
 mov eax, 0x2060
 call sub_14003a300
 sub rsp, rax
 mov qword ptr [rsp+0x40], -2
 mov qword ptr [rsp+0x20a0], rbx
 mov qword ptr [rsp+0x20a8], rbp
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x2050], rax
 mov rbp, rdx
 mov rbx, rcx
 lea rsi, [rcx+0x2022]
 xor r14d, r14d
 cmp word ptr [rsi], r14w
 jne 0x14001c778
 lea eax, [r14+3]
 jmp 0x14001ccb6

0x14001c778:
 mov r12b, r14b
 movsxd rax, dword ptr [rcx+0x2000]
 lea r15, [0x14003c920]
 cmp qword ptr [rcx+rax*8], r14
 jne 0x14001c938
 mov rcx, rsi
 call sub_140013430
 mov r14b, al
 xor r8d, r8d
 cmp al, r8b
 jne 0x14001c7e1
 mov r8b, byte ptr [rbx+0x2014]
 mov rdx, rbp
 mov rcx, rsi
 call sub_140011338
 xor r8d, r8d
 cmp al, r8b
 je 0x14001c7e1
 mov cl, 0x1
 cmp byte ptr [rbp+0x100c], r8b
 je 0x14001c7e4
 cmp byte ptr [rbx+0x2014], r8b
 je 0x14001c7dd
 cmp byte ptr [rbp+0x100d], r8b
 jne 0x14001c7e4

0x14001c7dd:
 mov dl, 0x1
 jmp 0x14001c821

0x14001c7e1:
 mov cl, r8b

0x14001c7e4:
 mov dl, r8b
 cmp dword ptr [rbx+0x2000], r8d
 jg 0x14001c826
 mov eax, dword ptr [rbx+0x2010]
 cmp eax, 2
 je 0x14001c826
 cmp byte ptr [rbx+0x4198], r8b
 je 0x14001c809
 cmp eax, 0x1
 jne 0x14001c826

0x14001c809:
 cmp r14b, r8b
 je 0x14001c813
 cmp eax, 3
 je 0x14001c826

0x14001c813:
 cmp byte ptr [rbx+0x2020], r8b
 je 0x14001c821
 cmp eax, 0x1
 jne 0x14001c826

0x14001c821:
 mov dil, r8b
 jmp 0x14001c829

0x14001c826:
 mov dil, 0x1

0x14001c829:
 cmp dword ptr [rbx+0x2000], r8d
 jne 0x14001c839
 mov byte ptr [rbx+0x4199], dil

0x14001c839:
 cmp dil, r8b
 jne 0x14001c8c6
 cmp r14b, r8b
 jne 0x14001c8c6
 xor r14d, r14d
 cmp cl, r14b
 je 0x14001c865
 cmp dl, r14b
 je 0x14001c865
 cmp dword ptr [rbx+0x2010], 0x1
 je 0x14001c865
 mov r12b, 0x1
 jmp 0x14001cb27

0x14001c865:
 mov edi, r14d
 cmp cl, r14b
 jne 0x14001c8bb
 mov al, byte ptr [rbp+0x1044]
 neg al
 sbb edi, edi
 add edi, 3
 mov rcx, qword ptr [rbx+0x51a8]
 cmp rcx, r14
 je 0x14001c8a5
 mov byte ptr [rsp+0x20], 0x1
 mov r9b, 0x1
 xor r8d, r8d
 mov rdx, rsi
 call sub_140006eb4
 cmp al, r14b
 je 0x14001c8a5
 mov edi, 3
 jmp 0x14001c8bb

0x14001c8a5:
 lea rdx, [rbx+0x41a8]
 mov r8, rsi
 lea rcx, [0x140050e70]
 call sub_14000b418

0x14001c8bb:
 mov word ptr [rsi], r14w
 mov eax, edi
 jmp 0x14001ccb6

0x14001c8c6:
 mov ecx, 0x1010
 call 0x14002d27c
 mov qword ptr [rsp+0x38], rax
 xor r14d, r14d
 cmp rax, r14
 je 0x14001c8ea
 mov rcx, rax
 call sub_140011048
 mov r11, rax
 jmp 0x14001c8ed

0x14001c8ea:
 mov r11, r14

0x14001c8ed:
 movsxd rax, dword ptr [rbx+0x2000]
 mov qword ptr [rbx+rax*8], r11
 mov r8d, 0x800
 mov rdx, rsi
 lea rcx, [rsp+0x50]
 call sub_14001efc0
 cmp dil, r14b
 je 0x14001c923
 mov r8d, 0x800
 mov rdx, r15
 lea rcx, [rsp+0x50]
 call 0x140013e08

0x14001c923:
 movsxd rcx, dword ptr [rbx+0x2000]
 lea rdx, [rsp+0x50]
 mov rcx, qword ptr [rbx+rcx*8]
 call sub_14001107c

0x14001c938:
 movsxd rcx, dword ptr [rbx+0x2000]
 mov r8b, byte ptr [rbx+0x2014]
 mov rdx, rbp
 mov rcx, qword ptr [rbx+rcx*8]
 call sub_140011240
 cmp al, r14b
 jne 0x14001cb27
 mov dil, byte ptr [rbp+0x1044]
 mov byte ptr [rsp+0x30], dil
 cmp dil, r14b
 je 0x14001c97e
 lea rdx, [rsp+0x30]
 mov rcx, rbx
 call 0x14001c048
 mov dil, byte ptr [rsp+0x30]

0x14001c97e:
 mov word ptr [rsp+0x1050], r14w
 movsxd rax, dword ptr [rbx+0x2000]
 mov r12, qword ptr [rbx+rax*8]
 cmp r12, r14
 je 0x14001c9a7
 mov rcx, r12
 call sub_140011060
 mov rcx, r12
 call 0x14002cfa4

0x14001c9a7:
 movsxd rax, dword ptr [rbx+0x2000]
 mov qword ptr [rbx+rax*8], r14
 add dword ptr [rbx+0x2000], -1
 mov ecx, dword ptr [rbx+0x2000]
 js 0x14001c9d7

0x14001c9c1:
 movsxd rax, ecx
 cmp qword ptr [rbx+rax*8], r14
 jne 0x14001c9d7
 dec ecx
 mov dword ptr [rbx+0x2000], ecx
 cmp ecx, r14d
 jge 0x14001c9c1

0x14001c9d7:
 cmp dword ptr [rbx+0x2000], r14d
 jge 0x14001c9f5
 cmp dil, r14b
 je 0x14001c9eb
 inc dword ptr [rbx+0x201c]

0x14001c9eb:
 mov eax, 0x1
 jmp 0x14001ccb6

0x14001c9f5:
 mov r15d, 0x5c
 mov edx, r15d
 mov rcx, rsi
 call sub_14002ee08
 mov r12, rax
 cmp rax, r14
 je 0x14001cad8
 mov rdx, rax
 lea r8, [rsp+0x50]
 sub r8, rax

0x14001ca1d:
 movzx ecx, word ptr [rdx]
 mov word ptr [r8+rdx], cx
 add rdx, 2
 cmp cx, r14w
 jne 0x14001ca1d
 mov eax, dword ptr [rbx+0x2004]
 cmp dword ptr [rbx+0x2000], eax
 jge 0x14001ca62
 lea rcx, [rbx+0x3022]
 call 0x140013c20
 lea rdx, [rsp+0x52]

0x14001ca4e:
 movzx ecx, word ptr [rax]
 mov word ptr [rdx], cx
 add rax, 2
 add rdx, 2
 cmp cx, r14w
 jne 0x14001ca4e

0x14001ca62:
 mov word ptr [r12], r14w
 mov rcx, rsi
 lea rdx, [rsp+0x1050]
 sub rdx, rsi

0x14001ca75:
 movzx eax, word ptr [rcx]
 mov word ptr [rdx+rcx], ax
 add rcx, 2
 cmp ax, r14w
 jne 0x14001ca75
 mov edx, r15d
 mov rcx, rsi
 call sub_14002ee08
 mov r11, rax
 cmp rax, r14
 jne 0x14001cab9
 lea rcx, [rsp+0x52]
 lea rax, [rsp+0x52]
 sub rsi, rax

0x14001caa6:
 movzx eax, word ptr [rcx]
 mov word ptr [rsi+rcx], ax
 add rcx, 2
 cmp ax, r14w
 jne 0x14001caa6
 jmp 0x14001cad8

0x14001cab9:
 lea rcx, [rsp+0x50]
 lea rax, [rsp+0x50]
 sub r11, rax

0x14001cac6:
 movzx eax, word ptr [rcx]
 mov word ptr [r11+rcx], ax
 add rcx, 2
 cmp ax, r14w
 jne 0x14001cac6

0x14001cad8:
 cmp dword ptr [rbx+0x2018], 2
 jne 0x14001cb1a
 mov r8b, byte ptr [rbx+0x2014]
 mov rdx, rbp
 lea rcx, [rsp+0x1050]
 call sub_140011338
 cmp al, r14b
 je 0x14001cb1a
 cmp byte ptr [rbp+0x100c], r14b
 je 0x14001cb1a
 or dword ptr [rbp+0x1040], 0x1
 neg dil
 sbb eax, eax
 and eax, 2
 jmp 0x14001ccb6

0x14001cb1a:
 neg dil
 sbb eax, eax
 add eax, 3
 jmp 0x14001ccb6

0x14001cb27:
 cmp byte ptr [rbp+0x100c], r14b
 je 0x14001cc95
 cmp byte ptr [rbx+0x2014], r14b
 je 0x14001cb4a
 cmp byte ptr [rbp+0x100d], r14b
 jne 0x14001cc95

0x14001cb4a:
 cmp r12b, r14b
 jne 0x14001cb76
 cmp dword ptr [rbx+0x2000], r14d
 jne 0x14001cb76
 cmp byte ptr [rbx+0x4199], r14b
 jne 0x14001cb76
 mov eax, dword ptr [rbx+0x2018]
 sub eax, 3
 neg eax
 sbb eax, eax
 and eax, 3
 jmp 0x14001ccb6

0x14001cb76:
 mov rcx, qword ptr [rbx+0x51a8]
 cmp rcx, r14
 je 0x14001cbc1
 mov byte ptr [rsp+0x20], r14b
 xor r9d, r9d
 mov r8b, 0x1
 mov rdx, rbp
 call sub_140006eb4
 cmp al, r14b
 jne 0x14001cbb1
 mov edx, dword ptr [rbp+0x1008]
 mov rcx, qword ptr [rbx+0x51a8]
 call 0x140006bc4
 cmp al, r14b
 je 0x14001cbc1

0x14001cbb1:
 neg r12b
 sbb eax, eax
 and eax, 0xfffffffe
 add eax, 3
 jmp 0x14001ccb6

0x14001cbc1:
 cmp r12b, r14b
 jne 0x14001cbd1
 mov rcx, rsi
 call 0x140013c20
 mov r15, rax

0x14001cbd1:
 lea rdx, [rsp+0x50]

0x14001cbd6:
 movzx ecx, word ptr [r15]
 mov word ptr [rdx], cx
 add r15, 2
 add rdx, 2
 cmp cx, r14w
 jne 0x14001cbd6
 mov rcx, rbp
 mov rdx, rsi
 sub rdx, rbp

0x14001cbf4:
 movzx eax, word ptr [rcx]
 mov word ptr [rdx+rcx], ax
 add rcx, 2
 cmp ax, r14w
 jne 0x14001cbf4
 xor eax, eax
 or rcx, 0xffffffffffffffff
 mov rdi, rsi
 repne scasd eax, dword ptr [rdi]
 not rcx
 lea rdx, [rcx-1]
 or rcx, 0xffffffffffffffff
 lea rdi, [rsp+0x50]
 repne scasd eax, dword ptr [rdi]
 not rcx
 lea rax, [rdx+rcx]
 mov edi, 0x800
 cmp rax, rdi
 jae 0x14001cc75
 cmp dword ptr [rbx+0x2000], 0x3ff
 jge 0x14001cc75
 mov rdx, rdi
 mov rcx, rsi
 call sub_1400134a8
 mov r8, rdi
 lea rdx, [rsp+0x50]
 mov rcx, rsi
 call sub_14001effc
 inc dword ptr [rbx+0x2000]
 mov eax, dword ptr [rbx+0x2000]
 cmp r12b, r14b
 je 0x14001cc9a
 mov dword ptr [rbx+0x2004], eax
 jmp 0x14001cc95

0x14001cc75:
 lea r9, [rsp+0x50]
 lea r8, [0x14003d808]
 mov rdx, rsi
 mov ecx, 0x53
 call sub_14001bf4c
 mov eax, 2
 jmp 0x14001ccb6

0x14001cc95:
 cmp r12b, r14b
 jne 0x14001ccb4

0x14001cc9a:
 xor r8d, r8d
 mov rdx, rbp
 mov rcx, rsi
 call 0x1400130dc
 cmp al, r14b
 jne 0x14001ccb4
 mov eax, 3
 jmp 0x14001ccb6

0x14001ccb4:
 xor eax, eax

0x14001ccb6:
 mov rcx, qword ptr [rsp+0x2050]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x2060]
 mov rbx, qword ptr [r11+0x40]
 mov rbp, qword ptr [r11+0x48]
 mov rsp, r11
 pop r15
 pop r14
 pop r12
 pop rdi
 pop rsi
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001cce4
; --------------------------------------------------------------------------
sub_14001cce4   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x48]
 arg_3 : qword, ; [rsp+0x50]
 arg_4 : qword ; [rsp+0x58]

 local local_1: dword ; [rsp+0x20]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x30
 xor r12d, r12d
 mov rbp, rdx
 mov rbx, rcx
 cmp dword ptr [rcx+0x2000], r12d
 jge 0x14001cd19

0x14001cd0f:
 mov eax, 0x1
 jmp 0x14001cdc3

0x14001cd19:
 mov esi, r12d

0x14001cd1c:
 cmp word ptr [rbx+0x2022], r12w
 jne 0x14001cd33
 mov rcx, rbx
 call sub_14001c5f0
 cmp al, r12b
 je 0x14001cd0f

0x14001cd33:
 inc esi
 test esi, 0x3ff
 jne 0x14001cd42
 call 0x14001f5e0

0x14001cd42:
 mov rdx, rbp
 mov rcx, rbx
 call 0x14001c718
 mov edi, eax
 cmp eax, 2
 jne 0x14001cd5c
 inc dword ptr [rbx+0x201c]
 jmp 0x14001cd1c

0x14001cd5c:
 cmp eax, 3
 je 0x14001cd1c
 cmp eax, r12d
 jne 0x14001cd78
 cmp byte ptr [rbp+0x100c], r12b
 je 0x14001cd8a
 cmp dword ptr [rbx+0x2018], r12d
 je 0x14001cd1c

0x14001cd78:
 cmp eax, 0x1
 jne 0x14001cd8a
 mov rcx, rbx
 call sub_14001c5f0
 cmp al, r12b
 jne 0x14001cd1c

0x14001cd8a:
 cmp dword ptr [rbx+0x4108], r12d
 jbe 0x14001cdc1
 cmp edi, r12d
 jne 0x14001cdc1
 mov dl, byte ptr [rbp+0x100c]
 lea rcx, [rbx+0x40e0]
 xor r9d, r9d
 mov r8, rbp
 mov dword ptr [local_1], 5
 call 0x1400069ec
 cmp al, r12b
 je 0x14001cd1c

0x14001cdc1:
 mov eax, edi

0x14001cdc3:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x30
 pop r12
 ret 
sub_14001cce4   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001cde0
; --------------------------------------------------------------------------
sub_14001cde0   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x38]
 arg_3 : qword, ; [rsp+0x40]
 arg_4 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x20
 mov r10, qword ptr [0x140056120]
 xor ebx, ebx
 mov bpl, r9b
 mov r12b, r8b
 mov rsi, rdx
 mov rdi, rcx
 cmp r10, rbx
 jne 0x14001ce81
 cmp byte ptr [0x140056118], bl
 jne 0x14001ce81
 lea rcx, [0x14003ddf8]
 call 0x14001f764
 mov qword ptr [0x140056110], rax
 cmp rax, rbx
 je 0x14001ce6a
 lea rdx, [0x14003dde0]
 mov rcx, rax
 call qword ptr [GetProcAddress]
 mov rcx, qword ptr [0x140056110]
 lea rdx, [0x14003ddc8]
 mov qword ptr [0x140056120], rax
 call qword ptr [GetProcAddress]
 mov r11, rax
 mov qword ptr [0x140056128], rax
 jmp 0x14001ce71

0x14001ce6a:
 mov r11, qword ptr [0x140056128]

0x14001ce71:
 mov r10, qword ptr [0x140056120]
 mov byte ptr [0x140056118], 0x1
 jmp 0x14001ce88

0x14001ce81:
 mov r11, qword ptr [0x140056128]

0x14001ce88:
 mov rax, rsi
 mov rcx, rsi
 mov r8d, ebx
 and eax, 0xf
 sub rcx, rax
 cmp bpl, bl
 setne r8b
 cmp r12b, bl
 je 0x14001cee1
 cmp r10, rbx
 je 0x14001cefb
 mov edx, ecx
 mov rcx, rdi
 call r10
 cmp eax, ebx
 jne 0x14001cf16
 lea rdx, [0x14003de48]

0x14001cebb:
 lea rbx, [0x140050e70]
 mov rcx, rbx
 call sub_14000b39c
 mov rcx, rbx
 call sub_14000b194
 mov edx, 2
 mov rcx, rbx
 call 0x14000b114
 jmp 0x14001cf16

0x14001cee1:
 cmp r11, rbx
 je 0x14001cefb
 mov edx, ecx
 mov rcx, rdi
 call r11
 cmp eax, ebx
 jne 0x14001cf16
 lea rdx, [0x14003de10]
 jmp 0x14001cebb

0x14001cefb:
 call qword ptr [GetCurrentProcessId]
 cmp rsi, rbx
 jbe 0x14001cf16
 add al, 0x4b

0x14001cf08:
 lea ecx, [rbx+rax]
 xor byte ptr [rbx+rdi], cl
 inc rbx
 cmp rbx, rsi
 jb 0x14001cf08

0x14001cf16:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x20
 pop r12
 ret 
sub_14001cde0   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001cf34
; --------------------------------------------------------------------------
sub_14001cf34   proc \
 arg_1 : qword ; [rsp+0x8]

 mov qword ptr [arg_1], rdi
 mov rdi, rcx
 xor eax, eax
 mov rcx, rdx
 rep stosb byte ptr [rdi], al
 mov rdi, qword ptr [arg_1]
 ret 
sub_14001cf34   endp
 
 int3 
 int3 
 int3 

0x14001cf4c:
 mov qword ptr [rsp+0x8], rbx
 mov qword ptr [rsp+0x10], rsi
 push rdi
 sub rsp, 0x20
 mov rbx, qword ptr [rsp+0x50]
 mov rax, r8
 mov rdi, rcx
 cmp rax, rbx
 mov r8, rbx
 mov rcx, r9
 cmovb r8, rax
 mov rsi, r9
 add r8, r8
 call 0x14002d490
 mov r9b, byte ptr [rdi+0x101]
 mov r8b, byte ptr [rsp+0x58]
 lea rdx, [rbx+rbx]
 mov rcx, rsi
 mov rbx, qword ptr [rsp+0x30]
 mov rsi, qword ptr [rsp+0x38]
 add rsp, 0x20
 pop rdi
 jmp sub_14001cde0
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001cfa8
; --------------------------------------------------------------------------
sub_14001cfa8   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rsi
 push rdi
 sub rsp, 0x30
 xor esi, esi
 mov rdi, r8
 mov rbx, rdx
 cmp byte ptr [rcx+0x100], sil
 je 0x14001cfe9
 mov byte ptr [rax-0x10], sil
 mov r9, rdx
 mov qword ptr [rax-0x18], r8
 mov r8d, 0x80
 mov rdx, rcx
 call 0x14001cf4c
 mov word ptr [rbx+rdi*2-2], si
 jmp 0x14001cfec

0x14001cfe9:
 mov word ptr [rdx], si

0x14001cfec:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x30
 pop rdi
 ret 
sub_14001cfa8   endp
 
; --------------------------------------------------------------------------
; sub_14001cffc
; --------------------------------------------------------------------------
sub_14001cffc   proc
 local local_1: qword ; [rsp+0x20]
 local local_2: byte ; [rsp+0x28]

 push rdi
 sub rsp, 0x30
 cmp word ptr [rdx], 0x0
 mov r10, rcx
 jne 0x14001d021
 xor edx, edx
 mov r8d, 0x100
 mov byte ptr [rcx+0x100], 0x0
 call 0x14002d190
 jmp 0x14001d053

0x14001d021:
 mov byte ptr [rcx+0x100], 0x1
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, rdx
 mov r9, r10
 mov byte ptr [local_2], 0x1
 repne scasd eax, dword ptr [rdi]
 mov qword ptr [local_1], 0x80
 not rcx
 mov r8, rcx
 mov rcx, r10
 call 0x14001cf4c

0x14001d053:
 add rsp, 0x30
 pop rdi
 ret 
sub_14001cffc   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001d05c
; --------------------------------------------------------------------------
sub_14001d05c   proc \
 arg_1 : qword ; [rsp+0x18] ; [rsp+0x250]

 local local_1[0x100]: byte ; [rsp+0x20]
 local local_2[0x100]: byte ; [rsp+0x120]
 local local_3[0x100]: byte ; [rsp+0x220]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x230
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_3], rax
 mov rdi, rdx
 mov ebx, 0x80
 lea rdx, [local_1]
 mov r8, rbx
 call sub_14001cfa8
 lea rdx, [local_2]
 mov r8, rbx
 mov rcx, rdi
 call sub_14001cfa8
 lea rdx, [local_1]
 lea rdi, [local_2]
 sub rdi, rdx

0x14001d0b3:
 movzx ecx, word ptr [rdx]
 movzx eax, word ptr [rdx+rdi]
 sub ecx, eax
 jne 0x14001d0c6
 add rdx, 2
 test eax, eax
 jne 0x14001d0b3

0x14001d0c6:
 test ecx, ecx
 lea rdi, [local_1]
 mov rcx, rbx
 sete dl
 xor eax, eax
 rep stosb byte ptr [rdi], al
 lea rdi, [local_2]
 mov rcx, rbx
 rep stosb byte ptr [rdi], al
 mov al, dl
 mov rcx, qword ptr [local_3]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [arg_1]
 add rsp, 0x230
 pop rdi
 ret 
sub_14001d05c   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_14001d108
; --------------------------------------------------------------------------
sub_14001d108   proc
 push rbx
 sub rsp, 0x20
 lea rdx, [0x14003d408]
 mov rbx, rcx
 mov byte ptr [rcx+0x101], 0x0
 call sub_14001cffc
 mov rax, rbx
 add rsp, 0x20
 pop rbx
 ret 
sub_14001d108   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001d130
; --------------------------------------------------------------------------
sub_14001d130   proc \
 arg_1 : qword ; [rsp+0x8]

 mov qword ptr [arg_1], rdi
 mov byte ptr [rcx+0x100], 0x0
 mov rdi, rcx
 xor eax, eax
 mov ecx, 0x100
 rep stosb byte ptr [rdi], al
 mov rdi, qword ptr [arg_1]
 ret 
sub_14001d130   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001d150
; --------------------------------------------------------------------------
sub_14001d150   proc \
 arg_1 : qword, ; [rsp+0x8]
 arg_2 : qword, ; [rsp+0x10]
 arg_3 : qword, ; [rsp+0x18]
 arg_4 : qword, ; [rsp+0x20]
 arg_5 : qword ; [rsp+0x28]

 mov qword ptr [arg_4], r9
 mov qword ptr [arg_3], r8
 mov qword ptr [arg_2], rdx
 mov qword ptr [arg_1], rcx
 mov rax, qword ptr [arg_5]
 mov dword ptr [rax], 0x0
 mov rax, qword ptr [arg_4]
 mov dword ptr [rax], 0x0
 mov rax, qword ptr [arg_3]
 mov dword ptr [rax], 0x0
 mov rax, qword ptr [arg_2]
 mov dword ptr [rax], 0x0
 mov rax, qword ptr [arg_1]
 mov dword ptr [rax], 0x0
 ret 
sub_14001d150   endp
 
; --------------------------------------------------------------------------
; sub_14001d19c
; --------------------------------------------------------------------------
sub_14001d19c   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0xc0]
 arg_2[0x10] : byte, ; [rsp+0x10] ; [rsp+0xc8]
 arg_3[0x10] : byte ; [rsp+0xd8]

 local local_1[0x10]: byte ; [rsp+0x20]
 local local_2: qword ; [rsp+0x30]
 local local_3: dword ; [rsp+0x38]
 local local_4: dword ; [rsp+0x3c]
 local local_5: dword ; [rsp+0x40]
 local local_6: dword ; [rsp+0x44]
 local local_7: dword ; [rsp+0x48]
 local local_8: dword ; [rsp+0x4c]
 local local_9: dword ; [rsp+0x50]
 local local_10: dword ; [rsp+0x54]
 local local_11: dword ; [rsp+0x58]
 local local_12: dword ; [rsp+0x5c]
 local local_13: dword ; [rsp+0x60]
 local local_14: dword ; [rsp+0x64]
 local local_15: dword ; [rsp+0x68]
 local local_16: dword ; [rsp+0x6c]
 local local_17: dword ; [rsp+0x70]
 local local_18: qword ; [rsp+0x74]

 mov qword ptr [arg_2], rbx
 mov qword ptr [arg_1], rcx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x80
 mov r12, rdx
 mov qword ptr [local_2], rdx
 mov rdi, rcx
 test r9b, r9b
 je 0x14001d1db
 mov rcx, rdx
 mov rdx, r8
 mov r8d, 0x40
 call 0x14002d490
 jmp 0x14001d1e3

0x14001d1db:
 mov r12, r8
 mov qword ptr [local_2], r8

0x14001d1e3:
 mov r9d, dword ptr [rdi+0x8]
 mov r8d, dword ptr [rdi+0xc]
 mov ebx, dword ptr [rdi]
 mov eax, dword ptr [r12]
 mov r10d, dword ptr [rdi+4]
 mov edx, dword ptr [rdi+0x10]
 mov r11d, eax
 mov ecx, r8d
 mov esi, 0xff00ff00
 xor ecx, r9d
 ror r11d, 8
 mov ebp, 0xff00ff
 and ecx, r10d
 and r11d, esi
 rol eax, 8
 xor ecx, r8d
 and eax, ebp
 or r11d, eax
 mov eax, ebx
 rol eax, 5
 mov dword ptr [local_11], r11d
 add eax, r11d
 add ecx, eax
 mov eax, dword ptr [r12+4]
 ror r10d, 2
 lea r11d, [rdx+rcx+0x5a827999]
 mov edx, eax
 mov ecx, r9d
 xor ecx, r10d
 ror edx, 8
 and ecx, ebx
 and edx, esi
 rol eax, 8
 xor ecx, r9d
 and eax, ebp
 or edx, eax
 mov eax, r11d
 rol eax, 5
 mov dword ptr [local_5], edx
 add eax, edx
 add ecx, eax
 mov eax, dword ptr [r12+0x8]
 ror ebx, 2
 lea edx, [r8+rcx+0x5a827999]
 mov r8d, eax
 mov ecx, r10d
 xor ecx, ebx
 ror r8d, 8
 and ecx, r11d
 and r8d, esi
 rol eax, 8
 and eax, ebp
 xor ecx, r10d
 or r8d, eax
 mov eax, edx
 rol eax, 5
 mov dword ptr [local_13], r8d
 add eax, r8d
 add ecx, eax
 mov eax, dword ptr [r12+0xc]
 ror r11d, 2
 lea r8d, [r9+rcx+0x5a827999]
 mov r9d, eax
 mov ecx, r11d
 ror r9d, 8
 xor ecx, ebx
 and r9d, esi
 rol eax, 8
 and ecx, edx
 and eax, ebp
 xor ecx, ebx
 or r9d, eax
 mov eax, r8d
 rol eax, 5
 mov dword ptr [local_8], r9d
 add eax, r9d
 add ecx, eax
 mov eax, dword ptr [r12+0x10]
 ror edx, 2
 lea r9d, [r10+rcx+0x5a827999]
 mov r10d, eax
 ror r10d, 8
 mov ecx, r11d
 xor ecx, edx
 and r10d, esi
 rol eax, 8
 and eax, ebp
 and ecx, r8d
 or r10d, eax
 xor ecx, r11d
 mov eax, r9d
 rol eax, 5
 mov dword ptr [local_6], r10d
 add eax, r10d
 add ecx, eax
 mov eax, dword ptr [r12+0x14]
 ror r8d, 2
 lea r10d, [rbx+rcx+0x5a827999]
 mov ebx, eax
 mov ecx, edx
 xor ecx, r8d
 ror ebx, 8
 and ecx, r9d
 and ebx, esi
 rol eax, 8
 and eax, ebp
 xor ecx, edx
 or ebx, eax
 mov eax, r10d
 rol eax, 5
 mov dword ptr [local_3], ebx
 add eax, ebx
 add ecx, eax
 mov eax, dword ptr [r12+0x18]
 ror r9d, 2
 mov ebx, eax
 lea r11d, [r11+rcx+0x5a827999]
 mov ecx, r8d
 xor ecx, r9d
 ror ebx, 8
 and ecx, r10d
 and ebx, esi
 rol eax, 8
 and eax, ebp
 xor ecx, r8d
 or ebx, eax
 mov eax, r11d
 rol eax, 5
 mov dword ptr [local_18], ebx
 add eax, ebx
 add ecx, eax
 mov eax, dword ptr [r12+0x1c]
 ror r10d, 2
 mov ebx, eax
 lea edx, [rdx+rcx+0x5a827999]
 mov ecx, r9d
 ror ebx, 8
 xor ecx, r10d
 and ebx, esi
 rol eax, 8
 and ecx, r11d
 and eax, ebp
 xor ecx, r9d
 or ebx, eax
 mov eax, edx
 rol eax, 5
 mov dword ptr [local_17], ebx
 add eax, ebx
 add ecx, eax
 mov eax, dword ptr [r12+0x20]
 ror r11d, 2
 mov r13d, eax
 lea r8d, [r8+rcx+0x5a827999]
 mov ecx, r11d
 ror r13d, 8
 and r13d, esi
 rol eax, 8
 and eax, ebp
 or r13d, eax
 mov eax, r8d
 rol eax, 5
 mov dword ptr [local_16], r13d
 xor ecx, r10d
 add eax, r13d
 and ecx, edx
 xor ecx, r10d
 add ecx, eax
 mov eax, dword ptr [r12+0x24]
 ror edx, 2
 lea ebx, [r9+rcx+0x5a827999]
 mov r9d, eax
 mov ecx, r11d
 xor ecx, edx
 ror r9d, 8
 and ecx, r8d
 and r9d, esi
 rol eax, 8
 and eax, ebp
 xor ecx, r11d
 or r9d, eax
 mov eax, ebx
 rol eax, 5
 mov dword ptr [local_7], r9d
 add eax, r9d
 add ecx, eax
 mov eax, dword ptr [r12+0x28]
 ror r8d, 2
 mov r15d, eax
 lea edi, [r10+rcx+0x5a827999]
 mov ecx, edx
 xor ecx, r8d
 ror r15d, 8
 and ecx, ebx
 and r15d, esi
 rol eax, 8
 and eax, ebp
 xor ecx, edx
 or r15d, eax
 mov eax, edi
 rol eax, 5
 mov dword ptr [local_15], r15d
 add eax, r15d
 add ecx, eax
 mov eax, dword ptr [r12+0x2c]
 ror ebx, 2
 lea esi, [r11+rcx+0x5a827999]
 mov r14d, eax
 mov r11d, 0xff00ff00
 ror r14d, 8
 mov ecx, r8d
 xor ecx, ebx
 and r14d, r11d
 rol eax, 8
 and eax, ebp
 and ecx, edi
 or r14d, eax
 xor ecx, r8d
 mov eax, esi
 rol eax, 5
 mov dword ptr [local_12], r14d
 add eax, r14d
 add ecx, eax
 mov eax, dword ptr [r12+0x30]
 ror edi, 2
 lea r9d, [rdx+rcx+0x5a827999]
 mov ebp, eax
 mov edx, 0xff00ff
 ror ebp, 8
 mov ecx, ebx
 and ebp, r11d
 rol eax, 8
 xor ecx, edi
 and eax, edx
 and ecx, esi
 or ebp, eax
 xor ecx, ebx
 mov eax, r9d
 rol eax, 5
 mov dword ptr [local_14], ebp
 add eax, ebp
 add ecx, eax
 ror esi, 2
 lea r10d, [r8+rcx+0x5a827999]
 mov eax, dword ptr [r12+0x34]
 mov r8, qword ptr [local_2]
 mov ecx, esi
 xor ecx, edi
 mov r12d, eax
 and ecx, r9d
 ror r12d, 8
 xor ecx, edi
 and r12d, r11d
 rol eax, 8
 and eax, edx
 or r12d, eax
 mov eax, r10d
 rol eax, 5
 mov dword ptr [local_10], r12d
 add eax, r12d
 add ecx, eax
 mov eax, dword ptr [r8+0x38]
 ror r9d, 2
 lea r11d, [rbx+rcx+0x5a827999]
 mov edx, eax
 mov ebx, 0xff00ff
 ror edx, 8
 mov ecx, esi
 xor ecx, r9d
 and edx, 0xff00ff00
 rol eax, 8
 and eax, ebx
 and ecx, r10d
 or edx, eax
 xor ecx, esi
 mov eax, r11d
 rol eax, 5
 mov dword ptr [local_9], edx
 add eax, edx
 add ecx, eax
 mov eax, dword ptr [r8+0x3c]
 ror r10d, 2
 lea edx, [rdi+rcx+0x5a827999]
 mov r8d, eax
 mov ecx, r9d
 xor ecx, r10d
 ror r8d, 8
 mov edi, r12d
 and ecx, r11d
 xor edi, r13d
 mov r13d, dword ptr [local_9]
 xor r13d, dword ptr [local_7]
 xor ecx, r9d
 and r8d, 0xff00ff00
 rol eax, 8
 and eax, ebx
 mov ebx, dword ptr [local_13]
 or r8d, eax
 xor edi, ebx
 mov eax, edx
 xor edi, dword ptr [local_11]
 rol eax, 5
 mov dword ptr [arg_3], r8d
 add eax, r8d
 add ecx, eax
 mov rax, qword ptr [local_2]
 ror r11d, 2
 lea r8d, [rsi+rcx+0x5a827999]
 mov esi, dword ptr [local_8]
 rol edi, 0x1
 mov dword ptr [rax], edi
 xor r13d, esi
 mov ecx, r10d
 xor r13d, dword ptr [local_5]
 xor ecx, r11d
 mov eax, r8d
 and ecx, edx
 rol eax, 5
 mov dword ptr [local_4], edi
 add eax, edi
 xor ecx, r10d
 add ecx, eax
 ror edx, 2
 rol r13d, 0x1
 lea r9d, [r9+rcx+0x5a827999]
 mov rax, qword ptr [local_2]
 mov edi, dword ptr [arg_3]
 mov ecx, r11d
 xor ecx, edx
 mov dword ptr [rax+4], r13d
 xor edi, r15d
 xor edi, dword ptr [local_6]
 mov r15d, dword ptr [local_3]
 and ecx, r8d
 xor ecx, r11d
 xor edi, ebx
 mov ebx, r14d
 mov r14, qword ptr [local_2]
 xor ebx, r15d
 mov eax, r9d
 rol eax, 5
 xor ebx, esi
 mov esi, dword ptr [local_18]
 xor ebx, dword ptr [local_4]
 add eax, r13d
 xor ebp, esi
 add ecx, eax
 xor ebp, dword ptr [local_6]
 mov rax, qword ptr [local_2]
 lea r10d, [r10+rcx+0x5a827999]
 ror r8d, 2
 rol edi, 0x1
 mov dword ptr [rax+0x8], edi
 xor ebp, r13d
 mov eax, r10d
 rol eax, 5
 mov ecx, r8d
 mov dword ptr [local_11], r13d
 xor ecx, edx
 add eax, edi
 and ecx, r9d
 xor ecx, edx
 add ecx, eax
 ror r9d, 2
 rol ebx, 0x1
 lea r11d, [r11+rcx+0x5a827999]
 mov dword ptr [r14+0xc], ebx
 mov ecx, r8d
 xor ecx, r9d
 mov eax, r11d
 and ecx, r10d
 rol eax, 5
 xor ecx, r8d
 add eax, ebx
 add ecx, eax
 ror r10d, 2
 rol ebp, 0x1
 lea edx, [rdx+rcx+0x5a827999]
 mov dword ptr [r14+0x10], ebp
 mov r14d, r12d
 mov r12d, dword ptr [local_17]
 mov eax, edx
 mov ecx, r9d
 xor ecx, r10d
 rol eax, 5
 xor r14d, r12d
 xor ecx, r11d
 add eax, ebp
 xor r14d, r15d
 mov r15d, dword ptr [local_9]
 add ecx, eax
 mov rax, qword ptr [local_2]
 lea r8d, [r8+rcx+0x6ed9eba1]
 ror r11d, 2
 xor r14d, edi
 rol r14d, 0x1
 mov ecx, r10d
 mov dword ptr [rax+0x14], r14d
 xor ecx, r11d
 mov eax, r8d
 rol eax, 5
 xor ecx, edx
 add eax, r14d
 add ecx, eax
 ror edx, 2
 lea r9d, [r9+rcx+0x6ed9eba1]
 xor r15d, dword ptr [local_16]
 mov rax, qword ptr [local_2]
 mov ecx, r8d
 xor ecx, r11d
 xor r15d, esi
 mov esi, dword ptr [arg_3]
 xor esi, dword ptr [local_7]
 xor ecx, edx
 xor r15d, ebx
 rol r15d, 0x1
 xor esi, r12d
 mov r12d, dword ptr [local_15]
 xor r12d, dword ptr [local_16]
 mov dword ptr [rax+0x18], r15d
 xor esi, ebp
 xor r12d, dword ptr [local_4]
 mov eax, r9d
 rol eax, 5
 xor r12d, r14d
 add eax, r15d
 add ecx, eax
 mov rax, qword ptr [local_2]
 ror r8d, 2
 lea r10d, [r10+rcx+0x6ed9eba1]
 rol esi, 0x1
 mov ecx, r8d
 xor ecx, r9d
 mov dword ptr [rax+0x1c], esi
 mov eax, r10d
 xor ecx, edx
 rol eax, 5
 add eax, esi
 add ecx, eax
 mov rax, qword ptr [local_2]
 ror r9d, 2
 lea r11d, [r11+rcx+0x6ed9eba1]
 rol r12d, 0x1
 mov ecx, r8d
 xor ecx, r9d
 mov dword ptr [rax+0x20], r12d
 mov eax, r11d
 rol eax, 5
 xor ecx, r10d
 add eax, r12d
 add ecx, eax
 mov eax, dword ptr [local_12]
 ror r10d, 2
 xor eax, dword ptr [local_7]
 lea edx, [rdx+rcx+0x6ed9eba1]
 mov rcx, qword ptr [local_2]
 xor eax, r13d
 xor eax, r15d
 rol eax, 0x1
 mov dword ptr [rcx+0x24], eax
 mov dword ptr [local_8], eax
 mov eax, edx
 mov r13d, dword ptr [local_8]
 rol eax, 5
 mov ecx, r9d
 add eax, r13d
 mov r13d, dword ptr [local_14]
 xor ecx, r10d
 xor r13d, dword ptr [local_15]
 xor ecx, r11d
 add ecx, eax
 mov rax, qword ptr [local_2]
 xor r13d, esi
 lea r8d, [r8+rcx+0x6ed9eba1]
 ror r11d, 2
 xor r13d, edi
 rol r13d, 0x1
 mov ecx, r10d
 mov dword ptr [rax+0x28], r13d
 xor ecx, r11d
 mov eax, r8d
 rol eax, 5
 xor ecx, edx
 mov dword ptr [local_6], r13d
 add eax, r13d
 add ecx, eax
 lea r9d, [r9+rcx+0x6ed9eba1]
 mov rcx, qword ptr [local_2]
 mov eax, dword ptr [local_10]
 ror edx, 2
 xor eax, dword ptr [local_12]
 xor eax, ebx
 xor eax, r12d
 rol eax, 0x1
 mov dword ptr [rcx+0x2c], eax
 mov dword ptr [local_5], eax
 mov ecx, r8d
 mov r13d, dword ptr [local_5]
 xor ecx, r11d
 mov eax, r9d
 rol eax, 5
 xor ecx, edx
 add eax, r13d
 add ecx, eax
 mov eax, dword ptr [local_9]
 ror r8d, 2
 xor eax, dword ptr [local_14]
 lea r10d, [r10+rcx+0x6ed9eba1]
 mov rcx, qword ptr [local_2]
 xor eax, dword ptr [local_8]
 xor eax, ebp
 rol eax, 0x1
 mov dword ptr [rcx+0x30], eax
 mov dword ptr [local_3], eax
 mov eax, r10d
 mov r13d, dword ptr [local_3]
 rol eax, 5
 mov ecx, r8d
 add eax, r13d
 mov r13d, dword ptr [local_10]
 xor ecx, r9d
 xor ecx, edx
 add ecx, eax
 mov eax, dword ptr [arg_3]
 ror r9d, 2
 xor eax, r13d
 lea r11d, [r11+rcx+0x6ed9eba1]
 mov rcx, qword ptr [local_2]
 xor eax, r14d
 xor eax, dword ptr [local_6]
 rol eax, 0x1
 mov dword ptr [rcx+0x34], eax
 mov dword ptr [local_7], eax
 mov eax, r11d
 mov r13d, dword ptr [local_7]
 rol eax, 5
 mov ecx, r8d
 add eax, r13d
 mov r13d, dword ptr [local_9]
 xor ecx, r9d
 xor r13d, dword ptr [local_5]
 xor ecx, r10d
 xor r13d, dword ptr [local_4]
 add ecx, eax
 mov rax, qword ptr [local_2]
 lea edx, [rdx+rcx+0x6ed9eba1]
 xor r13d, r15d
 ror r10d, 2
 rol r13d, 0x1
 mov ecx, r9d
 mov dword ptr [rax+0x38], r13d
 xor ecx, r10d
 mov eax, edx
 rol eax, 5
 xor ecx, r11d
 mov dword ptr [local_9], r13d
 add eax, r13d
 mov r13d, dword ptr [local_11]
 add ecx, eax
 mov eax, dword ptr [arg_3]
 ror r11d, 2
 xor eax, esi
 lea r8d, [r8+rcx+0x6ed9eba1]
 mov rcx, qword ptr [local_2]
 xor eax, dword ptr [local_3]
 xor eax, r13d
 rol eax, 0x1
 mov dword ptr [arg_3], eax
 mov dword ptr [rcx+0x3c], eax
 mov r13d, dword ptr [arg_3]
 mov ecx, r10d
 xor ecx, r11d
 mov eax, r8d
 rol eax, 5
 xor ecx, edx
 add eax, r13d
 add ecx, eax
 mov eax, dword ptr [local_4]
 ror edx, 2
 xor eax, r12d
 lea r9d, [r9+rcx+0x6ed9eba1]
 mov rcx, qword ptr [local_2]
 xor eax, edi
 xor eax, dword ptr [local_7]
 rol eax, 0x1
 mov dword ptr [rcx], eax
 mov dword ptr [local_4], eax
 mov ecx, r8d
 mov r13d, dword ptr [local_4]
 xor ecx, r11d
 mov eax, r9d
 rol eax, 5
 xor ecx, edx
 add eax, r13d
 mov r13d, dword ptr [local_11]
 add ecx, eax
 ror r8d, 2
 mov eax, ebx
 xor eax, dword ptr [local_8]
 lea r10d, [r10+rcx+0x6ed9eba1]
 mov rcx, qword ptr [local_2]
 xor eax, r13d
 xor eax, dword ptr [local_9]
 rol eax, 0x1
 mov dword ptr [rcx+4], eax
 mov dword ptr [local_10], eax
 mov eax, r10d
 mov r13d, dword ptr [local_10]
 rol eax, 5
 mov ecx, r8d
 add eax, r13d
 mov r13d, dword ptr [local_6]
 xor ecx, r9d
 xor ecx, edx
 add ecx, eax
 mov eax, dword ptr [arg_3]
 ror r9d, 2
 xor eax, edi
 lea r11d, [r11+rcx+0x6ed9eba1]
 mov rcx, qword ptr [local_2]
 xor eax, r13d
 xor eax, ebp
 rol eax, 0x1
 mov dword ptr [rcx+0x8], eax
 mov dword ptr [local_16], eax
 mov ecx, r8d
 mov edi, dword ptr [local_16]
 xor ecx, r9d
 mov eax, r11d
 rol eax, 5
 xor ecx, r10d
 add eax, edi
 add ecx, eax
 mov eax, dword ptr [local_5]
 ror r10d, 2
 xor eax, ebx
 lea edx, [rdx+rcx+0x6ed9eba1]
 mov rcx, qword ptr [local_2]
 xor eax, dword ptr [local_4]
 xor eax, r14d
 rol eax, 0x1
 mov dword ptr [rcx+0xc], eax
 mov dword ptr [local_11], eax
 mov ecx, r9d
 mov ebx, dword ptr [local_11]
 mov eax, edx
 xor ecx, r10d
 rol eax, 5
 xor ecx, r11d
 add eax, ebx
 mov ebx, dword ptr [local_3]
 xor ebx, dword ptr [local_10]
 add ecx, eax
 mov rax, qword ptr [local_2]
 xor ebx, r15d
 lea r8d, [r8+rcx+0x6ed9eba1]
 ror r11d, 2
 xor ebx, ebp
 mov ebp, dword ptr [local_7]
 mov ecx, r10d
 xor ecx, r11d
 rol ebx, 0x1
 xor ecx, edx
 mov dword ptr [rax+0x10], ebx
 mov eax, r8d
 rol eax, 5
 mov dword ptr [local_17], ebx
 add eax, ebx
 add ecx, eax
 ror edx, 2
 mov eax, esi
 xor eax, edi
 lea r9d, [r9+rcx+0x6ed9eba1]
 mov rcx, qword ptr [local_2]
 xor eax, ebp
 xor eax, r14d
 mov r14d, dword ptr [local_11]
 rol eax, 0x1
 mov dword ptr [rcx+0x14], eax
 mov dword ptr [local_6], eax
 mov edi, dword ptr [local_6]
 mov eax, r9d
 mov ecx, r8d
 xor ecx, r11d
 rol eax, 5
 add eax, edi
 xor ecx, edx
 mov edi, r14d
 add ecx, eax
 mov rax, qword ptr [local_2]
 xor edi, r12d
 xor edi, dword ptr [local_9]
 lea r10d, [r10+rcx+0x6ed9eba1]
 ror r8d, 2
 xor edi, r15d
 mov r15d, dword ptr [arg_3]
 mov ecx, r8d
 xor ecx, r9d
 rol edi, 0x1
 xor r15d, esi
 mov esi, dword ptr [local_4]
 xor ecx, edx
 mov dword ptr [rax+0x18], edi
 mov eax, r10d
 xor esi, r12d
 mov dword ptr [local_15], edi
 rol eax, 5
 add eax, edi
 mov edi, dword ptr [local_8]
 add ecx, eax
 mov rax, qword ptr [local_2]
 xor r15d, edi
 xor r15d, ebx
 lea r11d, [r11+rcx+0x6ed9eba1]
 ror r9d, 2
 rol r15d, 0x1
 mov ecx, r8d
 mov dword ptr [rax+0x1c], r15d
 xor ecx, r9d
 mov eax, r11d
 rol eax, 5
 xor ecx, r10d
 mov dword ptr [local_14], r15d
 add eax, r15d
 mov r15d, dword ptr [local_6]
 add ecx, eax
 xor esi, r15d
 ror r10d, 2
 xor esi, r13d
 lea ebx, [rdx+rcx+0x6ed9eba1]
 mov rax, qword ptr [local_2]
 mov r12d, dword ptr [local_15]
 rol esi, 0x1
 mov dword ptr [rax+0x20], esi
 mov dword ptr [local_12], esi
 mov ecx, r10d
 or ecx, r11d
 mov eax, r10d
 mov edx, ebx
 and ecx, r9d
 and eax, r11d
 rol edx, 5
 or ecx, eax
 mov rax, qword ptr [local_2]
 add ecx, esi
 mov esi, dword ptr [local_5]
 add ecx, r8d
 ror r11d, 2
 xor esi, edi
 mov edi, dword ptr [local_10]
 lea r8d, [rcx+rdx-0x70e44324]
 mov ecx, r11d
 or ecx, ebx
 xor esi, edi
 mov edx, r8d
 and ecx, r10d
 xor esi, r12d
 rol esi, 0x1
 rol edx, 5
 mov dword ptr [rax+0x24], esi
 mov eax, r11d
 mov dword ptr [local_7], esi
 and eax, ebx
 or ecx, eax
 mov eax, dword ptr [local_14]
 xor eax, dword ptr [local_3]
 add ecx, esi
 mov esi, dword ptr [local_16]
 add ecx, r9d
 xor eax, esi
 ror ebx, 2
 lea r9d, [rcx+rdx-0x70e44324]
 mov rcx, qword ptr [local_2]
 xor eax, r13d
 mov r13d, dword ptr [local_5]
 rol eax, 0x1
 mov edx, r9d
 mov dword ptr [rcx+0x28], eax
 mov dword ptr [local_10], eax
 rol edx, 5
 xor r13d, r14d
 mov eax, r8d
 mov ecx, r8d
 xor r13d, dword ptr [local_12]
 or ecx, ebx
 and eax, ebx
 and ecx, r11d
 xor r13d, ebp
 or ecx, eax
 mov rax, qword ptr [local_2]
 add ecx, dword ptr [local_10]
 add ecx, r10d
 ror r8d, 2
 rol r13d, 0x1
 lea r10d, [rcx+rdx-0x70e44324]
 mov dword ptr [rax+0x2c], r13d
 mov ecx, r8d
 or ecx, r9d
 mov eax, r8d
 mov edx, r10d
 and ecx, ebx
 and eax, r9d
 rol edx, 5
 or ecx, eax
 mov eax, dword ptr [local_3]
 mov dword ptr [local_5], r13d
 add ecx, r13d
 add ecx, r11d
 ror r9d, 2
 xor eax, dword ptr [local_7]
 lea r11d, [rcx+rdx-0x70e44324]
 xor eax, dword ptr [local_9]
 mov rcx, qword ptr [local_2]
 mov r13d, dword ptr [local_17]
 xor eax, r13d
 mov edx, r11d
 rol eax, 0x1
 rol edx, 5
 mov dword ptr [rcx+0x30], eax
 mov dword ptr [local_3], eax
 mov ecx, r9d
 or ecx, r10d
 mov eax, r9d
 and ecx, r8d
 and eax, r10d
 or ecx, eax
 mov eax, dword ptr [arg_3]
 add ecx, dword ptr [local_3]
 xor eax, ebp
 mov ebp, dword ptr [local_5]
 xor ebp, dword ptr [local_4]
 add ecx, ebx
 xor eax, r15d
 xor eax, dword ptr [local_10]
 xor ebp, dword ptr [local_9]
 lea ebx, [rcx+rdx-0x70e44324]
 mov rcx, qword ptr [local_2]
 ror r10d, 2
 rol eax, 0x1
 mov dword ptr [rcx+0x34], eax
 xor ebp, r12d
 mov r12d, dword ptr [arg_3]
 xor r12d, dword ptr [local_14]
 mov dword ptr [local_8], eax
 mov eax, r10d
 xor r12d, dword ptr [local_3]
 and eax, r11d
 mov ecx, r10d
 or ecx, r11d
 xor r12d, edi
 mov edx, ebx
 and ecx, r9d
 rol edx, 5
 or ecx, eax
 mov rax, qword ptr [local_2]
 add ecx, dword ptr [local_8]
 add ecx, r8d
 ror r11d, 2
 rol ebp, 0x1
 lea r8d, [rcx+rdx-0x70e44324]
 mov dword ptr [rax+0x38], ebp
 mov eax, r11d
 and eax, ebx
 mov edx, r8d
 mov ecx, r11d
 or ecx, ebx
 rol edx, 5
 mov dword ptr [local_9], ebp
 and ecx, r10d
 or ecx, eax
 mov rax, qword ptr [local_2]
 add ecx, ebp
 mov ebp, dword ptr [local_4]
 add ecx, r9d
 ror ebx, 2
 rol r12d, 0x1
 lea r9d, [rcx+rdx-0x70e44324]
 mov ecx, r8d
 mov dword ptr [rax+0x3c], r12d
 or ecx, ebx
 mov eax, r8d
 mov edx, r9d
 and ecx, r11d
 and eax, ebx
 rol edx, 5
 or ecx, eax
 mov dword ptr [arg_3], r12d
 add ecx, r12d
 add ecx, r10d
 ror r8d, 2
 xor ebp, dword ptr [local_12]
 lea r10d, [rcx+rdx-0x70e44324]
 mov rax, qword ptr [local_2]
 xor ebp, esi
 xor r12d, esi
 xor ebp, dword ptr [local_8]
 xor r12d, dword ptr [local_10]
 mov esi, dword ptr [local_3]
 rol ebp, 0x1
 xor r12d, r13d
 mov ecx, r8d
 or ecx, r9d
 mov dword ptr [rax], ebp
 mov dword ptr [local_4], ebp
 and ecx, ebx
 mov eax, r8d
 mov edx, r10d
 and eax, r9d
 rol edx, 5
 or ecx, eax
 add ecx, ebp
 mov ebp, r14d
 xor ebp, dword ptr [local_7]
 add ecx, r11d
 ror r9d, 2
 lea r11d, [rcx+rdx-0x70e44324]
 xor ebp, edi
 mov rdi, qword ptr [local_2]
 xor ebp, dword ptr [local_9]
 mov ecx, r9d
 mov eax, r9d
 or ecx, r10d
 and eax, r10d
 rol ebp, 0x1
 and ecx, r8d
 mov dword ptr [rdi+4], ebp
 mov edx, r11d
 or ecx, eax
 rol edx, 5
 xor esi, ebp
 xor esi, dword ptr [local_15]
 add ecx, ebp
 mov dword ptr [local_11], ebp
 add ecx, ebx
 ror r10d, 2
 rol r12d, 0x1
 lea ebx, [rcx+rdx-0x70e44324]
 mov dword ptr [rdi+0x8], r12d
 mov edi, dword ptr [local_5]
 xor edi, r14d
 mov r14, qword ptr [local_2]
 mov edx, ebx
 xor edi, dword ptr [local_4]
 rol edx, 5
 mov ecx, r10d
 or ecx, r11d
 xor edi, r15d
 mov eax, r10d
 and ecx, r9d
 and eax, r11d
 xor esi, r13d
 or ecx, eax
 mov dword ptr [local_13], r12d
 add ecx, r12d
 add ecx, r8d
 ror r11d, 2
 rol edi, 0x1
 lea r8d, [rcx+rdx-0x70e44324]
 mov ecx, r11d
 mov eax, r11d
 or ecx, ebx
 and eax, ebx
 mov edx, r8d
 and ecx, r10d
 rol edx, 5
 mov dword ptr [local_16], edi
 or ecx, eax
 mov dword ptr [r14+0xc], edi
 add ecx, edi
 add ecx, r9d
 ror ebx, 2
 rol esi, 0x1
 lea r9d, [rcx+rdx-0x70e44324]
 mov r13d, dword ptr [local_14]
 mov dword ptr [r14+0x10], esi
 mov eax, r8d
 and eax, ebx
 mov ebp, r13d
 mov ecx, r8d
 or ecx, ebx
 xor ebp, r12d
 mov r12d, dword ptr [local_12]
 xor ebp, dword ptr [local_8]
 and ecx, r11d
 mov edx, r9d
 or ecx, eax
 rol edx, 5
 xor ebp, r15d
 mov r15d, dword ptr [arg_3]
 add ecx, esi
 mov dword ptr [local_6], esi
 add ecx, r10d
 ror r8d, 2
 rol ebp, 0x1
 lea r10d, [rcx+rdx-0x70e44324]
 xor r15d, r13d
 mov r13d, dword ptr [local_4]
 xor r15d, dword ptr [local_7]
 mov dword ptr [r14+0x14], ebp
 mov eax, r8d
 and eax, r9d
 xor r15d, esi
 mov rsi, qword ptr [local_2]
 mov ecx, r8d
 mov r14d, edi
 mov edx, r10d
 or ecx, r9d
 rol edx, 5
 xor r14d, r12d
 xor r14d, dword ptr [local_9]
 and ecx, ebx
 xor r13d, r12d
 xor r14d, dword ptr [local_15]
 or ecx, eax
 mov rax, qword ptr [local_2]
 add ecx, ebp
 xor r13d, ebp
 mov dword ptr [local_17], ebp
 add ecx, r11d
 ror r9d, 2
 rol r14d, 0x1
 lea r11d, [rcx+rdx-0x70e44324]
 mov dword ptr [rax+0x18], r14d
 mov ecx, r9d
 or ecx, r10d
 mov edx, r11d
 mov eax, r9d
 and ecx, r8d
 and eax, r10d
 rol edx, 5
 or ecx, eax
 mov dword ptr [local_15], r14d
 add ecx, r14d
 add ecx, ebx
 ror r10d, 2
 rol r15d, 0x1
 lea edi, [rcx+rdx-0x70e44324]
 mov ecx, r10d
 mov eax, r10d
 or ecx, r11d
 and eax, r11d
 mov edx, edi
 and ecx, r9d
 rol edx, 5
 mov dword ptr [local_18], r15d
 or ecx, eax
 mov dword ptr [rsi+0x1c], r15d
 add ecx, r15d
 add ecx, r8d
 mov r8d, dword ptr [local_10]
 ror r11d, 2
 xor r13d, r8d
 lea ebx, [rcx+rdx-0x70e44324]
 rol r13d, 0x1
 mov r12d, dword ptr [local_5]
 mov dword ptr [rsi+0x20], r13d
 mov eax, r11d
 xor r12d, dword ptr [local_7]
 and eax, edi
 mov ecx, r11d
 xor r12d, dword ptr [local_11]
 or ecx, edi
 mov edx, ebx
 and ecx, r10d
 rol edx, 5
 xor r12d, r14d
 or ecx, eax
 mov eax, ebx
 mov dword ptr [local_12], r13d
 add ecx, r13d
 add ecx, r9d
 ror edi, 2
 rol r12d, 0x1
 lea r9d, [rcx+rdx-0x70e44324]
 and eax, edi
 mov dword ptr [rsi+0x24], r12d
 mov ecx, ebx
 mov edx, r9d
 mov esi, r15d
 xor esi, dword ptr [local_3]
 or ecx, edi
 rol edx, 5
 xor esi, dword ptr [local_13]
 and ecx, r11d
 mov dword ptr [local_14], r12d
 or ecx, eax
 mov rax, qword ptr [local_2]
 xor esi, r8d
 mov r8d, dword ptr [local_5]
 add ecx, r12d
 xor r8d, dword ptr [local_16]
 add ecx, r10d
 ror ebx, 2
 lea r10d, [rcx+rdx-0x70e44324]
 rol esi, 0x1
 xor r8d, r13d
 xor r8d, dword ptr [local_8]
 mov dword ptr [rax+0x28], esi
 mov eax, ebx
 and eax, r9d
 mov edx, r10d
 mov ecx, ebx
 or ecx, r9d
 rol edx, 5
 mov dword ptr [local_7], esi
 and ecx, edi
 or ecx, eax
 mov rax, qword ptr [local_2]
 add ecx, esi
 add ecx, r11d
 ror r9d, 2
 rol r8d, 0x1
 lea r11d, [rcx+rdx-0x70e44324]
 mov dword ptr [rax+0x2c], r8d
 mov eax, r9d
 and eax, r10d
 mov ecx, r9d
 mov edx, r11d
 rol edx, 5
 or ecx, r10d
 mov dword ptr [local_5], r8d
 and ecx, ebx
 or ecx, eax
 mov rax, qword ptr [local_2]
 add ecx, r8d
 add ecx, edi
 ror r10d, 2
 lea r8d, [rcx+rdx-0x70e44324]
 mov edx, dword ptr [local_3]
 xor edx, r12d
 xor edx, dword ptr [local_9]
 xor edx, dword ptr [local_6]
 rol edx, 0x1
 mov dword ptr [local_3], edx
 mov dword ptr [rax+0x30], edx
 mov edi, dword ptr [arg_3]
 mov eax, r9d
 mov ecx, r8d
 xor edi, dword ptr [local_8]
 xor eax, r10d
 rol ecx, 5
 xor eax, r11d
 xor edi, ebp
 mov ebp, dword ptr [local_5]
 add eax, edx
 xor edi, esi
 add eax, ebx
 mov ebx, dword ptr [local_4]
 ror r11d, 2
 lea edx, [rax+rcx-0x359d3e2a]
 mov rax, qword ptr [local_2]
 rol edi, 0x1
 mov dword ptr [rax+0x34], edi
 xor ebp, ebx
 xor ebx, r13d
 xor ebp, dword ptr [local_9]
 mov r13d, dword ptr [local_13]
 mov eax, r10d
 xor eax, r11d
 xor ebp, r14d
 mov r14d, dword ptr [local_11]
 xor eax, r8d
 xor ebx, r13d
 mov ecx, edx
 add eax, edi
 rol ecx, 5
 xor ebx, edi
 add eax, r9d
 ror r8d, 2
 rol ebp, 0x1
 lea r9d, [rax+rcx-0x359d3e2a]
 mov rax, qword ptr [local_2]
 mov dword ptr [local_10], edi
 mov dword ptr [rax+0x38], ebp
 mov eax, edx
 mov ecx, r9d
 xor eax, r11d
 rol ecx, 5
 mov dword ptr [local_8], ebp
 xor eax, r8d
 add eax, ebp
 add eax, r10d
 ror edx, 2
 lea r10d, [rax+rcx-0x359d3e2a]
 mov eax, dword ptr [arg_3]
 mov rcx, qword ptr [local_2]
 xor eax, r15d
 xor eax, dword ptr [local_3]
 xor eax, r14d
 rol eax, 0x1
 mov dword ptr [rcx+0x3c], eax
 mov dword ptr [arg_3], eax
 mov eax, edx
 xor eax, r9d
 mov ecx, r10d
 xor eax, r8d
 rol ecx, 5
 add eax, dword ptr [arg_3]
 add eax, r11d
 ror r9d, 2
 rol ebx, 0x1
 lea r11d, [rax+rcx-0x359d3e2a]
 mov rax, qword ptr [local_2]
 mov dword ptr [local_4], ebx
 mov dword ptr [rax], ebx
 mov eax, edx
 mov ecx, r11d
 xor eax, r9d
 rol ecx, 5
 xor eax, r10d
 add eax, ebx
 mov ebx, dword ptr [local_16]
 add eax, r8d
 ror r10d, 2
 xor ebx, r12d
 lea r8d, [rax+rcx-0x359d3e2a]
 mov r12d, dword ptr [local_17]
 mov rax, qword ptr [local_2]
 xor ebx, r14d
 mov r14d, dword ptr [arg_3]
 xor ebx, ebp
 mov ecx, r8d
 rol ebx, 0x1
 xor r14d, r13d
 mov r13d, dword ptr [local_5]
 xor r13d, dword ptr [local_16]
 mov dword ptr [rax+4], ebx
 rol ecx, 5
 xor r13d, dword ptr [local_4]
 xor r14d, esi
 mov rsi, qword ptr [local_2]
 xor r14d, dword ptr [local_6]
 xor r13d, r12d
 mov eax, r9d
 xor eax, r10d
 mov dword ptr [local_11], ebx
 xor eax, r11d
 add eax, ebx
 add eax, edx
 ror r11d, 2
 rol r14d, 0x1
 lea edx, [rax+rcx-0x359d3e2a]
 xor r15d, r14d
 mov dword ptr [rsi+0x8], r14d
 xor r15d, edi
 mov eax, r10d
 mov ecx, edx
 xor eax, r11d
 rol ecx, 5
 xor r15d, r12d
 xor eax, r8d
 add eax, r14d
 add eax, r9d
 ror r8d, 2
 rol r13d, 0x1
 lea r9d, [rax+rcx-0x359d3e2a]
 mov dword ptr [rsi+0xc], r13d
 mov esi, dword ptr [local_3]
 xor esi, ebx
 mov rbx, qword ptr [local_2]
 mov eax, edx
 xor esi, dword ptr [local_15]
 xor eax, r11d
 mov ecx, r9d
 xor esi, dword ptr [local_6]
 xor eax, r8d
 rol ecx, 5
 add eax, r13d
 mov r12d, r13d
 xor r12d, dword ptr [local_12]
 add eax, r10d
 ror edx, 2
 lea r10d, [rax+rcx-0x359d3e2a]
 rol esi, 0x1
 mov eax, edx
 xor eax, r9d
 mov ecx, r10d
 mov dword ptr [rbx+0x10], esi
 xor eax, r8d
 rol ecx, 5
 mov dword ptr [local_17], esi
 add eax, esi
 add eax, r11d
 ror r9d, 2
 rol r15d, 0x1
 lea r11d, [rax+rcx-0x359d3e2a]
 mov eax, edx
 mov dword ptr [rbx+0x14], r15d
 xor eax, r9d
 mov ecx, r11d
 xor eax, r10d
 rol ecx, 5
 add eax, r15d
 add eax, r8d
 ror r10d, 2
 xor r12d, ebp
 lea ebx, [rax+rcx-0x359d3e2a]
 xor r12d, dword ptr [local_15]
 mov rbp, qword ptr [local_2]
 mov r8d, dword ptr [local_4]
 xor r8d, dword ptr [local_12]
 rol r12d, 0x1
 mov eax, r9d
 xor eax, r10d
 xor r8d, r15d
 mov ecx, ebx
 xor r8d, dword ptr [local_7]
 xor eax, r11d
 rol ecx, 5
 add eax, r12d
 mov dword ptr [rbp+0x18], r12d
 mov dword ptr [local_6], r12d
 add eax, edx
 mov edx, dword ptr [arg_3]
 ror r11d, 2
 xor edx, dword ptr [local_18]
 lea edi, [rax+rcx-0x359d3e2a]
 mov eax, r10d
 xor edx, dword ptr [local_14]
 xor eax, r11d
 mov ecx, edi
 xor eax, ebx
 xor edx, esi
 rol edx, 0x1
 rol ecx, 5
 add eax, edx
 mov dword ptr [rbp+0x1c], edx
 mov dword ptr [local_13], edx
 add eax, r9d
 mov edx, dword ptr [local_5]
 mov r9d, dword ptr [local_13]
 xor edx, dword ptr [local_14]
 lea esi, [rax+rcx-0x359d3e2a]
 ror ebx, 2
 xor edx, dword ptr [local_11]
 rol r8d, 0x1
 mov eax, edi
 xor eax, r11d
 xor edx, r12d
 mov ecx, esi
 xor eax, ebx
 rol ecx, 5
 mov dword ptr [rbp+0x20], r8d
 add eax, r8d
 add eax, r10d
 mov r10d, dword ptr [local_3]
 ror edi, 2
 lea ebp, [rax+rcx-0x359d3e2a]
 mov rax, qword ptr [local_2]
 rol edx, 0x1
 mov dword ptr [rax+0x24], edx
 xor r9d, r10d
 mov eax, edi
 xor eax, esi
 xor r9d, r14d
 mov r14d, dword ptr [local_5]
 xor r9d, dword ptr [local_7]
 xor eax, ebx
 mov ecx, ebp
 add eax, edx
 rol ecx, 5
 xor r14d, r13d
 add eax, r11d
 ror esi, 2
 rol r9d, 0x1
 lea r12d, [rax+rcx-0x359d3e2a]
 mov rax, qword ptr [local_2]
 mov dword ptr [rax+0x28], r9d
 mov eax, edi
 mov ecx, r12d
 xor eax, esi
 rol ecx, 5
 xor eax, ebp
 add eax, r9d
 add eax, ebx
 ror ebp, 2
 xor r14d, r8d
 lea ebx, [rax+rcx-0x359d3e2a]
 mov r13, qword ptr [local_2]
 mov r8d, dword ptr [local_10]
 xor r10d, edx
 xor r14d, r8d
 mov eax, esi
 mov ecx, ebx
 xor eax, ebp
 rol r14d, 0x1
 rol ecx, 5
 xor eax, r12d
 mov dword ptr [r13+0x2c], r14d
 add eax, r14d
 xor r14d, dword ptr [local_4]
 add eax, edi
 mov edi, dword ptr [local_8]
 ror r12d, 2
 lea r11d, [rax+rcx-0x359d3e2a]
 xor r10d, edi
 xor r14d, edi
 xor r10d, dword ptr [local_17]
 xor r14d, dword ptr [local_6]
 mov ecx, r11d
 rol r10d, 0x1
 rol ecx, 5
 mov eax, ebp
 xor eax, r12d
 mov dword ptr [local_3], r10d
 mov dword ptr [r13+0x30], r10d
 xor eax, ebx
 add eax, r10d
 add eax, esi
 mov esi, dword ptr [arg_3]
 ror ebx, 2
 lea r10d, [rax+rcx-0x359d3e2a]
 mov edx, esi
 xor esi, dword ptr [local_13]
 xor esi, dword ptr [local_3]
 xor edx, r8d
 mov ecx, r10d
 xor esi, dword ptr [local_11]
 xor edx, r15d
 mov eax, r11d
 xor eax, r12d
 xor edx, r9d
 xor eax, ebx
 rol edx, 0x1
 rol ecx, 5
 add eax, edx
 mov dword ptr [r13+0x34], edx
 add eax, ebp
 ror r11d, 2
 rol r14d, 0x1
 lea r8d, [rax+rcx-0x359d3e2a]
 mov eax, r11d
 mov dword ptr [r13+0x38], r14d
 xor eax, r10d
 mov ecx, r8d
 mov dword ptr [arg_3], r11d
 xor eax, ebx
 rol ecx, 5
 add eax, r14d
 add eax, r12d
 ror r10d, 2
 rol esi, 0x1
 lea edx, [rax+rcx-0x359d3e2a]
 mov eax, r11d
 mov dword ptr [r13+0x3c], esi
 xor eax, r10d
 mov ecx, edx
 mov dword ptr [local_6], edx
 xor eax, r8d
 rol ecx, 5
 mov dword ptr [local_17], r10d
 add eax, esi
 add eax, ebx
 ror r8d, 2
 lea eax, [rax+rcx-0x359d3e2a]
 mov rcx, qword ptr [arg_1]
 mov dword ptr [local_18], r8d
 add dword ptr [rcx], eax
 mov dword ptr [local_13], eax
 add dword ptr [rcx+4], edx
 add dword ptr [rcx+0x8], r8d
 add dword ptr [rcx+0xc], r10d
 add dword ptr [rcx+0x10], r11d
 lea rax, [arg_3]
 lea r8, [local_18]
 lea rdx, [local_6]
 lea rcx, [local_13]
 lea r9, [local_17]
 mov qword ptr [local_1], rax
 call sub_14001d150
 mov rbx, qword ptr [arg_2]
 add rsp, 0x80
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
sub_14001d19c   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001e608
; --------------------------------------------------------------------------
sub_14001e608   proc
 and dword ptr [rcx+0x18], 0x0
 and dword ptr [rcx+0x14], 0x0
 mov dword ptr [rcx], 0x67452301
 mov dword ptr [rcx+4], 0xefcdab89
 mov dword ptr [rcx+0x8], 0x98badcfe
 mov dword ptr [rcx+0xc], 0x10325476
 mov dword ptr [rcx+0x10], 0xc3d2e1f0
 ret 
sub_14001e608   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_14001e634
; --------------------------------------------------------------------------
sub_14001e634   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x48]
 arg_3 : qword, ; [rsp+0x50]
 arg_4 : qword ; [rsp+0x58]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 push r13
 push r14
 sub rsp, 0x20
 mov eax, dword ptr [rcx+0x14]
 mov rdi, rcx
 mov r10d, r8d
 mov ecx, eax
 shl r10d, 3
 mov r13b, r9b
 shr ecx, 3
 add eax, r10d
 mov rbx, r8
 and ecx, 0x3f
 mov r12, rdx
 mov dword ptr [rdi+0x14], eax
 cmp eax, r10d
 jae 0x14001e67d
 inc dword ptr [rdi+0x18]

0x14001e67d:
 mov rax, rbx
 shr rax, 0x1d
 add dword ptr [rdi+0x18], eax
 lea rax, [rcx+r8]
 cmp rax, 0x3f
 jbe 0x14001e6e3
 mov esi, 0x40
 sub esi, ecx
 lea rcx, [rcx+rdi+0x1c]
 mov r8d, esi
 call 0x14002d490
 lea r8, [rdi+0x1c]
 lea rdx, [rdi+0x5c]
 mov r9b, r13b
 mov rcx, rdi
 call sub_14001d19c
 lea ebp, [rsi+0x3f]
 jmp 0x14001e6d8

0x14001e6bd:
 mov r8d, esi
 lea rdx, [rdi+0x5c]
 mov r9b, r13b
 add r8, r12
 mov rcx, rdi
 call sub_14001d19c
 add esi, 0x40
 add ebp, 0x40

0x14001e6d8:
 mov eax, ebp
 cmp rax, rbx
 jb 0x14001e6bd
 xor ecx, ecx
 jmp 0x14001e6e5

0x14001e6e3:
 xor esi, esi

0x14001e6e5:
 mov eax, esi
 cmp rbx, rax
 jbe 0x14001e700
 sub rbx, rax
 lea rdx, [rsi+r12]
 lea rcx, [rcx+rdi+0x1c]
 mov r8, rbx
 call 0x14002d490

0x14001e700:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x20
 pop r14
 pop r13
 pop r12
 ret 
sub_14001e634   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_14001e720
; --------------------------------------------------------------------------
sub_14001e720   proc \
 arg_1 : qword, ; [rsp+0x18] ; [rsp+0x70]
 arg_2 : qword ; [rsp+0x20] ; [rsp+0x78]

 local local_1: dword ; [rsp+0x20]
 local local_2: dword ; [rsp+0x24]
 local local_3: qword ; [rsp+0x28]
 local local_4: qword ; [rsp+0x30]
 local local_5: dword ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 push rsi
 push rdi
 push r15
 sub rsp, 0x40
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_5], rax
 xor r9d, r9d
 mov dil, r8b
 mov rbp, rdx
 mov rbx, rcx
 lea r10, [local_4]
 lea r15d, [r9+0x8]

0x14001e756:
 mov eax, r9d
 mov ecx, 3
 and eax, 3
 sub ecx, eax
 xor eax, eax
 shl ecx, 3
 cmp r9d, 4
 setb al
 inc r9d
 mov edx, dword ptr [rbx+rax*4+0x14]
 shr edx, cl
 mov byte ptr [r10], dl
 inc r10
 cmp r9d, r15d
 jb 0x14001e756
 mov dword ptr [local_2], r9d
 lea rdx, [local_1]
 mov r8d, 0x1
 mov r9b, dil
 mov rcx, rbx
 mov byte ptr [local_1], 0x80
 call sub_14001e634
 mov eax, dword ptr [rbx+0x14]
 and eax, 0x1f8
 cmp eax, 0x1c0
 je 0x14001e7e1

0x14001e7b2:
 lea rdx, [local_1]
 mov r9b, dil
 mov r8d, 0x1
 mov rcx, rbx
 mov byte ptr [local_1], 0x0
 call sub_14001e634
 mov r11d, dword ptr [rbx+0x14]
 and r11d, 0x1f8
 cmp r11d, 0x1c0
 jne 0x14001e7b2

0x14001e7e1:
 lea rdx, [local_4]
 mov r9b, dil
 mov r8, r15
 mov rcx, rbx
 call sub_14001e634
 xor r11d, r11d
 mov dword ptr [local_2], r11d

0x14001e7fc:
 mov eax, dword ptr [rbx+r11*4]
 mov dword ptr [rbp+r11*4], eax
 mov r11d, dword ptr [local_2]
 inc r11d
 mov dword ptr [local_2], r11d
 cmp r11d, 5
 jb 0x14001e7fc
 mov ebp, 4
 lea rcx, [local_2]
 mov rdx, rbp
 call sub_14001cf34
 lea rcx, [local_3]
 mov rdx, rbp
 call sub_14001cf34
 mov ebp, 0x40
 lea rcx, [rbx+0x1c]
 mov rdx, rbp
 call sub_14001cf34
 lea edx, [rbp-0x2c]
 mov rcx, rbx
 call sub_14001cf34
 lea rcx, [rbx+0x14]
 mov rdx, r15
 call sub_14001cf34
 lea rcx, [local_4]
 mov rdx, r15
 call sub_14001cf34
 test dil, dil
 je 0x14001e87f
 lea rcx, [rbx+0x5c]
 mov r8, rbp
 xor edx, edx
 call 0x14002d190

0x14001e87f:
 mov rcx, qword ptr [local_5]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 add rsp, 0x40
 pop r15
 pop rdi
 pop rsi
 ret 
sub_14001e720   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_14001e8a0
; --------------------------------------------------------------------------
sub_14001e8a0   proc
 and qword ptr [rcx+0x20], 0x0
 mov dword ptr [rcx], 0x6a09e667
 mov dword ptr [rcx+4], 0xbb67ae85
 mov dword ptr [rcx+0x8], 0x3c6ef372
 mov dword ptr [rcx+0xc], 0xa54ff53a
 mov dword ptr [rcx+0x10], 0x510e527f
 mov dword ptr [rcx+0x14], 0x9b05688c
 mov dword ptr [rcx+0x18], 0x1f83d9ab
 mov dword ptr [rcx+0x1c], 0x5be0cd19
 ret 
sub_14001e8a0   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001e8e0
; --------------------------------------------------------------------------
sub_14001e8e0   proc \
 arg_1 : dword ; [rsp+0x1b0]

 local local_1: dword ; [rsp+0x30]
 local local_2: dword ; [rsp+0x34]
 local local_3: dword ; [rsp+0x38]
 local local_4: dword ; [rsp+0x3c]
 local local_5: dword ; [rsp+0x40]
 local local_6: dword ; [rsp+0x44]
 local local_7: dword ; [rsp+0x48]
 local local_8: dword ; [rsp+0x4c]
 local local_9: dword ; [rsp+0x50]
 local local_10: dword ; [rsp+0x54]
 local local_11: dword ; [rsp+0x58]
 local local_12: dword ; [rsp+0x5c]
 local local_13: dword ; [rsp+0x60]
 local local_14: dword ; [rsp+0x64]
 local local_15: dword ; [rsp+0x68]
 local local_16: dword ; [rsp+0x6c]

 mov rax, rsp
 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x158
 xor ebx, ebx
 mov r9, rcx
 cmp rcx, rbx
 jne 0x14001e920
 lea edx, [rbx+0x20]
 lea rcx, [rax-0x68]
 call sub_14001cf34
 lea rcx, [local_1]
 mov edx, 0x100
 call sub_14001cf34
 jmp 0x14001eb17

0x14001e920:
 mov rcx, qword ptr [rcx+0x28]
 lea r10, [local_15]
 mov r11d, 0x30
 mov eax, dword ptr [rcx]
 bswap eax
 mov dword ptr [local_1], eax
 mov eax, dword ptr [rcx+4]
 bswap eax
 mov dword ptr [local_2], eax
 mov eax, dword ptr [rcx+0x8]
 bswap eax
 mov dword ptr [local_3], eax
 mov eax, dword ptr [rcx+0xc]
 bswap eax
 mov dword ptr [local_4], eax
 mov eax, dword ptr [rcx+0x10]
 bswap eax
 mov dword ptr [local_5], eax
 mov eax, dword ptr [rcx+0x14]
 bswap eax
 mov dword ptr [local_6], eax
 mov eax, dword ptr [rcx+0x18]
 bswap eax
 mov dword ptr [local_7], eax
 mov eax, dword ptr [rcx+0x1c]
 bswap eax
 mov dword ptr [local_8], eax
 mov eax, dword ptr [rcx+0x20]
 bswap eax
 mov dword ptr [local_9], eax
 mov eax, dword ptr [rcx+0x24]
 bswap eax
 mov dword ptr [local_10], eax
 mov eax, dword ptr [rcx+0x28]
 bswap eax
 mov dword ptr [local_11], eax
 mov eax, dword ptr [rcx+0x2c]
 bswap eax
 mov dword ptr [local_12], eax
 mov eax, dword ptr [rcx+0x30]
 bswap eax
 mov dword ptr [local_13], eax
 mov eax, dword ptr [rcx+0x34]
 bswap eax
 mov dword ptr [local_14], eax
 mov eax, dword ptr [rcx+0x38]
 bswap eax
 mov dword ptr [local_15], eax
 mov eax, dword ptr [rcx+0x3c]
 bswap eax
 mov dword ptr [local_16], eax

0x14001e9be:
 mov ecx, dword ptr [r10]
 mov edx, dword ptr [r10-0x34]
 add r10, 4
 mov r8d, ecx
 mov eax, ecx
 shr ecx, 0xa
 rol r8d, 0xf
 rol eax, 0xd
 xor r8d, eax
 mov eax, edx
 xor r8d, ecx
 mov ecx, edx
 shr edx, 3
 rol ecx, 0xe
 ror eax, 7
 xor ecx, eax
 xor ecx, edx
 add r8d, ecx
 add r8d, dword ptr [r10-0x3c]
 add r8d, dword ptr [r10-0x18]
 sub r11, 0x1
 mov dword ptr [r10+4], r8d
 jne 0x14001e9be
 mov esi, dword ptr [r9+0xc]
 mov r15d, dword ptr [r9]
 mov r11d, dword ptr [r9+4]
 mov edi, dword ptr [r9+0x8]
 mov r10d, dword ptr [r9+0x10]
 mov ebp, dword ptr [r9+0x18]
 mov r13d, dword ptr [r9+0x1c]
 mov dword ptr [arg_1], esi
 mov esi, dword ptr [r9+0x14]
 mov r12d, dword ptr [arg_1]
 mov r14d, 0x40

0x14001ea38:
 mov eax, r10d
 mov r8d, r10d
 mov ecx, r10d
 ror r8d, 0xb
 rol eax, 7
 not ecx
 xor r8d, eax
 and ecx, ebp
 mov eax, r10d
 ror eax, 6
 mov edx, r15d
 xor r8d, eax
 mov eax, esi
 and eax, r10d
 xor ecx, eax
 lea rax, [0x14003de80]
 add r8d, ecx
 mov ecx, r11d
 add r8d, dword ptr [rbx+rax]
 xor ecx, r15d
 mov eax, r15d
 add r8d, dword ptr [rsp+rbx+0x30]
 and ecx, edi
 add rbx, 4
 add r8d, r13d
 ror edx, 0xd
 rol eax, 0xa
 xor edx, eax
 mov eax, r15d
 mov r13d, ebp
 ror eax, 2
 mov ebp, esi
 mov esi, r10d
 xor edx, eax
 mov eax, r11d
 lea r10d, [r8+r12]
 and eax, r15d
 mov r12d, edi
 mov edi, r11d
 xor ecx, eax
 mov r11d, r15d
 add edx, ecx
 sub r14, 0x1
 lea r15d, [rdx+r8]
 jne 0x14001ea38
 mov eax, dword ptr [r9]
 add eax, r15d
 mov dword ptr [r9], eax
 mov eax, r11d
 add eax, dword ptr [r9+4]
 mov dword ptr [r9+4], eax
 mov eax, edi
 add eax, dword ptr [r9+0x8]
 mov dword ptr [r9+0x8], eax
 mov eax, dword ptr [r9+0xc]
 add eax, r12d
 mov dword ptr [r9+0xc], eax
 mov eax, r10d
 add eax, dword ptr [r9+0x10]
 mov dword ptr [r9+0x10], eax
 mov eax, esi
 add eax, dword ptr [r9+0x14]
 mov dword ptr [r9+0x14], eax
 mov eax, ebp
 add eax, dword ptr [r9+0x18]
 mov dword ptr [r9+0x18], eax
 mov eax, r13d
 add eax, dword ptr [r9+0x1c]
 mov dword ptr [r9+0x1c], eax

0x14001eb17:
 add rsp, 0x158
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
sub_14001e8e0   endp
 
 int3 

0x14001eb2c:
 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x140
 mov ebx, dword ptr [rcx+0x20]
 add qword ptr [rcx+0x20], r8
 mov rsi, r8
 and ebx, 0x3f
 mov r12, rdx
 mov rbp, rcx
 test r8, r8
 je 0x14001ebb3

0x14001eb60:
 mov eax, 0x40
 mov rdi, rsi
 sub rax, rbx
 cmp rsi, rax
 cmova rdi, rax
 cmp rdi, 0x40
 jne 0x14001eb7e
 mov qword ptr [rbp+0x28], r12
 jmp 0x14001eb95

0x14001eb7e:
 lea rax, [rbp+0x30]
 mov r8, rdi
 mov rdx, r12
 lea rcx, [rax+rbx]
 mov qword ptr [rbp+0x28], rax
 call 0x14002d490

0x14001eb95:
 add rbx, rdi
 add r12, rdi
 sub rsi, rdi
 cmp rbx, 0x40
 jne 0x14001ebae
 mov rcx, rbp
 xor ebx, ebx
 call sub_14001e8e0

0x14001ebae:
 test rsi, rsi
 jne 0x14001eb60

0x14001ebb3:
 lea rcx, [rsp+0x20]
 mov edx, 0x20
 call sub_14001cf34
 lea rcx, [rsp+0x40]
 mov edx, 0x100
 call sub_14001cf34
 lea r11, [rsp+0x140]
 mov rbx, qword ptr [r11+0x10]
 mov rbp, qword ptr [r11+0x18]
 mov rsi, qword ptr [r11+0x20]
 mov rdi, qword ptr [r11+0x28]
 mov rsp, r11
 pop r12
 ret 
 int3 

0x14001ebf0:
 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x140
 mov rsi, qword ptr [rcx+0x20]
 mov edi, dword ptr [rcx+0x20]
 lea rbp, [rcx+0x30]
 shl rsi, 3
 and edi, 0x3f
 mov qword ptr [rcx+0x28], rbp
 mov r12, rdx
 mov rbx, rcx
 mov byte ptr [rdi+rcx+0x30], 0x80
 jmp 0x14001ec41

0x14001ec2f:
 and edi, 0x3f
 jne 0x14001ec3c
 mov rcx, rbx
 call sub_14001e8e0

0x14001ec3c:
 mov byte ptr [rdi+rbx+0x30], 0x0

0x14001ec41:
 inc edi
 cmp edi, 0x38
 jne 0x14001ec2f
 movsxd rax, edi
 lea edx, [rdi-0x30]
 lea rcx, [rax+rbx+0x30]

0x14001ec53:
 mov rax, rsi
 shl rsi, 8
 shr rax, 0x38
 mov byte ptr [rcx], al
 inc rcx
 sub rdx, 0x1
 jne 0x14001ec53
 mov rcx, rbx
 call sub_14001e8e0
 xor r11d, r11d
 xor r8d, r8d

0x14001ec77:
 mov eax, r11d
 mov ecx, 3
 inc r11d
 and eax, 3
 sub ecx, eax
 mov rax, r8
 inc r8
 shr rax, 2
 shl ecx, 3
 mov edx, dword ptr [rbx+rax*4]
 shr edx, cl
 mov byte ptr [r12], dl
 inc r12
 cmp r11d, 0x20
 jb 0x14001ec77
 and qword ptr [rbx+0x20], 0x0
 lea rcx, [rsp+0x20]
 mov edx, 0x20
 mov dword ptr [rbx], 0x6a09e667
 mov dword ptr [rbx+4], 0xbb67ae85
 mov dword ptr [rbx+0x8], 0x3c6ef372
 mov dword ptr [rbx+0xc], 0xa54ff53a
 mov dword ptr [rbx+0x10], 0x510e527f
 mov dword ptr [rbx+0x14], 0x9b05688c
 mov dword ptr [rbx+0x18], 0x1f83d9ab
 mov dword ptr [rbx+0x1c], 0x5be0cd19
 call sub_14001cf34
 lea rcx, [rsp+0x40]
 mov edx, 0x100
 call sub_14001cf34
 mov edx, 0x40
 mov rcx, rbp
 lea r11, [rsp+0x140]
 mov rbx, qword ptr [r11+0x10]
 mov rbp, qword ptr [r11+0x18]
 mov rsi, qword ptr [r11+0x20]
 mov rdi, qword ptr [r11+0x28]
 mov rsp, r11
 pop r12
 jmp sub_14001cf34
 int3 
 int3 

0x14001ed2c:
 mov r8, rdx
 test rdx, rdx
 jne 0x14001ed37
 xor eax, eax
 ret 

0x14001ed37:
 imul rcx, rcx, 0x64
 mov rax, rcx
 cqo 
 idiv r8
 ret 

0x14001ed44:
 cmp rdx, rcx
 mov r8, rdx
 jge 0x14001ed52
 mov eax, 0x64
 ret 

0x14001ed52:
 xor eax, eax
 cmp rdx, rax
 je 0x14001ed65
 imul rcx, rcx, 0x64
 mov rax, rcx
 cqo 
 idiv r8

0x14001ed65:
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001ed68
; --------------------------------------------------------------------------
sub_14001ed68   proc
 lea rax, [0x14003d408]
 test rcx, rcx
 cmove rcx, rax
 mov rax, rcx
 ret 
sub_14001ed68   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001ed7c
; --------------------------------------------------------------------------
sub_14001ed7c   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 mov r9, rcx
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rsi, r8
 mov rdi, r9
 mov rbx, rdx
 repne scasb al, byte ptr [rdi]
 not rcx
 cmp r8, rcx
 cmova rsi, rcx
 mov rcx, r9
 mov r8d, esi
 call qword ptr [OemToCharBuffA]
 mov byte ptr [rbx+rsi-1], 0x0
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_14001ed7c   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001edcc
; --------------------------------------------------------------------------
sub_14001edcc   proc \
 arg_1 : qword ; [rsp+0x8]

 mov qword ptr [arg_1], rdi
 mov rdx, rcx
 xor eax, eax
 or rcx, 0xffffffffffffffff
 mov rdi, rdx
 repne scasd eax, dword ptr [rdi]
 not rcx
 lea rax, [rcx-2]
 xor ecx, ecx
 cdqe 
 cmp rax, rcx
 jl 0x14001ee08

0x14001edf0:
 cmp word ptr [rdx+rax*2], 0xd
 je 0x14001edfe
 cmp word ptr [rdx+rax*2], 0xa
 jne 0x14001ee08

0x14001edfe:
 mov word ptr [rdx+rax*2], cx
 sub rax, 0x1
 jns 0x14001edf0

0x14001ee08:
 mov rdi, qword ptr [arg_1]
 mov rax, rdx
 ret 
sub_14001edcc   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001ee14
; --------------------------------------------------------------------------
sub_14001ee14   proc
 sub rsp, 0x28
 cmp cl, 0x69
 jne 0x14001ee21
 mov al, 0x49
 jmp 0x14001ee29

0x14001ee21:
 movzx ecx, cl
 call sub_14002f4e0

0x14001ee29:
 add rsp, 0x28
 ret 
sub_14001ee14   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001ee30
; --------------------------------------------------------------------------
sub_14001ee30   proc
 sub rsp, 0x28
 cmp cx, 0x69
 jne 0x14001ee41
 mov eax, 0x49
 jmp 0x14001ee49

0x14001ee41:
 movzx ecx, cx
 call 0x140021524

0x14001ee49:
 add rsp, 0x28
 ret 
sub_14001ee30   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001ee50
; --------------------------------------------------------------------------
sub_14001ee50   proc
 add ecx, -0x30
 cmp ecx, 9
 setbe al
 ret 
sub_14001ee50   endp
 
 int3 
 int3 

0x14001ee5c:
 cmp ecx, 0x20
 je 0x14001ee69
 cmp ecx, 9
 je 0x14001ee69
 xor eax, eax
 ret 

0x14001ee69:
 mov eax, 0x1
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_14001ee70
; --------------------------------------------------------------------------
sub_14001ee70   proc \
 arg_1 : qword, ; [rsp+0x28]
 arg_2 : qword, ; [rsp+0x30]
 arg_3 : qword, ; [rsp+0x38]
 arg_4 : qword, ; [rsp+0x40]
 arg_5 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 push r13
 push r14
 push r15
 mov rdi, qword ptr [arg_5]
 mov r13, rdx
 xor edx, edx
 mov rbx, r9
 mov rsi, r8
 mov r12, rcx
 mov r11d, edx
 mov r10d, edx
 mov ebp, edx
 cmp r13, rdx
 jbe 0x14001ef24

0x14001eeab:
 movzx edx, byte ptr [r12]
 mov ecx, edx
 and edx, 0xf
 shr ecx, 4
 lea r15d, [rdx+0x30]
 cmp ecx, 9
 lea eax, [rcx+0x57]
 lea r14d, [rcx+0x30]
 cmova r14d, eax
 cmp edx, 9
 lea eax, [rdx+0x57]
 cmova r15d, eax
 xor edx, edx
 cmp rsi, rdx
 je 0x14001eef6
 lea rcx, [rdi-2]
 mov eax, r11d
 cmp rax, rcx
 jae 0x14001eef6
 mov byte ptr [r8], r14b
 add r11d, 2
 mov byte ptr [r8+1], r15b
 add r8, 2

0x14001eef6:
 cmp rbx, rdx
 je 0x14001ef18
 lea rcx, [rdi-2]
 mov eax, r10d
 cmp rax, rcx
 jae 0x14001ef18
 mov word ptr [r9], r14w
 add r10d, 2
 mov word ptr [r9+2], r15w
 add r9, 4

0x14001ef18:
 inc ebp
 inc r12
 mov eax, ebp
 cmp rax, r13
 jb 0x14001eeab

0x14001ef24:
 cmp rsi, rdx
 je 0x14001ef34
 cmp rdi, rdx
 jbe 0x14001ef34
 mov eax, r11d
 mov byte ptr [rax+rsi], dl

0x14001ef34:
 cmp rbx, rdx
 je 0x14001ef45
 cmp rdi, rdx
 jbe 0x14001ef45
 mov eax, r10d
 mov word ptr [rbx+rax*2], dx

0x14001ef45:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 pop r15
 pop r14
 pop r13
 pop r12
 ret 
sub_14001ee70   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001ef64
; --------------------------------------------------------------------------
sub_14001ef64   proc
 mov edx, ecx
 mov r8d, 0x1
 cmp ecx, 0xa
 jb 0x14001ef83

0x14001ef71:
 mov eax, 0xcccccccd
 inc r8d
 mul edx
 shr edx, 3
 cmp edx, 0xa
 jae 0x14001ef71

0x14001ef83:
 mov eax, r8d
 ret 
sub_14001ef64   endp
 
 int3 

0x14001ef88:
 jmp sub_140021464
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001ef90
; --------------------------------------------------------------------------
sub_14001ef90   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rdi, r8
 mov rbx, rcx
 test r8, r8
 je 0x14001efb2
 dec r8
 call 0x14002f520
 mov byte ptr [rbx+rdi-1], 0x0

0x14001efb2:
 mov rax, rbx
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_14001ef90   endp
 
; --------------------------------------------------------------------------
; sub_14001efc0
; --------------------------------------------------------------------------
sub_14001efc0   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 xor esi, esi
 mov rdi, r8
 mov rbx, rcx
 cmp r8, rsi
 jbe 0x14001efe9
 dec r8
 call sub_14002dc5c
 mov word ptr [rbx+rdi*2-2], si

0x14001efe9:
 mov rsi, qword ptr [arg_2]
 mov rax, rbx
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_14001efc0   endp
 
; --------------------------------------------------------------------------
; sub_14001effc
; --------------------------------------------------------------------------
sub_14001effc   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rbx, rcx
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, rbx
 repne scasd eax, dword ptr [rdi]
 not rcx
 dec rcx
 sub r8d, ecx
 dec r8d
 test r8d, r8d
 jle 0x14001f031
 movsxd r8, r8d
 mov rcx, rbx
 call sub_14002f838

0x14001f031:
 mov rax, rbx
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_14001effc   endp
 
 int3 

0x14001f040:
 mov qword ptr [rsp+0x8], rbx
 mov qword ptr [rsp+0x18], rsi
 push rdi
 sub rsp, 0x80
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x70], rax
 xor esi, esi
 mov rbx, rdx
 mov r10, rcx
 cmp rcx, rsi
 mov r11d, esi
 mov r9, rsi
 setl r11b
 cmp r11d, esi
 je 0x14001f07e
 neg r10

0x14001f07e:
 movsxd rax, r11d
 mov edi, 0x1
 sub r8, rax

0x14001f089:
 cmp rdi, r8
 jae 0x14001f0d3
 movabs rax, 0x6666666666666667
 inc r9
 inc rdi
 imul r10
 sar rdx, 2
 mov rax, rdx
 shr rax, 0x3f
 add rdx, rax
 movzx eax, dx
 shl ax, 2
 lea ecx, [rax+rdx]
 add cx, cx
 sub r10w, cx
 add r10w, 0x30
 mov word ptr [rsp+r9*2-2], r10w
 mov r10, rdx
 cmp rdx, rsi
 jne 0x14001f089

0x14001f0d3:
 cmp r11d, esi
 je 0x14001f0e6
 mov eax, 0x2d
 inc r9
 mov word ptr [rsp+r9*2-2], ax

0x14001f0e6:
 mov rcx, rsi
 cmp r9, rsi
 jbe 0x14001f106
 lea rdx, [rsp+r9*2-2]

0x14001f0f3:
 movzx eax, word ptr [rdx]
 sub rdx, 2
 mov word ptr [rbx+rcx*2], ax
 inc rcx
 cmp rcx, r9
 jb 0x14001f0f3

0x14001f106:
 mov word ptr [rbx+r9*2], si
 mov rcx, qword ptr [rsp+0x70]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x80]
 mov rbx, qword ptr [r11+0x10]
 mov rsi, qword ptr [r11+0x20]
 mov rsp, r11
 pop rdi
 ret 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001f130
; --------------------------------------------------------------------------
sub_14001f130   proc
 push rbx
 sub rsp, 0x20
 mov eax, dword ptr [0x14005a130]
 mov r8d, 0x800
 inc eax
 cmp eax, 4
 sbb edx, edx
 and edx, eax
 lea rax, [0x140056130]
 mov ebx, edx
 mov dword ptr [0x14005a130], edx
 shl rbx, 0xc
 add rbx, rax
 mov rdx, rbx
 call sub_14002110c
 xor r11d, r11d
 mov rax, rbx
 mov word ptr [rbx+0xffe], r11w
 add rsp, 0x20
 pop rbx
 ret 
sub_14001f130   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001f180
; --------------------------------------------------------------------------
sub_14001f180   proc \
 arg_1 : qword, ; [rsp+0x8]
 arg_2 : qword ; [rsp+0x10]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rdi
 mov r11, r8
 mov r9, rdx

0x14001f190:
 movzx eax, word ptr [rcx]
 cmp eax, 0x20
 je 0x14001f19d
 cmp eax, 9
 jne 0x14001f1a3

0x14001f19d:
 add rcx, 2
 jmp 0x14001f190

0x14001f1a3:
 movzx edx, word ptr [rcx]
 xor ebx, ebx
 cmp dx, bx
 jne 0x14001f1b1
 xor eax, eax
 jmp 0x14001f22f

0x14001f1b1:
 mov r8, rbx
 mov r10b, bl
 mov edi, 0x22

0x14001f1bc:
 cmp r10b, bl
 jne 0x14001f1ce
 movzx eax, dx
 cmp eax, 0x20
 je 0x14001f222
 cmp eax, 9
 je 0x14001f222

0x14001f1ce:
 cmp dx, di
 jne 0x14001f200
 lea rdx, [rcx+2]
 cmp word ptr [rdx], di
 jne 0x14001f1f7
 cmp r9, rbx
 je 0x14001f1f2
 lea rax, [r11-1]
 cmp r8, rax
 jae 0x14001f1f2
 mov word ptr [r9+r8*2], di
 inc r8

0x14001f1f2:
 mov rcx, rdx
 jmp 0x14001f216

0x14001f1f7:
 cmp r10b, bl
 sete r10b
 jmp 0x14001f216

0x14001f200:
 cmp r9, rbx
 je 0x14001f216
 lea rax, [r11-1]
 cmp r8, rax
 jae 0x14001f216
 mov word ptr [r9+r8*2], dx
 inc r8

0x14001f216:
 add rcx, 2
 mov dx, word ptr [rcx]
 cmp dx, bx
 jne 0x14001f1bc

0x14001f222:
 cmp r9, rbx
 je 0x14001f22c
 mov word ptr [r9+r8*2], bx

0x14001f22c:
 mov rax, rcx

0x14001f22f:
 mov rbx, qword ptr [arg_1]
 mov rdi, qword ptr [arg_2]
 ret 
sub_14001f180   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001f23c
; --------------------------------------------------------------------------
sub_14001f23c   proc \
 arg_1 : qword, ; [rsp+0x20]
 arg_2 : qword, ; [rsp+0x28]
 arg_3 : qword, ; [rsp+0x30]
 arg_4 : qword ; [rsp+0x38]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 push r13
 push r15
 xor r15d, r15d
 mov r12, r8
 mov rdi, rdx
 mov rdx, rcx
 mov r8d, r15d
 mov r11d, r15d
 mov r9, r15
 mov r10, r15
 cmp word ptr [rcx], r15w
 je 0x14001f35e
 lea r13, [r12-1]
 lea eax, [r15+0xd]

0x14001f280:
 mov ebp, r11d
 cmp rbp, r13
 jae 0x14001f35e
 cmp word ptr [rdx+r9*2], 0x25
 jne 0x14001f318
 cmp r8d, r15d
 je 0x14001f2a6
 cmp word ptr [rdx+r9*2-2], 0x25
 je 0x14001f318

0x14001f2a6:
 lea ebx, [r8+1]
 lea rcx, [r9+1]

0x14001f2ae:
 movzx esi, word ptr [rdx+rcx*2]
 lea eax, [rsi-0x30]
 cmp eax, 9
 jbe 0x14001f2bf
 cmp esi, 0x2d
 jne 0x14001f2c6

0x14001f2bf:
 inc ebx
 inc rcx
 jmp 0x14001f2ae

0x14001f2c6:
 cmp word ptr [rdx+rcx*2], 0x73
 jne 0x14001f313
 mov esi, ebx
 mov rax, r12
 sub esi, r8d
 lea ecx, [rsi+1]
 sub rax, rcx
 cmp rbp, rax
 jae 0x14001f313
 cmp r8d, ebx
 jae 0x14001f303
 add r8d, esi
 mov ecx, esi
 add r11d, esi

0x14001f2ed:
 movzx eax, word ptr [rdx+r9*2]
 inc r9
 mov word ptr [rdi+r10*2], ax
 inc r10
 sub rcx, 0x1
 jne 0x14001f2ed

0x14001f303:
 mov eax, 0x6c
 inc r11d
 mov word ptr [rdi+r10*2], ax
 inc r10

0x14001f313:
 mov eax, 0xd

0x14001f318:
 cmp word ptr [rdx+r9*2], 0xa
 jne 0x14001f338
 cmp r8d, r15d
 je 0x14001f32d
 cmp word ptr [rdx+r9*2-2], ax
 je 0x14001f338

0x14001f32d:
 mov word ptr [rdi+r10*2], ax
 inc r11d
 inc r10

0x14001f338:
 movzx eax, word ptr [rdx+r9*2]
 inc r9
 inc r11d
 mov word ptr [rdi+r10*2], ax
 inc r10
 inc r8d
 mov eax, 0xd
 cmp word ptr [rdx+r9*2], r15w
 jne 0x14001f280

0x14001f35e:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov eax, r11d
 mov word ptr [rdi+rax*2], r15w
 mov rdi, qword ptr [arg_4]
 pop r15
 pop r13
 pop r12
 ret 
sub_14001f23c   endp
 
 int3 
 int3 
 int3 

0x14001f384:
 and qword ptr [rcx+0x20], 0x0
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001f38c
; --------------------------------------------------------------------------
sub_14001f38c   proc
 push rbx
 sub rsp, 0x20
 and qword ptr [rcx+0x20], 0x0
 mov rbx, rcx
 call sub_1400024e0
 and dword ptr [rbx+0x28], 0x0
 and qword ptr [rbx+0xb0], 0x0
 add rsp, 0x20
 pop rbx
 ret 
sub_14001f38c   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001f3b4
; --------------------------------------------------------------------------
sub_14001f3b4   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x38]
 arg_3 : qword, ; [rsp+0x40]
 arg_4 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x20
 mov rbx, qword ptr [rcx+0x8]
 mov rbp, rcx
 xor r12d, r12d
 cmp rdx, r12
 lea rsi, [0x14003d408]
 cmovne rsi, rdx
 or rcx, 0xffffffffffffffff
 xor eax, eax
 mov rdi, rsi
 repne scasd eax, dword ptr [rdi]
 not rcx
 mov rdx, rcx
 mov rcx, rbp
 call sub_1400011f4
 mov rax, qword ptr [rbp]
 lea rcx, [rax+rbx*2]

0x14001f407:
 movzx eax, word ptr [rsi]
 add rsi, 2
 mov word ptr [rcx], ax
 add rcx, 2
 cmp ax, r12w
 jne 0x14001f407
 inc dword ptr [rbp+0x28]
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_3]
 mov rbp, qword ptr [arg_2]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x20
 pop r12
 ret 
sub_14001f3b4   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001f43c
; --------------------------------------------------------------------------
sub_14001f43c   proc \
 arg_1 : qword ; [rsp+0x8]

 mov qword ptr [arg_1], rdi
 mov r8, rdx
 mov rdx, qword ptr [rcx+0x20]
 mov r9, rcx
 cmp rdx, qword ptr [rcx+0x8]
 jb 0x14001f45e
 test r8, r8
 je 0x14001f45a
 and qword ptr [r8], 0x0

0x14001f45a:
 xor al, al
 jmp 0x14001f485

0x14001f45e:
 mov rax, qword ptr [rcx]
 or rcx, 0xffffffffffffffff
 lea r10, [rax+rdx*2]
 xor eax, eax
 mov rdi, r10
 repne scasd eax, dword ptr [rdi]
 not rcx
 add rdx, rcx
 mov qword ptr [r9+0x20], rdx
 test r8, r8
 je 0x14001f483
 mov qword ptr [r8], r10

0x14001f483:
 mov al, 0x1

0x14001f485:
 mov rdi, qword ptr [arg_1]
 ret 
sub_14001f43c   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_14001f48c
; --------------------------------------------------------------------------
sub_14001f48c   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x38]
 arg_3 : qword, ; [rsp+0x18] ; [rsp+0x40]
 arg_4 : qword ; [rsp+0x20] ; [rsp+0x48]

 mov qword ptr [arg_2], rbx
 mov qword ptr [arg_3], rbp
 mov qword ptr [arg_4], rsi
 push rdi
 sub rsp, 0x20
 mov rbx, rcx
 mov rcx, qword ptr [rcx+0xb0]
 mov bpl, r8b
 mov rsi, rdx
 cmp rcx, 0x10
 jae 0x14001f4c6
 mov rax, qword ptr [rbx+0x20]
 mov qword ptr [rbx+rcx*8+0x30], rax
 inc qword ptr [rbx+0xb0]

0x14001f4c6:
 and qword ptr [rbx+0x20], 0x0
 xor dil, dil

0x14001f4ce:
 lea rdx, [arg_1]
 mov rcx, rbx
 call sub_14001f43c
 test al, al
 je 0x14001f525
 test rsi, rsi
 je 0x14001f522
 mov rdx, qword ptr [arg_1]
 test rdx, rdx
 je 0x14001f522
 test bpl, bpl
 je 0x14001f516
 mov rax, rsi
 sub rdx, rsi

0x14001f4f9:
 movzx ecx, word ptr [rax]
 cmp cx, word ptr [rax+rdx]
 jne 0x14001f50f
 add rax, 2
 test cx, cx
 jne 0x14001f4f9
 xor eax, eax
 jmp 0x14001f51e

0x14001f50f:
 sbb eax, eax
 sbb eax, -1
 jmp 0x14001f51e

0x14001f516:
 mov rcx, rsi
 call sub_140021464

0x14001f51e:
 test eax, eax
 jne 0x14001f4ce

0x14001f522:
 mov dil, 0x1

0x14001f525:
 mov rcx, qword ptr [rbx+0xb0]
 test rcx, rcx
 je 0x14001f544
 dec rcx
 mov qword ptr [rbx+0xb0], rcx
 mov rcx, qword ptr [rbx+rcx*8+0x30]
 mov qword ptr [rbx+0x20], rcx

0x14001f544:
 mov rbx, qword ptr [arg_2]
 mov rbp, qword ptr [arg_3]
 mov rsi, qword ptr [arg_4]
 mov al, dil
 add rsp, 0x20
 pop rdi
 ret 
sub_14001f48c   endp
 
; --------------------------------------------------------------------------
; sub_14001f55c
; --------------------------------------------------------------------------
sub_14001f55c   proc
 push rbx
 sub rsp, 0x20
 xor eax, eax
 mov rbx, rcx
 mov qword ptr [rcx], rax
 mov qword ptr [rcx+0x8], rax
 mov qword ptr [rcx+0x10], rax
 mov qword ptr [rcx+0x18], rax
 call sub_14001f38c
 mov rax, rbx
 add rsp, 0x20
 pop rbx
 ret 
sub_14001f55c   endp
 
; --------------------------------------------------------------------------
; sub_14001f584
; --------------------------------------------------------------------------
sub_14001f584   proc \
 arg_1 : qword ; [rsp+0x48]

 push rbx
 sub rsp, 0x20
 mov rbx, rdx
 lea rdx, [arg_1]
 mov r11, r8
 call sub_14001f43c
 test al, al
 je 0x14001f5b0
 mov rdx, qword ptr [arg_1]
 mov r8, r11
 mov rcx, rbx
 call sub_14001efc0
 mov al, 0x1

0x14001f5b0:
 add rsp, 0x20
 pop rbx
 ret 
sub_14001f584   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001f5b8
; --------------------------------------------------------------------------
sub_14001f5b8   proc \
 arg_1 : qword ; [rsp+0x38]

 sub rsp, 0x28
 lea rdx, [arg_1]
 call sub_14001f43c
 mov rax, qword ptr [arg_1]
 add rsp, 0x28
 ret 
sub_14001f5b8   endp
 

0x14001f5d0:
 mov dword ptr [0x14005a134], ecx
 ret 
 int3 

0x14001f5d8:
 jmp sub_14002e5a4
 int3 
 int3 
 int3 

0x14001f5e0:
 sub rsp, 0x28
 cmp byte ptr [0x140050e7b], 0x0
 je 0x14001f5fe
 lea rcx, [0x140050e70]
 mov edx, 0xff
 call 0x14000b114

0x14001f5fe:
 cmp dword ptr [0x14005a134], 0x0
 je 0x14001f64c
 mov eax, dword ptr [0x14005a140]
 test al, 0x1
 jne 0x14001f625
 or eax, 0x1
 mov dword ptr [0x14005a140], eax
 call sub_14002e5a4
 mov dword ptr [0x14005a13c], eax

0x14001f625:
 call sub_14002e5a4
 sub eax, dword ptr [0x14005a13c]
 cmp eax, 0xa
 jle 0x14001f64c
 mov ecx, dword ptr [0x14005a134]
 call qword ptr [Sleep]
 call sub_14002e5a4
 mov dword ptr [0x14005a13c], eax

0x14001f64c:
 mov ecx, 0x1
 add rsp, 0x28
 jmp qword ptr [SetThreadExecutionState]
; --------------------------------------------------------------------------
; sub_14001f65c
; --------------------------------------------------------------------------
sub_14001f65c   proc \
 arg_1 : qword ; [rsp+0x50]

 local local_1: qword ; [rsp+0x20]
 local local_2: qword ; [rsp+0x28]
 local local_3: dword ; [rsp+0x30]
 local local_4: qword ; [rsp+0x34]
 local local_5: qword ; [rsp+0x3c]

 sub rsp, 0x48
 call qword ptr [GetCurrentProcess]
 lea r8, [arg_1]
 mov edx, 0x28
 mov rcx, rax
 call qword ptr [OpenProcessToken]
 test eax, eax
 je 0x14001f6c2
 lea r8, [local_4]
 lea rdx, [0x14003df80]
 xor ecx, ecx
 call qword ptr [LookupPrivilegeValueW]
 and qword ptr [local_2], 0x0
 mov rcx, qword ptr [arg_1]
 and qword ptr [local_1], 0x0
 lea r8, [local_3]
 xor r9d, r9d
 xor edx, edx
 mov dword ptr [local_3], 0x1
 mov dword ptr [local_5], 2
 call qword ptr [AdjustTokenPrivileges]

0x14001f6c2:
 mov edx, 0x80000000
 mov ecx, 0xd
 call qword ptr [ExitWindowsEx]
 add rsp, 0x48
 ret 
sub_14001f65c   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_14001f6d8
; --------------------------------------------------------------------------
sub_14001f6d8   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov bl, cl
 lea rcx, [0x14003dfe0]
 call qword ptr [GetModuleHandleW]
 mov rdi, rax
 test rax, rax
 je 0x14001f757
 lea rdx, [0x14003dfc8]
 mov rcx, rax
 call qword ptr [GetProcAddress]
 test rax, rax
 je 0x14001f721
 mov cl, bl
 lea rdx, [0x14003d408]
 neg cl
 sbb rcx, rcx
 and rcx, rdx
 call rax

0x14001f721:
 lea rdx, [0x14003dfa8]
 mov rcx, rdi
 call qword ptr [GetProcAddress]
 mov rdi, rax
 call sub_140011a38
 cmp eax, 0x601
 jb 0x14001f757
 test rdi, rdi
 je 0x14001f757
 neg bl
 sbb ecx, ecx
 and ecx, 0xfffff800
 add ecx, 0x1000
 call rdi

0x14001f757:
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_14001f6d8   endp
 
 int3 
 int3 

0x14001f764:
 push rbx
 mov eax, 0x1030
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1020], rax
 mov rbx, rcx
 lea rcx, [rsp+0x20]
 mov edx, 0x800
 call qword ptr [GetSystemDirectoryW]
 test eax, eax
 jne 0x14001f7a0
 xor eax, eax
 jmp 0x14001f7c3

0x14001f7a0:
 lea r8, [rsp+0x20]
 lea rcx, [rsp+0x20]
 mov r9d, 0x800
 mov rdx, rbx
 call 0x1400134f4
 lea rcx, [rsp+0x20]
 call qword ptr [LoadLibraryW]

0x14001f7c3:
 mov rcx, qword ptr [rsp+0x1020]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x1030
 pop rbx
 ret 
; --------------------------------------------------------------------------
; sub_14001f7dc
; --------------------------------------------------------------------------
sub_14001f7dc   proc
 local local_1: dword ; [rsp]

 push rbx
 sub rsp, 0x10
 xor ecx, ecx
 mov eax, 0x1
 cpuid 
 bt ecx, 0x13
 mov dword ptr [local_1], eax
 mov dword ptr [rsp+4], ebx
 jae 0x14001f7ff
 mov eax, 4
 jmp 0x14001f821

0x14001f7ff:
 bt ecx, 9
 jae 0x14001f80c
 mov eax, 3
 jmp 0x14001f821

0x14001f80c:
 bt edx, 0x1a
 jae 0x14001f819
 mov eax, 2
 jmp 0x14001f821

0x14001f819:
 shr edx, 0x19
 and edx, 0x1
 mov eax, edx

0x14001f821:
 add rsp, 0x10
 pop rbx
 ret 
sub_14001f7dc   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_14001f828
; --------------------------------------------------------------------------
sub_14001f828   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 lea eax, [rcx-1]
 cmp eax, 0xe
 ja 0x14001f8ad
 mov edi, 0x1
 cmp ecx, edi
 jne 0x14001f84b
 lea ebx, [rdi+0x3f]
 lea edi, [rbx-0x4f]
 jmp 0x14001f885

0x14001f84b:
 cmp ecx, 7
 jge 0x14001f85a
 mov ebx, 0x40
 lea edi, [rcx-4]
 jmp 0x14001f885

0x14001f85a:
 jne 0x14001f863
 mov ebx, 0x4000
 jmp 0x14001f885

0x14001f863:
 cmp ecx, 0xa
 jge 0x14001f872
 mov ebx, 0x20
 lea edi, [rcx-7]
 jmp 0x14001f885

0x14001f872:
 jne 0x14001f87d
 mov ebx, 0x8000
 xor edi, edi
 jmp 0x14001f885

0x14001f87d:
 mov ebx, 0x80
 lea edi, [rcx-0xd]

0x14001f885:
 call qword ptr [GetCurrentProcess]
 mov edx, ebx
 mov rcx, rax
 call qword ptr [SetPriorityClass]
 call qword ptr [GetCurrentThread]
 mov edx, edi
 mov rcx, rax
 call qword ptr [SetThreadPriority]
 mov dword ptr [0x14005a154], edi

0x14001f8ad:
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_14001f828   endp
 
; --------------------------------------------------------------------------
; sub_14001f8b8
; --------------------------------------------------------------------------
sub_14001f8b8   proc
 sub rsp, 0x28
 or edx, 0xffffffff
 call qword ptr [WaitForSingleObject]
 cmp eax, 0xff
 jne 0x14001f8fb
 call qword ptr [GetLastError]
 lea rdx, [0x14003e020]
 lea rcx, [0x140050e70]
 mov r9d, eax
 or r8d, 0xffffffff
 call sub_14000b39c
 lea rcx, [0x140050e70]
 mov edx, 2
 call 0x14000b114

0x14001f8fb:
 add rsp, 0x28
 ret 
sub_14001f8b8   endp
 
; --------------------------------------------------------------------------
; sub_14001f900
; --------------------------------------------------------------------------
sub_14001f900   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x38]

 sub rsp, 0x28
 call qword ptr [GetCurrentProcess]
 lea r8, [arg_2]
 lea rdx, [arg_1]
 mov rcx, rax
 call qword ptr [GetProcessAffinityMask]
 xor ecx, ecx
 cmp eax, ecx
 lea eax, [rcx+1]
 je 0x14001f941
 mov r8, qword ptr [arg_1]
 mov rdx, rax

0x14001f92e:
 test rdx, r8
 je 0x14001f935
 add ecx, eax

0x14001f935:
 add rdx, rdx
 jne 0x14001f92e
 cmp ecx, eax
 cmovb ecx, eax
 mov eax, ecx

0x14001f941:
 add rsp, 0x28
 ret 
sub_14001f900   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001f948
; --------------------------------------------------------------------------
sub_14001f948   proc
 sub rsp, 0x28
 call sub_14001f900
 cmp eax, 0x1
 jae 0x14001f95d
 mov eax, 0x1
 jmp 0x14001f967

0x14001f95d:
 mov ecx, 0x20
 cmp eax, ecx
 cmova eax, ecx

0x14001f967:
 add rsp, 0x28
 ret 
sub_14001f948   endp
 
; --------------------------------------------------------------------------
; sub_14001f96c
; --------------------------------------------------------------------------
sub_14001f96c   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 mov dword ptr [rcx], edx
 cmp edx, 0x20
 jbe 0x14001f982
 mov dword ptr [rcx], 0x20

0x14001f982:
 cmp dword ptr [rcx], 0x0
 jne 0x14001f98d
 mov dword ptr [rcx], 0x1

0x14001f98d:
 and dword ptr [rcx+0x108], 0x0
 cmp dword ptr [rcx], 0x20
 jbe 0x14001f99f
 mov dword ptr [rcx], 0x20

0x14001f99f:
 mov byte ptr [rcx+0x318], 0x0
 add rcx, 0x330
 call qword ptr [InitializeCriticalSection]
 xor r9d, r9d
 xor edx, edx
 lea r8d, [r9+0x20]
 xor ecx, ecx
 call qword ptr [CreateSemaphoreW]
 xor r9d, r9d
 xor ecx, ecx
 lea edx, [r9+1]
 mov qword ptr [rbx+0x320], rax
 mov r8d, edx
 call qword ptr [CreateEventW]
 cmp qword ptr [rbx+0x320], 0x0
 mov qword ptr [rbx+0x328], rax
 je 0x14001f9f3
 test rax, rax
 jne 0x14001fa17

0x14001f9f3:
 lea rdx, [0x14003e090]
 lea rcx, [0x140050e70]
 call sub_14000b39c
 lea rcx, [0x140050e70]
 mov edx, 2
 call 0x14000b114

0x14001fa17:
 and dword ptr [rbx+0x310], 0x0
 and dword ptr [rbx+0x314], 0x0
 and dword ptr [rbx+0x10c], 0x0
 mov rax, rbx
 add rsp, 0x20
 pop rbx
 ret 
sub_14001f96c   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001fa38
; --------------------------------------------------------------------------
sub_14001fa38   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 mov rdi, rcx
 mov rcx, qword ptr [rcx+0x320]
 mov rsi, rdx
 call sub_14001f8b8
 cmp byte ptr [rdi+0x318], 0x0
 je 0x14001fa66
 xor al, al
 jmp 0x14001faaa

0x14001fa66:
 lea rcx, [rdi+0x330]
 call qword ptr [EnterCriticalSection]
 mov eax, dword ptr [rdi+0x314]
 lea rcx, [rdi+0x330]
 add rax, 0x11
 shl rax, 4
 movdqu xmm0, xmmword ptr [rax+rdi]
 movdqu xmmword ptr [rsi], xmm0
 mov edx, dword ptr [rdi+0x314]
 inc edx
 and edx, 0x1f
 mov dword ptr [rdi+0x314], edx
 call qword ptr [LeaveCriticalSection]
 mov al, 0x1

0x14001faaa:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_14001fa38   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001fabc
; --------------------------------------------------------------------------
sub_14001fabc   proc
 push rbx
 sub rsp, 0x20
 mov eax, dword ptr [rcx+0x310]
 mov rbx, rcx
 sub eax, dword ptr [rcx+0x314]
 and eax, 0x1f
 mov dword ptr [rcx+0x10c], eax
 je 0x14001fb0b
 mov rcx, qword ptr [rcx+0x328]
 call qword ptr [ResetEvent]
 mov edx, dword ptr [rbx+0x10c]
 mov rcx, qword ptr [rbx+0x320]
 xor r8d, r8d
 call qword ptr [ReleaseSemaphore]
 mov rcx, qword ptr [rbx+0x328]
 call sub_14001f8b8

0x14001fb0b:
 add rsp, 0x20
 pop rbx
 ret 
sub_14001fabc   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001fb14
; --------------------------------------------------------------------------
sub_14001fb14   proc \
 arg_1 : qword ; [rsp+0x40]

 local local_1: qword ; [rsp+0x20]

 push rbx
 sub rsp, 0x30
 mov qword ptr [local_1], -2
 lea rcx, [0x14005a158]
 call qword ptr [EnterCriticalSection]
 mov r11d, dword ptr [0x14005a150]
 mov eax, r11d
 inc r11d
 mov dword ptr [0x14005a150], r11d
 xor ebx, ebx
 cmp eax, ebx
 jne 0x14001fb7c
 mov ecx, 0x358
 call 0x14002d27c
 mov qword ptr [arg_1], rax
 cmp rax, rbx
 je 0x14001fb6b
 lea edx, [rbx+0x20]
 mov rcx, rax
 call sub_14001f96c
 jmp 0x14001fb6e

0x14001fb6b:
 mov rax, rbx

0x14001fb6e:
 mov qword ptr [0x14005a148], rax
 mov r11d, dword ptr [0x14005a150]

0x14001fb7c:
 cmp r11d, 0x1
 jbe 0x14001fbb8
 mov ecx, 0x358
 call 0x14002d27c
 mov qword ptr [arg_1], rax
 cmp rax, rbx
 je 0x14001fba6
 mov edx, 0x20
 mov rcx, rax
 call sub_14001f96c
 mov rbx, rax

0x14001fba6:
 lea rcx, [0x14005a158]
 call qword ptr [LeaveCriticalSection]
 mov rax, rbx
 jmp 0x14001fbcc

0x14001fbb8:
 lea rcx, [0x14005a158]
 call qword ptr [LeaveCriticalSection]
 mov rax, qword ptr [0x14005a148]

0x14001fbcc:
 add rsp, 0x30
 pop rbx
 ret 
sub_14001fb14   endp
 
 int3 
 int3 

0x14001fbd4:
 mov qword ptr [rsp+0x8], rbx
 mov qword ptr [rsp+0x10], rsi
 push rdi
 sub rsp, 0x20
 mov rbx, rcx
 call sub_14001fabc
 mov rcx, qword ptr [rbx+0x320]
 xor r8d, r8d
 mov byte ptr [rbx+0x318], 0x1
 lea edx, [r8+0x20]
 call qword ptr [ReleaseSemaphore]
 xor esi, esi
 cmp dword ptr [rbx+0x108], esi
 jbe 0x14001fc33
 lea rdi, [rbx+0x8]

0x14001fc14:
 mov rcx, qword ptr [rdi]
 call sub_14001f8b8
 mov rcx, qword ptr [rdi]
 call qword ptr [CloseHandle]
 inc esi
 add rdi, 8
 cmp esi, dword ptr [rbx+0x108]
 jb 0x14001fc14

0x14001fc33:
 lea rcx, [rbx+0x330]
 call qword ptr [DeleteCriticalSection]
 mov rcx, qword ptr [rbx+0x320]
 call qword ptr [CloseHandle]
 mov rcx, qword ptr [rbx+0x328]
 mov rbx, qword ptr [rsp+0x30]
 mov rsi, qword ptr [rsp+0x38]
 add rsp, 0x20
 pop rdi
 jmp qword ptr [CloseHandle]
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001fc6c
; --------------------------------------------------------------------------
sub_14001fc6c   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x40]

 local local_1: qword ; [rsp+0x20]
 local local_2: qword ; [rsp+0x28]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x30
 mov rbx, rcx
 jmp 0x14001fcb7

0x14001fc7b:
 mov rcx, qword ptr [local_2]
 call qword ptr [local_1]
 lea rcx, [rbx+0x330]
 call qword ptr [EnterCriticalSection]
 add dword ptr [rbx+0x10c], -1
 jne 0x14001fca7
 mov rcx, qword ptr [rbx+0x328]
 call qword ptr [SetEvent]

0x14001fca7:
 lea rcx, [rbx+0x330]
 call qword ptr [LeaveCriticalSection]
 mov rcx, rbx

0x14001fcb7:
 lea rdx, [local_1]
 call sub_14001fa38
 test al, al
 jne 0x14001fc7b
 mov rbx, qword ptr [arg_1]
 add rsp, 0x30
 pop rdi
 ret 
sub_14001fc6c   endp
 

0x14001fcd0:
 sub rsp, 0x28
 call sub_14001fc6c
 xor eax, eax
 add rsp, 0x28
 ret 

0x14001fce0:
 mov qword ptr [rsp+0x8], rbx
 push rdi
 sub rsp, 0x20
 mov rbx, rcx
 lea rcx, [0x14005a158]
 call qword ptr [EnterCriticalSection]
 test rbx, rbx
 je 0x14001fd51
 mov rdi, qword ptr [0x14005a148]
 cmp rbx, rdi
 jne 0x14001fd41
 mov eax, dword ptr [0x14005a150]
 test eax, eax
 je 0x14001fd3c
 add eax, -1
 mov dword ptr [0x14005a150], eax
 jne 0x14001fd3c
 test rdi, rdi
 je 0x14001fd3c
 mov rcx, rdi
 call 0x14001fbd4
 mov rcx, rdi
 call 0x14002cfa4
 mov rdi, qword ptr [0x14005a148]

0x14001fd3c:
 cmp rbx, rdi
 je 0x14001fd51

0x14001fd41:
 mov rcx, rbx
 call 0x14001fbd4
 mov rcx, rbx
 call 0x14002cfa4

0x14001fd51:
 lea rcx, [0x14005a158]
 mov rbx, qword ptr [rsp+0x30]
 add rsp, 0x20
 pop rdi
 jmp qword ptr [LeaveCriticalSection]
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001fd6c
; --------------------------------------------------------------------------
sub_14001fd6c   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x48]
 arg_3 : qword, ; [rsp+0x18] ; [rsp+0x50]
 arg_4 : qword ; [rsp+0x20] ; [rsp+0x58]

 local local_1: qword ; [rsp+0x20]
 local local_2: qword ; [rsp+0x28]

 mov qword ptr [arg_2], rbx
 mov qword ptr [arg_3], rbp
 mov qword ptr [arg_4], rsi
 push rdi
 sub rsp, 0x30
 xor esi, esi
 mov rbx, rcx
 cmp dword ptr [rcx], esi
 jbe 0x14001fe17
 lea rdi, [rcx+0x8]

0x14001fd91:
 lea rax, [arg_1]
 lea r8, [0x14001fcd0]
 mov r9, rbx
 mov qword ptr [local_2], rax
 and dword ptr [local_1], 0x0
 mov edx, 0x10000
 xor ecx, ecx
 call qword ptr [CreateThread]
 mov rbp, rax
 test rax, rax
 jne 0x14001fded
 lea rdx, [0x14003dff8]
 lea rcx, [0x140050e70]
 call sub_14000b39c
 lea rcx, [0x140050e70]
 call sub_14000b194
 lea edx, [rbp+2]
 lea rcx, [0x140050e70]
 call 0x14000b114

0x14001fded:
 mov qword ptr [rdi], rbp
 inc dword ptr [rbx+0x108]
 mov edx, dword ptr [0x14005a154]
 test edx, edx
 je 0x14001fe09
 mov rcx, qword ptr [rdi]
 call qword ptr [SetThreadPriority]

0x14001fe09:
 inc esi
 add rdi, 8
 cmp esi, dword ptr [rbx]
 jb 0x14001fd91

0x14001fe17:
 mov rbx, qword ptr [arg_2]
 mov rbp, qword ptr [arg_3]
 mov rsi, qword ptr [arg_4]
 add rsp, 0x30
 pop rdi
 ret 
sub_14001fd6c   endp
 
; --------------------------------------------------------------------------
; sub_14001fe2c
; --------------------------------------------------------------------------
sub_14001fe2c   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 cmp dword ptr [rcx+0x108], 0x0
 mov rdi, r8
 mov rsi, rdx
 mov rbx, rcx
 jne 0x14001fe52
 call sub_14001fd6c

0x14001fe52:
 mov eax, dword ptr [rbx+0x310]
 inc eax
 and eax, 0x1f
 cmp eax, dword ptr [rbx+0x314]
 jne 0x14001fe6d
 mov rcx, rbx
 call sub_14001fabc

0x14001fe6d:
 mov eax, dword ptr [rbx+0x310]
 add rax, 0x11
 add rax, rax
 mov qword ptr [rbx+rax*8], rsi
 mov eax, dword ptr [rbx+0x310]
 mov rsi, qword ptr [arg_2]
 add rax, rax
 mov qword ptr [rbx+rax*8+0x118], rdi
 mov eax, dword ptr [rbx+0x310]
 inc eax
 and eax, 0x1f
 mov dword ptr [rbx+0x310], eax
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_14001fe2c   endp
 
; --------------------------------------------------------------------------
; sub_14001feb0
; --------------------------------------------------------------------------
sub_14001feb0   proc \
 arg_1 : dword, ; [rsp+0x8]
 arg_2 : dword ; [rsp+0xc]

 mov eax, dword ptr [rdx]
 mov dword ptr [arg_1], eax
 mov eax, dword ptr [rdx+4]
 mov dword ptr [arg_2], eax
 mov rax, qword ptr [arg_1]
 mov qword ptr [rcx], rax
 mov rax, rcx
 ret 
sub_14001feb0   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001fecc
; --------------------------------------------------------------------------
sub_14001fecc   proc
 mov rax, qword ptr [rcx]
 mov dword ptr [rdx], eax
 shr rax, 0x20
 mov dword ptr [rdx+4], eax
 ret 
sub_14001fecc   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14001fedc
; --------------------------------------------------------------------------
sub_14001fedc   proc
 movabs rax, 0x2b6109100
 add rax, rdx
 imul rax, rax, 0x989680
 mov qword ptr [rcx], rax
 mov rax, rcx
 ret 
sub_14001fedc   endp
 
 int3 

0x14001fef8:
 mov qword ptr [rcx], rdx
 ret 
; --------------------------------------------------------------------------
; sub_14001fefc
; --------------------------------------------------------------------------
sub_14001fefc   proc \
 arg_1 : dword, ; [rsp+0x40]
 arg_2 : dword, ; [rsp+0x44]
 arg_3 : dword, ; [rsp+0x48]
 arg_4 : dword ; [rsp+0x4c]

 local local_1: qword ; [rsp+0x20]

 push rbx
 sub rsp, 0x30
 mov rbx, rcx
 lea rcx, [local_1]
 call qword ptr [GetSystemTime]
 lea rdx, [arg_1]
 lea rcx, [local_1]
 call qword ptr [SystemTimeToFileTime]
 mov eax, dword ptr [arg_2]
 mov r11d, dword ptr [arg_1]
 mov dword ptr [arg_3], r11d
 mov dword ptr [arg_4], eax
 mov rax, qword ptr [arg_3]
 mov qword ptr [rbx], rax
 add rsp, 0x30
 pop rbx
 ret 
sub_14001fefc   endp
 

0x14001ff40:
 jmp 0x140020d18
 int3 
 int3 
 int3 

0x14001ff48:
 mov r9d, ecx
 test cl, 3
 jne 0x14001ff90
 mov r10d, 0x51eb851f
 mov eax, r10d
 imul r9d
 sar edx, 5
 mov r8d, edx
 shr r8d, 0x1f
 add edx, r8d
 imul edx, edx, 0x64
 cmp ecx, edx
 jne 0x14001ff8a
 mov eax, r10d
 imul r9d
 sar edx, 7
 mov eax, edx
 shr eax, 0x1f
 add edx, eax
 imul edx, edx, 0x190
 cmp ecx, edx
 jne 0x14001ff90

0x14001ff8a:
 mov eax, 0x1
 ret 

0x14001ff90:
 xor eax, eax
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_14001ff94
; --------------------------------------------------------------------------
sub_14001ff94   proc \
 arg_1 : dword, ; [rsp+0x70]
 arg_2 : dword, ; [rsp+0x74]
 arg_3 : dword, ; [rsp+0x78]
 arg_4 : dword, ; [rsp+0x7c]
 arg_5 : dword, ; [rsp+0x80]
 arg_6 : dword, ; [rsp+0x84]
 arg_7 : dword, ; [rsp+0x88]
 arg_8 : dword ; [rsp+0x8c]

 local local_1: word ; [rsp+0x20]
 local local_2: word ; [rsp+0x22]
 local local_3: word ; [rsp+0x24]
 local local_4: word ; [rsp+0x26]
 local local_5: word ; [rsp+0x28]
 local local_6: word ; [rsp+0x2a]
 local local_7: word ; [rsp+0x2c]
 local local_8: word ; [rsp+0x2e]
 local local_9[0x10]: byte ; [rsp+0x30]
 local local_10: word ; [rsp+0x40]

 push rbx
 push rsi
 sub rsp, 0x58
 mov rax, qword ptr [rcx]
 mov rbx, rdx
 mov dword ptr [arg_3], eax
 shr rax, 0x20
 mov dword ptr [arg_4], eax
 call sub_140011a38
 lea rcx, [arg_3]
 cmp eax, 0x600
 jae 0x14001ffce
 lea rdx, [arg_1]
 call qword ptr [FileTimeToLocalFileTime]
 jmp 0x140020052

0x14001ffce:
 lea rdx, [local_9]
 call qword ptr [FileTimeToSystemTime]
 lea r8, [local_10]
 lea rdx, [local_9]
 xor ecx, ecx
 call qword ptr [SystemTimeToTzSpecificLocalTime]
 lea rdx, [arg_1]
 lea rcx, [local_10]
 call qword ptr [SystemTimeToFileTime]
 lea rdx, [arg_5]
 lea rcx, [local_9]
 call qword ptr [SystemTimeToFileTime]
 mov r11d, dword ptr [arg_2]
 mov eax, dword ptr [arg_4]
 add r11, rax
 mov eax, dword ptr [arg_6]
 shl rax, 0x20
 shl r11, 0x20
 sub r11, rax
 mov eax, dword ptr [arg_5]
 sub r11, rax
 mov eax, dword ptr [arg_1]
 add r11, rax
 mov eax, dword ptr [arg_3]
 add r11, rax
 mov dword ptr [arg_1], r11d
 sar r11, 0x20
 mov dword ptr [arg_2], r11d

0x140020052:
 lea rdx, [local_1]
 lea rcx, [arg_1]
 call qword ptr [FileTimeToSystemTime]
 movzx eax, word ptr [local_5]
 movzx ecx, word ptr [local_4]
 movzx r9d, word ptr [local_2]
 movzx r11d, word ptr [local_1]
 mov dword ptr [rbx+0xc], eax
 movzx eax, word ptr [local_6]
 mov edx, 0x1
 mov dword ptr [rbx], r11d
 mov dword ptr [rbx+0x10], eax
 movzx eax, word ptr [local_7]
 mov dword ptr [rbx+4], r9d
 mov dword ptr [rbx+0x14], eax
 movzx eax, word ptr [local_3]
 mov dword ptr [rbx+0x8], ecx
 mov dword ptr [rbx+0x1c], eax
 lea eax, [rcx-1]
 mov dword ptr [rbx+0x20], eax
 cmp r9d, edx
 jbe 0x1400200ca
 lea r8, [0x140045348]

0x1400200b4:
 cmp edx, 0xc
 ja 0x1400200ca
 mov eax, dword ptr [r8]
 inc edx
 add r8, 4
 add dword ptr [rbx+0x20], eax
 cmp edx, r9d
 jb 0x1400200b4

0x1400200ca:
 xor esi, esi
 cmp r9d, 2
 jbe 0x1400200e2
 mov ecx, r11d
 call 0x14001ff48
 cmp al, sil
 je 0x1400200e2
 inc dword ptr [rbx+0x20]

0x1400200e2:
 lea rdx, [arg_7]
 lea rcx, [local_1]
 mov word ptr [local_8], si
 call qword ptr [SystemTimeToFileTime]
 mov r11d, dword ptr [arg_8]
 mov eax, dword ptr [arg_2]
 shl rax, 0x20
 shl r11, 0x20
 sub eax, r11d
 sub eax, dword ptr [arg_7]
 add eax, dword ptr [arg_1]
 mov dword ptr [rbx+0x18], eax
 add rsp, 0x58
 pop rsi
 pop rbx
 ret 
sub_14001ff94   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140020128
; --------------------------------------------------------------------------
sub_140020128   proc \
 arg_1 : dword, ; [rsp+0x78]
 arg_2 : dword, ; [rsp+0x7c]
 arg_3 : dword, ; [rsp+0x80]
 arg_4 : dword, ; [rsp+0x84]
 arg_5 : dword, ; [rsp+0x88]
 arg_6 : dword ; [rsp+0x8c]

 local local_1: word ; [rsp+0x20]
 local local_2: word ; [rsp+0x22]
 local local_3: word ; [rsp+0x24]
 local local_4: word ; [rsp+0x26]
 local local_5: word ; [rsp+0x28]
 local local_6: word ; [rsp+0x2a]
 local local_7: word ; [rsp+0x2c]
 local local_8: word ; [rsp+0x2e]
 local local_9[0x10]: byte ; [rsp+0x30]
 local local_10[0x10]: byte ; [rsp+0x40]

 push rbx
 push rsi
 push rdi
 sub rsp, 0x50
 movzx eax, word ptr [rdx]
 mov rbx, rdx
 mov rdi, rcx
 mov word ptr [local_1], ax
 movzx eax, word ptr [rdx+4]
 xor esi, esi
 mov word ptr [local_2], ax
 movzx eax, word ptr [rdx+0x8]
 lea rcx, [local_1]
 mov word ptr [local_4], ax
 movzx eax, word ptr [rdx+0xc]
 mov word ptr [local_8], si
 mov word ptr [local_5], ax
 movzx eax, word ptr [rdx+0x10]
 mov word ptr [local_3], si
 mov word ptr [local_6], ax
 movzx eax, word ptr [rdx+0x14]
 lea rdx, [arg_1]
 mov word ptr [local_7], ax
 call qword ptr [SystemTimeToFileTime]
 cmp eax, esi
 je 0x14002026e
 mov eax, dword ptr [arg_1]
 add eax, dword ptr [rbx+0x18]
 mov dword ptr [arg_1], eax
 cmp eax, dword ptr [rbx+0x18]
 jae 0x1400201a3
 inc dword ptr [arg_2]

0x1400201a3:
 call sub_140011a38
 lea rcx, [arg_1]
 cmp eax, 0x600
 jae 0x1400201d6
 lea rdx, [arg_3]
 call qword ptr [LocalFileTimeToFileTime]
 mov r11d, dword ptr [arg_4]
 mov ecx, dword ptr [arg_3]
 jmp 0x14002025b

0x1400201d6:
 lea rdx, [local_9]
 call qword ptr [FileTimeToSystemTime]
 lea r8, [local_10]
 lea rdx, [local_9]
 xor ecx, ecx
 call qword ptr [TzSpecificLocalTimeToSystemTime]
 lea rdx, [arg_3]
 lea rcx, [local_10]
 call qword ptr [SystemTimeToFileTime]
 lea rdx, [arg_5]
 lea rcx, [local_9]
 call qword ptr [SystemTimeToFileTime]
 mov eax, dword ptr [arg_2]
 mov ecx, dword ptr [arg_4]
 add rcx, rax
 mov eax, dword ptr [arg_6]
 shl rax, 0x20
 shl rcx, 0x20
 sub rcx, rax
 mov eax, dword ptr [arg_5]
 sub rcx, rax
 mov eax, dword ptr [arg_3]
 add rcx, rax
 mov eax, dword ptr [arg_1]
 add rcx, rax
 mov r11, rcx
 sar r11, 0x20

0x14002025b:
 mov dword ptr [arg_1], ecx
 mov dword ptr [arg_2], r11d
 mov rax, qword ptr [arg_1]
 mov qword ptr [rdi], rax
 jmp 0x140020271

0x14002026e:
 mov qword ptr [rdi], rsi

0x140020271:
 add rsp, 0x50
 pop rdi
 pop rsi
 pop rbx
 ret 
sub_140020128   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14002027c
; --------------------------------------------------------------------------
sub_14002027c   proc
 local local_1: dword ; [rsp+0x20]
 local local_2: dword ; [rsp+0x24]
 local local_3: dword ; [rsp+0x28]
 local local_4: dword ; [rsp+0x2c]
 local local_5: dword ; [rsp+0x30]
 local local_6: dword ; [rsp+0x34]
 local local_7: dword ; [rsp+0x38]

 sub rsp, 0x58
 and dword ptr [local_7], 0x0
 mov eax, edx
 and eax, 0x1f
 add eax, eax
 mov dword ptr [local_6], eax
 mov eax, edx
 shr eax, 5
 and eax, 0x3f
 mov dword ptr [local_5], eax
 mov eax, edx
 shr eax, 0xb
 and eax, 0x1f
 mov dword ptr [local_4], eax
 mov eax, edx
 shr eax, 0x10
 and eax, 0x1f
 mov dword ptr [local_3], eax
 mov eax, edx
 shr edx, 0x19
 add edx, 0x7bc
 shr eax, 0x15
 mov dword ptr [local_1], edx
 and eax, 0xf
 lea rdx, [local_1]
 mov dword ptr [local_2], eax
 call sub_140020128
 add rsp, 0x58
 ret 
sub_14002027c   endp
 

0x1400202dc:
 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 push rdi
 sub rsp, 0x80
 xor ebp, ebp
 mov dil, r9b
 mov rsi, r8
 mov rbx, rdx
 cmp qword ptr [rcx], rbp
 je 0x140020397
 lea rdx, [rax-0x38]
 call sub_14001ff94
 mov r9d, dword ptr [rsp+0x50]
 mov rcx, rbx
 cmp dil, bpl
 je 0x140020366
 mov eax, 0xd1b71759
 lea r8, [0x14003e160]
 mul dword ptr [rsp+0x68]
 mov eax, dword ptr [rsp+0x64]
 shr edx, 0xd
 mov dword ptr [rsp+0x48], edx
 mov dword ptr [rsp+0x40], eax
 mov eax, dword ptr [rsp+0x60]
 mov dword ptr [rsp+0x38], eax
 mov eax, dword ptr [rsp+0x5c]
 mov rdx, rsi
 mov dword ptr [rsp+0x30], eax
 mov eax, dword ptr [rsp+0x58]
 mov dword ptr [rsp+0x28], eax
 mov eax, dword ptr [rsp+0x54]
 mov dword ptr [rsp+0x20], eax
 call sub_140019504
 jmp 0x1400203b1

0x140020366:
 mov eax, dword ptr [rsp+0x60]
 lea r8, [0x14003e128]
 mov rdx, rsi
 mov dword ptr [rsp+0x38], eax
 mov eax, dword ptr [rsp+0x5c]
 mov dword ptr [rsp+0x30], eax
 mov eax, dword ptr [rsp+0x58]
 mov dword ptr [rsp+0x28], eax
 mov eax, dword ptr [rsp+0x54]
 mov dword ptr [rsp+0x20], eax
 call sub_140019504
 jmp 0x1400203b1

0x140020397:
 lea rcx, [0x14003e100]
 sub rbx, rcx

0x1400203a1:
 movzx eax, word ptr [rcx]
 mov word ptr [rbx+rcx], ax
 add rcx, 2
 cmp ax, bp
 jne 0x1400203a1

0x1400203b1:
 lea r11, [rsp+0x80]
 mov rbx, qword ptr [r11+0x10]
 mov rbp, qword ptr [r11+0x18]
 mov rsi, qword ptr [r11+0x20]
 mov rsp, r11
 pop rdi
 ret 
 int3 
 int3 

0x1400203cc:
 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x60
 mov rdi, rdx
 xor edx, edx
 mov rsi, rcx
 lea r8d, [rdx+0x18]
 lea rcx, [rax-0x48]
 call 0x14002d190
 xor ebp, ebp
 lea r12d, [rbp+1]
 mov ebx, ebp
 jmp 0x140020443

0x140020404:
 movzx ecx, ax
 call sub_14001ee50
 cmp al, bpl
 je 0x14002043f
 cmp ebx, 4
 jae 0x14002041a
 mov eax, ebp
 jmp 0x140020427

0x14002041a:
 lea eax, [rbx-4]
 shr eax, 0x1
 add eax, r12d
 cmp eax, 6
 jae 0x14002043c

0x140020427:
 movsxd rdx, eax
 mov eax, dword ptr [rsp+rdx*4+0x20]
 lea ecx, [rax+rax*4]
 movzx eax, word ptr [rdi]
 lea ecx, [rax+rcx*2-0x30]
 mov dword ptr [rsp+rdx*4+0x20], ecx

0x14002043c:
 add ebx, r12d

0x14002043f:
 add rdi, 2

0x140020443:
 movzx eax, word ptr [rdi]
 cmp ax, bp
 jne 0x140020404
 mov eax, dword ptr [rsp+0x34]
 lea rdx, [rsp+0x38]
 mov rcx, rsi
 mov dword ptr [rsp+0x4c], eax
 mov eax, dword ptr [rsp+0x30]
 mov dword ptr [rsp+0x50], ebp
 mov dword ptr [rsp+0x48], eax
 mov eax, dword ptr [rsp+0x2c]
 mov dword ptr [rsp+0x44], eax
 mov eax, dword ptr [rsp+0x28]
 cmp eax, ebp
 cmove eax, r12d
 mov dword ptr [rsp+0x40], eax
 mov eax, dword ptr [rsp+0x24]
 cmp eax, ebp
 cmove eax, r12d
 mov dword ptr [rsp+0x3c], eax
 mov eax, dword ptr [rsp+0x20]
 mov dword ptr [rsp+0x38], eax
 call sub_140020128
 lea r11, [rsp+0x60]
 mov rbx, qword ptr [r11+0x10]
 mov rbp, qword ptr [r11+0x18]
 mov rsi, qword ptr [r11+0x20]
 mov rdi, qword ptr [r11+0x28]
 mov rsp, r11
 pop r12
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_1400204b4
; --------------------------------------------------------------------------
sub_1400204b4   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x48]
 arg_3 : qword, ; [rsp+0x50]
 arg_4 : qword ; [rsp+0x58]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 push r13
 push r14
 sub rsp, 0x20
 xor r14d, r14d
 mov r12, rdx
 mov rsi, rcx
 mov edi, r14d
 mov ebx, r14d
 mov rbp, r14
 cmp word ptr [rdx], r14w
 je 0x140020549
 mov rax, rdx

0x1400204ec:
 movzx r13d, word ptr [rax]
 mov ecx, r13d
 call sub_14001ee50
 cmp al, r14b
 je 0x140020507
 lea eax, [rbx+rbx*4]
 lea ebx, [r13+rax*2-0x30]
 jmp 0x14002053c

0x140020507:
 mov cl, r13b
 call sub_14001ee14
 mov r11b, al
 cmp al, 0x44
 je 0x140020531
 cmp al, 0x48
 je 0x140020529
 cmp al, 0x4d
 je 0x140020524
 cmp al, 0x53
 jne 0x140020539
 jmp 0x140020537

0x140020524:
 imul ebx, ebx, 0x3c
 jmp 0x140020537

0x140020529:
 imul ebx, ebx, 0xe10
 jmp 0x140020537

0x140020531:
 imul ebx, ebx, 0x15180

0x140020537:
 add edi, ebx

0x140020539:
 mov ebx, r14d

0x14002053c:
 inc rbp
 lea rax, [r12+rbp*2]
 cmp word ptr [rax], r14w
 jne 0x1400204ec

0x140020549:
 mov rcx, rsi
 call sub_14001fefc
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov r11d, edi
 mov rdi, qword ptr [arg_4]
 imul r11, r11, 0x989680
 sub qword ptr [rsi], r11
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop r14
 pop r13
 pop r12
 ret 
sub_1400204b4   endp
 
 int3 
 int3 
 int3 

0x140020580:
 mov byte ptr [0x14005a180], cl
 ret 
 int3 

0x140020588:
 push rbx
 sub rsp, 0x20
 neg cl
 mov rbx, rdx
 sbb ecx, ecx
 and ecx, 2
 add ecx, 0xd52
 call sub_140019e20
 mov rdx, rbx
 mov rcx, rax
 add rsp, 0x20
 pop rbx
 jmp sub_140008e10
 int3 

0x1400205b4:
 mov al, 0x1
 ret 
 int3 

0x1400205b8:
 sub rsp, 0x28
 mov rdx, r9
 mov rcx, r8
 call 0x14001ed44
 lea rcx, [0x14003e1a8]
 mov edx, eax
 add rsp, 0x28
 jmp sub_140008e10
 int3 
 int3 
 int3 

0x1400205dc:
 sub rsp, 0x28
 mov rcx, rdx
 mov rdx, r8
 call 0x14001ed44
 lea rcx, [0x14003e1a8]
 mov edx, eax
 add rsp, 0x28
 jmp sub_140008e10
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140020600
; --------------------------------------------------------------------------
sub_140020600   proc
 local local_1: qword ; [rsp+0x20]

 push rbx
 sub rsp, 0x30
 mov edx, dword ptr [rcx+0x68]
 mov rbx, rcx
 cmp edx, 0x37
 jg 0x1400208ff
 je 0x1400208f5
 cmp edx, 0x14
 jg 0x1400207ca
 je 0x1400207c0
 cmp edx, 0xb
 jg 0x140020725
 je 0x14002071e
 cmp edx, 6
 jg 0x1400206d6
 je 0x1400206bc
 test edx, edx
 js 0x140020bd3
 mov eax, 0x1
 cmp edx, eax
 jle 0x1400206a6
 cmp edx, 3
 je 0x140020690
 cmp edx, 4
 je 0x140020689
 cmp edx, 5
 jne 0x140020bd3
 mov ecx, 0xe28
 call sub_140019e20
 mov r9, qword ptr [rbx]

0x140020675:
 mov r8, qword ptr [rbx+0x8]
 mov rcx, qword ptr [rbx]

0x14002067c:
 mov rdx, rax
 call sub_140009150
 jmp 0x140020bd3

0x140020689:
 mov ecx, 0xd66
 jmp 0x140020695

0x140020690:
 mov ecx, 0xd50

0x140020695:
 call sub_140019e20
 mov r8, qword ptr [rbx+0x8]

0x14002069e:
 mov rcx, qword ptr [rbx]
 mov rdx, rax
 jmp 0x1400206b2

0x1400206a6:
 mov r8, qword ptr [rcx]
 lea rdx, [0x14003d610]

0x1400206b0:
 xor ecx, ecx

0x1400206b2:
 call sub_140009150
 jmp 0x140020bd3

0x1400206bc:
 mov ecx, 0xe94

0x1400206c1:
 call sub_140019e20
 mov rcx, qword ptr [rbx]

0x1400206c9:
 mov rdx, rax
 call sub_140009150
 jmp 0x140020bd3

0x1400206d6:
 sub edx, 7
 je 0x140020710
 mov eax, 0x1
 sub edx, eax
 je 0x140020709
 sub edx, eax
 je 0x140020702
 cmp edx, eax
 jne 0x140020bd3
 mov ecx, 0xce8

0x1400206f5:
 call sub_140019e20
 mov r8, qword ptr [rbx]
 mov rdx, rax
 jmp 0x1400206b0

0x140020702:
 mov ecx, 0xd10
 jmp 0x140020695

0x140020709:
 mov ecx, 0xd12
 jmp 0x140020695

0x140020710:
 mov ecx, 0xcea

0x140020715:
 call sub_140019e20
 xor ecx, ecx
 jmp 0x1400206c9

0x14002071e:
 mov ecx, 0xce6
 jmp 0x1400206f5

0x140020725:
 sub edx, 0xc
 je 0x1400207b6
 mov eax, 0x1
 sub edx, eax
 je 0x1400207ac
 sub edx, eax
 je 0x1400207a2
 sub edx, eax
 je 0x14002078f
 sub edx, eax
 je 0x140020785
 sub edx, eax
 je 0x14002077e
 sub edx, eax
 je 0x14002075d
 cmp edx, eax
 jne 0x140020bd3
 mov ecx, 0xd62
 jmp 0x140020695

0x14002075d:
 mov ecx, 0xeac
 call sub_140019e20
 mov rcx, qword ptr [rbx]
 mov rdx, rax
 call sub_140009150

0x140020772:
 lea rcx, [0x14003d078]
 jmp 0x140020bce

0x14002077e:
 mov ecx, 0xeaa
 jmp 0x140020794

0x140020785:
 mov ecx, 0xe70
 jmp 0x140020695

0x14002078f:
 mov ecx, 0xcf0

0x140020794:
 call sub_140019e20
 mov r9, qword ptr [rbx+0x10]
 jmp 0x140020675

0x1400207a2:
 mov ecx, 0xe86
 jmp 0x140020695

0x1400207ac:
 mov ecx, 0xce2
 jmp 0x140020695

0x1400207b6:
 mov ecx, 0xce4
 jmp 0x140020695

0x1400207c0:
 mov ecx, 0xeb0
 jmp 0x140020695

0x1400207ca:
 cmp edx, 0x1e
 jg 0x14002086b
 je 0x140020861
 sub edx, 0x15
 je 0x140020857
 mov eax, 0x1
 sub edx, eax
 je 0x14002084d
 sub edx, eax
 je 0x140020843
 sub edx, eax
 je 0x140020839
 sub edx, eax
 je 0x14002082f
 sub edx, eax
 je 0x140020825
 sub edx, eax
 je 0x14002081b
 sub edx, eax
 je 0x140020811
 cmp edx, eax
 jne 0x140020bd3
 mov ecx, 0xe54
 jmp 0x140020695

0x140020811:
 mov ecx, 0xe52
 jmp 0x1400206c1

0x14002081b:
 mov ecx, 0xe50
 jmp 0x1400206c1

0x140020825:
 mov ecx, 0xd78
 jmp 0x140020695

0x14002082f:
 mov ecx, 0xd76
 jmp 0x1400206c1

0x140020839:
 mov ecx, 0xd74
 jmp 0x1400206c1

0x140020843:
 mov ecx, 0xcec
 jmp 0x1400206c1

0x14002084d:
 mov ecx, 0xeb4
 jmp 0x140020715

0x140020857:
 mov ecx, 0xeb2
 jmp 0x1400206f5

0x140020861:
 mov ecx, 0xe9c
 jmp 0x1400206c1

0x14002086b:
 sub edx, 0x1f
 je 0x1400208eb
 mov eax, 0x1
 sub edx, eax
 je 0x1400208e1
 sub edx, eax
 je 0x1400208d7
 sub edx, eax
 je 0x1400208cd
 sub edx, 0xf
 je 0x1400208b5
 sub edx, eax
 je 0x1400208ab
 sub edx, 2
 je 0x1400208a1
 cmp edx, eax
 jne 0x140020bd3
 mov ecx, 0xe64
 jmp 0x140020bc6

0x1400208a1:
 mov ecx, 0xe66
 jmp 0x140020bc6

0x1400208ab:
 mov ecx, 0xe62
 jmp 0x140020bc6

0x1400208b5:
 mov ecx, 0xe5c
 call sub_140019e20
 mov r9, qword ptr [rbx+0x8]
 mov r8, qword ptr [rbx]
 xor ecx, ecx
 jmp 0x14002067c

0x1400208cd:
 mov ecx, 0xe90
 jmp 0x1400206c1

0x1400208d7:
 mov ecx, 0xe6a
 jmp 0x140020794

0x1400208e1:
 mov ecx, 0xe92
 jmp 0x140020695

0x1400208eb:
 mov ecx, 0xd14
 jmp 0x140020695

0x1400208f5:
 mov ecx, 0xe00
 jmp 0x1400206c1

0x1400208ff:
 cmp edx, 0x57
 jg 0x140020a78
 je 0x140020a6e
 cmp edx, 0x4d
 jg 0x1400209b9
 je 0x1400209af
 sub edx, 0x38
 je 0x1400209a8
 mov eax, 0x1
 sub edx, eax
 je 0x14002099e
 sub edx, eax
 je 0x140020994
 sub edx, eax
 je 0x14002098a
 sub edx, 8
 je 0x140020980
 sub edx, eax
 je 0x14002096e
 sub edx, eax
 je 0x140020964
 sub edx, eax
 je 0x14002095a
 cmp edx, eax
 jne 0x140020bd3
 mov ecx, 0xe6c
 jmp 0x1400206f5

0x14002095a:
 mov ecx, 0xea8
 jmp 0x140020695

0x140020964:
 mov ecx, 0xe4c
 jmp 0x140020695

0x14002096e:
 mov ecx, 0xcf2

0x140020973:
 call sub_140019e20
 mov r8, qword ptr [rbx]
 jmp 0x14002069e

0x140020980:
 mov ecx, 0xd68
 jmp 0x140020bc6

0x14002098a:
 mov ecx, 0xd16
 jmp 0x1400206c1

0x140020994:
 mov ecx, 0xe38
 jmp 0x140020695

0x14002099e:
 mov ecx, 0xd88
 jmp 0x1400206c1

0x1400209a8:
 mov ecx, 0xcd8
 jmp 0x140020973

0x1400209af:
 mov ecx, 0xe30
 jmp 0x140020695

0x1400209b9:
 sub edx, 0x4e
 je 0x140020a64
 mov eax, 0x1
 sub edx, eax
 je 0x140020a5a
 sub edx, eax
 je 0x140020a50
 sub edx, eax
 je 0x140020a46
 sub edx, eax
 je 0x140020a28
 sub edx, eax
 je 0x140020a00
 sub edx, eax
 je 0x1400209f6
 cmp edx, 2
 jne 0x140020bd3
 mov ecx, 0xe1a
 jmp 0x140020695

0x1400209f6:
 mov ecx, 0xe58
 jmp 0x1400206f5

0x140020a00:
 mov rax, qword ptr [rcx+0x10]
 mov r9, qword ptr [rcx+0x8]
 mov r8, qword ptr [rcx]
 lea rdx, [0x14003e1e0]
 xor ecx, ecx
 mov qword ptr [local_1], rax
 call sub_140009150
 mov ecx, 0xd9a
 jmp 0x140020715

0x140020a28:
 mov ecx, 0xea2
 call sub_140019e20
 mov r8d, dword ptr [rbx+0x40]
 mov rdx, qword ptr [rbx]
 mov rcx, rax
 call sub_140008e10
 jmp 0x140020bd3

0x140020a46:
 mov ecx, 0xe36
 jmp 0x140020695

0x140020a50:
 mov ecx, 0xe34
 jmp 0x140020695

0x140020a5a:
 mov ecx, 0xe2e
 jmp 0x140020695

0x140020a64:
 mov ecx, 0xe32
 jmp 0x140020695

0x140020a6e:
 mov ecx, 0xe16
 jmp 0x140020695

0x140020a78:
 cmp edx, 0x6d
 jg 0x140020b30
 je 0x140020b12
 sub edx, 0x58
 je 0x140020b08
 mov eax, 0x1
 sub edx, eax
 je 0x140020afe
 sub edx, eax
 je 0x140020af4
 sub edx, eax
 je 0x140020aea
 sub edx, 2
 je 0x140020ad6
 sub edx, 0xd
 je 0x140020acc
 sub edx, eax
 je 0x140020aba
 cmp edx, eax
 jne 0x140020bd3
 mov ecx, 0xe68
 jmp 0x140020abf

0x140020aba:
 mov ecx, 0xcd8

0x140020abf:
 call sub_140019e20
 mov rdx, qword ptr [rbx]
 mov rcx, rax
 jmp 0x140020ae0

0x140020acc:
 mov ecx, 0xe4a
 jmp 0x1400206c1

0x140020ad6:
 mov rdx, qword ptr [rcx]
 lea rcx, [0x14003e1d8]

0x140020ae0:
 call sub_140008e10
 jmp 0x140020bd3

0x140020aea:
 mov ecx, 0xe20
 jmp 0x1400206f5

0x140020af4:
 mov ecx, 0xe1e
 jmp 0x1400206f5

0x140020afe:
 mov ecx, 0xe1c
 jmp 0x140020695

0x140020b08:
 mov ecx, 0xe18
 jmp 0x140020695

0x140020b12:
 mov ecx, 0xe6a
 call sub_140019e20
 mov r8, qword ptr [rbx+0x8]
 mov rdx, qword ptr [rbx]
 mov rcx, rax
 call sub_140008e10
 jmp 0x140020bd3

0x140020b30:
 sub edx, 0x6e
 je 0x140020bc1
 mov eax, 0x1
 sub edx, eax
 je 0x140020baa
 sub edx, eax
 je 0x140020ba3
 sub edx, eax
 je 0x140020b99
 sub edx, eax
 je 0x1400208a1
 sub edx, eax
 je 0x140020b8f
 sub edx, eax
 je 0x140020b78
 cmp edx, 0x13
 jne 0x140020bd3
 mov ecx, 0xe9e
 call sub_140019e20
 lea rcx, [0x14003e1c0]
 mov rdx, rax
 jmp 0x140020ae0

0x140020b78:
 mov ecx, 0xe6e
 call sub_140019e20
 mov rcx, rax
 call sub_140008e10
 jmp 0x140020772

0x140020b8f:
 mov ecx, 0xd50
 jmp 0x140020abf

0x140020b99:
 mov ecx, 0xcf2
 jmp 0x140020abf

0x140020ba3:
 mov ecx, 0xe5e
 jmp 0x140020baf

0x140020baa:
 mov ecx, 0xe60

0x140020baf:
 call sub_140019e20
 mov edx, dword ptr [rbx+0x40]
 mov rcx, rax
 call sub_140008e10
 jmp 0x140020bd3

0x140020bc1:
 mov ecx, 0xe8c

0x140020bc6:
 call sub_140019e20
 mov rcx, rax

0x140020bce:
 call sub_140008e10

0x140020bd3:
 add rsp, 0x30
 pop rbx
 ret 
sub_140020600   endp
 
 int3 
 int3 
 int3 

0x140020bdc:
 jmp 0x140008ed0
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140020be4
; --------------------------------------------------------------------------
sub_140020be4   proc
 sub rsp, 0x28
 cmp byte ptr [0x14005a180], 0x0
 je 0x140020c2b
 call 0x14001f5d8
 mov r11d, eax
 mov eax, 0x10624dd3
 sub r11d, dword ptr [0x140045378]
 imul r11d
 sar edx, 6
 mov eax, edx
 shr eax, 0x1f
 add edx, eax
 cmp edx, 5
 jle 0x140020c2b
 or ecx, 0xffffffff
 call qword ptr [MessageBeep]
 call 0x14001f5d8
 mov dword ptr [0x140045378], eax

0x140020c2b:
 add rsp, 0x28
 ret 
sub_140020be4   endp
 
; --------------------------------------------------------------------------
; sub_140020c30
; --------------------------------------------------------------------------
sub_140020c30   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 mov ecx, 0xcfc
 call sub_140019e20
 mov rdx, rbx
 mov rcx, rax
 call sub_140008e80
 mov ecx, 0xbc2
 call sub_140019e20
 mov rcx, rax
 call 0x14000937c
 cmp eax, 2
 setne al
 add rsp, 0x20
 pop rbx
 ret 
sub_140020c30   endp
 
; --------------------------------------------------------------------------
; sub_140020c6c
; --------------------------------------------------------------------------
sub_140020c6c   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 lea rcx, [0x14003c730]
 call sub_140008e10
 mov ecx, 0xce4
 call sub_140019e20
 mov r8, rbx
 xor ecx, ecx
 mov rdx, rax
 call sub_140009150
 mov ecx, 0xbc4
 call sub_140019e20
 mov rcx, rax
 call 0x14000937c
 cmp eax, 0x1
 sete al
 add rsp, 0x20
 pop rbx
 ret 
sub_140020c6c   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140020cb8
; --------------------------------------------------------------------------
sub_140020cb8   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rdi, rcx
 lea rcx, [0x14003c730]
 mov bl, dl
 call sub_140008e10
 neg bl
 sbb ecx, ecx
 and ecx, 0x1ac
 add ecx, 0xce2
 call sub_140019e20
 mov r8, rdi
 xor ecx, ecx
 mov rdx, rax
 call sub_140009150
 mov ecx, 0xbc4
 call sub_140019e20
 mov rcx, rax
 call 0x14000937c
 mov rbx, qword ptr [arg_1]
 cmp eax, 0x1
 sete al
 add rsp, 0x20
 pop rdi
 ret 
sub_140020cb8   endp
 

0x140020d18:
 movsxd rax, ecx
 lea rcx, [0x140045380]
 mov ecx, dword ptr [rcx+rax*4]
 jmp sub_140019e20
 int3 
 int3 

0x140020d2c:
 push rbx
 push rbp
 push rsi
 push rdi
 mov eax, 0x11c8
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x11b0], rax
 mov rsi, rcx
 mov rdi, r8
 mov rbp, rdx
 lea rcx, [rsp+0x30]
 xor edx, edx
 mov r8d, 0x1048
 mov rbx, r9
 call 0x14002d190
 lea rdx, [rsp+0x30]
 xor r8d, r8d
 mov rcx, rsi
 call sub_140011338
 mov rcx, qword ptr [rsp+0x1030]
 lea rdx, [rsp+0x1080]
 mov r8d, 0x14
 call 0x14001f040
 xor r9d, r9d
 lea rdx, [rsp+0x1140]
 lea r8d, [r9+0x32]
 lea rcx, [rsp+0x1040]
 call 0x1400202dc
 movabs r11, 0x7fffffff7fffffff
 cmp rdi, r11
 je 0x140020e37
 test rbx, rbx
 je 0x140020e37
 lea rdx, [rsp+0x10a8]
 mov r8d, 0x14
 mov rcx, rdi
 call 0x14001f040
 xor r9d, r9d
 lea rdx, [rsp+0x10d0]
 lea r8d, [r9+0x32]
 mov rcx, rbx
 call 0x1400202dc
 mov ecx, 0xd6e
 call sub_140019e20
 lea r9, [rsp+0x1140]
 lea r8, [rsp+0x1080]
 mov rcx, rax
 lea rax, [rsp+0x10d0]
 mov rdx, rsi
 mov qword ptr [rsp+0x28], rax
 lea rax, [rsp+0x10a8]
 mov qword ptr [rsp+0x20], rax
 call sub_140008e80
 jmp 0x140020e58

0x140020e37:
 lea rcx, [0x14003c730]
 call sub_140008e80
 mov ecx, 0xd70
 call sub_140019e20
 mov rdx, rsi
 mov rcx, rax
 call sub_140008e80

0x140020e58:
 mov bl, byte ptr [rsp+0x1210]
 not bl
 and bl, 0x1
 mov al, bl
 neg al
 sbb edi, edi
 and edi, 2

0x140020e6d:
 lea ecx, [rdi+0xbbe]
 call sub_140019e20
 mov rcx, rax
 call 0x14000937c
 test eax, eax
 je 0x140020e6d
 mov r8d, eax
 sub r8d, 0x1
 je 0x140020eec
 sub r8d, 0x1
 je 0x140020ee5
 sub r8d, 0x1
 je 0x140020ede
 cmp r8d, 0x1
 je 0x140020ed7
 test bl, bl
 je 0x140020ed0
 cmp eax, 5
 jne 0x140020ed0
 mov ecx, 0xd72
 call sub_140019e20
 mov rcx, rax
 call sub_140008e10
 mov rdx, rbp
 mov rcx, rsi
 call 0x140009208
 neg al
 sbb eax, eax
 and eax, 3
 inc eax
 jmp 0x140020eee

0x140020ed0:
 mov eax, 6
 jmp 0x140020eee

0x140020ed7:
 mov eax, 3
 jmp 0x140020eee

0x140020ede:
 mov eax, 2
 jmp 0x140020eee

0x140020ee5:
 mov eax, 0x1
 jmp 0x140020eee

0x140020eec:
 xor eax, eax

0x140020eee:
 mov rcx, qword ptr [rsp+0x11b0]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x11c8
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
 int3 
 int3 

0x140020f0c:
 push rbx
 push rbp
 push rsi
 push rdi
 mov eax, 0x1058
 call sub_14003a300
 sub rsp, rax
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1040], rax
 mov rax, qword ptr [rsp+0x10a0]
 mov rsi, r9
 mov qword ptr [rsp+0x38], r9
 mov qword ptr [rsp+0x30], rax
 mov eax, dword ptr [rcx+0x613c]
 mov rbp, r8
 mov rbx, rdx
 mov rdi, rcx
 cmp eax, 2
 jne 0x140020f63

0x140020f59:
 mov eax, 0x1
 jmp 0x140021099

0x140020f63:
 cmp eax, 3
 jne 0x140020f7b
 mov rdx, r8
 mov rcx, rbx
 call 0x14000ee0c
 test al, al
 jne 0x140021097

0x140020f7b:
 cmp byte ptr [rdi+0x619c], 0x0
 jne 0x14002108f
 cmp dword ptr [rdi+0x613c], 0x1
 je 0x14002108f
 lea rcx, [rsp+0x40]
 mov r8d, 0x800
 mov rdx, rbx
 call sub_14001efc0
 mov eax, dword ptr [rsp+0x10a8]
 mov r9, qword ptr [rsp+0x30]
 lea rcx, [rsp+0x40]
 mov r8, rsi
 mov edx, 0x800
 mov dword ptr [rsp+0x20], eax
 call 0x140020d2c
 mov esi, eax
 test eax, eax
 je 0x140020fd5
 cmp eax, 2
 jne 0x140020ff1

0x140020fd5:
 mov rcx, rbx
 call 0x140010508
 cmp esi, 2
 jne 0x140020ff1
 mov dword ptr [rdi+0x613c], 0x1
 jmp 0x140021097

0x140020ff1:
 cmp esi, 3
 jne 0x140021005
 mov dword ptr [rdi+0x613c], 2
 jmp 0x140020f59

0x140021005:
 cmp esi, 4
 jne 0x14002106b
 lea rcx, [rsp+0x40]
 call 0x140013c20
 lea rcx, [rsp+0x40]
 mov r8, rbp
 cmp rax, rcx
 mov rcx, rbx
 lea rdx, [rsp+0x40]
 jne 0x140021030
 call 0x140013e08
 jmp 0x140021035

0x140021030:
 call sub_14001efc0

0x140021035:
 mov rcx, rbx
 call sub_1400104f4
 test al, al
 je 0x140021097
 mov eax, dword ptr [rsp+0x10a8]
 mov r9, qword ptr [rsp+0x38]
 mov r8, rbp
 mov dword ptr [rsp+0x28], eax
 mov rax, qword ptr [rsp+0x30]
 mov rdx, rbx
 mov rcx, rdi
 mov qword ptr [rsp+0x20], rax
 call 0x140020f0c
 jmp 0x140021099

0x14002106b:
 cmp esi, 5
 jne 0x14002108b
 mov rdx, rbp
 mov rcx, rbx
 call 0x14000ee0c
 test al, al
 je 0x14002108b
 mov dword ptr [rdi+0x613c], 3
 jmp 0x140021097

0x14002108b:
 mov eax, esi
 jmp 0x140021099

0x14002108f:
 mov rcx, rbx
 call 0x140010508

0x140021097:
 xor eax, eax

0x140021099:
 mov rcx, qword ptr [rsp+0x1040]
 xor rcx, rsp
 call 0x14002d160
 add rsp, 0x1058
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400210b8
; --------------------------------------------------------------------------
sub_1400210b8   proc \
 arg_1 : qword ; [rsp+0x50]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 push rdi
 sub rsp, 0x40
 and qword ptr [rax-0x10], 0x0
 and qword ptr [rax-0x18], 0x0
 mov rbx, r8
 mov dword ptr [rax-0x20], ebx
 mov rdi, rdx
 mov byte ptr [rdx], 0x0
 mov qword ptr [rax-0x28], rdx
 mov r8, rcx
 or r9d, 0xffffffff
 xor edx, edx
 xor ecx, ecx
 call qword ptr [WideCharToMultiByte]
 neg eax
 sbb al, al
 and al, 0x1
 test rbx, rbx
 je 0x1400210ff
 mov byte ptr [rdi+rbx-1], 0x0

0x1400210ff:
 mov rbx, qword ptr [arg_1]
 add rsp, 0x40
 pop rdi
 ret 
sub_1400210b8   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14002110c
; --------------------------------------------------------------------------
sub_14002110c   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rsi
 push rdi
 sub rsp, 0x30
 mov rbx, r8
 mov rdi, rdx
 mov r8, rcx
 mov dword ptr [rax-0x10], ebx
 mov qword ptr [rax-0x18], rdx
 xor esi, esi
 mov word ptr [rdx], si
 or r9d, 0xffffffff
 xor ecx, ecx
 xor edx, edx
 call qword ptr [MultiByteToWideChar]
 neg eax
 sbb al, al
 and al, 0x1
 cmp rbx, rsi
 jbe 0x14002114f
 mov word ptr [rdi+rbx*2-2], si

0x14002114f:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x30
 pop rdi
 ret 
sub_14002110c   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140021160
; --------------------------------------------------------------------------
sub_140021160   proc
 xor r10d, r10d
 mov r9, r10
 cmp r8, r10
 jbe 0x14002118b

0x14002116b:
 mov al, byte ptr [rcx]
 mov byte ptr [rdx+r9*2], al
 mov al, byte ptr [rcx+1]
 mov byte ptr [rdx+r9*2+1], al
 cmp word ptr [rcx], r10w
 je 0x14002118b
 inc r9
 add rcx, 2
 cmp r9, r8
 jb 0x14002116b

0x14002118b:
 mov rax, rdx
 ret 
sub_140021160   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140021190
; --------------------------------------------------------------------------
sub_140021190   proc
 xor r9d, r9d
 mov r10, rdx
 cmp r8, r9
 jbe 0x1400211c7
 mov r11, rdx
 sub r11, rcx

0x1400211a1:
 movzx edx, byte ptr [rcx+1]
 mov eax, 0x100
 imul dx, ax
 movzx eax, byte ptr [rcx]
 add dx, ax
 mov word ptr [r11+rcx], dx
 je 0x1400211c7
 inc r9
 add rcx, 2
 cmp r9, r8
 jb 0x1400211a1

0x1400211c7:
 mov rax, r10
 ret 
sub_140021190   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_1400211cc
; --------------------------------------------------------------------------
sub_1400211cc   proc
 movzx eax, word ptr [rcx]
 mov r10, rcx
 lea r9d, [r8-1]
 test ax, ax
 je 0x1400212ba
 mov r8d, 0x1
 mov r11b, 0x3f

0x1400211e8:
 sub r9d, r8d
 js 0x1400212ba
 movzx ecx, ax
 add r10, 2
 cmp ecx, 0x80
 jb 0x1400212a8
 cmp ecx, 0x800
 jae 0x14002121d
 sub r9d, r8d
 js 0x14002121d
 mov eax, ecx
 shr eax, 6
 or al, 0xc0
 jmp 0x14002129d

0x14002121d:
 lea eax, [rcx-0xd800]
 cmp eax, 0x3ff
 ja 0x140021253
 mov eax, 0xdc00
 cmp word ptr [r10], ax
 jb 0x140021253
 mov eax, 0xdfff
 cmp word ptr [r10], ax
 ja 0x140021253
 movzx eax, word ptr [r10]
 add ecx, 0xffff2809
 shl ecx, 0xa
 add ecx, eax
 add r10, 2

0x140021253:
 cmp ecx, 0x10000
 jae 0x14002126a
 sub r9d, 2
 js 0x14002126a
 mov eax, ecx
 shr eax, 0xc
 or al, 0xe0
 jmp 0x14002128e

0x14002126a:
 cmp ecx, 0x200000
 jae 0x1400212ad
 sub r9d, 3
 js 0x1400212ad
 mov eax, ecx
 shr eax, 0x12
 or al, 0xf0
 mov byte ptr [rdx], al
 mov eax, ecx
 add rdx, r8
 shr eax, 0xc
 and al, r11b
 or al, 0x80

0x14002128e:
 mov byte ptr [rdx], al
 mov eax, ecx
 add rdx, r8
 shr eax, 6
 and al, r11b
 or al, 0x80

0x14002129d:
 and cl, r11b
 mov byte ptr [rdx], al
 add rdx, r8
 or cl, 0x80

0x1400212a8:
 mov byte ptr [rdx], cl
 add rdx, r8

0x1400212ad:
 mov ax, word ptr [r10]
 test ax, ax
 jne 0x1400211e8

0x1400212ba:
 mov byte ptr [rdx], 0x0
 ret 
sub_1400211cc   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400212c0
; --------------------------------------------------------------------------
sub_1400212c0   proc \
 arg_1 : qword ; [rsp+0x8]

 mov qword ptr [arg_1], rbx
 mov al, byte ptr [rcx]
 dec r8d
 mov r9, rdx
 xor ebx, ebx
 mov r10, rcx
 mov r11b, 0x1

0x1400212d5:
 cmp al, bl
 je 0x140021452
 movzx edx, al
 inc r10
 cmp edx, 0x80
 jb 0x1400213da
 mov eax, edx
 and eax, 0xffffffe0
 cmp eax, 0xc0
 jne 0x140021323
 mov al, byte ptr [r10]
 and al, 0xc0
 cmp al, 0x80
 jne 0x14002144f
 movsx ecx, byte ptr [r10]
 and edx, 0x1f
 mov eax, edx
 and ecx, 0x3f
 shl eax, 6
 mov edx, ecx
 or edx, eax
 inc r10
 jmp 0x1400213da

0x140021323:
 mov eax, edx
 and eax, 0xfffffff0
 cmp eax, 0xe0
 jne 0x140021370
 mov al, byte ptr [r10]
 and al, 0xc0
 cmp al, 0x80
 jne 0x14002144f
 mov al, byte ptr [r10+1]
 and al, 0xc0
 cmp al, 0x80
 jne 0x14002144f
 movsx ecx, byte ptr [r10]
 movsx eax, byte ptr [r10+1]
 and edx, 0xf
 and eax, 0x3f
 and ecx, 0x3f
 shl ecx, 6
 or ecx, eax
 mov eax, edx
 shl eax, 0xc
 mov edx, ecx
 or edx, eax
 add r10, 2
 jmp 0x1400213da

0x140021370:
 mov eax, edx
 and eax, 0xfffffff8
 cmp eax, 0xf0
 jne 0x14002144f
 mov al, byte ptr [r10]
 and al, 0xc0
 cmp al, 0x80
 jne 0x14002144f
 mov al, byte ptr [r10+1]
 and al, 0xc0
 cmp al, 0x80
 jne 0x14002144f
 mov al, byte ptr [r10+2]
 and al, 0xc0
 cmp al, 0x80
 jne 0x14002144f
 movsx ecx, byte ptr [r10]
 movsx eax, byte ptr [r10+1]
 and edx, 7
 and eax, 0x3f
 and ecx, 0x3f
 shl ecx, 6
 or ecx, eax
 movsx eax, byte ptr [r10+2]
 and eax, 0x3f
 shl ecx, 6
 or ecx, eax
 mov eax, edx
 shl eax, 0x12
 mov edx, ecx
 or edx, eax
 add r10, 3

0x1400213da:
 cmp r9, rbx
 je 0x1400213e5
 sub r8d, 0x1
 js 0x140021452

0x1400213e5:
 cmp edx, 0xffff
 jbe 0x14002143a
 cmp r9, rbx
 je 0x1400213f8
 sub r8d, 0x1
 js 0x140021452

0x1400213f8:
 cmp edx, 0x10ffff
 jbe 0x140021405
 mov r11b, bl
 jmp 0x140021447

0x140021405:
 cmp r9, rbx
 je 0x140021447
 lea eax, [rdx-0x10000]
 mov ecx, 0x2800
 shr eax, 0xa
 sub ax, cx
 mov word ptr [r9], ax
 mov eax, 0x3ff
 and dx, ax
 mov eax, 0x2400
 sub dx, ax
 add r9, 4
 mov word ptr [r9-2], dx
 jmp 0x140021447

0x14002143a:
 cmp r9, rbx
 je 0x140021447
 mov word ptr [r9], dx
 add r9, 2

0x140021447:
 mov al, byte ptr [r10]
 jmp 0x1400212d5

0x14002144f:
 mov r11b, bl

0x140021452:
 cmp r9, rbx
 je 0x14002145b
 mov word ptr [r9], bx

0x14002145b:
 mov rbx, qword ptr [arg_1]
 mov al, r11b
 ret 
sub_1400212c0   endp
 
; --------------------------------------------------------------------------
; sub_140021464
; --------------------------------------------------------------------------
sub_140021464   proc
 local local_1: qword ; [rsp+0x20]
 local local_2: dword ; [rsp+0x28]

 sub rsp, 0x38
 or r9d, 0xffffffff
 mov r8, rcx
 mov ecx, 0x400
 mov dword ptr [local_2], r9d
 mov qword ptr [local_1], rdx
 mov edx, 0x1001
 call qword ptr [CompareStringW]
 sub eax, 2
 add rsp, 0x38
 ret 
sub_140021464   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140021494
; --------------------------------------------------------------------------
sub_140021494   proc
 local local_1: qword ; [rsp+0x20]
 local local_2: dword ; [rsp+0x28]

 push rdi
 sub rsp, 0x30
 mov r10, rcx
 or r11, 0xffffffffffffffff
 xor eax, eax
 mov r9, r8
 mov rcx, r11
 mov rdi, r10
 repne scasd eax, dword ptr [rdi]
 mov rdi, rdx
 not rcx
 cmp rcx, r8
 cmovb r9, rcx
 mov rcx, r11
 repne scasd eax, dword ptr [rdi]
 not rcx
 cmp rcx, r8
 cmovb r8, rcx
 mov ecx, 0x400
 mov dword ptr [local_2], r8d
 mov qword ptr [local_1], rdx
 mov edx, 0x1001
 mov r8, r10
 call qword ptr [CompareStringW]
 sub eax, 2
 add rsp, 0x30
 pop rdi
 ret 
sub_140021494   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400214f4
; --------------------------------------------------------------------------
sub_1400214f4   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 call qword ptr [CharLowerW]
 mov rax, rbx
 add rsp, 0x20
 pop rbx
 ret 
sub_1400214f4   endp
 
; --------------------------------------------------------------------------
; sub_14002150c
; --------------------------------------------------------------------------
sub_14002150c   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 call qword ptr [CharUpperW]
 mov rax, rbx
 add rsp, 0x20
 pop rbx
 ret 
sub_14002150c   endp
 

0x140021524:
 movsxd rcx, ecx
 jmp qword ptr [CharUpperW]
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140021530
; --------------------------------------------------------------------------
sub_140021530   proc
 cmp word ptr [rcx], 0x2d
 mov rdx, rcx
 mov r8d, 0x1
 jne 0x140021547
 add rdx, 2
 or r8d, 0xffffffff

0x140021547:
 xor r9d, r9d
 lea r10d, [r9+0x30]
 jmp 0x14002156b

0x140021550:
 cmp ax, 0x39
 ja 0x140021574
 movzx eax, ax
 sub eax, r10d
 add rdx, 2
 movsxd rcx, eax
 lea rax, [r9+r9*4]
 lea r9, [rcx+rax*2]

0x14002156b:
 movzx eax, word ptr [rdx]
 cmp ax, r10w
 jae 0x140021550

0x140021574:
 movsxd rax, r8d
 imul rax, r9
 ret 
sub_140021530   endp
 

0x14002157c:
 mov qword ptr [rsp+0x10], rbx
 push rdi
 sub rsp, 0x40
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x38], rax
 mov rdi, rcx
 lea rdx, [rsp+0x20]
 xor ecx, ecx
 call qword ptr [GetCPInfo]
 cmp dword ptr [rsp+0x20], 0x1
 seta al
 xor ebx, ebx
 mov byte ptr [rdi+0x100], al

0x1400215b5:
 mov cl, bl
 call qword ptr [IsDBCSLeadByte]
 test eax, eax
 setne al
 inc ebx
 mov byte ptr [rdi], al
 inc rdi
 cmp ebx, 0x100
 jb 0x1400215b5
 mov rcx, qword ptr [rsp+0x38]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [rsp+0x58]
 add rsp, 0x40
 pop rdi
 ret 
 int3 
 int3 
 int3 

0x1400215ec:
 jmp sub_140021530
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400215f4
; --------------------------------------------------------------------------
sub_1400215f4   proc
 movsxd rax, r9d
 mov r10, rcx
 movzx r9d, byte ptr [rax+rcx+4]
 movsxd rax, r8d
 movzx r11d, byte ptr [rax+rcx+4]
 lea r8d, [r9+r9*4]
 sub r11d, r9d
 shl r8d, 2
 add r8, rdx
 movsxd rax, r11d
 movzx edx, byte ptr [rax+rcx+0x29]
 movzx ecx, byte ptr [rdx+rcx+4]
 cmp ecx, r11d
 je 0x140021653
 dec edx
 movsxd rcx, edx
 mov rax, qword ptr [r10+rcx*8+0xc8]
 mov qword ptr [r8], rax
 mov qword ptr [r10+rcx*8+0xc8], r8
 movzx edx, byte ptr [rcx+r10+4]
 lea eax, [rdx+rdx*4]
 shl eax, 2
 add r8, rax
 sub r11d, edx

0x140021653:
 movsxd rax, r11d
 movzx ecx, byte ptr [rax+r10+0x29]
 mov rax, qword ptr [r10+rcx*8+0xc8]
 mov qword ptr [r8], rax
 mov qword ptr [r10+rcx*8+0xc8], r8
 ret 
sub_1400215f4   endp
 
; --------------------------------------------------------------------------
; sub_140021670
; --------------------------------------------------------------------------
sub_140021670   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 mov edi, edx
 mov rbx, rcx
 shl edi, 0x14
 cmp dword ptr [rcx], edi
 je 0x1400216e3
 cmp dword ptr [rcx], 0x0
 je 0x14002169f
 and dword ptr [rcx], 0x0
 mov rcx, qword ptr [rcx+0xb0]
 call sub_14002cfac

0x14002169f:
 mov eax, 0xaaaaaaab
 mul edi
 shr edx, 3
 lea eax, [rdx+rdx*4+0xa]
 shl eax, 2
 mov ecx, eax
 mov esi, eax
 call sub_14002d848
 mov qword ptr [rbx+0xb0], rax
 test rax, rax
 jne 0x1400216d5
 lea rcx, [0x140050e70]
 call 0x14000b140
 xor al, al
 jmp 0x1400216e5

0x1400216d5:
 lea rax, [rsi+rax-0x14]
 mov dword ptr [rbx], edi
 mov qword ptr [rbx+0x208], rax

0x1400216e3:
 mov al, 0x1

0x1400216e5:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_140021670   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400216f8
; --------------------------------------------------------------------------
sub_1400216f8   proc
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 xor edx, edx
 mov r8d, 0x130
 add rcx, 0xc8
 call 0x14002d190
 mov r10d, dword ptr [rbx]
 mov r11, qword ptr [rbx+0xb0]
 mov eax, r10d
 mov qword ptr [rbx+0x1f8], r11
 cdq 
 and edx, 7
 add edx, eax
 mov eax, 0xaaaaaaab
 sar edx, 3
 mul edx
 mov eax, 0xaaaaaaab
 mov r9d, edx
 shr r9d, 3
 imul r9d, r9d, 0x54
 sub r10d, r9d
 mov ecx, r10d
 mul r10d
 add rcx, r11
 mov eax, 0xaaaaaaab
 shr edx, 3
 mov qword ptr [rbx+0x210], rcx
 lea r8d, [rdx+rdx*4+5]
 shl r8d, 2
 add r8, r11
 mov qword ptr [rbx+0x200], r8
 mov qword ptr [rbx+0xb8], r8
 mul r9d
 shr edx, 3
 mov eax, 0x1
 lea ecx, [rdx+rdx*4]
 lea r9d, [rax+3]
 shl ecx, 2
 mov rdx, r9
 add rcx, r8
 mov qword ptr [rbx+0xc0], rcx
 lea rcx, [rbx+4]

0x1400217a4:
 mov byte ptr [rcx], al
 inc rcx
 inc eax
 sub rdx, 0x1
 jne 0x1400217a4
 inc eax
 lea rcx, [rbx+0x8]
 mov rdx, r9

0x1400217ba:
 mov byte ptr [rcx], al
 inc rcx
 add eax, 2
 sub rdx, 0x1
 jne 0x1400217ba
 inc eax
 lea rcx, [rbx+0xc]
 mov rdx, r9

0x1400217d1:
 mov byte ptr [rcx], al
 inc rcx
 add eax, 3
 sub rdx, 0x1
 jne 0x1400217d1
 inc eax
 lea rcx, [rbx+0x10]
 mov edx, 0x1a

0x1400217ea:
 mov byte ptr [rcx], al
 inc rcx
 add eax, r9d
 sub rdx, 0x1
 jne 0x1400217ea
 xor r8d, r8d
 mov byte ptr [rbx+0xaa], dl
 lea r9, [rbx+0x2a]

0x140021805:
 movsxd rax, edx
 inc r8d
 movzx ecx, byte ptr [rax+rbx+4]
 xor eax, eax
 cmp ecx, r8d
 setl al
 add edx, eax
 mov byte ptr [r9], dl
 inc r9
 cmp r8d, 0x80
 jl 0x140021805
 add rsp, 0x20
 pop rbx
 ret 
sub_1400216f8   endp
 
 int3 
 lea rax, [0x14003e3b0]
 mov qword ptr [rcx], rax
 jmp sub_14002f988
 int3 
 mov qword ptr [rsp+0x8], rbx
 push rdi
 sub rsp, 0x20
 lea rax, [0x14003e3b0]
 mov ebx, edx
 mov rdi, rcx
 mov qword ptr [rcx], rax
 call sub_14002f988
 test bl, 0x1
 je 0x14002186b
 mov rcx, rdi
 call 0x14002cfa4

0x14002186b:
 mov rax, rdi
 mov rbx, qword ptr [rsp+0x30]
 add rsp, 0x20
 pop rdi
 ret 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14002187c
; --------------------------------------------------------------------------
sub_14002187c   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x38]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x40]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 sub rsp, 0x20
 movsxd r10, r9d
 movsxd rax, r8d
 mov rbx, rdx
 movzx ebp, byte ptr [rax+rcx+0x29]
 movzx r9d, byte ptr [r10+rcx+0x29]
 mov rdi, rcx
 cmp ebp, r9d
 jne 0x1400218b1
 mov rax, rdx
 jmp 0x1400218fc

0x1400218b1:
 mov rsi, qword ptr [rcx+r9*8+0xc8]
 test rsi, rsi
 je 0x1400218f1
 mov rcx, qword ptr [rsi]
 lea r8d, [r10+r10*4]
 mov qword ptr [rdi+r9*8+0xc8], rcx
 mov rcx, rsi
 shl r8d, 2
 call 0x14002d490
 mov rcx, qword ptr [rdi+rbp*8+0xc8]
 mov rax, rsi
 mov qword ptr [rbx], rcx
 mov qword ptr [rdi+rbp*8+0xc8], rbx
 jmp 0x1400218fc

0x1400218f1:
 mov r8d, ebp
 call sub_1400215f4
 mov rax, rbx

0x1400218fc:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop rdi
 ret 
sub_14002187c   endp
 
 int3 
 int3 
 int3 

0x140021914:
 mov rax, qword ptr [rdx+0x660]
 mov r10, rdx
 lea r11, [rcx+2]
 movzx r8d, byte ptr [rax]
 movzx r9d, byte ptr [r8+rdx+0x980]
 mov byte ptr [rdx+0xa82], r9b
 mov rax, qword ptr [rcx+0xc]
 movzx ecx, word ptr [rax]
 movzx eax, byte ptr [r11]
 movzx r8d, byte ptr [rcx+rdx+0x87f]
 movzx ecx, byte ptr [rax+rdx+0x980]
 mov eax, dword ptr [r10+0x678]
 sar eax, 0x1a
 lea edx, [r8+rcx*2]
 and eax, 0x20
 add edx, eax
 movzx eax, byte ptr [r10+0xa81]
 add edx, eax
 movzx eax, byte ptr [r11+1]
 shr dword ptr [r10+0x4a90], 0xe
 dec eax
 add edx, r9d
 cdqe 
 movsxd r8, edx
 xor edx, edx
 shl rax, 6
 add r8, rax
 mov eax, dword ptr [r10+0x4a8c]
 sub eax, dword ptr [r10+0x4a88]
 movzx ecx, word ptr [r10+r8*2+0xa84]
 div dword ptr [r10+0x4a90]
 cmp eax, ecx
 jae 0x140021a0f
 mov qword ptr [r10+0x660], r11
 mov al, byte ptr [r11+1]
 mov edx, 0x80
 cmp al, dl
 adc al, 0x0
 mov byte ptr [r11+1], al
 and dword ptr [r10+0x4a94], 0x0
 movzx eax, word ptr [r10+r8*2+0xa84]
 mov dword ptr [r10+0x4a98], eax
 movzx ecx, word ptr [r10+r8*2+0xa84]
 lea eax, [rcx+0x20]
 sar eax, 7
 sub cx, ax
 add cx, dx
 mov word ptr [r10+r8*2+0xa84], cx
 inc dword ptr [r10+0x678]
 mov byte ptr [r10+0xa81], 0x1
 ret 

0x140021a0f:
 mov dword ptr [r10+0x4a94], ecx
 movzx ecx, word ptr [r10+r8*2+0xa84]
 lea eax, [rcx+0x20]
 sar eax, 7
 sub cx, ax
 mov word ptr [r10+r8*2+0xa84], cx
 mov dword ptr [r10+0x4a98], 0x4000
 movzx eax, word ptr [r10+r8*2+0xa84]
 lea rcx, [0x14003e1f8]
 shr rax, 0xa
 movzx eax, byte ptr [rax+rcx]
 mov dword ptr [r10+0x668], 0x1
 mov dword ptr [r10+0x66c], eax
 movzx ecx, byte ptr [r11]
 mov al, byte ptr [r10+0xa80]
 mov byte ptr [rcx+r10+0x680], al
 and qword ptr [r10+0x660], 0x0
 mov byte ptr [r10+0xa81], 0x0
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140021a8c
; --------------------------------------------------------------------------
sub_140021a8c   proc
 xor r8d, r8d
 cmp edx, r8d
 jne 0x140021ae3
 mov eax, 0x80
 mov dword ptr [rcx+0x58d4], r8d
 mov dword ptr [rcx+0x58d8], r8d
 mov dword ptr [rcx+0x58d0], r8d
 mov dword ptr [rcx+0x58cc], r8d
 mov dword ptr [rcx+0x58c8], r8d
 mov dword ptr [rcx+0x58ec], eax
 mov dword ptr [rcx+0x58e8], eax
 mov dword ptr [rcx+0x58c4], r8d
 mov dword ptr [rcx+0x58c0], 0x3500
 mov dword ptr [rcx+0x58f0], 0x2001

0x140021ae3:
 mov dword ptr [rcx+0x58e4], r8d
 mov dword ptr [rcx+0x58bc], r8d
 mov dword ptr [rcx+0x58dc], r8d
 mov dword ptr [rcx+0x58e0], r8d
 mov dword ptr [rcx+0xd0], r8d
 ret 
sub_140021a8c   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140021b08
; --------------------------------------------------------------------------
sub_140021b08   proc
 push rbx
 sub rsp, 0x20
 mov rbx, r8
 mov eax, 7

0x140021b16:
 mov ecx, 0x20

0x140021b1b:
 mov r8d, 0xff00
 and word ptr [rdx], r8w
 or word ptr [rdx], ax
 add rdx, 2
 sub rcx, 0x1
 jne 0x140021b1b
 sub eax, 0x1
 jns 0x140021b16
 xor edx, edx
 mov r8d, 0x100
 mov rcx, rbx
 call 0x14002d190
 mov r11d, 6
 lea rcx, [rbx+6]

0x140021b51:
 mov eax, 7
 sub al, r11b
 shl al, 5
 mov byte ptr [rcx], al
 dec rcx
 sub r11d, 0x1
 jns 0x140021b51
 add rsp, 0x20
 pop rbx
 ret 
sub_140021b08   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140021b70
; --------------------------------------------------------------------------
sub_140021b70   proc
 mov eax, r8d
 mov r9, rcx
 sub qword ptr [rcx+0x4da0], rax
 test r8d, r8d
 je 0x140021bca
 mov r10, qword ptr [rcx+0xe960]
 mov r11d, edx

0x140021b8c:
 mov rdx, qword ptr [r9+0xc0]
 mov rcx, qword ptr [r9+0x4b90]
 mov rax, rdx
 sub rax, r11
 and rax, r10
 mov al, byte ptr [rax+rcx]
 mov byte ptr [rcx+rdx], al
 mov rax, qword ptr [r9+0xc0]
 mov r10, qword ptr [r9+0xe960]
 inc rax
 and rax, r10
 add r8d, -1
 mov qword ptr [r9+0xc0], rax
 jne 0x140021b8c

0x140021bca:
 ret 
sub_140021b70   endp
 
; --------------------------------------------------------------------------
; sub_140021bcc
; --------------------------------------------------------------------------
sub_140021bcc   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x38]
 arg_3 : qword, ; [rsp+0x40]
 arg_4 : qword, ; [rsp+0x48]
 arg_5 : qword ; [rsp+0x50]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x20
 xor ebp, ebp
 mov edi, edx
 mov r12, r9
 and edi, 0xfff0
 mov esi, r8d
 mov ebx, ebp
 cmp dword ptr [r9], edi
 ja 0x140021c0b
 mov rax, r9

0x140021bff:
 add rax, 4
 inc esi
 inc ebx
 cmp dword ptr [rax], edi
 jbe 0x140021bff

0x140021c0b:
 add rcx, 8
 mov edx, esi
 call sub_140011440
 cmp ebx, ebp
 je 0x140021c22
 movsxd rax, ebx
 mov ebp, dword ptr [r12+rax*4-4]

0x140021c22:
 mov rax, qword ptr [arg_5]
 mov rbx, qword ptr [arg_1]
 sub edi, ebp
 mov rbp, qword ptr [arg_2]
 mov ecx, 0x10
 sub ecx, esi
 shr edi, cl
 mov ecx, esi
 mov rsi, qword ptr [arg_3]
 add edi, dword ptr [rax+rcx*4]
 mov eax, edi
 mov rdi, qword ptr [arg_4]
 add rsp, 0x20
 pop r12
 ret 
sub_140021bcc   endp
 

0x140021c54:
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 xor edx, edx
 add rcx, 8
 call sub_1400113b0
 and qword ptr [rbx+0x4ae0], 0x0
 mov rax, rbx
 add rsp, 0x20
 pop rbx
 ret 
 int3 
 int3 
 int3 

0x140021c7c:
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 mov rcx, qword ptr [rcx+0x4ae0]
 test rcx, rcx
 je 0x140021c96
 call sub_14002cfac

0x140021c96:
 lea rcx, [rbx+0x8]
 add rsp, 0x20
 pop rbx
 jmp sub_1400113f0
; --------------------------------------------------------------------------
; sub_140021ca4
; --------------------------------------------------------------------------
sub_140021ca4   proc \
 arg_1 : qword, ; [rsp+0x8]
 arg_2 : qword ; [rsp+0x10]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rdi
 mov eax, dword ptr [rcx+0xb0]
 mov ebx, r8d
 mov r9d, edx
 and eax, 3
 mov r10, rcx
 mov dword ptr [rcx+rax*4+0xa0], ebx
 mov r8, qword ptr [rcx+0xc0]
 mov rax, qword ptr [rcx+0xe958]
 inc dword ptr [rcx+0xb0]
 sub qword ptr [rcx+0x4da0], r9
 mov r11, r8
 sub r11, rbx
 add rax, -0x1001
 mov dword ptr [rcx+0xb8], ebx
 mov dword ptr [rcx+0xb4], r9d
 cmp r11, rax
 jae 0x140021dfb
 cmp r8, rax
 jae 0x140021dfb
 mov rax, qword ptr [rcx+0x4b90]
 lea rcx, [rax+r11]
 lea rdx, [rax+r8]
 lea rax, [r8+r9]
 mov qword ptr [r10+0xc0], rax
 cmp ebx, r9d
 jae 0x140021d7b
 cmp r9d, 8
 jb 0x140021da0
 mov r8, r9
 shr r8, 3

0x140021d39:
 mov al, byte ptr [rcx]
 add r9d, -8
 add rcx, 8
 mov byte ptr [rdx], al
 mov al, byte ptr [rcx-7]
 add rdx, 8
 sub r8, 0x1
 mov byte ptr [rdx-7], al
 mov al, byte ptr [rcx-6]
 mov byte ptr [rdx-6], al
 mov al, byte ptr [rcx-5]
 mov byte ptr [rdx-5], al
 mov al, byte ptr [rcx-4]
 mov byte ptr [rdx-4], al
 mov al, byte ptr [rcx-3]
 mov byte ptr [rdx-3], al
 mov al, byte ptr [rcx-2]
 mov byte ptr [rdx-2], al
 mov al, byte ptr [rcx-1]
 mov byte ptr [rdx-1], al
 jne 0x140021d39
 jmp 0x140021da0

0x140021d7b:
 cmp r9d, 8
 jb 0x140021da0
 mov r8, r9
 shr r8, 3

0x140021d88:
 mov rax, qword ptr [rcx]
 add r9d, -8
 add rcx, 8
 mov qword ptr [rdx], rax
 add rdx, 8
 sub r8, 0x1
 jne 0x140021d88

0x140021da0:
 test r9d, r9d
 je 0x140021e42
 mov al, byte ptr [rcx]
 mov byte ptr [rdx], al
 cmp r9d, 0x1
 jbe 0x140021e42
 mov al, byte ptr [rcx+1]
 mov byte ptr [rdx+1], al
 cmp r9d, 2
 jbe 0x140021e42
 mov al, byte ptr [rcx+2]
 mov byte ptr [rdx+2], al
 cmp r9d, 3
 jbe 0x140021e42
 mov al, byte ptr [rcx+3]
 mov byte ptr [rdx+3], al
 cmp r9d, 4
 jbe 0x140021e42
 mov al, byte ptr [rcx+4]
 mov byte ptr [rdx+4], al
 cmp r9d, 5
 jbe 0x140021e42
 mov al, byte ptr [rcx+5]
 mov byte ptr [rdx+5], al
 cmp r9d, 6
 jbe 0x140021e42
 mov al, byte ptr [rcx+6]
 mov byte ptr [rdx+6], al
 jmp 0x140021e42

0x140021dfb:
 test edx, edx
 je 0x140021e42
 mov r8, qword ptr [rcx+0xe960]

0x140021e06:
 mov rdx, qword ptr [r10+0x4b90]
 mov rcx, qword ptr [r10+0xc0]
 and r8, r11
 mov al, byte ptr [r8+rdx]
 inc r11
 mov byte ptr [rdx+rcx], al
 mov rax, qword ptr [r10+0xc0]
 mov r8, qword ptr [r10+0xe960]
 inc rax
 and rax, r8
 add r9d, -1
 mov qword ptr [r10+0xc0], rax
 jne 0x140021e06

0x140021e42:
 mov rbx, qword ptr [arg_1]
 mov rdi, qword ptr [arg_2]
 ret 
sub_140021ca4   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140021e50
; --------------------------------------------------------------------------
sub_140021e50   proc
 push rbx
 sub rsp, 0x20
 mov r8, qword ptr [rcx+0xc0]
 mov rdx, qword ptr [rcx+0xc8]
 mov rbx, rcx
 cmp r8, rdx
 je 0x140021eb4
 mov byte ptr [rcx+0x4daa], 0x1
 jae 0x140021eb4
 mov r8, qword ptr [rbx+0xe960]
 mov eax, edx
 add rdx, qword ptr [rbx+0x4b90]
 neg eax
 movsxd rcx, eax
 and r8, rcx
 mov rcx, qword ptr [rbx]
 call 0x140016b00
 mov r8, qword ptr [rbx+0xc0]
 mov rdx, qword ptr [rbx+0x4b90]
 mov rcx, qword ptr [rbx]
 call 0x140016b00
 mov byte ptr [rbx+0x4da9], 0x1
 jmp 0x140021ec6

0x140021eb4:
 sub r8, rdx
 add rdx, qword ptr [rcx+0x4b90]
 mov rcx, qword ptr [rcx]
 call 0x140016b00

0x140021ec6:
 mov rax, qword ptr [rbx+0xc0]
 mov qword ptr [rbx+0xc8], rax
 add rsp, 0x20
 pop rbx
 ret 
sub_140021e50   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140021edc
; --------------------------------------------------------------------------
sub_140021edc   proc
 push rbx
 sub rsp, 0x20
 xor eax, eax
 mov rbx, rcx
 cmp edx, eax
 jne 0x140021f43
 mov dword ptr [rcx+0x98b0], eax
 mov dword ptr [rcx+0x98b4], eax
 mov dword ptr [rcx+0x98a8], eax
 mov dword ptr [rcx+0x98ac], 0x1
 add rcx, 0x98b8
 xor edx, edx
 mov r8d, 0x170
 call 0x14002d190
 lea rcx, [rbx+0x94a4]
 xor edx, edx
 mov r8d, 0x404
 call 0x14002d190
 lea rcx, [rbx+0x58f4]
 xor edx, edx
 mov r8d, 0x3bb0
 call 0x14002d190

0x140021f43:
 add rsp, 0x20
 pop rbx
 ret 
sub_140021edc   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140021f4c
; --------------------------------------------------------------------------
sub_140021f4c   proc \
 arg_1 : qword, ; [rsp+0x8]
 arg_2 : qword, ; [rsp+0x10]
 arg_3 : qword, ; [rsp+0x18]
 arg_4 : qword ; [rsp+0x20]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 movsxd rdi, dword ptr [rcx+0x98b0]
 mov rbx, rcx
 imul rdi, rdi, 0x5c
 mov r8d, dword ptr [rdi+rcx+0x98dc]
 mov r11d, dword ptr [rdi+rcx+0x98d4]
 mov r10d, dword ptr [rdi+rcx+0x98d0]
 inc dword ptr [rdi+rcx+0x990c]
 mov dword ptr [rdi+rcx+0x98d8], r11d
 mov dword ptr [rdi+rcx+0x98d4], r10d
 mov r9d, r8d
 lea rsi, [rdi+rbx+0x98e4]
 sub r9d, dword ptr [rdi+rcx+0x98cc]
 mov dword ptr [rdi+rcx+0x98cc], r8d
 mov dword ptr [rdi+rcx+0x98d0], r9d
 mov ecx, dword ptr [rdi+rcx+0x98c0]
 mov eax, r9d
 imul eax, dword ptr [rdi+rbx+0x98bc]
 imul ecx, r10d
 add ecx, eax
 mov eax, dword ptr [rdi+rbx+0x98c4]
 imul eax, r11d
 add ecx, eax
 mov eax, r8d
 imul eax, dword ptr [rdi+rbx+0x98b8]
 add ecx, eax
 mov eax, dword ptr [rbx+0x98b4]
 imul eax, dword ptr [rdi+rbx+0x98c8]
 add ecx, eax
 mov eax, dword ptr [rdi+rbx+0x9910]
 lea ecx, [rcx+rax*8]
 sar ecx, 3
 movzx ebp, cl
 movsx ecx, dl
 shl ecx, 3
 sub ebp, edx
 mov eax, ecx
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [rdi+rbx+0x98e0], eax
 mov eax, ecx
 sub eax, r8d
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [rsi], eax
 lea eax, [r8+rcx]
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [rdi+rbx+0x98e8], eax
 mov eax, ecx
 sub eax, r9d
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [rdi+rbx+0x98ec], eax
 lea eax, [r9+rcx]
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [rdi+rbx+0x98f0], eax
 mov eax, ecx
 sub eax, r10d
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [rdi+rbx+0x98f4], eax
 lea eax, [r10+rcx]
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [rdi+rbx+0x98f8], eax
 mov eax, ecx
 sub eax, r11d
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [rdi+rbx+0x98fc], eax
 lea eax, [r11+rcx]
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [rdi+rbx+0x9900], eax
 mov eax, ecx
 sub eax, dword ptr [rbx+0x98b4]
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [rdi+rbx+0x9904], eax
 mov eax, dword ptr [rbx+0x98b4]
 add eax, ecx
 cdq 
 xor eax, edx
 sub eax, edx
 add dword ptr [rdi+rbx+0x9908], eax
 mov al, bpl
 sub al, byte ptr [rdi+rbx+0x9910]
 movsx ecx, al
 mov dword ptr [rdi+rbx+0x98dc], ecx
 mov dword ptr [rbx+0x98b4], ecx
 test byte ptr [rdi+rbx+0x990c], 0x1f
 mov dword ptr [rdi+rbx+0x9910], ebp
 jne 0x140022248
 mov edx, dword ptr [rdi+rbx+0x98e0]
 xor eax, eax
 and dword ptr [rdi+rbx+0x98e0], eax
 lea ecx, [rax+1]

0x140022110:
 cmp dword ptr [rsi], edx
 jae 0x140022118
 mov edx, dword ptr [rsi]
 mov eax, ecx

0x140022118:
 and dword ptr [rsi], 0x0
 inc ecx
 add rsi, 4
 cmp ecx, 0xb
 jb 0x140022110
 cmp eax, 6
 ja 0x1400221e1
 je 0x1400221d1
 sub eax, 0x1
 je 0x1400221b6
 sub eax, 0x1
 je 0x1400221a2
 sub eax, 0x1
 je 0x140022184
 sub eax, 0x1
 je 0x140022170
 cmp eax, 0x1
 jne 0x140022248
 mov eax, dword ptr [rdi+rbx+0x98c0]
 cmp eax, 0xf0
 jl 0x140022248
 dec eax

0x140022164:
 mov dword ptr [rdi+rbx+0x98c0], eax
 jmp 0x140022248

0x140022170:
 mov eax, dword ptr [rdi+rbx+0x98bc]
 cmp eax, 0x10
 jge 0x140022248
 inc eax
 jmp 0x140022196

0x140022184:
 mov eax, dword ptr [rdi+rbx+0x98bc]
 cmp eax, 0xf0
 jl 0x140022248
 dec eax

0x140022196:
 mov dword ptr [rdi+rbx+0x98bc], eax
 jmp 0x140022248

0x1400221a2:
 mov eax, dword ptr [rdi+rbx+0x98b8]
 cmp eax, 0x10
 jge 0x140022248
 inc eax
 jmp 0x1400221c8

0x1400221b6:
 mov eax, dword ptr [rdi+rbx+0x98b8]
 cmp eax, 0xf0
 jl 0x140022248
 dec eax

0x1400221c8:
 mov dword ptr [rdi+rbx+0x98b8], eax
 jmp 0x140022248

0x1400221d1:
 mov eax, dword ptr [rdi+rbx+0x98c0]
 cmp eax, 0x10
 jge 0x140022248
 inc eax
 jmp 0x140022164

0x1400221e1:
 sub eax, 7
 je 0x140022233
 sub eax, 0x1
 je 0x14002221c
 sub eax, 0x1
 je 0x140022205
 cmp eax, 0x1
 jne 0x140022248
 mov eax, dword ptr [rdi+rbx+0x98c8]
 cmp eax, 0x10
 jge 0x140022248
 inc eax
 jmp 0x140022213

0x140022205:
 mov eax, dword ptr [rdi+rbx+0x98c8]
 cmp eax, 0xf0
 jl 0x140022248
 dec eax

0x140022213:
 mov dword ptr [rdi+rbx+0x98c8], eax
 jmp 0x140022248

0x14002221c:
 mov eax, dword ptr [rdi+rbx+0x98c4]
 cmp eax, 0x10
 jge 0x140022248
 inc eax
 mov dword ptr [rdi+rbx+0x98c4], eax
 jmp 0x140022248

0x140022233:
 mov ecx, dword ptr [rdi+rbx+0x98c4]
 cmp ecx, 0xf0
 jl 0x140022248
 dec ecx
 mov dword ptr [rdi+rbx+0x98c4], ecx

0x140022248:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 mov al, bpl
 mov rbp, qword ptr [arg_2]
 ret 
sub_140021f4c   endp
 
; --------------------------------------------------------------------------
; sub_140022260
; --------------------------------------------------------------------------
sub_140022260   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 mov eax, dword ptr [rcx+0xd0]
 mov rbx, rcx
 mov edi, eax
 sub edi, dword ptr [rcx+0x8]
 jns 0x140022283
 xor al, al
 jmp 0x1400222ea

0x140022283:
 xor esi, esi
 cmp dword ptr [rcx+0x8], 0x4000
 jle 0x1400222b0
 cmp edi, esi
 jle 0x1400222a5
 mov rcx, qword ptr [rcx+0x18]
 movsxd rdx, dword ptr [rbx+0x8]
 movsxd r8, edi
 add rdx, rcx
 call 0x14002d490

0x1400222a5:
 mov dword ptr [rbx+0x8], esi
 mov dword ptr [rbx+0xd0], edi
 jmp 0x1400222b2

0x1400222b0:
 mov edi, eax

0x1400222b2:
 mov rcx, qword ptr [rbx]
 mov eax, 0x8000
 movsxd rdx, edi
 add rdx, qword ptr [rbx+0x18]
 sub eax, edi
 movsxd r8, eax
 call sub_140016c2c
 cmp eax, esi
 jle 0x1400222d5
 add dword ptr [rbx+0xd0], eax

0x1400222d5:
 mov ecx, dword ptr [rbx+0xd0]
 sub ecx, 0x1e
 cmp eax, 0xff
 setne al
 mov dword ptr [rbx+0xd4], ecx

0x1400222ea:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_140022260   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400222fc
; --------------------------------------------------------------------------
sub_1400222fc   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 cmp qword ptr [rdx+0x38], 0x0
 mov rdi, rdx
 mov rsi, rcx
 jbe 0x14002236d
 mov eax, dword ptr [rcx+0x4db0]
 add rcx, 0xe890
 mov dword ptr [rdx+0x88], eax
 mov rdx, qword ptr [rdx+0x30]
 mov r8d, dword ptr [rcx-0x9ae0]
 add rdx, 0x24
 call 0x140015a2c
 mov r8, qword ptr [rsi+0x4db0]
 mov rdx, qword ptr [rdi+0x30]
 lea rcx, [rsi+0xe890]
 sar r8, 0x20
 add rdx, 0x28
 call 0x140015a2c
 lea rcx, [rsi+0xe890]
 mov rdx, rdi
 call sub_140016484

0x14002236d:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_1400222fc   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140022380
; --------------------------------------------------------------------------
sub_140022380   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x38]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x40]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 sub rsp, 0x20
 mov rcx, rdx
 mov rbp, rdx
 call sub_140011458
 mov r8d, dword ptr [rbp+4]
 xor ebx, ebx
 add r8d, 2
 shr eax, 0xe
 mov ecx, r8d
 and r8d, 7
 inc eax
 shr ecx, 3
 mov dword ptr [rbp+4], r8d
 add dword ptr [rbp], ecx
 cmp eax, ebx
 jbe 0x1400223f5
 mov edi, ebx
 mov esi, eax

0x1400223c7:
 mov rcx, rbp
 call sub_140011458
 mov edx, dword ptr [rbp+4]
 mov ecx, edi
 add edx, 8
 shr eax, 8
 add edi, 8
 shl eax, cl
 mov ecx, edx
 and edx, 7
 shr ecx, 3
 add ebx, eax
 mov dword ptr [rbp+4], edx
 add dword ptr [rbp], ecx
 sub rsi, 0x1
 jne 0x1400223c7

0x1400223f5:
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov eax, ebx
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_140022380   endp
 
; --------------------------------------------------------------------------
; sub_14002240c
; --------------------------------------------------------------------------
sub_14002240c   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 mov rbx, rcx
 mov ecx, dword ptr [rcx+0xd0]
 movsxd rdx, dword ptr [rbx+0x8]
 mov edi, ecx
 sub edi, edx
 jns 0x140022435
 xor al, al
 jmp 0x1400224d1

0x140022435:
 mov eax, dword ptr [rbx+0xe0]
 xor esi, esi
 sub eax, edx
 add dword ptr [rbx+0xd8], eax
 cmp edx, 0x4000
 jle 0x14002246b
 cmp edi, esi
 jle 0x140022460
 mov rcx, qword ptr [rbx+0x18]
 movsxd r8, edi
 add rdx, rcx
 call 0x14002d490

0x140022460:
 mov dword ptr [rbx+0x8], esi
 mov dword ptr [rbx+0xd0], edi
 jmp 0x14002246d

0x14002246b:
 mov edi, ecx

0x14002246d:
 mov ecx, 0x8000
 mov eax, esi
 cmp edi, ecx
 je 0x140022496
 sub ecx, edi
 movsxd rdx, edi
 add rdx, qword ptr [rbx+0x18]
 movsxd r8, ecx
 mov rcx, qword ptr [rbx]
 call sub_140016c2c
 cmp eax, esi
 jle 0x140022496
 add dword ptr [rbx+0xd0], eax

0x140022496:
 mov edx, dword ptr [rbx+0xd0]
 mov r8d, dword ptr [rbx+0xd8]
 mov ecx, dword ptr [rbx+0x8]
 add edx, -0x1e
 mov dword ptr [rbx+0xe0], ecx
 mov dword ptr [rbx+0xd4], edx
 cmp r8d, 0xff
 je 0x1400224cb
 lea ecx, [r8+rcx-1]
 cmp edx, ecx
 cmovl ecx, edx
 mov dword ptr [rbx+0xd4], ecx

0x1400224cb:
 cmp eax, 0xff
 setne al

0x1400224d1:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_14002240c   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400224e4
; --------------------------------------------------------------------------
sub_1400224e4   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rbx, rcx
 mov rcx, qword ptr [rcx+0x4db0]
 mov rdi, r8
 mov rax, qword ptr [rbx+0x4da0]
 cmp rcx, rax
 jge 0x140022520
 sub rax, rcx
 mov rcx, qword ptr [rbx]
 cmp r8, rax
 cmovg r8, rax
 call 0x140016b00
 add qword ptr [rbx+0x4db0], rdi

0x140022520:
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_1400224e4   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_14002252c
; --------------------------------------------------------------------------
sub_14002252c   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x50]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x58]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x60]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x20
 xor ebx, ebx
 mov rsi, r8
 mov rdi, rdx
 mov dword ptr [r8+0xc], ebx
 mov rbp, rcx
 cmp byte ptr [rdx+0x8], bl
 jne 0x140022579
 mov eax, dword ptr [rcx+0xd0]
 sub eax, 7
 cmp dword ptr [rdx], eax
 jle 0x140022579
 call sub_14002240c
 cmp al, bl
 jne 0x140022579

0x140022572:
 xor al, al
 jmp 0x140022673

0x140022579:
 mov edx, dword ptr [rdi+4]
 mov rcx, rdi
 neg edx
 and edx, 7
 call sub_140011440
 mov rcx, rdi
 call sub_140011458
 mov r14d, 8
 mov rcx, rdi
 mov r12d, eax
 mov edx, r14d
 shr r12d, 8
 call sub_140011440
 movzx r11d, r12b
 mov r13d, r11d
 shr r13d, 3
 and r13d, 3
 inc r13d
 cmp r13d, 4
 je 0x140022572
 and r11d, 7
 lea eax, [r13+2]
 mov rcx, rdi
 inc r11d
 mov dword ptr [rsi+0xc], eax
 mov dword ptr [rsi+4], r11d
 call sub_140011458
 mov edx, r14d
 mov r15d, eax
 mov rcx, rdi
 shr r15d, 8
 call sub_140011440
 cmp r13d, ebx
 jbe 0x140022624
 mov r14d, ebx

0x1400225f5:
 mov rcx, rdi
 call sub_140011458
 mov ecx, r14d
 add r14d, 8
 shr eax, 8
 shl eax, cl
 mov ecx, dword ptr [rdi+4]
 add ecx, 8
 add ebx, eax
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rdi+4], ecx
 add dword ptr [rdi], eax
 sub r13, 0x1
 jne 0x1400225f5

0x140022624:
 mov ecx, ebx
 mov eax, ebx
 mov dword ptr [rsi], ebx
 sar ecx, 0x10
 sar eax, 8
 xor cl, al
 xor cl, bl
 xor cl, r12b
 xor cl, 0x5a
 cmp cl, r15b
 jne 0x140022572
 mov eax, dword ptr [rdi]
 mov dword ptr [rsi+0x8], eax
 mov ecx, dword ptr [rbp+0xd4]
 lea edx, [rax+rbx-1]
 mov al, 0x1
 cmp ecx, edx
 cmovl edx, ecx
 mov cl, r12b
 shr cl, 6
 mov dword ptr [rbp+0xd4], edx
 and cl, 0x1
 shr r12b, 7
 mov byte ptr [rsi+0x11], r12b
 mov byte ptr [rsi+0x10], cl

0x140022673:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 ret 
sub_14002252c   endp
 
; --------------------------------------------------------------------------
; sub_140022690
; --------------------------------------------------------------------------
sub_140022690   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rbx, rcx
 mov edi, 0x20

0x1400226a2:
 mov rcx, qword ptr [rbx]
 test rcx, rcx
 je 0x1400226b3
 call sub_14002cfac
 and qword ptr [rbx], 0x0

0x1400226b3:
 add rbx, 8
 sub rdi, 0x1
 jne 0x1400226a2
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_140022690   endp
 

0x1400226c8:
 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 push r13
 push r14
 sub rsp, 0x40
 mov rbp, rdx
 mov rsi, rcx
 call sub_140022690
 xor r12d, r12d
 xor edi, edi
 test rbp, rbp
 je 0x140022771

0x1400226fa:
 cmp r12d, 0x20
 jae 0x1400227c5
 mov eax, r12d
 xor edx, edx
 mov rbx, rbp
 sub rbx, rdi
 mov ecx, 0x20
 mov r14d, 0x400000
 sub rcx, rax
 mov rax, rbx
 div rcx
 cmp rax, r14
 cmova r14, rax

0x14002272a:
 cmp rbx, r14
 jb 0x140022790
 mov rcx, rbx
 call sub_14002d848
 mov r13, rax
 test rax, rax
 jne 0x14002274b
 mov rax, rbx
 shr rax, 5
 sub rbx, rax
 jmp 0x14002272a

0x14002274b:
 mov r8, rbx
 xor edx, edx
 mov rcx, rax
 call 0x14002d190
 add rdi, rbx
 mov qword ptr [rsi], r13
 mov qword ptr [rsi+0x100], rdi
 add rsi, 8
 inc r12d
 cmp rdi, rbp
 jb 0x1400226fa

0x140022771:
 mov rbx, qword ptr [rsp+0x60]
 mov rbp, qword ptr [rsp+0x68]
 mov rsi, qword ptr [rsp+0x70]
 mov rdi, qword ptr [rsp+0x78]
 add rsp, 0x40
 pop r14
 pop r13
 pop r12
 ret 

0x140022790:
 lea rdx, [0x140045630]
 lea rcx, [rsp+0x20]
 mov r8d, 0x1
 call sub_14002f8ec
 lea r11, [0x14003e3b0]
 lea rdx, [0x140043978]
 lea rcx, [rsp+0x20]
 mov qword ptr [rsp+0x20], r11
 call sub_14002eb7c
 int3 

0x1400227c5:
 cmp rdi, rbp
 jae 0x140022771
 lea rdx, [0x140045630]
 lea rcx, [rsp+0x20]
 mov r8d, 0x1
 call sub_14002f8ec
 lea r11, [0x14003e3b0]
 lea rdx, [0x140043978]
 lea rcx, [rsp+0x20]
 mov qword ptr [rsp+0x20], r11
 call sub_14002eb7c
 int3 
 int3 
 push rbx
 sub rsp, 0x20
 mov rbx, rcx
 call sub_14002f908
 lea r11, [0x14003e3b0]
 mov qword ptr [rbx], r11
 mov rax, rbx
 add rsp, 0x20
 pop rbx
 ret 
 int3 
 int3 
 int3 

0x140022824:
 mov r8, rcx
 cmp rdx, qword ptr [rcx+0x100]
 jae 0x140022835
 mov rax, qword ptr [rcx]
 jmp 0x14002286b

0x140022835:
 mov r9d, 0x1
 lea rax, [rcx+0x108]

0x140022842:
 cmp rdx, qword ptr [rax]
 jb 0x140022858
 inc r9d
 add rax, 8
 cmp r9d, 0x20
 jb 0x140022842
 mov rax, qword ptr [rcx]
 ret 

0x140022858:
 mov eax, r9d
 lea ecx, [r9-1]
 mov rax, qword ptr [r8+rax*8]
 sub rax, qword ptr [r8+rcx*8+0x100]

0x14002286b:
 add rax, rdx
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_140022870
; --------------------------------------------------------------------------
sub_140022870   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2[0x18] : byte, ; [rsp+0x10] ; [rsp+0x38]
 arg_3[0x18] : byte ; [rsp+0x50]

 test edx, edx
 je 0x1400228dc
 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 mov r11, qword ptr [r9]
 mov eax, r8d
 mov rbx, r9
 mov edi, edx
 mov rsi, rcx
 sub r11, rax

0x140022894:
 mov rdx, r11
 mov rcx, rsi
 and rdx, qword ptr [arg_3]
 call 0x140022824
 mov rdx, qword ptr [rbx]
 mov rcx, rsi
 mov r10, rax
 call 0x140022824
 mov cl, byte ptr [r10]
 mov byte ptr [rax], cl
 mov rax, qword ptr [rbx]
 inc r11
 inc rax
 and rax, qword ptr [arg_3]
 add edi, -1
 mov qword ptr [rbx], rax
 jne 0x140022894
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi

0x1400228dc:
 ret 
sub_140022870   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400228e0
; --------------------------------------------------------------------------
sub_1400228e0   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 test r9, r9
 je 0x140022922
 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov r11, r8
 mov rbx, r9
 mov r10, rdx
 sub r11, rdx
 mov rdi, rcx

0x1400228fe:
 lea rdx, [r11+r10]
 mov rcx, rdi
 call 0x140022824
 mov cl, byte ptr [rax]
 mov byte ptr [r10], cl
 inc r10
 sub rbx, 0x1
 jne 0x1400228fe
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi

0x140022922:
 ret 
sub_1400228e0   endp
 
 int3 

0x140022924:
 xor eax, eax
 lea r9, [rcx+0x100]

0x14002292d:
 cmp rdx, qword ptr [r9]
 jb 0x140022940
 inc eax
 add r9, 8
 cmp eax, 0x20
 jb 0x14002292d
 xor eax, eax
 ret 

0x140022940:
 mov rcx, qword ptr [rcx+rax*8+0x100]
 sub rcx, rdx
 cmp rcx, r8
 cmovb r8, rcx
 mov rax, r8
 ret 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140022958
; --------------------------------------------------------------------------
sub_140022958   proc
 sub rsp, 0x28
 cmp dword ptr [rcx+0x4aa8], 0x0
 je 0x140022978
 and dword ptr [rcx+0x4aa8], 0x0
 mov rcx, qword ptr [rcx+0x4b58]
 call sub_14002cfac

0x140022978:
 add rsp, 0x28
 ret 
sub_140022958   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140022980
; --------------------------------------------------------------------------
sub_140022980   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x50]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x58]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x60]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 sub rsp, 0x40
 mov sil, r8b
 mov rdi, rdx
 mov rbx, rcx
 test rdx, rdx
 jne 0x1400229ae
 lea rcx, [0x140050e70]
 call 0x14000b140

0x1400229ae:
 mov eax, 0x40000
 cmp rdi, rax
 cmovb rdi, rax
 cmp rdi, qword ptr [rbx+0xe958]
 jbe 0x140022b56
 mov rax, rdi
 movabs rcx, 0x100000000
 and rax, 0xffff0000
 cmp rax, rcx
 ja 0x140022b56
 test sil, sil
 je 0x140022a3c
 cmp qword ptr [rbx+0x4b90], 0x0
 jne 0x1400229fb
 cmp byte ptr [rbx+0x4d98], 0x0
 je 0x140022a3c

0x1400229fb:
 cmp byte ptr [rbx+0x4d98], 0x0
 mov bpl, 0x1
 je 0x140022a4c
 lea rdx, [0x140045630]
 lea rcx, [local_1]
 mov r8d, 0x1
 call sub_14002f8ec
 lea r11, [0x14003e3b0]
 lea rdx, [0x140043978]
 lea rcx, [local_1]
 mov qword ptr [local_1], r11
 call sub_14002eb7c
 int3 

0x140022a3c:
 xor bpl, bpl
 cmp byte ptr [rbx+0x4d98], bpl
 je 0x140022a4c
 xor esi, esi
 jmp 0x140022a5c

0x140022a4c:
 mov rcx, rdi
 call sub_14002d848
 mov rsi, rax
 test rax, rax
 jne 0x140022a99

0x140022a5c:
 test bpl, bpl
 jne 0x140022ac0
 cmp rdi, 0x1000000
 jb 0x140022ac0
 mov rcx, qword ptr [rbx+0x4b90]
 test rcx, rcx
 je 0x140022a83
 call sub_14002cfac
 and qword ptr [rbx+0x4b90], 0x0

0x140022a83:
 lea rcx, [rbx+0x4b98]
 mov rdx, rdi
 call 0x1400226c8
 mov byte ptr [rbx+0x4d98], 0x1

0x140022a99:
 cmp byte ptr [rbx+0x4d98], 0x0
 jne 0x140022b44
 mov r8, rdi
 xor edx, edx
 mov rcx, rsi
 call 0x14002d190
 test bpl, bpl
 je 0x140022b2c
 mov r9d, 0x1
 jmp 0x140022b23

0x140022ac0:
 lea rdx, [0x140045630]
 lea rcx, [local_1]
 mov r8d, 0x1
 call sub_14002f8ec
 lea r11, [0x14003e3b0]
 lea rdx, [0x140043978]
 lea rcx, [local_1]
 mov qword ptr [local_1], r11
 call sub_14002eb7c
 int3 

0x140022af5:
 mov r8, qword ptr [rbx+0xc0]
 mov rdx, qword ptr [rbx+0xe958]
 mov rax, qword ptr [rbx+0x4b90]
 sub r8, r9
 dec rdx
 lea rcx, [rdi-1]
 and rdx, r8
 and rcx, r8
 inc r9
 mov al, byte ptr [rdx+rax]
 mov byte ptr [rcx+rsi], al

0x140022b23:
 cmp r9, qword ptr [rbx+0xe958]
 jbe 0x140022af5

0x140022b2c:
 mov rcx, qword ptr [rbx+0x4b90]
 test rcx, rcx
 je 0x140022b3d
 call sub_14002cfac

0x140022b3d:
 mov qword ptr [rbx+0x4b90], rsi

0x140022b44:
 lea rax, [rdi-1]
 mov qword ptr [rbx+0xe958], rdi
 mov qword ptr [rbx+0xe960], rax

0x140022b56:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x40
 pop rdi
 ret 
sub_140022980   endp
 
 int3 

0x140022b6c:
 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 push rdi
 push r12
 push r13
 sub rsp, 0x60
 mov edi, r9d
 mov rbx, r8
 mov rsi, rdx
 mov dword ptr [r8], edi
 mov ebp, 0x40
 lea rcx, [rax-0x58]
 mov r8, rbp
 xor edx, edx
 call 0x14002d190
 xor r13d, r13d
 mov r8, rdi
 mov rcx, r13
 lea r12d, [rbp-0x3f]
 cmp rdi, r13
 jbe 0x140022bc9

0x140022bb5:
 movzx eax, byte ptr [rcx+rsi]
 add rcx, r12
 and eax, 0xf
 add dword ptr [rsp+rax*4+0x20], r12d
 cmp rcx, rdi
 jb 0x140022bb5

0x140022bc9:
 lea rcx, [rbx+0xc88]
 add r8, r8
 xor edx, edx
 mov dword ptr [rsp+0x20], r13d
 call 0x14002d190
 lea rdx, [rbx+0x44]
 mov dword ptr [rbx+4], r13d
 mov r10d, r13d
 mov r9, r12
 mov dword ptr [rdx], r13d
 mov r11, rdx

0x140022bf3:
 add r10d, dword ptr [rsp+r9*4+0x20]
 mov ecx, 0x10
 sub cl, r9b
 mov eax, r10d
 add r10d, r10d
 shl eax, cl
 mov dword ptr [r11-0x3c], eax
 mov eax, dword ptr [rsp+r9*4+0x1c]
 add r9, r12
 add eax, dword ptr [r11]
 add r11, 4
 mov dword ptr [r11], eax
 cmp r9, 0x10
 jb 0x140022bf3
 lea rcx, [rsp+0x20]
 mov r8, rbp
 call 0x14002d490
 mov r11d, r13d
 cmp edi, r13d
 jbe 0x140022c60

0x140022c39:
 mov al, byte ptr [rsi]
 and al, 0xf
 je 0x140022c55
 movzx ecx, al
 mov eax, dword ptr [rsp+rcx*4+0x20]
 mov word ptr [rbx+rax*2+0xc88], r11w
 inc eax
 mov dword ptr [rsp+rcx*4+0x20], eax

0x140022c55:
 add r11d, r12d
 add rsi, r12
 cmp r11d, edi
 jb 0x140022c39

0x140022c60:
 cmp edi, 0x12a
 jb 0x140022c84
 cmp edi, 0x12b
 jbe 0x140022c78
 cmp edi, 0x132
 jne 0x140022c84

0x140022c78:
 mov dword ptr [rbx+0x84], 0xa
 jmp 0x140022c8e

0x140022c84:
 mov dword ptr [rbx+0x84], 7

0x140022c8e:
 mov ecx, dword ptr [rbx+0x84]
 mov r10d, r12d
 mov r8d, r12d
 shl r10d, cl
 mov r11d, r13d
 cmp r10d, r13d
 jbe 0x140022d1d
 lea rsi, [rbx+0x8]
 lea rbp, [rbx+0x88]
 lea r9, [rbx+0x488]

0x140022cb7:
 mov ecx, 0x10
 mov edx, r11d
 sub ecx, dword ptr [rbx+0x84]
 shl edx, cl
 jmp 0x140022cd7

0x140022cc9:
 cmp r8d, 0x10
 jae 0x140022cdb
 add r8d, r12d
 lea rsi, [rbx+r8*4+4]

0x140022cd7:
 cmp edx, dword ptr [rsi]
 jae 0x140022cc9

0x140022cdb:
 lea eax, [r8-1]
 mov byte ptr [rbp], r8b
 mov ecx, 0x10
 sub edx, dword ptr [rbx+rax*4+4]
 sub ecx, r8d
 mov eax, r8d
 shr edx, cl
 add edx, dword ptr [rbx+rax*4+0x44]
 cmp edx, edi
 jae 0x140022d0a
 movzx ecx, word ptr [rbx+rdx*2+0xc88]
 mov word ptr [r9], cx
 jmp 0x140022d0e

0x140022d0a:
 mov word ptr [r9], r13w

0x140022d0e:
 add r11d, r12d
 add r9, 2
 add rbp, r12
 cmp r11d, r10d
 jb 0x140022cb7

0x140022d1d:
 lea r11, [rsp+0x60]
 mov rbx, qword ptr [r11+0x20]
 mov rbp, qword ptr [r11+0x28]
 mov rsi, qword ptr [r11+0x30]
 mov rsp, r11
 pop r13
 pop r12
 pop rdi
 ret 
 int3 
; --------------------------------------------------------------------------
; sub_140022d38
; --------------------------------------------------------------------------
sub_140022d38   proc
 sub rsp, 0x28
 mov rcx, qword ptr [rcx]
 test rcx, rcx
 je 0x140022d49
 call sub_14002cfac

0x140022d49:
 add rsp, 0x28
 ret 
sub_140022d38   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140022d50
; --------------------------------------------------------------------------
sub_140022d50   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 add qword ptr [rcx+0x8], rdx
 mov rax, qword ptr [rcx+0x8]
 mov rbx, rcx
 cmp rax, qword ptr [rcx+0x10]
 jbe 0x140022de0
 mov r8, qword ptr [rcx+0x18]
 test r8, r8
 je 0x140022d9d
 cmp rax, r8
 jbe 0x140022d9d
 lea rdx, [0x14003c5e0]
 lea rcx, [0x140050e70]
 call sub_14000b39c
 lea rcx, [0x140050e70]
 call 0x14000b140

0x140022d9d:
 mov rdx, qword ptr [rbx+0x10]
 mov rcx, qword ptr [rbx]
 mov rax, rdx
 shr rax, 2
 lea rdi, [rax+rdx+0x20]
 cmp qword ptr [rbx+0x8], rdi
 cmova rdi, qword ptr [rbx+0x8]
 mov rdx, rdi
 shl rdx, 2
 call 0x14002cfec
 mov rsi, rax
 test rax, rax
 jne 0x140022dd9
 lea rcx, [0x140050e70]
 call 0x14000b140

0x140022dd9:
 mov qword ptr [rbx], rsi
 mov qword ptr [rbx+0x10], rdi

0x140022de0:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_140022d50   endp
 
; --------------------------------------------------------------------------
; sub_140022df0
; --------------------------------------------------------------------------
sub_140022df0   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 add qword ptr [rcx+0x8], rdx
 mov rax, qword ptr [rcx+0x8]
 mov rbx, rcx
 cmp rax, qword ptr [rcx+0x10]
 jbe 0x140022e80
 mov r8, qword ptr [rcx+0x18]
 test r8, r8
 je 0x140022e3d
 cmp rax, r8
 jbe 0x140022e3d
 lea rdx, [0x14003c5e0]
 lea rcx, [0x140050e70]
 call sub_14000b39c
 lea rcx, [0x140050e70]
 call 0x14000b140

0x140022e3d:
 mov rcx, qword ptr [rbx+0x10]
 mov rax, rcx
 shr rax, 2
 lea rdi, [rax+rcx+0x20]
 mov rcx, qword ptr [rbx]
 cmp qword ptr [rbx+0x8], rdi
 cmova rdi, qword ptr [rbx+0x8]
 mov rdx, rdi
 shl rdx, 4
 call 0x14002cfec
 mov rsi, rax
 test rax, rax
 jne 0x140022e79
 lea rcx, [0x140050e70]
 call 0x14000b140

0x140022e79:
 mov qword ptr [rbx], rsi
 mov qword ptr [rbx+0x10], rdi

0x140022e80:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_140022df0   endp
 
; --------------------------------------------------------------------------
; sub_140022e90
; --------------------------------------------------------------------------
sub_140022e90   proc
 local local_1[0xc]: byte ; [rsp]
 local local_2[0xc]: byte ; [rsp+0xc]

 push rbx
 sub rsp, 0x20
 mov rax, qword ptr [rcx+0xb8]
 xor r11d, r11d
 mov r9, rcx
 cmp rax, qword ptr [rcx+0xc0]
 je 0x140022eaf
 mov byte ptr [rax], r11b

0x140022eaf:
 lea rax, [local_1]
 lea r8, [rcx+4]
 lea rdx, [rcx+0xc8]
 mov qword ptr [local_2], rax
 lea rax, [local_1]
 mov ebx, 0xffff
 mov qword ptr [rsp+4], rax
 mov r10d, 0x26
 jmp 0x140022f0c

0x140022ed9:
 mov rcx, qword ptr [rdx]
 mov rax, qword ptr [rcx]
 mov qword ptr [rdx], rax
 lea rax, [local_1]
 mov qword ptr [rcx+0xc], rax
 mov rax, qword ptr [rsp+4]
 mov qword ptr [rcx+4], rax
 mov rax, qword ptr [rsp+4]
 mov qword ptr [rax+0xc], rcx
 mov qword ptr [rsp+4], rcx
 mov word ptr [rcx], bx
 movzx eax, byte ptr [r8]
 mov word ptr [rcx+2], ax

0x140022f0c:
 cmp qword ptr [rdx], r11
 jne 0x140022ed9
 add rdx, 8
 inc r8
 sub r10, 0x1
 jne 0x140022f0c
 mov rdx, qword ptr [rsp+4]
 lea rax, [local_1]
 cmp rdx, rax
 je 0x140023046
 jmp 0x140022f66

0x140022f32:
 movzx ecx, word ptr [rdx+2]
 movzx eax, word ptr [r8+2]
 add ecx, eax
 cmp ecx, 0x10000
 jge 0x140022f7b
 mov rcx, qword ptr [r8+0xc]
 mov rax, qword ptr [r8+4]
 mov qword ptr [rcx+4], rax
 mov rax, qword ptr [r8+0xc]
 mov rcx, qword ptr [r8+4]
 mov qword ptr [rcx+0xc], rax
 movzx eax, word ptr [r8+2]
 add word ptr [rdx+2], ax

0x140022f66:
 movzx eax, word ptr [rdx+2]
 lea r8d, [rax+rax*4]
 shl r8d, 2
 add r8, rdx
 cmp word ptr [r8], bx
 je 0x140022f32

0x140022f7b:
 mov rdx, qword ptr [rdx+4]
 lea rax, [local_1]
 cmp rdx, rax
 jne 0x140022f66
 jmp 0x140023041

0x140022f8d:
 mov rcx, qword ptr [rdx+0xc]
 mov rax, qword ptr [rdx+4]
 mov qword ptr [rcx+4], rax
 mov rcx, qword ptr [rdx+4]
 mov rax, qword ptr [rdx+0xc]
 mov qword ptr [rcx+0xc], rax
 movzx edx, word ptr [r10+2]
 cmp edx, 0x80
 jle 0x140022fe4
 lea eax, [rdx-0x81]
 shr eax, 7
 inc eax
 mov ecx, eax
 neg eax
 shl eax, 7
 add edx, eax

0x140022fc6:
 mov rax, qword ptr [r9+0x1f0]
 mov qword ptr [r10], rax
 mov qword ptr [r9+0x1f0], r10
 add r10, 0xa00
 sub rcx, 0x1
 jne 0x140022fc6

0x140022fe4:
 movsxd rax, edx
 movzx ecx, byte ptr [rax+r9+0x29]
 mov r11, rcx
 movzx eax, byte ptr [rcx+r9+4]
 cmp eax, edx
 je 0x14002302e
 dec ecx
 movsxd r11, ecx
 mov ecx, edx
 movzx eax, byte ptr [r11+r9+4]
 sub ecx, eax
 sub edx, ecx
 lea r8d, [rcx-1]
 lea edx, [rdx+rdx*4]
 movsxd rcx, r8d
 mov rax, qword ptr [r9+rcx*8+0xc8]
 shl edx, 2
 add rdx, r10
 mov qword ptr [rdx], rax
 mov qword ptr [r9+rcx*8+0xc8], rdx

0x14002302e:
 mov rax, qword ptr [r9+r11*8+0xc8]
 mov qword ptr [r10], rax
 mov qword ptr [r9+r11*8+0xc8], r10

0x140023041:
 mov rdx, qword ptr [rsp+4]

0x140023046:
 lea rax, [local_1]
 mov r10, rdx
 cmp rdx, rax
 jne 0x140022f8d
 add rsp, 0x20
 pop rbx
 ret 
sub_140022e90   endp
 
; --------------------------------------------------------------------------
; sub_14002305c
; --------------------------------------------------------------------------
sub_14002305c   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 cmp byte ptr [rcx+0xaa], 0x0
 movsxd rsi, edx
 mov rdi, rcx
 jne 0x1400230a3
 mov byte ptr [rcx+0xaa], 0xff
 call sub_140022e90
 mov rax, qword ptr [rdi+rsi*8+0xc8]
 test rax, rax
 je 0x1400230a3
 mov rcx, qword ptr [rax]
 mov qword ptr [rdi+rsi*8+0xc8], rcx
 jmp 0x140023141

0x1400230a3:
 mov r8d, esi
 mov rax, rsi
 lea rcx, [rdi+rsi*8+0xc8]

0x1400230b1:
 inc rax
 inc r8d
 add rcx, 8
 cmp rax, 0x26
 je 0x1400230f0
 cmp qword ptr [rcx], 0x0
 je 0x1400230b1
 movsxd rdx, r8d
 mov r9d, esi
 mov rbx, qword ptr [rdi+rdx*8+0xc8]
 mov rcx, qword ptr [rbx]
 mov qword ptr [rdi+rdx*8+0xc8], rcx
 mov rdx, rbx
 mov rcx, rdi
 call sub_1400215f4
 mov rax, rbx
 jmp 0x140023141

0x1400230f0:
 dec byte ptr [rdi+0xaa]
 movzx eax, byte ptr [rsi+rdi+4]
 mov rdx, qword ptr [rdi+0x210]
 lea ecx, [rax+rax*2]
 lea r8d, [rax+rax*4]
 mov rax, rdx
 sub rax, qword ptr [rdi+0x1f8]
 shl ecx, 2
 shl r8d, 2
 movsxd r9, ecx
 cmp rax, r9
 jle 0x14002313f
 movsxd rax, r8d
 sub rdx, r9
 sub qword ptr [rdi+0x200], rax
 mov rax, qword ptr [rdi+0x200]
 mov qword ptr [rdi+0x210], rdx
 jmp 0x140023141

0x14002313f:
 xor eax, eax

0x140023141:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_14002305c   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140023154
; --------------------------------------------------------------------------
sub_140023154   proc
 sub rsp, 0x28
 movsxd rax, edx
 mov r8, rcx
 movzx r10d, byte ptr [rax+rcx+0x29]
 mov rax, qword ptr [rcx+r10*8+0xc8]
 test rax, rax
 je 0x14002317e
 mov rdx, qword ptr [rax]
 mov qword ptr [rcx+r10*8+0xc8], rdx
 jmp 0x1400231c5

0x14002317e:
 mov rax, qword ptr [rcx+0xb8]
 movzx ecx, byte ptr [r10+rcx+4]
 lea edx, [rcx+rcx*4]
 shl edx, 2
 add rdx, rax
 mov qword ptr [r8+0xb8], rdx
 cmp rdx, qword ptr [r8+0xc0]
 jbe 0x1400231c5
 movzx eax, byte ptr [r10+r8+4]
 mov rcx, r8
 lea eax, [rax+rax*4]
 shl eax, 2
 sub rdx, rax
 mov qword ptr [r8+0xb8], rdx
 mov edx, r10d
 call sub_14002305c

0x1400231c5:
 add rsp, 0x28
 ret 
sub_140023154   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400231cc
; --------------------------------------------------------------------------
sub_1400231cc   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x38]
 arg_3 : qword, ; [rsp+0x40]
 arg_4 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x20
 movsxd rbp, r8d
 mov rsi, rdx
 mov rdi, rcx
 movzx r12d, byte ptr [rbp+rcx+0x29]
 movzx eax, byte ptr [rbp+rcx+0x2a]
 cmp r12d, eax
 jne 0x140023203
 mov rax, rdx
 jmp 0x14002323d

0x140023203:
 lea edx, [rbp+1]
 call sub_140023154
 mov rbx, rax
 test rax, rax
 je 0x14002323a
 lea r8d, [rbp+rbp*4]
 mov rdx, rsi
 mov rcx, rax
 shl r8d, 2
 call 0x14002d490
 mov rcx, qword ptr [rdi+r12*8+0xc8]
 mov qword ptr [rsi], rcx
 mov qword ptr [rdi+r12*8+0xc8], rsi

0x14002323a:
 mov rax, rbx

0x14002323d:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x20
 pop r12
 ret 
sub_1400231cc   endp
 
; --------------------------------------------------------------------------
; sub_140023258
; --------------------------------------------------------------------------
sub_140023258   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 mov rsi, rcx
 lea rcx, [rdx+0x4aa8]
 mov rbx, r9
 mov rdx, qword ptr [rcx+0xc0]
 mov rdi, r8
 cmp rdx, qword ptr [rcx+0xb8]
 je 0x140023294
 add rdx, -0x14
 mov qword ptr [rcx+0xc0], rdx
 jmp 0x1400232bb

0x140023294:
 cmp qword ptr [rcx+0xc8], 0x0
 je 0x1400232b1
 mov rdx, qword ptr [rcx+0xc8]
 mov rax, qword ptr [rdx]
 mov qword ptr [rcx+0xc8], rax
 jmp 0x1400232bb

0x1400232b1:
 xor edx, edx
 call sub_14002305c
 mov rdx, rax

0x1400232bb:
 test rdx, rdx
 je 0x1400232df
 mov eax, 0x1
 mov word ptr [rdx], ax
 mov rcx, qword ptr [rbx]
 mov qword ptr [rdx+2], rcx
 movzx ecx, word ptr [rbx+0x8]
 mov qword ptr [rdx+0xc], rsi
 mov word ptr [rdx+0xa], cx
 mov qword ptr [rdi+2], rdx

0x1400232df:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 mov rax, rdx
 add rsp, 0x20
 pop rdi
 ret 
sub_140023258   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400232f4
; --------------------------------------------------------------------------
sub_1400232f4   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x48]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x50]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 push r12
 push r13
 sub rsp, 0x20
 mov rsi, rcx
 mov ebp, 0x100
 xor edx, edx
 mov r8, rbp
 add rcx, 0x680
 call 0x14002d190
 lea rcx, [rsi+0x4aa8]
 call sub_1400216f8
 mov eax, dword ptr [rsi+0x674]
 mov edx, 0xc
 cmp eax, edx
 cmovl edx, eax
 or eax, 0xffffffff
 xor edi, edi
 sub eax, edx
 mov dword ptr [rsi+0x67c], eax
 mov rcx, qword ptr [rsi+0x4b68]
 cmp rcx, qword ptr [rsi+0x4b60]
 je 0x14002336b
 add rcx, -0x14
 mov qword ptr [rsi+0x4b68], rcx
 jmp 0x140023398

0x14002336b:
 cmp qword ptr [rsi+0x4b70], rdi
 je 0x140023387
 mov rcx, qword ptr [rsi+0x4b70]
 mov rax, qword ptr [rcx]
 mov qword ptr [rsi+0x4b70], rax
 jmp 0x140023398

0x140023387:
 lea rcx, [rsi+0x4aa8]
 xor edx, edx
 call sub_14002305c
 mov rcx, rax

0x140023398:
 mov qword ptr [rsi+0x648], rcx
 mov qword ptr [rsi+0x658], rcx
 mov qword ptr [rcx+0xc], rdi
 mov eax, dword ptr [rsi+0x674]
 mov ecx, 0x101
 mov edx, 0x80
 mov dword ptr [rsi+0x670], eax
 mov rax, qword ptr [rsi+0x648]
 mov word ptr [rax], bp
 mov rax, qword ptr [rsi+0x648]
 mov word ptr [rax+2], cx
 lea rcx, [rsi+0x4aa8]
 call sub_140023154
 mov rcx, qword ptr [rsi+0x648]
 mov r8d, edi
 mov qword ptr [rcx+4], rax
 mov rax, qword ptr [rsi+0x648]
 mov rdx, rdi
 mov rcx, qword ptr [rax+4]
 mov eax, dword ptr [rsi+0x67c]
 mov byte ptr [rsi+0xa81], dil
 mov dword ptr [rsi+0x678], eax
 mov qword ptr [rsi+0x660], rcx

0x140023417:
 mov rax, qword ptr [rsi+0x648]
 mov rcx, qword ptr [rax+4]
 mov byte ptr [rdx+rcx], r8b
 mov rax, qword ptr [rsi+0x648]
 inc r8d
 mov rcx, qword ptr [rax+4]
 add rdx, 0xa
 cmp r8d, ebp
 mov byte ptr [rcx+rdx-9], 0x1
 mov rax, qword ptr [rsi+0x648]
 mov rcx, qword ptr [rax+4]
 mov qword ptr [rcx+rdx-8], rdi
 jl 0x140023417
 mov r8d, edi
 lea r10, [rsi+0xa84]
 mov r13d, 2

0x140023462:
 lea r12d, [r8+2]
 lea r9, [0x14003e208]
 mov r11, r10

0x140023470:
 mov rbx, r11
 mov ebp, 8

0x140023478:
 movzx eax, word ptr [r9]
 mov ecx, 0x4000
 cdq 
 idiv r12d
 sub cx, ax
 mov word ptr [rbx], cx
 add rbx, 0x10
 sub rbp, 0x1
 jne 0x140023478
 lea rax, [0x14003e218]
 add r9, r13
 add r11, r13
 cmp r9, rax
 jl 0x140023470
 inc r8d
 sub r10, -0x80
 cmp r8d, 0x80
 jl 0x140023462
 lea rcx, [rsi+3]

0x1400234bb:
 lea edx, [r13+rdi]
 movzx eax, dx
 shl ax, 2
 add dx, ax
 mov eax, 0x10
 shl dx, 3

0x1400234d3:
 mov byte ptr [rcx-1], 3
 mov word ptr [rcx-3], dx
 mov byte ptr [rcx], 4
 add rcx, 4
 sub rax, 0x1
 jne 0x1400234d3
 inc edi
 cmp edi, 0x19
 jl 0x1400234bb
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x20
 pop r13
 pop r12
 pop rdi
 ret 
sub_1400232f4   endp
 
; --------------------------------------------------------------------------
; sub_140023508
; --------------------------------------------------------------------------
sub_140023508   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rdi, rcx
 mov byte ptr [rcx+0xa80], 0x1
 mov dword ptr [rcx+0x674], edx
 call sub_1400232f4
 xor ebx, ebx
 movabs rax, 0x404040404040404
 mov byte ptr [rdi+0x881], 2
 mov byte ptr [rdi+0x880], bl
 mov qword ptr [rdi+0x882], rax
 lea edx, [rbx+6]
 lea rcx, [rdi+0x88b]
 mov r8d, 0xf5
 mov byte ptr [rdi+0x88a], al
 call 0x14002d190
 lea rax, [rdi+0x780]

0x140023569:
 mov byte ptr [rax], bl
 inc ebx
 inc rax
 cmp ebx, 3
 jl 0x140023569
 mov r8d, 0x100
 mov edx, 0x1
 cmp ebx, r8d
 mov ecx, edx
 jge 0x1400235af
 movsxd rax, ebx
 sub r8d, ebx
 lea r9, [rax+rdi+0x780]
 mov eax, r8d

0x140023598:
 sub ecx, 0x1
 mov byte ptr [r9], bl
 jne 0x1400235a6
 inc edx
 inc ebx
 mov ecx, edx

0x1400235a6:
 inc r9
 sub rax, 0x1
 jne 0x140023598

0x1400235af:
 xor edx, edx
 lea rcx, [rdi+0x980]
 lea r8d, [rdx+0x40]
 call 0x14002d190
 lea rcx, [rdi+0x9c0]
 mov edx, 8
 mov r8d, 0xc0
 call 0x14002d190
 mov rbx, qword ptr [arg_1]
 mov byte ptr [rdi+0x642], 7
 add rsp, 0x20
 pop rdi
 ret 
sub_140023508   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400235ec
; --------------------------------------------------------------------------
sub_1400235ec   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x48]
 arg_3 : qword, ; [rsp+0x50]
 arg_4 : qword ; [rsp+0x58]

 local local_1: byte ; [rsp+0x20]
 local local_2: byte ; [rsp+0x21]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x30
 movzx r11d, word ptr [rcx]
 mov r8, qword ptr [rdx+0x660]
 mov rdi, rdx
 lea r9d, [r11-1]
 mov rbx, rcx
 cmp r8, qword ptr [rcx+4]
 je 0x140023668
 lea rcx, [r8-0xa]

0x140023624:
 mov rax, qword ptr [r8]
 lea rdx, [local_1]
 mov qword ptr [rdx], rax
 movzx eax, word ptr [r8+0x8]
 mov word ptr [rdx+0x8], ax
 mov rax, qword ptr [rcx]
 lea rdx, [local_1]
 mov qword ptr [r8], rax
 movzx eax, word ptr [rcx+0x8]
 sub r8, 0xa
 mov word ptr [r8+0x12], ax
 mov rax, qword ptr [rdx]
 mov qword ptr [rcx], rax
 movzx eax, word ptr [rdx+0x8]
 sub rcx, 0xa
 mov word ptr [rcx+0x12], ax
 cmp r8, qword ptr [rbx+4]
 jne 0x140023624

0x140023668:
 mov rax, qword ptr [rbx+4]
 xor esi, esi
 lea r10, [rbx+2]
 add byte ptr [rax+1], 4
 add word ptr [r10], 4
 movzx eax, byte ptr [r8+1]
 movzx edx, word ptr [r10]
 mov r12d, 0x1
 sub edx, eax
 cmp dword ptr [rdi+0x670], esi
 movzx eax, byte ptr [r8+1]
 setne sil
 add eax, esi
 sar eax, 0x1
 mov byte ptr [r8+1], al
 movzx eax, al
 mov word ptr [r10], ax

0x1400236aa:
 movzx eax, byte ptr [r8+0xb]
 add r8, 0xa
 lea ecx, [rax+rsi]
 sub edx, eax
 sar ecx, 0x1
 movzx eax, cl
 mov byte ptr [r8+1], cl
 add word ptr [r10], ax
 mov al, byte ptr [r8-9]
 cmp byte ptr [r8+1], al
 jbe 0x140023722
 mov rax, qword ptr [r8]
 lea rbp, [local_1]
 mov rcx, r8
 mov qword ptr [rbp], rax
 movzx eax, word ptr [r8+0x8]
 mov word ptr [rbp+0x8], ax

0x1400236e7:
 mov rax, qword ptr [rcx-0xa]
 mov qword ptr [rcx], rax
 movzx eax, word ptr [rcx-2]
 sub rcx, 0xa
 mov word ptr [rcx+0x12], ax
 cmp rcx, qword ptr [rbx+4]
 je 0x14002370e
 mov rax, qword ptr [local_1]
 shr rax, 8
 cmp al, byte ptr [rcx-9]
 ja 0x1400236e7

0x14002370e:
 lea rbp, [local_1]
 mov rax, qword ptr [rbp]
 mov qword ptr [rcx], rax
 movzx eax, word ptr [rbp+0x8]
 mov word ptr [rcx+0x8], ax

0x140023722:
 sub r9d, r12d
 jne 0x1400236aa
 inc r8
 cmp byte ptr [r8], r9b
 jne 0x1400237c4

0x140023733:
 sub r8, 0xa
 add r9d, r12d
 cmp byte ptr [r8], 0x0
 je 0x140023733
 sub word ptr [rbx], r9w
 add edx, r9d
 cmp word ptr [rbx], r12w
 jne 0x1400237c4
 mov r8, qword ptr [rbx+4]
 lea rcx, [local_1]
 mov rax, qword ptr [r8]
 mov qword ptr [rcx], rax
 movzx eax, word ptr [r8+0x8]
 mov word ptr [rcx+0x8], ax

0x140023765:
 mov rcx, qword ptr [local_1]
 sar edx, 0x1
 shr rcx, 8
 mov al, cl
 shr al, 0x1
 sub cl, al
 cmp edx, r12d
 mov byte ptr [local_2], cl
 jg 0x140023765
 lea eax, [r11+1]
 movsxd rcx, eax
 sar rcx, 0x1
 movzx eax, byte ptr [rcx+rdi+0x4ad1]
 mov rcx, rax
 mov rax, qword ptr [rdi+rax*8+0x4b70]
 mov qword ptr [r8], rax
 mov qword ptr [rdi+rcx*8+0x4b70], r8
 lea rcx, [local_1]
 mov rax, qword ptr [rcx]
 mov qword ptr [rdi+0x660], r10
 mov qword ptr [r10], rax
 movzx eax, word ptr [rcx+0x8]
 mov word ptr [r10+0x8], ax
 jmp 0x140023804

0x1400237c4:
 movzx r9d, word ptr [rbx]
 mov eax, edx
 lea r8d, [r11+1]
 sar eax, 0x1
 add r9d, r12d
 sar r8d, 0x1
 sub dx, ax
 sar r9d, 0x1
 add word ptr [r10], dx
 cmp r8d, r9d
 je 0x1400237f9
 mov rdx, qword ptr [rbx+4]
 lea rcx, [rdi+0x4aa8]
 call sub_14002187c
 mov qword ptr [rbx+4], rax

0x1400237f9:
 mov rax, qword ptr [rbx+4]
 mov qword ptr [rdi+0x660], rax

0x140023804:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x30
 pop r12
 ret 
sub_1400235ec   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_140023820
; --------------------------------------------------------------------------
sub_140023820   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x240]

 local local_1: byte ; [rsp+0x20]
 local local_2: byte ; [rsp+0x21]
 local local_3[0xe]: byte ; [rsp+0x22]
 local local_4: qword ; [rsp+0x30]
 local local_5[0xe]: byte ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x230
 mov rax, qword ptr [rcx+0x660]
 mov r10, qword ptr [rcx+0x648]
 mov rdi, rcx
 mov r9, qword ptr [rax+2]
 lea rbx, [local_4]
 mov r11d, 0x1
 test dl, dl
 jne 0x140023862
 cmp qword ptr [r10+0xc], 0x0
 mov qword ptr [local_4], rax
 lea rbx, [local_5]
 je 0x1400238c1

0x140023862:
 test r8, r8
 je 0x14002386d
 mov r10, qword ptr [r10+0xc]
 jmp 0x140023895

0x14002386d:
 mov r10, qword ptr [r10+0xc]
 cmp word ptr [r10], r11w
 je 0x140023891
 mov rax, qword ptr [rdi+0x660]
 mov r8, qword ptr [r10+4]
 mov cl, byte ptr [rax]
 jmp 0x14002388a

0x140023886:
 add r8, 0xa

0x14002388a:
 cmp byte ptr [r8], cl
 jne 0x140023886
 jmp 0x140023895

0x140023891:
 lea r8, [r10+2]

0x140023895:
 cmp qword ptr [r8+2], r9
 jne 0x1400238ab
 mov qword ptr [rbx], r8
 add rbx, 8
 cmp qword ptr [r10+0xc], 0x0
 je 0x1400238af
 jmp 0x14002386d

0x1400238ab:
 mov r10, qword ptr [r8+2]

0x1400238af:
 lea rax, [local_4]
 cmp rbx, rax
 jne 0x1400238c1

0x1400238b9:
 mov rax, r10
 jmp 0x14002396a

0x1400238c1:
 mov cl, byte ptr [r9]
 lea rax, [r9+1]
 mov byte ptr [local_1], cl
 mov qword ptr [local_3], rax
 cmp word ptr [r10], r11w
 je 0x140023932
 cmp r10, qword ptr [rdi+0x4ca0]
 jbe 0x140023968
 mov rax, qword ptr [r10+4]
 jmp 0x1400238ee

0x1400238ea:
 add rax, 0xa

0x1400238ee:
 cmp byte ptr [rax], cl
 jne 0x1400238ea
 movzx ecx, byte ptr [rax+1]
 movzx eax, word ptr [r10]
 movzx edx, word ptr [r10+2]
 sub ecx, r11d
 sub edx, eax
 lea eax, [rcx+rcx]
 sub edx, ecx
 cmp eax, edx
 ja 0x140023919
 lea eax, [rcx+rcx*4]
 xor ecx, ecx
 cmp eax, edx
 seta cl
 jmp 0x140023929

0x140023919:
 lea eax, [rax+rdx*2]
 lea ecx, [rdx+rdx]
 lea eax, [rdx+rax-1]
 xor edx, edx
 div ecx
 mov ecx, eax

0x140023929:
 add cl, r11b
 mov byte ptr [local_2], cl
 jmp 0x14002393a

0x140023932:
 mov al, byte ptr [r10+3]
 mov byte ptr [local_2], al

0x14002393a:
 sub rbx, 8
 lea r9, [local_1]
 mov rdx, rdi
 mov r8, qword ptr [rbx]
 mov rcx, r10
 call sub_140023258
 mov r10, rax
 test rax, rax
 je 0x140023968
 lea rax, [local_4]
 cmp rbx, rax
 jne 0x14002393a
 jmp 0x1400238b9

0x140023968:
 xor eax, eax

0x14002396a:
 mov rbx, qword ptr [arg_1]
 add rsp, 0x230
 pop rdi
 ret 
sub_140023820   endp
 
 int3 

0x14002397c:
 mov r11, rsp
 mov qword ptr [r11+0x8], rbx
 mov qword ptr [r11+0x10], rbp
 mov qword ptr [r11+0x18], rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x40
 mov rdx, qword ptr [rcx+0x660]
 xor r8d, r8d
 mov rbx, rcx
 mov rax, qword ptr [rdx]
 lea rcx, [r11-0x48]
 lea r9d, [r8+1]
 mov qword ptr [rcx], rax
 movzx eax, word ptr [rdx+0x8]
 mov word ptr [rcx+0x8], ax
 mov rbp, qword ptr [r11-0x48]
 mov rax, rbp
 shr rax, 8
 cmp al, 0x1f
 jae 0x140023a6e
 mov rax, qword ptr [rbx+0x648]
 mov rdx, qword ptr [rax+0xc]
 test rdx, rdx
 je 0x140023a6e
 cmp word ptr [rdx], r9w
 je 0x140023a5e
 mov r8, qword ptr [rdx+4]
 cmp byte ptr [r8], bpl
 je 0x140023a49

0x1400239f1:
 add r8, 0xa
 cmp byte ptr [r8], bpl
 jne 0x1400239f1
 mov al, byte ptr [r8-9]
 cmp byte ptr [r8+1], al
 jb 0x140023a49
 mov rax, qword ptr [r8]
 lea rcx, [r8-0xa]
 lea r9, [rsp+0x30]
 mov qword ptr [r9], rax
 movzx eax, word ptr [r8+0x8]
 mov word ptr [r9+0x8], ax
 mov rax, qword ptr [rcx]
 mov r9d, 0x1
 mov qword ptr [r8], rax
 movzx eax, word ptr [rcx+0x8]
 mov word ptr [r8+0x8], ax
 lea r8, [rsp+0x30]
 mov rax, qword ptr [r8]
 mov qword ptr [rcx], rax
 movzx eax, word ptr [r8+0x8]
 mov r8, rcx
 mov word ptr [rcx+0x8], ax

0x140023a49:
 mov al, byte ptr [r8+1]
 cmp al, 0x73
 jae 0x140023a6e
 add al, 2
 mov byte ptr [r8+1], al
 add word ptr [rdx+2], 2
 jmp 0x140023a6e

0x140023a5e:
 lea r8, [rdx+2]
 mov al, byte ptr [r8+1]
 cmp al, 0x20
 adc al, 0x0
 mov byte ptr [r8+1], al

0x140023a6e:
 cmp dword ptr [rbx+0x670], 0x0
 jne 0x140023ad8
 mov dl, r9b
 mov rcx, rbx
 call sub_140023820
 mov rcx, qword ptr [rbx+0x660]
 mov qword ptr [rcx+2], rax
 mov rax, qword ptr [rbx+0x660]
 mov rcx, qword ptr [rax+2]
 mov qword ptr [rbx+0x658], rcx
 mov qword ptr [rbx+0x648], rcx
 test rcx, rcx
 jne 0x140023aba

0x140023aab:
 mov rcx, rbx
 call sub_1400232f4
 mov byte ptr [rbx+0xa80], 0x0

0x140023aba:
 lea r11, [rsp+0x40]
 mov rbx, qword ptr [r11+0x30]
 mov rbp, qword ptr [r11+0x38]
 mov rsi, qword ptr [r11+0x40]
 mov rsp, r11
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 ret 

0x140023ad8:
 mov rax, qword ptr [rbx+0x4ca0]
 mov byte ptr [rax], bpl
 add qword ptr [rbx+0x4ca0], r9
 mov r14, qword ptr [rbx+0x4ca0]
 cmp r14, qword ptr [rbx+0x4cb8]
 jae 0x140023aab
 mov rdi, qword ptr [rsp+0x22]
 test rdi, rdi
 je 0x140023b52
 cmp rdi, r14
 ja 0x140023b2a
 xor edx, edx
 mov rcx, rbx
 call sub_140023820
 mov rdi, rax
 mov qword ptr [rsp+0x22], rax
 test rax, rax
 je 0x140023aab
 mov rbp, qword ptr [rsp+0x20]
 mov r9d, 0x1

0x140023b2a:
 add dword ptr [rbx+0x670], -1
 jne 0x140023b6e
 mov rcx, qword ptr [rbx+0x648]
 xor edx, edx
 mov r14, rdi
 cmp qword ptr [rbx+0x658], rcx
 setne dl
 sub qword ptr [rbx+0x4ca0], rdx
 jmp 0x140023b6e

0x140023b52:
 mov rax, qword ptr [rbx+0x660]
 mov qword ptr [rax+2], r14
 mov rdi, qword ptr [rbx+0x648]
 mov qword ptr [rsp+0x22], rdi
 mov rbp, qword ptr [rsp+0x20]

0x140023b6e:
 mov rax, qword ptr [rbx+0x648]
 movzx ecx, byte ptr [rsp+0x21]
 mov rsi, qword ptr [rbx+0x658]
 movzx r13d, word ptr [rax+2]
 movzx r15d, word ptr [rax]
 sub r13d, ecx
 sub r13d, r15d
 add r13d, r9d
 cmp rsi, rax
 je 0x140023d1a
 mov r11d, 3

0x140023ba2:
 movzx r12d, word ptr [rsi]
 cmp r12d, r9d
 je 0x140023c11
 test r12b, r9b
 jne 0x140023bd9
 mov rdx, qword ptr [rsi+4]
 mov r8d, r12d
 lea rcx, [rbx+0x4aa8]
 shr r8d, 0x1
 call sub_1400231cc
 mov qword ptr [rsi+4], rax
 test rax, rax
 je 0x140023aab
 mov r11d, 3

0x140023bd9:
 movzx r8d, word ptr [rsi+2]
 xor edx, edx
 mov eax, r12d
 shl eax, 3
 cmp r8d, eax
 mov eax, r12d
 setbe dl
 xor ecx, ecx
 shl eax, 2
 cmp eax, r15d
 lea eax, [r12+r12]
 setbe cl
 and dx, cx
 add dx, dx
 cmp eax, r15d
 adc dx, r8w
 mov word ptr [rsi+2], dx
 jmp 0x140023c6d

0x140023c11:
 lea rcx, [rbx+0x4aa8]
 mov edx, r9d
 call sub_140023154
 test rax, rax
 je 0x140023aab
 mov rcx, qword ptr [rsi+2]
 mov qword ptr [rax], rcx
 movzx ecx, word ptr [rsi+0xa]
 mov word ptr [rax+0x8], cx
 mov qword ptr [rsi+4], rax
 mov cl, byte ptr [rax+1]
 cmp cl, 0x1e
 jae 0x140023c4b
 add cl, cl
 mov byte ptr [rax+1], cl
 jmp 0x140023c4f

0x140023c4b:
 mov byte ptr [rax+1], 0x78

0x140023c4f:
 movzx eax, byte ptr [rax+1]
 xor ecx, ecx
 lea r11d, [rcx+3]
 cmp r15d, r11d
 seta cl
 add cx, word ptr [rbx+0x66c]
 add cx, ax
 mov word ptr [rsi+2], cx

0x140023c6d:
 movzx r9d, word ptr [rsi+2]
 movzx eax, byte ptr [rsp+0x21]
 lea r10d, [r9+r13]
 lea r8d, [r9+6]
 imul r8d, eax
 lea eax, [r10+r10*2]
 add r8d, r8d
 add eax, eax
 cmp r8d, eax
 mov eax, r10d
 jae 0x140023cb1
 shl eax, 2
 xor ecx, ecx
 cmp r8d, eax
 setae cl
 xor eax, eax
 cmp r8d, r10d
 seta al
 add r9w, r11w
 lea edx, [rcx+rax+1]
 jmp 0x140023ce1

0x140023cb1:
 imul eax, eax, 0xf
 xor edx, edx
 cmp r8d, eax
 lea eax, [r10+r10*2]
 setae dl
 xor ecx, ecx
 shl eax, 2
 cmp r8d, eax
 lea eax, [r10+r10*8]
 setae cl
 add edx, ecx
 xor ecx, ecx
 cmp r8d, eax
 setae cl
 lea edx, [rdx+rcx+4]
 add r9w, dx

0x140023ce1:
 mov rax, qword ptr [rsi+4]
 mov word ptr [rsi+2], r9w
 lea rcx, [r12+r12*4]
 mov qword ptr [rax+rcx*2+2], r14
 mov byte ptr [rax+rcx*2], bpl
 mov byte ptr [rax+rcx*2+1], dl
 mov r9d, 0x1
 add r12w, r9w
 mov word ptr [rsi], r12w
 mov rsi, qword ptr [rsi+0xc]
 cmp rsi, qword ptr [rbx+0x648]
 jne 0x140023ba2

0x140023d1a:
 mov qword ptr [rbx+0x648], rdi
 mov qword ptr [rbx+0x658], rdi
 jmp 0x140023aba
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140023d30
; --------------------------------------------------------------------------
sub_140023d30   proc
 local local_1: qword ; [rsp+0x20]

 sub rsp, 0x38
 mov qword ptr [rdx+0x660], r8
 add byte ptr [r8+1], 4
 add word ptr [rcx+2], 4
 mov al, byte ptr [r8-9]
 mov r9, r8
 cmp byte ptr [r8+1], al
 jbe 0x140023da3
 mov rax, qword ptr [r9]
 add r8, -0xa
 lea r10, [local_1]
 mov qword ptr [r10], rax
 movzx eax, word ptr [r9+0x8]
 mov word ptr [r10+0x8], ax
 mov rax, qword ptr [r8]
 mov qword ptr [r9], rax
 movzx eax, word ptr [r8+0x8]
 mov word ptr [r9+0x8], ax
 lea r9, [local_1]
 mov rax, qword ptr [r9]
 mov qword ptr [r8], rax
 movzx eax, word ptr [r9+0x8]
 mov word ptr [r8+0x8], ax
 mov qword ptr [rdx+0x660], r8
 cmp byte ptr [r8+1], 0x7c
 jbe 0x140023da3
 call sub_1400235ec

0x140023da3:
 add rsp, 0x38
 ret 
sub_140023d30   endp
 

0x140023da8:
 push rbx
 sub rsp, 0x20
 movzx eax, word ptr [rcx+2]
 mov rbx, rdx
 mov r10, rcx
 mov dword ptr [rdx+0x4a9c], eax
 mov eax, dword ptr [rbx+0x4a90]
 mov r9, qword ptr [rcx+4]
 xor edx, edx
 div dword ptr [rbx+0x4a9c]
 xor edx, edx
 mov r8d, eax
 mov dword ptr [rbx+0x4a90], eax
 mov eax, dword ptr [rbx+0x4a8c]
 sub eax, dword ptr [rbx+0x4a88]
 mov ecx, dword ptr [rbx+0x4a9c]
 div r8d
 cmp eax, ecx
 mov r8d, eax
 jl 0x140023dfe

0x140023df7:
 xor al, al
 jmp 0x140023ea7

0x140023dfe:
 movzx edx, byte ptr [r9+1]
 cmp eax, edx
 jge 0x140023e54
 lea eax, [rdx+rdx]
 mov dword ptr [rbx+0x4a98], edx
 mov qword ptr [rbx+0x660], r9
 cmp eax, ecx
 seta al
 mov byte ptr [rbx+0xa81], al
 movzx eax, al
 add dword ptr [rbx+0x678], eax
 mov eax, 4
 add edx, eax
 mov byte ptr [r9+1], dl
 add word ptr [r10+2], ax
 cmp edx, 0x7c
 jle 0x140023e4b
 mov rdx, rbx
 mov rcx, r10
 call sub_1400235ec

0x140023e4b:
 and dword ptr [rbx+0x4a94], 0x0
 jmp 0x140023ea5

0x140023e54:
 mov r11, qword ptr [rbx+0x660]
 test r11, r11
 je 0x140023df7
 mov byte ptr [rbx+0xa81], 0x0
 movzx ecx, word ptr [r10]
 dec ecx
 jmp 0x140023e74

0x140023e6f:
 sub ecx, 0x1
 je 0x140023ead

0x140023e74:
 movzx eax, byte ptr [r9+0xb]
 add r9, 0xa
 add edx, eax
 cmp edx, r8d
 jle 0x140023e6f
 mov dword ptr [rbx+0x4a98], edx
 movzx eax, byte ptr [r9+1]
 mov r8, r9
 sub edx, eax
 mov rcx, r10
 mov dword ptr [rbx+0x4a94], edx
 mov rdx, rbx
 call sub_140023d30

0x140023ea5:
 mov al, 0x1

0x140023ea7:
 add rsp, 0x20
 pop rbx
 ret 

0x140023ead:
 movzx eax, byte ptr [r11]
 mov cl, byte ptr [rax+rbx+0x980]
 mov al, byte ptr [rbx+0xa80]
 mov dword ptr [rbx+0x4a94], edx
 mov byte ptr [rbx+0xa82], cl
 movzx ecx, byte ptr [r9]
 mov byte ptr [rcx+rbx+0x680], al
 movzx eax, word ptr [r10]
 and qword ptr [rbx+0x660], 0x0
 lea edx, [rax-1]
 mov dword ptr [rbx+0x668], eax

0x140023eea:
 mov al, byte ptr [rbx+0xa80]
 sub r9, 0xa
 sub edx, 0x1
 movzx ecx, byte ptr [r9]
 mov byte ptr [rcx+rbx+0x680], al
 jne 0x140023eea
 mov eax, dword ptr [rbx+0x4a9c]
 mov dword ptr [rbx+0x4a98], eax
 jmp 0x140023ea5
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140023f14
; --------------------------------------------------------------------------
sub_140023f14   proc \
 arg_1 : qword, ; [rsp+0x8]
 arg_2 : qword ; [rsp+0x10]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rdi
 mov eax, 0x100
 movsxd rdi, r8d
 mov rbx, rdx
 cmp word ptr [rcx], ax
 je 0x140023fbe
 mov rax, qword ptr [rcx+0xc]
 movzx r10d, word ptr [rcx]
 xor r8d, r8d
 movzx r9d, word ptr [rax]
 movzx eax, word ptr [rcx+2]
 mov ecx, r8d
 sub r9d, r10d
 mov r11, r8
 cmp edi, r9d
 setl r11b
 imul r10d, r10d, 0xb
 cmp eax, r10d
 setl cl
 lea eax, [rcx+rcx]
 movzx ecx, byte ptr [rdi+rdx+0x77f]
 cdqe 
 add r11, rax
 cmp dword ptr [rdx+0x668], edi
 mov eax, r8d
 setg al
 shl rcx, 4
 shl eax, 2
 cdqe 
 add r11, rax
 movzx eax, byte ptr [rdx+0xa82]
 add r11, rcx
 add r11, rax
 lea r9, [rdx+r11*4]
 movzx eax, word ptr [r9]
 mov cl, byte ptr [r9+2]
 mov edx, eax
 sar edx, cl
 sub ax, dx
 cmp edx, r8d
 sete r8b
 mov word ptr [r9], ax
 add r8d, edx
 mov dword ptr [rbx+0x4a9c], r8d
 jmp 0x140023fcf

0x140023fbe:
 lea r9, [rdx+0x640]
 mov dword ptr [rdx+0x4a9c], 0x1

0x140023fcf:
 mov rbx, qword ptr [arg_1]
 mov rdi, qword ptr [arg_2]
 mov rax, r9
 ret 
sub_140023f14   endp
 
 int3 
 int3 
 int3 

0x140023fe0:
 mov qword ptr [rsp+0x8], rbx
 mov qword ptr [rsp+0x10], rsi
 push rdi
 sub rsp, 0x820
 movzx esi, word ptr [rcx]
 mov rbx, rdx
 mov rdi, rcx
 sub esi, dword ptr [rdx+0x668]
 mov r8d, esi
 call sub_140023f14
 mov rcx, qword ptr [rdi+4]
 mov r8b, byte ptr [rbx+0xa80]
 sub rcx, 0xa
 mov r11, rax
 lea rdx, [rsp+0x20]
 xor r10d, r10d

0x140024023:
 add rcx, 0xa
 movzx eax, byte ptr [rcx]
 cmp byte ptr [rax+rbx+0x680], r8b
 je 0x140024023
 movzx eax, byte ptr [rcx+1]
 mov qword ptr [rdx], rcx
 add rdx, 8
 add r10d, eax
 sub esi, 0x1
 jne 0x140024023
 add dword ptr [rbx+0x4a9c], r10d
 mov eax, dword ptr [rbx+0x4a90]
 xor edx, edx
 div dword ptr [rbx+0x4a9c]
 xor edx, edx
 mov ecx, eax
 mov dword ptr [rbx+0x4a90], eax
 mov eax, dword ptr [rbx+0x4a8c]
 sub eax, dword ptr [rbx+0x4a88]
 div ecx
 mov r9d, eax
 mov eax, dword ptr [rbx+0x4a9c]
 cmp r9d, eax
 jl 0x140024089
 xor al, al
 jmp 0x14002417b

0x140024089:
 cmp r9d, r10d
 mov rdx, qword ptr [rsp+0x20]
 lea r8, [rsp+0x20]
 jge 0x140024127
 movzx ecx, byte ptr [rdx+1]
 jmp 0x1400240af

0x1400240a2:
 add r8, 8
 mov rdx, qword ptr [r8]
 movzx eax, byte ptr [rdx+1]
 add ecx, eax

0x1400240af:
 cmp ecx, r9d
 jle 0x1400240a2
 mov dword ptr [rbx+0x4a98], ecx
 movzx eax, byte ptr [rdx+1]
 sub ecx, eax
 mov dword ptr [rbx+0x4a94], ecx
 mov cl, byte ptr [r11+2]
 cmp cl, 7
 jae 0x1400240f2
 add byte ptr [r11+3], 0xff
 jne 0x1400240f2
 movzx eax, word ptr [r11]
 add ax, ax
 mov word ptr [r11], ax
 mov eax, 3
 shl al, cl
 inc cl
 mov byte ptr [r11+2], cl
 mov byte ptr [r11+3], al

0x1400240f2:
 mov qword ptr [rbx+0x660], rdx
 add byte ptr [rdx+1], 4
 add word ptr [rdi+2], 4
 cmp byte ptr [rdx+1], 0x7c
 jbe 0x140024113
 mov rdx, rbx
 mov rcx, rdi
 call sub_1400235ec

0x140024113:
 mov eax, dword ptr [rbx+0x67c]
 inc byte ptr [rbx+0xa80]
 mov dword ptr [rbx+0x678], eax
 jmp 0x140024179

0x140024127:
 mov dword ptr [rbx+0x4a94], r10d
 mov dword ptr [rbx+0x4a98], eax
 movzx r9d, word ptr [rdi]
 sub r9d, dword ptr [rbx+0x668]
 lea r8, [rsp+0x20]
 sub r8, 8

0x140024148:
 add r8, 8
 sub r9d, 0x1
 mov rcx, qword ptr [r8]
 movzx edx, byte ptr [rcx]
 mov cl, byte ptr [rbx+0xa80]
 mov byte ptr [rdx+rbx+0x680], cl
 jne 0x140024148
 movzx ecx, word ptr [rbx+0x4a9c]
 add word ptr [r11], cx
 movzx ecx, word ptr [rdi]
 mov dword ptr [rbx+0x668], ecx

0x140024179:
 mov al, 0x1

0x14002417b:
 lea r11, [rsp+0x820]
 mov rbx, qword ptr [r11+0x10]
 mov rsi, qword ptr [r11+0x18]
 mov rsp, r11
 pop rdi
 ret 

0x140024190:
 mov qword ptr [rsp+0x8], rbx
 push rdi
 sub rsp, 0x20
 cmp dword ptr [rcx+0x4aa8], 0x0
 mov rdi, rcx
 je 0x1400241b9
 and dword ptr [rcx+0x4aa8], 0x0
 mov rcx, qword ptr [rcx+0x4b58]
 call sub_14002cfac

0x1400241b9:
 lea rcx, [rdi+0x4aa8]
 mov edx, 0x1
 call sub_140021670
 mov edx, 2
 mov rcx, rdi
 mov rbx, qword ptr [rsp+0x30]
 add rsp, 0x20
 pop rdi
 jmp sub_140023508
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400241e4
; --------------------------------------------------------------------------
sub_1400241e4   proc \
 arg_1 : qword, ; [rsp+0x60]
 arg_2 : qword, ; [rsp+0x68]
 arg_3 : qword ; [rsp+0x70]

 local local_1[0x10]: byte ; [rsp+0x20]
 local local_2: qword ; [rsp+0x30]

 push rsi
 push rdi
 push r13
 sub rsp, 0x40
 mov qword ptr [local_2], -2
 mov qword ptr [arg_2], rbx
 mov qword ptr [arg_3], rbp
 mov rbx, rcx
 cmp qword ptr [rcx+0x38], 0x0
 jne 0x140024228
 mov edi, 0x400400
 mov rcx, rdi
 call 0x14002c914
 mov qword ptr [rbx+0x38], rax
 mov r8, rdi
 xor edx, edx
 mov rcx, rax
 call 0x14002d190

0x140024228:
 cmp qword ptr [rbx+0x28], 0x0
 jne 0x1400242fa
 mov ebp, dword ptr [rbx+0x30]
 add ebp, ebp
 mov esi, ebp
 mov r13d, 0x4af8
 mov rax, r13
 mul rsi
 mov rcx, -1
 cmovo rax, rcx
 add rax, 8
 cmovb rax, rcx
 mov rcx, rax
 call 0x14002c914
 mov qword ptr [arg_1], rax
 test rax, rax
 je 0x140024294
 mov dword ptr [rax], esi
 lea rdi, [rax+0x8]
 lea rax, [0x140021c7c]
 mov qword ptr [local_1], rax
 lea r9, [0x140021c54]
 mov r8d, esi
 mov rdx, r13
 mov rcx, rdi
 call sub_14002e53c
 jmp 0x140024296

0x140024294:
 xor edi, edi

0x140024296:
 mov qword ptr [rbx+0x28], rdi
 mov r8, rsi
 imul r8, r8, 0x4af8
 xor edx, edx
 mov rcx, rdi
 call 0x14002d190
 test ebp, ebp
 je 0x1400242fa
 xor edi, edi

0x1400242b4:
 mov rbp, qword ptr [rbx+0x28]
 cmp qword ptr [rdi+rbp+0x4ae0], 0x0
 jne 0x1400242f1
 mov dword ptr [rdi+rbp+0x4aec], 0x4100
 mov ecx, 0x30c00
 call sub_14002d848
 mov qword ptr [rdi+rbp+0x4ae0], rax
 test rax, rax
 jne 0x1400242f1
 lea rcx, [0x140050e70]
 call 0x14000b140

0x1400242f1:
 add rdi, r13
 sub rsi, 0x1
 jne 0x1400242b4

0x1400242fa:
 mov rbx, qword ptr [arg_2]
 mov rbp, qword ptr [arg_3]
 add rsp, 0x40
 pop r13
 pop rdi
 pop rsi
 ret 
sub_1400241e4   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140024310
; --------------------------------------------------------------------------
sub_140024310   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x48]
 arg_3 : qword, ; [rsp+0x50]
 arg_4 : qword ; [rsp+0x58]

 local local_1: qword ; [rsp+0x20]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x30
 and dword ptr [rcx+0x58d8], 0x0
 mov rsi, rcx
 add rcx, 8
 call sub_140011458
 cmp dword ptr [rsi+0x58e0], 2
 mov r12d, 0x1
 mov edi, eax
 jne 0x14002437c
 lea rcx, [rsi+0x8]
 mov edx, r12d
 call sub_140011440
 cmp edi, 0x8000
 jb 0x140024373

0x140024361:
 mov r8d, dword ptr [rsi+0xb4]
 mov edx, dword ptr [rsi+0xb8]
 jmp 0x1400245fa

0x140024373:
 add edi, edi
 and dword ptr [rsi+0x58e0], 0x0

0x14002437c:
 shr edi, 8
 xor ebx, ebx
 xor r9d, r9d
 cmp dword ptr [rsi+0x58c8], 0x25
 lea r8, [0x140000000]
 jae 0x1400243db

0x140024394:
 cmp ebx, r12d
 jne 0x1400243a4
 mov ecx, dword ptr [rsi+0x58d4]
 add ecx, 3
 jmp 0x1400243ac

0x1400243a4:
 mov ecx, dword ptr [r9+r8+0x45720]

0x1400243ac:
 mov edx, dword ptr [r9+r8+0x456e0]
 mov eax, 0xff
 sar eax, cl
 xor edx, edi
 not eax
 test edx, eax
 je 0x1400243cc
 add ebx, r12d
 add r9, 4
 jmp 0x140024394

0x1400243cc:
 cmp ebx, r12d
 je 0x140024417
 mov edx, dword ptr [r8+rbx*4+0x45720]
 jmp 0x14002442a

0x1400243db:
 cmp ebx, 3
 jne 0x1400243ea
 mov ecx, dword ptr [rsi+0x58d4]
 add ecx, ebx
 jmp 0x1400243f2

0x1400243ea:
 mov ecx, dword ptr [r9+r8+0x456a0]

0x1400243f2:
 mov edx, dword ptr [r9+r8+0x45660]
 mov eax, 0xff
 sar eax, cl
 xor edx, edi
 not eax
 test edx, eax
 je 0x140024412
 add ebx, r12d
 add r9, 4
 jmp 0x1400243db

0x140024412:
 cmp ebx, 3
 jne 0x140024422

0x140024417:
 mov edx, dword ptr [rsi+0x58d4]
 add edx, 3
 jmp 0x14002442a

0x140024422:
 mov edx, dword ptr [r8+rbx*4+0x456a0]

0x14002442a:
 lea rcx, [rsi+0x8]
 call sub_140011440
 cmp ebx, 9
 jb 0x14002454f
 jne 0x14002444a
 add dword ptr [rsi+0x58e0], r12d
 jmp 0x140024361

0x14002444a:
 and dword ptr [rsi+0x58e0], 0x0
 cmp ebx, 0xe
 jne 0x1400244b8
 lea rcx, [rsi+0x8]
 call sub_140011458
 lea r9, [0x140045418]
 lea r8d, [rbx-0xb]
 mov edx, eax
 lea rax, [0x140045440]
 mov rcx, rsi
 mov qword ptr [local_1], rax
 call sub_140021bcc
 lea rcx, [rsi+0x8]
 lea edi, [rax+5]
 call sub_140011458
 lea rcx, [rsi+0x8]
 mov ebx, eax
 mov edx, 0xf
 bts ebx, 0x10
 shr ebx, 0x1
 call sub_140011440
 mov dword ptr [rsi+0xb4], edi
 mov dword ptr [rsi+0xb8], ebx
 mov r8d, edi
 mov edx, ebx
 jmp 0x1400245fa

0x1400244b8:
 mov eax, dword ptr [rsi+0xb0]
 sub eax, ebx
 lea ecx, [r12+rax]
 and ecx, 3
 mov edi, dword ptr [rsi+rcx*4+0xa0]
 lea rcx, [rsi+0x8]
 call sub_140011458
 lea r9, [0x1400453b0]
 mov r8d, 2
 mov edx, eax
 lea rax, [0x1400453e0]
 mov rcx, rsi
 mov qword ptr [local_1], rax
 call sub_140021bcc
 lea r8d, [rax+2]
 cmp r8d, 0x101
 jne 0x140024518
 cmp ebx, 0xa
 jne 0x140024518
 xor dword ptr [rsi+0x58d4], r12d
 jmp 0x140024602

0x140024518:
 cmp edi, 0x100
 jbe 0x140024523
 add r8d, r12d

0x140024523:
 cmp edi, dword ptr [rsi+0x58f0]
 jb 0x14002452e
 add r8d, r12d

0x14002452e:
 mov eax, dword ptr [rsi+0xb0]
 mov edx, edi
 mov dword ptr [rsi+rax*4+0xa0], edi
 mov dword ptr [rsi+0xb4], r8d
 mov dword ptr [rsi+0xb8], edi
 jmp 0x1400245e8

0x14002454f:
 mov eax, dword ptr [rsi+0x58c8]
 and dword ptr [rsi+0x58e0], 0x0
 lea ecx, [rbx+rax]
 mov eax, ecx
 shr eax, 4
 sub ecx, eax
 mov dword ptr [rsi+0x58c8], ecx
 lea rcx, [rsi+0x8]
 call sub_140011458
 lea r9, [0x140045530]
 mov r8d, 5
 mov edx, eax
 lea rax, [0x140045550]
 mov rcx, rsi
 mov qword ptr [local_1], rax
 call sub_140021bcc
 movzx ecx, al
 movzx edx, word ptr [rsi+rcx*2+0x4fba]
 sub ecx, r12d
 cmp ecx, 0xff
 je 0x1400245c6
 movsxd rcx, ecx
 movzx eax, word ptr [rsi+rcx*2+0x4fba]
 mov word ptr [rsi+rcx*2+0x4fba], dx
 mov word ptr [rsi+rcx*2+0x4fbc], ax

0x1400245c6:
 mov eax, dword ptr [rsi+0xb0]
 add ebx, 2
 add edx, r12d
 mov dword ptr [rsi+rax*4+0xa0], edx
 mov dword ptr [rsi+0xb4], ebx
 mov dword ptr [rsi+0xb8], edx
 mov r8d, ebx

0x1400245e8:
 mov eax, dword ptr [rsi+0xb0]
 add eax, r12d
 and eax, 3
 mov dword ptr [rsi+0xb0], eax

0x1400245fa:
 mov rcx, rsi
 call sub_140021b70

0x140024602:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x30
 pop r12
 ret 
sub_140024310   endp
 
 int3 
 int3 
 int3 

0x140024620:
 mov qword ptr [rsp+0x10], rbx
 mov qword ptr [rsp+0x18], rbp
 mov qword ptr [rsp+0x20], rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x30
 and dword ptr [rcx+0x58d8], 0x0
 add dword ptr [rcx+0x58ec], 0x10
 cmp dword ptr [rcx+0x58ec], 0xff
 mov rbx, rcx
 jbe 0x140024669
 shr dword ptr [rcx+0x58e8], 0x1
 mov dword ptr [rcx+0x58ec], 0x90

0x140024669:
 mov r13d, dword ptr [rcx+0x58cc]
 add rcx, 8
 call sub_140011458
 mov r11d, eax
 mov eax, dword ptr [rbx+0x58cc]
 cmp eax, 0x7a
 jb 0x14002469d
 lea rax, [0x140045440]
 lea r9, [0x140045418]
 mov r8d, 3
 jmp 0x1400246b6

0x14002469d:
 cmp eax, 0x40
 jb 0x1400246ca
 lea rax, [0x1400453e0]
 lea r9, [0x1400453b0]
 mov r8d, 2

0x1400246b6:
 mov edx, r11d
 mov rcx, rbx
 mov qword ptr [rsp+0x20], rax
 call sub_140021bcc
 mov edi, eax
 jmp 0x140024701

0x1400246ca:
 cmp r11d, 0x100
 jae 0x1400246dd
 mov edi, r11d
 mov edx, 0x10
 jmp 0x1400246f8

0x1400246dd:
 xor edi, edi
 bt r11d, 0xf
 jb 0x1400246f5

0x1400246e6:
 inc edi
 mov eax, r11d
 mov ecx, edi
 shl eax, cl
 bt eax, 0xf
 jae 0x1400246e6

0x1400246f5:
 lea edx, [rdi+1]

0x1400246f8:
 lea rcx, [rbx+0x8]
 call sub_140011440

0x140024701:
 mov ecx, dword ptr [rbx+0x58cc]
 add ecx, edi
 mov eax, ecx
 shr eax, 5
 sub ecx, eax
 mov dword ptr [rbx+0x58cc], ecx
 lea rcx, [rbx+0x8]
 call sub_140011458
 mov ecx, dword ptr [rbx+0x58c4]
 cmp ecx, 0x28ff
 jbe 0x140024743
 lea rcx, [0x140045550]
 lea r9, [0x140045530]

0x14002473b:
 mov r8d, 5
 jmp 0x14002476f

0x140024743:
 cmp ecx, 0x6ff
 jbe 0x14002475b
 lea rcx, [0x1400454f8]
 lea r9, [0x1400454d8]
 jmp 0x14002473b

0x14002475b:
 lea rcx, [0x1400454a0]
 lea r9, [0x140045478]
 mov r8d, 4

0x14002476f:
 mov qword ptr [rsp+0x20], rcx
 mov edx, eax
 mov rcx, rbx
 call sub_140021bcc
 mov ecx, dword ptr [rbx+0x58c4]
 add ecx, eax
 mov r11d, eax
 mov eax, ecx
 movzx r14d, r11b
 mov r15d, r11d
 shr eax, 8
 sub ecx, eax
 mov dword ptr [rbx+0x58c4], ecx
 movzx r12d, word ptr [rbx+r14*2+0x51ba]
 movzx ecx, r12b
 inc r12d
 movzx edx, byte ptr [rcx+rbx+0x56ba]
 lea eax, [rdx+1]
 mov byte ptr [rcx+rbx+0x56ba], al
 test r12b, r12b
 jne 0x140024801

0x1400247c4:
 lea r8, [rbx+0x56ba]
 lea rdx, [rbx+0x51ba]
 mov rcx, rbx
 call sub_140021b08
 movzx r12d, word ptr [rbx+r14*2+0x51ba]
 movzx ecx, r12b
 inc r12d
 movzx edx, byte ptr [rcx+rbx+0x56ba]
 lea eax, [rdx+1]
 mov byte ptr [rcx+rbx+0x56ba], al
 test r12b, r12b
 je 0x1400247c4

0x140024801:
 movzx eax, word ptr [rbx+rdx*2+0x51ba]
 lea rcx, [rbx+0x8]
 mov word ptr [rbx+r15*2+0x51ba], ax
 mov word ptr [rbx+rdx*2+0x51ba], r12w
 call sub_140011458
 mov esi, eax
 and r12d, 0xff00
 lea rcx, [rbx+0x8]
 shr esi, 8
 mov edx, 7
 or esi, r12d
 shr esi, 0x1
 call sub_140011440
 mov edx, dword ptr [rbx+0x58d0]
 cmp edi, 0x1
 je 0x14002487e
 cmp edi, 4
 je 0x14002487e
 test edi, edi
 jne 0x140024871
 cmp esi, dword ptr [rbx+0x58f0]
 ja 0x140024871
 lea ecx, [rdx+1]
 mov eax, ecx
 shr eax, 8
 sub ecx, eax
 mov dword ptr [rbx+0x58d0], ecx
 jmp 0x14002487e

0x140024871:
 test edx, edx
 je 0x14002487e
 lea eax, [rdx-1]
 mov dword ptr [rbx+0x58d0], eax

0x14002487e:
 add edi, 3
 cmp esi, dword ptr [rbx+0x58f0]
 jb 0x14002488b
 inc edi

0x14002488b:
 cmp esi, 0x100
 ja 0x140024896
 add edi, 8

0x140024896:
 cmp edx, 0xb0
 ja 0x1400248bc
 cmp dword ptr [rbx+0x58c0], 0x2a00
 jb 0x1400248b0
 cmp r13d, 0x40
 jb 0x1400248bc

0x1400248b0:
 mov dword ptr [rbx+0x58f0], 0x2001
 jmp 0x1400248c6

0x1400248bc:
 mov dword ptr [rbx+0x58f0], 0x7f00

0x1400248c6:
 mov eax, dword ptr [rbx+0xb0]
 mov r8d, edi
 mov edx, esi
 mov dword ptr [rbx+rax*4+0xa0], esi
 mov eax, dword ptr [rbx+0xb0]
 mov rcx, rbx
 inc eax
 mov dword ptr [rbx+0xb4], edi
 mov dword ptr [rbx+0xb8], esi
 and eax, 3
 mov dword ptr [rbx+0xb0], eax
 mov rbx, qword ptr [rsp+0x68]
 mov rbp, qword ptr [rsp+0x70]
 mov rsi, qword ptr [rsp+0x78]
 add rsp, 0x30
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 jmp sub_140021b70
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14002491c
; --------------------------------------------------------------------------
sub_14002491c   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x50]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x58]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x60]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 push r12
 push r15
 sub rsp, 0x30
 mov rsi, rcx
 add rcx, 8
 call sub_140011458
 lea r15, [0x140045550]
 mov ebx, eax
 mov eax, dword ptr [rsi+0x58c0]
 cmp eax, 0x75ff
 jbe 0x14002496c
 lea rax, [0x1400455f8]
 lea r9, [0x1400455e0]
 mov r8d, 8
 jmp 0x1400249d5

0x14002496c:
 cmp eax, 0x5dff
 jbe 0x140024989
 lea rax, [0x1400455a8]
 lea r9, [0x140045588]
 mov r8d, 6
 jmp 0x1400249d5

0x140024989:
 cmp eax, 0x35ff
 jbe 0x1400249a4
 mov qword ptr [local_1], r15
 lea r9, [0x140045530]
 mov r8d, 5
 jmp 0x1400249da

0x1400249a4:
 cmp eax, 0xdff
 jbe 0x1400249c1
 lea rax, [0x1400454f8]
 lea r9, [0x1400454d8]
 mov r8d, 5
 jmp 0x1400249d5

0x1400249c1:
 lea rax, [0x1400454a0]
 lea r9, [0x140045478]
 mov r8d, 4

0x1400249d5:
 mov qword ptr [local_1], rax

0x1400249da:
 mov edx, ebx
 mov rcx, rsi
 call sub_140021bcc
 xor edi, edi
 movzx edx, al
 cmp dword ptr [rsi+0x58dc], edi
 je 0x140024abd
 cmp edx, edi
 jne 0x140024a07
 mov eax, 0x100
 cmp ebx, 0xfff
 cmova edx, eax

0x140024a07:
 dec edx
 cmp edx, 0xff
 jne 0x140024ae3
 lea rcx, [rsi+0x8]
 call sub_140011458
 lea rcx, [rsi+0x8]
 mov edx, 0x1
 mov r12d, eax
 call sub_140011440
 bt r12d, 0xf
 jae 0x140024a44
 mov dword ptr [rsi+0x58dc], edi
 mov dword ptr [rsi+0x58d8], edi
 jmp 0x140024ba5

0x140024a44:
 lea rcx, [rsi+0x8]
 mov edx, 0x1
 call sub_140011440
 lea rcx, [rsi+0x8]
 call sub_140011458
 lea r9, [0x140045530]
 mov r8d, 5
 mov rcx, rsi
 mov edx, eax
 mov qword ptr [local_1], r15
 call sub_140021bcc
 lea rcx, [rsi+0x8]
 mov ebx, eax
 call sub_140011458
 lea rcx, [rsi+0x8]
 mov edi, eax
 shl ebx, 5
 mov edx, 5
 shr edi, 0xb
 or edi, ebx
 call sub_140011440
 and r12d, 0x4000
 neg r12d
 mov edx, edi
 mov rcx, rsi
 sbb r8d, r8d
 neg r8d
 add r8d, 3
 call sub_140021b70
 jmp 0x140024ba5

0x140024abd:
 mov ecx, dword ptr [rsi+0x58d8]
 cmp ecx, 0x10
 lea eax, [rcx+1]
 mov dword ptr [rsi+0x58d8], eax
 jl 0x140024ae3
 cmp dword ptr [rsi+0x58e4], edi
 jne 0x140024ae3
 mov dword ptr [rsi+0x58dc], 0x1

0x140024ae3:
 mov ecx, dword ptr [rsi+0x58c0]
 add dword ptr [rsi+0x58e8], 0x10
 add ecx, edx
 mov eax, ecx
 shr eax, 8
 sub ecx, eax
 cmp dword ptr [rsi+0x58e8], 0xff
 mov dword ptr [rsi+0x58c0], ecx
 jbe 0x140024b1b
 shr dword ptr [rsi+0x58ec], 0x1
 mov dword ptr [rsi+0x58e8], 0x90

0x140024b1b:
 mov rcx, qword ptr [rsi+0xc0]
 movsxd rbx, edx
 mov rdx, qword ptr [rsi+0x4b90]
 mov al, byte ptr [rsi+rbx*2+0x4dbb]
 mov r12d, 0xa1
 mov byte ptr [rdx+rcx], al
 inc qword ptr [rsi+0xc0]
 dec qword ptr [rsi+0x4da0]
 jmp 0x140024b62

0x140024b4c:
 lea r8, [rsi+0x55ba]
 lea rdx, [rsi+0x4dba]
 mov rcx, rsi
 call sub_140021b08

0x140024b62:
 movzx edx, word ptr [rsi+rbx*2+0x4dba]
 movzx ecx, dl
 inc edx
 movzx r8d, byte ptr [rcx+rsi+0x55ba]
 lea eax, [r8+1]
 mov byte ptr [rcx+rsi+0x55ba], al
 movzx eax, dl
 cmp eax, r12d
 ja 0x140024b4c
 movzx eax, word ptr [rsi+r8*2+0x4dba]
 mov word ptr [rsi+rbx*2+0x4dba], ax
 mov word ptr [rsi+r8*2+0x4dba], dx

0x140024ba5:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x30
 pop r15
 pop r12
 pop rdi
 ret 
sub_14002491c   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140024bc0
; --------------------------------------------------------------------------
sub_140024bc0   proc \
 arg_1 : qword, ; [rsp+0x40]
 arg_2 : qword, ; [rsp+0x48]
 arg_3 : qword, ; [rsp+0x50]
 arg_4 : qword ; [rsp+0x58]

 local local_1: qword ; [rsp+0x20]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x30
 mov rbx, rcx
 add rcx, 8
 call sub_140011458
 lea r9, [0x140045530]
 mov r8d, 5
 mov edx, eax
 lea rax, [0x140045550]
 mov rcx, rbx
 mov qword ptr [local_1], rax
 call sub_140021bcc
 movsxd r11, eax
 cmp r11d, 0x100
 jae 0x140024cb2
 mov edi, r11d
 mov r12, r11
 movzx r8d, word ptr [rbx+rdi*2+0x53ba]
 movzx edx, r8b
 mov ecx, r8d
 shr ecx, 8
 mov dword ptr [rbx+0x58bc], ecx
 movzx r9d, byte ptr [rdx+rbx+0x57ba]
 lea eax, [r9+1]
 mov byte ptr [rdx+rbx+0x57ba], al
 jmp 0x140024c90

0x140024c4d:
 lea r8, [rbx+0x57ba]
 lea rdx, [rbx+0x53ba]
 mov rcx, rbx
 call sub_140021b08
 movzx r8d, word ptr [rbx+r12*2+0x53ba]
 movzx ecx, r8b
 mov eax, r8d
 shr eax, 8
 mov dword ptr [rbx+0x58bc], eax
 movzx r9d, byte ptr [rcx+rbx+0x57ba]
 lea eax, [r9+1]
 mov byte ptr [rcx+rbx+0x57ba], al

0x140024c90:
 inc r8d
 test r8b, r8b
 je 0x140024c4d
 movzx eax, word ptr [rbx+r9*2+0x53ba]
 mov word ptr [rbx+rdi*2+0x53ba], ax
 mov word ptr [rbx+r9*2+0x53ba], r8w

0x140024cb2:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x30
 pop r12
 ret 
sub_140024bc0   endp
 
 int3 
 int3 
 int3 

0x140024cd0:
 mov qword ptr [rsp+0x8], rbx
 mov qword ptr [rsp+0x10], rsi
 push rdi
 sub rsp, 0x20
 mov rdi, rcx
 xor ecx, ecx
 mov esi, 0x100
 lea r9d, [rcx+1]
 lea rdx, [rdi+0x4dba]

0x140024cf4:
 movzx eax, cx
 mov word ptr [rdx+0x200], cx
 mov r8d, 0xff00
 shl ax, 8
 mov word ptr [rdx+0x400], ax
 mov word ptr [rdx], ax
 movzx eax, cx
 not ax
 add ecx, r9d
 add rdx, 2
 add ax, r9w
 imul ax, si
 and ax, r8w
 mov word ptr [rdx+0x5fe], ax
 cmp ecx, esi
 jb 0x140024cf4
 lea rcx, [rdi+0x55ba]
 mov r8, rsi
 xor edx, edx
 call 0x14002d190
 lea rcx, [rdi+0x56ba]
 mov r8, rsi
 xor edx, edx
 call 0x14002d190
 lea rcx, [rdi+0x57ba]
 mov r8, rsi
 xor edx, edx
 call 0x14002d190
 lea rdx, [rdi+0x51ba]
 lea r8, [rdi+0x56ba]
 mov rcx, rdi
 mov rbx, qword ptr [rsp+0x30]
 mov rsi, qword ptr [rsp+0x38]
 add rsp, 0x20
 pop rdi
 jmp sub_140021b08
 int3 
 int3 

0x140024d90:
 mov qword ptr [rsp+0x10], rbx
 mov qword ptr [rsp+0x18], rbp
 push rsi
 push rdi
 push r12
 sub rsp, 0x460
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x450], rax
 mov eax, dword ptr [rcx+0xd0]
 xor edi, edi
 mov rbx, rcx
 sub eax, 0x19
 cmp dword ptr [rcx+0x8], eax
 jle 0x140024ddb
 call sub_14002240c
 cmp al, dil
 jne 0x140024ddb

0x140024dd4:
 xor al, al
 jmp 0x140025231

0x140024ddb:
 mov rcx, qword ptr [rbx+0x18]
 movsxd rdx, dword ptr [rbx+0x8]
 mov r12d, 8
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, r12d
 sub ecx, dword ptr [rbx+0xc]
 shl r8d, 8
 or r8d, eax
 shr r8d, cl
 movzx esi, r8w
 mov eax, esi
 and eax, 0x8000
 bt esi, 0xe
 mov dword ptr [rbx+0x98a8], eax
 jb 0x140024e39
 lea rcx, [rbx+0x94a4]
 xor edx, edx
 mov r8d, 0x404
 call 0x14002d190

0x140024e39:
 mov ecx, dword ptr [rbx+0xc]
 add ecx, 2
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rbx+0xc], ecx
 add dword ptr [rbx+0x8], eax
 cmp dword ptr [rbx+0x98a8], edi
 je 0x140024e94
 shr esi, 0xc
 and esi, 3
 lea eax, [rsi+1]
 cmp dword ptr [rbx+0x98b0], eax
 mov dword ptr [rbx+0x98ac], eax
 jl 0x140024e72
 mov dword ptr [rbx+0x98b0], edi

0x140024e72:
 mov ecx, dword ptr [rbx+0xc]
 add ecx, 2
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rbx+0xc], ecx
 add dword ptr [rbx+0x8], eax
 mov ebp, dword ptr [rbx+0x98ac]
 imul ebp, ebp, 0x101
 jmp 0x140024e99

0x140024e94:
 mov ebp, 0x176

0x140024e99:
 mov r9d, 0x13
 lea r10, [rsp+0x20]
 mov r11, r9

0x140024ea7:
 mov rcx, qword ptr [rbx+0x18]
 movsxd rdx, dword ptr [rbx+0x8]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, r12d
 sub ecx, dword ptr [rbx+0xc]
 shl r8d, 8
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rbx+0xc]
 add ecx, 4
 shr r8d, 0xc
 mov eax, ecx
 and r8b, 0xf
 and ecx, 7
 shr eax, 3
 mov byte ptr [r10], r8b
 inc r10
 add dword ptr [rbx+0x8], eax
 sub r11, 0x1
 mov dword ptr [rbx+0xc], ecx
 jne 0x140024ea7
 lea r8, [rbx+0x3c9c]
 lea rdx, [rsp+0x20]
 mov rcx, rbx
 call 0x140022b6c
 movsxd rbp, ebp
 mov rsi, rdi
 cmp rbp, rdi
 jle 0x140025168
 mov r10d, r12d

0x140024f22:
 mov eax, dword ptr [rbx+0xd0]
 sub eax, 5
 cmp dword ptr [rbx+0x8], eax
 jle 0x140024f44
 mov rcx, rbx
 call sub_14002240c
 cmp al, dil
 je 0x140024dd4
 mov r10d, r12d

0x140024f44:
 mov rcx, qword ptr [rbx+0x18]
 movsxd rdx, dword ptr [rbx+0x8]
 mov r9d, dword ptr [rbx+0xc]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, r10d
 shl r8d, 8
 sub ecx, r9d
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rbx+0x3d20]
 and r8d, 0xfffe
 cmp r8d, dword ptr [rbx+rcx*4+0x3ca0]
 jae 0x140024fc0
 mov eax, 0x10
 sub eax, ecx
 mov cl, al
 shr r8d, cl
 movzx ecx, byte ptr [r8+rbx+0x3d24]
 add ecx, r9d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [rbx+0x8]
 and ecx, 7
 mov dword ptr [rbx+0x8], eax
 mov dword ptr [rbx+0xc], ecx
 movzx ecx, word ptr [rbx+r8*2+0x4124]
 jmp 0x140025032

0x140024fc0:
 lea eax, [rcx+1]
 mov edx, 0xf
 movsxd rcx, eax
 cmp eax, edx
 jae 0x140024fea
 lea rcx, [rbx+rcx*4+0x3ca0]

0x140024fd7:
 cmp r8d, dword ptr [rcx]
 jb 0x140024fe8
 inc eax
 add rcx, 4
 cmp eax, edx
 jb 0x140024fd7
 jmp 0x140024fea

0x140024fe8:
 mov edx, eax

0x140024fea:
 lea ecx, [r9+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rbx+0xc], ecx
 mov ecx, 0x10
 add eax, dword ptr [rbx+0x8]
 sub ecx, edx
 mov dword ptr [rbx+0x8], eax
 lea eax, [rdx-1]
 sub r8d, dword ptr [rbx+rax*4+0x3ca0]
 mov eax, edx
 shr r8d, cl
 add r8d, dword ptr [rbx+rax*4+0x3ce0]
 cmp r8d, dword ptr [rbx+0x3c9c]
 sbb eax, eax
 and eax, r8d
 movzx ecx, word ptr [rbx+rax*2+0x4924]

0x140025032:
 cmp ecx, 0x10
 jge 0x14002504e
 mov al, byte ptr [rsi+rbx+0x94a4]
 add al, cl
 and al, 0xf
 inc rsi
 mov byte ptr [rsp+rsi+0x3f], al
 jmp 0x14002515f

0x14002504e:
 movsxd rdx, dword ptr [rbx+0x8]
 jne 0x1400250c9
 mov rcx, qword ptr [rbx+0x18]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, r10d
 sub ecx, dword ptr [rbx+0xc]
 shl r8d, 8
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rbx+0xc]
 add ecx, 2
 shr r8d, 0xe
 mov eax, ecx
 and r8d, 3
 and ecx, 7
 shr eax, 3
 add r8d, 3
 mov dword ptr [rbx+0xc], ecx
 add dword ptr [rbx+0x8], eax
 cmp rsi, rdi
 jle 0x14002515f
 jmp 0x1400250bf

0x1400250a8:
 dec r8d
 cmp rsi, rbp
 jge 0x140025168
 mov al, byte ptr [rsp+rsi+0x3f]
 inc rsi
 mov byte ptr [rsp+rsi+0x3f], al

0x1400250bf:
 cmp r8d, edi
 jg 0x1400250a8
 jmp 0x14002515f

0x1400250c9:
 cmp ecx, 0x11
 mov rcx, qword ptr [rbx+0x18]
 movzx r8d, byte ptr [rcx+rdx]
 movzx eax, byte ptr [rcx+rdx+1]
 jne 0x14002510c
 shl r8d, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, r10d
 sub ecx, dword ptr [rbx+0xc]
 shl r8d, 8
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rbx+0xc]
 shr r8d, 0xd
 and r8d, 7
 add r8d, 3
 add ecx, 3
 jmp 0x14002513a

0x14002510c:
 shl r8d, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, r10d
 sub ecx, dword ptr [rbx+0xc]
 shl r8d, 8
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rbx+0xc]
 shr r8d, 9
 and r8d, 0x7f
 add r8d, 0xb
 add ecx, 7

0x14002513a:
 mov eax, ecx
 shr eax, 3
 add dword ptr [rbx+0x8], eax
 and ecx, 7
 mov dword ptr [rbx+0xc], ecx
 jmp 0x14002515a

0x14002514a:
 dec r8d
 cmp rsi, rbp
 jge 0x140025168
 mov byte ptr [rsp+rsi+0x40], dil
 inc rsi

0x14002515a:
 cmp r8d, edi
 jg 0x14002514a

0x14002515f:
 cmp rsi, rbp
 jl 0x140024f22

0x140025168:
 mov ecx, dword ptr [rbx+0xd0]
 cmp dword ptr [rbx+0x8], ecx
 jg 0x14002522f
 cmp dword ptr [rbx+0x98a8], edi
 je 0x1400251c4
 cmp dword ptr [rbx+0x98ac], edi
 jle 0x140025218
 mov esi, edi
 mov ebp, 0x101

0x140025192:
 movsxd rax, edi
 mov r9d, ebp
 mov rcx, rbx
 imul rax, rax, 0xeec
 lea r8, [rax+rbx+0x58f4]
 mov eax, esi
 lea rdx, [rsp+rax+0x40]
 call 0x140022b6c
 inc edi
 add esi, ebp
 cmp edi, dword ptr [rbx+0x98ac]
 jl 0x140025192
 jmp 0x140025218

0x1400251c4:
 lea r8, [rbx+0xec]
 lea rdx, [rsp+0x40]
 mov r9d, 0x12a
 mov rcx, rbx
 call 0x140022b6c
 lea r8, [rbx+0xfd8]
 lea rdx, [rsp+0x16a]
 mov r9d, 0x30
 mov rcx, rbx
 call 0x140022b6c
 lea r8, [rbx+0x2db0]
 lea rdx, [rsp+0x19a]
 mov r9d, 0x1c
 mov rcx, rbx
 call 0x140022b6c

0x140025218:
 lea rcx, [rbx+0x94a4]
 lea rdx, [rsp+0x40]
 mov r8d, 0x404
 call 0x14002d490

0x14002522f:
 mov al, 0x1

0x140025231:
 mov rcx, qword ptr [rsp+0x450]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x460]
 mov rbx, qword ptr [r11+0x28]
 mov rbp, qword ptr [r11+0x30]
 mov rsp, r11
 pop r12
 pop rdi
 pop rsi
 ret 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14002525c
; --------------------------------------------------------------------------
sub_14002525c   proc
 sub rsp, 0x28
 mov eax, dword ptr [rcx+0x8]
 mov r8, rcx
 add eax, 5
 cmp dword ptr [rcx+0xd0], eax
 jl 0x14002548d
 cmp dword ptr [rcx+0x98a8], 0x0
 movsxd rdx, dword ptr [rcx+0x8]
 je 0x14002538a
 movsxd rax, dword ptr [rcx+0x98b0]
 mov r11d, dword ptr [r8+0xc]
 imul rax, rax, 0xeec
 lea r10, [rax+rcx+0x58f4]
 mov rcx, qword ptr [rcx+0x18]
 movzx eax, byte ptr [rcx+rdx]
 movzx r9d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r9d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 shl r9d, 8
 sub ecx, r11d
 or r9d, eax
 shr r9d, cl
 mov ecx, dword ptr [r10+0x84]
 and r9d, 0xfffe
 cmp r9d, dword ptr [r10+rcx*4+4]
 jae 0x140025317
 mov eax, 0x10
 sub eax, ecx
 mov cl, al
 shr r9d, cl
 movzx ecx, byte ptr [r9+r10+0x88]
 add ecx, r11d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [r8+0x8]
 and ecx, 7
 mov dword ptr [r8+0x8], eax
 mov dword ptr [r8+0xc], ecx
 movzx eax, word ptr [r10+r9*2+0x488]
 jmp 0x140025380

0x140025317:
 lea eax, [rcx+1]
 mov edx, 0xf
 movsxd rcx, eax
 cmp eax, edx
 jae 0x14002533e
 lea rcx, [r10+rcx*4+4]

0x14002532b:
 cmp r9d, dword ptr [rcx]
 jb 0x14002533c
 inc eax
 add rcx, 4
 cmp eax, edx
 jb 0x14002532b
 jmp 0x14002533e

0x14002533c:
 mov edx, eax

0x14002533e:
 lea ecx, [r11+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [r8+0xc], ecx
 mov ecx, 0x10
 add eax, dword ptr [r8+0x8]
 sub ecx, edx
 mov dword ptr [r8+0x8], eax
 lea eax, [rdx-1]
 sub r9d, dword ptr [r10+rax*4+4]
 mov eax, edx
 shr r9d, cl
 add r9d, dword ptr [r10+rax*4+0x44]
 cmp r9d, dword ptr [r10]
 sbb eax, eax
 and eax, r9d
 movzx eax, word ptr [r10+rax*2+0xc88]

0x140025380:
 cmp eax, 0x100
 jmp 0x140025483

0x14002538a:
 mov rcx, qword ptr [rcx+0x18]
 mov r10d, dword ptr [r8+0xc]
 movzx eax, byte ptr [rcx+rdx]
 movzx r9d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r9d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 shl r9d, 8
 sub ecx, r10d
 or r9d, eax
 shr r9d, cl
 mov ecx, dword ptr [r8+0x170]
 and r9d, 0xfffe
 cmp r9d, dword ptr [r8+rcx*4+0xf0]
 jae 0x140025408
 mov eax, 0x10
 sub eax, ecx
 mov cl, al
 shr r9d, cl
 movzx ecx, byte ptr [r9+r8+0x174]
 add ecx, r10d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [r8+0x8]
 and ecx, 7
 mov dword ptr [r8+0x8], eax
 mov dword ptr [r8+0xc], ecx
 movzx eax, word ptr [r8+r9*2+0x574]
 jmp 0x14002547e

0x140025408:
 lea eax, [rcx+1]
 mov edx, 0xf
 movsxd rcx, eax
 cmp eax, edx
 jae 0x140025432
 lea rcx, [r8+rcx*4+0xf0]

0x14002541f:
 cmp r9d, dword ptr [rcx]
 jb 0x140025430
 inc eax
 add rcx, 4
 cmp eax, edx
 jb 0x14002541f
 jmp 0x140025432

0x140025430:
 mov edx, eax

0x140025432:
 lea ecx, [r10+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [r8+0xc], ecx
 mov ecx, 0x10
 add eax, dword ptr [r8+0x8]
 sub ecx, edx
 mov dword ptr [r8+0x8], eax
 lea eax, [rdx-1]
 sub r9d, dword ptr [r8+rax*4+0xf0]
 mov eax, edx
 shr r9d, cl
 add r9d, dword ptr [r8+rax*4+0x130]
 cmp r9d, dword ptr [r8+0xec]
 sbb eax, eax
 and eax, r9d
 movzx eax, word ptr [r8+rax*2+0xd74]

0x14002547e:
 cmp eax, 0x10d

0x140025483:
 jne 0x14002548d
 mov rcx, r8
 call 0x140024d90

0x14002548d:
 add rsp, 0x28
 ret 
sub_14002525c   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140025494
; --------------------------------------------------------------------------
sub_140025494   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 mov rbx, rcx
 test dl, dl
 jne 0x14002551a
 and qword ptr [rcx+0xe938], 0x0
 and dword ptr [rcx+0xe950], 0x0
 xor edi, edi
 cmp qword ptr [rcx+0xe8f8], rdi
 jbe 0x140025512

0x1400254c4:
 mov rax, qword ptr [rbx+0xe8f0]
 mov rsi, qword ptr [rax+rdi*8]
 test rsi, rsi
 je 0x140025506
 mov rcx, qword ptr [rsi+0x68]
 test rcx, rcx
 je 0x1400254e2
 call sub_14002cfac

0x1400254e2:
 mov rcx, qword ptr [rsi+0x48]
 test rcx, rcx
 je 0x1400254f0
 call sub_14002cfac

0x1400254f0:
 mov rcx, qword ptr [rsi+0x18]
 test rcx, rcx
 je 0x1400254fe
 call sub_14002cfac

0x1400254fe:
 mov rcx, rsi
 call 0x14002cfa4

0x140025506:
 inc rdi
 cmp rdi, qword ptr [rbx+0xe8f8]
 jb 0x1400254c4

0x140025512:
 and qword ptr [rbx+0xe8f8], 0x0

0x14002551a:
 xor edi, edi
 cmp qword ptr [rbx+0xe918], rdi
 jbe 0x140025573

0x140025525:
 mov rax, qword ptr [rbx+0xe910]
 mov rsi, qword ptr [rax+rdi*8]
 test rsi, rsi
 je 0x140025567
 mov rcx, qword ptr [rsi+0x68]
 test rcx, rcx
 je 0x140025543
 call sub_14002cfac

0x140025543:
 mov rcx, qword ptr [rsi+0x48]
 test rcx, rcx
 je 0x140025551
 call sub_14002cfac

0x140025551:
 mov rcx, qword ptr [rsi+0x18]
 test rcx, rcx
 je 0x14002555f
 call sub_14002cfac

0x14002555f:
 mov rcx, rsi
 call 0x14002cfa4

0x140025567:
 inc rdi
 cmp rdi, qword ptr [rbx+0xe918]
 jb 0x140025525

0x140025573:
 and qword ptr [rbx+0xe918], 0x0
 mov rsi, qword ptr [arg_2]
 mov rbx, qword ptr [arg_1]
 add rsp, 0x20
 pop rdi
 ret 
sub_140025494   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_14002558c
; --------------------------------------------------------------------------
sub_14002558c   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 cmp byte ptr [rdx+0x8], 0x0
 mov rsi, r8
 mov rbx, rdx
 mov rdi, rcx
 jne 0x1400255c0
 mov eax, dword ptr [rcx+0xd0]
 sub eax, 0x10
 cmp dword ptr [rdx], eax
 jle 0x1400255c0
 call sub_14002240c
 test al, al
 je 0x14002561a

0x1400255c0:
 mov rdx, rbx
 mov rcx, rdi
 call sub_140022380
 mov rdx, rbx
 mov rcx, rdi
 mov dword ptr [rsi+4], eax
 call sub_140022380
 mov rcx, rbx
 mov dword ptr [rsi+0x8], eax
 call sub_140011458
 mov edx, 3
 shr eax, 0xd
 mov rcx, rbx
 mov byte ptr [rsi], al
 call sub_140011440
 cmp byte ptr [rsi], 0x0
 jne 0x140025618
 mov rcx, rbx
 call sub_140011458
 mov edx, 5
 mov rcx, rbx
 shr eax, 0xb
 inc al
 mov byte ptr [rsi+0xc], al
 call sub_140011440

0x140025618:
 mov al, 0x1

0x14002561a:
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_14002558c   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14002562c
; --------------------------------------------------------------------------
sub_14002562c   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x38]
 arg_3 : qword, ; [rsp+0x40]
 arg_4 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x20
 mov ebp, r8d
 mov r8b, byte ptr [r9]
 xor ebx, ebx
 mov rdi, rdx
 mov r10, rdx
 mov al, r8b
 cmp r8b, bl
 je 0x140025744
 cmp al, bl
 jbe 0x140025740
 cmp al, 2
 jbe 0x1400256cb
 cmp al, 3
 jne 0x140025740
 mov r8d, dword ptr [rcx+0x4db0]
 add ebp, -3
 cmp ebp, ebx
 jle 0x1400256c3
 inc rdx

0x140025684:
 cmp byte ptr [rdx+2], 0xeb
 jne 0x1400256b8
 movzx eax, byte ptr [rdx]
 movzx ecx, byte ptr [rdx+1]
 shl ecx, 8
 add ecx, eax
 lea eax, [rbx+r8]
 shr eax, 2
 shl ecx, 8
 sub ecx, eax
 movzx eax, byte ptr [rdx-1]
 add ecx, eax
 mov eax, ecx
 mov byte ptr [rdx-1], cl
 shr eax, 8
 shr ecx, 0x10
 mov byte ptr [rdx+1], cl
 mov byte ptr [rdx], al

0x1400256b8:
 add ebx, 4
 add rdx, 4
 cmp ebx, ebp
 jl 0x140025684

0x1400256c3:
 mov rax, rdi
 jmp 0x1400257a7

0x1400256cb:
 mov edx, dword ptr [rcx+0x4db0]
 cmp r8b, 2
 sete r9b
 add ebp, -4
 add r9b, 0xe8
 cmp ebp, ebx
 jle 0x14002573b

0x1400256e4:
 mov al, byte ptr [rdi]
 inc ebx
 inc edx
 inc rdi
 cmp al, 0xe8
 je 0x1400256f6
 cmp al, r9b
 jne 0x140025737

0x1400256f6:
 mov ecx, dword ptr [rdi]
 mov r8d, edx
 and r8d, 0xffffff
 bt ecx, 0x1f
 jae 0x14002571c
 lea eax, [rcx+r8]
 bt eax, 0x1f
 jb 0x14002572d
 lea eax, [rcx+0x1000000]
 mov dword ptr [rdi], eax
 jmp 0x14002572d

0x14002571c:
 lea eax, [rcx-0x1000000]
 bt eax, 0x1f
 jae 0x14002572d
 sub ecx, r8d
 mov dword ptr [rdi], ecx

0x14002572d:
 add rdi, 4
 add ebx, 4
 add edx, 4

0x140025737:
 cmp ebx, ebp
 jl 0x1400256e4

0x14002573b:
 mov rax, r10
 jmp 0x1400257a7

0x140025740:
 xor eax, eax
 jmp 0x1400257a7

0x140025744:
 movzx r12d, byte ptr [r9+0xc]
 lea rsi, [rcx+0x60]
 mov rax, rbp
 cmp rbp, qword ptr [rsi+0x10]
 jbe 0x140025767
 sub rax, qword ptr [rsi+0x8]
 mov rcx, rsi
 mov rdx, rax
 call sub_140001294
 jmp 0x14002576b

0x140025767:
 mov qword ptr [rsi+0x8], rax

0x14002576b:
 mov rax, qword ptr [rsi]
 mov ecx, ebx
 mov r11, rbx
 cmp r12d, ebx
 jbe 0x1400257a7
 mov rdx, rax

0x14002577b:
 mov r9b, bl
 mov r10d, ecx
 cmp ecx, ebp
 jae 0x14002579d
 mov r8, rdx

0x140025788:
 sub r9b, byte ptr [r11+rdi]
 add r10d, r12d
 inc r11
 mov byte ptr [r8], r9b
 add r8, r12
 cmp r10d, ebp
 jb 0x140025788

0x14002579d:
 inc ecx
 inc rdx
 cmp ecx, r12d
 jb 0x14002577b

0x1400257a7:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x20
 pop r12
 ret 
sub_14002562c   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400257c4
; --------------------------------------------------------------------------
sub_1400257c4   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x38]
 arg_3 : qword, ; [rsp+0x40]
 arg_4 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r12
 sub rsp, 0x20
 mov rdi, r8
 mov rbp, rdx
 mov rsi, rcx
 cmp r8, rdx
 je 0x1400257fb
 mov byte ptr [rcx+0x4daa], 0x1
 jae 0x1400257fb
 mov byte ptr [rcx+0x4da9], 0x1

0x1400257fb:
 cmp byte ptr [rcx+0x4d98], 0x0
 je 0x140025850
 sub rdi, rdx
 and rdi, qword ptr [rcx+0xe960]
 jbe 0x14002588f

0x140025810:
 lea rcx, [rsi+0x4b98]
 mov r8, rdi
 mov rdx, rbp
 call 0x140022924
 lea rcx, [rsi+0x4b98]
 mov rbx, rax
 call 0x140022824
 mov r8, rbx
 mov rdx, rax
 mov rcx, rsi
 call sub_1400224e4
 add rbp, rbx
 and rbp, qword ptr [rsi+0xe960]
 sub rdi, rbx
 jne 0x140025810
 jmp 0x14002588f

0x140025850:
 cmp r8, rdx
 jae 0x14002587a
 mov r8, qword ptr [rcx+0xe958]
 sub r8, rdx
 mov rdx, qword ptr [rcx+0x4b90]
 add rdx, rbp
 call sub_1400224e4
 mov rdx, qword ptr [rsi+0x4b90]
 mov rcx, rsi
 jmp 0x140025887

0x14002587a:
 sub rdi, rdx
 mov rdx, qword ptr [rcx+0x4b90]
 add rdx, rbp

0x140025887:
 mov r8, rdi
 call sub_1400224e4

0x14002588f:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 mov rdi, qword ptr [arg_4]
 add rsp, 0x20
 pop r12
 ret 
sub_1400257c4   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400258ac
; --------------------------------------------------------------------------
sub_1400258ac   proc \
 arg_1 : qword ; [rsp+0x18] ; [rsp+0x240]

 local local_1[0x20]: byte ; [rsp+0x20]
 local local_2[0x132]: byte ; [rsp+0x40]
 local local_3[0x40]: byte ; [rsp+0x172]
 local local_4[0x10]: byte ; [rsp+0x1b2]
 local local_5[0x2e]: byte ; [rsp+0x1c2]
 local local_6: qword ; [rsp+0x1f0]

 mov qword ptr [arg_1], rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 sub rsp, 0x200
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [local_6], rax
 cmp byte ptr [r8+0x11], 0x0
 mov r13, r9
 mov rbx, rdx
 mov r12, rcx
 je 0x140025bf8
 cmp byte ptr [rdx+0x8], 0x0
 jne 0x140025908
 mov eax, dword ptr [rcx+0xd0]
 sub eax, 0x19
 cmp dword ptr [rdx], eax
 jle 0x140025908
 call sub_14002240c
 test al, al
 jne 0x140025908

0x140025901:
 xor al, al
 jmp 0x140025bfa

0x140025908:
 xor esi, esi
 xor edi, edi

0x14002590c:
 mov rcx, rbx
 call sub_140011458
 mov edx, 4
 mov rcx, rbx
 shr eax, 0xc
 movzx ebp, al
 call sub_140011440
 cmp ebp, 0xf
 jne 0x140025973
 mov rcx, rbx
 call sub_140011458
 mov edx, 4
 mov rcx, rbx
 shr eax, 0xc
 movzx ebp, al
 call sub_140011440
 test ebp, ebp
 jne 0x140025952
 mov byte ptr [rsp+rdi+0x20], 0xf
 jmp 0x140025978

0x140025952:
 add ebp, 2
 jmp 0x140025968

0x140025957:
 dec ebp
 cmp esi, 0x14
 jae 0x14002596c
 mov byte ptr [rsp+rdi+0x20], 0x0
 inc esi
 inc rdi

0x140025968:
 test ebp, ebp
 jg 0x140025957

0x14002596c:
 dec esi
 dec rdi
 jmp 0x140025978

0x140025973:
 mov byte ptr [rsp+rdi+0x20], bpl

0x140025978:
 inc esi
 inc rdi
 cmp esi, 0x14
 jb 0x14002590c
 lea r8, [r13+0x3bb0]
 lea rdx, [local_1]
 mov r9d, 0x14
 mov rcx, r12
 call 0x140022b6c
 xor edi, edi

0x14002599e:
 cmp byte ptr [rbx+0x8], 0x0
 jne 0x1400259c3
 mov eax, dword ptr [r12+0xd0]
 sub eax, 5
 cmp dword ptr [rbx], eax
 jle 0x1400259c3
 mov rcx, r12
 call sub_14002240c
 test al, al
 je 0x140025901

0x1400259c3:
 mov rcx, qword ptr [rbx+0x10]
 movsxd rdx, dword ptr [rbx]
 mov r9d, dword ptr [rbx+4]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 shl r8d, 8
 sub ecx, r9d
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [r13+0x3c34]
 and r8d, 0xfffe
 cmp r8d, dword ptr [r13+rcx*4+0x3bb4]
 jae 0x140025a3f
 mov eax, 0x10
 sub eax, ecx
 mov cl, al
 shr r8d, cl
 movzx ecx, byte ptr [r8+r13+0x3c38]
 add ecx, r9d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [rbx]
 and ecx, 7
 mov dword ptr [rbx], eax
 mov dword ptr [rbx+4], ecx
 movzx eax, word ptr [r13+r8*2+0x4038]
 jmp 0x140025ab0

0x140025a3f:
 lea eax, [rcx+1]
 mov edx, 0xf
 movsxd rcx, eax
 cmp eax, edx
 jae 0x140025a69
 lea rcx, [r13+rcx*4+0x3bb4]

0x140025a56:
 cmp r8d, dword ptr [rcx]
 jb 0x140025a67
 inc eax
 add rcx, 4
 cmp eax, edx
 jb 0x140025a56
 jmp 0x140025a69

0x140025a67:
 mov edx, eax

0x140025a69:
 lea ecx, [r9+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rbx+4], ecx
 mov ecx, 0x10
 add eax, dword ptr [rbx]
 sub ecx, edx
 mov dword ptr [rbx], eax
 lea eax, [rdx-1]
 sub r8d, dword ptr [r13+rax*4+0x3bb4]
 mov eax, edx
 shr r8d, cl
 add r8d, dword ptr [r13+rax*4+0x3bf4]
 cmp r8d, dword ptr [r13+0x3bb0]
 sbb eax, eax
 and eax, r8d
 movzx eax, word ptr [r13+rax*2+0x4838]

0x140025ab0:
 cmp eax, 0x10
 jge 0x140025ac1
 mov byte ptr [rsp+rdi+0x40], al
 inc rdi
 jmp 0x140025b68

0x140025ac1:
 cmp eax, 0x12
 mov rcx, rbx
 jge 0x140025b1f
 cmp eax, 0x10
 jne 0x140025ae2
 call sub_140011458
 mov edx, 3
 mov esi, eax
 shr esi, 0xd
 add esi, 3
 jmp 0x140025af4

0x140025ae2:
 call sub_140011458
 mov edx, 7
 mov esi, eax
 shr esi, 9
 add esi, 0xb

0x140025af4:
 mov rcx, rbx
 call sub_140011440
 test rdi, rdi
 jle 0x140025b68
 jmp 0x140025b19

0x140025b03:
 dec esi
 cmp rdi, 0x1ae
 jge 0x140025b75
 mov al, byte ptr [rsp+rdi+0x3f]
 inc rdi
 mov byte ptr [rsp+rdi+0x3f], al

0x140025b19:
 test esi, esi
 jg 0x140025b03
 jmp 0x140025b68

0x140025b1f:
 jne 0x140025b35
 call sub_140011458
 mov edx, 3
 mov esi, eax
 shr esi, 0xd
 add esi, 3
 jmp 0x140025b47

0x140025b35:
 call sub_140011458
 mov edx, 7
 mov esi, eax
 shr esi, 9
 add esi, 0xb

0x140025b47:
 mov rcx, rbx
 call sub_140011440
 jmp 0x140025b64

0x140025b51:
 dec esi
 cmp rdi, 0x1ae
 jge 0x140025b75
 mov byte ptr [rsp+rdi+0x40], 0x0
 inc rdi

0x140025b64:
 test esi, esi
 jg 0x140025b51

0x140025b68:
 cmp rdi, 0x1ae
 jl 0x14002599e

0x140025b75:
 cmp byte ptr [rbx+0x8], 0x0
 jne 0x140025b8b
 mov eax, dword ptr [r12+0xd0]
 cmp dword ptr [rbx], eax
 jg 0x140025901

0x140025b8b:
 lea rdx, [local_2]
 mov r9d, 0x132
 mov r8, r13
 mov rcx, r12
 call 0x140022b6c
 lea r8, [r13+0xeec]
 lea rdx, [local_3]
 mov r9d, 0x40
 mov rcx, r12
 call 0x140022b6c
 lea r8, [r13+0x1dd8]
 lea rdx, [local_4]
 mov r9d, 0x10
 mov rcx, r12
 call 0x140022b6c
 lea r8, [r13+0x2cc4]
 lea rdx, [local_5]
 mov r9d, 0x2c
 mov rcx, r12
 call 0x140022b6c

0x140025bf8:
 mov al, 0x1

0x140025bfa:
 mov rcx, qword ptr [local_6]
 xor rcx, rsp
 call 0x14002d160
 mov rbx, qword ptr [arg_1]
 add rsp, 0x200
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
sub_1400258ac   endp
 
 int3 
 int3 
 int3 

0x140025c24:
 jmp sub_140022690
 int3 
 int3 
 int3 

0x140025c2c:
 mov qword ptr [rsp+0x8], rcx
 push rdi
 sub rsp, 0x30
 mov qword ptr [rsp+0x20], -2
 mov qword ptr [rsp+0x48], rbx
 mov rdi, rcx
 xor edx, edx
 call sub_140025494
 mov rcx, qword ptr [rdi+0x4b90]
 test rcx, rcx
 je 0x140025c5f
 call sub_14002cfac

0x140025c5f:
 mov rcx, qword ptr [rdi+0x20]
 call 0x14001fce0
 mov rcx, qword ptr [rdi+0x38]
 call 0x14002ec9c
 mov rcx, qword ptr [rdi+0x28]
 test rcx, rcx
 je 0x140025c9b
 lea rbx, [rcx-8]
 lea r9, [0x140021c7c]
 mov r8d, dword ptr [rbx]
 mov edx, 0x4af8
 call sub_14002e4dc
 mov rcx, rbx
 call 0x14002ec9c
 nop 

0x140025c9b:
 mov rcx, qword ptr [rdi+0xe930]
 test rcx, rcx
 je 0x140025cad
 call sub_14002cfac
 nop 

0x140025cad:
 mov rcx, qword ptr [rdi+0xe910]
 test rcx, rcx
 je 0x140025cbf
 call sub_14002cfac
 nop 

0x140025cbf:
 mov rcx, qword ptr [rdi+0xe8f0]
 test rcx, rcx
 je 0x140025cd1
 call sub_14002cfac
 nop 

0x140025cd1:
 lea rcx, [rdi+0xe8d8]
 call sub_1400113f0
 nop 
 lea rcx, [rdi+0xe890]
 call 0x1400159e8
 nop 
 cmp dword ptr [rdi+0xe4d8], 0x0
 je 0x140025d08
 and dword ptr [rdi+0xe4d8], 0x0
 mov rcx, qword ptr [rdi+0xe588]
 call sub_14002cfac
 nop 

0x140025d08:
 lea rcx, [rdi+0x4b98]
 call sub_140022690
 nop 
 mov rcx, qword ptr [rdi+0x80]
 test rcx, rcx
 je 0x140025d27
 call sub_14002cfac
 nop 

0x140025d27:
 mov rcx, qword ptr [rdi+0x60]
 test rcx, rcx
 je 0x140025d36
 call sub_14002cfac
 nop 

0x140025d36:
 mov rcx, qword ptr [rdi+0x40]
 test rcx, rcx
 je 0x140025d45
 call sub_14002cfac
 nop 

0x140025d45:
 lea rcx, [rdi+0x8]
 mov rbx, qword ptr [rsp+0x48]
 add rsp, 0x30
 pop rdi
 jmp sub_1400113f0
; --------------------------------------------------------------------------
; sub_140025d58
; --------------------------------------------------------------------------
sub_140025d58   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov edi, edx
 mov edx, 0x1
 mov rbx, rcx
 call sub_140022d50
 mov r11, qword ptr [rbx+0x8]
 mov rax, qword ptr [rbx]
 mov rbx, qword ptr [arg_1]
 mov dword ptr [rax+r11*4-4], edi
 add rsp, 0x20
 pop rdi
 ret 
sub_140025d58   endp
 
; --------------------------------------------------------------------------
; sub_140025d88
; --------------------------------------------------------------------------
sub_140025d88   proc \
 arg_1 : qword ; [rsp+0x8] ; [rsp+0x30]

 mov qword ptr [arg_1], rbx
 push rdi
 sub rsp, 0x20
 mov rdi, rdx
 mov edx, 0x1
 mov rbx, rcx
 call sub_140022df0
 mov r11, qword ptr [rbx+0x8]
 mov rax, qword ptr [rbx]
 movdqu xmm0, xmmword ptr [rdi]
 mov rbx, qword ptr [arg_1]
 add r11, r11
 movdqu xmmword ptr [rax+r11*8-0x10], xmm0
 add rsp, 0x20
 pop rdi
 ret 
sub_140025d88   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140025dc4
; --------------------------------------------------------------------------
sub_140025dc4   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x30]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x38]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x20
 and dword ptr [rcx+4], 0x0
 and dword ptr [rcx], 0x0
 or dword ptr [rcx+0x8], 0xffffffff
 mov rbx, rcx
 mov qword ptr [rcx+0x18], rdx
 mov esi, 4

0x140025dea:
 mov rdi, qword ptr [rbx+0x18]
 cmp dword ptr [rdi+0x8], 0x7fe2
 jle 0x140025dff
 mov rcx, rdi
 call sub_14002240c

0x140025dff:
 movsxd rdx, dword ptr [rdi+0x8]
 mov rax, qword ptr [rdi+0x18]
 movzx r8d, byte ptr [rax+rdx]
 lea eax, [rdx+1]
 mov dword ptr [rdi+0x8], eax
 mov eax, dword ptr [rbx+4]
 shl eax, 8
 or eax, r8d
 sub rsi, 0x1
 mov dword ptr [rbx+4], eax
 jne 0x140025dea
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 add rsp, 0x20
 pop rdi
 ret 
sub_140025dc4   endp
 
; --------------------------------------------------------------------------
; sub_140025e34
; --------------------------------------------------------------------------
sub_140025e34   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x50]
 arg_2 : qword, ; [rsp+0x58]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x60]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_3], rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 sub rsp, 0x20
 cmp dword ptr [rdx+0x8], 0x7fe2
 mov r14, r8
 mov rbp, rdx
 mov rdi, rcx
 jle 0x140025e64
 mov rcx, rdx
 call sub_14002240c

0x140025e64:
 movsxd r9, dword ptr [rbp+0x8]
 mov rax, qword ptr [rbp+0x18]
 xor esi, esi
 movzx ebx, byte ptr [r9+rax]
 inc r9d
 mov r13d, ebx
 mov dword ptr [rbp+0x8], r9d
 shr r13d, 5
 and r13b, 0x1
 je 0x140025eaf
 cmp r9d, 0x7fe2
 jle 0x140025e98
 mov rcx, rbp
 call sub_14002240c

0x140025e98:
 movsxd rdx, dword ptr [rbp+0x8]
 mov rax, qword ptr [rbp+0x18]
 movzx r12d, byte ptr [rdx+rax]
 lea r9d, [rdx+1]
 mov dword ptr [rbp+0x8], r9d
 jmp 0x140025ec3

0x140025eaf:
 cmp dword ptr [rdi+0x4aa8], esi
 jne 0x140025ebe

0x140025eb7:
 xor al, al
 jmp 0x140025f58

0x140025ebe:
 mov r12d, dword ptr [arg_2]

0x140025ec3:
 test bl, 0x40
 je 0x140025ef0
 cmp r9d, 0x7fe2
 jle 0x140025ed9
 mov rcx, rbp
 call sub_14002240c

0x140025ed9:
 movsxd r8, dword ptr [rbp+0x8]
 mov rax, qword ptr [rbp+0x18]
 movzx edx, byte ptr [r8+rax]
 lea eax, [r8+1]
 mov dword ptr [rbp+0x8], eax
 mov dword ptr [r14], edx

0x140025ef0:
 lea rcx, [rdi+0x4a88]
 mov rdx, rbp
 call sub_140025dc4
 cmp r13b, sil
 je 0x140025f4e
 and ebx, 0x1f
 inc ebx
 cmp ebx, 0x10
 jle 0x140025f12
 lea ebx, [rbx+rbx*2-0x20]

0x140025f12:
 cmp ebx, 0x1
 jne 0x140025f33
 cmp dword ptr [rdi+0x4aa8], esi
 je 0x140025eb7
 mov rcx, qword ptr [rdi+0x4b58]
 mov dword ptr [rdi+0x4aa8], esi
 call sub_14002cfac
 jmp 0x140025eb7

0x140025f33:
 lea edx, [r12+1]
 lea rcx, [rdi+0x4aa8]
 call sub_140021670
 mov edx, ebx
 mov rcx, rdi
 call sub_140023508

0x140025f4e:
 cmp qword ptr [rdi+0x648], rsi
 setne al

0x140025f58:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_3]
 add rsp, 0x20
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 ret 
sub_140025e34   endp
 
 int3 

0x140025f70:
 mov qword ptr [rsp+0x8], rbx
 mov qword ptr [rsp+0x10], rsi
 mov qword ptr [rsp+0x18], rdi
 push r12
 sub rsp, 0x20
 mov rbx, rcx
 mov rcx, qword ptr [rcx+0x648]
 mov rax, qword ptr [rbx+0x4ca0]
 cmp rcx, rax
 jbe 0x140025fcb
 mov rdx, qword ptr [rbx+0x4cb0]
 cmp rcx, rdx
 ja 0x140025fcb
 mov r12d, 0x1
 cmp word ptr [rcx], r12w
 je 0x140025fe4
 cmp qword ptr [rcx+4], rax
 jbe 0x140025fcb
 cmp qword ptr [rcx+4], rdx
 ja 0x140025fcb
 mov rdx, rbx
 call 0x140023da8

0x140025fc7:
 test al, al
 jne 0x140025fec

0x140025fcb:
 or eax, 0xffffffff

0x140025fce:
 mov rbx, qword ptr [rsp+0x30]
 mov rsi, qword ptr [rsp+0x38]
 mov rdi, qword ptr [rsp+0x40]
 add rsp, 0x20
 pop r12
 ret 

0x140025fe4:
 mov rdx, rbx
 call 0x140021914

0x140025fec:
 mov edx, dword ptr [rbx+0x4a90]
 mov ecx, dword ptr [rbx+0x4a94]
 mov eax, edx
 imul eax, ecx
 add dword ptr [rbx+0x4a88], eax
 mov eax, dword ptr [rbx+0x4a98]
 sub eax, ecx
 imul eax, edx
 mov dword ptr [rbx+0x4a90], eax
 cmp qword ptr [rbx+0x660], 0x0
 je 0x140026059
 cmp dword ptr [rbx+0x670], 0x0
 mov rax, qword ptr [rbx+0x660]
 movzx esi, byte ptr [rax]
 jne 0x14002611f
 mov rax, qword ptr [rax+2]
 cmp rax, qword ptr [rbx+0x4ca0]
 jbe 0x14002611f
 mov qword ptr [rbx+0x658], rax
 mov qword ptr [rbx+0x648], rax
 jmp 0x14002614b

0x140026059:
 mov ecx, dword ptr [rbx+0x4a88]
 mov edx, dword ptr [rbx+0x4a90]
 lea eax, [rcx+rdx]
 xor eax, ecx
 cmp eax, 0x1000000
 jb 0x140026087
 cmp edx, 0x8000
 jae 0x1400260d4
 neg ecx
 and ecx, 0x7fff
 mov dword ptr [rbx+0x4a90], ecx

0x140026087:
 mov rdi, qword ptr [rbx+0x4aa0]
 cmp dword ptr [rdi+0x8], 0x7fe2
 jle 0x14002609f
 mov rcx, rdi
 call sub_14002240c

0x14002609f:
 movsxd rdx, dword ptr [rdi+0x8]
 mov rax, qword ptr [rdi+0x18]
 movzx r8d, byte ptr [rax+rdx]
 lea eax, [rdx+1]
 mov dword ptr [rdi+0x8], eax
 mov eax, dword ptr [rbx+0x4a8c]
 shl dword ptr [rbx+0x4a90], 8
 shl eax, 8
 or eax, r8d
 shl dword ptr [rbx+0x4a88], 8
 mov dword ptr [rbx+0x4a8c], eax
 jmp 0x140026059

0x1400260d4:
 mov rax, qword ptr [rbx+0x648]
 add dword ptr [rbx+0x670], r12d
 mov rcx, qword ptr [rax+0xc]
 mov qword ptr [rbx+0x648], rcx
 cmp rcx, qword ptr [rbx+0x4ca0]
 jbe 0x140025fcb
 cmp rcx, qword ptr [rbx+0x4cb0]
 ja 0x140025fcb
 movzx eax, word ptr [rcx]
 cmp eax, dword ptr [rbx+0x668]
 je 0x1400260d4
 mov rdx, rbx
 call 0x140023fe0
 jmp 0x140025fc7

0x14002611f:
 mov rcx, rbx
 call 0x14002397c
 cmp byte ptr [rbx+0xa80], 0x0
 jne 0x14002614b
 lea rcx, [rbx+0x680]
 xor edx, edx
 mov r8d, 0x100
 mov byte ptr [rbx+0xa80], r12b
 call 0x14002d190

0x14002614b:
 mov ecx, dword ptr [rbx+0x4a88]
 mov edx, dword ptr [rbx+0x4a90]
 lea eax, [rcx+rdx]
 xor eax, ecx
 cmp eax, 0x1000000
 jb 0x140026179
 cmp edx, 0x8000
 jae 0x1400261c6
 neg ecx
 and ecx, 0x7fff
 mov dword ptr [rbx+0x4a90], ecx

0x140026179:
 mov rdi, qword ptr [rbx+0x4aa0]
 cmp dword ptr [rdi+0x8], 0x7fe2
 jle 0x140026191
 mov rcx, rdi
 call sub_14002240c

0x140026191:
 movsxd rdx, dword ptr [rdi+0x8]
 mov rax, qword ptr [rdi+0x18]
 movzx r8d, byte ptr [rax+rdx]
 lea eax, [rdx+1]
 mov dword ptr [rdi+0x8], eax
 mov eax, dword ptr [rbx+0x4a8c]
 shl dword ptr [rbx+0x4a90], 8
 shl eax, 8
 or eax, r8d
 shl dword ptr [rbx+0x4a88], 8
 mov dword ptr [rbx+0x4a8c], eax
 jmp 0x14002614b

0x1400261c6:
 mov eax, esi
 jmp 0x140025fce
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_1400261d0
; --------------------------------------------------------------------------
sub_1400261d0   proc \
 arg_1 : qword, ; [rsp+0x60]
 arg_2 : qword, ; [rsp+0x68]
 arg_3 : qword, ; [rsp+0x70]
 arg_4 : qword ; [rsp+0x78]

 local local_1: dword ; [rsp+0x20]
 local local_2: dword ; [rsp+0x24]
 local local_3: dword ; [rsp+0x28]
 local local_4: dword ; [rsp+0x2c]

 mov rax, rsp
 mov qword ptr [rax+0x10], rbx
 mov qword ptr [rax+0x18], rbp
 mov qword ptr [rax+0x20], rsi
 mov qword ptr [rax+0x8], rcx
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x30
 xor r11d, r11d
 mov rbx, rdx
 mov rsi, rcx
 mov r8d, 0x1
 cmp byte ptr [rdx+0x38], r11b
 jne 0x140026237
 mov byte ptr [rdx+0x38], r8b
 lea r9, [rdx+0x3c]
 lea r8, [rdx+0x24]
 add rdx, 8
 call sub_1400258ac
 xor r11d, r11d
 cmp al, r11b
 jne 0x140026231
 lea eax, [r11+1]
 mov byte ptr [rbx+0x4adc], al
 jmp 0x140026a7b

0x140026231:
 mov r8d, 0x1

0x140026237:
 mov edx, dword ptr [rbx+0x24]
 mov eax, dword ptr [rbx+0x30]
 lea ecx, [rdx+rax]
 cmp dword ptr [rbx+0x8], ecx
 jle 0x140026251
 mov byte ptr [rbx+0x4adc], r8b
 jmp 0x140026a7b

0x140026251:
 mov eax, dword ptr [rbx+0x2c]
 mov r13d, dword ptr [rbx+0x4ad8]
 mov dword ptr [rbx+0x4ae8], r11d
 lea r14d, [rax+rdx-1]
 sub r13d, 0x10
 cmp r14d, r13d
 mov r15d, r13d
 cmovl r15d, r14d

0x140026275:
 mov ecx, dword ptr [rbx+0x8]
 cmp ecx, r15d
 jl 0x1400262b2
 cmp ecx, r14d
 jg 0x140026a7b
 jne 0x140026294
 mov eax, dword ptr [rbx+0x28]
 cmp dword ptr [rbx+0xc], eax
 jge 0x140026a7b

0x140026294:
 cmp ecx, r13d
 jl 0x1400262a6
 cmp byte ptr [rbx+0x4ade], r11b
 je 0x140026a74

0x1400262a6:
 cmp ecx, dword ptr [rbx+0x4ad8]
 jge 0x140026a74

0x1400262b2:
 mov ecx, dword ptr [rbx+0x4aec]
 lea eax, [rcx-8]
 cmp dword ptr [rbx+0x4ae8], eax
 jbe 0x1400262fe
 lea eax, [rcx+rcx]
 mov rcx, qword ptr [rbx+0x4ae0]
 lea rdx, [rax+rax*2]
 mov dword ptr [rbx+0x4aec], eax
 shl rdx, 2
 call 0x14002cfec
 xor r11d, r11d
 mov qword ptr [rbx+0x4ae0], rax
 cmp rax, r11
 jne 0x1400262fe
 lea rcx, [0x140050e70]
 call 0x14000b140
 xor r11d, r11d

0x1400262fe:
 mov eax, dword ptr [rbx+0x4ae8]
 mov r12, qword ptr [rbx+0x4ae0]
 lea rbp, [rax+rax*2]
 inc eax
 mov dword ptr [rbx+0x4ae8], eax
 mov rcx, qword ptr [rbx+0x18]
 movsxd rdx, dword ptr [rbx+0x8]
 movzx eax, byte ptr [rcx+rdx+1]
 movzx r8d, byte ptr [rcx+rdx]
 mov r9d, dword ptr [rbx+0xc]
 shl r8d, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 shl r8d, 8
 sub ecx, r9d
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rbx+0xc0]
 and r8d, 0xfffe
 cmp r8d, dword ptr [rbx+rcx*4+0x40]
 jae 0x140026393
 mov eax, 0x10
 sub eax, ecx
 mov cl, al
 shr r8d, cl
 movzx ecx, byte ptr [r8+rbx+0xc4]
 add ecx, r9d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [rbx+0x8]
 and ecx, 7
 mov dword ptr [rbx+0x8], eax
 mov dword ptr [rbx+0xc], ecx
 movzx ecx, word ptr [rbx+r8*2+0x4c4]
 jmp 0x140026401

0x140026393:
 lea eax, [rcx+1]
 mov edx, 0xf
 movsxd rcx, eax
 cmp eax, edx
 jae 0x1400263bf
 lea rcx, [rbx+rcx*4+0x40]
 lea r10d, [rdx-0xe]

0x1400263ab:
 cmp r8d, dword ptr [rcx]
 jb 0x1400263bd
 add eax, r10d
 add rcx, 4
 cmp eax, edx
 jb 0x1400263ab
 jmp 0x1400263bf

0x1400263bd:
 mov edx, eax

0x1400263bf:
 lea ecx, [r9+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rbx+0xc], ecx
 mov ecx, 0x10
 add eax, dword ptr [rbx+0x8]
 sub ecx, edx
 mov dword ptr [rbx+0x8], eax
 lea eax, [rdx-1]
 sub r8d, dword ptr [rbx+rax*4+0x40]
 mov eax, edx
 shr r8d, cl
 add r8d, dword ptr [rbx+rax*4+0x80]
 cmp r8d, dword ptr [rbx+0x3c]
 sbb eax, eax
 and eax, r8d
 movzx ecx, word ptr [rbx+rax*2+0xcc4]

0x140026401:
 cmp ecx, 0x100
 jae 0x14002645e
 mov r8d, 0x1
 cmp dword ptr [rbx+0x4ae8], r8d
 jbe 0x14002644a
 lea rdx, [r12+rbp*4-0xc]
 cmp dword ptr [rdx], r11d
 jne 0x14002644a
 movzx eax, word ptr [rdx+4]
 lea r9d, [r8+2]
 cmp ax, r9w
 jae 0x14002644a
 add ax, r8w
 movzx eax, ax
 mov word ptr [rdx+4], ax
 mov byte ptr [rax+rdx+0x8], cl
 dec dword ptr [rbx+0x4ae8]
 jmp 0x140026275

0x14002644a:
 mov dword ptr [r12+rbp*4], r11d
 mov byte ptr [r12+rbp*4+0x8], cl
 mov word ptr [r12+rbp*4+4], r11w
 jmp 0x140026275

0x14002645e:
 cmp ecx, 0x106
 jb 0x14002683a
 lea r10d, [rcx-0x106]
 cmp r10d, 8
 jae 0x14002647d
 add r10d, 2
 jmp 0x1400264f7

0x14002647d:
 mov r11d, r10d
 and r10d, 3
 or r10d, 4
 shr r11d, 2
 dec r11d
 mov ecx, r11d
 shl r10d, cl
 add r10d, 2
 test r11d, r11d
 je 0x1400264f7
 movsxd rdx, dword ptr [rbx+0x8]
 mov rcx, qword ptr [rbx+0x18]
 mov r9d, dword ptr [rbx+0xc]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 sub ecx, r9d
 shl r8d, 8
 or r8d, eax
 shr r8d, cl
 mov ecx, 0x10
 sub ecx, r11d
 movzx edx, r8w
 shr edx, cl
 lea ecx, [r9+r11]
 mov eax, ecx
 add r10d, edx
 shr eax, 3
 add eax, dword ptr [rbx+0x8]
 and ecx, 7
 mov dword ptr [rbx+0x8], eax
 mov dword ptr [rbx+0xc], ecx

0x1400264f7:
 mov rcx, qword ptr [rbx+0x18]
 movsxd rdx, dword ptr [rbx+0x8]
 mov r9d, dword ptr [rbx+0xc]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 shl r8d, 8
 sub ecx, r9d
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rbx+0xfac]
 and r8d, 0xfffe
 cmp r8d, dword ptr [rbx+rcx*4+0xf2c]
 jae 0x140026575
 mov eax, 0x10
 sub eax, ecx
 mov cl, al
 shr r8d, cl
 movzx ecx, byte ptr [r8+rbx+0xfb0]
 add ecx, r9d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [rbx+0x8]
 and ecx, 7
 mov dword ptr [rbx+0x8], eax
 mov dword ptr [rbx+0xc], ecx
 movzx r11d, word ptr [rbx+r8*2+0x13b0]
 jmp 0x1400265e8

0x140026575:
 lea eax, [rcx+1]
 mov edx, 0xf
 movsxd rcx, eax
 cmp eax, edx
 jae 0x14002659f
 lea rcx, [rbx+rcx*4+0xf2c]

0x14002658c:
 cmp r8d, dword ptr [rcx]
 jb 0x14002659d
 inc eax
 add rcx, 4
 cmp eax, edx
 jb 0x14002658c
 jmp 0x14002659f

0x14002659d:
 mov edx, eax

0x14002659f:
 lea ecx, [r9+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rbx+0xc], ecx
 mov ecx, 0x10
 add eax, dword ptr [rbx+0x8]
 sub ecx, edx
 mov dword ptr [rbx+0x8], eax
 lea eax, [rdx-1]
 sub r8d, dword ptr [rbx+rax*4+0xf2c]
 mov eax, edx
 shr r8d, cl
 add r8d, dword ptr [rbx+rax*4+0xf6c]
 cmp r8d, dword ptr [rbx+0xf28]
 sbb eax, eax
 and eax, r8d
 movzx r11d, word ptr [rbx+rax*2+0x1bb0]

0x1400265e8:
 mov r8d, 0x1
 cmp r11d, 4
 jae 0x1400265fc
 inc r11d
 jmp 0x140026808

0x1400265fc:
 mov esi, r11d
 and r11d, r8d
 or r11d, 2
 shr esi, 0x1
 sub esi, r8d
 mov ecx, esi
 shl r11d, cl
 add r11d, r8d
 test esi, esi
 je 0x140026803
 cmp esi, 4
 jb 0x14002678e
 jbe 0x140026699
 movsxd r8, dword ptr [rbx+0x8]
 mov rdx, qword ptr [rbx+0x18]
 mov ecx, dword ptr [rbx+0xc]
 movzx eax, byte ptr [rdx+r8]
 movzx r9d, byte ptr [rdx+r8+1]
 shl eax, 8
 or r9d, eax
 movzx eax, byte ptr [rdx+r8+2]
 shl r9d, 8
 or r9d, eax
 movzx eax, byte ptr [rdx+r8+3]
 movzx edx, byte ptr [rdx+r8+4]
 shl r9d, 8
 or r9d, eax
 mov eax, 8
 sub al, cl
 shl r9d, cl
 mov cl, al
 mov eax, dword ptr [rbx+0xc]
 shr edx, cl
 mov ecx, 0x24
 sub ecx, esi
 or r9d, edx
 shr r9d, cl
 lea ecx, [rax+rsi-4]
 mov eax, ecx
 shl r9d, 4
 shr eax, 3
 add r11d, r9d
 add dword ptr [rbx+0x8], eax
 and ecx, 7
 mov dword ptr [rbx+0xc], ecx

0x140026699:
 mov rcx, qword ptr [rbx+0x18]
 movsxd rdx, dword ptr [rbx+0x8]
 mov r9d, dword ptr [rbx+0xc]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 shl r8d, 8
 sub ecx, r9d
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rbx+0x1e98]
 and r8d, 0xfffe
 cmp r8d, dword ptr [rbx+rcx*4+0x1e18]
 jae 0x140026717
 mov eax, 0x10
 sub eax, ecx
 mov cl, al
 shr r8d, cl
 movzx ecx, byte ptr [r8+rbx+0x1e9c]
 add ecx, r9d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [rbx+0x8]
 and ecx, 7
 mov dword ptr [rbx+0x8], eax
 mov dword ptr [rbx+0xc], ecx
 movzx eax, word ptr [rbx+r8*2+0x229c]
 jmp 0x140026789

0x140026717:
 lea eax, [rcx+1]
 mov edx, 0xf
 movsxd rcx, eax
 cmp eax, edx
 jae 0x140026741
 lea rcx, [rbx+rcx*4+0x1e18]

0x14002672e:
 cmp r8d, dword ptr [rcx]
 jb 0x14002673f
 inc eax
 add rcx, 4
 cmp eax, edx
 jb 0x14002672e
 jmp 0x140026741

0x14002673f:
 mov edx, eax

0x140026741:
 lea ecx, [r9+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rbx+0xc], ecx
 mov ecx, 0x10
 add eax, dword ptr [rbx+0x8]
 sub ecx, edx
 mov dword ptr [rbx+0x8], eax
 lea eax, [rdx-1]
 sub r8d, dword ptr [rbx+rax*4+0x1e18]
 mov eax, edx
 shr r8d, cl
 add r8d, dword ptr [rbx+rax*4+0x1e58]
 cmp r8d, dword ptr [rbx+0x1e14]
 sbb eax, eax
 and eax, r8d
 movzx eax, word ptr [rbx+rax*2+0x2a9c]

0x140026789:
 add r11d, eax
 jmp 0x1400267fd

0x14002678e:
 movsxd r8, dword ptr [rbx+0x8]
 mov rdx, qword ptr [rbx+0x18]
 mov ecx, dword ptr [rbx+0xc]
 movzx eax, byte ptr [rdx+r8+1]
 movzx r9d, byte ptr [rdx+r8]
 shl r9d, 8
 or r9d, eax
 movzx eax, byte ptr [rdx+r8+2]
 shl r9d, 8
 or r9d, eax
 movzx eax, byte ptr [rdx+r8+3]
 movzx edx, byte ptr [rdx+r8+4]
 shl r9d, 8
 or r9d, eax
 mov eax, 8
 sub al, cl
 shl r9d, cl
 mov cl, al
 mov eax, dword ptr [rbx+0xc]
 shr edx, cl
 mov ecx, 0x20
 sub ecx, esi
 or r9d, edx
 shr r9d, cl
 lea ecx, [rsi+rax]
 mov eax, ecx
 add r11d, r9d
 shr eax, 3
 add dword ptr [rbx+0x8], eax
 and ecx, 7
 mov dword ptr [rbx+0xc], ecx

0x1400267fd:
 mov r8d, 0x1

0x140026803:
 mov rsi, qword ptr [arg_1]

0x140026808:
 cmp r11d, 0x100
 jbe 0x14002682c
 inc r10d
 cmp r11d, 0x2000
 jbe 0x14002682c
 add r10d, r8d
 cmp r11d, 0x40000
 jbe 0x14002682c
 add r10d, r8d

0x14002682c:
 mov dword ptr [r12+rbp*4], r8d
 mov dword ptr [r12+rbp*4+0x8], r11d
 jmp 0x140026a66

0x14002683a:
 cmp ecx, 0x100
 jne 0x1400268ac
 lea r8, [local_1]
 lea rdx, [rbx+0x8]
 mov rcx, rsi
 call sub_14002558c
 movzx eax, byte ptr [local_1]
 mov dword ptr [r12+rbp*4], 4
 mov word ptr [r12+rbp*4+4], ax
 mov eax, dword ptr [local_2]
 mov r8d, 0x1
 mov dword ptr [r12+rbp*4+0x8], eax
 mov eax, dword ptr [rbx+0x4ae8]
 mov rcx, qword ptr [rbx+0x4ae0]
 lea rdx, [rax+rax*2]
 inc eax
 mov dword ptr [rbx+0x4ae8], eax
 movzx eax, byte ptr [local_4]
 mov dword ptr [rcx+rdx*4], 4
 mov word ptr [rcx+rdx*4+4], ax
 mov eax, dword ptr [local_3]
 mov dword ptr [rcx+rdx*4+0x8], eax
 jmp 0x140026a6c

0x1400268ac:
 cmp ecx, 0x101
 jne 0x1400268c7
 mov dword ptr [r12+rbp*4], 2
 mov r8d, 0x1
 jmp 0x140026275

0x1400268c7:
 mov eax, 3
 mov dword ptr [r12+rbp*4], eax
 lea eax, [rcx-0x102]
 mov dword ptr [r12+rbp*4+0x8], eax
 mov rcx, qword ptr [rbx+0x18]
 movsxd rdx, dword ptr [rbx+0x8]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 mov r9d, dword ptr [rbx+0xc]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 shl r8d, 8
 sub ecx, r9d
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rbx+0x2d84]
 and r8d, 0xfffe
 cmp r8d, dword ptr [rbx+rcx*4+0x2d04]
 jae 0x140026959
 mov eax, 0x10
 sub eax, ecx
 mov cl, al
 shr r8d, cl
 movzx ecx, byte ptr [r8+rbx+0x2d88]
 add ecx, r9d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [rbx+0x8]
 and ecx, 7
 mov dword ptr [rbx+0x8], eax
 mov dword ptr [rbx+0xc], ecx
 movzx r10d, word ptr [rbx+r8*2+0x3188]
 jmp 0x1400269d1

0x140026959:
 lea eax, [rcx+1]
 mov edx, 0xf
 movsxd rcx, eax
 cmp eax, edx
 jae 0x140026988
 lea rcx, [rbx+rcx*4+0x2d04]
 lea r10d, [rdx-0xe]

0x140026974:
 cmp r8d, dword ptr [rcx]
 jb 0x140026986
 add eax, r10d
 add rcx, 4
 cmp eax, edx
 jb 0x140026974
 jmp 0x140026988

0x140026986:
 mov edx, eax

0x140026988:
 lea ecx, [r9+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rbx+0xc], ecx
 mov ecx, 0x10
 add eax, dword ptr [rbx+0x8]
 sub ecx, edx
 mov dword ptr [rbx+0x8], eax
 lea eax, [rdx-1]
 sub r8d, dword ptr [rbx+rax*4+0x2d04]
 mov eax, edx
 shr r8d, cl
 add r8d, dword ptr [rbx+rax*4+0x2d44]
 cmp r8d, dword ptr [rbx+0x2d00]
 sbb eax, eax
 and eax, r8d
 movzx r10d, word ptr [rbx+rax*2+0x3988]

0x1400269d1:
 mov r8d, 0x1
 cmp r10d, 8
 jae 0x1400269e6
 add r10d, 2
 jmp 0x140026a66

0x1400269e6:
 mov r11d, r10d
 and r10d, 3
 or r10d, 4
 shr r11d, 2
 sub r11d, r8d
 mov ecx, r11d
 shl r10d, cl
 add r10d, 2
 test r11d, r11d
 je 0x140026a66
 movsxd rdx, dword ptr [rbx+0x8]
 mov rcx, qword ptr [rbx+0x18]
 mov r9d, dword ptr [rbx+0xc]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 sub ecx, r9d
 shl r8d, 8
 or r8d, eax
 shr r8d, cl
 mov ecx, 0x10
 sub ecx, r11d
 movzx edx, r8w
 mov r8d, 0x1
 shr edx, cl
 lea ecx, [r9+r11]
 mov eax, ecx
 add r10d, edx
 shr eax, 3
 add eax, dword ptr [rbx+0x8]
 and ecx, 7
 mov dword ptr [rbx+0x8], eax
 mov dword ptr [rbx+0xc], ecx

0x140026a66:
 mov word ptr [r12+rbp*4+4], r10w

0x140026a6c:
 xor r11d, r11d
 jmp 0x140026275

0x140026a74:
 mov byte ptr [rbx+0x4adf], r8b

0x140026a7b:
 mov rbx, qword ptr [arg_2]
 mov rbp, qword ptr [arg_3]
 mov rsi, qword ptr [arg_4]
 add rsp, 0x30
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 ret 
sub_1400261d0   endp
 

0x140026a98:
 mov qword ptr [rsp+0x18], rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x20
 mov r12d, dword ptr [rcx+0xc8]
 mov edx, dword ptr [rcx+0xc0]
 xor r13d, r13d
 sub edx, r12d
 mov rdi, rcx
 mov rsi, r13
 and edx, dword ptr [rcx+0xe960]
 cmp qword ptr [rcx+0xe918], r13
 jbe 0x140026e83

0x140026ad8:
 mov rax, qword ptr [rdi+0xe910]
 mov rbp, qword ptr [rax+rsi*8]
 cmp rbp, r13
 je 0x140026e73
 cmp byte ptr [rbp+0xc], r13b
 je 0x140026afb
 mov byte ptr [rbp+0xc], r13b
 jmp 0x140026e73

0x140026afb:
 mov r15d, dword ptr [rbp]
 mov ebx, dword ptr [rbp+4]
 mov eax, edx
 mov ecx, r15d
 sub ecx, r12d
 and rcx, qword ptr [rdi+0xe960]
 cmp rcx, rax
 jae 0x140026e73
 cmp r12d, r15d
 je 0x140026b3f
 mov r8, r15
 mov edx, r12d
 mov rcx, rdi
 call sub_1400257c4
 mov edx, dword ptr [rdi+0xc0]
 mov r12d, r15d
 sub edx, r15d
 and edx, dword ptr [rdi+0xe960]

0x140026b3f:
 cmp ebx, edx
 ja 0x140026ed5
 lea r12d, [rbx+r15]
 and r12d, dword ptr [rdi+0xe960]
 cmp r15d, r12d
 jb 0x140026b91
 cmp r12d, r13d
 je 0x140026b91
 mov eax, dword ptr [rdi+0xe958]
 mov r8, r15
 lea rcx, [rdi+0xe890]
 add r8, qword ptr [rdi+0x4b90]
 sub eax, r15d
 xor edx, edx
 mov r9d, eax
 mov ebx, eax
 call sub_140015af0
 mov r8, qword ptr [rdi+0x4b90]
 mov r9d, r12d
 mov rdx, rbx
 jmp 0x140026ba0

0x140026b91:
 mov r8, r15
 mov r9, rbx
 add r8, qword ptr [rdi+0x4b90]
 xor edx, edx

0x140026ba0:
 lea rcx, [rdi+0xe890]
 call sub_140015af0
 mov rax, qword ptr [rdi+0xe8f0]
 mov ecx, dword ptr [rbp+0x10]
 mov rbx, qword ptr [rax+rcx*8]
 mov rax, qword ptr [rbx+0x50]
 cmp rax, 0x40
 jbe 0x140026bfd
 cmp rax, qword ptr [rbp+0x58]
 jbe 0x140026bdc
 sub rax, qword ptr [rbp+0x50]
 lea rcx, [rbp+0x48]
 mov rdx, rax
 call sub_140001294
 jmp 0x140026be0

0x140026bdc:
 mov qword ptr [rbp+0x50], rax

0x140026be0:
 mov r8, qword ptr [rbx+0x50]
 mov rdx, qword ptr [rbx+0x48]
 mov rcx, qword ptr [rbp+0x48]
 sub r8, 0x40
 add rdx, 0x40
 add rcx, 0x40
 call 0x14002d490

0x140026bfd:
 lea rdx, [rbp+0x18]
 mov rcx, rdi
 call sub_1400222fc
 mov rax, qword ptr [rbp+0x50]
 cmp rax, 0x40
 jbe 0x140026c54
 cmp qword ptr [rbx+0x50], rax
 jae 0x140026c35
 lea rcx, [rbx+0x48]
 cmp rax, qword ptr [rcx+0x10]
 jbe 0x140026c31
 sub rax, qword ptr [rcx+0x8]
 mov rdx, rax
 call sub_140001294
 jmp 0x140026c35

0x140026c31:
 mov qword ptr [rcx+0x8], rax

0x140026c35:
 mov r8, qword ptr [rbp+0x50]
 mov rdx, qword ptr [rbp+0x48]
 mov rcx, qword ptr [rbx+0x48]
 sub r8, 0x40
 add rdx, 0x40
 add rcx, 0x40
 call 0x14002d490
 jmp 0x140026c5d

0x140026c54:
 lea rcx, [rbx+0x48]
 call sub_1400024e0

0x140026c5d:
 mov rcx, qword ptr [rbp+0xa8]
 mov rax, qword ptr [rdi+0xe910]
 mov ebp, dword ptr [rbp+0xb0]
 mov rbx, qword ptr [rax+rsi*8]
 xor r13d, r13d
 mov qword ptr [rsp+0x68], rcx
 cmp rbx, r13
 je 0x140026cb9
 mov rcx, qword ptr [rbx+0x68]
 cmp rcx, r13
 je 0x140026c90
 call sub_14002cfac

0x140026c90:
 mov rcx, qword ptr [rbx+0x48]
 cmp rcx, r13
 je 0x140026c9e
 call sub_14002cfac

0x140026c9e:
 mov rcx, qword ptr [rbx+0x18]
 cmp rcx, r13
 je 0x140026cac
 call sub_14002cfac

0x140026cac:
 mov rcx, rbx
 call 0x14002cfa4
 mov rcx, qword ptr [rsp+0x68]

0x140026cb9:
 mov rax, qword ptr [rdi+0xe910]
 lea r14, [rsi+1]
 mov qword ptr [rax+rsi*8], r13
 cmp r14, qword ptr [rdi+0xe918]
 jae 0x140026e46

0x140026cd5:
 mov rax, qword ptr [rdi+0xe910]
 mov rbx, qword ptr [rax+rsi*8+0x8]
 cmp rbx, r13
 je 0x140026e46
 cmp dword ptr [rbx], r15d
 jne 0x140026e46
 cmp dword ptr [rbx+4], ebp
 jne 0x140026e46
 cmp byte ptr [rbx+0xc], r13b
 jne 0x140026e46
 mov r8, rcx
 lea rcx, [rdi+0xe890]
 mov r9d, ebp
 xor edx, edx
 call sub_140015af0
 mov rax, qword ptr [rdi+0xe8f0]
 mov r11d, dword ptr [rbx+0x10]
 mov rbp, qword ptr [rax+r11*8]
 mov rax, qword ptr [rbp+0x50]
 cmp rax, 0x40
 jbe 0x140026d6c
 cmp rax, qword ptr [rbx+0x58]
 jbe 0x140026d4b
 sub rax, qword ptr [rbx+0x50]
 lea rcx, [rbx+0x48]
 mov rdx, rax
 call sub_140001294
 jmp 0x140026d4f

0x140026d4b:
 mov qword ptr [rbx+0x50], rax

0x140026d4f:
 mov r8, qword ptr [rbp+0x50]
 mov rdx, qword ptr [rbp+0x48]
 mov rcx, qword ptr [rbx+0x48]
 sub r8, 0x40
 add rdx, 0x40
 add rcx, 0x40
 call 0x14002d490

0x140026d6c:
 lea rdx, [rbx+0x18]
 mov rcx, rdi
 call sub_1400222fc
 mov rax, qword ptr [rbx+0x50]
 cmp rax, 0x40
 jbe 0x140026dc3
 cmp qword ptr [rbp+0x50], rax
 jae 0x140026da4
 lea rcx, [rbp+0x48]
 cmp rax, qword ptr [rcx+0x10]
 jbe 0x140026da0
 sub rax, qword ptr [rcx+0x8]
 mov rdx, rax
 call sub_140001294
 jmp 0x140026da4

0x140026da0:
 mov qword ptr [rcx+0x8], rax

0x140026da4:
 mov r8, qword ptr [rbx+0x50]
 mov rdx, qword ptr [rbx+0x48]
 mov rcx, qword ptr [rbp+0x48]
 sub r8, 0x40
 add rdx, 0x40
 add rcx, 0x40
 call 0x14002d490
 jmp 0x140026dcc

0x140026dc3:
 lea rcx, [rbp+0x48]
 call sub_1400024e0

0x140026dcc:
 mov rcx, qword ptr [rbx+0xa8]
 mov rax, qword ptr [rdi+0xe910]
 mov ebp, dword ptr [rbx+0xb0]
 inc rsi
 xor r13d, r13d
 inc r14
 mov rbx, qword ptr [rax+rsi*8]
 mov qword ptr [rsp+0x68], rcx
 cmp rbx, r13
 je 0x140026e2e
 mov rcx, qword ptr [rbx+0x68]
 cmp rcx, r13
 je 0x140026e05
 call sub_14002cfac

0x140026e05:
 mov rcx, qword ptr [rbx+0x48]
 cmp rcx, r13
 je 0x140026e13
 call sub_14002cfac

0x140026e13:
 mov rcx, qword ptr [rbx+0x18]
 cmp rcx, r13
 je 0x140026e21
 call sub_14002cfac

0x140026e21:
 mov rcx, rbx
 call 0x14002cfa4
 mov rcx, qword ptr [rsp+0x68]

0x140026e2e:
 mov rax, qword ptr [rdi+0xe910]
 mov qword ptr [rax+rsi*8], r13
 cmp r14, qword ptr [rdi+0xe918]
 jb 0x140026cd5

0x140026e46:
 mov rdx, rcx
 mov rcx, qword ptr [rdi]
 mov r8d, ebp
 mov ebx, ebp
 call 0x140016b00
 mov edx, dword ptr [rdi+0xc0]
 add qword ptr [rdi+0x4db0], rbx
 sub edx, r12d
 mov byte ptr [rdi+0x4daa], 0x1
 and edx, dword ptr [rdi+0xe960]

0x140026e73:
 inc rsi
 cmp rsi, qword ptr [rdi+0xe918]
 jb 0x140026ad8

0x140026e83:
 mov r8, qword ptr [rdi+0xc0]
 mov edx, r12d
 mov rcx, rdi
 call sub_1400257c4
 mov r11, qword ptr [rdi+0xc0]
 mov qword ptr [rdi+0xc8], r11

0x140026ea3:
 mov rbx, qword ptr [rsp+0x70]
 add rsp, 0x20
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 

0x140026eb8:
 mov rax, qword ptr [rdi+0xe910]
 mov rcx, qword ptr [rax+rsi*8]
 cmp rcx, r13
 je 0x140026ed2
 cmp byte ptr [rcx+0xc], r13b
 je 0x140026ed2
 mov byte ptr [rcx+0xc], r13b

0x140026ed2:
 inc rsi

0x140026ed5:
 cmp rsi, qword ptr [rdi+0xe918]
 jb 0x140026eb8
 mov eax, r12d
 mov qword ptr [rdi+0xc8], rax
 jmp 0x140026ea3
 int3 
 int3 

0x140026eec:
 mov qword ptr [rsp+0x10], rbx
 mov qword ptr [rsp+0x18], rbp
 mov qword ptr [rsp+0x20], rsi
 push rdi
 push r12
 push r14
 sub rsp, 0x1f0
 mov rax, qword ptr [0x140045948]
 xor rax, rsp
 mov qword ptr [rsp+0x1e0], rax
 mov eax, dword ptr [rcx+0xd0]
 mov rbx, rcx
 sub eax, 0x19
 cmp dword ptr [rcx+0x8], eax
 jle 0x140026f3a
 call sub_140022260
 test al, al
 jne 0x140026f3a

0x140026f33:
 xor al, al
 jmp 0x1400272db

0x140026f3a:
 mov edx, dword ptr [rbx+0xc]
 lea rcx, [rbx+0x8]
 neg edx
 and edx, 7
 call sub_140011440
 lea rcx, [rbx+0x8]
 call sub_140011458
 bt eax, 0xf
 jae 0x140026f7f
 lea r8, [rbx+0xe6f0]
 lea rcx, [rbx+0x9a30]
 mov rdx, rbx
 mov dword ptr [rbx+0xe888], 0x1
 call sub_140025e34
 jmp 0x1400272db

0x140026f7f:
 and dword ptr [rbx+0xe888], 0x0
 and dword ptr [rbx+0x9a28], 0x0
 and dword ptr [rbx+0x9a2c], 0x0
 bt eax, 0xe
 mov r14d, 0x194
 jb 0x140026fb1
 lea rcx, [rbx+0xe6f4]
 mov r8, r14
 xor edx, edx
 call 0x14002d190

0x140026fb1:
 lea rcx, [rbx+0x8]
 mov edx, 2
 call sub_140011440
 xor ebp, ebp
 xor esi, esi

0x140026fc3:
 lea rcx, [rbx+0x8]
 call sub_140011458
 lea rcx, [rbx+0x8]
 mov edx, 4
 shr eax, 0xc
 movzx r12d, al
 call sub_140011440
 cmp r12d, 0xf
 jne 0x140027035
 lea rcx, [rbx+0x8]
 call sub_140011458
 lea rcx, [rbx+0x8]
 mov edx, 4
 shr eax, 0xc
 movzx r12d, al
 call sub_140011440
 test r12d, r12d
 jne 0x140027011
 mov byte ptr [rsp+rsi+0x20], 0xf
 jmp 0x14002703a

0x140027011:
 add r12d, 2
 jmp 0x140027029

0x140027017:
 dec r12d
 cmp ebp, 0x14
 jae 0x14002702e
 mov byte ptr [rsp+rsi+0x20], 0x0
 inc ebp
 inc rsi

0x140027029:
 test r12d, r12d
 jg 0x140027017

0x14002702e:
 dec ebp
 dec rsi
 jmp 0x14002703a

0x140027035:
 mov byte ptr [rsp+rsi+0x20], r12b

0x14002703a:
 inc ebp
 inc rsi
 cmp ebp, 0x14
 jb 0x140026fc3
 lea r8, [rbx+0x3c9c]
 lea rdx, [rsp+0x20]
 mov r9d, 0x14
 mov rcx, rbx
 call 0x140022b6c
 xor esi, esi

0x140027064:
 mov eax, dword ptr [rbx+0xd0]
 sub eax, 5
 cmp dword ptr [rbx+0x8], eax
 jle 0x140027082
 mov rcx, rbx
 call sub_140022260
 test al, al
 je 0x140026f33

0x140027082:
 mov rcx, qword ptr [rbx+0x18]
 movsxd rdx, dword ptr [rbx+0x8]
 mov r9d, dword ptr [rbx+0xc]
 movzx eax, byte ptr [rcx+rdx+1]
 movzx r8d, byte ptr [rcx+rdx]
 shl r8d, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 shl r8d, 8
 sub ecx, r9d
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rbx+0x3d20]
 and r8d, 0xfffe
 cmp r8d, dword ptr [rbx+rcx*4+0x3ca0]
 jae 0x140027101
 mov eax, 0x10
 sub eax, ecx
 mov cl, al
 shr r8d, cl
 movzx ecx, byte ptr [r8+rbx+0x3d24]
 add ecx, r9d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [rbx+0x8]
 and ecx, 7
 mov dword ptr [rbx+0x8], eax
 mov dword ptr [rbx+0xc], ecx
 movzx ecx, word ptr [rbx+r8*2+0x4124]
 jmp 0x140027173

0x140027101:
 lea eax, [rcx+1]
 mov edx, 0xf
 movsxd rcx, eax
 cmp eax, edx
 jae 0x14002712b
 lea rcx, [rbx+rcx*4+0x3ca0]

0x140027118:
 cmp r8d, dword ptr [rcx]
 jb 0x140027129
 inc eax
 add rcx, 4
 cmp eax, edx
 jb 0x140027118
 jmp 0x14002712b

0x140027129:
 mov edx, eax

0x14002712b:
 lea ecx, [r9+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rbx+0xc], ecx
 mov ecx, 0x10
 add eax, dword ptr [rbx+0x8]
 sub ecx, edx
 mov dword ptr [rbx+0x8], eax
 lea eax, [rdx-1]
 sub r8d, dword ptr [rbx+rax*4+0x3ca0]
 mov eax, edx
 shr r8d, cl
 add r8d, dword ptr [rbx+rax*4+0x3ce0]
 cmp r8d, dword ptr [rbx+0x3c9c]
 sbb eax, eax
 and eax, r8d
 movzx ecx, word ptr [rbx+rax*2+0x4924]

0x140027173:
 cmp ecx, 0x10
 jge 0x14002718f
 mov al, byte ptr [rsi+rbx+0xe6f4]
 add al, cl
 and al, 0xf
 inc rsi
 mov byte ptr [rsp+rsi+0x3f], al
 jmp 0x140027235

0x14002718f:
 cmp ecx, 0x12
 jge 0x1400271eb
 cmp ecx, 0x10
 lea rcx, [rbx+0x8]
 jne 0x1400271b1
 call sub_140011458
 mov edx, 3
 mov ebp, eax
 shr ebp, 0xd
 add ebp, 3
 jmp 0x1400271c3

0x1400271b1:
 call sub_140011458
 mov edx, 7
 mov ebp, eax
 shr ebp, 9
 add ebp, 0xb

0x1400271c3:
 lea rcx, [rbx+0x8]
 call sub_140011440
 test rsi, rsi
 jle 0x140027235
 jmp 0x1400271e5

0x1400271d3:
 dec ebp
 cmp rsi, r14
 jge 0x14002723e
 mov al, byte ptr [rsp+rsi+0x3f]
 inc rsi
 mov byte ptr [rsp+rsi+0x3f], al

0x1400271e5:
 test ebp, ebp
 jg 0x1400271d3
 jmp 0x140027235

0x1400271eb:
 lea rcx, [rbx+0x8]
 jne 0x140027205
 call sub_140011458
 mov edx, 3
 mov ebp, eax
 shr ebp, 0xd
 add ebp, 3
 jmp 0x140027217

0x140027205:
 call sub_140011458
 mov edx, 7
 mov ebp, eax
 shr ebp, 9
 add ebp, 0xb

0x140027217:
 lea rcx, [rbx+0x8]
 call sub_140011440
 jmp 0x140027231

0x140027222:
 dec ebp
 cmp rsi, r14
 jge 0x14002723e
 mov byte ptr [rsp+rsi+0x40], 0x0
 inc rsi

0x140027231:
 test ebp, ebp
 jg 0x140027222

0x140027235:
 cmp rsi, r14
 jl 0x140027064

0x14002723e:
 mov eax, dword ptr [rbx+0xd0]
 mov byte ptr [rbx+0xe88c], 0x1
 cmp dword ptr [rbx+0x8], eax
 jg 0x140026f33
 lea r8, [rbx+0xec]
 lea rdx, [rsp+0x40]
 mov r9d, 0x12b
 mov rcx, rbx
 call 0x140022b6c
 lea r8, [rbx+0xfd8]
 lea rdx, [rsp+0x16b]
 mov r9d, 0x3c
 mov rcx, rbx
 call 0x140022b6c
 lea r8, [rbx+0x1ec4]
 lea rdx, [rsp+0x1a7]
 mov r9d, 0x11
 mov rcx, rbx
 call 0x140022b6c
 lea r8, [rbx+0x2db0]
 lea rdx, [rsp+0x1b8]
 mov r9d, 0x1c
 mov rcx, rbx
 call 0x140022b6c
 lea rcx, [rbx+0xe6f4]
 lea rdx, [rsp+0x40]
 mov r8, r14
 call 0x14002d490
 mov al, 0x1

0x1400272db:
 mov rcx, qword ptr [rsp+0x1e0]
 xor rcx, rsp
 call 0x14002d160
 lea r11, [rsp+0x1f0]
 mov rbx, qword ptr [r11+0x28]
 mov rbp, qword ptr [r11+0x30]
 mov rsi, qword ptr [r11+0x38]
 mov rsp, r11
 pop r14
 pop r12
 pop rdi
 ret 

0x140027308:
 mov qword ptr [rsp+0x8], rbx
 push rdi
 sub rsp, 0x20
 mov dil, dl
 mov rbx, rcx
 test dl, dl
 jne 0x140027347
 mov byte ptr [rcx+0xe88c], dl
 add rcx, 0xe6f4
 mov r8d, 0x194
 xor edx, edx
 call 0x14002d190
 and dword ptr [rbx+0xe888], 0x0
 mov dword ptr [rbx+0xe6f0], 2

0x140027347:
 mov dl, dil
 mov rcx, rbx
 mov rbx, qword ptr [rsp+0x30]
 add rsp, 0x20
 pop rdi
 jmp sub_140025494
; --------------------------------------------------------------------------
; sub_14002735c
; --------------------------------------------------------------------------
sub_14002735c   proc \
 arg_1[0x10] : byte, ; [rsp+0x80]
 arg_2 : qword, ; [rsp+0x90]
 arg_3 : qword ; [rsp+0x98]

 local local_1: qword ; [rsp+0x20]

 push rbx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x38
 mov rbx, qword ptr [rcx+0xc8]
 mov rdx, qword ptr [rcx+0xc0]
 mov rdi, rcx
 sub rdx, rbx
 xor bpl, bpl
 xor esi, esi
 and rdx, qword ptr [rcx+0xe960]
 mov byte ptr [arg_1], bpl
 mov qword ptr [local_1], rdx
 mov rcx, rdx
 cmp qword ptr [rdi+0x88], rsi
 jbe 0x140027624
 xor r8d, r8d
 mov qword ptr [arg_3], r8

0x1400273b5:
 mov rax, qword ptr [rdi+0x80]
 lea r12, [r8+rax]
 cmp byte ptr [r12], 8
 je 0x1400275bc
 cmp byte ptr [r12+0xd], 0x0
 je 0x1400273fa
 mov eax, dword ptr [r12+4]
 sub rax, qword ptr [rdi+0xc8]
 and rax, qword ptr [rdi+0xe960]
 cmp rax, rdx
 ja 0x1400275bc
 mov byte ptr [r12+0xd], 0x0
 jmp 0x1400275bc

0x1400273fa:
 mov r14d, dword ptr [r12+4]
 mov r15d, dword ptr [r12+0x8]
 mov rax, r14
 mov r13, r14
 sub rax, rbx
 and rax, qword ptr [rdi+0xe960]
 cmp rax, rcx
 jae 0x1400275bc
 cmp rbx, r14
 je 0x14002744c
 mov r8, r14
 mov rdx, rbx
 mov rcx, rdi
 call sub_1400257c4
 mov rcx, qword ptr [rdi+0xc0]
 mov r8, qword ptr [arg_3]
 sub rcx, r14
 mov rbx, r14
 and rcx, qword ptr [rdi+0xe960]

0x14002744c:
 mov rbp, r15
 cmp r15, rcx
 ja 0x1400275de
 test r15d, r15d
 je 0x1400275bc
 add r15d, r14d
 and r15d, dword ptr [rdi+0xe960]
 cmp rbp, qword ptr [rdi+0x50]
 jbe 0x140027483
 mov rdx, rbp
 lea rcx, [rdi+0x40]
 sub rdx, qword ptr [rdi+0x48]
 call sub_140001294
 jmp 0x140027487

0x140027483:
 mov qword ptr [rdi+0x48], rbp

0x140027487:
 mov r10, qword ptr [rdi+0x40]
 mov qword ptr [arg_2], r10
 cmp r14d, r15d
 jb 0x14002751d
 test r15d, r15d
 je 0x14002751d
 mov r14, qword ptr [rdi+0xe958]
 sub r14, r13
 cmp byte ptr [rdi+0x4d98], 0x0
 je 0x1400274e9
 lea rcx, [rdi+0x4b98]
 mov r9, r14
 mov r8, r13
 mov rdx, r10
 call sub_1400228e0
 mov r13, qword ptr [arg_2]
 lea rcx, [rdi+0x4b98]
 lea rdx, [r14+r13]
 mov r9d, r15d
 xor r8d, r8d
 call sub_1400228e0
 jmp 0x14002755b

0x1400274e9:
 mov rax, qword ptr [rdi+0x4b90]
 mov r8, r14
 mov rcx, r10
 lea rdx, [r13+rax]
 call 0x14002d490
 mov r13, qword ptr [arg_2]
 mov rdx, qword ptr [rdi+0x4b90]
 lea rcx, [r14+r13]
 mov r8d, r15d
 call 0x14002d490
 jmp 0x14002755b

0x14002751d:
 cmp byte ptr [rdi+0x4d98], 0x0
 je 0x14002753d
 lea rcx, [rdi+0x4b98]
 mov r9, rbp
 mov r8, r14
 mov rdx, r10
 call sub_1400228e0
 jmp 0x140027553

0x14002753d:
 mov rax, qword ptr [rdi+0x4b90]
 mov r8, rbp
 mov rcx, r10
 lea rdx, [r14+rax]
 call 0x14002d490

0x140027553:
 mov r13, qword ptr [arg_2]

0x14002755b:
 mov r9, r12
 mov r8d, ebp
 mov rdx, r13
 mov rcx, rdi
 call sub_14002562c
 mov rcx, qword ptr [rdi+0x80]
 mov rdx, qword ptr [arg_3]
 mov byte ptr [rdx+rcx], 8
 test rax, rax
 je 0x140027592
 mov rcx, qword ptr [rdi]
 mov r8, rbp
 mov rdx, rax
 call 0x140016b00

0x140027592:
 mov rcx, qword ptr [rdi+0xc0]
 add qword ptr [rdi+0x4db0], rbp
 mov r8, qword ptr [arg_3]
 mov ebx, r15d
 mov byte ptr [rdi+0x4daa], 0x1
 sub rcx, rbx
 and rcx, qword ptr [rdi+0xe960]

0x1400275bc:
 add r8, 0x10
 inc rsi
 mov qword ptr [arg_3], r8
 cmp rsi, qword ptr [rdi+0x88]
 jae 0x14002761c
 mov rdx, qword ptr [local_1]
 jmp 0x1400273b5

0x1400275de:
 mov qword ptr [rdi+0xc8], rbx
 cmp rsi, qword ptr [rdi+0x88]
 jae 0x140027617
 mov rax, rsi
 shl rax, 4

0x1400275f5:
 mov rcx, qword ptr [rdi+0x80]
 cmp byte ptr [rax+rcx], 8
 je 0x140027607
 mov byte ptr [rax+rcx+0xd], 0x0

0x140027607:
 inc rsi
 add rax, 0x10
 cmp rsi, qword ptr [rdi+0x88]
 jb 0x1400275f5

0x140027617:
 mov bpl, 0x1
 jmp 0x140027624

0x14002761c:
 mov bpl, byte ptr [arg_1]

0x140027624:
 xor edx, edx
 xor r10d, r10d
 cmp qword ptr [rdi+0x88], rdx
 jbe 0x1400276ad
 xor r9d, r9d

0x140027635:
 test rdx, rdx
 je 0x140027655
 mov rcx, qword ptr [rdi+0x80]
 mov rax, r10
 sub rax, rdx
 add rax, rax
 movdqu xmm0, xmmword ptr [r9+rcx]
 movdqu xmmword ptr [rcx+rax*8], xmm0

0x140027655:
 mov rax, qword ptr [rdi+0x80]
 cmp byte ptr [r9+rax], 8
 jne 0x140027666
 inc rdx

0x140027666:
 inc r10
 add r9, 0x10
 cmp r10, qword ptr [rdi+0x88]
 jb 0x140027635
 test rdx, rdx
 je 0x1400276ad
 mov rax, qword ptr [rdi+0x88]
 sub rax, rdx
 cmp rax, qword ptr [rdi+0x90]
 jbe 0x1400276a6
 sub rax, qword ptr [rdi+0x88]
 lea rcx, [rdi+0x80]
 mov rdx, rax
 call sub_140022df0
 jmp 0x1400276ad

0x1400276a6:
 mov qword ptr [rdi+0x88], rax

0x1400276ad:
 test bpl, bpl
 jne 0x1400276d2
 mov r8, qword ptr [rdi+0xc0]
 mov rdx, rbx
 mov rcx, rdi
 call sub_1400257c4
 mov r11, qword ptr [rdi+0xc0]
 mov qword ptr [rdi+0xc8], r11

0x1400276d2:
 mov rax, qword ptr [rdi+0xe958]
 mov rdx, qword ptr [rdi+0xc0]
 mov r8, qword ptr [rdi+0xe960]
 mov ecx, 0x400000
 cmp rax, rcx
 cmovb rcx, rax
 lea rax, [rdx+rcx]
 and rax, r8
 mov qword ptr [rdi+0x4b88], rax
 cmp rax, rdx
 je 0x140027723
 mov rcx, qword ptr [rdi+0xc8]
 cmp rcx, rdx
 je 0x140027731
 sub rax, rdx
 sub rcx, rdx
 and rax, r8
 and rcx, r8
 cmp rcx, rax
 jae 0x140027731

0x140027723:
 mov rax, qword ptr [rdi+0xc8]
 mov qword ptr [rdi+0x4b88], rax

0x140027731:
 add rsp, 0x38
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 pop rbx
 ret 
sub_14002735c   endp
 
 int3 
 int3 

0x140027744:
 mov qword ptr [rsp+0x8], rbx
 mov qword ptr [rsp+0x10], rsi
 push rdi
 sub rsp, 0x20
 xor ebx, ebx
 mov sil, dl
 mov rdi, rcx
 cmp dl, bl
 jne 0x1400277c9
 lea r8d, [rbx+0x10]
 add rcx, 0xa0
 xor edx, edx
 call 0x14002d190
 lea rcx, [rdi+0xec]
 xor edx, edx
 mov r8d, 0x4a9c
 mov dword ptr [rdi+0xb0], ebx
 mov dword ptr [rdi+0xb4], ebx
 mov dword ptr [rdi+0xb8], ebx
 call 0x14002d190
 mov rax, qword ptr [rdi+0xe958]
 mov ecx, 0x400000
 mov qword ptr [rdi+0xc8], rbx
 mov qword ptr [rdi+0xc0], rbx
 cmp rax, rcx
 cmovb rcx, rax
 mov rax, qword ptr [rdi+0xe960]
 and rax, rcx
 mov qword ptr [rdi+0x4b88], rax

0x1400277c9:
 mov qword ptr [rdi+0x88], rbx
 mov dword ptr [rdi+0xc], ebx
 mov dword ptr [rdi+0x8], ebx
 xor edx, edx
 lea rcx, [rdi+0xd8]
 mov qword ptr [rdi+0x4db0], rbx
 lea r8d, [rdx+0x14]
 mov dword ptr [rdi+0xd0], ebx
 mov dword ptr [rdi+0xd4], ebx
 call 0x14002d190
 or dword ptr [rdi+0xd8], 0xffffffff
 movzx edx, sil
 mov rcx, rdi
 call sub_140021edc
 mov dl, sil
 mov rcx, rdi
 mov rbx, qword ptr [rsp+0x30]
 mov rsi, qword ptr [rsp+0x38]
 add rsp, 0x20
 pop rdi
 jmp 0x140027308

0x140027828:
 mov qword ptr [rsp+0x8], rbx
 push rdi
 sub rsp, 0x20
 xor ebx, ebx
 mov rdi, rcx
 cmp dword ptr [rcx+0x8], ebx
 jbe 0x14002785a

0x14002783c:
 mov rcx, qword ptr [rdi]
 mov edx, ebx
 imul rdx, rdx, 0x4af8
 add rdx, rcx
 mov rcx, qword ptr [rcx]
 call sub_1400261d0
 inc ebx
 cmp ebx, dword ptr [rdi+0x8]
 jb 0x14002783c

0x14002785a:
 mov rbx, qword ptr [rsp+0x30]
 add rsp, 0x20
 pop rdi
 ret 
 int3 
 int3 
 int3 

0x140027868:
 mov qword ptr [rsp+0x8], rbx
 push rdi
 sub rsp, 0x20
 movzx ebx, dl
 mov rdi, rcx
 mov dl, bl
 call 0x140027744
 mov edx, ebx
 mov rcx, rdi
 call sub_140021a8c
 call sub_14002240c
 test bl, bl
 jne 0x1400278a4
 mov rcx, rdi
 call 0x140024cd0
 and qword ptr [rdi+0xc0], 0x0
 jmp 0x1400278b2

0x1400278a4:
 mov rax, qword ptr [rdi+0xc8]
 mov qword ptr [rdi+0xc0], rax

0x1400278b2:
 add qword ptr [rdi+0x4da0], -1
 js 0x1400278ce
 mov rcx, rdi
 call sub_140024bc0
 mov dword ptr [rdi+0x58e4], 8

0x1400278ce:
 cmp qword ptr [rdi+0x4da0], 0x0
 jl 0x1400279f0
 mov ebx, 7

0x1400278e1:
 mov rax, qword ptr [rdi+0xe960]
 and qword ptr [rdi+0xc0], rax
 mov eax, dword ptr [rdi+0xd0]
 sub eax, 0x1e
 cmp dword ptr [rdi+0x8], eax
 jle 0x14002790d
 mov rcx, rdi
 call sub_14002240c
 test al, al
 je 0x1400279f0

0x14002790d:
 mov rcx, qword ptr [rdi+0xc8]
 mov rdx, qword ptr [rdi+0xc0]
 mov rax, rcx
 sub rax, rdx
 and rax, qword ptr [rdi+0xe960]
 cmp rax, 0x10e
 jae 0x14002793d
 cmp rcx, rdx
 je 0x14002793d
 mov rcx, rdi
 call sub_140021e50

0x14002793d:
 cmp dword ptr [rdi+0x58dc], 0x0
 je 0x14002794b
 mov rcx, rdi
 jmp 0x140027985

0x14002794b:
 add dword ptr [rdi+0x58e4], -1
 jns 0x140027962
 mov rcx, rdi
 call sub_140024bc0
 mov dword ptr [rdi+0x58e4], ebx

0x140027962:
 mov eax, dword ptr [rdi+0x58bc]
 test al, al
 jns 0x14002798c
 add eax, eax
 mov rcx, rdi
 mov dword ptr [rdi+0x58bc], eax
 mov eax, dword ptr [rdi+0x58e8]
 cmp dword ptr [rdi+0x58ec], eax
 ja 0x1400279ce

0x140027985:
 call sub_14002491c
 jmp 0x1400279e2

0x14002798c:
 add eax, eax
 add dword ptr [rdi+0x58e4], -1
 mov dword ptr [rdi+0x58bc], eax
 jns 0x1400279ab
 mov rcx, rdi
 call sub_140024bc0
 mov dword ptr [rdi+0x58e4], ebx

0x1400279ab:
 mov eax, dword ptr [rdi+0x58bc]
 mov rcx, rdi
 test al, al
 jns 0x1400279d5
 add eax, eax
 mov dword ptr [rdi+0x58bc], eax
 mov eax, dword ptr [rdi+0x58e8]
 cmp dword ptr [rdi+0x58ec], eax
 ja 0x140027985

0x1400279ce:
 call 0x140024620
 jmp 0x1400279e2

0x1400279d5:
 add eax, eax
 mov dword ptr [rdi+0x58bc], eax
 call sub_140024310

0x1400279e2:
 cmp qword ptr [rdi+0x4da0], 0x0
 jge 0x1400278e1

0x1400279f0:
 mov rcx, rdi
 mov rbx, qword ptr [rsp+0x30]
 add rsp, 0x20
 pop rdi
 jmp sub_140021e50
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140027a04
; --------------------------------------------------------------------------
sub_140027a04   proc \
 arg_1 : qword, ; [rsp+0x30]
 arg_2 : qword, ; [rsp+0x38]
 arg_3 : qword, ; [rsp+0x40]
 arg_4 : qword ; [rsp+0x48]

 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rdi
 mov qword ptr [rax+0x20], r12
 push r13
 sub rsp, 0x20
 cmp byte ptr [rcx+0x4da8], 0x0
 mov dil, dl
 mov rbx, rcx
 je 0x140027a3c
 mov rax, qword ptr [rcx+0xc8]
 mov qword ptr [rcx+0xc0], rax
 jmp 0x140027a70

0x140027a3c:
 mov dl, dil
 call 0x140027744
 mov rcx, rbx
 call sub_14002240c
 test al, al
 je 0x1400281d8
 test dil, dil
 jne 0x140027a69
 mov rcx, rbx
 call 0x140024d90
 test al, al
 je 0x1400281d8

0x140027a69:
 dec qword ptr [rbx+0x4da0]

0x140027a70:
 cmp qword ptr [rbx+0x4da0], 0x0
 jl 0x1400281c8
 mov ebp, 0xf
 lea r12, [0x140000000]
 lea edi, [rbp-0xe]
 lea r13d, [rbp+1]

0x140027a91:
 mov rax, qword ptr [rbx+0xe960]
 and qword ptr [rbx+0xc0], rax
 mov eax, dword ptr [rbx+0xd0]
 sub eax, 0x1e
 cmp dword ptr [rbx+0x8], eax
 jle 0x140027abd
 mov rcx, rbx
 call sub_14002240c
 test al, al
 je 0x1400281c8

0x140027abd:
 mov rcx, qword ptr [rbx+0xc8]
 mov rdx, qword ptr [rbx+0xc0]
 mov rax, rcx
 sub rax, rdx
 and rax, qword ptr [rbx+0xe960]
 cmp rax, 0x10e
 jae 0x140027afa
 cmp rcx, rdx
 je 0x140027afa
 mov rcx, rbx
 call sub_140021e50
 cmp byte ptr [rbx+0x4da8], 0x0
 jne 0x1400281d8

0x140027afa:
 movsxd rdx, dword ptr [rbx+0x8]
 mov rcx, qword ptr [rbx+0x18]
 movzx r8d, byte ptr [rcx+rdx]
 shl r8d, 8
 cmp dword ptr [rbx+0x98a8], 0x0
 je 0x140027c57
 movsxd rax, dword ptr [rbx+0x98b0]
 mov r10d, dword ptr [rbx+0xc]
 imul rax, rax, 0xeec
 lea r9, [rax+rbx+0x58f4]
 movzx eax, byte ptr [rcx+rdx+1]
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 shl r8d, 8
 sub ecx, r10d
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [r9+0x84]
 and r8d, 0xfffe
 cmp r8d, dword ptr [r9+rcx*4+4]
 jae 0x140027b98
 mov eax, r13d
 sub eax, ecx
 mov cl, al
 shr r8d, cl
 movzx ecx, byte ptr [r8+r9+0x88]
 add ecx, r10d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [rbx+0x8]
 and ecx, 7
 mov dword ptr [rbx+0x8], eax
 mov dword ptr [rbx+0xc], ecx
 movzx edx, word ptr [r9+r8*2+0x488]
 jmp 0x140027bf9

0x140027b98:
 lea eax, [rcx+1]
 mov edx, ebp
 movsxd rcx, eax
 cmp eax, ebp
 jae 0x140027bbc
 lea rcx, [r9+rcx*4+4]

0x140027ba9:
 cmp r8d, dword ptr [rcx]
 jb 0x140027bba
 add eax, edi
 add rcx, 4
 cmp eax, ebp
 jb 0x140027ba9
 jmp 0x140027bbc

0x140027bba:
 mov edx, eax

0x140027bbc:
 lea ecx, [r10+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rbx+0xc], ecx
 mov ecx, r13d
 add eax, dword ptr [rbx+0x8]
 sub ecx, edx
 mov dword ptr [rbx+0x8], eax
 lea eax, [rdx-1]
 sub r8d, dword ptr [r9+rax*4+4]
 mov eax, edx
 shr r8d, cl
 add r8d, dword ptr [r9+rax*4+0x44]
 cmp r8d, dword ptr [r9]
 sbb eax, eax
 and eax, r8d
 movzx edx, word ptr [r9+rax*2+0xc88]

0x140027bf9:
 mov rcx, rbx
 cmp edx, 0x100
 jne 0x140027c16

0x140027c04:
 call 0x140024d90
 test al, al
 je 0x1400281c8
 jmp 0x1400281ba

0x140027c16:
 call sub_140021f4c
 mov rcx, qword ptr [rbx+0xc0]
 mov rdx, qword ptr [rbx+0x4b90]
 mov byte ptr [rdx+rcx], al
 add dword ptr [rbx+0x98b0], edi
 mov eax, dword ptr [rbx+0x98b0]
 add qword ptr [rbx+0xc0], rdi
 cmp eax, dword ptr [rbx+0x98ac]
 jne 0x140027d57
 and dword ptr [rbx+0x98b0], 0x0
 jmp 0x140027d57

0x140027c57:
 movzx eax, byte ptr [rcx+rdx+1]
 mov r9d, dword ptr [rbx+0xc]
 mov r11d, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, r11d
 shl r8d, 8
 sub ecx, r9d
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rbx+0x170]
 and r8d, 0xfffe
 cmp r8d, dword ptr [rbx+rcx*4+0xf0]
 jae 0x140027cc7
 mov eax, r13d
 sub eax, ecx
 mov cl, al
 shr r8d, cl
 movzx ecx, byte ptr [r8+rbx+0x174]
 add ecx, r9d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [rbx+0x8]
 and ecx, 7
 mov dword ptr [rbx+0x8], eax
 mov dword ptr [rbx+0xc], ecx
 movzx r8d, word ptr [rbx+r8*2+0x574]
 jmp 0x140027d35

0x140027cc7:
 lea eax, [rcx+1]
 mov edx, ebp
 movsxd rcx, eax
 cmp eax, ebp
 jae 0x140027cee
 lea rcx, [rbx+rcx*4+0xf0]

0x140027cdb:
 cmp r8d, dword ptr [rcx]
 jb 0x140027cec
 add eax, edi
 add rcx, 4
 cmp eax, ebp
 jb 0x140027cdb
 jmp 0x140027cee

0x140027cec:
 mov edx, eax

0x140027cee:
 lea ecx, [r9+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rbx+0xc], ecx
 mov ecx, r13d
 add eax, dword ptr [rbx+0x8]
 sub ecx, edx
 mov dword ptr [rbx+0x8], eax
 lea eax, [rdx-1]
 sub r8d, dword ptr [rbx+rax*4+0xf0]
 mov eax, edx
 shr r8d, cl
 add r8d, dword ptr [rbx+rax*4+0x130]
 cmp r8d, dword ptr [rbx+0xec]
 sbb eax, eax
 and eax, r8d
 movzx r8d, word ptr [rbx+rax*2+0xd74]

0x140027d35:
 cmp r8d, 0x100
 jge 0x140027d63
 mov rax, qword ptr [rbx+0xc0]
 mov rcx, qword ptr [rbx+0x4b90]
 mov byte ptr [rcx+rax], r8b
 add qword ptr [rbx+0xc0], rdi

0x140027d57:
 dec qword ptr [rbx+0x4da0]
 jmp 0x1400281ba

0x140027d63:
 cmp r8d, 0x10d
 jle 0x140027f5c
 lea eax, [r8-0x10e]
 movsxd rcx, eax
 movzx r10d, byte ptr [rcx+r12+0x45880]
 movzx r9d, byte ptr [rcx+r12+0x45860]
 add r10d, 3
 test r9d, r9d
 je 0x140027de7
 movsxd rdx, dword ptr [rbx+0x8]
 mov rcx, qword ptr [rbx+0x18]
 movzx eax, byte ptr [rcx+rdx+1]
 movzx r8d, byte ptr [rcx+rdx]
 shl r8d, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, r11d
 sub ecx, dword ptr [rbx+0xc]
 shl r8d, 8
 or r8d, eax
 mov eax, dword ptr [rbx+0xc]
 shr r8d, cl
 mov ecx, r13d
 sub ecx, r9d
 movzx edx, r8w
 shr edx, cl
 lea ecx, [r9+rax]
 mov eax, ecx
 add r10d, edx
 shr eax, 3
 add dword ptr [rbx+0x8], eax
 and ecx, 7
 mov dword ptr [rbx+0xc], ecx

0x140027de7:
 mov rcx, qword ptr [rbx+0x18]
 movsxd rdx, dword ptr [rbx+0x8]
 mov r9d, dword ptr [rbx+0xc]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, r11d
 shl r8d, 8
 sub ecx, r9d
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rbx+0x105c]
 and r8d, 0xfffe
 cmp r8d, dword ptr [rbx+rcx*4+0xfdc]
 jae 0x140027e61
 mov eax, r13d
 sub eax, ecx
 mov cl, al
 shr r8d, cl
 movzx ecx, byte ptr [r8+rbx+0x1060]
 add ecx, r9d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [rbx+0x8]
 and ecx, 7
 mov dword ptr [rbx+0x8], eax
 mov dword ptr [rbx+0xc], ecx
 movzx eax, word ptr [rbx+r8*2+0x1460]
 jmp 0x140027ece

0x140027e61:
 lea eax, [rcx+1]
 mov edx, ebp
 movsxd rcx, eax
 cmp eax, ebp
 jae 0x140027e88
 lea rcx, [rbx+rcx*4+0xfdc]

0x140027e75:
 cmp r8d, dword ptr [rcx]
 jb 0x140027e86
 add eax, edi
 add rcx, 4
 cmp eax, ebp
 jb 0x140027e75
 jmp 0x140027e88

0x140027e86:
 mov edx, eax

0x140027e88:
 lea ecx, [r9+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rbx+0xc], ecx
 mov ecx, r13d
 add eax, dword ptr [rbx+0x8]
 sub ecx, edx
 mov dword ptr [rbx+0x8], eax
 lea eax, [rdx-1]
 sub r8d, dword ptr [rbx+rax*4+0xfdc]
 mov eax, edx
 shr r8d, cl
 add r8d, dword ptr [rbx+rax*4+0x101c]
 cmp r8d, dword ptr [rbx+0xfd8]
 sbb eax, eax
 and eax, r8d
 movzx eax, word ptr [rbx+rax*2+0x1c60]

0x140027ece:
 cdqe 
 mov r9d, dword ptr [r12+rax*4+0x457a0]
 movzx r11d, byte ptr [rax+r12+0x45770]
 add r9d, edi
 test r11d, r11d
 je 0x140027f3c
 movsxd rdx, dword ptr [rbx+0x8]
 mov rcx, qword ptr [rbx+0x18]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 sub ecx, dword ptr [rbx+0xc]
 shl r8d, 8
 or r8d, eax
 mov eax, dword ptr [rbx+0xc]
 shr r8d, cl
 mov ecx, r13d
 sub ecx, r11d
 movzx edx, r8w
 shr edx, cl
 lea ecx, [r11+rax]
 mov eax, ecx
 add r9d, edx
 shr eax, 3
 add dword ptr [rbx+0x8], eax
 and ecx, 7
 mov dword ptr [rbx+0xc], ecx

0x140027f3c:
 cmp r9d, 0x2000
 jb 0x140027f54
 add r10d, edi
 cmp r9d, 0x40000
 jb 0x140027f54
 add r10d, edi

0x140027f54:
 mov edx, r10d
 jmp 0x1400281af

0x140027f5c:
 jne 0x140027f66
 mov rcx, rbx
 jmp 0x140027c04

0x140027f66:
 cmp r8d, 0x100
 jne 0x140027f81
 mov r8d, dword ptr [rbx+0xb8]
 mov edx, dword ptr [rbx+0xb4]
 jmp 0x1400281b2

0x140027f81:
 cmp r8d, 0x105
 jge 0x140028128
 mov rcx, qword ptr [rbx+0x18]
 movsxd rdx, dword ptr [rbx+0x8]
 mov eax, dword ptr [rbx+0xb0]
 mov r9d, dword ptr [rbx+0xc]
 sub eax, r8d
 movzx r8d, byte ptr [rcx+rdx+1]
 and eax, 3
 mov r10d, dword ptr [rbx+rax*4+0xa0]
 movzx eax, byte ptr [rcx+rdx]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, r11d
 shl r8d, 8
 sub ecx, r9d
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rbx+0x2e34]
 and r8d, 0xfffe
 cmp r8d, dword ptr [rbx+rcx*4+0x2db4]
 jae 0x14002801c
 mov eax, r13d
 sub eax, ecx
 mov cl, al
 shr r8d, cl
 movzx ecx, byte ptr [r8+rbx+0x2e38]
 add ecx, r9d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [rbx+0x8]
 and ecx, 7
 mov dword ptr [rbx+0x8], eax
 mov dword ptr [rbx+0xc], ecx
 movzx eax, word ptr [rbx+r8*2+0x3238]
 jmp 0x140028089

0x14002801c:
 lea eax, [rcx+1]
 mov edx, ebp
 movsxd rcx, eax
 cmp eax, ebp
 jae 0x140028043
 lea rcx, [rbx+rcx*4+0x2db4]

0x140028030:
 cmp r8d, dword ptr [rcx]
 jb 0x140028041
 add eax, edi
 add rcx, 4
 cmp eax, ebp
 jb 0x140028030
 jmp 0x140028043

0x140028041:
 mov edx, eax

0x140028043:
 lea ecx, [r9+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rbx+0xc], ecx
 mov ecx, r13d
 add eax, dword ptr [rbx+0x8]
 sub ecx, edx
 mov dword ptr [rbx+0x8], eax
 lea eax, [rdx-1]
 sub r8d, dword ptr [rbx+rax*4+0x2db4]
 mov eax, edx
 shr r8d, cl
 add r8d, dword ptr [rbx+rax*4+0x2df4]
 cmp r8d, dword ptr [rbx+0x2db0]
 sbb eax, eax
 and eax, r8d
 movzx eax, word ptr [rbx+rax*2+0x3a38]

0x140028089:
 cdqe 
 movzx r9d, byte ptr [rax+r12+0x45880]
 movzx r11d, byte ptr [rax+r12+0x45860]
 add r9d, 2
 test r11d, r11d
 je 0x1400280f9
 movsxd rdx, dword ptr [rbx+0x8]
 mov rcx, qword ptr [rbx+0x18]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 sub ecx, dword ptr [rbx+0xc]
 shl r8d, 8
 or r8d, eax
 mov eax, dword ptr [rbx+0xc]
 shr r8d, cl
 mov ecx, r13d
 sub ecx, r11d
 movzx edx, r8w
 shr edx, cl
 lea ecx, [r11+rax]
 mov eax, ecx
 add r9d, edx
 shr eax, 3
 add dword ptr [rbx+0x8], eax
 and ecx, 7
 mov dword ptr [rbx+0xc], ecx

0x1400280f9:
 cmp r10d, 0x101
 jb 0x14002811d
 add r9d, edi
 cmp r10d, 0x2000
 jb 0x14002811d
 add r9d, edi
 cmp r10d, 0x40000
 jb 0x14002811d
 add r9d, edi

0x14002811d:
 mov r8d, r10d
 mov edx, r9d
 jmp 0x1400281b2

0x140028128:
 cmp r8d, 0x10e
 jge 0x1400281ba
 lea eax, [r8-0x105]
 movsxd rcx, eax
 movzx r9d, byte ptr [rcx+r12+0x45768]
 movzx r10d, byte ptr [rcx+r12+0x45760]
 add r9d, edi
 test r10d, r10d
 je 0x1400281aa
 movsxd rdx, dword ptr [rbx+0x8]
 mov rcx, qword ptr [rbx+0x18]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, r11d
 sub ecx, dword ptr [rbx+0xc]
 shl r8d, 8
 or r8d, eax
 mov eax, dword ptr [rbx+0xc]
 shr r8d, cl
 mov ecx, r13d
 sub ecx, r10d
 movzx edx, r8w
 shr edx, cl
 lea ecx, [r10+rax]
 mov eax, ecx
 add r9d, edx
 shr eax, 3
 add dword ptr [rbx+0x8], eax
 and ecx, 7
 mov dword ptr [rbx+0xc], ecx

0x1400281aa:
 mov edx, 2

0x1400281af:
 mov r8d, r9d

0x1400281b2:
 mov rcx, rbx
 call sub_140021ca4

0x1400281ba:
 cmp qword ptr [rbx+0x4da0], 0x0
 jge 0x140027a91

0x1400281c8:
 mov rcx, rbx
 call sub_14002525c
 mov rcx, rbx
 call sub_140021e50

0x1400281d8:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rdi, qword ptr [arg_3]
 mov r12, qword ptr [arg_4]
 add rsp, 0x20
 pop r13
 ret 
sub_140027a04   endp
 
 int3 
; --------------------------------------------------------------------------
; sub_1400281f4
; --------------------------------------------------------------------------
sub_1400281f4   proc
 sub rsp, 0x28
 movsxd r8, dword ptr [rcx+0x8]
 mov rdx, qword ptr [rcx+0x18]
 mov r10, rcx
 movzx eax, byte ptr [rdx+r8+1]
 movzx r9d, byte ptr [rdx+r8]
 mov ecx, 8
 sub ecx, dword ptr [r10+0xc]
 shl r9d, 8
 or r9d, eax
 movzx eax, byte ptr [rdx+r8+2]
 xor r8b, r8b
 shl r9d, 8
 mov edx, 0x1
 or r9d, eax
 shr r9d, cl
 mov ecx, dword ptr [r10+0xc]
 movzx eax, r9w
 bt eax, 0xf
 jae 0x140028248
 add ecx, edx
 jmp 0x140028253

0x140028248:
 shr eax, 0xe
 mov r8b, dl
 and dl, al
 add ecx, 2

0x140028253:
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 add dword ptr [r10+0x8], eax
 test dl, dl
 mov dword ptr [r10+0xc], ecx
 sete al
 mov byte ptr [r10+0xe88c], al
 test r8b, r8b
 je 0x140028278
 xor al, al
 jmp 0x140028280

0x140028278:
 mov rcx, r10
 call 0x140026eec

0x140028280:
 add rsp, 0x28
 ret 
sub_1400281f4   endp
 
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140028288
; --------------------------------------------------------------------------
sub_140028288   proc \
 arg_1 : qword, ; [rsp+0x90]
 arg_2 : qword, ; [rsp+0x98]
 arg_3 : qword, ; [rsp+0xa0]
 arg_4 : qword ; [rsp+0xa8]

 local local_1: qword ; [rsp+0x20]
 local local_2: qword ; [rsp+0x28]
 local local_3: qword ; [rsp+0x30]
 local local_4: qword ; [rsp+0x38]
 local local_5: qword ; [rsp+0x40]

 mov rax, rsp
 mov dword ptr [rax+0x10], edx
 push rbp
 push rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x50
 mov qword ptr [local_1], -2
 mov qword ptr [rax+0x18], rbx
 mov rax, r8
 mov esi, edx
 mov rbx, rcx
 lea r14, [rcx+0xe8d8]
 xor edi, edi
 mov dword ptr [r14+4], edi
 mov dword ptr [r14], edi
 mov ecx, 0x8000
 cmp r9d, ecx
 cmovg r9d, ecx
 movsxd r8, r9d
 mov rdx, rax
 mov rcx, qword ptr [rbx+0xe8e8]
 call 0x14002d490
 lea rax, [rbx+0xe890]
 mov qword ptr [arg_1], rax
 mov rcx, rax
 call sub_140015a08
 test sil, sil
 jns 0x14002831c
 mov rcx, r14
 call sub_140015a30
 mov r12d, eax
 cmp eax, edi
 jne 0x140028317
 xor edx, edx
 mov rcx, rbx
 call sub_140025494
 jmp 0x140028323

0x140028317:
 dec r12d
 jmp 0x140028323

0x14002831c:
 mov r12d, dword ptr [rbx+0xe950]

0x140028323:
 mov rax, qword ptr [rbx+0xe8f8]
 mov r15d, r12d
 cmp r15, rax
 ja 0x1400288b6
 cmp r15, qword ptr [rbx+0xe938]
 ja 0x1400288b6
 mov dword ptr [rbx+0xe950], r12d
 cmp r15, rax
 sete bpl
 mov byte ptr [arg_4], bpl
 mov ecx, 0xb8
 call 0x14002d27c
 mov rsi, rax
 cmp rax, rdi
 je 0x1400283ad
 mov qword ptr [rax+0x18], rdi
 mov qword ptr [rax+0x20], rdi
 mov qword ptr [rax+0x28], rdi
 mov qword ptr [rax+0x30], rdi
 mov qword ptr [rax+0x48], rdi
 mov qword ptr [rax+0x50], rdi
 mov qword ptr [rax+0x58], rdi
 mov qword ptr [rax+0x60], rdi
 mov qword ptr [rax+0x68], rdi
 mov qword ptr [rax+0x70], rdi
 mov qword ptr [rax+0x78], rdi
 mov qword ptr [rax+0x80], rdi
 mov qword ptr [rax+0x38], rdi
 mov dword ptr [rax+0xb0], edi
 mov dword ptr [rax+0x40], edi
 jmp 0x1400283b0

0x1400283ad:
 mov rsi, rdi

0x1400283b0:
 cmp bpl, dil
 je 0x14002849f
 cmp r12d, 0x2000
 jbe 0x140028400
 cmp rsi, rdi
 je 0x1400283f9
 mov rcx, qword ptr [rsi+0x68]
 cmp rcx, rdi
 je 0x1400283d5
 call sub_14002cfac

0x1400283d5:
 mov rcx, qword ptr [rsi+0x48]
 cmp rcx, rdi
 je 0x1400283e3
 call sub_14002cfac

0x1400283e3:
 mov rcx, qword ptr [rsi+0x18]
 cmp rcx, rdi
 je 0x1400283f1
 call sub_14002cfac

0x1400283f1:
 mov rcx, rsi
 call 0x14002cfa4

0x1400283f9:
 xor al, al
 jmp 0x1400288b8

0x140028400:
 mov r13d, 0x1
 mov rdx, r13
 lea rcx, [rbx+0xe8f0]
 call sub_140019464
 mov ecx, 0xb8
 call 0x14002d27c
 mov rbp, rax
 cmp rax, rdi
 je 0x140028469
 mov qword ptr [rax+0x18], rdi
 mov qword ptr [rax+0x20], rdi
 mov qword ptr [rax+0x28], rdi
 mov qword ptr [rax+0x30], rdi
 mov qword ptr [rax+0x48], rdi
 mov qword ptr [rax+0x50], rdi
 mov qword ptr [rax+0x58], rdi
 mov qword ptr [rax+0x60], rdi
 mov qword ptr [rax+0x68], rdi
 mov qword ptr [rax+0x70], rdi
 mov qword ptr [rax+0x78], rdi
 mov qword ptr [rax+0x80], rdi
 mov qword ptr [rax+0x38], rdi
 mov dword ptr [rax+0xb0], edi
 mov dword ptr [rax+0x40], edi
 jmp 0x14002846c

0x140028469:
 mov rbp, rdi

0x14002846c:
 mov rcx, qword ptr [rbx+0xe8f8]
 mov rax, qword ptr [rbx+0xe8f0]
 mov qword ptr [rax+rcx*8-8], rbp
 mov rax, qword ptr [rbx+0xe8f8]
 lea ecx, [rax-1]
 mov dword ptr [rsi+0x10], ecx
 lea rcx, [rbx+0xe930]
 xor edx, edx
 call sub_140025d58
 mov dword ptr [rbp+0x8], edi
 jmp 0x1400284b8

0x14002849f:
 mov rax, qword ptr [rbx+0xe8f0]
 mov rbp, qword ptr [rax+r15*8]
 mov dword ptr [rsi+0x10], r12d
 mov r13d, 0x1
 add dword ptr [rbp+0x8], r13d

0x1400284b8:
 mov r8d, edi
 mov r11d, edi
 mov r9, rdi
 mov r10, rdi
 cmp qword ptr [rbx+0xe918], rdi
 jbe 0x140028516
 lea r12, [rbx+0xe910]

0x1400284d4:
 mov rdx, qword ptr [r12]
 mov rcx, r9
 sub rcx, r10
 mov rax, qword ptr [rdx+r9*8]
 mov qword ptr [rdx+rcx*8], rax
 mov rax, qword ptr [r12]
 cmp qword ptr [rax+r9*8], rdi
 jne 0x1400284f6
 add r8d, r13d
 add r10, r13

0x1400284f6:
 cmp r10, rdi
 jle 0x1400284ff
 mov qword ptr [rax+r9*8], rdi

0x1400284ff:
 add r11d, r13d
 add r9, r13
 mov eax, r11d
 cmp rax, qword ptr [rbx+0xe918]
 jb 0x1400284d4
 cmp r8d, edi
 jne 0x14002853f

0x140028516:
 cmp qword ptr [rbx+0xe918], 0x2000
 jbe 0x14002852a
 xor al, al
 jmp 0x1400288b8

0x14002852a:
 lea r12, [rbx+0xe910]
 mov rdx, r13
 mov rcx, r12
 call sub_140019464
 mov r8d, r13d

0x14002853f:
 mov rax, qword ptr [rbx+0xe918]
 sub eax, r8d
 movsxd rcx, eax
 mov rax, qword ptr [r12]
 mov qword ptr [rax+rcx*8], rsi
 mov eax, dword ptr [rbp+0x8]
 mov dword ptr [rsi+0x8], eax
 mov rcx, r14
 call sub_140015a30
 mov r12d, eax
 mov eax, dword ptr [arg_2]
 test al, 0x40
 je 0x140028577
 add r12d, 0x102

0x140028577:
 mov ecx, dword ptr [rbx+0xc0]
 lea edx, [r12+rcx]
 and edx, dword ptr [rbx+0xe960]
 mov dword ptr [rsi], edx
 test al, 0x20
 je 0x1400285a5
 mov rcx, r14
 call sub_140015a30
 mov dword ptr [rsi+4], eax
 mov rcx, qword ptr [rbx+0xe930]
 mov dword ptr [rcx+r15*4], eax
 jmp 0x1400285c0

0x1400285a5:
 cmp r15, qword ptr [rbx+0xe938]
 jae 0x1400285bb
 mov rax, qword ptr [rbx+0xe930]
 mov ecx, dword ptr [rax+r15*4]
 jmp 0x1400285bd

0x1400285bb:
 mov ecx, edi

0x1400285bd:
 mov dword ptr [rsi+4], ecx

0x1400285c0:
 mov rcx, qword ptr [rbx+0xc8]
 mov rax, qword ptr [rbx+0xc0]
 cmp rcx, rax
 je 0x1400285ea
 sub rcx, rax
 and rcx, qword ptr [rbx+0xe960]
 mov eax, r12d
 cmp rcx, rax
 ja 0x1400285ea
 mov eax, r13d
 jmp 0x1400285ec

0x1400285ea:
 mov eax, edi

0x1400285ec:
 mov byte ptr [rsi+0xc], al
 lea r12, [rsi+0x88]
 xor edx, edx
 lea r8d, [rdx+0x1c]
 mov rcx, r12
 call 0x14002d190
 mov dword ptr [rsi+0x94], 0x3c000
 mov eax, dword ptr [rsi+4]
 mov dword ptr [rsi+0x98], eax
 mov eax, dword ptr [rsi+0x8]
 mov dword ptr [rsi+0x9c], eax
 test byte ptr [arg_2], 0x10
 je 0x140028666
 mov rcx, r14
 call sub_140011458
 mov r15d, eax
 shr r15d, 9
 mov edx, 7
 mov rcx, r14
 call sub_140011440
 mov ebx, edi

0x140028648:
 bt r15d, ebx
 jae 0x14002865a
 mov rcx, r14
 call sub_140015a30
 mov dword ptr [r12], eax

0x14002865a:
 add ebx, r13d
 add r12, 4
 cmp ebx, 7
 jl 0x140028648

0x140028666:
 cmp byte ptr [arg_4], dil
 je 0x14002874d
 mov rcx, r14
 call sub_140015a30
 mov r15d, eax
 cmp eax, 0x10000
 jae 0x140028746
 cmp r15d, edi
 je 0x140028746
 mov qword ptr [local_2], rdi
 mov qword ptr [local_3], rdi
 mov qword ptr [local_4], rdi
 mov qword ptr [local_5], rdi
 mov rdx, r15
 lea rcx, [local_2]
 call sub_140001294
 nop 
 mov ecx, edi
 mov dword ptr [arg_4], ecx
 mov r12, qword ptr [local_2]
 cmp r15d, edi
 jbe 0x14002871f

0x1400286c8:
 mov eax, dword ptr [r14]
 add eax, 3
 cmp eax, 0x8000
 jae 0x14002870b
 mov ebx, ecx
 mov rcx, r14
 call sub_140011458
 shr eax, 8
 mov byte ptr [rbx+r12], al
 mov edx, 8
 mov rcx, r14
 call sub_140011440
 mov ecx, dword ptr [arg_4]
 add ecx, r13d
 mov dword ptr [arg_4], ecx
 cmp ecx, r15d
 jb 0x1400286c8
 jmp 0x14002871f

0x14002870b:
 cmp r12, rdi
 je 0x140028718
 mov rcx, r12
 call sub_14002cfac

0x140028718:
 xor al, al
 jmp 0x1400288b8

0x14002871f:
 lea r9, [rbp+0x18]
 mov r8d, r15d
 mov rdx, r12
 mov rcx, qword ptr [arg_1]
 call sub_140015c6c
 nop 
 cmp r12, rdi
 je 0x14002874d
 mov rcx, r12
 call sub_14002cfac
 jmp 0x14002874d

0x140028746:
 xor al, al
 jmp 0x1400288b8

0x14002874d:
 mov rax, qword ptr [rbp+0x18]
 mov qword ptr [rsi+0x38], rax
 mov eax, dword ptr [rbp+0x40]
 mov dword ptr [rsi+0x40], eax
 mov r12, qword ptr [rbp+0x70]
 lea rax, [r12-1]
 cmp rax, 0x1ffe
 ja 0x140028788
 mov rdx, r12
 lea rcx, [rsi+0x68]
 call sub_140001294
 mov r8, r12
 mov rdx, qword ptr [rbp+0x68]
 mov rcx, qword ptr [rsi+0x68]
 call 0x14002d490

0x140028788:
 cmp qword ptr [rsi+0x50], 0x40
 jae 0x1400287a6
 lea rcx, [rsi+0x48]
 call sub_1400024e0
 mov edx, 0x40
 lea rcx, [rsi+0x48]
 call sub_140001294

0x1400287a6:
 mov r12, qword ptr [rsi+0x48]
 mov rbp, r12
 lea r15, [rsi+0x88]
 mov ebx, 7
 mov rdi, qword ptr [arg_1]

0x1400287c1:
 mov r8d, dword ptr [r15]
 mov rdx, rbp
 mov rcx, rdi
 call 0x140015a2c
 add rbp, 4
 add r15, 4
 sub rbx, r13
 jne 0x1400287c1
 lea rdx, [r12+0x1c]
 mov r8d, dword ptr [rsi+4]
 mov rbx, rdi
 mov rcx, rbx
 call 0x140015a2c
 lea rdx, [r12+0x20]
 xor r8d, r8d
 mov rcx, rbx
 call 0x140015a2c
 lea rdx, [r12+0x2c]
 mov r8d, dword ptr [rsi+0x8]
 mov rcx, rbx
 call 0x140015a2c
 xor eax, eax
 mov qword ptr [r12+0x30], rax
 mov qword ptr [r12+0x38], rax
 test byte ptr [arg_2], 8
 mov rdi, rax
 je 0x1400288b1
 mov eax, dword ptr [r14]
 add eax, 3
 mov r12d, 0x8000
 cmp eax, r12d
 jb 0x140028843
 xor al, al
 jmp 0x1400288b8

0x140028843:
 mov rcx, r14
 call sub_140015a30
 mov ebp, eax
 cmp eax, 0x1fc0
 jbe 0x140028858
 xor al, al
 jmp 0x1400288b8

0x140028858:
 add eax, 0x40
 mov edx, eax
 cmp qword ptr [rsi+0x50], rdx
 jae 0x140028870
 sub rdx, qword ptr [rsi+0x50]
 lea rcx, [rsi+0x48]
 call sub_140001294

0x140028870:
 mov rbx, qword ptr [rsi+0x48]
 add rbx, 0x40
 cmp ebp, edi
 jbe 0x1400288b1

0x14002887c:
 mov eax, dword ptr [r14]
 add eax, 3
 cmp eax, r12d
 jae 0x1400288ad
 mov rcx, r14
 call sub_140011458
 shr eax, 8
 mov byte ptr [rbx], al
 mov edx, 8
 mov rcx, r14
 call sub_140011440
 add edi, r13d
 add rbx, r13
 cmp edi, ebp
 jb 0x14002887c
 jmp 0x1400288b1

0x1400288ad:
 xor al, al
 jmp 0x1400288b8

0x1400288b1:
 mov al, r13b
 jmp 0x1400288b8

0x1400288b6:
 xor al, al

0x1400288b8:
 mov rbx, qword ptr [arg_3]
 add rsp, 0x50
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 pop rsi
 pop rbp
 ret 
sub_140028288   endp
 
; --------------------------------------------------------------------------
; sub_1400288d0
; --------------------------------------------------------------------------
sub_1400288d0   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x40]
 arg_2 : qword ; [rsp+0x10] ; [rsp+0x48]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rsi
 push rdi
 sub rsp, 0x30
 xor edi, edi
 cmp qword ptr [rcx+0x88], 0x2000
 mov rsi, rdx
 mov rbx, rcx
 jb 0x14002890d
 call sub_14002735c
 cmp qword ptr [rbx+0x88], 0x2000
 jb 0x14002890d
 mov qword ptr [rbx+0x88], rdi

0x14002890d:
 mov rcx, qword ptr [rbx+0xc8]
 mov rax, qword ptr [rbx+0xc0]
 cmp rcx, rax
 je 0x140028937
 sub rcx, rax
 mov eax, dword ptr [rsi+4]
 and rcx, qword ptr [rbx+0xe960]
 cmp rcx, rax
 ja 0x140028937
 mov edi, 0x1

0x140028937:
 mov byte ptr [rsi+0xd], dil
 mov ecx, dword ptr [rbx+0xc0]
 lea rdx, [local_1]
 add ecx, dword ptr [rsi+4]
 and ecx, dword ptr [rbx+0xe960]
 mov dword ptr [rsi+4], ecx
 lea rcx, [rbx+0x80]
 movdqu xmm0, xmmword ptr [rsi]
 movdqu xmmword ptr [local_1], xmm0
 call sub_140025d88
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 mov al, 0x1
 add rsp, 0x30
 pop rdi
 ret 
sub_1400288d0   endp
 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_14002897c
; --------------------------------------------------------------------------
sub_14002897c   proc \
 arg_1 : qword, ; [rsp+0x48]
 arg_2 : qword, ; [rsp+0x50]
 arg_3 : qword ; [rsp+0x58]

 local local_1: qword ; [rsp+0x20]

 mov rax, rsp
 mov qword ptr [rax+0x8], rcx
 push r12
 sub rsp, 0x30
 mov qword ptr [local_1], -2
 mov qword ptr [rax+0x10], rbx
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 mov rdi, rdx
 mov rsi, rcx
 add rcx, 8
 mov dl, 0x1
 call sub_1400113b0
 nop 
 xor r12d, r12d
 mov qword ptr [rsi+0x40], r12
 mov qword ptr [rsi+0x48], r12
 mov qword ptr [rsi+0x50], r12
 mov qword ptr [rsi+0x58], r12
 mov qword ptr [rsi+0x60], r12
 mov qword ptr [rsi+0x68], r12
 mov qword ptr [rsi+0x70], r12
 mov qword ptr [rsi+0x78], r12
 mov qword ptr [rsi+0x80], r12
 mov qword ptr [rsi+0x88], r12
 mov qword ptr [rsi+0x90], r12
 mov qword ptr [rsi+0x98], r12
 xor edx, edx
 mov r8d, 0x100
 lea rcx, [rsi+0x4b98]
 call 0x14002d190
 lea rcx, [rsi+0x4c98]
 xor edx, edx
 mov r8d, 0x100
 call 0x14002d190
 nop 
 mov dword ptr [rsi+0xe4d8], r12d
 mov qword ptr [rsi+0xa078], r12
 mov qword ptr [rsi+0xa088], r12
 mov qword ptr [rsi+0xa080], r12
 lea rcx, [rsi+0xe890]
 call sub_1400159c8
 nop 
 lea rcx, [rsi+0xe8d8]
 mov dl, 0x1
 call sub_1400113b0
 nop 
 mov qword ptr [rsi+0xe8f0], r12
 mov qword ptr [rsi+0xe8f8], r12
 mov qword ptr [rsi+0xe900], r12
 mov qword ptr [rsi+0xe908], r12
 mov qword ptr [rsi+0xe910], r12
 mov qword ptr [rsi+0xe918], r12
 mov qword ptr [rsi+0xe920], r12
 mov qword ptr [rsi+0xe928], r12
 mov qword ptr [rsi+0xe930], r12
 mov qword ptr [rsi+0xe938], r12
 mov qword ptr [rsi+0xe940], r12
 mov qword ptr [rsi+0xe948], r12
 mov qword ptr [rsi], rdi
 mov qword ptr [rsi+0x4b90], r12
 mov byte ptr [rsi+0x4d98], r12b
 mov byte ptr [rsi+0x4da8], r12b
 mov byte ptr [rsi+0x4da9], r12b
 mov byte ptr [rsi+0x4daa], r12b
 mov dword ptr [rsi+0x30], 0x1
 call sub_14001fb14
 mov qword ptr [rsi+0x20], rax
 mov qword ptr [rsi+0x38], r12
 mov qword ptr [rsi+0x28], r12
 mov qword ptr [rsi+0xe958], r12
 mov qword ptr [rsi+0xe960], r12
 xor edx, edx
 mov rcx, rsi
 call 0x140027744
 xor edx, edx
 mov rcx, rsi
 call sub_140021a8c
 call 0x140024cd0
 nop 
 mov rax, rsi
 mov rbx, qword ptr [arg_1]
 mov rsi, qword ptr [arg_2]
 mov rdi, qword ptr [arg_3]
 add rsp, 0x30
 pop r12
 ret 
sub_14002897c   endp
 
 int3 

0x140028b24:
 mov rax, rsp
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 push r13
 push r14
 push r15
 sub rsp, 0x30
 mov rdi, qword ptr [rdx+0x4ae0]
 mov eax, dword ptr [rdx+0x4ae8]
 mov rbx, rcx
 lea rdx, [rax+rax*2]
 mov ebp, 0x1
 lea rsi, [rdi+rdx*4]
 cmp rdi, rsi
 jae 0x1400290d7
 lea r13d, [rbp+2]
 mov r14d, 0xfffffff8
 or r15d, 0xffffffff

0x140028b75:
 mov rcx, qword ptr [rbx+0xe960]
 mov r8, qword ptr [rbx+0x4b88]
 and qword ptr [rbx+0xc0], rcx
 mov rdx, qword ptr [rbx+0xc0]
 mov rax, r8
 sub rax, rdx
 and rax, rcx
 cmp rax, 0x1004
 jae 0x140028bc3
 cmp r8, rdx
 je 0x140028bc3
 mov rcx, rbx
 call sub_14002735c
 mov r11, qword ptr [rbx+0x4da0]
 cmp qword ptr [rbx+0x4db0], r11
 jg 0x1400290f9

0x140028bc3:
 cmp dword ptr [rdi], 0x0
 jne 0x140028c3d
 cmp word ptr [rdi+4], r13w
 jne 0x140028c00
 mov rax, qword ptr [rbx+0xe958]
 mov rdx, qword ptr [rbx+0xc0]
 sub rax, 4
 cmp rdx, rax
 jae 0x140028c00
 mov eax, dword ptr [rdi+0x8]
 mov rcx, qword ptr [rbx+0x4b90]
 mov dword ptr [rdx+rcx], eax
 add qword ptr [rbx+0xc0], 4
 jmp 0x1400290ca

0x140028c00:
 xor r8d, r8d
 lea r9, [rdi+0x8]

0x140028c07:
 mov al, byte ptr [r9]
 mov rdx, qword ptr [rbx+0xc0]
 mov rcx, qword ptr [rbx+0x4b90]
 and rdx, qword ptr [rbx+0xe960]
 add r8d, ebp
 add r9, rbp
 mov byte ptr [rdx+rcx], al
 add qword ptr [rbx+0xc0], rbp
 movzx eax, word ptr [rdi+4]
 cmp r8d, eax
 jbe 0x140028c07
 jmp 0x1400290ca

0x140028c3d:
 cmp dword ptr [rdi], ebp
 jne 0x140028e00
 mov ecx, dword ptr [rdi+0x8]
 mov eax, dword ptr [rbx+0xa8]
 mov r9, qword ptr [rbx+0xc0]
 mov dword ptr [rbx+0xac], eax
 mov eax, dword ptr [rbx+0xa4]
 mov r10, r9
 mov dword ptr [rbx+0xa8], eax
 mov eax, dword ptr [rbx+0xa0]
 mov dword ptr [rbx+0xa0], ecx
 mov dword ptr [rbx+0xa4], eax
 movzx eax, word ptr [rdi+4]
 mov dword ptr [rbx+0xb4], eax
 mov r11d, dword ptr [rdi+0x8]
 mov rax, qword ptr [rbx+0xe958]
 movzx r8d, word ptr [rdi+4]
 sub r10, r11
 add rax, -0x1001
 cmp r10, rax
 jae 0x140028db0
 cmp r9, rax
 jae 0x140028db0
 mov rax, qword ptr [rbx+0x4b90]
 lea rcx, [rax+r10]
 lea rdx, [rax+r9]
 lea rax, [r9+r8]
 mov qword ptr [rbx+0xc0], rax
 cmp r11d, r8d
 jae 0x140028d1d
 cmp r8d, 8
 jb 0x140028d40
 mov r9, r8
 shr r9, 3

0x140028cdd:
 mov al, byte ptr [rcx]
 add r8d, r14d
 add rcx, 8
 mov byte ptr [rdx], al
 mov al, byte ptr [rcx-7]
 add rdx, 8
 sub r9, rbp
 mov byte ptr [rdx-7], al
 mov al, byte ptr [rcx-6]
 mov byte ptr [rdx-6], al
 mov al, byte ptr [rcx-5]
 mov byte ptr [rdx-5], al
 mov al, byte ptr [rcx-4]
 mov byte ptr [rdx-4], al
 mov al, byte ptr [rcx-3]
 mov byte ptr [rdx-3], al
 mov al, byte ptr [rcx-2]
 mov byte ptr [rdx-2], al
 mov al, byte ptr [rcx-1]
 mov byte ptr [rdx-1], al
 jne 0x140028cdd
 jmp 0x140028d40

0x140028d1d:
 cmp r8d, 8
 jb 0x140028d40
 mov r9, r8
 shr r9, 3

0x140028d2a:
 mov rax, qword ptr [rcx]
 add r8d, r14d
 add rcx, 8
 mov qword ptr [rdx], rax
 add rdx, 8
 sub r9, rbp
 jne 0x140028d2a

0x140028d40:
 test r8d, r8d
 je 0x1400290ca
 mov al, byte ptr [rcx]
 mov byte ptr [rdx], al
 cmp r8d, ebp
 jbe 0x1400290ca
 mov al, byte ptr [rcx+1]
 mov byte ptr [rdx+1], al
 cmp r8d, 2
 jbe 0x1400290ca
 mov al, byte ptr [rcx+2]
 mov byte ptr [rdx+2], al
 cmp r8d, r13d
 jbe 0x1400290ca
 mov al, byte ptr [rcx+3]
 mov byte ptr [rdx+3], al
 cmp r8d, 4
 jbe 0x1400290ca
 mov al, byte ptr [rcx+4]
 mov byte ptr [rdx+4], al
 cmp r8d, 5
 jbe 0x1400290ca
 mov al, byte ptr [rcx+5]
 mov byte ptr [rdx+5], al
 cmp r8d, 6
 jbe 0x1400290ca
 mov al, byte ptr [rcx+6]
 mov byte ptr [rdx+6], al
 jmp 0x1400290ca

0x140028db0:
 test r8d, r8d
 je 0x1400290ca
 mov r9, qword ptr [rbx+0xe960]

0x140028dc0:
 mov rdx, qword ptr [rbx+0x4b90]
 mov rcx, qword ptr [rbx+0xc0]
 and r9, r10
 mov al, byte ptr [r9+rdx]
 add r10, rbp
 mov byte ptr [rdx+rcx], al
 mov rax, qword ptr [rbx+0xc0]
 mov r9, qword ptr [rbx+0xe960]
 add rax, rbp
 and rax, r9
 add r8d, r15d
 mov qword ptr [rbx+0xc0], rax
 jne 0x140028dc0
 jmp 0x1400290ca

0x140028e00:
 cmp dword ptr [rdi], r13d
 jne 0x140028f64
 mov edx, dword ptr [rdi+0x8]
 movsxd rax, edx
 mov r11d, dword ptr [rbx+rdx*4+0xa0]
 test edx, edx
 je 0x140028e33
 lea r8, [rbx+rax*4+0xa0]

0x140028e23:
 add edx, r15d
 mov eax, dword ptr [r8-4]
 mov dword ptr [r8], eax
 lea r8, [r8-4]
 jne 0x140028e23

0x140028e33:
 mov r10, qword ptr [rbx+0xc0]
 mov dword ptr [rbx+0xa0], r11d
 movzx eax, word ptr [rdi+4]
 mov dword ptr [rbx+0xb4], eax
 mov rax, qword ptr [rbx+0xe958]
 movzx r8d, word ptr [rdi+4]
 mov r9, r10
 add rax, -0x1001
 sub r9, r11
 cmp r9, rax
 jae 0x140028f14
 cmp r10, rax
 jae 0x140028f14
 mov rax, qword ptr [rbx+0x4b90]
 lea rcx, [rax+r9]
 lea rdx, [rax+r10]
 lea rax, [r10+r8]
 mov qword ptr [rbx+0xc0], rax
 cmp r11d, r8d
 jae 0x140028ee8
 cmp r8d, 8
 jb 0x140028d40
 mov r9, r8
 shr r9, 3

0x140028ea5:
 mov al, byte ptr [rcx]
 add r8d, r14d
 add rcx, 8
 mov byte ptr [rdx], al
 mov al, byte ptr [rcx-7]
 add rdx, 8
 sub r9, rbp
 mov byte ptr [rdx-7], al
 mov al, byte ptr [rcx-6]
 mov byte ptr [rdx-6], al
 mov al, byte ptr [rcx-5]
 mov byte ptr [rdx-5], al
 mov al, byte ptr [rcx-4]
 mov byte ptr [rdx-4], al
 mov al, byte ptr [rcx-3]
 mov byte ptr [rdx-3], al
 mov al, byte ptr [rcx-2]
 mov byte ptr [rdx-2], al
 mov al, byte ptr [rcx-1]
 mov byte ptr [rdx-1], al
 jne 0x140028ea5
 jmp 0x140028d40

0x140028ee8:
 cmp r8d, 8
 jb 0x140028d40
 mov r9, r8
 shr r9, 3

0x140028ef9:
 mov rax, qword ptr [rcx]
 add r8d, r14d
 add rcx, 8
 mov qword ptr [rdx], rax
 add rdx, 8
 sub r9, rbp
 jne 0x140028ef9
 jmp 0x140028d40

0x140028f14:
 test r8d, r8d
 je 0x1400290ca
 mov r10, qword ptr [rbx+0xe960]

0x140028f24:
 mov rdx, qword ptr [rbx+0x4b90]
 mov rcx, qword ptr [rbx+0xc0]
 and r10, r9
 mov al, byte ptr [r10+rdx]
 add r9, rbp
 mov byte ptr [rdx+rcx], al
 mov rax, qword ptr [rbx+0xc0]
 mov r10, qword ptr [rbx+0xe960]
 add rax, rbp
 and rax, r10
 add r8d, r15d
 mov qword ptr [rbx+0xc0], rax
 jne 0x140028f24
 jmp 0x1400290ca

0x140028f64:
 cmp dword ptr [rdi], 2
 jne 0x140029098
 mov r8d, dword ptr [rbx+0xb4]
 test r8d, r8d
 je 0x1400290ca
 mov r10, qword ptr [rbx+0xc0]
 mov r11d, dword ptr [rbx+0xa0]
 mov rax, qword ptr [rbx+0xe958]
 mov r9, r10
 add rax, -0x1001
 sub r9, r11
 cmp r9, rax
 jae 0x14002904f
 cmp r10, rax
 jae 0x14002904f
 mov rax, qword ptr [rbx+0x4b90]
 lea rcx, [rax+r9]
 lea rdx, [rax+r10]
 lea rax, [r10+r8]
 mov qword ptr [rbx+0xc0], rax
 cmp r11d, r8d
 jae 0x140029023
 cmp r8d, 8
 jb 0x140028d40
 mov r9, r8
 shr r9, 3

0x140028fe0:
 mov al, byte ptr [rcx]
 add r8d, r14d
 add rcx, 8
 mov byte ptr [rdx], al
 mov al, byte ptr [rcx-7]
 add rdx, 8
 sub r9, rbp
 mov byte ptr [rdx-7], al
 mov al, byte ptr [rcx-6]
 mov byte ptr [rdx-6], al
 mov al, byte ptr [rcx-5]
 mov byte ptr [rdx-5], al
 mov al, byte ptr [rcx-4]
 mov byte ptr [rdx-4], al
 mov al, byte ptr [rcx-3]
 mov byte ptr [rdx-3], al
 mov al, byte ptr [rcx-2]
 mov byte ptr [rdx-2], al
 mov al, byte ptr [rcx-1]
 mov byte ptr [rdx-1], al
 jne 0x140028fe0
 jmp 0x140028d40

0x140029023:
 cmp r8d, 8
 jb 0x140028d40
 mov r9, r8
 shr r9, 3

0x140029034:
 mov rax, qword ptr [rcx]
 add r8d, r14d
 add rcx, 8
 mov qword ptr [rdx], rax
 add rdx, 8
 sub r9, rbp
 jne 0x140029034
 jmp 0x140028d40

0x14002904f:
 test r8d, r8d
 je 0x1400290ca
 mov r10, qword ptr [rbx+0xe960]

0x14002905b:
 mov rdx, qword ptr [rbx+0x4b90]
 mov rcx, qword ptr [rbx+0xc0]
 and r10, r9
 mov al, byte ptr [r10+rdx]
 add r9, rbp
 mov byte ptr [rdx+rcx], al
 mov rax, qword ptr [rbx+0xc0]
 mov r10, qword ptr [rbx+0xe960]
 add rax, rbp
 and rax, r10
 add r8d, r15d
 mov qword ptr [rbx+0xc0], rax
 jne 0x14002905b
 jmp 0x1400290ca

0x140029098:
 cmp dword ptr [rdi], 4
 jne 0x1400290ca
 mov al, byte ptr [rdi+4]
 add rdi, 0xc
 lea rdx, [rsp+0x20]
 mov byte ptr [rsp+0x20], al
 mov eax, dword ptr [rdi-4]
 mov rcx, rbx
 mov dword ptr [rsp+0x24], eax
 mov al, byte ptr [rdi+4]
 mov byte ptr [rsp+0x2c], al
 mov eax, dword ptr [rdi+0x8]
 mov dword ptr [rsp+0x28], eax
 call sub_1400288d0

0x1400290ca:
 add rdi, 0xc
 cmp rdi, rsi
 jb 0x140028b75

0x1400290d7:
 mov al, bpl

0x1400290da:
 mov rbx, qword ptr [rsp+0x50]
 mov rbp, qword ptr [rsp+0x58]
 mov rsi, qword ptr [rsp+0x60]
 mov rdi, qword ptr [rsp+0x68]
 add rsp, 0x30
 pop r15
 pop r14
 pop r13
 ret 

0x1400290f9:
 xor al, al
 jmp 0x1400290da
 int3 
 int3 
 int3 
; --------------------------------------------------------------------------
; sub_140029100
; --------------------------------------------------------------------------
sub_140029100   proc \
 arg_1 : qword, ; [rsp+0x8] ; [rsp+0x60]
 arg_2 : qword, ; [rsp+0x10] ; [rsp+0x68]
 arg_3 : qword ; [rsp+0x18] ; [rsp+0x70]

 local local_1: qword ; [rsp+0x20]

 mov qword ptr [arg_1], rbx
 mov qword ptr [arg_2], rbp
 mov qword ptr [arg_3], rsi
 push rdi
 push r12
 push r13
 push r14
 push r15
 sub rsp, 0x30
 cmp byte ptr [rdx+0x38], 0x0
 mov rdi, rdx
 mov rbx, rcx
 mov r15d, 0x1
 jne 0x140029155
 lea r9, [rdx+0x3c]
 lea r8, [rdx+0x24]
 mov byte ptr [rdx+0x38], r15b
 add rdx, 8
 call sub_1400258ac
 test al, al
 jne 0x140029155

0x140029147:
 mov byte ptr [rdi+0x4adc], r15b

0x14002914e:
 xor al, al
 jmp 0x140029d37

0x140029155:
 mov edx, dword ptr [rdi+0x24]
 mov eax, dword ptr [rdi+0x30]
 lea ecx, [rdx+rax]
 cmp dword ptr [rdi+0x8], ecx
 jg 0x140029147
 mov eax, dword ptr [rdi+0x2c]
 mov r12d, dword ptr [rdi+0x4ad8]
 lea r13d, [rax+rdx-1]
 sub r12d, 0x10
 cmp r13d, r12d
 mov r14d, r12d
 cmovl r14d, r13d

0x140029180:
 mov r8, qword ptr [rbx+0xe960]
 and qword ptr [rbx+0xc0], r8
 mov ecx, dword ptr [rdi+0x8]
 mov rdx, qword ptr [rbx+0xc0]
 cmp ecx, r14d
 jl 0x1400291d2
 cmp ecx, r13d
 jg 0x140029d34
 jne 0x1400291b4
 mov eax, dword ptr [rdi+0x28]
 cmp dword ptr [rdi+0xc], eax
 jge 0x140029d34

0x1400291b4:
 cmp ecx, r12d
 jl 0x1400291c6
 cmp byte ptr [rdi+0x4ade], 0x0
 je 0x140029d2d

0x1400291c6:
 cmp ecx, dword ptr [rdi+0x4ad8]
 jge 0x140029d2d

0x1400291d2:
 mov rcx, qword ptr [rbx+0x4b88]
 mov rax, rcx
 sub rax, rdx
 and rax, r8
 cmp rax, 0x1004
 jae 0x14002920b
 cmp rcx, rdx
 je 0x14002920b
 mov rcx, rbx
 call sub_14002735c
 mov r11, qword ptr [rbx+0x4da0]
 cmp qword ptr [rbx+0x4db0], r11
 jg 0x14002914e

0x14002920b:
 mov rcx, qword ptr [rdi+0x18]
 movsxd rdx, dword ptr [rdi+0x8]
 mov r9d, dword ptr [rdi+0xc]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 shl r8d, 8
 sub ecx, r9d
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rdi+0xc0]
 and r8d, 0xfffe
 cmp r8d, dword ptr [rdi+rcx*4+0x40]
 jae 0x140029286
 mov eax, 0x10
 sub eax, ecx
 mov cl, al
 shr r8d, cl
 movzx ecx, byte ptr [r8+rdi+0xc4]
 add ecx, r9d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [rdi+0x8]
 and ecx, 7
 mov dword ptr [rdi+0x8], eax
 mov dword ptr [rdi+0xc], ecx
 movzx r8d, word ptr [rdi+r8*2+0x4c4]
 jmp 0x1400292f1

0x140029286:
 lea eax, [rcx+1]
 mov edx, 0xf
 movsxd rcx, eax
 cmp eax, edx
 jae 0x1400292ae
 lea rcx, [rdi+rcx*4+0x40]

0x14002929a:
 cmp r8d, dword ptr [rcx]
 jb 0x1400292ac
 add eax, r15d
 add rcx, 4
 cmp eax, edx
 jb 0x14002929a
 jmp 0x1400292ae

0x1400292ac:
 mov edx, eax

0x1400292ae:
 lea ecx, [r9+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rdi+0xc], ecx
 mov ecx, 0x10
 add eax, dword ptr [rdi+0x8]
 sub ecx, edx
 mov dword ptr [rdi+0x8], eax
 lea eax, [rdx-1]
 sub r8d, dword ptr [rdi+rax*4+0x40]
 mov eax, edx
 shr r8d, cl
 add r8d, dword ptr [rdi+rax*4+0x80]
 cmp r8d, dword ptr [rdi+0x3c]
 sbb eax, eax
 and eax, r8d
 movzx r8d, word ptr [rdi+rax*2+0xcc4]

0x1400292f1:
 cmp r8d, 0x100
 jae 0x140029318
 mov rax, qword ptr [rbx+0xc0]
 mov rcx, qword ptr [rbx+0x4b90]
 mov byte ptr [rcx+rax], r8b
 add qword ptr [rbx+0xc0], r15
 jmp 0x140029180

0x140029318:
 cmp r8d, 0x106
 jb 0x14002988e
 lea r10d, [r8-0x106]
 cmp r10d, 8
 jae 0x140029338
 add r10d, 2
 jmp 0x1400293b2

0x140029338:
 mov r11d, r10d
 and r10d, 3
 or r10d, 4
 shr r11d, 2
 sub r11d, r15d
 mov ecx, r11d
 shl r10d, cl
 add r10d, 2
 test r11d, r11d
 je 0x1400293b2
 movsxd rdx, dword ptr [rdi+0x8]
 mov rcx, qword ptr [rdi+0x18]
 mov r9d, dword ptr [rdi+0xc]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 sub ecx, r9d
 shl r8d, 8
 or r8d, eax
 shr r8d, cl
 mov ecx, 0x10
 sub ecx, r11d
 movzx edx, r8w
 shr edx, cl
 lea ecx, [r9+r11]
 mov eax, ecx
 add r10d, edx
 shr eax, 3
 add eax, dword ptr [rdi+0x8]
 and ecx, 7
 mov dword ptr [rdi+0x8], eax
 mov dword ptr [rdi+0xc], ecx

0x1400293b2:
 mov rcx, qword ptr [rdi+0x18]
 movsxd rdx, dword ptr [rdi+0x8]
 mov r9d, dword ptr [rdi+0xc]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 shl r8d, 8
 sub ecx, r9d
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rdi+0xfac]
 and r8d, 0xfffe
 cmp r8d, dword ptr [rdi+rcx*4+0xf2c]
 jae 0x140029430
 mov eax, 0x10
 sub eax, ecx
 mov cl, al
 shr r8d, cl
 movzx ecx, byte ptr [r8+rdi+0xfb0]
 add ecx, r9d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [rdi+0x8]
 and ecx, 7
 mov dword ptr [rdi+0x8], eax
 mov dword ptr [rdi+0xc], ecx
 movzx r11d, word ptr [rdi+r8*2+0x13b0]
 jmp 0x1400294a4

0x140029430:
 lea eax, [rcx+1]
 mov edx, 0xf
 movsxd rcx, eax
 cmp eax, edx
 jae 0x14002945b
 lea rcx, [rdi+rcx*4+0xf2c]

0x140029447:
 cmp r8d, dword ptr [rcx]
 jb 0x140029459
 add eax, r15d
 add rcx, 4
 cmp eax, edx
 jb 0x140029447
 jmp 0x14002945b

0x140029459:
 mov edx, eax

0x14002945b:
 lea ecx, [r9+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rdi+0xc], ecx
 mov ecx, 0x10
 add eax, dword ptr [rdi+0x8]
 sub ecx, edx
 mov dword ptr [rdi+0x8], eax
 lea eax, [rdx-1]
 sub r8d, dword ptr [rdi+rax*4+0xf2c]
 mov eax, edx
 shr r8d, cl
 add r8d, dword ptr [rdi+rax*4+0xf6c]
 cmp r8d, dword ptr [rdi+0xf28]
 sbb eax, eax
 and eax, r8d
 movzx r11d, word ptr [rdi+rax*2+0x1bb0]

0x1400294a4:
 cmp r11d, 4
 jae 0x1400294b2
 inc r11d
 jmp 0x1400296b4

0x1400294b2:
 mov esi, r11d
 and r11d, r15d
 or r11d, 2
 shr esi, 0x1
 sub esi, r15d
 mov ecx, esi
 shl r11d, cl
 add r11d, r15d
 test esi, esi
 je 0x1400296b4
 cmp esi, 4
 jb 0x140029645
 jbe 0x14002954f
 movsxd r8, dword ptr [rdi+0x8]
 mov rdx, qword ptr [rdi+0x18]
 mov ecx, dword ptr [rdi+0xc]
 movzx eax, byte ptr [rdx+r8]
 movzx r9d, byte ptr [rdx+r8+1]
 shl eax, 8
 or r9d, eax
 movzx eax, byte ptr [rdx+r8+2]
 shl r9d, 8
 or r9d, eax
 movzx eax, byte ptr [rdx+r8+3]
 movzx edx, byte ptr [rdx+r8+4]
 shl r9d, 8
 or r9d, eax
 mov eax, 8
 sub al, cl
 shl r9d, cl
 mov cl, al
 mov eax, dword ptr [rdi+0xc]
 shr edx, cl
 mov ecx, 0x24
 sub ecx, esi
 or r9d, edx
 shr r9d, cl
 lea ecx, [rax+rsi-4]
 mov eax, ecx
 shl r9d, 4
 shr eax, 3
 add r11d, r9d
 add dword ptr [rdi+0x8], eax
 and ecx, 7
 mov dword ptr [rdi+0xc], ecx

0x14002954f:
 mov rcx, qword ptr [rdi+0x18]
 movsxd rdx, dword ptr [rdi+0x8]
 mov r9d, dword ptr [rdi+0xc]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 shl r8d, 8
 sub ecx, r9d
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rdi+0x1e98]
 and r8d, 0xfffe
 cmp r8d, dword ptr [rdi+rcx*4+0x1e18]
 jae 0x1400295cd
 mov eax, 0x10
 sub eax, ecx
 mov cl, al
 shr r8d, cl
 movzx ecx, byte ptr [r8+rdi+0x1e9c]
 add ecx, r9d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [rdi+0x8]
 and ecx, 7
 mov dword ptr [rdi+0x8], eax
 mov dword ptr [rdi+0xc], ecx
 movzx eax, word ptr [rdi+r8*2+0x229c]
 jmp 0x140029640

0x1400295cd:
 lea eax, [rcx+1]
 mov edx, 0xf
 movsxd rcx, eax
 cmp eax, edx
 jae 0x1400295f8
 lea rcx, [rdi+rcx*4+0x1e18]

0x1400295e4:
 cmp r8d, dword ptr [rcx]
 jb 0x1400295f6
 add eax, r15d
 add rcx, 4
 cmp eax, edx
 jb 0x1400295e4
 jmp 0x1400295f8

0x1400295f6:
 mov edx, eax

0x1400295f8:
 lea ecx, [r9+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rdi+0xc], ecx
 mov ecx, 0x10
 add eax, dword ptr [rdi+0x8]
 sub ecx, edx
 mov dword ptr [rdi+0x8], eax
 lea eax, [rdx-1]
 sub r8d, dword ptr [rdi+rax*4+0x1e18]
 mov eax, edx
 shr r8d, cl
 add r8d, dword ptr [rdi+rax*4+0x1e58]
 cmp r8d, dword ptr [rdi+0x1e14]
 sbb eax, eax
 and eax, r8d
 movzx eax, word ptr [rdi+rax*2+0x2a9c]

0x140029640:
 add r11d, eax
 jmp 0x1400296b4

0x140029645:
 movsxd r8, dword ptr [rdi+0x8]
 mov rdx, qword ptr [rdi+0x18]
 mov ecx, dword ptr [rdi+0xc]
 movzx eax, byte ptr [rdx+r8+1]
 movzx r9d, byte ptr [rdx+r8]
 shl r9d, 8
 or r9d, eax
 movzx eax, byte ptr [rdx+r8+2]
 shl r9d, 8
 or r9d, eax
 movzx eax, byte ptr [rdx+r8+3]
 movzx edx, byte ptr [rdx+r8+4]
 shl r9d, 8
 or r9d, eax
 mov eax, 8
 sub al, cl
 shl r9d, cl
 mov cl, al
 mov eax, dword ptr [rdi+0xc]
 shr edx, cl
 mov ecx, 0x20
 sub ecx, esi
 or r9d, edx
 shr r9d, cl
 lea ecx, [rsi+rax]
 mov eax, ecx
 add r11d, r9d
 shr eax, 3
 add dword ptr [rdi+0x8], eax
 and ecx, 7
 mov dword ptr [rdi+0xc], ecx

0x1400296b4:
 cmp r11d, 0x100
 jbe 0x1400296d8
 inc r10d
 cmp r11d, 0x2000
 jbe 0x1400296d8
 add r10d, r15d
 cmp r11d, 0x40000
 jbe 0x1400296d8
 add r10d, r15d

0x1400296d8:
 mov eax, dword ptr [rbx+0xa8]
 mov r9, qword ptr [rbx+0xc0]
 mov dword ptr [rbx+0xb4], r10d
 mov dword ptr [rbx+0xac], eax
 mov eax, dword ptr [rbx+0xa4]
 mov r8, r9
 mov dword ptr [rbx+0xa8], eax
 mov eax, dword ptr [rbx+0xa0]
 mov dword ptr [rbx+0xa0], r11d
 mov dword ptr [rbx+0xa4], eax
 mov eax, r11d
 sub r8, rax
 mov rax, qword ptr [rbx+0xe958]
 add rax, -0x1001
 cmp r8, rax
 jae 0x14002983d
 cmp r9, rax
 jae 0x14002983d
 mov rax, qword ptr [rbx+0x4b90]
 lea rcx, [rax+r8]
 lea rdx, [rax+r9]
 mov eax, r10d
 add rax, r9
 mov qword ptr [rbx+0xc0], rax
 cmp r11d, r10d
 jae 0x1400297a8
 cmp r10d, 8
 jb 0x1400297cc
 mov r8d, r10d
 shr r8, 3

0x140029767:
 mov al, byte ptr [rcx]
 add r10d, -8
 add rcx, 8
 mov byte ptr [rdx], al
 mov al, byte ptr [rcx-7]
 add rdx, 8
 sub r8, r15
 mov byte ptr [rdx-7], al
 mov al, byte ptr [rcx-6]
 mov byte ptr [rdx-6], al
 mov al, byte ptr [rcx-5]
 mov byte ptr [rdx-5], al
 mov al, byte ptr [rcx-4]
 mov byte ptr [rdx-4], al
 mov al, byte ptr [rcx-3]
 mov byte ptr [rdx-3], al
 mov al, byte ptr [rcx-2]
 mov byte ptr [rdx-2], al
 mov al, byte ptr [rcx-1]
 mov byte ptr [rdx-1], al
 jne 0x140029767
 jmp 0x1400297cc

0x1400297a8:
 cmp r10d, 8
 jb 0x1400297cc
 mov r8d, r10d
 shr r8, 3

0x1400297b5:
 mov rax, qword ptr [rcx]
 add r10d, -8
 add rcx, 8
 mov qword ptr [rdx], rax
 add rdx, 8
 sub r8, r15
 jne 0x1400297b5

0x1400297cc:
 test r10d, r10d
 je 0x140029180
 mov al, byte ptr [rcx]
 mov byte ptr [rdx], al
 cmp r10d, r15d
 jbe 0x140029180
 mov al, byte ptr [rcx+1]
 mov byte ptr [rdx+1], al
 cmp r10d, 2
 jbe 0x140029180
 mov al, byte ptr [rcx+2]
 mov byte ptr [rdx+2], al
 cmp r10d, 3
 jbe 0x140029180
 mov al, byte ptr [rcx+3]
 mov byte ptr [rdx+3], al
 cmp r10d, 4
 jbe 0x140029180
 mov al, byte ptr [rcx+4]
 mov byte ptr [rdx+4], al
 cmp r10d, 5
 jbe 0x140029180
 cmp r10d, 6

0x140029826:
 mov al, byte ptr [rcx+5]
 mov byte ptr [rdx+5], al
 jbe 0x140029180
 mov al, byte ptr [rcx+6]
 mov byte ptr [rdx+6], al
 jmp 0x140029180

0x14002983d:
 test r10d, r10d
 je 0x140029180
 mov r9, qword ptr [rbx+0xe960]

0x14002984d:
 mov rdx, qword ptr [rbx+0x4b90]
 mov rcx, qword ptr [rbx+0xc0]
 and r9, r8
 mov al, byte ptr [r9+rdx]
 add r8, r15
 mov byte ptr [rdx+rcx], al
 mov rax, qword ptr [rbx+0xc0]
 mov r9, qword ptr [rbx+0xe960]
 add rax, r15
 and rax, r9
 add r10d, -1
 mov qword ptr [rbx+0xc0], rax
 jne 0x14002984d
 jmp 0x140029180

0x14002988e:
 cmp r8d, 0x100
 jne 0x1400298ca
 lea r8, [local_1]
 lea rdx, [rdi+0x8]
 mov rcx, rbx
 call sub_14002558c
 test al, al
 je 0x140029d34
 lea rdx, [local_1]
 mov rcx, rbx
 call sub_1400288d0
 test al, al
 je 0x140029d34
 jmp 0x140029180

0x1400298ca:
 cmp r8d, 0x101
 jne 0x140029a5b
 mov r8d, dword ptr [rbx+0xb4]
 test r8d, r8d
 je 0x140029180
 mov r10, qword ptr [rbx+0xc0]
 mov r11d, dword ptr [rbx+0xa0]
 mov rax, qword ptr [rbx+0xe958]
 mov r9, r10
 add rax, -0x1001
 sub r9, r11
 cmp r9, rax
 jae 0x140029a0a
 cmp r10, rax
 jae 0x140029a0a
 mov rax, qword ptr [rbx+0x4b90]
 lea rcx, [rax+r9]
 lea rdx, [rax+r10]
 lea rax, [r10+r8]
 mov qword ptr [rbx+0xc0], rax
 cmp r11d, r8d
 jae 0x140029987
 cmp r8d, 8
 jb 0x1400299ab
 mov r9, r8
 shr r9, 3

0x140029946:
 mov al, byte ptr [rcx]
 add r8d, -8
 add rcx, 8
 mov byte ptr [rdx], al
 mov al, byte ptr [rcx-7]
 add rdx, 8
 sub r9, r15
 mov byte ptr [rdx-7], al
 mov al, byte ptr [rcx-6]
 mov byte ptr [rdx-6], al
 mov al, byte ptr [rcx-5]
 mov byte ptr [rdx-5], al
 mov al, byte ptr [rcx-4]
 mov byte ptr [rdx-4], al
 mov al, byte ptr [rcx-3]
 mov byte ptr [rdx-3], al
 mov al, byte ptr [rcx-2]
 mov byte ptr [rdx-2], al
 mov al, byte ptr [rcx-1]
 mov byte ptr [rdx-1], al
 jne 0x140029946
 jmp 0x1400299ab

0x140029987:
 cmp r8d, 8
 jb 0x1400299ab
 mov r9, r8
 shr r9, 3

0x140029994:
 mov rax, qword ptr [rcx]
 add r8d, -8
 add rcx, 8
 mov qword ptr [rdx], rax
 add rdx, 8
 sub r9, r15
 jne 0x140029994

0x1400299ab:
 test r8d, r8d
 je 0x140029180
 mov al, byte ptr [rcx]
 mov byte ptr [rdx], al
 cmp r8d, r15d
 jbe 0x140029180
 mov al, byte ptr [rcx+1]
 mov byte ptr [rdx+1], al
 cmp r8d, 2
 jbe 0x140029180
 mov al, byte ptr [rcx+2]
 mov byte ptr [rdx+2], al
 cmp r8d, 3
 jbe 0x140029180
 mov al, byte ptr [rcx+3]
 mov byte ptr [rdx+3], al
 cmp r8d, 4
 jbe 0x140029180
 mov al, byte ptr [rcx+4]
 mov byte ptr [rdx+4], al
 cmp r8d, 5
 jbe 0x140029180
 cmp r8d, 6
 jmp 0x140029826

0x140029a0a:
 test r8d, r8d
 je 0x140029180
 mov r10, qword ptr [rbx+0xe960]

0x140029a1a:
 mov rdx, qword ptr [rbx+0x4b90]
 mov rcx, qword ptr [rbx+0xc0]
 and r10, r9
 mov al, byte ptr [r10+rdx]
 add r9, r15
 mov byte ptr [rdx+rcx], al
 mov rax, qword ptr [rbx+0xc0]
 mov r10, qword ptr [rbx+0xe960]
 add rax, r15
 and rax, r10
 add r8d, -1
 mov qword ptr [rbx+0xc0], rax
 jne 0x140029a1a
 jmp 0x140029180

0x140029a5b:
 add r8d, 0xfffffefe
 movsxd rax, r8d
 mov esi, dword ptr [rbx+r8*4+0xa0]
 je 0x140029a86
 lea rdx, [rbx+rax*4+0xa0]

0x140029a77:
 add r8d, -1
 mov eax, dword ptr [rdx-4]
 mov dword ptr [rdx], eax
 lea rdx, [rdx-4]
 jne 0x140029a77

0x140029a86:
 mov dword ptr [rbx+0xa0], esi
 mov rcx, qword ptr [rdi+0x18]
 movsxd rdx, dword ptr [rdi+0x8]
 movzx eax, byte ptr [rcx+rdx+1]
 movzx r8d, byte ptr [rcx+rdx]
 mov r9d, dword ptr [rdi+0xc]
 shl r8d, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 shl r8d, 8
 sub ecx, r9d
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rdi+0x2d84]
 and r8d, 0xfffe
 cmp r8d, dword ptr [rdi+rcx*4+0x2d04]
 jae 0x140029b0b
 mov eax, 0x10
 sub eax, ecx
 mov cl, al
 shr r8d, cl
 movzx ecx, byte ptr [rdi+r8+0x2d88]
 add ecx, r9d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [rdi+0x8]
 and ecx, 7
 mov dword ptr [rdi+0x8], eax
 mov dword ptr [rdi+0xc], ecx
 movzx r10d, word ptr [rdi+r8*2+0x3188]
 jmp 0x140029b7f

0x140029b0b:
 lea eax, [rcx+1]
 mov edx, 0xf
 movsxd rcx, eax
 cmp eax, edx
 jae 0x140029b36
 lea rcx, [rdi+rcx*4+0x2d04]

0x140029b22:
 cmp r8d, dword ptr [rcx]
 jb 0x140029b34
 add eax, r15d
 add rcx, 4
 cmp eax, edx
 jb 0x140029b22
 jmp 0x140029b36

0x140029b34:
 mov edx, eax

0x140029b36:
 lea ecx, [rdx+r9]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rdi+0xc], ecx
 mov ecx, 0x10
 add eax, dword ptr [rdi+0x8]
 sub ecx, edx
 mov dword ptr [rdi+0x8], eax
 lea eax, [rdx-1]
 sub r8d, dword ptr [rdi+rax*4+0x2d04]
 mov eax, edx
 shr r8d, cl
 add r8d, dword ptr [rdi+rax*4+0x2d44]
 cmp r8d, dword ptr [rdi+0x2d00]
 sbb eax, eax
 and eax, r8d
 movzx r10d, word ptr [rdi+rax*2+0x3988]

0x140029b7f:
 cmp r10d, 8
 jae 0x140029b8b
 add r10d, 2
 jmp 0x140029c06

0x140029b8b:
 mov r11d, r10d
 and r10d, 3
 or r10d, 4
 shr r11d, 2
 sub r11d, r15d
 mov ecx, r11d
 shl r10d, cl
 add r10d, 2
 test r11d, r11d
 je 0x140029c06
 movsxd rdx, dword ptr [rdi+0x8]
 mov rcx, qword ptr [rdi+0x18]
 mov r9d, dword ptr [rdi+0xc]
 movzx eax, byte ptr [rcx+rdx+1]
 movzx r8d, byte ptr [rcx+rdx]
 shl r8d, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, 8
 sub ecx, r9d
 shl r8d, 8
 or r8d, eax
 shr r8d, cl
 mov ecx, 0x10
 sub ecx, r11d
 movzx edx, r8w
 shr edx, cl
 lea ecx, [r9+r11]
 mov eax, ecx
 add r10d, edx
 shr eax, 3
 add eax, dword ptr [rdi+0x8]
 and ecx, 7
 mov dword ptr [rdi+0x8], eax
 mov dword ptr [rdi+0xc], ecx

0x140029c06:
 mov r9, qword ptr [rbx+0xc0]
 mov rax, qword ptr [rbx+0xe958]
 mov dword ptr [rbx+0xb4], r10d
 mov r8, r9
 add rax, -0x1001
 sub r8, rsi
 cmp r8, rax
 jae 0x140029cdc
 cmp r9, rax
 jae 0x140029cdc
 mov rax, qword ptr [rbx+0x4b90]
 lea rcx, [rax+r8]
 lea rdx, [rax+r9]
 mov eax, r10d
 add rax, r9
 mov qword ptr [rbx+0xc0], rax
 cmp esi, r10d
 jae 0x140029caf
 cmp r10d, 8
 jb 0x1400297cc
 mov r8d, r10d
 shr r8, 3

0x140029c6b:
 mov al, byte ptr [rcx]
 add r10d, -8
 add rcx, 8
 mov byte ptr [rdx], al
 mov al, byte ptr [rcx-7]
 add rdx, 8
 sub r8, r15
 mov byte ptr [rdx-7], al
 mov al, byte ptr [rcx-6]
 mov byte ptr [rdx-6], al
 mov al, byte ptr [rcx-5]
 mov byte ptr [rdx-5], al
 mov al, byte ptr [rcx-4]
 mov byte ptr [rdx-4], al
 mov al, byte ptr [rcx-3]
 mov byte ptr [rdx-3], al
 mov al, byte ptr [rcx-2]
 mov byte ptr [rdx-2], al
 mov al, byte ptr [rcx-1]
 mov byte ptr [rdx-1], al
 jne 0x140029c6b
 jmp 0x1400297cc

0x140029caf:
 cmp r10d, 8
 jb 0x1400297cc
 mov r8d, r10d
 shr r8, 3

0x140029cc0:
 mov rax, qword ptr [rcx]
 add r10d, -8
 add rcx, 8
 mov qword ptr [rdx], rax
 add rdx, 8
 sub r8, r15
 jne 0x140029cc0
 jmp 0x1400297cc

0x140029cdc:
 test r10d, r10d
 je 0x140029180
 mov r9, qword ptr [rbx+0xe960]

0x140029cec:
 mov rdx, qword ptr [rbx+0x4b90]
 mov rcx, qword ptr [rbx+0xc0]
 and r9, r8
 mov al, byte ptr [r9+rdx]
 add r8, r15
 mov byte ptr [rdx+rcx], al
 mov rax, qword ptr [rbx+0xc0]
 mov r9, qword ptr [rbx+0xe960]
 add rax, r15
 and rax, r9
 add r10d, -1
 mov qword ptr [rbx+0xc0], rax
 jne 0x140029cec
 jmp 0x140029180

0x140029d2d:
 mov byte ptr [rdi+0x4adf], r15b

0x140029d34:
 mov al, r15b

0x140029d37:
 mov rbx, qword ptr [arg_1]
 mov rbp, qword ptr [arg_2]
 mov rsi, qword ptr [arg_3]
 add rsp, 0x30
 pop r15
 pop r14
 pop r13
 pop r12
 pop rdi
 ret 
sub_140029100   endp
 

0x140029d54:
 mov rax, rsp
 push r12
 push r13
 push r14
 sub rsp, 0x50
 mov qword ptr [rsp+0x20], -2
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 mov rbx, rcx
 movsxd r8, dword ptr [rcx+0x8]
 mov rdx, qword ptr [rcx+0x18]
 movzx r9d, byte ptr [rdx+r8]
 shl r9d, 8
 movzx eax, byte ptr [rdx+r8+1]
 or r9d, eax
 shl r9d, 8
 movzx eax, byte ptr [rdx+r8+2]
 or r9d, eax
 mov r10d, 8
 mov ecx, r10d
 sub ecx, dword ptr [rbx+0xc]
 shr r9d, cl
 shr r9d, 8
 movzx r14d, r9b
 mov ecx, dword ptr [rbx+0xc]
 add ecx, r10d
 mov eax, ecx
 shr eax, 3
 add dword ptr [rbx+0x8], eax
 lea r9d, [r10-1]
 and ecx, r9d
 mov dword ptr [rbx+0xc], ecx
 mov esi, r14d
 and esi, r9d
 inc esi
 cmp esi, r9d
 jne 0x140029e2e
 movsxd rdx, dword ptr [rbx+0x8]
 mov rcx, qword ptr [rbx+0x18]
 movzx r8d, byte ptr [rcx+rdx+1]
 movzx eax, byte ptr [rcx+rdx]
 shl eax, 8
 or r8d, eax
 shl r8d, 8
 movzx eax, byte ptr [rcx+rdx+2]
 or r8d, eax
 mov ecx, r10d
 sub ecx, dword ptr [rbx+0xc]
 shr r8d, cl
 shr r8d, 8
 movzx esi, r8b
 add esi, r9d
 mov ecx, dword ptr [rbx+0xc]
 add ecx, r10d
 mov eax, ecx
 shr eax, 3
 add dword ptr [rbx+0x8], eax
 and ecx, r9d
 mov dword ptr [rbx+0xc], ecx
 jmp 0x140029e78

0x140029e2e:
 cmp esi, r10d
 jne 0x140029e78
 movsxd rdx, dword ptr [rbx+0x8]
 mov rcx, qword ptr [rbx+0x18]
 movzx r8d, byte ptr [rcx+rdx+1]
 movzx eax, byte ptr [rcx+rdx]
 shl eax, 8
 or r8d, eax
 shl r8d, 8
 movzx eax, byte ptr [rcx+rdx+2]
 or r8d, eax
 mov ecx, r10d
 sub ecx, dword ptr [rbx+0xc]
 shr r8d, cl
 movzx esi, r8w
 mov ecx, dword ptr [rbx+0xc]
 add ecx, 0x10
 mov eax, ecx
 shr eax, 3
 add dword ptr [rbx+0x8], eax
 and ecx, r9d
 mov dword ptr [rbx+0xc], ecx

0x140029e78:
 and qword ptr [rsp+0x28], 0x0
 and qword ptr [rsp+0x30], 0x0
 and qword ptr [rsp+0x38], 0x0
 and qword ptr [rsp+0x40], 0x0
 movsxd rbp, esi
 mov rdx, rbp
 lea rcx, [rsp+0x28]
 call sub_140001294
 nop 
 xor r12d, r12d
 xor r13d, r13d
 mov rdi, qword ptr [rsp+0x28]
 test esi, esi
 jle 0x140029f3f

0x140029eb4:
 mov eax, dword ptr [rbx+0xd0]
 dec eax
 cmp dword ptr [rbx+0x8], eax
 jl 0x140029ed5
 mov rcx, rbx
 call sub_140022260
 test al, al
 jne 0x140029ed5
 lea eax, [rsi-1]
 cmp r12d, eax
 jl 0x140029f2e

0x140029ed5:
 movsxd rdx, dword ptr [rbx+0x8]
 mov rcx, qword ptr [rbx+0x18]
 movzx r8d, byte ptr [rcx+rdx+1]
 movzx eax, byte ptr [rcx+rdx]
 shl eax, 8
 or r8d, eax
 shl r8d, 8
 movzx eax, byte ptr [rcx+rdx+2]
 or r8d, eax
 mov ecx, 8
 sub ecx, dword ptr [rbx+0xc]
 shr r8d, cl
 shr r8d, 8
 mov byte ptr [r13+rdi], r8b
 mov ecx, dword ptr [rbx+0xc]
 add ecx, 8
 mov eax, ecx
 shr eax, 3
 add dword ptr [rbx+0x8], eax
 and ecx, 7
 mov dword ptr [rbx+0xc], ecx
 inc r12d
 inc r13
 cmp r13, rbp
 jge 0x140029f3f
 jmp 0x140029eb4

0x140029f2e:
 test rdi, rdi
 je 0x140029f3b
 mov rcx, rdi
 call sub_14002cfac

0x140029f3b:
 xor al, al
 jmp 0x140029f61

0x140029f3f:
 mov r9d, esi
 mov r8, rdi
 mov edx, r14d
 mov rcx, rbx
 call sub_140028288
 mov bl, al
 test rdi, rdi
 je 0x140029f5f
 mov rcx, rdi
 call sub_14002cfac

0x140029f5f:
 mov al, bl

0x140029f61:
 lea r11, [rsp+0x50]
 mov rbx, qword ptr [r11+0x20]
 mov rbp, qword ptr [r11+0x28]
 mov rsi, qword ptr [r11+0x30]
 mov rdi, qword ptr [r11+0x38]
 mov rsp, r11
 pop r14
 pop r13
 pop r12
 ret 

0x140029f80:
 mov rax, rsp
 push r12
 push r13
 push r14
 sub rsp, 0x50
 mov qword ptr [rsp+0x20], -2
 mov qword ptr [rax+0x8], rbx
 mov qword ptr [rax+0x10], rbp
 mov qword ptr [rax+0x18], rsi
 mov qword ptr [rax+0x20], rdi
 mov rsi, rcx
 lea rbx, [rcx+0x9a30]
 mov rcx, rbx
 call 0x140025f70
 mov r12d, eax
 cmp eax, 0xff
 jne 0x140029fd6
 mov rcx, rbx
 call 0x140024190
 and dword ptr [rsi+0xe888], 0x0
 xor al, al
 jmp 0x14002a0ef

0x140029fd6:
 mov edi, eax
 and edi, 7
 inc edi
 cmp edi, 7
 jne 0x14002a00a
 mov rcx, rbx
 call 0x140025f70
 cmp eax, 0xff
 jne 0x14002a005
 mov rcx, rbx
 call 0x140024190
 and dword ptr [rsi+0xe888], 0x0
 xor al, al
 jmp 0x14002a0ef

0x14002a005:
 lea edi, [rax+7]
 jmp 0x14002a05c

0x14002a00a:
 cmp edi, 8
 jne 0x14002a05c
 mov rcx, rbx
 call 0x140025f70
 mov edi, eax
 cmp eax, 0xff
 jne 0x14002a034
 mov rcx, rbx
 call 0x140024190
 and dword ptr [rsi+0xe888], 0x0
 xor al, al
 jmp 0x14002a0ef

0x14002a034:
 mov rcx, rbx
 call 0x140025f70
 cmp eax, 0xff
 jne 0x14002a057
 mov rcx, rbx
 call 0x140024190
 and dword ptr [rsi+0xe888], 0x0
 xor al, al
 jmp 0x14002a0ef

0x14002a057:
 shl edi, 8
 add edi, eax

0x14002a05c:
 and qword ptr [rsp+0x28], 0x0
 and qword ptr [rsp+0x30], 0x0
 and qword ptr [rsp+0x38], 0x0
 and qword ptr [rsp+0x40], 0x0
 movsxd r14, edi
 mov rdx, r14
 lea rcx, [rsp+0x28]
 call sub_140001294
 nop 
 xor r13d, r13d
 mov rbp, qword ptr [rsp+0x28]
 test edi, edi
 jle 0x14002a0cd

0x14002a091:
 mov rcx, rbx
 call 0x140025f70
 cmp eax, 0xff
 je 0x14002a0ad
 mov byte ptr [r13+rbp], al
 inc r13
 cmp r13, r14
 jge 0x14002a0cd
 jmp 0x14002a091

0x14002a0ad:
 mov rcx, rbx
 call 0x140024190
 and dword ptr [rsi+0xe888], 0x0
 test rbp, rbp
 je 0x14002a0c9
 mov rcx, rbp
 call sub_14002cfac

0x14002a0c9:
 xor al, al
 jmp 0x14002a0ef

0x14002a0cd:
 mov r9d, edi
 mov r8, rbp
 mov edx, r12d
 mov rcx, rsi
 call sub_140028288
 mov bl, al
 test rbp, rbp
 je 0x14002a0ed
 mov rcx, rbp
 call sub_14002cfac

0x14002a0ed:
 mov al, bl

0x14002a0ef:
 lea r11, [rsp+0x50]
 mov rbx, qword ptr [r11+0x20]
 mov rbp, qword ptr [r11+0x28]
 mov rsi, qword ptr [r11+0x30]
 mov rdi, qword ptr [r11+0x38]
 mov rsp, r11
 pop r14
 pop r13
 pop r12
 ret 
 int3 
 int3 

0x14002a110:
 mov qword ptr [rsp+0x8], rbx
 mov qword ptr [rsp+0x10], rbp
 mov qword ptr [rsp+0x18], rsi
 push rdi
 push r13
 push r14
 sub rsp, 0x40
 cmp byte ptr [rcx+0x4da8], 0x0
 mov r13d, 0x1
 mov rbx, rcx
 mov byte ptr [rcx+0x4db8], r13b
 jne 0x14002a193
 call 0x140027744
 mov rcx, rbx
 call sub_14002240c
 test al, al
 je 0x14002a99b
 lea r8, [rbx+0xd8]
 lea rdx, [rbx+0x8]
 mov rcx, rbx
 call sub_14002252c
 test al, al
 je 0x14002a99b
 lea r9, [rbx+0xec]
 lea r8, [rbx+0xd8]
 lea rdx, [rbx+0x8]
 mov rcx, rbx
 call sub_1400258ac
 test al, al
 je 0x14002a99b

0x14002a193:
 mov r14d, 8

0x14002a199:
 mov rax, qword ptr [rbx+0xe960]
 and qword ptr [rbx+0xc0], rax
 mov eax, dword ptr [rbx+0xd4]
 cmp dword ptr [rbx+0x8], eax
 jl 0x14002a230

0x14002a1b2:
 mov ecx, dword ptr [rbx+0xd8]
 mov eax, dword ptr [rbx+0xe0]
 lea edx, [rcx+rax-1]
 cmp dword ptr [rbx+0x8], edx
 jg 0x14002a1d4
 jne 0x14002a220
 mov eax, dword ptr [rbx+0xdc]
 cmp dword ptr [rbx+0xc], eax
 jl 0x14002a220

0x14002a1d4:
 cmp byte ptr [rbx+0xe8], 0x0
 jne 0x14002a993
 lea r8, [rbx+0xd8]
 lea rdx, [rbx+0x8]
 mov rcx, rbx
 call sub_14002252c
 test al, al
 je 0x14002a99b
 lea r9, [rbx+0xec]
 lea r8, [rbx+0xd8]
 lea rdx, [rbx+0x8]
 mov rcx, rbx
 call sub_1400258ac
 test al, al
 je 0x14002a99b
 jmp 0x14002a1b2

0x14002a220:
 mov rcx, rbx
 call sub_14002240c
 test al, al
 je 0x14002a993

0x14002a230:
 mov rcx, qword ptr [rbx+0x4b88]
 mov rax, rcx
 sub rax, qword ptr [rbx+0xc0]
 and rax, qword ptr [rbx+0xe960]
 cmp rax, 0x1004
 jae 0x14002a282
 cmp rcx, qword ptr [rbx+0xc0]
 je 0x14002a282
 mov rcx, rbx
 call sub_14002735c
 mov r11, qword ptr [rbx+0x4da0]
 cmp qword ptr [rbx+0x4db0], r11
 jg 0x14002a99b
 cmp byte ptr [rbx+0x4da8], 0x0
 jne 0x14002addb

0x14002a282:
 mov rcx, qword ptr [rbx+0x18]
 movsxd rdx, dword ptr [rbx+0x8]
 mov r9d, dword ptr [rbx+0xc]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, r14d
 shl r8d, 8
 sub ecx, r9d
 or r8d, eax
 shr r8d, cl
 mov ecx, dword ptr [rbx+0x170]
 and r8d, 0xfffe
 cmp r8d, dword ptr [rbx+rcx*4+0xf0]
 jae 0x14002a2fe
 mov eax, 0x10
 sub eax, ecx
 mov cl, al
 shr r8d, cl
 movzx ecx, byte ptr [r8+rbx+0x174]
 add ecx, r9d
 mov eax, ecx
 shr eax, 3
 add eax, dword ptr [rbx+0x8]
 and ecx, 7
 mov dword ptr [rbx+0x8], eax
 mov dword ptr [rbx+0xc], ecx
 movzx r10d, word ptr [rbx+r8*2+0x574]
 jmp 0x14002a372

0x14002a2fe:
 lea eax, [rcx+1]
 mov edx, 0xf
 movsxd rcx, eax
 cmp eax, edx
 jae 0x14002a329
 lea rcx, [rbx+rcx*4+0xf0]

0x14002a315:
 cmp r8d, dword ptr [rcx]
 jb 0x14002a327
 add eax, r13d
 add rcx, 4
 cmp eax, edx
 jb 0x14002a315
 jmp 0x14002a329

0x14002a327:
 mov edx, eax

0x14002a329:
 lea ecx, [r9+rdx]
 mov eax, ecx
 and ecx, 7
 shr eax, 3
 mov dword ptr [rbx+0xc], ecx
 mov ecx, 0x10
 add eax, dword ptr [rbx+0x8]
 sub ecx, edx
 mov dword ptr [rbx+0x8], eax
 lea eax, [rdx-1]
 sub r8d, dword ptr [rbx+rax*4+0xf0]
 mov eax, edx
 shr r8d, cl
 add r8d, dword ptr [rbx+rax*4+0x130]
 cmp r8d, dword ptr [rbx+0xec]
 sbb eax, eax
 and eax, r8d
 movzx r10d, word ptr [rbx+rax*2+0xd74]

0x14002a372:
 cmp r10d, 0x100
 jae 0x14002a3c8
 cmp byte ptr [rbx+0x4d98], 0x0
 je 0x14002a3aa
 mov rdx, qword ptr [rbx+0xc0]
 lea rcx, [rbx+0x4b98]
 lea rax, [rdx+1]
 mov qword ptr [rbx+0xc0], rax
 call 0x140022824
 mov byte ptr [rax], r10b
 jmp 0x14002a199

0x14002a3aa:
 mov rax, qword ptr [rbx+0xc0]
 mov rcx, qword ptr [rbx+0x4b90]
 mov byte ptr [rcx+rax], r10b
 add qword ptr [rbx+0xc0], r13
 jmp 0x14002a199

0x14002a3c8:
 cmp r10d, 0x106
 jb 0x14002a960
 add r10d, 0xfffffefa
 cmp r10d, r14d
 jae 0x14002a3e7
 add r10d, 2
 jmp 0x14002a45f

0x14002a3e7:
 mov r11d, r10d
 and r10d, 3
 or r10d, 4
 shr r11d, 2
 sub r11d, r13d
 mov ecx, r11d
 shl r10d, cl
 add r10d, 2
 test r11d, r11d
 je 0x14002a45f
 movsxd rdx, dword ptr [rbx+0x8]
 mov rcx, qword ptr [rbx+0x18]
 mov r9d, dword ptr [rbx+0xc]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 movzx eax, byte ptr [rcx+rdx+2]
 mov ecx, r14d
 sub ecx, r9d
 shl r8d, 8
 or r8d, eax
 shr r8d, cl
 mov ecx, 0x10
 sub ecx, r11d
 movzx edx, r8w
 shr edx, cl
 lea ecx, [r9+r11]
 mov eax, ecx
 add r10d, edx
 shr eax, 3
 add eax, dword ptr [rbx+0x8]
 and ecx, 7
 mov dword ptr [rbx+0x8], eax
 mov dword ptr [rbx+0xc], ecx

0x14002a45f:
 mov rcx, qword ptr [rbx+0x18]
 movsxd rdx, dword ptr [rbx+0x8]
 mov r9d, dword ptr [rbx+0xc]
 movzx eax, byte ptr [rcx+rdx]
 movzx r8d, byte ptr [rcx+rdx+1]
 shl eax, 8
 or r8d, eax
 shl r8d, 8