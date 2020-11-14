	.file "stdin"
	.text
	.globl c
	.type c, @function
c:
	push	%rbp
	movq	%rsp, %rbp
	push	%rbx
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
	.text
	.globl isValid
	.type isValid, @function
isValid:
	push	%rbp
	movq	%rsp, %rbp
	push	%rbx
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
	.text
	.globl solve
	.type solve, @function
solve:
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
	call	solve
	# restore the stack afterwards
	# restore any caller-saved registers
	pop	%rdx
	pop	%rcx
	pop	%rax
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret
