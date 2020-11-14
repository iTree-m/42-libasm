		global  _ft_strlen
		section	.text
_ft_strlen:
			xor 	rax, rax
			xor 	rcx , rcx
			cmp 	rdi, 0
			jz		_error
			jmp 	_loop

_loop:
			cmp 	[rdi + rcx], byte 0
			jz 		_done
			inc 	rcx
			jmp 	_loop

_error:
			mov 	rax, 0
			ret
_done:
			mov 	rax, rcx
			ret
