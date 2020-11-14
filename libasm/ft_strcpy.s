 		global _ft_strcpy
		section .text
_ft_strcpy:
			xor 	rcx , rcx
			xor 	rax , rax
_loop:
			cmp		[rsi + rcx] , byte 0
			jz		_return
			mov 	dl , [rsi + rcx]
			mov 	[rdi + rcx] , dl
			inc 	rcx
			jmp		_loop

_return:
			mov		[rdi + rcx] , byte 0
			mov		rax, rdi
			ret 