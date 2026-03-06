#; String manipulation
.intel_syntax noprefix
.text

str_len:
  mov rbx, 0
  lea rax, [rdi]

  str_len_loop:
    mov dl, [rax]
    cmp dl, 0x00
    je str_len_exit
    inc rbx
    inc rax
    jmp str_len_loop

  str_len_exit:
    mov rax, rbx
    ret

str_cmp:
  
  str_cmp_loop:
    mov dl, [rdi]
    mov bl, [rsi]
    cmp dl, bl
    jne str_cmp_exit
    cmp dl, 0x00
    je str_cmp_exit
    cmp bl, 0x00
    je str_cmp_exit


    inc rdi
    inc rsi
    jmp str_cmp_loop
  str_cmp_exit:
    sub dl, bl
    cmp dl, 0x00
    je str_cmp_ret
    mov rax, 0x00
    ret

  str_cmp_ret:
    mov rax, 0x01
    ret
