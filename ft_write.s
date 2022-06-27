extern	__errno_location
SECTION .text
	global ft_write
ft_write:
	mov rax, 1
	syscall
	cmp rax, 0
	jl _error
	jmp _end
_error:
	neg rax
	mov rdi, rax
	call __errno_location
	mov [rax], rdi
	mov rax, -1
_end:
	ret
