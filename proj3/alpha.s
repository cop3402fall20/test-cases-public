	.file "stdin"
	.text
	.globl f
	.type f, @function
f:
	push	%rbp
	movq	%rsp, %rbp
	push	%rbx
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
	.text
	.globl g
	.type g, @function
g:
	push	%rbp
	movq	%rsp, %rbp
	push	%rbx
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
	.text
	.globl h
	.type h, @function
h:
	push	%rbp
	movq	%rsp, %rbp
	push	%rbx
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
	.text
	.globl i
	.type i, @function
i:
	push	%rbp
	movq	%rsp, %rbp
	push	%rbx
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
	.text
	.globl main
	.type main, @function
main:
	push	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	push	%rbx
	# save any caller-saved registers
	push	%rax
	push	%rcx
	push	%rdx
	# pass parameters either in registers or in stack
	# call the function
	call	f
	# restore the stack afterwards
	# restore any caller-saved registers
	pop	%rdx
	pop	%rcx
	pop	%rax
	# save any caller-saved registers
	push	%rax
	push	%rcx
	push	%rdx
	# pass parameters either in registers or in stack
	# call the function
	call	g
	# restore the stack afterwards
	# restore any caller-saved registers
	pop	%rdx
	pop	%rcx
	pop	%rax
	# save any caller-saved registers
	push	%rax
	push	%rcx
	push	%rdx
	# pass parameters either in registers or in stack
	# call the function
	call	h
	# restore the stack afterwards
	# restore any caller-saved registers
	pop	%rdx
	pop	%rcx
	pop	%rax
	# save any caller-saved registers
	push	%rax
	push	%rcx
	push	%rdx
	# pass parameters either in registers or in stack
	# call the function
	call	h
	# restore the stack afterwards
	# restore any caller-saved registers
	pop	%rdx
	pop	%rcx
	pop	%rax
	# save any caller-saved registers
	push	%rax
	push	%rcx
	push	%rdx
	# pass parameters either in registers or in stack
	# call the function
	call	i
	# restore the stack afterwards
	# restore any caller-saved registers
	pop	%rdx
	pop	%rcx
	pop	%rax
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
