.intel_syntax noprefix
.global print

.text


print:
  
  mov rsi, rdi
  call str_len
  mov rdx, rax
  mov rax, 1
  mov rdi, 1
  
  syscall
  ret

