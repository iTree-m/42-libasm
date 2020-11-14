		global _ft_strcmp
		section .text
_ft_strcmp:
			xor 	rcx, rcx
			xor 	rax, rax
			xor 	rdx, rdx
			cmp 	rdi, byte 0
			jz 		_error
			cmp 	rsi, byte 0
			jz 		_error
_loop:
			mov 	dl, byte[rdi + rcx]
			cmp 	byte[rsi + rcx], dl
			jne 	_done
			inc 	rcx
			cmp 	[rdi + rcx], byte 0
			jz 		_done
			cmp 	[rsi + rcx], byte 0
			jz 		_done
			jmp 	_loop

_error:
			mov 	rax, -1
			ret

_done:
			mov 	al, byte[rdi + rcx]
			mov		dl, byte[rsi + rcx]
			sub 	rax, rdx
			ret
			