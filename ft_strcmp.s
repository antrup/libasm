SECTION .text
	global ft_strcmp
ft_strcmp:
	xor rax, rax
	xor rcx, rcx
	xor r8, r8
	mov r8b, BYTE [rdi]
	cmp BYTE [rsi], r8b
	jne _end
	cmp BYTE [rsi], 0
	je _end
_loop:
	inc rcx
	cmp BYTE [rsi + rcx], 0
	je _end
	mov r8b, BYTE [rdi + rcx]
	cmp BYTE [rsi + rcx], r8b 
	je _loop
_end:
	mov al, BYTE [rdi + rcx]
	mov r8b, BYTE [rsi + rcx]
	sub rax, r8
	ret
