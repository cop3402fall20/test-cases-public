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
	.globl main
	.type main, @function
main:
	push	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	push	%rbx
	pop	%rbx
	movq	%rbp, %rsp
	pop	%rbp
	ret