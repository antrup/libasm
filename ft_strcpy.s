SECTION .text
	global ft_strcpy
ft_strcpy:
	xor rcx, rcx
	cmp BYTE [rsi + rcx], 0
	je _end
_loop:
	mov r8b, BYTE [rsi + rcx]
	mov [rdi + rcx], r8b
	inc rcx
	cmp BYTE [rsi + rcx], 0
	jne _loop
_end:
	mov BYTE [rdi + rcx], 0
	mov rax, rdi
	ret
