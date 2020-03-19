bits	64

section	.text

global	_main

_main:
	mov			rbx,	0x1000000

loop:
	dec			rbx

	mov			[rsp],	rbx
	shr	qword	[rsp],	8
	and	qword	[rsp],	rbx
	mov			rdx,	2
	mov			rsi,	rsp
	mov			rdi,	1
	mov			rax,	0x2000004
	syscall

	mov			[rsp],	rbx
	shr	qword	[rsp],	8
	or	qword	[rsp],	rbx
	mov			rdx,	2
	mov			rsi,	rsp
	mov			rdi,	1
	mov			rax,	0x2000004
	syscall

	test		rbx,	rbx

	jnz			loop

	mov			rdx,	0
	mov			rax,	0x2000001
	syscall
