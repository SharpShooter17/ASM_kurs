extern printf

section .data
  struc     student

  Name:     resb      0
  Surname:  resb      0

  endstruc

msg: db 'Hello, World!', 0xa

section .text

_WinMain@16:

  push msg
  call printf

  xor eax, eax
  ret
