.intel_syntax noprefix
.global _start
.text
_start:

  pop rbx #; argc
  pop r10 #; argv[0] -> program name
  pop rdi #; first word
  pop rsi #; second word
  call str_cmp
  cmp rax, 0x01
  je print_same

  lea rdi, [not_same]
  call print
  call exit


  print_same:
  lea rdi, [same]
  call print
  call exit
  
  
exit:
  mov rax, 60
  xor rdi, rdi
  syscall

.data
hello_string: .string  "Hello, world!\n"
same: .asciz "Same string\n"
not_same: .asciz "Not the same\n"