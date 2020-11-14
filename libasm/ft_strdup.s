		global _ft_strdup
		section .text
		extern _ft_strlen
		extern _malloc
_ft_strdup:
			xor 	rcx, rcx
			cmp 	rdi, 0
			jz 		_error
_increment:
			inc 	rcx
_len:
			cmp 	byte [rdi + rcx], 0
			jne 	_increment
_alloc:
			inc 	rcx
			push 	rdi
			call 	_malloc
			pop 	rdi
			cmp 	rax, 0
			jz 		_error
_start_dup:
			xor 	rcx, rcx
			xor 	rdx, rdx
			jmp 	_loop
_loop:
			mov 	dl, [rdi + rcx]
			mov 	[rax + rcx], dl
			cmp 	dl, byte 0
			jz 		_done
			inc 	rcx
			jmp 	_loop
_error:
			xor 	rax, rax
			ret
_done:
			ret