SECTION .text
	global ft_strlen
ft_strlen:
	xor rax, rax
	cmp BYTE [rdi], 0
	je _end
_loop:
	inc rax
	cmp BYTE [rdi + rax], 0
	jne _loop
_end:
	ret
