extern malloc
extern ft_strlen
SECTION .text
	global ft_strdup
ft_strdup:
	call ft_strlen
	push rdi
	inc rax
	mov rdi, rax
	call malloc	
	xor rcx, rcx
	xor r9, r9
	pop r8
	cmp BYTE [r8 + rcx], 0
	je _end
	
_loop:
	mov r9b, BYTE [r8 + rcx]
	mov [rax + rcx], r9b
	inc rcx
	cmp BYTE [r8 + rcx], 0
	jne _loop
_end:
	mov BYTE [rax + rcx], 0
	ret
